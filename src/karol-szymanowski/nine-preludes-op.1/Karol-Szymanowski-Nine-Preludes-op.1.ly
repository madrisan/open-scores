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
  line-width = 18.8\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##f
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  scoreTitleMarkup = \markup {
    \fill-line {
      \if \should-print-all-headers
      \fontsize #3 \bold \smallCaps \fromproperty #'header:title
    }
  }
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
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
        \null\null\null\null\null
        \line { \abs-fontsize #40 \bold "Karol Maciej" }
        \null
        \line { \abs-fontsize #70 \bold "Szymanowski" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #36 \bold { "Dziewięć preludiów" }
        \null\null
        \line \abs-fontsize #26 \bold { "(Nine Preludes)" }
        \null\null\null
        \line \abs-fontsize #26 \bold { "Op.1" }
        \null\null\null
        \line \abs-fontsize #30 \bold { "Preludium I, II" }
        \null\null\null
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
          "Based on the score published by Gebethner and Wolff - Warsaw, 1906"
        }
        \null\null
      }
    }
  }
}
\pageBreak

\include "./parts/karol-szymanowski-op-1-1.ly"
\pageBreak
\include "./parts/karol-szymanowski-op-1-2.ly"
\pageBreak
