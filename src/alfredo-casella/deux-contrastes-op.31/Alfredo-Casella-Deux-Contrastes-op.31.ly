\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 15\mm
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
        \null\null
        \line { \abs-fontsize #30 \bold "Alfredo" }
        \null
        \line { \abs-fontsize #80 \bold "Casella" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #42 \bold "DEUX CONTRASTES" }
        \null\null\null
        \line {
          \abs-fontsize #20 \bold "I. GRAZIOSO " \abs-fontsize #20 "   "
          \abs-fontsize #20 \bold "II. ANTIGRAZIOSO"
        }
        \null\null
        \line { \abs-fontsize #34 "op. 31" }
        \null\null\null
        \line { \abs-fontsize #14 "POUR LE" }
        \null
        \line { \abs-fontsize #22 "PIANO" }
        \null\null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \fill-line {
          \abs-fontsize #12 "Based on the edition London: J. & W. Chester, Ltd., 1919. Plate J. & W. C. 2041."
        }
        \null
      }
    }
  }
}

\include "parts/1-grazioso.ly"
\pageBreak
\include "parts/2-antigrazioso.ly"