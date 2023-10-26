\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  indent = 0.0
  line-width = 18.6\cm
  top-margin = 12\mm
  bottom-margin = 12\mm
  first-page-number = 0
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  %system-system-spacing = #'((basic-distance . 2) (padding . 4))
  %page-breaking = #ly:minimal-breaking
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
    \with-color  \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Rued" }
        \null
        \line { \abs-fontsize #80 \bold "Langgaard" }
        \null
	\fill-line { \draw-hline }
	\null\null\null
        \line { \abs-fontsize #50 \bold "Insektarium" }
	\null\null
	\line { \abs-fontsize #26 \bold "9 Puzzle Pictures, for solo piano" }
	\null\null\null\null
        \line { \abs-fontsize #24 \bold "BVN 134" }

        \null\null\null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \null\null
    \fill-line {
      \center-column {
        \null\null\null
        \fill-line {
          \abs-fontsize #8 "Based on the partition displayed in the Youtube video https://youtu.be/8RF4LMxJ088"
        }
      }
    }
  }
}

\include "articulate.ly"
\include "./parts/insektarium-1.ly"
\pageBreak
\include "./parts/insektarium-2.ly"
\pageBreak
\include "./parts/insektarium-3.ly"
\include "./parts/insektarium-4.ly"
\include "./parts/insektarium-5.ly"
\include "./parts/insektarium-6.ly"
\include "./parts/insektarium-7.ly"
\include "./parts/insektarium-8.ly"
\include "./parts/insektarium-9.ly"
