\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\paper {
  line-width = 18.6\cm
  top-margin = 10\mm
  bottom-margin = 10\mm
  first-page-number = 0
  print-all-headers = ##t
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
        \line { \abs-fontsize #30 \bold "Rued Langgaard" }
	\null\null\null
        \line { \abs-fontsize #36 \bold "Insektarium BVN 134" }
        \null\null\null\null\null\null\null\null
        \null\null\null\null\null\null\null\null
        \fill-line { \abs-fontsize #11 "Transcribed and Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line {
          \abs-fontsize #8 "Based on the partition seen in a Youtube video"
        }
      }
    }
  }
}

\include "./parts/insektarium-4.ly"
\pageBreak
\include "./parts/insektarium-6.ly"
\include "./parts/insektarium-9.ly"
