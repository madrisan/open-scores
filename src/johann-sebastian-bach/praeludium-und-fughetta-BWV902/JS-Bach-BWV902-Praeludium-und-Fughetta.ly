\version "2.24.1"

#(ly:set-option 'relative-includes #t)

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
  line-width = 18.4\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
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
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #42 \bold { "Präludium" }
        \null
        \line \abs-fontsize #24 \bold { "und" }
        \null
        \line \abs-fontsize #42 \bold { "Fughetta" }
        \null\null
        \line \abs-fontsize #24 \bold { "in G-Dur" }
        \null\null\null
        \line \abs-fontsize #22 \bold { "BWV 902" }
        \null\null\null
        \line { \abs-fontsize #18 \italic "For Piano or Harpsichord" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null
        \fill-line \abs-fontsize #10 {
          "Based on the score published by Muzgiz, n.d. Plate 23481 - Moscow"
        }
        \null\null
      }
    }
  }
}
\pageBreak

\include "./parts/praeludium-und-fughetta-BWV902-praeludium.ly"
\pageBreak
\include "./parts/praeludium-und-fughetta-BWV902-fughetta.ly"
