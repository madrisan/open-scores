\version "2.25.12"

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
        \line { \abs-fontsize #40 \bold "Ouverture" }
        \null
        \line { \abs-fontsize #34 \bold "nach Französischer Art" }
        \null\null
        \line { \abs-fontsize #20 "BWV 831" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano and two-manual Harpsichord" }
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
        \fill-line {
          \abs-fontsize #10 "Based on: Moscow Muzyka (1990)"
        }
        \null\null
      }
    }
  }
}

\include "./parts/bach-ouverture-nach-franzosischer-art-1-ouverture.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-2-courante.ly"
%\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-3-gavotte-1.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-3-gavotte-2.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-4-passepied-1.ly"
\include "./parts/bach-ouverture-nach-franzosischer-art-4-passepied-2.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-5-sarabande.ly"
\include "./parts/bach-ouverture-nach-franzosischer-art-6-bourree-1.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-6-bourree-2.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-7-gigue.ly"
\pageBreak
\include "./parts/bach-ouverture-nach-franzosischer-art-8-echo.ly"
