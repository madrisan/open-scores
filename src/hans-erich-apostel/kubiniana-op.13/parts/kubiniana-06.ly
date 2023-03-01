Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo \markup { \bold "Tempo di Marcia" } 4 = 100
  \partial 2
    \slurDown
    b,!8[( c! fis eis])
  %1
  | cis!4-- cis-- e!8[(\mf f! b! ais])
  | fis!4-- fis f'\rest f!8.[(^>\prall\f e!16])
  | \stemNeutral\slurNeutral
    e!8.[(^>\prall d16]) d8.[(^>\prall\f cis!16]) cis!8[ f,!16 f_.] bes4^>(
  | <e,! a!>_.) r c!8[(\mf cis g'! fis])
  %5
  | \stemUp <bes, d!>4_. <cis'! e!>8[^. a'16\rest ais^. <cis,! b'!>8^.] r s4
  | <des, f!>4_. r r8 f!16_.\f[ f_.] b!4^>
    \bar "||"
  | s1
  | s1
  | s1
  %10
  | s1
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 2
    s2
  %1
  | s1
  | b8\rest <bes d!>_.[ b\rest <bes d>_.] c2\rest
  | s1*2
  %5
  | s4 <dis g! a!>8[_.\p e\rest <g a>_.] s4.

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 2
    s2
  %1
  | c8\rest <f,! a!>[ c'\rest <f,! a!>] a2\rest
  | s1*4
  %6
  | s4 <g! b! cis>8^.^\p[ b\rest q^.] s4.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 2
    r2
  %1
  | <g! b! dis>4 q_. \acciaccatura { b,!8 } \stemUp c!4_. c\rest
  | <aes' c! e!>4_. q \acciaccatura { cis,!8 } \stemUp d!4 r
  | \stemNeutral <g'! a!>_- q_- q8_. d\rest <ees ges>4
  | <des f! b!>4^. \acciaccatura { fis,!8 } \stemUp g!4 r2
  %5
  | <aes c! e!>4_. r
    \stemDown\slurUp
    \once\override Beam.positions = #'(0 . 1)
    dis'8[(\mf e!) \top bes'( a!)] \bottom
  | \stemDown <b,,! ees g!>4^. bes8[_. b16\rest a!_. ees8_.] r8 r4
  | s1
  | s1
  | s1
  %10
  | s1

  \fine
}

centerDynamics = {
  \partial 2
    s4-\markup { \hspace #-2 \dynamic p } s
  %1
  | s1
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Hans Erich Apostel"
    %opus = "Op. 13"
    title = \markup { "VI" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
