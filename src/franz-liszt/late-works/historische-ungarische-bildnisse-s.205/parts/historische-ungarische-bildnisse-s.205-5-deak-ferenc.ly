Global = {
  \key d \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205v
  %1
  | \tempo "Bewegt" 2 = 96
    r2 a^^~\(
  | a d,\)
  | r a'^^~\( 
  | a d,\)
  %5
  | r2 a4_. r
  | bes_. r cis_. r
  | d_. r e_. r
  | f_. r r2

  | r2 bes^^~\(
  %10
  | bes d,\)
  | r bes'^^~\( 
  | bes d,\)
  | r2 bes4_. r
  | bes_. r cis_. r
  %15
  | d_. r e_. r
  | f_. r r2
  | r <bes d>~^^\(
  | q <d, bes'>\)
  | r <d' f>~^^\(
  %20
  | q <bes d>\)
  | r2 <f f'>4^. r
  | <gis gis'>^. r <a a'>^. r
  | <bes bes'>^. r <cis cis'>^. r
  | <d d'>^. r <e e'>^. r
  %25
  | <f f'>4^. r q2^^~\(
  | q <bes, bes'>\)
  | r2 <f' f'>2^^^~\(
  | q <a, a'>\)
    \break
  | <a' a'>2( <e e'>4^.) <f f'>^.
  %30
  | <e e'>2( <a, a'>4^.) <bes bes'>^.
  | <a a'>2( <e e'>4_.) <f f'>^.
  | <e e'>2( <a, a'>4_.) <bes bes'>_.
  | <a a'>2( <cis cis'>4_.) <e e'>_.
  | <a a'>^. r <e e'>_. r
  %35
  | <a a'>2.( <e e'>4_.)
  | <cis cis'>4_. r <e e'>_. r
  | <a a'>2( <cis cis'>4^.) <e e'>^.
  | <a a'>^. r <e e'>^. r
  | <a a'>2.( <e e'>4^.)
  %40
  | <cis cis'>^. r <e e'>^. r
  | <a a'>^. r <e e'>^. r
  | <a a'>^. r <e e'>^. <f f'>^.
  | <g g'>2.^>\( <f f'>4
  | <e e'>^.\) r r2
  %45
  \repeat unfold 2 {
  | <a a'>2( <e e'>4^.) <f f'>^.
  | <g g'>4.( <f f'>8 ) <e e'>4^. <cis cis'>^.
  | <d d'>4.^\( <cis cis'>8 <d d'>4. <bes bes'>8
  | <a a'>4. <cis cis'>8\) <d d'>4^. <f f'>^.
  }
  %53
  \repeat unfold 2 {
  | <a a'>2( <ees ees'>4^.) <f f'>^.
  | <g g'>4.( <f f'>8 ) <ees ees'>4^. <c c'>^.
  | <d d'>4.^\( <cis cis'>8 <d d'>4. <a a'>8
  | <bes bes'>4. <cis cis'>8\) <d d'>4^. <f f'>^.
  }
  %61
  | \ottava #1
    <bes bes'>2( <f f'>4^.) <g g'>^.
  | <aes aes'>4.( <g g'>8) <f f'>4^. <bes, bes'>_.
  | <bes' bes'>2( <ees, ees'>4_.) <f f'>^.
  | <g g'>4.( <f f'>8) <ees ees'>4_. <bes bes'>_.
  %65
  | <bes' bes'>2( <f f'>4^.) <g g'>^.
  | <aes aes'>4.( <g g'>8) <f f'>4^. <aes aes'>^.
  | <b b'>2( <f f'>4^.) <g g'>^.
  | <aes aes'>4.( <g g'>8) <f f'>4^. <gis gis'>^.
    \bar "||"
    \key b \minor
    \pageBreak
  %69
  | <b b'>2_\markup { 
      \normalsize "sempre" \dynamic ff 
    }
    <dis, dis'>4.\( <eis eis'>8
  | <fis fis'>4. <gis gis'>8\) <ais ais'>4^. <b b'>^.
  | <cis cis'>2 <g g'>4.\( <a a'>8
  | <ais ais'>4. <a a'>8\) <ais ais'>4^. <cis cis'>^.
  | <b b'>2 <dis, dis'>4.\( <eis eis'>8
  | <fis fis'>4. <gis gis'>8\) <ais ais'>4^. <b b'>^.
  %75
  | <cis cis'>2 <g g'>4.\( <a a'>8
  | <bes bes'>4. <a a'>8\) <bes bes'>4^. <cis cis'>^.
  | <d d'>2\( <a a'>4^.\) <b b'>^.
  | <cis cis'>4.\(^> <b b'>8\) <a a'>4^. <fis fis'>^.
  | <b b'>2\( <fis fis'>4^.\) <gis gis'>^.
  %80
  | <a a'>4.\(^> <gis gis'>8\) <fis fis'>4^. 
    \ottava #0
    <cis cis'>^.
  | <d d'>2\( <a a'>4^.\) <b b'>^.
    \break
  | <cis cis'>2\( <gis gis'>4^.\) <ais ais'>^.
  | <c c'>2\( <g g'>4^.\) <a a'>^.
  | <b b'>2\( <fis fis'>4^.\) <gis gis'>^.
  %85
  | <ais ais'>4. <gis gis'>8 <ais ais'>4. <cis cis'>8
  | <ais ais'>4. <cis cis'>8 <ais ais'>4. <cis cis'>8
  | <ais ais'>4. <gis gis'>8 <ais ais'>4. <cis cis'>8
  | <bes bes'>4. <cis cis'>8 <bes bes'>4. <cis cis'>8
  | <d d'>2( <a a'>4^.) <b b'>^.
  %90
  | <cis cis'>4.^>( <b b'>8) <a a'>4^. <fis fis'>^.
  | <b b'>2( <fis fis'>4^.) <gis gis'>^.
  | <a a'>4.^>( <gis gis'>8) <fis fis'>4^. <cis cis'>_.
  | <d d'>2( <a a'>4_.) <b b'>_.
  | <cis cis'>2( <gis gis'>4_.) <ais ais'>_.
  %95
  | <c c'>2( <g g'>4_.) <a a'>_.
  | <b b'>2( <fis fis'>4_.) <gis gis'>_.
  | <ais ais'>4. <gis gis'>8 <ais ais'>4. <cis cis'>8
  | <ais ais'>4. <cis cis'>8 <ais ais'>4. <cis cis'>8
  | <ais ais'>4. <gis gis'>8 <ais ais'>4. <cis cis'>8
  %100
  | <bes bes'>4. <cis cis'>8 <bes bes'>4. <cis cis'>8
  | <bes bes'>4.\( <cis cis'>8\) <g g'>4_. <bes bes'>_.
  | <cis cis'>_. <e e'>_. <g g'>_. <bes bes'>^.
  | <bes bes'>4.^>\( <cis cis'>8\) <g g'>4^. <b b'>^.
  | <cis cis'>^. <e e'>^. 
    \ottava #1
    <g g'>^. <bes bes'>^.
  %105
  | \override Beam.positions = #'(-2 . -1.5)
    \repeat unfold 3 {
      \repeat tremolo 8 { <bes d>16 bes' }
    }
    \ottava #0
  | \repeat tremolo 8 { <bes,, d>16 bes' }
  | \repeat tremolo 8 { <bes, fis'!>16 bes' }
  %110
  | \repeat unfold 3 {
      \repeat tremolo 8 { <bes, fis'>16 bes' }
    }
  | \repeat unfold 3 {
      \repeat tremolo 8 { <bes, d>16 bes' }
    }
  %116
  | \override Beam.positions = #'(2.5 . 3)
    \repeat tremolo 8 { <d,, bes'>16 d' }
  | \override Beam.positions = #'(1.5 . 2)
    \repeat tremolo 8 { <ais, fis'>16 ais' }
  | \override Beam.positions = #'(1.5 . 3)
    \repeat tremolo 8 { <cis, fis>16 cis' }
  | \override Beam.positions = #'(-2.5 . -1.5)
    \repeat tremolo 8 { <fis, ais>16 fis' }
  | \revert Beam.positions
    \repeat tremolo 4 { <ais, cis>16 ais' } \repeat tremolo 4 { <cis, fis>16 cis' }
    \bar "||"
    \key d \minor
    \break
  %121
  | <d, d'>2..^^\( <d, d'>8\)
  | q4_. r <f f'>^. r
  | <bes bes'>2..^^\( <bes, bes'>8\)
  | q4_. r <d d'>_. r
  %125
  | <f f'>2..^^\( <f, f'>8\)
  | q4_. r <bes bes'>_. r
  | <d d'>2..^^\( f8\)
  | f4_. r bes^. r
  \repeat unfold 2 {
  | d,_.^^ r <a f' a>_. r
  | d_. r <bes bes'>_. r
  }
  | d_. r r2
  | <a d f a>4_. r r2
  %135
  | <bes bes'>1~^^
  | q\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
  | s1*68
  << {
    s1*13
  }
  \new Staff \with {
    alignBelowContext = "upper"
    \omit Staff.TimeSignature
  } {
    \key b \minor
  | s4 <dis fis b> q q
  %70
  | q q q r
  | r <cis g' ais cis> q q
  | q q q r
  | r4 <dis fis b> q q
  | <dis fis b> q q r
  %75
  | r <cis g' bes cis> q q
  | q q q r
  | r <d fis a d> q q
  | r <cis fis a cis> q q
  | r <d fis b> q q
  %80
  | r <fis a> q q
  | r q q q
  }
  >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*44
  \repeat unfold 2 {
  | s4 <g a cis e>^. q^. <g a cis f>^.
  | <g a cis g'>^>\( <g a cis f>^. <g a cis e>^.\) r
  | s4 <f a d f>^. q^. q^.
  | <f a cis f>^>\( q^. <f a d f>^.\) r
  }
  %53
  \repeat unfold 2 {
  | s4 <f a c ees> q <f a c f>
  | <f a c g'>( <f a c f>) <f a c ees>^. r
  | s <f bes d f>^. q^. q^.
  | <f bes cis f> q <f bes d f> r
  }
  %61
  | s4 <aes bes f'> q <aes bes g'>
  | <aes bes aes'>^>( <aes bes g'>) <aes bes f'>^. r
  | s <g bes ees>^. q^. <g bes f'>^.
  | s <g bes g'>^>( <g bes f'>) <g bes ees>^.
  %65
  | s <aes bes f'> q <aes bes g'>
  | <aes bes aes'>^>( <aes bes g'>) <aes bes f'>^. r
  | s <aes b f'> q <aes b g'>
  | <aes b aes'>^>( <aes b g'>) <aes b f'>^. r
    \bar "||"
  %69
  | \override Stem.cross-staff = ##t
    \override Stem.length = #15
    s4 b b b
  | b b b s
  | s1*2
  | s4 b b b
  | b b b s
  | s1*4
  %79
  | s4 b b b
  | s <a cis> q q
  | s a a a
  | \revert Stem.length
    \revert Stem.cross-staff
    s <gis cis eis> q q
  | s <g c e> q q
  | s <fis b dis> q q
  %85
  | s <fis ais cis e> q q
  | s <g ais cis e> s q
  | s <fis ais cis e> q q
  | s <g bes cis e> s q
  | s <fis a d fis> q q
  %90
  | s <fis a cis fis> q <fis a cis>
  | s <d fis b d> q q
  | s <cis fis a cis> q <cis fis a>
  | s <fis, d' fis> q q
  | s <eis cis' eis> q q
  %95
  | s <e c' e> q q
  | s <dis b' dis> q q
  | s <fis cis' e> q q
  | s <g cis e> s q
  | s <fis cis' e> q q
  %100
  | s <g cis e> s q
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*2
  | r2 a~^^\(
  | a d,\)
  | r2 a4_. r
  %5
  | bes_. r cis_. r
  | d^. r e^. r
  | f^. r r2
  | R1*2
  %11
  | r2 bes~^^\(
  | bes d,\)
  | r2 bes4_. r
  | bes_. r cis_. r
  %15
  | d^. r e^. r
  | f^. r r2
  | R1*2
  | r2 <d' f>~^^\(
  %20
  | q <bes d>\)
  | r2 <f, f'>4_. r
  | <gis gis'>_. r <a a'>^. r
  | <bes bes'>^. r <cis cis'>^. r
  | <d d'>^. r <e e'>^. r
  %25
  | <f f'>4^. r q2^^~\(
  | q <bes, bes'>\)
  | r2 <f' f'>2^^^~\(
  | q <a, a'>\)
  | <a' a'>2( <e e'>4^.) <f f'>^.
  %30
  | <e e'>2( <a, a'>4^.) <bes bes'>^.
  | <a a'>2( <e e'>4_.) <f f'>^.
  | <e e'>2( <a, a'>4_.) <bes bes'>_.
  | <a a'>2( <cis cis'>4_.) <e e'>_.
  | <a a'>^. r <e e'>_. r
  %35
  | <a a'>2.( <e e'>4_.)
  | <cis cis'>4_. r <e e'>_. r
  | <a a'>2( <cis cis'>4^.) <e e'>^.
  | <a a'>^. r <e e'>^. r
  | <a a'>2.( <e e'>4^.)
  %40
  | <cis cis'>^. r <e e'>^. r
  | <a a'>^. r <e e'>^. r
  | <a a'>^. r <e e'>^. <f f'>
  | <g g'>2.^>\( <f f'>4^.
  | <e e'>^.\) r r2
  %45
  \repeat unfold 4 {
  | \stemDown <a,, a'>4 s2.
  | s1
  }
  %53
  \repeat unfold 4 {
  | <f f'>4 s2.
  | s1
  }
  %61
  | <d' d'>4 s2.
  | s1
  | <g, g'>4 s2.
  | s1
  %65
  | <d' d'>4 s2.
  | s1
  | <cis cis'>4 s2.
  | s1
    \bar "||"
    \key b \minor
  %69
  | <dis dis'>4 s2.
  | s1
  | <e e'>4 s2.
  | s1
  | <dis dis'>4 s2.
  | s1
  %75
  | <e e'>4 s2.
  | s1
  | <fis, fis'>4 s2.
  | <fis' fis'>4 s2.
  | q4 s2.
  %80
  | q4 s2.
  | q4 s2.
  | <eis eis'>4 s2.
  | <e e'>4 s2.
  | <dis dis'>4 s2.
  %85
  \repeat unfold 2 {
  | <fis fis'>4 s2.
  | <g g'>4 s q s
  }
  \repeat unfold 2 {
  | <fis fis'>4 s2.
  }
  %91
  \repeat unfold 3 {
  | <fis, fis'>4 s2.
  }
  | <eis eis'>4 s2.
  %95
  | <e e'>4 s2.
  | <dis dis'>4 s2.
  \repeat unfold 2 {  
  | <fis fis'>4 s2.
  | <g g'>4 s q s
  }
  %101
  | \stemNeutral
    <bes bes'>4.\( <cis cis'>8\) <g g'>4_. <bes bes'>_.
  | <cis cis'>_. <e e'>_. <g g'>_. <bes bes'>^.
  | <bes bes'>4.^>\( <cis cis'>8\) <g g'>4_. <b b'>^.
  | <cis cis'>^. <e e'>^. \clef "treble" <g g'>_. <bes bes'>_.
  %105
  | <d bes' d>2..^^\( <d, d'>8\)
  | q4_. r <f f'>_. r
  | <bes d bes'>2..^^\( \clef "bass" <bes, bes'>8\)
  | <bes bes'>4^. r <d d'>^. r
  | <fis! ais fis'!>2..^^\( <fis, fis'>8\)
  %110
  | <fis fis'>4_. r <ais ais'>^. r
  | <cis ais' cis>2..^^\( <cis, cis'>8\)
  | q4_. r <fis fis'>_. <ais ais'>^.
  | <d bes' d>2..^^\( <d, d'>8\)
  | <d d'>4_. r <f f'>_. r
  %115
  | <bes bes'>2..^^\( <bes, bes'>8\)
  | q4_. r <d d'>_. r
  | <fis cis' fis>2..^^\( <fis, fis'>8\)
  | q4_. r <ais ais'>_. r
  | <cis cis'>2..^^\( <fis fis'>8\)
  %120
  | <fis fis'>4_. r <ais ais'>^. r
    \bar "||"
    \key d \minor
  | <d d'>2..^^\( <d, d'>8\)
  | q4_. r <f f'>_. r
  | <bes bes'>2..^^\( <bes, bes'>8\)
  | q4_. r <d d'>_. r
  %125
  | <f f'>2..^^\( <f, f'>8\)
  | q4_. r <bes bes'>_. r
  | <d d'>2..^^\( <f f'>8\)
  | q4_. r <bes bes'>^. r
  \repeat unfold 2 {
  | <d, d'>4^^_. r <f f'>_. r
  | <d d'>4_. r <bes bes'>_. r
  }
  %133
  | <d d'>_. r r2
  | <f a d f>4_. r r2
  | <bes, bes'>1~^^
  | q1\fermata
    \fine
}

centerDynamics = {
  | s2 s\f
  | s1*4
  %6
  | s2 s\<
  | s1
  | s8 s\! s2.
  | s2 s\f
  | s1*4
  %14
  | s2 s\<
  | s1
  | s8 s\! s2.
  | s1*5
  %22
  | s2 s\<
  | s1
  | s4 s s\! s
  | s1*4
  | s4\ff s2.
  | s1*12
  %42
  | s4\< s2.
  | s4 s\! s2
  | s1
  | s4\ff s2.
  | s1*15
  %61
  | s4^\markup { "trionfante" } s2.
  | s1*22
  %84
  | s4^\markup { "marc." } s2.
  | s1*20
  %105
  | s4^\markup { \hspace #-1 "marcatissimo" } s2.
  | s1*13
  %119
  | s4 s s s8\< s
  | s1
  | s4\!\fff s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 9 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 9 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\pageBreak
 % page 2
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
 % page 3
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\pageBreak
 % page 4
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "V. Deák Ferenc" }
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
    \tempo 2 = 96
  }
}
