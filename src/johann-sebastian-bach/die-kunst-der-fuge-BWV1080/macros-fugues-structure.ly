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
  \on-color \episodeColor \pad-markup #1 "1" % 15
  \on-color \secondExpositionColor \pad-markup #0.8 \concat { "Second exposition STBA" \sub " 17" }
  \on-color \episodeColor \pad-markup #1 "2" % 31
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "BS" \sub " 33" }
  \on-color \episodeColor \pad-markup #1 "3" % 38
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TA" \sub " 41" }
  \on-color \episodeColor \pad-markup #1 "4" % 46
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "BT" \sub " 47" }
  \on-color \episodeColor \pad-markup #1 "5" % 53
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "SA" \sub " 57" }
  \on-color \episodeColor \pad-markup #1 "6" % 63
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "ST" \sub " 69" }
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TA" \sub " 77" }
  \on-color \endColor \pad-markup #0.8            \concat { "BA" \sub " 86" }
}

fugueStructureBoxesVI = \markup \fugueStructureBoxes {
  \on-color \subjectStrettoColor \pad-markup #0.8 "BSA"
  \on-color \episodeColor \pad-markup #1 "1" % 5
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TAS" \sub " 7" }
  \on-color \episodeColor \pad-markup #1 "2" % 12
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "BTS" \sub " 15" }
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T"   \sub " 20" }
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "AT"  \sub " 25" }
  \on-color \episodeColor \pad-markup #1 "3" % 29
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TA"  \sub " 31" }
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "SBT" \sub " 35" }
  \on-color \episodeColor \pad-markup #1 "4" % 39
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A"   \sub " 42" }
  \on-color \episodeColor \pad-markup #1 "5" % 44
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "BT"  \sub " 47" }
  \on-color \episodeColor \pad-markup #1 "6" % 51
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "SAT" \sub " 57" }
  \on-color \episodeColor \pad-markup #1 "7" % 62
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TSA" \sub " 63" }
  \on-color \episodeColor \pad-markup #1 "8" % 69
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TSA" \sub " 74" }
}

fugueStructureBoxesVII = \markup \fugueStructureBoxes {
  \on-color \subjectStrettoColor \pad-markup #0.8 "TSABAT"  % 1-13
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "SAT" \sub " 13" }  % 13-19
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "TB"  \sub " 20" }  % 20-22
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "ATSBA" \sub " 23" }  % 23-31
  \on-color \episodeColor \pad-markup #1 \concat { "1" \sub " 31" }  % 31-34
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "ATSSAATB" \sub " 35" }  % 35-49
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "SAAT" \sub " 50" }  % 50-57
  \on-color \endColor \pad-markup #0.8 \concat { "Coda" \sub " 58" }  % 58
}

fugueStructureBoxesVIII_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A1 B1 S1"  % 1-15
  \on-color \episodeColor \pad-markup #1  \concat { "1" \sub " 15" }   % 15-21
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "A1 B1" \sub " 21" }  % 21-25
  \on-color \episodeColor \pad-markup #1 \concat { "2" \sub " 25" }  % 25-35
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1" \sub " 35" }  % 35-39
}
fugueStructureBoxesVIII_linetwo = \markup \fugueStructureBoxes {
  \on-color \secondExpositionColor \pad-markup #0.8
    \concat { "Exposition 2 S1 A2 B1 S2 A1 B2" \sub " 39" }  % 39-53
  \on-color \episodeColor \pad-markup #1 \concat { "3" \sub " 53" }  % 53-61
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S1 A2" \sub " 61" }  % 61-65
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1 S2" \sub " 67" }  % 67-71
  \on-color \episodeColor \pad-markup #1 \concat { "4" \sub " 71" }  % 71-81
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S1 A2" \sub " 81" }  % 81-85
  \on-color \episodeColor \pad-markup #1 \concat { "5" \sub " 85" }   % 85-93
}
fugueStructureBoxesVIII_linethree = \markup \fugueStructureBoxes {
  \on-color \thirdExpositionColor \pad-markup #0.8
    \concat { "Exp 3 A3 B3 S3" \sub " 94" }  % 94-109
  \on-color \episodeColor \pad-markup #1 \concat { "6" \sub " 109" }  % 109-124
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A1" \sub " 125" }  % 125-129
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "B1 A2" \sub " 131" }  % 131-135
  \on-color \episodeColor \pad-markup #1 \concat { "7" \sub " 135" }  % 135-147
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S1 A2 B3" \sub " 147" }  % 147-152
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A1 B2 S3" \sub " 152" }  % 152-157
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1 S2 A3" \sub " 158" }  % 158-163
  %\on-color \episodeColor \pad-markup #1 \concat { "8" \sub " 163" }  % 163-170
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1 A2 S3" \sub " 170" }  % 170-175
  %\on-color \episodeColor \pad-markup #1 \concat { "9" \sub " 175" }  % 175-182
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A2 S1 B3" \sub " 182" }
}

fugueStructureBoxesIX = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exp A1 S1 B1 T1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S2 T1" \sub " 35" }
  \on-color \episodeColor \pad-markup #1 "2" % F major
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T2 A1" \sub " 45" }
  \on-color \episodeColor \pad-markup #1 "3" % D minor
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A2 B1" \sub " 59" }
  \on-color \episodeColor \pad-markup #1 "4" % A minor
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T2 A1" \sub " 73" }
  \on-color \episodeColor \pad-markup #1 "5" % D minor
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B2 S1" \sub " 89" }
  \on-color \episodeColor \pad-markup #1 "6" % G minor
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T2 A1" \sub " 99" }
  \on-color \episodeColor \pad-markup #1 "7" % D minor
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A2 T1" \sub " 119" }
  \on-color \endColor \pad-markup #0.8 \concat { "Coda" \sub " 127" }
}

