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
  \pad-around #3
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Contrapuncti" } }
}
\markup \indexItem #3 "Contrapunctus I"  "2" "four-voice fugue on principal subject"
\markup { \indexItem #8 "Contrapunctus II" "5"
  "four-voice fugue on principal subject, accompanied by a “French” style dotted rhythm"
}
\markup { \indexItem #11 "Contrapunctus III" "10"
  "four-voice fugue on principal subject in inversion, employing intense chromaticism"
}
\markup { \indexItem #14 "Contrapunctus IV" "13"
  "four-voice fugue on principal subject in inversion, employing counter-subjects"
}
\markup \indexItem #20 "Contrapunctus V" "19" "fugue with many stretto entries"
\markup { \indexItem #23 "Contrapunctus VI [per Diminutionem] in Stylo Francese" "22"
    "fugue with many stretto entries a 4 in Stylo Francese"
}
\markup { \indexItem #30 "Contrapunctus VII per per Augmentationem et Diminutionem" "29"
  "fugue that uses augmented (doubling all note lengths) and diminished versions of the main subject and its inversion"
}
\markup { \indexItem #35 "Contrapunctus VIII" "34"
  "triple fugue with three subjects, having independent expositions"
}
\markup { \indexItem #42 "Contrapunctus IX alla Duodecima" "41"
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the twelfth"
}
\markup { \indexItem #47 "Contrapunctus X alla Decima" "46"
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the tenth"
}
\markup { \indexItem #52 "Contrapunctus XI" "51"
  "triple fugue, employing the three subjects of Contrapunctus VIII in inversion"
}
\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #60 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XII [rectus]" "59"
      }
    }
  }
}
\markup { \indexItem #63 "Contrapunctus XII inversus" "62"
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #66 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XIII [rectus]" "65"
      }
    }
  }
}
\markup { \indexItem #70 "Contrapunctus XIII inversus" "69"
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup { \indexItem #73 "Contrapunctus XIV" "72"
  "four-voice triple fugue (not completed by Bach, but likely to have become a quadruple fugue: see below)"
}

\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #82 {
      \fill-with-pattern #1 #RIGHT . "Brief notes on the completion of Contrapunctus XIV" "81"
    }
  }
}

\markup \column \abs-fontsize #11 {
  \pad-around #3
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Canoni" } }
}

\markup { \indexItem #87 "Canon in Hypodiapason (Canon alla Ottava)" "86"
  "canon in imitation at the octave"
}
\markup { \indexItem #91 "Canon alla Decima [in] Contrapunto alla Terza" "90"
  "canon in imitation at the tenth"
}
\markup { \indexItem #96 "Canon alla Duodecima in Contrapunto alla Quinta" "95"
  "canon in imitation at the twelfth"
}
\markup { \indexItem #99 "Canon [in Hypodiatesseron] per augmentationem in Contratio Motu" "98"
  "canon in which the following voice is both inverted and augmented"
}
