\version "2.25.16"

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
  %inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  %left-margin = 10\mm
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  %outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %right-margin = 10\mm
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 1)
        (minimum-distance . 1)
        (padding . 1)
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
        \line { \abs-fontsize #40 \bold "Suite Anglaise I" }
        \null\null
        \line { \abs-fontsize #20 "BWV 806" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano, Harpsichord, Clavichord" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {s
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on: Based on the Johann Christian Bach's manuscript"
        }
        \null\null
      }
    }
  }
}

\include "./parts/bach-suite-anglaise-1-1-prelude.ly"
\pageBreak
\include "./parts/bach-suite-anglaise-1-2-allemande.ly"
\pageBreak
\include "./parts/bach-suite-anglaise-1-3-courante-1.ly"
%\pageBreak
\include "./parts/bach-suite-anglaise-1-3-courante-2.ly"
\pageBreak
\include "./parts/bach-suite-anglaise-1-4-double-1.ly"
%\pageBreak
\include "./parts/bach-suite-anglaise-1-4-double-2.ly"
\pageBreak
\include "./parts/bach-suite-anglaise-1-5-sarabande.ly"
\pageBreak
\include "./parts/bach-suite-anglaise-1-6-bourree-1.ly"
%\pageBreak
\include "./parts/bach-suite-anglaise-1-6-bourree-2.ly"
\pageBreak
\include "./parts/bach-suite-anglaise-1-7-gigue.ly"
