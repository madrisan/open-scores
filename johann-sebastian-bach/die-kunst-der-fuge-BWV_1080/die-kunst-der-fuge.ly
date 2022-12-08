\version "2.23.10"

#(ly:set-option 'relative-includes #t)

coverColor = #(rgb-color 0.2 0.4 0.5)

\paper {
  bottom-margin = 15\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  tagline = ##f
  top-margin = 15\mm
% markup-system-spacing.basic-distance = #10
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
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #34 \bold "Die Kunst der Fuge" }
        \null\null
        \null\null
        \line { \abs-fontsize #20 "BWV 1080" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
        \null\null\null\null
        \fill-line {
          \override #'(thickness . 5)
          \draw-squiggle-line #0.5 #'(10 . 0) ##t
        }
        \null\null\null\null
        \fill-line { \abs-fontsize #11 "Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line { \abs-fontsize #10 "Based on a previous work of Pierre-Luc Gauthier & Chris Sawer" }
        \null
      }
    }
  }
}

\include "./parts/01-contrapunctus-I.ly"