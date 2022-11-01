\version "2.23.14"

#(ly:set-option 'relative-includes #t)

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
    \fill-line {
      \center-column {
        \null\null\null\null\null\null\null\null
        \null\null\null\null\null\null\null\null
        \line { \abs-fontsize #38 \bold "Baldassare Galuppi" }
	\null\null\null
        \line { \abs-fontsize #34 \bold "Sonata no. 5" }
	\null
        \line { \abs-fontsize #30 \bold "in Do maggiore" }
	\null\null
        \null\null\null\null\null\null
        \null\null\null\null\null\null
        \fill-line { \abs-fontsize #11 "Transcribed and Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line {
          \abs-fontsize #8 "Based on the Giacomo Benvenuti's score"
        }
      }
    }
  }
}

\include "./parts/sonata-5-1.ly"
\include "./parts/sonata-5-2.ly"
\include "./parts/sonata-5-3.ly"
