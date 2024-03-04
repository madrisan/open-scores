#!/bin/bash
# A very simple script for reformatting .ly code blocks
# Copyright (c) 2023-2024 Davide Madrisan <d.madrisan@proton.me>

# Usage:
#   translate.sh [--no-bar-numbers] score.ly
#   translate.sh [--no-bar-numbers] < score.ly

PROGNAME="${0##*/}"
PROGPATH="${0%/*}"
REVISION=2

usage () {
   cat <<__EOF
Usage: $PROGNAME [--no-bar-numbers] score.ly
       $PROGNAME [--no-bar-numbers] < score.ly
       $PROGNAME --help

Where:
   --no-bar-numbers: do not add bar numbers

Example:
   $0 --no-bar-numbers score.ly

__EOF
}

help () {
   cat <<__EOF
$PROGNAME v$REVISION - a very simple for reformatting .ly code blocks
Copyright (C) 2024 Davide Madrisan <d.madrisan@proton.me>

__EOF

   usage
}

ly_bar_numbers=1

while test -n "$1"; do
   case "$1" in
      --help|-h) help; exit 0 ;;
      --no-bar-numbers) ly_bar_numbers="0" ;;
   esac
   shift
done

infile="$1"
[ -n "$infile" -a ! -r "$infile" ] \
   && { echo "cannot read input file: $infile" >&2; exit 1; }

linenum=0
while read line; do
   [ "$line" ] || continue
   case "$line" in
       %*) continue ;;
       "{"|"}"|"\\repeat "*)
           echo "$line";
	   continue ;;
   esac
   let "linenum+=1"
   if [ "$ly_bar_numbers" = "1" ]; then
      [ "$linenum" == 1 ] && echo "  %1"
      (( $linenum % 5 == 0 )) && echo "  %$linenum"
      #echo "[debug] $linenum \"$line\""
      #echo "[debug]  | ${line/|*/}" \
   fi
   echo "  | $line" \
      | sed "# remove comments
             s@%.*@@;
             # remove final |
             s/|[ ]*$//;
             # and extra spaces
             s@ \[@\[@g;
             s@ \]@\]@g;
             s@_\[@\[@g;
             s@  {@ {@g;
             s@ ~@~@g;
             s@[ ]\+@ @g;
             s@\^\[@\[@g;
             s@adjBeam[^ ]\+ @@g;
             s@adjTie[^ ]\+ @@g;
             # remove break and noBreak
             s@\\\\break@@g;s@\\\\noBreak@@g;
             # remove barNumberCheck
             s@\\\\barNumberCheck[ ]*[0-9]*@@;
             s@times 2/3@tuplet 3/2@g;
             # common shortcuts
             s@\\\\sd @\\\\staffLower @g;
             s@\\\\su @\\\\staffUpper @g;
             s@\\\\tb @\\\\tieNeutral @g;
             s@\\\\td @\\\\tieDown @g;
             s@\\\\tu @\\\\tieUp @g;
             s@\\\\halsdown @\\\\stemDown @g;
             s@\\\\halsneutral @\\\\stemNeutral @g;
             s@\\\\halsup @\\\\stemUp @g;
             s@\\\\staffdown @\\\\staffLower @g;
             s@\\\\staffup @\\\\staffUpper @g;
	     # some notation substitutes with potential side effects
             # (so they must be manually enabled)
             #s@\([a-g]\+\)s\([0-9,'=~\.]*\) @\1is\2 @g;
             #s@\([a-g]\+\)f\([0-9,'=~\.]*\) @\1es\2 @g;
	     # german notation to nederlands (default)
             s@ h\([0-9,'=~\.\(\[]*\) @ b\1 @g;
             s@ h\([0-9,'=~\.\(\[]*\)\([\\a-zA-Z]*\) @ b\1\2 @g;s@ h @ b @g;s@ h\$@ b@;
             s@ h\([0-9,'=~\.]*\)\([\\a-zA-Z]*\)\$@ b\1\2@g;s@ h\$@ b@;
             s@^ @  @;
	     # remove final pipe char | (again)
             s/|[ ]*$//;
             # remove empty lines
             /^[ \t]*$/d;"
done < <(sed 's|\\|\\\\|g;' < "${1:-/dev/stdin}")
