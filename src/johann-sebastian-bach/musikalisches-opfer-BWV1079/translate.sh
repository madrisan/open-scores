#!/bin/bash
linenum=0
while read line; do
   [ "$line" ] || continue
   case "$line" in %*) continue; esac
   let "linenum+=1"
   [ "$linenum" == 1 ] && echo "  % 1"
   (( $linenum % 5 == 0 )) && echo "  % $linenum"
   echo "  | ${line/|*/}" \
      | sed "s@%.*@@;
             s@ \[@\[@g;
	     s@ \]@\]@g;
	     s@_\[@\[@g;
	     s@  {@ {@g;
	     s@ ~@~@g;
	     s@\^\[@\[@g;
	     s@appoggiatura@\\\\appoggiatura@g;
	     s@clef@\\\\clef@g;
	     s@downprall@\\\\downprall@g;
	     s@grace@\\\\grace@g;
	     s@prallmordent@\\\\prallmordent@g;
	     s@rest@\\\\rest@g;
	     s@staffLower@\\\\staffLower@g;
	     s@staffUpper@\\\\staffUp@g;
	     s@tieDown@\\\\tieDown@g;
	     s@tieUp@\\\\tieUp@g;
	     s@times@\\\\times@g;
	     s@tuplet@\\\\tuplet@g;
	     s@turn@\\\\turn@g;
	     s@adjBeam[^ ]\+ @@g;
	     s@adjTie[^ ]\+ @@g;
	     s@noBreak@@;
	     s@stemDown[ ]*@@g;
	     s@stemUp[ ]*@@g;
	     s@times 2/3@tuplet 3/2@g"
done </tmp/pippo
