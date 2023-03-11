\version "2.23.80"
\language "nederlands"

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
  line-width = 17.4\cm
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
        \line { \abs-fontsize #30 \bold "Hans-Eric" }
        \null
        \line { \abs-fontsize #80 \bold "Apostel" }
        \null\null
        \fill-line { \draw-hline }
        \null\null
        \line { \abs-fontsize #48 \bold "Kubiniana" }
        \null\null
        \line { \abs-fontsize #34 \bold "op. 13" }
        \null\null\null\null
        \line { \abs-fontsize #18 \italic "10 Klavierstücke" }
        \null
        \line { \abs-fontsize #18 \italic "nach Zeichnungen von A.Kubin" }
        \null\null
        \line { \abs-fontsize #18 "II, III, VI, VII, IX" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

}

\include "./parts/kubiniana-02.ly"
\pageBreak
\include "./parts/kubiniana-03.ly"
\pageBreak
\include "./parts/kubiniana-06.ly"
\include "./parts/kubiniana-07.ly"
\pageBreak
\include "./parts/kubiniana-09.ly"