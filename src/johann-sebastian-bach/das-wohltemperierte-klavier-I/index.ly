\include "./macros.ly"

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \line { "Das Wohltemperirte Clavier — Teil I" }
    \null
    "Index"
    \null
    \null
  }
}

#(define-markup-command (indexItem layout props title pagelabel tone bwv)
  (string? symbol? string? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #10 {
         \override #'(line-width . 95)
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT . #title \page-ref #pagelabel "00" "?"
           }
         }
         \pad-around #0.5
         \line \abs-fontsize #8 \italic \with-color #middleGrey {
           \concat { \hspace #6 "BWV " #bwv "  —  " #tone }
         }
       } #}))

\markup \indexItem "Praeludium und Fuga I"    #'Praeludium01 "C–Dur (C major)" "846"
\markup \indexItem "Praeludium und Fuga II"   #'Praeludium02 "c–Moll (C minor)" "847"
\markup \indexItem "Praeludium und Fuga III"  #'Praeludium03 "Cis–Dur (C–sharp major)" "848"
\markup \indexItem "Praeludium und Fuga IV"   #'Praeludium04 "cis–Moll (C–sharp minor)" "849"
\markup \indexItem "Praeludium und Fuga V"    #'Praeludium05 "D–Dur (D major)" "850"
\markup \indexItem "Praeludium und Fuga VI"   #'Praeludium06 "d–Moll (D minor)" "851"
\markup \indexItem "Praeludium und Fuga VII"  #'Praeludium07 "ees–Dur (E-flat major)" "852"
\markup \indexItem "Praeludium und Fuga VIII" #'Praeludium08
                   "ees–Moll (E-flat minor) + Fuga in dis-Moll (D-sharp minor)" "853"
\markup \indexItem "Praeludium und Fuga IX"   #'Praeludium09 "E–Dur (E major)" "854"

\markup \column \abs-fontsize #10 {
  \null\null
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \with-link  #'Manuscript {
      \fill-with-pattern #1 #RIGHT . \italic "Johann Sebastian Bach's autograph" \page-ref #'Manuscript "00" "?"
    }
  }
}
