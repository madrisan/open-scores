Global = {
  \key a \major
  \time 3/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritardando " } }
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \partial 4
    \stemDown <cis e a>4 (
  %1
  | <b e gis>8. ) <a dis fis>16 <gis cis e>4^^ <a cis fis>-^
  | <fis b dis>4-^ <gis b e>-^ \stemUp <b d>4 (
  | <e, a cis>8. ) <d gis b>16 <cis fis a>4-^ <d fis b>-^
  | <b e gis>4-^ <cis e a>-^ <cis e a> (
  %5
  | <b e gis>8. ) <a dis fis>16 <gis cis e>4-^ <a cis fis>-^
  | \bottom\stemUp <fis b dis>4-^^\> <gis b e>4-^ \stemUp <b d> (
  | <e, a cis>8. ) <d gis b>16 <cis fis a>4-^ <d fis b>-^\!
  | <b e gis>4-^ <cis e a>-^
  \repeat volta 2 {
    \partial 4
    \top\stemDown
    <a' cis e a>4
  %10
  | <a d fis a>2 <a d fis a>4
  | <d e g b>2-^ <d e g b>4
  | <g, a cis e>4-^ <g a cis e>-^ <g a cis e>-^
  | \dynamicUp <c d a'>2.\sf
  | <g c d>4-^ <g c d>4-^ <g c d>4-^
  %15
  | <g b d>-^ <g d' g>-^ <a d fis>-^
  | <b d e>8.-^ <b d fis>16 <b d g>4-^ <g a cis! e>-^
  | <fis a d>-^ r4
  }
  \partial 4
    \stemDown <cis'' e a>4 (
  | <b e gis!>8. ) <a dis fis>16 <gis cis e>4^^ <a cis fis>-^
  %20
  | <fis b dis>4-^ <gis b e>-^ \stemUp <b d>4 (
  | <e, a cis>8. ) <d gis b>16 <cis fis a>4-^ <d fis b>-^
  | <b e gis>4-^ <cis e a>-^ <cis e a> (
  | <b e gis>8. ) <a dis fis>16 <gis cis e>4-^ <a cis fis>-^
  | \bottom\stemUp <fis b dis>4-^^\> <gis b e>4-^ \stemUp <b d> (
  %25
  | <e, a cis>8. ) <d gis b>16 <cis fis a>4-^ <d fis b>-^\!
  | <b e gis>4-^ <cis e a>-^
    \top
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \partial 4
    s4
  %1
  | s2.
  | s2 fis8[ e]
  | s2.*3
  | s2
    \once\override Beam.positions = #'(3.5 . 3.0)
    \once\override NoteColumn.force-hshift = #0.5
    \bottom\stemUp fis,8[ e]
  | s2.*11
  | \top\stemDown s2 fis'8[ e]
  | s2.*3
  | s2
    \bottom\stemUp
    \once\override Beam.positions = #'(3.5 . 3.0)
    \once\override NoteColumn.force-hshift = #0.5
    fis,8[ e]
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \partial 4
    <a a'>8 <cis cis'>
  %1
  | <e e'>8. <bis bis'>16 <cis cis'>4^^ <a a'>^^
  | <b b'>^^ \stemUp <e, e'>-^ <fis fis'>8 <gis gis'>
  | <a a'>8. <eis eis'>16 <fis fis'>4-^ <d d'>-^
  | <e e'>-^ <a, a'>-^ <a a'>8 <cis cis'>
  %5
  | <e e'>8. <bis bis'>16 <cis cis'>4-^ <a a'>-^
  | \stemDown <b b'>-^ <e, e'>-^ <fis fis'>8 <gis gis'>8
  | <a a'>8. <eis eis'>16 <fis fis'>4-^ <d d'>-^
  | <e e'>4-^ <a e'>-^
  \repeat volta 2 {
    \partial 4
    \stemUp <a a'>8 cis'
  %10
  | <d, d'>8^> [ <a a'> <g g'> <fis fis'> ] <fis fis'>4
  | <d' d'>8^> [ <b b'> <a a'> <g g'> ] <g g'>4
  | <a a'>8^>  [ <e e'> <d d'> <cis cis'> ] <cis cis'>4
  | <d' d'>8^> [ <a a'> <g g'> <fis fis'> ] <fis fis'>4
  | <g g'>8^\< [ <a a'> <b b'> <c c'> <d d'> <e e'>\! ]
  %15
  | <d d'>4 <b b'>^^ <a a'>^^
  | <g g'>8.^^ <fis fis'>16 <e e'>4^^ <a a'>^^
  | <d d'>4^^ r4
  }
  \partial 4
    \stemDown <a' a'>8 <cis cis'>
  | <e e'>8. <bis bis'>16 <cis cis'>4^^ <a a'>^^
  %20
  | <b b'>^^ \stemUp <e, e'>-^ <fis fis'>8 <gis gis'>
  | <a a'>8. <eis eis'>16 <fis fis'>4^^ <d d'>^^
  | <e e'>-^ <a, a'>-^ <a a'>8 <cis cis'>
  | <e e'>8. <bis bis'>16 <cis cis'>4-^ <a a'>-^
  | \stemDown <b b'>-^ <e, e'>-^ <fis fis'>8 <gis gis'>8
  %25
  | <a a'>8. <eis eis'>16 <fis fis'>4-^ <d d'>-^
  | <e e'>4-^ <a e'>-^
  \fine
}

centerDynamics = {
  \partial 4
    s8-\markup { \hspace #-1 \dynamic f } s8
  %1
  | s2.*3
  | s4 s4 s4\mf
  | s2.*3
  | s4 s4 s4\ff
  | s2.*7
  | s4 s4 s4\f
  | s2.*3
  | s4 s4 s4\mf
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
      \Bass
    >>
  >>
  \header {
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "6. Wichtige Begebenheit" }
    subtitle = \markup {
             \column {
               \line { "(An Important Event)" }
               % workaround to insert some vertical space after the subtitle
               \line { " " }
             }
           }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {}
}
