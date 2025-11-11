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
  | R1*32
    \bar "||"
    \key b \minor
  %69
  | R1*52
    \bar "||"
    \key d \minor
  | R1*16
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
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
  | R1*32
    \bar "||"
    \key b \minor
  %69
  | R1*52
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
}

forceBreaks = {
  % page 1
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
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
