\version "2.25.28"

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
        \line { \abs-fontsize #30 \bold "Franco" }
        \null
        \line { \abs-fontsize #80 \bold "Margola" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Sei sonatine facili" }
        \null
        \line { \abs-fontsize #30 \bold "per pianoforte" }
        \null\null\null\null
        %\line { \abs-fontsize #20 "dC 108" }
        \null\null\null\null
        \null\null\null\null
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"
}

\include "./parts/margola-6-sonatine-facili-1-allegro.ly"
\pageBreak
%\include "./parts/margola-6-sonatine-facili-2-allegro-giocoso.ly"
%\include "./parts/margola-6-sonatine-facili-3-andante-piuttosto-lento.ly"
%\include "./parts/margola-6-sonatine-facili-4-allegro-giusto.ly"
%\include "./parts/margola-6-sonatine-facili-5-andantino.ly"
%\include "./parts/margola-6-sonatine-facili-7-allegro.ly"
