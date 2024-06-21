Global = {
  \key g \minor
  \time 12/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | R1*12/8*19
  | r4. r4. r4
  }
  \break
  \repeat volta 2 {
  \partial 8 r8
  | R1*12/8*23
  | r4. r4. r4
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | R1*12/8*19
  | r4. r4. r4
  }
  \repeat volta 2 {
  \partial 8 r8
  | R1*12/8*23
  | r4. r4. r4
  }
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
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 808"
    title = \markup { "Gigue" }
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
