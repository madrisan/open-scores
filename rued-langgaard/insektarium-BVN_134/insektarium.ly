\version "2.23.10"

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
        \line { \abs-fontsize #38 \bold "Rued Langgaard" }
	\null\null\null
        \line { \abs-fontsize #36 \bold "Insektarium" }
	\null\null
	\line { \abs-fontsize #22 \bold "9 Puzzle Pictures, for solo piano" }
	\null\null\null
        \line { \abs-fontsize #24 \bold "BVN 134" }
        \null\null\null\null\null\null
        \null\null\null\null\null\null
        \fill-line { \abs-fontsize #11 "Transcribed and Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line {
          \abs-fontsize #8 "Based on the partition displayed in the Youtube video https://youtu.be/8RF4LMxJ088"
        }
      }
    }
  }
}

\include "./parts/insektarium-1.ly"
\pageBreak
\include "./parts/insektarium-2.ly"
\pageBreak
\include "./parts/insektarium-3.ly"
\include "./parts/insektarium-4.ly"
\pageBreak
\include "./parts/insektarium-6.ly"
\include "./parts/insektarium-9.ly"
