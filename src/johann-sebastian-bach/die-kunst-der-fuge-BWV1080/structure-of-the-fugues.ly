\include "./macros.ly"

#(define-markup-command (fugueStructureTitle layout props roman descr)
  (string? string?)
  "Prints colored boxes with description to show the structure of a fugue"
  (interpret-markup layout props
    #{
       \markup
         \column {
           \vspace #0.4
           \line \abs-fontsize #8 {
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


\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \null
    "Structure of the Fugues"
    \vspace #2
  }
}

\markup \fugueStructureTitle "I" ""
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition ASBT"               % bars  1-17
        \on-color \episodeColor \pad-markup #1 "1"                                  % bars 17-22
        \on-color \secondExpositionColor \pad-markup #0.8 "Second exposition ASBT"  % bars 23-44
        \on-color \episodeColor \pad-markup #1 "2"                                  % bars 44-60
        \on-color \subjectPresentationColor \pad-markup #0.8 "S"
        \on-color \subjectPresentationColor \pad-markup #0.8 "B"
        \on-color \episodeColor \pad-markup #1 "3"                                  % bars 60-
        \on-color \endColor \pad-markup #0.8 "T"
  }

\markup \fugueStructureTitle "II" ""
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition BTAS"                % bars  1-17
        \on-color \episodeColor \pad-markup #1 "1"                                   % bars 17-22
        \on-color \secondExpositionColor \pad-markup #0.8 "Second exposition ASBT"   % bars 23-42
        \on-color \episodeColor \pad-markup #1 "2"                                   % bars 42-44
        \on-color \subjectPresentationColor \pad-markup #0.8 "SAB"                   % bars 45-57
        \on-color \episodeColor \pad-markup #1 "3"                                   % bars 57-60
        \on-color \subjectPresentationColor \pad-markup #0.8 "B"                     % bars 61-65
        \on-color \episodeColor \pad-markup #1 "4"                                   % bars 65-68
        \on-color \subjectPresentationColor \pad-markup #0.8 "T"                     % bars 69-73
        \on-color \episodeColor \pad-markup #1 "5"                                   % bars 73-78
        \on-color \endColor \pad-markup #0.8 "S"                                     % bars 79-
  }

\markup \fugueStructureTitle "III" ""
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition TASB"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \subjectPresentationColor \pad-markup #0.8 "S"
        \on-color \episodeColor \pad-markup #1 "2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "T"
        \on-color \episodeColor \pad-markup #1 "3"
        \on-color \subjectPresentationColor \pad-markup #0.8 "T"
        \on-color \episodeColor \pad-markup #1 "4"
        \on-color \subjectPresentationColor \pad-markup #0.8 "S"
        \on-color \episodeColor \pad-markup #1 "5"
        \on-color \subjectPresentationColor \pad-markup #0.8 "BAST"
        \on-color \endColor \pad-markup #0.8 "Coda"
  }

\markup \fugueStructureTitle "IV" ""
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition SATB"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \secondExpositionColor \pad-markup #0.8 "Second exposition SATB"
        \on-color \episodeColor \pad-markup #1 "2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "BT"
        \on-color \episodeColor \pad-markup #1 "3"
        \on-color \subjectPresentationColor \pad-markup #0.8 "AS"
        \on-color \episodeColor \pad-markup #1 "4"
        \on-color \subjectPresentationColor \pad-markup #0.8 "T•B•SA"
        \on-color \episodeColor \pad-markup #1 "5"
        \on-color \subjectPresentationColor \pad-markup #0.8 "TA"
  }

