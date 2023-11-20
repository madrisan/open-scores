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
  line-width = 19.2\cm
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
        \null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null
        \line { \abs-fontsize #40 \bold "Goldberg Variationen" }
        \null\null
        \line { \abs-fontsize #20 \bold "Aria mit verschiedenen Veraenderungen" }
        \null
        \line { \abs-fontsize #14 \italic "(Aria with diverse variations)" }
        \null\null\null
        \line { \abs-fontsize #24 \bold "BWV 988" }
        \null\null\null
        \fill-line { \abs-fontsize #20 "Clavicimbal mit 2 Manualen" }
        \null
        \line { \abs-fontsize #14 \italic "(for harpsichord with two manuals)" }
        \null\null\null\null
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

\markup \center-column {
  \null\null\null
  \line {
    \hspace #14
    \general-align #Y #DOWN {
      \epsfile #X #82 #"Johann-Sebastian-Bach-oil-canvas-Elias-Gottlieb-1746.eps"
    }
  }
  \null
  \line \italic {
    \hspace #12
    { \bold "Johann Sebastian Bach" } \char ##x2014 "oil canvas Elias Gottlob Haußmann (1746)"
  }
  \null
}

\markup \center-column \abs-fontsize #10 \italic {
  \line {
    \hspace #17
    "Haussmann's portrait of Bach depicts him holding the manuscript to BWV 1076,"
  }
  \line  {
    \hspace #17
    "which is also the thirteenth canon in the Goldberg Canon cycle:"
  }
  \null
}
\include "JS-Bach-BWV1087-13-canon-triplex-six.ly"
\pageBreak

\include "./parts/bach-goldberg-variationen-00-aria.ly"
\include "./parts/bach-goldberg-variationen-01-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-02-variatio.ly"
\include "./parts/bach-goldberg-variationen-03-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-04-variatio.ly"
\include "./parts/bach-goldberg-variationen-05-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-06-variatio.ly"
\include "./parts/bach-goldberg-variationen-07-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-08-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-09-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-10-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-11-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-12-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-13-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-14-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-15-variatio.ly"
\include "./parts/bach-goldberg-variationen-16-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-17-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-18-variatio.ly"
\include "./parts/bach-goldberg-variationen-19-variatio.ly"
\include "./parts/bach-goldberg-variationen-20-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-21-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-22-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-23-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-24-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-25-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-26-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-27-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-28-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-29-variatio.ly"
\pageBreak
\include "./parts/bach-goldberg-variationen-30-variatio.ly"
