\version "2.25.29"

#(ly:set-option 'relative-includes #t)

\include "../covercolor.ly"

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

%\bookpart {
%  \header {
%    maintainer      = "Davide Madrisan"
%    maintainerEmail = "d.madrisan@proton.me"
%  }
%
%  \include "./header.ily"
%  \header {
%    title = ##f
%    composer = ##f
%  }
%
%  \markup {
%    \with-dimensions #'(0 . 0) #'(0 . 0)
%    \with-color \coverColor
%    \filled-box #'(-200 . 200) #'(-200 . 200) #0
%  }
%  \markup {
%    \fill-line {
%      \center-column {
%        \null\null\null\null
%        \null\null\null\null
%        \line { \abs-fontsize #30 \bold "Franz" }
%        \null
%        \line { \abs-fontsize #80 \bold "Liszt" }
%        \null
%        \fill-line { \draw-hline }
%        \null\null\null
%        \line { \abs-fontsize #40 \bold "Historische ungarische Bildnisse" }
%        \null\null
%        \line { \abs-fontsize #20 "S.205" }
%        \null\null\null\null
%        \fill-line \italic { \abs-fontsize #14 "For Piano" }
%        \null\null\null
%        \null\null\null
%      }
%    }
%  }
%
%  \include "./logo.ly"
%
%  \markup {
%    \fill-line {
%      \center-column {
%        \null\null\null\null
%        \fill-line {
%          \abs-fontsize #10 "Based on: Edito Musica Budapest, 1956"
%        }
%        \null\null
%      }
%    }
%  }
%}

\include "./parts/historische-ungarische-bildnisse-s.205-1-szechenyi-istvan.ly"
\pageBreak
\include "./parts/historische-ungarische-bildnisse-s.205-2-eotvos-jozsef.ly"
\pageBreak
%\include "./parts/historische-ungarische-bildnisse-s.205-3-vorosmarty-mihaly.ly"
%\pageBreak
%\include "./parts/historische-ungarische-bildnisse-s.205-4-teleki-laszlo.ly"
%\pageBreak
%\include "./parts/historische-ungarische-bildnisse-s.205-5-deak-ferenc.ly"
%\pageBreak
%\include "./parts/historische-ungarische-bildnisse-s.205-6-petofi-sandor.ly"
%\pageBreak
%\include "./parts/historische-ungarische-bildnisse-s.205-7-mosonyi-mihaly.ly"
