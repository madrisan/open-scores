\version "2.23.80"

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
%  ragged-last-bottom = ##t
%  ragged-bottom = ##f
  first-page-number = 0
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
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
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null\null
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
	\null
        \fill-line { \draw-hline }
	\null\null
        \line { \abs-fontsize #40 \bold "Italienisches Konzert" }
        \null\null
        \line { \abs-fontsize #24 "Concerto Nach Italienischem Gusto" }
        \null\null
        \line { \abs-fontsize #20 "BWV 971" }
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

        \fill-line { \abs-fontsize #10 "Based on a previous work of Jay Anderson" }
        \null
      }
    }
  }
}

\include "./parts/bach-italienisches-konzert-1.ly"
\include "./parts/bach-italienisches-konzert-2-andate.ly"
\include "./parts/bach-italienisches-konzert-3-presto.ly"
