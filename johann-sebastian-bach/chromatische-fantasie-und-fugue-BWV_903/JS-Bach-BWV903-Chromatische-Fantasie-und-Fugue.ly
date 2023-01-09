\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  indent = 0.0
  line-width = 18.6\cm
  top-margin = 10\mm
  bottom-margin = 10\mm
  ragged-last-bottom = ##f
%  ragged-bottom = ##f
  first-page-number = 0
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
  print-all-headers = ##t
  ragged-bottom = ##f
  annotate-spacing = ##f
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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #28 \bold "Chromatische Fantasie und Fuge" }
        \null\null
        \line { \abs-fontsize #20 "BWV 903" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "for Piano Solo" }
        \null\null
        \fill-line { \abs-fontsize #24 "Interpreted by Ferruccio Busoni" }
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
        \fill-line { \abs-fontsize #10 "Based on the N. Simrock - Elite Edition" }
        \null\null
      }
    }
  }
}

\include "./parts/bach-chromatische-fantasie-und-fugue-1-fantasia.ly"
\include "./parts/bach-chromatische-fantasie-und-fugue-2-fuga.ly"
