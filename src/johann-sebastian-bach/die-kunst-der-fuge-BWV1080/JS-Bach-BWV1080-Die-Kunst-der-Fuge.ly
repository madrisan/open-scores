\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\paper {
  bottom-margin = 12\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  tagline = ##f
  top-margin = 12\mm
% markup-system-spacing.basic-distance = #10
}

Subject = \relative {
  \time 4/4
  \key d \minor
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
  \once\override TextScript.extra-offset = #'(-4 . -1)
  d'2_\markup \italic \small { "common subject in « The Art of Fugue »" }
  a' | f d | cis d4 e | f2~ f8 g f e | d4
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
        \combine \null \vspace #6
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \combine \null \vspace #3
        \line { \abs-fontsize #34 \bold "Die Kunst der Fuga" }
        \combine \null \vspace #3
        \line { \abs-fontsize #20 "BWV 1080" }
        \combine \null \vspace #3
        \fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
        \combine \null \vspace #2
      }
    }
  }

  \markup
    \fill-line {
      \center-column {
        \score {
          <<
          \new Voice = "subject" \Subject
          >>
          \layout {
            indent = #0
            line-width = #150
            #(layout-set-staff-size 18)
          }
        }
        \combine \null \vspace #4
      }
    }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line { \abs-fontsize #10 "Based on a previous Mutopia work of Pierre-Luc Gauthier & Chris Sawer" }
        \null
      }
    }
  }
}

\include "./index.ly"
\pageBreak
\include "./list-of-subjects.ly"
\pageBreak

\include "./parts/01-contrapunctus-I.ly"
\pageBreak
\include "./parts/02-contrapunctus-II.ly"
\pageBreak
\include "./parts/03-contrapunctus-III.ly"
\pageBreak
\include "./parts/04-contrapunctus-IV.ly"
\pageBreak
\include "./parts/05-contrapunctus-V.ly"
\include "./parts/06-contrapunctus-VI.ly"
\pageBreak
\include "./parts/07-contrapunctus-VII.ly"
\pageBreak
\include "./parts/08-contrapunctus-VIII.ly"
\pageBreak
\include "./parts/09-contrapunctus-IX.ly"
\pageBreak
\include "./parts/10-contrapunctus-X.ly"
\pageBreak
\include "./parts/11-contrapunctus-XI.ly"
\pageBreak
\include "./parts/12-contrapunctus-XII-I.ly"
\pageBreak
\include "./parts/12-contrapunctus-XII-II.ly"
\pageBreak
\include "./parts/13-contrapunctus-XIII-I.ly"
\pageBreak
\include "./parts/13-contrapunctus-XIII-II.ly"
\include "./parts/14-contrapunctus-XIV.ly"
\pageBreak
\include "./brief-notes-on-the-completion-of-contrapunctus-xiv.ly"
\pageBreak
\include "./parts/15-canon-in-hypodiapason.ly"
\pageBreak
\include "./parts/16-canon-alla-decima.ly"
\include "./parts/17-canon-alla-duodecima.ly"
\pageBreak
\include "./parts/18-canon-in-hypodiatessaron.ly"
