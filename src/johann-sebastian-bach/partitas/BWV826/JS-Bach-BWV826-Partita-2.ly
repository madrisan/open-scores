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
        \line { \abs-fontsize #40 \bold "Partita II" }
        \null\null
        \line { \abs-fontsize #20 "BWV 826" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano, Harpsichord, Clavichord" }
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
          \abs-fontsize #10 "Based on: Bach-Gesellschaft Ausgabe, Leipzig (1853)"
        }
        \null\null
      }
    }
  }
}

\include "./parts/bach-partita-2-1-sinfonia.ly"
\pageBreak
\include "./parts/bach-partita-2-2-allemande.ly"
\pageBreak
\include "./parts/bach-partita-2-3-courante.ly"
\pageBreak
\include "./parts/bach-partita-2-4-sarabande.ly"
\pageBreak
\include "./parts/bach-partita-2-5-rondeau.ly"
\pageBreak
\include "./parts/bach-partita-2-6-capriccio.ly"
