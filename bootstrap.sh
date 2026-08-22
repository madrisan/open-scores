#!/usr/bin/env bash

# Regenerate the recursive-automake plumbing (SUBDIRS in every Makefile.am,
# AC_CONFIG_FILES in configure.ac, and the "make -C ..." cheat-sheet in
# DEVELOPERS.md) from the actual directory tree under src/.
#
# Run this after adding or removing a piece directory (e.g. after
# lyinit/lyscaffold.sh) and before autoreconf, so those lists never have to
# be hand-edited and can never drift out of sync with the tree on disk.
#
# Copyright (c) 2026 Davide Madrisan <d.madrisan@proton.me>

set -euo pipefail
cd "$(dirname "$0")"

# --- discover every directory that participates in the recursive build ---
#
# Only look at files tracked by git: a Makefile.am from work in progress
# that hasn't been committed yet (e.g. a scaffold not finished/reviewed)
# must not be wired into configure.ac or SUBDIRS behind the author's back.

mapfile -t all_dirs < <(
   git ls-files -- '*Makefile.am' 'Makefile.am' | grep -E '(^|/)Makefile\.am$' |
      sed -E 's#(^|/)Makefile\.am$##' | sed 's#^$#.#' | sort -u
)

declare -A children
for d in "${all_dirs[@]}"; do
   [[ "$d" == "." ]] && continue
   parent="$(dirname "$d")"
   children["$parent"]+="$d"$'\n'
done

sorted_children() {
   # sorted basenames of the (already-known) Makefile.am subdirectories of $1
   local parent="$1"
   [[ -n "${children[$parent]+x}" ]] || return 0
   printf '%s' "${children[$parent]}" | sed '/^$/d' | sort | while read -r c; do
      basename "$c"
   done
}

# --- rewrite the SUBDIRS assignment in a Makefile.am, preserving everything else ---

update_subdirs() {
   local dir="$1" makefile_am
   makefile_am="$dir/Makefile.am"
   [[ "$dir" == "." ]] && makefile_am="Makefile.am"

   mapfile -t items < <(sorted_children "$dir")
   [[ ${#items[@]} -gt 0 ]] || return 0

   local block="SUBDIRS = ${items[0]}"
   local n=${#items[@]}
   [[ $n -gt 1 ]] && block+=" \\"
   block+=$'\n'
   local i
   for ((i = 1; i < n; i++)); do
      block+=$'\t  '"${items[$i]}"
      [[ $i -lt $((n - 1)) ]] && block+=" \\"
      block+=$'\n'
   done

   NEWBLOCK="$block" awk '
      BEGIN { newblock = ENVIRON["NEWBLOCK"]; skipping = 0 }
      {
         if (!skipping && $0 ~ /^SUBDIRS[ \t]*=/) {
            printf "%s", newblock
            skipping = 1
            if ($0 !~ /\\[ \t]*$/) skipping = 0
            next
         }
         if (skipping) {
            if ($0 !~ /\\[ \t]*$/) skipping = 0
            next
         }
         print
      }
   ' "$makefile_am" > "$makefile_am.new"
   mv "$makefile_am.new" "$makefile_am"
}

for d in "${all_dirs[@]}"; do
   update_subdirs "$d"
done
echo "bootstrap.sh: regenerated SUBDIRS in ${#children[@]} Makefile.am files"

# --- rebuild the flat, pre-order list of Makefiles for AC_CONFIG_FILES ---

config_files=()
dfs() {
   local dir="$1"
   if [[ "$dir" == "." ]]; then
      config_files+=("Makefile")
   else
      config_files+=("$dir/Makefile")
   fi
   local child childpath
   while read -r child; do
      [[ -n "$child" ]] || continue
      if [[ "$dir" == "." ]]; then childpath="$child"; else childpath="$dir/$child"; fi
      dfs "$childpath"
   done < <(sorted_children "$dir")
}
dfs "."

config_block="AC_CONFIG_FILES([\\"$'\n'
for f in "${config_files[@]}"; do
   config_block+="  $f \\"$'\n'
done
config_block+="])"$'\n'

CONFIGBLOCK="$config_block" awk '
   BEGIN { newblock = ENVIRON["CONFIGBLOCK"]; skipping = 0 }
   {
      if (!skipping && $0 ~ /^AC_CONFIG_FILES\(\[/) {
         printf "%s", newblock
         skipping = 1
         next
      }
      if (skipping) {
         if ($0 ~ /^\]\)/) skipping = 0
         next
      }
      print
   }
' configure.ac > configure.ac.new
mv configure.ac.new configure.ac
echo "bootstrap.sh: regenerated AC_CONFIG_FILES in configure.ac (${#config_files[@]} Makefiles)"

# --- rebuild the "make -C ..." cheat-sheet in DEVELOPERS.md ---
#
# Reuse config_files (the tree actually reachable from the top-level
# Makefile) rather than all_dirs, so a Makefile.am left orphaned by a
# missing parent Makefile.am (WIP piece, not yet wired in) is not listed
# as buildable, and lyinit/ (not a score) is excluded.

leaf_commands=()
for f in "${config_files[@]}"; do
   d="${f%/Makefile}"
   [[ "$d" == "$f" ]] && continue             # top-level "Makefile" itself
   case "$d" in src/*) ;; *) continue ;; esac  # only real score directories
   [[ -z "${children[$d]+x}" ]] || continue    # skip non-leaf (grouping) dirs
   leaf_commands+=("make -C $d")
done

if grep -q '<!-- LYINIT:MAKE-COMMANDS:BEGIN -->' DEVELOPERS.md; then
   commands_block='```'$'\n'
   for c in "${leaf_commands[@]}"; do
      commands_block+="$c"$'\n'
   done
   commands_block+='```'$'\n'

   COMMANDSBLOCK="$commands_block" awk '
      BEGIN { newblock = ENVIRON["COMMANDSBLOCK"]; skipping = 0 }
      $0 == "<!-- LYINIT:MAKE-COMMANDS:BEGIN -->" { print; printf "%s", newblock; skipping = 1; next }
      $0 == "<!-- LYINIT:MAKE-COMMANDS:END -->" { skipping = 0; print; next }
      skipping { next }
      { print }
   ' DEVELOPERS.md > DEVELOPERS.md.new
   mv DEVELOPERS.md.new DEVELOPERS.md
   echo "bootstrap.sh: regenerated the make -C cheat-sheet in DEVELOPERS.md (${#leaf_commands[@]} commands)"
else
   echo "bootstrap.sh: skipped DEVELOPERS.md (no LYINIT:MAKE-COMMANDS markers found)"
fi

echo "bootstrap.sh: now run autoreconf && ./configure"
