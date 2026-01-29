\include "./macros.ly"

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \line { "Das Wohltemperirte Clavier — Teil I" }
    \null
%   "Index"
    \null
  }
}
\noPageBreak

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
         \line \abs-fontsize #7 \italic \with-color #middleGrey {
           \concat { \hspace #6 "BWV " #bwv "  —  " #tone }
         }
       } #}))

\markup \indexItem "Praeludium und Fuga I"    #'Praeludium01 "C–Dur (C major)" "846"
\noPageBreak
\markup \indexItem "Praeludium und Fuga II"   #'Praeludium02 "c–Moll (C minor)" "847"
\noPageBreak
\markup \indexItem "Praeludium und Fuga III"  #'Praeludium03 "Cis–Dur (C–sharp major)" "848"
\noPageBreak
\markup \indexItem "Praeludium und Fuga IV"   #'Praeludium04 "cis–Moll (C–sharp minor)" "849"
\noPageBreak
\markup \indexItem "Praeludium und Fuga V"    #'Praeludium05 "D–Dur (D major)" "850"
\noPageBreak
\markup \indexItem "Praeludium und Fuga VI"   #'Praeludium06 "d–Moll (D minor)" "851"
\noPageBreak
\markup \indexItem "Praeludium und Fuga VII"  #'Praeludium07 "ees–Dur (E-flat major)" "852"
\noPageBreak
\markup \indexItem "Praeludium und Fuga VIII" #'Praeludium08
                   "ees–Moll (E-flat minor) + Fuga in dis-Moll (D-sharp minor)" "853"
\noPageBreak
\markup \indexItem "Praeludium und Fuga IX"   #'Praeludium09 "E–Dur (E major)" "854"
\noPageBreak
\markup \indexItem "Praeludium und Fuga X"    #'Praeludium10 "e–Moll (E minor)" "855"
\noPageBreak
\markup \indexItem "Praeludium und Fuga XI"   #'Praeludium11 "F–Dur (F major)" "856"
\noPageBreak
\markup \indexItem "Praeludium und Fuga XII"  #'Praeludium12 "f–Moll (F minor)" "857"
\noPageBreak
\markup \indexItem "Praeludium und Fuga XIII"  #'Praeludium13 "Fis-Dur (F-sharp major)" "858"
\noPageBreak
\markup \indexItem "Praeludium und Fuga XIV"  #'Praeludium14 "fis-Moll (F-sharp minor)" "859"
\noPageBreak

%\markup \indexItem "Praeludium und Fuga XV"  #'Praeludium15 "G-Dur (G major)" "860"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XVI"  #'Praeludium16 "g-Moll (G minor)" "861"
\noPageBreak

%\markup \indexItem "Praeludium und Fuga XVII"  #'Praeludium17 "As-Dur (A-flat major)" "862"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XVIII"  #'Praeludium18 "gis-Moll (G-sharp minor)" "863"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XIX"  #'Praeludium19 "A-Dur (A major)" "864"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XX"  #'Praeludium20 "a-X (A minor)" "865"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XXI"  #'Praeludium21 "B-dur (B-flat major)" "866"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XXII"  #'Praeludium22 "b-moll (B-flat minor)" "867"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XXIII"  #'Praeludium23 "H-dur (B major)" "868"
\noPageBreak
%\markup \indexItem "Praeludium und Fuga XXIV"  #'Praeludium24 "h-moll (B minor)" "869"
\noPageBreak

\markup \column \abs-fontsize #10 {
  \null
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \with-link  #'Manuscript {
      \fill-with-pattern #1 #RIGHT . \italic "Johann Sebastian Bach's autograph" \page-ref #'Manuscript "00" "?"
    }
  }
}
