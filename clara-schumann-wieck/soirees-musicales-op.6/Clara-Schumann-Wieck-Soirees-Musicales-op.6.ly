\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "../../covercolor.ly"

calando = { \override TextSpanner.bound-details.left.text = \markup { \small "calando " } }
cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc. " } }

\paper {
  bottom-margin = 13\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  tagline = ##f
  top-margin = 13\mm
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
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Clara" }
        \null
        \line { \abs-fontsize #56 \bold "Schumann Wieck" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #34 \bold "Soirées Musicales" }
        \null\null
        \null\null
        \line { \abs-fontsize #20 "Op. 6" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "For Piano" }

        \null\null\null\null
        \fill-line {
          \override #'(thickness . 1)
          \draw-squiggle-line #0.5 #'(14 . 0) ##t
        }
        \null\null
        \fill-line {
          \abs-fontsize #13
          \smallCaps " Lavender.Blue Open Scores"
        }
        \fill-line { \abs-fontsize #10 "Engraved by Davide Madrisan" }
        \fill-line {
          \abs-fontsize #9
          \typewriter "https://github.com/madrisan/open-scores/"
        }
        \null\null\null\null
        \fill-line { \abs-fontsize #10 "Based on the score publiched by Friedrich Hofmeister - Leipzig, 1836" }
        \null
      }
    }
  }
}

\include "./parts/2-notturno.ly"