\markup \fugueStructureTitle "V" ""
\markup \fugueStructureBoxes {
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

\markup \fugueStructureTitle "VI" "[per Diminutionem] in Stilo Francese"
\markup \fugueStructureBoxes {
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

\markup \fugueStructureTitle "VII" "per Augmentationem et Diminutionem"
\markup \fugueStructureBoxes {
        \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto TSABAT"
        \on-color \subjectStrettoColor \pad-markup #0.8 "SAT"
        \on-color \subjectStrettoColor \pad-markup #0.8 "TB"
        \on-color \subjectStrettoColor \pad-markup #0.8 "ATSBA"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \subjectStrettoColor \pad-markup #0.8 "ATSSAATB"
        \on-color \subjectStrettoColor \pad-markup #0.8 "SAAT"
        \on-color \endColor \pad-markup #0.8 "Coda"
  }

\markup \fugueStructureTitle "VIII" "[Triple Fugue]"
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A1 B1 S1"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto A1 B1"
        \on-color \episodeColor \pad-markup #1 "2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "B1"
  }
\markup \fugueStructureBoxes {
        \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 S1 A2 B1 S2 A1 B2"
        \on-color \episodeColor \pad-markup #1 "3"
        \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "B1 S2"
        \on-color \episodeColor \pad-markup #1 "4"
        \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "S1 A2"
  }
\markup \fugueStructureBoxes {
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


\markup \fugueStructureTitle "IX" "alla Duodecima"
\markup \fugueStructureBoxes {
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

\markup \fugueStructureTitle "X" "alla Decima"
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition 1 A1 T1 B1 S1"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto A1 T1"  % bar 14-17
        \on-color \secondExpositionColor  \pad-markup #0.8 "Exposition 2 S2 T2 B3 A2"  % bar 23-38
        \on-color \episodeColor \pad-markup #1 "2"
  }
\markup \fugueStructureBoxes {
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

\markup \fugueStructureTitle "XI" ""
\markup \fugueStructureBoxes {
          \on-color \expositionColor \pad-markup #0.8 "Exposition 1/a A1 S1 B1 T1"
          \on-color \episodeColor \pad-markup #1 "1"
          \on-color \subjectPresentationColor \pad-markup #0.8 "S1"  % bar 22
          \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 A2 T2 B2 S2"   % bar 27
          \on-color \episodeColor \pad-markup #1 "2"
          \on-color \subjectPresentationColor \pad-markup #0.8 "B2"  % bar 67
    }
\markup \fugueStructureBoxes {
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
\markup \fugueStructureBoxes {
        \on-color \subjectPresentationColor \pad-markup #0.8 "A3 T1 S2"  % bar 145
        \on-color \episodeColor \pad-markup #1 "5"
        \on-color \subjectPresentationColor \pad-markup #0.8 "A1 S1"     % bar 158
        \on-color \subjectPresentationColor \pad-markup #0.8 "B1 T1"     % bar 164
        \on-color \episodeColor \pad-markup #1 "6"
        \on-color \subjectPresentationColor \pad-markup #0.8 "B2 T3 A1"  % bar 174
        \on-color \subjectPresentationColor \pad-markup #0.8 "B3 T2 S2"  % bar 179
  }

\markup \fugueStructureTitle "XII.I" "[rectus]"
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition 1 B1 T1 A1 S1"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 S2 A2 T2 B2"   % bar 21-45
        \on-color \episodeColor \pad-markup #1 "2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "A2"   % bar 50
        \on-color \subjectPresentationColor \pad-markup #0.8 "S2"   % bar 54 (incomplete subject)
        \on-color \endColor \pad-markup #0.8 "Coda"
  }

\markup \fugueStructureTitle "XII.II" "inversus"
\markup \fugueStructureBoxes {
        \on-color \expositionColor \pad-markup #0.8 "Exposition 1 S1 A1 T1 B1"
        \on-color \episodeColor \pad-markup #1 "1"
        \on-color \secondExpositionColor \pad-markup #0.8 "Exposition 2 B2 T2 A2 S2"   % bar 21-45
        \on-color \episodeColor \pad-markup #1 "2"
        \on-color \subjectPresentationColor \pad-markup #0.8 "T2"   % bar 50
        \on-color \subjectPresentationColor \pad-markup #0.8 "B2"   % bar 54 (incomplete subject)
        \on-color \endColor \pad-markup #0.8 "Coda"
  }

\markup \fugueStructureTitle "XIII.I" "[rectus]"
\markup \fugueStructureBoxes {
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

\markup \fugueStructureTitle "XIII.II" "inversus"
\markup \fugueStructureBoxes {
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

\markup \fugueStructureTitle "XIV" ""
\markup \fugueStructureBoxes {
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
\markup \fugueStructureBoxes {
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
\markup \fugueStructureBoxes {
        \on-color \thirdExpositionColor \pad-markup #0.8 "Exposition 3/a T3 A3 S3 B3"   % bars 193-207
        \on-color \episodeColor \pad-markup #1 "10"
        \on-color \thirdExpositionColor \pad-markup #0.8 "Exposition 3/b T3 A3 S3 B3"   % bars 210-222
        \on-color \subjectPresentationColor \pad-markup #0.8 "B3 T3 A3"            % bars 222-229
        \on-color \episodeColor \pad-markup #1 "11"
        \on-color \subjectPresentationColor \pad-markup #0.8 "A2 B1 T3"            % bars 233-239
        \on-color \episodeColor \pad-markup #1 "?"
  }

\markup {
  \fill-line {
    \vspace #1.4
    \line \abs-fontsize #8 \italic {
          \on-color \expositionColor \pad-markup #0.6 \with-color \white " 1 "
          \on-color \secondExpositionColor \pad-markup #0.6 \with-color \white " 2 "
          \on-color \thirdExpositionColor \pad-markup #0.6 \with-color \white " 3 "
            "Exposition "
          \on-color \episodeColor \pad-markup #0.6 "   " "Episode "
          \on-color \subjectPresentationColor \pad-markup #0.6 "   " "Subject presentation "
          \on-color \subjectStrettoColor \pad-markup #0.6 "   " "Stretti "
          \on-color \endColor \pad-markup #0.6 "   " "Coda "
    }
    \null
  }
}
