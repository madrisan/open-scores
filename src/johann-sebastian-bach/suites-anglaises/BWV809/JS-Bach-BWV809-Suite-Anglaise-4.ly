\version "2.23.14"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 10\mm
  first-page-number = 0
  indent = 0.0
  line-width = 18.6\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  ragged-bottom = ##f
%  last-bottom-spacing.padding = #2
  print-all-headers = ##t
  ragged-last-bottom = ##t
  score-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 1)
        (stretchablity . 12))
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
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #50 \bold "Suite Anglaises" }
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Suite Anglaise n. 4" }
        \null\null
        \line { \abs-fontsize #24 \bold "BWV 809" }
        \null\null\null
        \fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
        \null\null\null\null\null
      }
    }
  }

  \include "./logo.ly"

}

\include "./parts/bach-suite-anglaise-4-prelude.ly"
\include "./parts/bach-suite-anglaise-4-allemande.ly"
\include "./parts/bach-suite-anglaise-4-courante.ly"
\include "./parts/bach-suite-anglaise-4-sarabande.ly"
\include "./parts/bach-suite-anglaise-4-menuet-i.ly"
\include "./parts/bach-suite-anglaise-4-menuet-ii.ly"
\include "./parts/bach-suite-anglaise-4-gigue.ly"
