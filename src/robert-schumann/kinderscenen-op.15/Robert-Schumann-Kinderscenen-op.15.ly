\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

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
\pageBreak
\include "./parts/02-curiose-geschichte.ly"
\pageBreak
\include "./parts/03-hasche-mann.ly"
\include "./parts/04-bittendes-kind.ly"
\pageBreak
\include "./parts/05-gluckes-genug.ly"
\pageBreak
\include "./parts/06-wichtige-begebenheit.ly"
\pageBreak
\include "./parts/07-traumerei.ly"
\pageBreak
\include "./parts/08-am-camin.ly"
\pageBreak
\include "./parts/09-ritter-vom-steckenpferd.ly"
\pageBreak
\include "./parts/10-fast-zu-ernst.ly"
\include "./parts/11-furchtenmachen.ly"
\include "./parts/12-kind-im-einschlummern.ly"
\include "./parts/13-der-dichter-spricht.ly"
