\version "2.23.14"

#(ly:set-option 'relative-includes #t)

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
    \fill-line {
      \center-column {

        \null\null\null\null\null
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
	\null\null\null
        \line { \abs-fontsize #40 \bold "Suite Anglaise IV" }
        \null\null\null\null\null\null
        \line { \abs-fontsize #20 "BWV 809" }
        \null\null
        \fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
        \null\null\null
        \fill-line {
          \override #'(thickness . 5)
          \draw-squiggle-line #0.5 #'(10 . 0) ##t
        }
        \null\null\null\null\null\null\null
        \fill-line { \abs-fontsize #11 "Transcribed and Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line {
          \abs-fontsize #8 "Based on a Public Domain manuscript of Johann Christian Bach (ca.1760-89)"
        }
        \null
      }
    }
  }
}

\include "./parts/bach-suite-anglaise-4-prelude.ly"
\include "./parts/bach-suite-anglaise-4-allemande.ly"
\include "./parts/bach-suite-anglaise-4-courante.ly"
\include "./parts/bach-suite-anglaise-4-sarabande.ly"
\include "./parts/bach-suite-anglaise-4-menuet-i.ly"
\include "./parts/bach-suite-anglaise-4-menuet-ii.ly"
\include "./parts/bach-suite-anglaise-4-gigue.ly"
