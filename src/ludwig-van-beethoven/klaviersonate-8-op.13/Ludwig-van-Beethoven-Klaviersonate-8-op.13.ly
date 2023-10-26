\version "2.24.1"

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
  line-width = 19.3\cm
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
        (stretchability . 20))
  top-margin = 5\mm
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
        \null\null\null
        \line { \abs-fontsize #30 \bold "Ludwig van" }
        \null
        \line { \abs-fontsize #75 \bold "Beethoven" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #33 \bold { "Klaviersonate Nr"".""8 c-moll" }
        \null\null
        \line { \abs-fontsize #33 \bold "Opus 13" }
        \null\null\null\null
        \line { \abs-fontsize #31 \italic "Grande Sonate Pathétique" }
        \null\null\null\null
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line \abs-fontsize #12 {
          \concat {
            "Based ons the score G. Schirmer, 1894 and Berners, 1908"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \minor
  \time 4/4
  \include "./global.ly"
}

\include "./parts/beethoven-klaviersonate-8-op.13-1.ly"
\pageBreak
\include "./parts/beethoven-klaviersonate-8-op.13-2.ly"
\pageBreak
\include "./parts/beethoven-klaviersonate-8-op.13-3.ly"
