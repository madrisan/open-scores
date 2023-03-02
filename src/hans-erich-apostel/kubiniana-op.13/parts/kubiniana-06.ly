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
  \override DynamicText.Y-offset = #-4
  %1
  \tempo \markup { \bold "Tempo di Marcia" } 4 = 100
  \partial 2
    \slurDown
    b,!8[( c! fis eis])
  %1
  | cis!4_- cis_- e!8[(\mf f! b! ais])
  | fis!4-- fis f'\rest f!8.[(^>\prall\f e!16])
  | \stemNeutral\slurNeutral
    e!8.[(^>\prall d16]) d8.[(^>\prall cis!16]) cis!8[ f,!16 f_.] bes4^>(
  | <e,! a!>_.) r c!8[(\mf cis g'! fis])
  %5
  | \stemUp <bes, d!>4_. <cis'! e!>8[^. a'16\rest ais^. <cis,! b'!>8^.] r s4
  | <des, f!>4_. r r8 f!16_.\f[ f_.] \stemDown b!4^>(\>
    \bar "||"
    \break
  | \stemNeutral\slurUp <des, c'>8_.[)\!\mf r q_. r q_.] r <d! des'>8._>[( ees'16]
  | <des, c'!>8_.[)\> r q_. r q_.]\! r <g'! a!>4^>(\mf
  | bes,8^.) r <c,! e! fis>_.[\pp g'\rest <c, e fis>_.] r r4
  %10
  | r4 <b'! d!>8^._\pp[ r16 gis'^. <b,! a'!>8^.] r
    \once\override Hairpin.Y-offset = #-3.5
    \afterGrace b'!4^>_\p\<\startTrillSpan { ais32[( b!\stopTrillSpan ] }
  | <des, c'!>8^.)[\!\mf r q r q] r <d! des'>8.[\f( ees'16]
  | <des, c'!>8^.) r gis,4^>( a!8^.) r <aes, bes d!>4_-_\p_(
  | <a! cis e!>8_.) r r4 \acciaccatura { e''!8 } <ges, f'!>8\pp r r4
    \bar "||"
    \break
  | \slurDown r2 b,!8[(\p c! fis eis)]
  %15
  | cis4_- cis_- e!8[(\mf f! b! ais])
  | fis4-- fis-- f'\rest f!8.[(^>\prall\f e!16])
  | \stemNeutral\slurNeutral
    e!8.[(^>\prall d16]) d8.[(^>\prall cis!16]) cis8[ f,!16 f_.] bes4^>(
  | \override DynamicText.Y-offset = #-6
    <e,! a!>_.) r e!8[(\mf f! b! bes]
  | <bes, fis'>4_.) r b!8[(\p c! fis! f!]
  %20
  | <f,! a! cis>4_.) r8 f'!16_.[_\pp f] bes4^. r
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
  | s1*6
  %12
  | s4
    \once\override DynamicText.X-offset = #-3
    des8.[(\mf ees16] c!8_.) s4.
  | s1*3
  %16
  | b8\rest <bes d!>_.[ b\rest q_.] b2\rest
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 2
    s2
  %1
  | c8\rest <f,! a!>^.[ c'\rest <f,! a!>^.] a2\rest
  | s1
  | e'8\rest f!^.[ e\rest e!^.] ees^. s d![( c!])
  | s1*2
  %6
  | s4 <g! b! cis>8^.^\p[ b\rest q^.] s4.
  | s1*5
  %12
  | s2. des,8.[( ees16]
  | c!8^.) s s2.
  | s1
  %15
  | a'8\rest <f! a!>8[ a\rest q] a2\rest
  | s1
  | e'8\rest f![ e\rest e!] ees^. s d![( c!])
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
  | <g'! b!>8^.[ r <ges bes>^. r <f! a!>^.] r <bes, e! gis>4^-
  | <g'! b!>8^.[ r <ges bes>^. r <f! a!>^.] r r4
  | r \stemUp g,8_.[ r16 cis_.] \stemNeutral d!8^. r <bes c!>4_>^\mf(
  %10
  | aes'8^.) r \clef treble <des f! g!>_.[ r q_.] \slurDown r <aes' bes d!>4^-(
  | <g b>8_.[) r <ges bes>_. r <f! a!>_.] r <bes, e! gis>4_-(
  | <f'! a!>8_.) r \clef bass <d,! e! bes'>4^>( <cis f! a!>8^.) r \stemDown e,!4_-(
  | f!8_.) r \stemUp\slurNeutral aes4_-~
    \tupletUp\tuplet 3/2 { aes8 bes_. e,!_. } \tuplet 3/2 { aes!8_. d,!_. ges!_. }
  | c,!4_. <c fis>_. \acciaccatura { b!8 } <c g'!>4_. r
  %15
  | \stemDown <g'! b! dis> q_. \stemUp \acciaccatura { b,!8 } c!4_. f\rest
  | <aes c! e!>_. q_. \acciaccatura { cis,!8 } d!4_. r
  | \stemDown <g'! a!>_- q_- q8 r <ees ges>4
  | <des f! b!>^. \stemUp \acciaccatura { fis,!8 } g!4_. r2
  | <aes c! e!>4 \acciaccatura { cis,!8 } d!4_. r2
  %20
  | \override Arpeggio.positions = #'(-3 . 0)
    <g! b! dis>4_.\arpeggio q_.\arpeggio \acciaccatura { b,!8 } c!4_. r
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
