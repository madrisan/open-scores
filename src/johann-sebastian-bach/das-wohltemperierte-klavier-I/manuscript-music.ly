% for page in $(seq 1 89); do
%   echo "\
%\\markup \\fill-line {
%  \\null
%  \\epsfile #X #96 #\"manuscript-page$(printf "%02d" $page).eps\"
%  \\null
%}
%\\pageBreak
%"
%done

\markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  \with-color #(rgb-color 1.00 0.89 0.71)
  \filled-box #'(-200 . 200) #'(-200 . 200) #0
}
\markup {
  \fill-line {
    \center-column {
      \null\null\null\null
      \null\null\null\null
      \line { \abs-fontsize #30 \bold "Johann Sebastian" }
      \null
      \line { \abs-fontsize #80 \bold "Bach" }
      \null
      \fill-line { \draw-hline }
      \null\null
      \line { \abs-fontsize #34 \bold "Das Wohltemperirte Clavier" }
      \null\null
      \line { \abs-fontsize #34 \bold "Teil I" }
      \null\null
      \line { \abs-fontsize #22 "BWV 846 – BWV 869" }
      \null\null\null
      \null\null\null
      \line { \abs-fontsize #26 \bold "Bach's autograph, 1722-23" }
      \null\null
      \line { \abs-fontsize #20 \italic "Staatsbibliothek zu Berlin" }
      \null\null\null\null
    }
  }
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium I." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page01.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page02.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga I." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page03.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium II." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page04.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page05.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page06.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga II." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page07.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page08.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium III." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page09.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page10.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga III." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page11.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page12.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium IV." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page13.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page14.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga IV." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page15.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page16.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page17.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium V." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page18.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga V." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page19.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page20.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium VI." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page21.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page22.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga VI." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page23.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium VII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page24.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page25.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page26.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga VII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page27.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page28.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium VIII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page29.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page30.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga VIII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page31.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page32.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page33.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium IX." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page34.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga IX." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page35.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium X." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page36.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page37.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga X." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page38.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page39.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium XI." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page40.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga XI." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page41.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium XII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page42.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga XII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page43.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page44.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page45.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Praeludium XIII." } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page46.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page47.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold { "Fuga XIII. (missing)" } \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page48.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \fill-line {
    \center-column {
      \null \fill-line \abs-fontsize #12 \bold {
        \concat {
          "Praeludium XIV. (first 6 " \char ##x00BE " bars missing)"
        }
      }
      \null
    }
  }
}
\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page49.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page50.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page51.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page52.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page53.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page54.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page55.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page56.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page57.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page58.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page59.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page60.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page61.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page62.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page63.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page64.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page65.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page66.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page67.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page68.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page69.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page70.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page71.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page72.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page73.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page74.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page75.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page76.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page77.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page78.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page79.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page80.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page81.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page82.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page83.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page84.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page85.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page86.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page87.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page88.eps"
  \null
}
\pageBreak

\markup \fill-line {
  \null
  \epsfile #X #96 #"manuscript-page89.eps"
  \null
}
\pageBreak

