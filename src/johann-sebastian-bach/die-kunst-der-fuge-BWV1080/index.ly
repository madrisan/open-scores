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
\markup \indexItem #22 "Contrapunctus V" "21" "fugue with many stretto entries"
\markup { \indexItem #26 "Contrapunctus VI [per Diminutionem] in Stylo Francese" "25"
    "fugue with many stretto entries a 4 in Stylo Francese"
}
\markup { \indexItem #33 "Contrapunctus VII per per Augmentationem et Diminutionem" "32"
  "fugue that uses augmented (doubling all note lengths) and diminished versions of the main subject and its inversion"
}
\markup { \indexItem #39 "Contrapunctus VIII" "38"
  "triple fugue with three subjects, having independent expositions"
}
\markup { \indexItem #47 "Contrapunctus IX alla Duodecima" "46"
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the twelfth"
}
\markup { \indexItem #52 "Contrapunctus X alla Decima" "51"
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the tenth"
}
\markup { \indexItem #54 "Contrapunctus XI" "53"
  "triple fugue, employing the three subjects of Contrapunctus VIII in inversion"
}
\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #62 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XII [rectus]" "61"
      }
    }
  }
}
\markup { \indexItem #65 "Contrapunctus XII inversus" "64"
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #68 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XIII [rectus]" "67"
      }
    }
  }
}
\markup { \indexItem #72 "Contrapunctus XIII inversus" "71"
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup { \indexItem #75 "Contrapunctus XIV" "74"
  "four-voice triple fugue (not completed by Bach, but likely to have become a quadruple fugue: see below)"
}

\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #84 {
      \fill-with-pattern #1 #RIGHT . "Brief notes on the completion of Contrapunctus XIV" "83"
    }
  }
}

\markup \column \abs-fontsize #11 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Canoni" } }
}

\markup { \indexItem #89 "Canon in Hypodiapason (Canon alla Ottava)" "88"
  "canon in imitation at the octave"
}
\markup { \indexItem #93 "Canon alla Decima [in] Contrapunto alla Terza" "92"
  "canon in imitation at the tenth"
}
\markup { \indexItem #98 "Canon alla Duodecima in Contrapunto alla Quinta" "97"
  "canon in imitation at the twelfth"
}
\markup { \indexItem #101 "Canon [in Hypodiatesseron] per augmentationem in Contratio Motu" "100"
  "canon in which the following voice is both inverted and augmented"
}
