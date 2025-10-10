\version "2.25.27"

#(ly:set-option 'relative-includes #t)

\include "../covercolor.ly"

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

  \include "../logo.ly"

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

ritenuto = {
  \override TextSpanner.bound-details.left.text = \markup { \small "riten " }
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Lento assai" 4 = 48
  \label #'S201
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
  | r <dis g b> <e gis c> <f a cis>
  | r <fis bes d> <g b dis> <gis c e>
    \clef "treble"
  | \ritenuto
    <a cis f>\startTextSpan <b dis gis> <cis f a> <dis gis b>
  | <f a cis> <gis b dis> <a cis f> <b dis gis>
  %30
  | r2 <cis f a>2\stopTextSpan
    \bar "||"
    \key bes \major
  | <d g bes>2. \tupletNeutral \tuplet 3/2 { <bes d f bes>8 q q }
  | q2. \tuplet 3/2 { <bes, d f bes>8 q q }
  | q8 r \tuplet 3/2 { <bes' d f bes>8 q q } q8 r \tuplet 3/2 { q q q }
  | q r r4 <bes des f bes>8 r r4
  %35
  | <des f aes des>2. \tuplet 3/2 { q8 q q }
  | q2. \tuplet 3/2 { <des, f aes des>8 q q }
  | q8 r \tuplet 3/2 { <des' f aes des>8 q q } q r \tuplet 3/2 { q q q }
  | <des f aes des>8 r r4 <des e aes des>8 r r4
    \bar "||"
    \key c \major
  | <e gis b e>2. \tuplet 3/2 { q8 q q }
  %40
  | <e gis b e>2. \tuplet 3/2 { <e, gis b e>8 q q }
  | q r \tuplet 3/2 { <e' gis b e>8 q q } q8 r \tuplet 3/2 { <e gis b e> q q }
  | q r r4 <e a cis e>8 r r4
  | r
    \override TieColumn.tie-configuration =
    #'((11.0 . 1) (8.5 . 1) (6.4 . -1) (3.5 . -1))
    \once\shape #'((-0.5 . -0.5) (0 . 1.2) (0 . 1.5) (-0.5 . -8.5)) PhrasingSlur
    <f a cis f>2.~\(
  | \revert TieColumn.tie-configuration
    q4 cis' bes a
  %45
  | f cis bes a
  | f cis2
    \change Staff = "lower" \voiceThree
    bes4~
  | bes a2 f4
  | cis\) r r2
  | cis4 r r2
    \change Staff = "upper"
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
  | s1*27
  %43
  %| s4 \tieDown <f'' a>2.~
  %| q4

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \ottava #-1
    r4 cis,,\(_\markup {
      "con " \hspace #-0.5 \musicglyph #"pedal.Ped"
    }
    fis a
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
  | r <dis g b> <e gis c> <f a cis>
  | r <fis bes d> <g b dis> <gis c e>
  | <a cis f> <b dis gis> <cis f a> <dis gis b>
  | <f a cis> <gis b dis>
    \clef "treble"
    <a cis f> <b dis gis>
  %30
  | r2 <cis f a>2
    \bar "||"
    \key bes \major
  | <d f bes>8 r
    \clef "bass"
    \tupletNeutral\tuplet 3/2 { <d,, d'> q q } <f f'>4 \tuplet 3/2 { <bes bes'>8 q q }
  | <d d'>4 \tuplet 3/2 { <bes bes'>8 q q } <f f'>4 \tuplet 3/2 { <d d'>8 q q }
  | q r  \tuplet 3/2 { <f f'>8 q q } <bes bes'>8 r \tuplet 3/2 { <d bes' d>8 q q }
  | <f d' f>8 r r4 <f bes des f>8 r r4
  %35
  | <f aes des f>8 r \tuplet 3/2 { <f, f'>8 q q } <aes aes'>4 \tuplet 3/2 { <des des'>8 q q }
  | <f f'>4 \tuplet 3/2 { <des des'>8 q q } <aes aes'>4 \tuplet 3/2 { <f f'>8 q q }
  | q r \tuplet 3/2 { <aes aes'> q q } <des des'> r \tuplet 3/2 { <f des' f> q q }
  | <aes f' aes>8 r r4 <aes des e aes>8 r r4
  | <gis b e gis>8 r \tuplet 3/2 { <gis, gis'> q q } <b b'!> r \tuplet 3/2 { <e e'!> q q }
  %40
  | <gis gis'>4 \tuplet 3/2 { <e e'>8 q q } <b b'>4 \tuplet 3/2 { <gis gis'>8 q q }
  | q8 r \tuplet 3/2 { <b b'>8 q q } <e e'>8 r
    \clef "treble"
    \tuplet 3/2 { <gis e' gis>8 q q }
  | <b gis' b> r r4 <cis e a cis>8 r r4
  | r4
    \override TieColumn.tie-configuration =
    #'((2.2 . 1) (-0.8 . 1) (-3.4 . -1) (-6.5 . -1))
    <cis f a cis>2.~_\markup {
      \musicglyph #"pedal.Ped"
    }
  | q4 cis' bes a
    \revert TieColumn.tie-configuration
  %45
  | f cis
    \clef "bass"
    bes a
  | f cis2 \stemDown\tieDown bes4~
  | bes a2 f4
  | cis4 s2.
  | cis4 s2.
    \fine
}

centerDynamics = {
  %1
  | s4 s\p s2
  | s1*22
  %24
  | s4 s-\markup { "cresc." } s2
  | s1*6
  %31
  | s4\f s2.
  | s1*11
  %43
  | s4 s\ff s2
  | s1\dim
  | s1*2
  | s2 s4 s8\! s
  | s4\p s2.
  | s4\pp s2.
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
      \new Dynamics = "dynamics" {
        % Will use self-alignment-Y to place element
        \override TextScript.Y-offset = #self-alignment-interface::y-aligned-on-self
        % Use negative value of direction,
        % i.e. CENTER -> align to center, UP -> align to bottom, DOWN -> align to top
        \override TextScript.self-alignment-Y = #(lambda (grob) (- (ly:grob-property grob 'direction)))
        % use CENTER as default direction instead of DOWN
        \override TextScript.direction = #CENTER
        \centerDynamics
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Franz Liszt"
    opus = ##f % "S.201"
    title = \markup { "R. W. – VENEZIA" }
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
    \tempo 4 = 48
  }
}
