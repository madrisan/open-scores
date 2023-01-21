\version "2.23.14"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  indent = 0.0
  line-width = 18.6\cm
  top-margin = 10\mm
  bottom-margin = 10\mm
  first-page-number = 0
  print-all-headers = ##t
  ragged-bottom = ##f
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
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Baldassare" }
        \null
        \line { \abs-fontsize #56 \bold "Galuppi" }
        \null
        \fill-line { \draw-hline }
	\null\null\null
        \line { \abs-fontsize #34 \bold "Sonata no. 5" }
	\null\null\null\null
        \line { \abs-fontsize #22 \bold "in Do maggiore" }
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

        \fill-line { \abs-fontsize #8 "Based on the Giacomo Benvenuti's score" }
      }
    }
  }
}

\include "./parts/sonata-5-1-andante.ly"
\include "./parts/sonata-5-2-allegro.ly"
\include "./parts/sonata-5-3-allegro-assai.ly"
