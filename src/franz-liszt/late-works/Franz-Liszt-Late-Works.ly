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
  %last-bottom-spacing.padding = #2
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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #80 \bold "Liszt" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Late Works" }
        \null\null\null
        \line \abs-fontsize #20 { "S.197" \char ##x2013 "S.208" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano" }
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
          \abs-fontsize #10 "Based on the score published by Muzgiz, Moscow 1968"
        }
        \null\null
      }
    }
  }
}

\markup {
  \general-align #Y #DOWN {
    \epsfile #X #96 #"Franz-Liszt-by-Nadar-march-1886.eps"
  }
}
\markup {
  \fill-line {
    \center-column {
      \null
      \fill-line \abs-fontsize #10 {
        \italic "Franz Liszt - March 1886"
      }
    }
  }
}
\pageBreak

\include "./index.ly"
\pageBreak

\include "zweite-elegie-s.197/Franz-Liszt-Zweite-Elegie-S.197.ly"
\pageBreak
\include "wiegenlied-s.198/Franz-Liszt-Wiegenlied-S.198.ly"
\pageBreak
\include "nuages-gris-s.199/Franz-Liszt-Nuages-Gris-S.199.ly"
\pageBreak
\include "la-lugubre-gondola-s.200/Franz-Liszt-La-lugubre-gondola-S.200.ly"
\pageBreak
\include "richard-wagner-venezia-s.201/Franz-Liszt-Richard-Wagner-Venezia-S.201.ly"
\pageBreak
\include "am-grabe-richard-wagners-s.202/Franz-Liszt-Am-Grabe-Richard-Wagners-S.202.ly"
\pageBreak
\include "schlaflos-frage-und-antwort-s.203/Franz-Liszt-Schlaflos-Frage-und-Antwort-S.203.ly"
\pageBreak
\include "recueillement-s.204/Franz-Liszt-Recueillement-S.204.ly"
\pageBreak
% S.205
\include "trauervorspiel-und-trauermarsch-s.206/Franz-Liszt-Trauervorspiel-und-Trauermarsch-S.206.ly"
\pageBreak
\include "en-reve-nocturne-s.207/Franz-Liszt-En-reve-Nocturne-S.207.ly"
\pageBreak
\include "unstern-s.208/Franz-Liszt-Unstern-S.208.ly"
\pageBreak
