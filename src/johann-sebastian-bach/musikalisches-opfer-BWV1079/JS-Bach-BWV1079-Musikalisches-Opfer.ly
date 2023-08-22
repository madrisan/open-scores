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
  line-width = 18.6\cm
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
  top-margin = 8\mm
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
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null
        \line { \abs-fontsize #40 \bold "Musikalisches Opfer" }
        \null\null
        \line { \abs-fontsize #18 \bold "Regis Iussu Cantio Et Reliqua Canonica Arte Resoluta" }
        \null\null\null
        \line {
          \concat \abs-fontsize #28 \bold {
             "Ricercar a 3 " \char ##x2022 " Ricercar a 6"
          }
        }
        \null\null\null
        \line { \abs-fontsize #28 \bold "BWV 1079" }
        \null\null\null
        \line { \abs-fontsize #20 \italic "for piano" }
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
          \abs-fontsize #10 "Based on a previous work of Arnaud Gossart"
        }
        \null\null
      }
    }
  }
}

\include "./parts/bach-musikalisches-opfer-ricercare-a-3.ly"
\pageBreak
\include "./parts/bach-musikalisches-opfer-ricercare-a-6.ly"
