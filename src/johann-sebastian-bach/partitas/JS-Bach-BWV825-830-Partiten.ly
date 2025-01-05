\version "2.25.16"

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
  %last-bottom-spacing.padding = #2
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
     #'((basic-distance . 1)
        (minimum-distance . 1)
        (padding . 1)
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
        \line { \abs-fontsize #40 \bold "Partiten" }
        \null\null\null
        \line \abs-fontsize #20 { "BWV 825" \char ##x2013 "830" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano, Harpsichord, Clavichord" }
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
          \abs-fontsize #10 "Based on the score published by Muzgiz, Moscow 1968"
        }
        \null\null
      }
    }
  }
}

\include "./index.ly"
\pageBreak

%%% Partita I

\include "./BWV825/parts/bach-partita-1-1-praeludium.ly"
\pageBreak
\include "./BWV825/parts/bach-partita-1-2-allemande.ly"
\pageBreak
\include "./BWV825/parts/bach-partita-1-3-corrente.ly"
\pageBreak
\include "./BWV825/parts/bach-partita-1-4-sarabande.ly"
\pageBreak
\include "./BWV825/parts/bach-partita-1-5-menuet-1.ly"
%\pageBreak
\include "./BWV825/parts/bach-partita-1-5-menuet-2.ly"
\pageBreak
\include "./BWV825/parts/bach-partita-1-6-giga.ly"
\pageBreak

%%% Partita II

\include "./BWV826/parts/bach-partita-2-1-sinfonia.ly"
\pageBreak
\include "./BWV826/parts/bach-partita-2-2-allemande.ly"
\pageBreak
\include "./BWV826/parts/bach-partita-2-3-courante.ly"
\pageBreak
\include "./BWV826/parts/bach-partita-2-4-sarabande.ly"
\pageBreak
\include "./BWV826/parts/bach-partita-2-5-rondeau.ly"
\pageBreak
\include "./BWV826/parts/bach-partita-2-6-capriccio.ly"
\pageBreak

%%% Partita III

\include "./BWV827/parts/bach-partita-3-1-fantasia.ly"
\pageBreak
\include "./BWV827/parts/bach-partita-3-2-allemande.ly"
\pageBreak
\include "./BWV827/parts/bach-partita-3-3-corrente.ly"
\pageBreak
\include "./BWV827/parts/bach-partita-3-4-sarabande.ly"
\pageBreak
\include "./BWV827/parts/bach-partita-3-5-burlesca.ly"
\pageBreak
\include "./BWV827/parts/bach-partita-3-6-scherzo.ly"
\pageBreak
\include "./BWV827/parts/bach-partita-3-7-gigue.ly"
\pageBreak

%%% Partita IV

\include "./BWV828/parts/bach-partita-4-1-ouverture.ly"
\pageBreak
\include "./BWV828/parts/bach-partita-4-2-allemande.ly"
\pageBreak
\include "./BWV828/parts/bach-partita-4-3-courante.ly"
\pageBreak
\include "./BWV828/parts/bach-partita-4-4-aria.ly"
\pageBreak
\include "./BWV828/parts/bach-partita-4-5-sarabande.ly"
\pageBreak
\include "./BWV828/parts/bach-partita-4-6-menuet.ly"
\pageBreak
\include "./BWV828/parts/bach-partita-4-7-gigue.ly"
\pageBreak

%%% Partita V

\include "./BWV829/parts/bach-partita-5-1-praeludium.ly"
\pageBreak
\include "./BWV829/parts/bach-partita-5-2-allemande.ly"
\pageBreak
\include "./BWV829/parts/bach-partita-5-3-corrente.ly"
\pageBreak
\include "./BWV829/parts/bach-partita-5-4-sarabande.ly"
\pageBreak
\include "./BWV829/parts/bach-partita-5-5-minuetto.ly"
\pageBreak
\include "./BWV829/parts/bach-partita-5-6-passepied.ly"
\pageBreak
\include "./BWV829/parts/bach-partita-5-7-gigue.ly"
\pageBreak

%%% Partita VI

\include "./BWV830/parts/bach-partita-6-1-toccata.ly"
\pageBreak
\include "./BWV830/parts/bach-partita-6-2-allemanda.ly"
\pageBreak
\include "./BWV830/parts/bach-partita-6-3-corrente.ly"
\pageBreak
\include "./BWV830/parts/bach-partita-6-4-air.ly"
\pageBreak
\include "./BWV830/parts/bach-partita-6-5-sarabande.ly"
\pageBreak
\include "./BWV830/parts/bach-partita-6-6-gavotta.ly"
\pageBreak
\include "./BWV830/parts/bach-partita-6-7-gigue.ly"
\pageBreak
