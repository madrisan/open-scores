#!/bin/bash
# List the score directories to build for the changes between BASE and HEAD
# (default: the current HEAD).
#
# Usage: ci/changed-scores.sh BASE [HEAD]
#
# Prints one directory per line (for "make -C"), or the single word "all"
# when a change affects the whole build (configure.ac, the top-level
# Makefiles, the CI files, ...).  Prints nothing when only documentation
# changed.

set -euo pipefail

base="${1:?usage: $0 BASE}"

changed=$(git diff --name-only "$base" "${2:-HEAD}")

dirs=()
while IFS= read -r file; do
   [ -n "$file" ] || continue
   case "$file" in
   *.md | AUTHORS | VERSION | .gitignore | .gitattributes | \
   images/* | lyinit/* | .github/workflows/pages.yaml)
      # documentation and files not used by "make"
      ;;
   src/*)
      # the nearest directory with a Makefile.am builds this file
      dir=$(dirname "$file")
      while [ "$dir" != src ] && [ ! -f "$dir/Makefile.am" ]; do
         dir=$(dirname "$dir")
      done
      if [ "$dir" = src ]; then
         echo all
         exit 0
      fi
      # skip the directories removed by the change
      [ -d "$dir" ] && dirs+=("$dir")
      ;;
   *)
      echo all
      exit 0
      ;;
   esac
done <<<"$changed"

if [ ${#dirs[@]} -gt 0 ]; then
   printf '%s\n' "${dirs[@]}" | sort -u
fi
