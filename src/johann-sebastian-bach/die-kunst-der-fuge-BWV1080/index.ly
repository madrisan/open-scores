\include "./macros.ly"

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null
  }
}

#(define-markup-command (indexItem layout props title pagelabel infos)
  (string? symbol? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #10 {
         \override #'(line-width . 95)
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT . #title \page-ref #pagelabel "000" "?"
           }
         }
         \pad-around #1
         \line \abs-fontsize #8 \italic \with-color #middleGrey {
           \hspace #6 #infos
         }
       } #}))

\markup \column \abs-fontsize #10 {
  \pad-around #0.1
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #2 {
      \fill-with-pattern #1 #RIGHT . "Preface" \page-ref #'PrefaceEn "000" "?"
    }
  }
}
\markup \column \abs-fontsize #10 {
  \pad-around #0.1
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #4 {
      \fill-with-pattern #1 #RIGHT . "Prefazione (italian translation)" \page-ref #'PrefaceIt "000" "?"
    }
  }
}
\markup \column \abs-fontsize #10 {
  \pad-around #0.1
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #5 {
      \fill-with-pattern #1 #RIGHT . "Préface (french translation)" \page-ref #'PrefaceFr "000" "?"
    }
  }
}

\markup \column \abs-fontsize #10 {
  \pad-around #0.1
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #6 {
      \fill-with-pattern #1 #RIGHT . "List of Subjects" \page-ref #'ListOfSubjects "000" "5"
    }
  }
}

\markup \column \abs-fontsize #10 {
  \pad-around #0
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #8 {
      \fill-with-pattern #1 #RIGHT . "Structure of the Fuges" \page-ref #'StructureOfFuges "000" "?"
    }
  }
}

\markup \column \abs-fontsize #10 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Contrapuncti" } }
}
\markup \indexItem "Contrapunctus I" #'ContrapunctusI "four-voice fugue on principal subject"
\markup { \indexItem "Contrapunctus II" #'ContrapunctusII
  "four-voice fugue on principal subject, accompanied by a “French” style dotted rhythm"
}
\markup { \indexItem "Contrapunctus III" #'ContrapunctusIII
  "four-voice fugue on principal subject in inversion, employing intense chromaticism"
}
\markup { \indexItem "Contrapunctus IV" #'ContrapunctusIV
  "four-voice fugue on principal subject in inversion, employing counter-subjects"
}
\markup \indexItem "Contrapunctus V" #'ContrapunctusV "four-voice fugue with many stretto entries"
\markup { \indexItem "Contrapunctus VI [per Diminutionem] in Stylo Francese" #'ContrapunctusVI
    "four-voice fugue with many stretto entries a 4 in Stylo Francese"
}
\markup { \indexItem "Contrapunctus VII per Augmentationem et Diminutionem" #'ContrapunctusVII
  "fugue that uses augmented (doubling all note lengths) and diminished versions of the main subject and its inversion"
}
\markup { \indexItem "Contrapunctus VIII" #'ContrapunctusVIII
  "triple fugue with three subjects, having independent expositions"
}
\markup { \indexItem "Contrapunctus IX alla Duodecima" #'ContrapunctusIX
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the twelfth"
}
\markup { \indexItem "Contrapunctus X alla Decima" #'ContrapunctusX
  "double fugue, with two subjects occurring dependently and in invertible counterpoint at the tenth"
}
\markup { \indexItem "Contrapunctus XI" #'ContrapunctusXI
  "triple fugue, employing the three subjects of Contrapunctus VIII in inversion"
}
\markup \column \abs-fontsize #10 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #67 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XII [rectus]"
                           \page-ref #'ContrapunctusXIIrectus "000" "?"
      }
    }
  }
}
\markup { \indexItem "Contrapunctus XII inversus" #'ContrapunctusXIIinversus
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup \column \abs-fontsize #10 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #73 {
      \pad-markup #0.5 {
        \fill-with-pattern #1 #RIGHT . "Contrapunctus XIII [rectus]"
                           \page-ref #'ContrapunctusXIIIrectus "000" "?"
      }
    }
  }
}
\markup { \indexItem "Contrapunctus XIII inversus" #'ContrapunctusXIIIinversus
  "mirror fugues, in which a piece is notated once and then with voices and counterpoint completely inverted"
}
\markup { \indexItem "Contrapunctus XIV" #'ContrapunctusXIV
  "four-voice triple fugue (not completed by Bach, but likely to have become a quadruple fugue: see below)"
}

\markup \column \abs-fontsize #10 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #90 {
      \fill-with-pattern #1 #RIGHT . "Brief notes on the completion of Contrapunctus XIV"
                         \page-ref #'BriefNotesContrapunctusXIVen "000" "?"
    }
  }
}
\markup \column \abs-fontsize #10 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #95 {
      \fill-with-pattern #1 #RIGHT . "Brevi note sul completamento del Contrapunctus XIV (italian translation)"
                         \page-ref #'BriefNotesContrapunctusXIVit "000" "?"
    }
  }
}
\markup \column \abs-fontsize #10 {
  \override #'(line-width . 95)
  \line {
    \hspace #3.2
    \page-link #100 {
      \fill-with-pattern #1 #RIGHT . "Notes succinctes sur l'achèvement du Contrapunctus XIV (french translation)"
                         \page-ref #'BriefNotesContrapunctusXIVfr "000" "?"
    }
  }
}

\markup \column \abs-fontsize #10 {
  \pad-around #2
  \abs-fontsize #12 \smallCaps \bold { \concat { \char ##x23AF " Canoni" } }
}

\markup { \indexItem "Canon in Hypodiapason (Canon alla Ottava)" #'CanonI
  "canon in imitation at the octave"
}
\markup { \indexItem "Canon alla Decima [in] Contrapunto alla Terza" #'CanonII
  "canon in imitation at the tenth"
}
\markup { \indexItem "Canon alla Duodecima in Contrapunto alla Quinta" #'CanonIII
  "canon in imitation at the twelfth"
}
\markup { \indexItem "Canon [in Hypodiatesseron] per augmentationem in Contratio Motu" #'CanonIV
  "canon in which the following voice is both inverted and augmented"
}
