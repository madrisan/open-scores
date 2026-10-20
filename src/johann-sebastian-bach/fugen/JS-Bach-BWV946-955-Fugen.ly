\version "2.25.26"

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
        \null\null\null
        \line { \abs-fontsize #40 \bold "Fugen" }
        \null\null
        \line \abs-fontsize #20 { "BWV 946" \char ##x2013 "955" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
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
        \fill-line {
          \abs-fontsize #10 "Based on: Bach-Gesellschaft Ausgabe - Leipzig: Breitkopf und Härtel, 1890"
        }
        \null\null
      }
    }
  }
}

\include "./macros.ly"

\include "./index.ly"

\pageBreak
\include "./preface-en.ly"
\include "./preface-it.ly"
\include "./preface-fr.ly"

\pageBreak
\include "./BWV946/parts/bach-fuga-bwv946-c-dur.ly"

\pageBreak
\include "./BWV947/parts/bach-fuga-bwv947-a-moll.ly"

\pageBreak
\include "./BWV948/parts/bach-fuga-bwv948-d-moll.ly"

\pageBreak
\include "./BWV949/parts/bach-fuga-bwv949-a-dur.ly"

\pageBreak
\include "./BWV950/parts/bach-fuga-bwv950-a-dur.ly"

\pageBreak
\include "./BWV951/parts/bach-fuga-bwv951-h-moll.ly"

\pageBreak
\include "./BWV952/parts/bach-fuga-bwv952-c-dur.ly"

\pageBreak
\include "./BWV953/parts/bach-fuga-bwv953-c-dur.ly"

\pageBreak
\include "./BWV954/parts/bach-fuga-bwv954-b-dur.ly"

\pageBreak
\include "./BWV955/parts/bach-fuga-bwv955-b-dur.ly"

%\pageBreak
%\include "./BWV956/parts/bach-fuga-bwv956-e-moll.ly"
