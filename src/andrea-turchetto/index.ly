middleGrey =    #(x11-color 'grey45)

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null
    \null
  }
}

#(define-markup-command (indexItem layout props title pagelabel infos)
  (string? symbol? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT . #title \page-ref #pagelabel "000" "?"
           }
         }
         \pad-around #1
         \line \abs-fontsize #10 \italic \with-color #middleGrey {
           \hspace #6 #infos
         }
       } #}))

\markup \column \abs-fontsize #11 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Canoni" } }
}

\markup { \indexItem "Canon in F-sharp minor" #'CanonFisMinor "canon in imitation at the octave" }

\markup \column \abs-fontsize #11 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Contrapuncti" } }
}
\markup \indexItem "Fugue on “The Final Countdown”" #'FugaFinalCountdown "three-voice fugue"
