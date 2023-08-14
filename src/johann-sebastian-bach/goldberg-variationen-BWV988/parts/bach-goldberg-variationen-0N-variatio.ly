Global = {
  \key g \major
  \time 3/8
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \repeat volta 2 {
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \repeat volta 2 {
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \repeat volta 2 {
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \repeat volta 2 {
  | s8*3
  }
  \alternative {
    { s8*3 }
    { s8*3 }
  }
  \fine
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio N a M Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
