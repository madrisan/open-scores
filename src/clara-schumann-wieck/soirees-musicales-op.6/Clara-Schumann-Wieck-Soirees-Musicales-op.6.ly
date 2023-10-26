\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 10\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.6\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 1.5)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 1.5)
        (stretchability . 25))
  tagline = ##f
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
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Clara" }
        \null
        \line { \abs-fontsize #56 \bold "Schumann Wieck" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Soirées Musicales" }
        \null\null
        \line { \abs-fontsize #24 \bold "Op. 6" }
       \null\null\null
       \fill-line { \abs-fontsize #30 \bold "2. Nocturne" }
        \null\null
        \fill-line { \abs-fontsize #20 "For Piano" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line { \abs-fontsize #10 "Based on the score published by Friedrich Hofmeister - Leipzig, 1836" }
        \null\null
      }
    }
  }
}

\include "./parts/2-notturno.ly"
