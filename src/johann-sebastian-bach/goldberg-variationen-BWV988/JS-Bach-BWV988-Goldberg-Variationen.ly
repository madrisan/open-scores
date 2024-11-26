\version "2.23.80"

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
  line-width = 19.2\cm
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
  top-margin = 8\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

BassLine = \relative {
  \time 4/4
  \key g \major
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
  \once\override TextScript.extra-offset = #'(-4 . -1)
  \repeat volta 2 {
    \clef bass
    | g1 | fis | e | d | b | c | d | g, | g' | fis | e | a | fis | g | a | d,
  }
  \break
  \repeat volta 2 {
    | \once\override Staff.TextScript.extra-offset = #'(-6 . -2)
      d'_\markup \italic \small {
        "bass line of the « Aria » on which the thirty variations are based"
      }
    | b | c | b | g | a | b | e, | c | b | a | d | g, | c | d | g, |
  }
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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null
        \line { \abs-fontsize #38 \bold "Goldberg Variationen" }
        \null\null
        \line {
          \abs-fontsize #12 \bold\italic "Clavier Ubung bestehend in einer Aria mit verschiedenen"
        }
        \line { \abs-fontsize #12 \bold\italic "Verænderungen vors Clavicimbal mit 2 Manualen" }
        \line {
          \abs-fontsize #12 \bold\italic
          "Denen Liebhabern zur Gemüths-Ergetzung verfertiget von J.S. Bach"
        }
        \null
        \line {
          \abs-fontsize #12
          \italic "Keyboard exercise, consisting of an Aria with diverse variations"
        }
        \line { \abs-fontsize #12 \italic "for harpsichord with two manuals." }
        \line {
          \abs-fontsize #12 \italic
          "Composed for connoisseurs, for the refreshment of their spirits, by J.S. Bach"
        }
        \null\null\null
        \line { \abs-fontsize #28 \bold "BWV 988" }
        \null\null\null
      }
    }
  }

  \markup
    \fill-line {
      \center-column {
        \score {
          <<
          \new Voice = "subject" \BassLine
          >>
          \layout {
            indent = #0
            line-width = #150
            #(layout-set-staff-size 14)
          }
        }
        \combine \null \vspace #4
      }
    }

  \include "./logo.ly"

  \markup {
    \fill-line \abs-fontsize #10 {
      \center-column {
        \null\null
        \fill-line {
          "Based on a previous work of Martin Straeten, J.D. Erickson, and Hajo Dezelski"
        }
        \fill-line {
          "and on the Source gallica.bnf.fr / Bibliothèque nationale de France"
        }
        \null\null
      }
    }
  }
}
\pageBreak

\include "preface.ly"
\pageBreak

\markup \center-column {
  \vspace #1
  \line {
    \hspace #10
    \general-align #Y #DOWN {
      \image #X #90 #"last-page-jsbach-manuscript-bwv1087.png"
    }
  }
}
\markup {
  \fill-line {
    \center-column {
      \null\null
      \fill-line \abs-fontsize #10 \italic {
        \concat {
          "Last page of Bach's personal copy of the printed edition "
          "of the Goldberg Variations discovered in 1974"
        }
      }
      \fill-line \abs-fontsize #8 \italic {
        "(Source gallica.bnf.fr / Bibliothèque nationale de France)"
      }
    }
  }
}
\pageBreak

\include "./index.ly"
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
\pageBreak
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
