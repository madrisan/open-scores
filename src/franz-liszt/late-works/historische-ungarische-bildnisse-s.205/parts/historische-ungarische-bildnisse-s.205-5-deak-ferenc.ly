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
  | <bes bes'>2( <f f'>4^.) <g g'>^.
  | <aes aes'>4.( <g g'>8) <f f'>4^. <bes, bes'>^.
  | <bes' bes'>2( <ees, ees'>4^.) <f f'>^.
  | <g g'>4.( <f f'>8) <ees ees'>4^. <bes bes'>^.
  %65
  | <bes' bes'>2( <f f'>4^.) <g g'>^.
  | <aes aes'>4.( <g g'>8) <f f'>4^. <aes aes'>^.
  | <b b'>2( <f f'>4^.) <g g'>^.
  | <aes aes'>4.( <g g'>8) <f f'>4^. <gis gis'>^.
    \bar "||"
    \key b \minor
    \pageBreak
  %69
  << {
    s1
  }
  \new Staff \with {
    alignAboveContext = "upper"
    \omit Staff.TimeSignature
  } {
    \key b \minor
  | <b b'>2_\markup { 
      \normalsize "sempre" \dynamic ff 
    }
    <dis, dis'>4. <eis eis'>8
  | s1*12
  }
  >>
    \break
  | R1*39
    \bar "||"
    \key d \minor
    \break
  | R1*16
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
  | s1*68
  | s4 <dis fis b> q q
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
    \override Stem.length = #10
    s4 b b b
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
  | R1*51
    \bar "||"
    \key d \minor
  | R1*16
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
  | s1*7
}

forceBreaks = {
  % page 1
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 6 { s1\noBreak } s1\pageBreak  
 % page 2
  %[...]
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
