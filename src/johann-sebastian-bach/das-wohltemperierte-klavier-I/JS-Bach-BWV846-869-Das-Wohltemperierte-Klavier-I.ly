\version "2.25.12"

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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null
        \line { \abs-fontsize #34 \bold "Das Wohltemperirte Clavier" }
        \null\null
        \line { \abs-fontsize #34 \bold "Teil I" }
        \null\null
        \line { \abs-fontsize #20 \italic "(The Well-Tempered Clavier – volume I)" }
        \null\null
        \line { \abs-fontsize #22 "BWV 846 – BWV 869" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano, Harpsichord, Clavichord" }
        \null\null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on J.S. Bach's manuscript and Carl Czerny - Leipzig Berline: C.F. Peters"
        }
        \null\null
      }
    }
  }
}
\pageBreak
\include "manuscript-cover.ly"

\include "macros.ly"

\include "./index.ly"
\pageBreak

\include "./BWV846/das-wohltemperierte-klavier-I-01-1-praeludium.ly"
\pageBreak
\include "./BWV846/das-wohltemperierte-klavier-I-01-2-fuga.ly"
\pageBreak

\include "./BWV847/das-wohltemperierte-klavier-I-02-1-praeludium.ly"
\pageBreak
\include "./BWV847/das-wohltemperierte-klavier-I-02-2-fuga.ly"
\pageBreak

\include "./BWV848/das-wohltemperierte-klavier-I-03-1-praeludium.ly"
\pageBreak
\include "./BWV848/das-wohltemperierte-klavier-I-03-2-fuga.ly"
\pageBreak

\include "./BWV849/das-wohltemperierte-klavier-I-04-1-praeludium.ly"
\pageBreak
\include "./BWV849/das-wohltemperierte-klavier-I-04-2-fuga.ly"
\pageBreak

\include "./BWV850/das-wohltemperierte-klavier-I-05-1-praeludium.ly"
\pageBreak
\include "./BWV850/das-wohltemperierte-klavier-I-05-2-fuga.ly"
\pageBreak

\include "./BWV851/das-wohltemperierte-klavier-I-06-1-praeludium.ly"
\pageBreak
\include "./BWV851/das-wohltemperierte-klavier-I-06-2-fuga.ly"
\pageBreak

\include "./BWV852/das-wohltemperierte-klavier-I-07-1-praeludium.ly"
\pageBreak
\include "./BWV852/das-wohltemperierte-klavier-I-07-2-fuga.ly"
\pageBreak

\include "./BWV853/das-wohltemperierte-klavier-I-08-1-praeludium.ly"
\pageBreak
\include "./BWV853/das-wohltemperierte-klavier-I-08-2-fuga.ly"
\pageBreak
\include "./BWV853/das-wohltemperierte-klavier-I-08-2-fuga-original-tonality.ly"
\pageBreak

\include "./BWV854/das-wohltemperierte-klavier-I-09-1-praeludium.ly"
\pageBreak
\include "./BWV854/das-wohltemperierte-klavier-I-09-2-fuga.ly"
\pageBreak

\include "./BWV855/das-wohltemperierte-klavier-I-10-1-praeludium.ly"
\pageBreak
\include "./BWV855/das-wohltemperierte-klavier-I-10-2-fuga.ly"
\pageBreak

\include "./BWV856/das-wohltemperierte-klavier-I-11-1-praeludium.ly"
\pageBreak
\include "./BWV856/das-wohltemperierte-klavier-I-11-2-fuga.ly"
\pageBreak

\include "./BWV857/das-wohltemperierte-klavier-I-12-1-praeludium.ly"
\pageBreak
\include "./BWV857/das-wohltemperierte-klavier-I-12-2-fuga.ly"
\pageBreak

\include "./BWV858/das-wohltemperierte-klavier-I-13-1-praeludium.ly"
\pageBreak
\include "./BWV858/das-wohltemperierte-klavier-I-13-2-fuga.ly"
\pageBreak

\include "./BWV859/das-wohltemperierte-klavier-I-14-1-praeludium.ly"
\pageBreak
\include "./BWV859/das-wohltemperierte-klavier-I-14-2-fuga.ly"
\pageBreak

\include "./BWV860/das-wohltemperierte-klavier-I-15-1-praeludium.ly"
\pageBreak
\include "./BWV860/das-wohltemperierte-klavier-I-15-2-fuga.ly"
\pageBreak

\include "./BWV861/das-wohltemperierte-klavier-I-16-1-praeludium.ly"
\pageBreak
\include "./BWV861/das-wohltemperierte-klavier-I-16-2-fuga.ly"
\pageBreak

\include "./manuscript-music.ly"
