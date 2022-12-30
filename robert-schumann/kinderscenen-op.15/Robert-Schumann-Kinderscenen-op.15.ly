\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\paper {
  bottom-margin = 11\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  tagline = ##f
  top-margin = 11\mm
% markup-system-spacing.basic-distance = #10
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
        \line { \abs-fontsize #30 \bold "Robert" }
        \null
        \line { \abs-fontsize #56 \bold "Schumann" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #34 \bold "Kinderscenen" }
        \null\null
        \line { \abs-fontsize #20 \bold "Op. 15" }
        \null\null\null
        \fill-line { \abs-fontsize #20 "Für Pianoforte zu zwei Händen" }

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
	\fill-line { \abs-fontsize #10 "Based on the score published by Breitkopf & Härtel - Leipzig, 1880" }
        \null
      }
    }
  }
}

\include "./parts/01-von-fremden-landern-und-menschen.ly"
\include "./parts/02-curiose-geschichte.ly"
\pageBreak
\include "./parts/03-hasche-mann.ly"
\pageBreak
\include "./parts/04-bittendes-kind.ly"
\pageBreak
\include "./parts/05-gluckes-genug.ly"
\include "./parts/06-wichtige-begebenheit.ly"
\include "./parts/07-traumerei.ly"
\pageBreak