fugueStructureBoxesX_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A1 T1 B1 S1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectStrettoColor \pad-markup #0.8 \concat { "A1 T1" \sub " 14" }  % bar 14-17
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \secondExpositionColor  \pad-markup #0.8 \concat { "Exposition 2 S2 T2 B2 A2" \sub " 23" }  % bar 23-38
  \on-color \episodeColor \pad-markup #1 "3"
}
fugueStructureBoxesX_linetwo = \markup \fugueStructureBoxes {
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T1 A2" \sub " 44" }  % bar 44
  \on-color \episodeColor \pad-markup #1 "4"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A1 B2" \sub " 52" }  % bar 52
  \on-color \episodeColor \pad-markup #1 "5"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T2 S1" \sub " 66" }  % bar 66
  \on-color \episodeColor \pad-markup #1 "6"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S2 A2 B1" \sub " 75" }  % bar 75
  \on-color \episodeColor \pad-markup #1 "7"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B2 A1 S1" \sub " 85" }  % bar 85
  \on-color \episodeColor \pad-markup #1 "8"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1 T1 S2" \sub " 103" }  % bar 103
  \on-color \episodeColor \pad-markup #1 "9"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T1 A1" \sub " 115" }  % bar 115
}

fugueStructureBoxesXI_lineone = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1/a A1 S1 B1 T1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S1" \sub " 22" } % bar 22
  \on-color "white" \with-color \greyTextColor \char ##x25a0
  \on-color \secondExpositionColor \pad-markup #0.8 \concat { "Exposition 2 A2 T2 B2 S2" \sub " 27" }   % bar 27
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B2" \sub " 67" }  % bar 67
  \on-color "white" \with-color \greyTextColor \char ##x25a0
}
fugueStructureBoxesXI_linetwo = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 \concat { "Exposition 1/b T1 S1 B1 A1" \sub " 71" } % bar 71
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B2 T3" \sub " 89" }  % bar 89
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A2 S3" \sub " 93" }  % bar 93
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A1" \sub " 101" }     % bar 101
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A3 T2" \sub " 105" }  % bar 105
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S2 A3" \sub " 113" }  % bar 113
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1" \sub " 132" }  % bar 132
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T2 A3" \sub " 136" }  % bar 136
  \on-color \episodeColor \pad-markup #1 "3"
}
fugueStructureBoxesXI_linethree = \markup \fugueStructureBoxes {
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A3 T1 S2" \sub " 145" }  % bar 145
  \on-color \episodeColor \pad-markup #1 "4"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A1 S1" \sub " 158" }  % bar 158
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B1 T1" \sub " 164" }  % bar 164
  \on-color \episodeColor \pad-markup #1 "5"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B2 T3 A1" \sub " 174" }  % bar 174
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B3 T2 S2" \sub " 179" }  % bar 179
}

fugueStructureBoxesXII_I = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 B1 T1 A1 S1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \secondExpositionColor \pad-markup #0.8 \concat { "Exposition 2 S2 A2 T2 B2" \sub " 21" }  % bar 21-45
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A2" \sub " 50" }  % bar 50
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S2" \sub " 54" }  % bar 54 (incomplete subject)
  \on-color \endColor \pad-markup #0.8 "Coda"
}

fugueStructureBoxesXII_II = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 S1 A1 T1 B1"
  \on-color \episodeColor \pad-markup #1 "1"
  \on-color \secondExpositionColor \pad-markup #0.8 \concat { "Exposition 2 B2 T2 A2 S2" \sub " 21" }  % bar 21-46
  \on-color \episodeColor \pad-markup #1 "2"
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "T2" \sub " 50" }  % bar 50
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "B2" \sub " 54" }  % bar 54 (incomplete subject)
  \on-color \endColor \pad-markup #0.8 "Coda"
}

fugueStructureBoxesXIII_I = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A B S"
  \on-color \episodeColor \pad-markup #1 "1"                  % bar 13-19
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A" \sub " 19" }  % bar 19
  \on-color \episodeColor \pad-markup #1 "2"                  % bar 24
  \on-color \secondExpositionColor \pad-markup #0.8 \concat { "Exposition 2 B S A" \sub " 28" }  % bar 28-41
  \on-color \episodeColor \pad-markup #1 "3"                  % bar 41-47
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "A" \sub " 47" }  % bar 47-52
  \on-color \episodeColor \pad-markup #1 "4"                  % bar 52-61
  \on-color \endColor \pad-markup #0.8 \concat { "Final presentation B S" \sub " 61" }
}

fugueStructureBoxesXIII_II = \markup \fugueStructureBoxes {
  \on-color \expositionColor \pad-markup #0.8 "Exposition 1 S A B"
  \on-color \episodeColor \pad-markup #1 "1"                  % bar 13-19
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S" \sub " 19" }  % bar 19
  \on-color \episodeColor \pad-markup #1 "2"                  % bar 24
  \on-color \secondExpositionColor \pad-markup #0.8 \concat { "Exposition 2 A B S" \sub " 28" } % bar 28-41
  \on-color \episodeColor \pad-markup #1 "3"                  % bar 41-47
  \on-color \subjectPresentationColor \pad-markup #0.8 \concat { "S" \sub " 47" }  % bar 47-52
  \on-color \episodeColor \pad-markup #1 "4"                  % bar 52-61
  \on-color \endColor \pad-markup #0.8 \concat { "Final presentation A B" \sub " 61" }
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
