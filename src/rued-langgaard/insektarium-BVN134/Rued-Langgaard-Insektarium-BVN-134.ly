\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  left-margin = 10\mm
  line-width = 18.4\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  right-margin = 10\mm
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
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
\pageBreak
\include "./parts/insektarium-6.ly"
\pageBreak
\include "./parts/insektarium-7.ly"
\pageBreak
\include "./parts/insektarium-8.ly"
\include "./parts/insektarium-9.ly"
