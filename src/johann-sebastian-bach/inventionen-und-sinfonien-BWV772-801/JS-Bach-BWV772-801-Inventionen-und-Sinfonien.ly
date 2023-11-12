\version "2.24.1"

#(ly:set-option 'relative-includes #t)

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
  line-width = 18.4\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
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
        \null\null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #40 \bold { "Inventionen" }
        \null
        \line \abs-fontsize #14 { "(Two-Part Inventions)" }
        \null\null
        \line \abs-fontsize #22 \bold { "BWV 772" \char ##x2012 "786" }
        \null
        \line \italic { \abs-fontsize #16 "und" }
        \null
        \line \abs-fontsize #40 \bold { "Sinfonien" }
        \null
        \line \abs-fontsize #14 { "(Three-Part Inventions)" }
        \null\null
        \line \abs-fontsize #22 \bold { "BWV 787" \char ##x2012 "801" }
        \null\null\null
        \line { \abs-fontsize #18 \italic "für Tasteninstrument" }
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null
        \fill-line \abs-fontsize #10 {
          "Based on a previous work of Allen Garvin and Olivier Vermersch,"
        }
        \fill-line \abs-fontsize #10 {
          "and on the manuscripts by Johann Sebastian and Wilhelm Friedemann Bach (1720-1723)"
        }
        \null\null
      }
    }
  }
}
\pageBreak

\include "./jsbach-clavier-buchlein-ornament-table.ly"
\pageBreak

\markup {
  \fill-line {
    \center-column {
      \null\null\null\null\null\null
      \line \abs-fontsize #42 \bold { "Inventionen" }
      \null\null
      \line \abs-fontsize #24 \bold { "BWV 772" \char ##x2012 "786" }
    }
  }
}
\pageBreak

\include "./parts/bach-invention-01.ly"
\pageBreak
\include "./parts/bach-invention-01a.ly"
\pageBreak
\include "./parts/bach-invention-02.ly"
\pageBreak
\include "./parts/bach-invention-03.ly"
\pageBreak
\include "./parts/bach-invention-04.ly"
\pageBreak
\include "./parts/bach-invention-05.ly"
\pageBreak
\include "./parts/bach-invention-06.ly"
\pageBreak
\include "./parts/bach-invention-07.ly"
\pageBreak
\include "./parts/bach-invention-08.ly"
\pageBreak
\include "./parts/bach-invention-09.ly"
\pageBreak
\include "./parts/bach-invention-10.ly"
\pageBreak
\include "./parts/bach-invention-11.ly"
\pageBreak
\include "./parts/bach-invention-12.ly"
\pageBreak
\include "./parts/bach-invention-13.ly"
\pageBreak
\include "./parts/bach-invention-14.ly"
\pageBreak
\include "./parts/bach-invention-15.ly"
\pageBreak

\markup {
  \fill-line {
    \center-column {
      \null\null\null\null\null\null
      \line \abs-fontsize #42 \bold { "Sinfonien" }
      \null\null
      \line \abs-fontsize #24 \bold { "BWV 787" \char ##x2012 "801" }
    }
  }
}
\pageBreak

\include "./parts/bach-sinfonia-01.ly"
\pageBreak
\include "./parts/bach-sinfonia-02.ly"
\pageBreak
\include "./parts/bach-sinfonia-03.ly"
\pageBreak
\include "./parts/bach-sinfonia-04.ly"
\pageBreak
\include "./parts/bach-sinfonia-05.ly"
\pageBreak
\include "./parts/bach-sinfonia-06.ly"
\pageBreak
\include "./parts/bach-sinfonia-07.ly"
\pageBreak
\include "./parts/bach-sinfonia-08.ly"
