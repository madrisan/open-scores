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
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #42 \bold { "Inventionen" }
        \null\null
        \line \abs-fontsize #24 \bold { "BWV 772" \char ##x2012 "786" }
        \null\null
        \line \italic { \abs-fontsize #18 "und" }
        \null\null
        \line \abs-fontsize #42 \bold { "Sinfonien" }
        \null\null
        \line \abs-fontsize #24 \bold { "BWV 787" \char ##x2012 "801" }
        \null\null\null
        \line { \abs-fontsize #18 \italic "für Tasteninstrument" }
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
          \abs-fontsize #10 "Based on a previous work of Allen Garvin and Olivier Vermersch"
        }
        \null\null
      }
    }
  }
}

\include "./parts/bach-invention-01.ly"
\include "./parts/bach-sinfonia-01.ly"
\pageBreak
\include "./parts/bach-invention-02.ly"
\pageBreak
\include "./parts/bach-invention-03.ly"
