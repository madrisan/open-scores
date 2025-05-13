#(define-markup-command (fugueStructureTitle layout props roman descr)
  (string? string?)
  "Prints colored boxes with description to show the structure of a fugue"
  (interpret-markup layout props
    #{
       \markup
         \column {
           \vspace #0.6
           \line \abs-fontsize #9 {
             \concat {
               \smallCaps \bold { "Contrapunctus "  #roman "   " }
               \italic { #descr }
             }
           }
         }
    #}))
#(define-markup-command (fugueStructureBoxes layout props boxes)
  (markup-list?)
  "Prints colored boxes with description to show the structure of a fugue"
  (interpret-markup layout props
    #{ \markup {
         \line \normal-text \tiny \with-color \white
         #boxes
       } #}))

fugueStructureBoxesI = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8          "Exposition ASBT"
  \on-color \episodeColor \pad-markup #1               \concat { "1" \sub " 17" }
  \on-color \secondExpositionColor \pad-markup #0.8    \concat { "Second exposition ASBT" \sub " 23" }
  \on-color \episodeColor \pad-markup #1               \concat { "2" \sub " 44" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S" \sub " 49" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B" \sub " 56" }
  \on-color \episodeColor \pad-markup #1               \concat { "3" \sub " 60" }
  \on-color \endColor \pad-markup #0.8                 \concat { "T" \sub " 74" }
}

fugueStructureBoxesII = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8          "Exposition BTAS"
  \on-color \episodeColor \pad-markup #1               \concat { "1" \sub " 17" }
  \on-color \secondExpositionColor \pad-markup #0.8    \concat { "Second exposition ASBT" \sub " 23" }
  \on-color \episodeColor \pad-markup #1               \concat { "2" \sub " 42" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "SAB" \sub " 45" }
  \on-color \episodeColor \pad-markup #1               \concat { "3" \sub " 57" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B" \sub " 61" }
  \on-color \episodeColor \pad-markup #1               \concat { "4" \sub " 65" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T" \sub " 69" }
  \on-color \episodeColor \pad-markup #1               \concat { "5" \sub " 73" }
  \on-color \endColor \pad-markup #0.8                 \concat { "S" \sub " 79" }
}

% \concat { "" \sub " " }

fugueStructureBoxesIII = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition TASB"                    % bars  1-19
  \on-color \episodeColor \pad-markup #1               \concat { "1" \sub " 19" }  % bars 19-23-27
  \on-color \subjectPresentationColor \pad-markup #0.8 "S"
  \on-color \episodeColor \pad-markup #1               \concat { "2" \sub " 27" }  % bars 27-29-34
  \on-color \subjectPresentationColor \pad-markup #0.8 "T"
  \on-color \episodeColor \pad-markup #1               \concat { "3" \sub " 33" }  % bars 33-39
  \on-color \subjectPresentationColor \pad-markup #0.8 "T"
  \on-color \episodeColor \pad-markup #1               \concat { "4" \sub " 39" }  % bars 39-47
  \on-color \subjectPresentationColor \pad-markup #0.8 "S"
  \on-color \episodeColor \pad-markup #1               \concat { "5" \sub " 47" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "BAST" \sub " 51" }
  \on-color \endColor \pad-markup #0.8 \concat { "Coda" \sub " 69" }
}

fugueStructureBoxesIV = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition SATB"                    % bars   1- 19
  \on-color \episodeColor \pad-markup #1               \concat { "1" \sub " 19" }  % bars  19- 26
  \on-color \secondExpositionColor \pad-markup #0.8    \concat { "Second exposition SATB" \sub " 27" } % bars 27-43
  \on-color \episodeColor \pad-markup #1               \concat { "2" \sub " 43" }  % bars  43- 60
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "BT" \sub " 61" } % bars  61- 69
  \on-color \episodeColor \pad-markup #1               \concat { "3" \sub " 69" }  % bars  69- 72
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "AS" \sub " 73" } % bars  73- 81
  \on-color \episodeColor \pad-markup #1               \concat { "4" \sub " 81" }  % bars  81-106
  \on-color \subjectStrettoColor      \pad-markup #0.8 \concat { "T•B•SA" \sub "107" }  % bars 107-115
  \on-color \episodeColor \pad-markup #1               \concat { "5" \sub " 115" } % bars 115-128
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "TA" \sub " 129" } % bars 129-138
}

fugueStructureBoxesV = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition ABST"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \secondExpositionColor \pad-markup #0.8 "Second exposition STBA"
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto BS"
  \on-color \subjectStrettoColor \pad-markup #0.8 "TA"
  \on-color \subjectStrettoColor \pad-markup #0.8 "BT"
  \on-color \episodeColor \pad-markup #1 "3"
  \on-color \subjectStrettoColor \pad-markup #0.8 "SA"
  \on-color \episodeColor \pad-markup #1 "4"
  \on-color \subjectStrettoColor \pad-markup #0.8 "ST"
  \on-color \subjectStrettoColor \pad-markup #0.8 "TA"
  \on-color \endColor \pad-markup #0.8 "BA"
}

