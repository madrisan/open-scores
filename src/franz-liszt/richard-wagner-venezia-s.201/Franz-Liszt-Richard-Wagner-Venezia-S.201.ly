\version "2.25.27"

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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #80 \bold "Liszt" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "R.W. Venezia" }
        \null\null\null
        \line { \abs-fontsize #24 "S.201" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano" }
        \null\null\null
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
          \abs-fontsize #10 "Based on the score published by Breitkopf & Härtel - Leipzig, 1927"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Lento assai" 4 = 48
  %1
  | r4 \clef "bass" cis,,\( f a
  | cis4. a8 f4 cis\)
  | r4 cis\( f a
  | cis\) r \stemUp a'2
  %5
  | bes2. f4
  | fis g gis a
  | bes2. f4
  | fis g gis a
  | <d, fis bes>1
  %10
  | q^>
  | r4 \stemNeutral
    \once\shape #'((0 . 3) (0 . -1) (0 . -1) (0 . 3)) PhrasingSlur
    cis,\( fis bes
  | d4. bes8 fis4 cis\)
  | r4 cis\( fis ais
  | d\) r \stemUp ais'2
  %15
  | b2. fis4
  | g gis a ais
  | b2. f4
  | g gis a ais
  | <dis, g b>1
  %20
  | q^>
  | r4 \stemNeutral
    \once\shape #'((0.5 . 2) (0 . -1) (0 . -1) (-0.5 . 2)) PhrasingSlur
    cis,\( g' b
  | dis4. b8 g4 cis,\)
  | r cis\( g' b
  | dis4\) <b dis g>2 <c! e gis>4
  %25
  | r4 <cis f a>2 <d fis ais>4

  | R1*24
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*3
  | s2 <cis f>
  %5
  | <cis f>2. cis4
  | fis f <cis f> q
  | q2. cis4
  | fis f <cis f> q
  | s1*5
  %14
  | s2 <d fis>
  | q2. d4

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \ottava #-1
    r4 cis,,\( fis a
  | cis4. a8 f4 cis\)
  | r4 cis\( fis a
  | cis4. <a a'>8 <fis fis'>4 <cis cis'>\)
  %5
  | r4 <cis cis'>\( <f f'> <bes bes'>
  | <cis cis'>4. <bes bes'>8 <f f'>4 <cis cis'>\)
  | r4 <cis cis'>\( <f f'> <bes bes'>
  | <cis cis'>4. <bes bes'>8 <f f'>4 <cis cis'>\)
  | r4 <cis cis'>\( <f f'> <bes bes'>
  %10
  | d4.^> <bes bes'>8 <fis fis'>4 <cis cis'>\)
  | r4
    \once\shape #'((0 . 3) (0 . -1) (0 . -1) (0 . 3)) PhrasingSlur
    cis\( fis bes
  | d4. bes8 fis4 cis\)
  | r4
    \once\shape #'((0.5 . -2) (0 . 0) (0 . 0) (-0.5 . -1)) PhrasingSlur
    cis\( fis ais
  | d4. <ais ais'>8 <fis fis'>4 <cis cis'>\)
  %15
  | r
    \once\shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) PhrasingSlur
    <cis cis'>\( <fis fis'> <b b'>
  | <d d'>4. <b b'>8 <fis fis'>4 <cis cis'>\)
  | r
    \once\shape #'((0.5 . -1) (0 . 0) (0 . 0) (-0.5 . -1)) PhrasingSlur
    <cis cis'>\( <fis fis'> <b b'>
  | <d d'>4. <b b'>8 <fis fis'>4 <cis cis'>\)
  | r
    \once\shape #'((0.5 . -1) (0 . 0) (0 . 0) (-0.5 . -1)) PhrasingSlur
    \once\phrasingSlurDashed
    <cis cis'>\( <g' g'> <b b'>
  %20
  | dis4.^> <b b'>8 <g g'>4 <cis, cis'>\)
  | r
    \once\shape #'((0.5 . 2) (0 . -1) (0 . -1) (-0.5 . 2)) PhrasingSlur
    cis\( g' b
  | dis4. b8 g4 cis,\)
  | r cis\( g' b
  | dis4\)
    \ottava #0
    <b dis! g>2 <c! e gis>4
  %25
  | r4 <cis f a>2 <d fis ais>4

  | R1*24
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Franz Liszt"
    opus = ##f % "S.201"
    title = \markup { "" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
