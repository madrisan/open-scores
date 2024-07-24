\include "./macros.ly"

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null
    \null
  }
}

#(define-markup-command (indexItem layout props linkpage title page infos)
  (number? string? string? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \line {
           \hspace #3.2
           \page-link #linkpage { \fill-with-pattern #1 #RIGHT . #title #page }
         }
         \pad-around #1
         \line \abs-fontsize #8 \italic \with-color #middleGrey {
           \hspace #6 #infos
         }
       } #}))

\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #3 {
      \fill-with-pattern #1 #RIGHT . "List of Subjects" "2"
    }
  }
}

\markup \column \abs-fontsize #11 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Contrapuncti" } }
}
\markup \indexItem #5 "Contrapunctus I"  "4" "four-voice fugue on principal subject"
\markup { \indexItem #8 "Contrapunctus II" "7"
  "four-voice fugue on principal subject, accompanied by a “French” style dotted rhythm"
}
\markup { \indexItem #13 "Contrapunctus III" "12"
  "four-voice fugue on principal subject in inversion, employing intense chromaticism"
}
\markup { \indexItem #16 "Contrapunctus IV" "15"
  "four-voice fugue on principal subject in inversion, employing counter-subjects"
}
\markup \indexItem #21 "Contrapunctus V" "20" "four-voice fugue with many stretto entries"
\markup { \indexItem #25 "Contrapunctus VI [per Diminutionem] in Stylo Francese" "24"
    "four-voice fugue with many stretto entries a 4 in Stylo Francese"
}
\markup { \indexItem #32 "Contrapunctus VII per per Augmentationem et Diminutionem" "31"
  "fugue that uses augmented (doubling all note lengths) and diminished versions of the main subject and its inversion"
}
\markup { \indexItem #38 "Contrapunctus VIII" "37"
  "triple fugue with three subjects, having independent expositions"
}
\markup { \indexItem #46 "Contrapunctus IX alla Duodecima" "45"
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the twelfth"
}
\markup { \indexItem #51 "Contrapunctus X alla Decima" "50"
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the tenth"
}
\markup { \indexItem #56 "Contrapunctus XI" "55"
  "triple fugue, employing the three subjects of Contrapunctus VIII in inversion"
}
\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #64 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XII [rectus]" "63"
      }
    }
  }
}
\markup { \indexItem #67 "Contrapunctus XII inversus" "66"
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #70 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XIII [rectus]" "69"
      }
    }
  }
}
\markup { \indexItem #74 "Contrapunctus XIII inversus" "73"
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup { \indexItem #78 "Contrapunctus XIV" "77"
  "four-voice triple fugue (not completed by Bach, but likely to have become a quadruple fugue: see below)"
}

\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #87 {
      \fill-with-pattern #1 #RIGHT . "Brief notes on the completion of Contrapunctus XIV" "86"
    }
  }
}

\markup \column \abs-fontsize #11 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Canoni" } }
}

\markup { \indexItem #92 "Canon in Hypodiapason (Canon alla Ottava)" "91"
  "canon in imitation at the octave"
}
\markup { \indexItem #96 "Canon alla Decima [in] Contrapunto alla Terza" "95"
  "canon in imitation at the tenth"
}
\markup { \indexItem #101 "Canon alla Duodecima in Contrapunto alla Quinta" "100"
  "canon in imitation at the twelfth"
}
\markup { \indexItem #104 "Canon [in Hypodiatesseron] per augmentationem in Contratio Motu" "103"
  "canon in which the following voice is both inverted and augmented"
}
