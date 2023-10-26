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
        \null\null\null
        \line { \abs-fontsize #30 \bold "Arnold" }
        \null
        \line { \abs-fontsize #75 \bold "Schönberg" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #33 \bold "Sechs kleine Klavierstücke" }
        \null\null
        \line { \abs-fontsize #24 \italic "Six Little Piano Pieces" }
        \null\null\null
        \line { \abs-fontsize #30 \bold "Op. 19" }
        \null\null\null\null
        \line {
          \abs-fontsize #12
          "With a preface by Giancarlo Simonacci (Italian and English translation)"
        }
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #12 "Based on the score published by Universal Edition, 1913"
        }
        \null\null
      }
    }
  }
}

\include "schoenberg-busoni-letter.ly"
\pageBreak
\include "preface.ly"
\pageBreak
\include "preface-en.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-1.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-2.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-3.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-4.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-5.ly"
\pageBreak
\include "parts/arnold-schoenberg-op-19-6.ly"
