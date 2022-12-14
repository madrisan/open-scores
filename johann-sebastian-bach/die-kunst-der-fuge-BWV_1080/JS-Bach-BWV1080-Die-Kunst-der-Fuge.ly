\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "../../covercolor.ly"

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
        \fill-line { \abs-fontsize #10 "Based on a previous Mutopia work of Pierre-Luc Gauthier & Chris Sawer" }
        \null
      }
    }
  }
}

\include "./parts/01-contrapunctus-I.ly"
\pageBreak
\include "./parts/02-contrapunctus-II.ly"
\include "./parts/03-contrapunctus-III.ly"
\include "./parts/04-contrapunctus-IV.ly"
\include "./parts/05-contrapunctus-V.ly"
\include "./parts/06-contrapunctus-VI.ly"
\include "./parts/07-contrapunctus-VII.ly"