fugueStructureBoxesVI = \markup \fugueStructureBoxes {
  \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto BSA"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectStrettoColor \pad-markup #0.8 "TAS"
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectStrettoColor \pad-markup #0.8 "BTS"
  \on-color \subjectPresentationColor \pad-markup #0.8 "T"
  \on-color \subjectStrettoColor \pad-markup #0.8 "AT"
  \on-color \episodeColor \pad-markup #1 "3"
  \on-color \subjectStrettoColor \pad-markup #0.8 "TASBT"
  \on-color \episodeColor \pad-markup #1 "4"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A"
  \on-color \episodeColor \pad-markup #1 "5"
  \on-color \subjectStrettoColor \pad-markup #0.8 "BT"
  \on-color \episodeColor \pad-markup #1 "6"
  \on-color \subjectStrettoColor \pad-markup #0.8 "SAT"
  \on-color \episodeColor \pad-markup #1 "7"
  \on-color \subjectStrettoColor \pad-markup #0.8 "TSA"
}

fugueStructureBoxesVII = \markup \fugueStructureBoxes {
  \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto TSABAT"
  \on-color \subjectStrettoColor \pad-markup #0.8 "SAT"
  \on-color \subjectStrettoColor \pad-markup #0.8 "TB"
  \on-color \subjectStrettoColor \pad-markup #0.8 "ATSBA"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectStrettoColor \pad-markup #0.8 "ATSSAATB"
  \on-color \subjectStrettoColor \pad-markup #0.8 "SAAT"
  \on-color \endColor \pad-markup #0.8 "Coda"
}

fugueStructureBoxesVIII_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A1 B1 S1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto A1 B1"
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1"
}
fugueStructureBoxesVIII_linetwo = \markup \fugueStructureBoxes {
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 S1 A2 B1 S2 A1 B2"
  \on-color \episodeColor \pad-markup #1 "3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1 S2"
  \on-color \episodeColor \pad-markup #1 "4"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2"
}
fugueStructureBoxesVIII_linethree = \markup \fugueStructureBoxes {
  \on-color \thirdExpositionColor \pad-markup #0.8 "Exposition 3 A3 B3 S3"
  \on-color \episodeColor \pad-markup #1 "5"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A1"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1"
  \on-color \episodeColor \pad-markup #1 "6"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2 B3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A1 B2 S3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1 S2 A3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1 S2 A3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2 S1 B3"
}

fugueStructureBoxesIX = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition A1 S1 B1 T1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S2 T1"
  \on-color \episodeColor \pad-markup #1 "2" % F major
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2 A1"  % bar 45
  \on-color \episodeColor \pad-markup #1 "3" % D minor
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2 B1"  % bar 59
  \on-color \episodeColor \pad-markup #1 "4" % A minor
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2 A1"  % bar 73
  \on-color \episodeColor \pad-markup #1 "5" % D minor
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2 S1"  % bar 89
  \on-color \episodeColor \pad-markup #1 "6" % G minor
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2 A1"  % bar 99
  \on-color \episodeColor \pad-markup #1 "7" % D minor
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2 T1"  % bar 119
  \on-color \endColor \pad-markup #0.8 "Coda"
}

fugueStructureBoxesX_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A1 T1 B1 S1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto A1 T1"  % bar 14-17
  \on-color \secondExpositionColor  \pad-markup #0.8 "Exposition 2 S2 T2 B3 A2"  % bar 23-38
  \on-color \episodeColor \pad-markup #1 "2"
}
fugueStructureBoxesX_linetwo = \markup \fugueStructureBoxes {
  \on-color \subjectPresentationColor \pad-markup #0.8 "T1 A2"  % bar 44
  \on-color \episodeColor \pad-markup #1 "3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A1 B2"  % bar 52
  \on-color \episodeColor \pad-markup #1 "4"
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2 S1"  % bar 66
  \on-color \episodeColor \pad-markup #1 "5"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S2 A1 B1"  % bar 75
  \on-color \episodeColor \pad-markup #1 "6"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2 A1 S1"  % bar 84
  \on-color \episodeColor \pad-markup #1 "7"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1 T1 S2"  % bar 103
  \on-color \episodeColor \pad-markup #1 "8"
  \on-color \subjectPresentationColor \pad-markup #0.8 "T1 A1"  % bar 115
}

fugueStructureBoxesXI_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1/a A1 S1 B1 T1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectPresentationColor \pad-markup #0.8 "S1"  % bar 22
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 A2 T2 B2 S2"   % bar 27
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2"  % bar 67
}
fugueStructureBoxesXI_linetwo = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1/b T1 S1 B1 A1"   % bar 71
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2 T3"  % bar 89
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2 S3"  % bar 93
  \on-color \subjectPresentationColor \pad-markup #0.8 "A1"     % bar 101
  \on-color \subjectPresentationColor \pad-markup #0.8 "A3 T2"  % bar 105
  \on-color \subjectPresentationColor \pad-markup #0.8 "S2 A3"  % bar 113
  \on-color \episodeColor \pad-markup #1 "3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1"     % bar 132
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2 A3"  % bar 136
  \on-color \episodeColor \pad-markup #1 "4"
}
fugueStructureBoxesXI_linethree = \markup \fugueStructureBoxes {
  \on-color \subjectPresentationColor \pad-markup #0.8 "A3 T1 S2"  % bar 145
  \on-color \episodeColor \pad-markup #1 "5"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A1 S1"     % bar 158
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1 T1"     % bar 164
  \on-color \episodeColor \pad-markup #1 "6"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2 T3 A1"  % bar 174
  \on-color \subjectPresentationColor \pad-markup #0.8 "B3 T2 S2"  % bar 179
}

