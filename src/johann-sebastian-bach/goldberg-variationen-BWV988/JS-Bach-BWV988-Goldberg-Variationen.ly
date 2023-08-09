\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.3\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 12\mm
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
        \line { \abs-fontsize #40 \bold "Goldberg Variationen" }
        \null\null
        \line { \abs-fontsize #20 \bold "Aria mit verschiedenen Veraenderungen" }
        \null\null\null
        \line { \abs-fontsize #20 "BWV 988" }
        \null\null\null
        \fill-line { \abs-fontsize #20 "Clavicimbal mit 2 Manualen" }
        \null\null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on a previous work of Martin Straeten, J.D. Erickson, and Hajo Dezelski"
        }
        \null\null
      }
    }
  }
}

\include "./parts/bach-goldberg-variationen-00-aria.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-01-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-02-variatio.ly"
\include "./parts/bach-goldberg-variationen-03-variatio.ly"
\include "./parts/bach-goldberg-variationen-04-variatio.ly"
\include "./parts/bach-goldberg-variationen-05-variatio.ly"
\include "./parts/bach-goldberg-variationen-06-variatio.ly"
\include "./parts/bach-goldberg-variationen-07-variatio.ly"
\include "./parts/bach-goldberg-variationen-08-variatio.ly"
\include "./parts/bach-goldberg-variationen-09-variatio.ly"
\include "./parts/bach-goldberg-variationen-10-variatio.ly"
\include "./parts/bach-goldberg-variationen-11-variatio.ly"
\include "./parts/bach-goldberg-variationen-12-variatio.ly"
\include "./parts/bach-goldberg-variationen-13-variatio.ly"
\include "./parts/bach-goldberg-variationen-14-variatio.ly"
\include "./parts/bach-goldberg-variationen-15-variatio.ly"
\include "./parts/bach-goldberg-variationen-16-variatio.ly"
\include "./parts/bach-goldberg-variationen-17-variatio.ly"
\include "./parts/bach-goldberg-variationen-18-variatio.ly"
\include "./parts/bach-goldberg-variationen-19-variatio.ly"
\include "./parts/bach-goldberg-variationen-20-variatio.ly"
\include "./parts/bach-goldberg-variationen-21-variatio.ly"
\include "./parts/bach-goldberg-variationen-22-variatio.ly"
