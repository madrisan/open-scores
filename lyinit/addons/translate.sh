#!/bin/bash
# A very simple script for reformatting existing .ly code blocks
# Copyright (c) 2023 Davide Madrisan <d.madrisan@proton.me>

# Usage:
#   translate.sh score.ly
#   translate.sh < score.ly

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
   [ "$linenum" == 1 ] && echo "  %1"
   (( $linenum % 5 == 0 )) && echo "  %$linenum"
   #echo "[debug] $linenum \"$line\""
   #echo "[debug]  | ${line/|*/}" \
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
	     s@times 2/3@tuplet 3/2@g;
	     # common shortcuts
	     s@\\\\sd@\\\\staffLower@g;
	     s@\\\\su@\\\\staffUpper@g;
             s@\\\\tb@\\\\tieNeutral@g;
             s@\\\\td@\\\\tieDown@g;
	     s@\\\\tu@\\\\tieUp@g;
	     # a couple of useful substs with unfortunately side effects
	     #s@\([a-g]\+\)s\([0-9,'=~\.]*\) @\1is\2 @g;
	     #s@\([a-g]\+\)f\([0-9,'=~\.]*\) @\1es\2 @g;
	     s@^ @  @;
	     # remove final | (again)
             s/|[ ]*$//;"
done < <(sed 's|\\|\\\\|g;' < "${1:-/dev/stdin}")
