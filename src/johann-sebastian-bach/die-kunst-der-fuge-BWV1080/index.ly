\include "./macros.ly"

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null
    \null
  }
}

\markup \column \abs-fontsize #11 {
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Contrapuncti" } }
  \null

  \page-link #3 { \fill-with-pattern #1 #RIGHT . "Contrapunctus I" "2" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "four-voice fugue on principal subject"
  }

  \page-link #6 { \fill-with-pattern #1 #RIGHT . "Contrapunctus II" "5" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "four-voice fugue on principal subject, accompanied by a “French” style dotted rhythm"
  }

  \page-link #11 { \fill-with-pattern #1 #RIGHT . "Contrapunctus III" "10" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "four-voice fugue on principal subject in inversion, employing intense chromaticism"
  }

  \page-link #14 { \fill-with-pattern #1 #RIGHT . "Contrapunctus IV" "13" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "four-voice fugue on principal subject in inversion, employing counter-subjects"
  }

  \page-link #20 { \fill-with-pattern #1 #RIGHT . "Contrapunctus V" "19" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "fugue with many stretto entries"
  }

  \page-link #23 {
    \fill-with-pattern #1 #RIGHT . "Contrapunctus VI [per Diminutionem] in Stylo Francese" "22"
  }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "fugue with many stretto entries a 4 in Stylo Francese"
  }

  \page-link #30 {
    \fill-with-pattern #1 #RIGHT . "Contrapunctus VII per per Augmentationem et Diminutionem" "29"
  }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "fugue that uses augmented (doubling all note lengths) and diminished versions of the main subject and its inversion"
  }

  \page-link #35 { \fill-with-pattern #1 #RIGHT . "Contrapunctus VIII" "34" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "triple fugue with three subjects, having independent expositions"
  }

  \page-link #42 { \fill-with-pattern #1 #RIGHT . "Contrapunctus IX alla Duodecima" "41" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "double fugue, with two subjects occurring dependently and in invertible counterpoint at the twelfth"
  }

  \page-link #47 { \fill-with-pattern #1 #RIGHT . "Contrapunctus X alla Decima" "46" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "double fugue, with two subjects occurring dependently and in invertible counterpoint at the tenth"
  }

  \page-link #52 { \fill-with-pattern #1 #RIGHT . "Contrapunctus XI" "51" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "triple fugue, employing the three subjects of Contrapunctus VIII in inversion"
  }

  \page-link #60 { \fill-with-pattern #1 #RIGHT . "Contrapunctus XII [rectus]" "59" }
  \page-link #63 { \fill-with-pattern #1 #RIGHT . "Contrapunctus XII inversus" "62" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
  }

  \page-link #66 { \fill-with-pattern #1 #RIGHT . "Contrapunctus XIII [rectus]" "65" }
  \page-link #70 { \fill-with-pattern #1 #RIGHT . "Contrapunctus XIII inversus" "69" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
  }

  \page-link #73 { \fill-with-pattern #1 #RIGHT . "Contrapunctus XIV" "72" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "four-voice triple fugue (not completed by Bach, but likely to have become a quadruple fugue: see below)"
  }

  \page-link #82 { \fill-with-pattern #1 #RIGHT . "Brief notes on the completion of Contrapunctus XIV" "81" }

  \null

  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Canoni" } }
  \null
  \page-link #87 { \fill-with-pattern #1 #RIGHT . "Canon in Hypodiapason (Canon alla Ottava)" "86" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "canon in imitation at the octave"
  }

  \page-link #91 { \fill-with-pattern #1 #RIGHT . "Canon alla Decima [in] Contrapunto alla Terza" "90" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "canon in imitation at the tenth"
  }

  \page-link #96 { \fill-with-pattern #1 #RIGHT . "Canon alla Duodecima in Contrapunto alla Quinta" "95" }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "canon in imitation at the twelfth"
  }

  \page-link #99 {
    \fill-with-pattern #1 #RIGHT . "Canon [in Hypodiatesseron] per augmentationem in Contratio Motu"
    "98"
  }
  \line \abs-fontsize #8 \italic \with-color #middleGrey {
    \hspace #4 "canon in which the following voice is both inverted and augmented"
  }
}
