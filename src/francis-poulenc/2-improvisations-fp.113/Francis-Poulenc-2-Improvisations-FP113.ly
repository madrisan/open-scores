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
    maintainerEmail = "davide.madrisan@gmail.com"
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
        \line { \abs-fontsize #35 \bold "FP. 113" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \fill-line \abs-fontsize #12 {
          \concat {
            "Based on the score: Paris, Rouart, Lerolle & Cie., 1941. Plates R.L. 12124, R.L. 12125"
          }
        }
        \null\null
      }
    }
  }
}

\include "parts/francis-poulenc-improvisations-fp.113-1.ly"
\pageBreak
\include "parts/francis-poulenc-improvisations-fp.113-2.ly"
