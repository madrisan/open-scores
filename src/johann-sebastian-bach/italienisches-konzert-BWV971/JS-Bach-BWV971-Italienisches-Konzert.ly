\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 8\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.6\cm
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
        (stretchability . 25))
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
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
	\null
        \fill-line { \draw-hline }
	\null\null
        \line { \abs-fontsize #40 \bold "Italienisches Konzert" }
        \null\null
        \line { \abs-fontsize #24 "Concerto Nach Italienischem Gusto" }
        \null\null
        \line { \abs-fontsize #20 "BWV 971" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
        \null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line { \abs-fontsize #10 "Based on a previous work of Jay Anderson" }
        \null\null
      }
    }
  }
}

\include "./parts/bach-italienisches-konzert-1.ly"
\include "./parts/bach-italienisches-konzert-2-andate.ly"
\include "./parts/bach-italienisches-konzert-3-presto.ly"
