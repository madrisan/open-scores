\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 10\mm
  first-page-number = 0
  indent = 0.0
  line-width = 16.8\cm
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  %system-system-spacing = #'((basic-distance . 2) (padding . 10))
  top-margin = 10\mm
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #36 \bold "Two Chorale Preludes" }
        \null\null\null
        \line { \abs-fontsize #24 "BWV 659  &  BWV 639" }
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #18 \italic "arranged for Piano Solo by" }
        \null\null
        \line { \abs-fontsize #36 \bold "Ferruccio Busoni" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

}

\include "./parts/Bach-Busoni-Chorale-Prelude-BWV659.ly"
