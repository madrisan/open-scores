\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 8\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.6\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 25))
  top-margin = 15\mm
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
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #28 \bold "Sechs kleine Präludien" }
        \null
        \line { \abs-fontsize #18 \bold "(Six Little Preludes)" }
        \null\null\null
        \line { \abs-fontsize #20 "BWV 933-938" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line { \abs-fontsize #10 "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890" }
        \null\null
      }
    }
  }
}

\include "./parts/sechs-kleine-praludien-BWV933.ly"
%\pageBreak
\include "./parts/sechs-kleine-praludien-BWV934.ly"
%\pageBreak
\include "./parts/sechs-kleine-praludien-BWV935.ly"
%\pageBreak
\include "./parts/sechs-kleine-praludien-BWV936.ly"
\include "./parts/sechs-kleine-praludien-BWV937.ly"
%\include "./parts/sechs-kleine-praludien-BWV938.ly"