fugueStructureBoxesXII_I = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 B1 T1 A1 S1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 S2 A2 T2 B2"   % bar 21-45
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2"   % bar 50
  \on-color \subjectPresentationColor \pad-markup #0.8 "S2"   % bar 54 (incomplete subject)
  \on-color \endColor \pad-markup #0.8 "Coda"
}

fugueStructureBoxesXII_II = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 S1 A1 T1 B1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 B2 T2 A2 S2"   % bar 21-45
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2"   % bar 50
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2"   % bar 54 (incomplete subject)
  \on-color \endColor \pad-markup #0.8 "Coda"
}

fugueStructureBoxesXIII_I = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A B S"
  \on-color \episodeColor \pad-markup #1 "1"                  % bar 13-19
  \on-color \subjectPresentationColor \pad-markup #0.8 "A"    % bar 20
  \on-color \episodeColor \pad-markup #1 "2"                  % bar 24
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 B S A"  % bar 29-41
  \on-color \episodeColor \pad-markup #1 "3"                  % bar 41-47
  \on-color \subjectPresentationColor \pad-markup #0.8 "A"    % bar 47-52
  \on-color \episodeColor \pad-markup #1 "4"                  % bar 52-61
  \on-color \endColor \pad-markup #0.8 "Final presentation B S"
}

fugueStructureBoxesXIII_II = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 S A B"
  \on-color \episodeColor \pad-markup #1 "1"                  % bar 13-19
  \on-color \subjectPresentationColor \pad-markup #0.8 "S"    % bar 20
  \on-color \episodeColor \pad-markup #1 "2"                  % bar 24
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 A B S"  % bar 29-41
  \on-color \episodeColor \pad-markup #1 "3"                  % bar 41-47
  \on-color \subjectPresentationColor \pad-markup #0.8 "S"    % bar 47-52
  \on-color \episodeColor \pad-markup #1 "4"                  % bar 52-61
  \on-color \endColor \pad-markup #0.8 "Final presentation A B"
}

fugueStructureBoxesXIV_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 B1 A1 T1 S1"  % bars 1-21
  \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto B1 T1"         % bars 21-29
  \on-color \subjectPresentationColor \pad-markup #0.8 "A1"               % bars 30-35
  \on-color \subjectStrettoColor \pad-markup #0.8 "S1 A1"                 % bars 37-43
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1"               % bars 43-48
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectPresentationColor \pad-markup #0.8 "T1"               % bars 55-60
  \on-color \subjectStrettoColor \pad-markup #0.8 "B1 S1"                 % bars 61-67
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectStrettoColor \pad-markup #0.8 "A1 T1"                 % bars 71-77
  \on-color \subjectPresentationColor \pad-markup #0.8 "S1"               % bars 79-84
  \on-color \episodeColor \pad-markup #1 "3"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1 A1 T1 S1 A1"   % bars 89-104
  \on-color \subjectPresentationColor \pad-markup #0.8 "B1"               % bars 105-110
  \on-color \episodeColor \pad-markup #1 "4"
}
fugueStructureBoxesXIV_linetwo = \markup \fugueStructureBoxes {
  \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 A2 S2 B2 T2"  % bars 114-141
  \on-color \episodeColor \pad-markup #1 "5"                              % bars 141-147
  \on-color \subjectPresentationColor \pad-markup #0.8 "S2 B1"            % bars 147-153
  \on-color \episodeColor \pad-markup #1 "6"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2 T1"            % bars 156-161
  \on-color \episodeColor \pad-markup #1 "7"
  \on-color \subjectPresentationColor \pad-markup #0.8 "T2 S1"            % bars 167-174
  \on-color \episodeColor \pad-markup #1 "8"
  \on-color \subjectPresentationColor \pad-markup #0.8 "B2 A1 S1"         % bars 180-188
  \on-color \episodeColor \pad-markup #1 "9"
}
fugueStructureBoxesXIV_linethree = \markup \fugueStructureBoxes {
  \on-color \thirdExpositionColor \pad-markup #0.8 "Exposition 3/a T3 A3 S3 B3"   % bars 193-207
  \on-color \episodeColor \pad-markup #1 "10"
  \on-color \thirdExpositionColor \pad-markup #0.8 "Exposition 3/b T3 A3 S3 B3"   % bars 210-222
  \on-color \subjectPresentationColor \pad-markup #0.8 "B3 T3 A3"            % bars 222-229
  \on-color \episodeColor \pad-markup #1 "11"
  \on-color \subjectPresentationColor \pad-markup #0.8 "A2 B1 T3"            % bars 233-239
  \on-color \unknownColor \pad-markup #1 "?"
}
