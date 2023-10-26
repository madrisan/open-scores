\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 17\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  top-margin = 15\mm
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "d.madrisan@proton.me"
  }
  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Francis" }
        \null
        \line { \abs-fontsize #75 \bold "Poulenc" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Deux Improvisations" }
        \null\null
        \line { \abs-fontsize #40 \bold "pour piano" }
        \null\null\null\null
        \line { \abs-fontsize #25 \bold "(Improvisations 11, 12)" }
        \null
        \line { \abs-fontsize #35 \bold "FP. 113" }
        \null\null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line \abs-fontsize #10 {
          \concat {
            "Based on the score: Paris, Rouart, Lerolle & Cie., 1941. Plates R.L. 12124, R.L. 12125"
          }
        }
        \null\null
      }
    }
  }
}
\pageBreak

\markup \center-column {
  \null\null\null
  \null\null\null
  \line {
    \hspace #1
    \general-align #Y #DOWN {
      \epsfile #X #94 #"francis-poulenc-photo-1949.ps"
    }
  }
  \null
  \line \italic {
     "Francis Poulenc (1899 – 1963)"
  }
  \null\null\null
}

\markup {
  \column {
    \line { \abs-fontsize #34 "“" }
    \wordwrap \abs-fontsize #10 \italic {
        "I tolerate the Mouvements perpétuels, my old Suite en ut [in C], and the Trois pieces."
        "I like very much my two collections of Improvisations, an Intermezzo in A flat,"
        "and certain Nocturnes."
        "I condemn Napoli and the Soirées de Nazelles without reprieve."
        ""
    }
  }
}
\markup {
  \hspace #0
  \column {
    \wordwrap \abs-fontsize #34 {
      \fill-line { "" "”" }
    }
  }
}
\markup {
  \hspace #0
  \column {
    \wordwrap \abs-fontsize #10 {
      "Schmidt (2001), p. 182"
    }
  }
}

\pageBreak

\include "parts/francis-poulenc-improvisations-fp.113-1.ly"
\pageBreak
\include "parts/francis-poulenc-improvisations-fp.113-2.ly"
