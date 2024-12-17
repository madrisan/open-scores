Global = {
  \key a \major
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIBourreeII
  \repeat volta 2 {
  \partial 4 e4
  %1
  | e fis g8 fis e d
  | e4 a8 gis a4 e
  | fis8 d cis d e d cis b
  | d cis b cis a4 \once\stemUp e'
  %5
  | e fis g8 fis e d
  | \stemUp e4 a8 gis a cis b4
  | b2 a8 gis fis e
  | e2.
  }
  \break
  \repeat volta 2 {
  \partial 4 gis4
  | gis a b8 a gis fis
  %10
  | a gis fis gis e4 a
  | \stemNeutral fis8 eis fis a gis a b fis
  | gis eis fis dis eis cis cis'4
  \break
  | cis8 d! e cis d b cis ais
  | b cis d b cis a! b gis
  %15
  | cis b d cis b a gis a
  | \slurDown \appoggiatura gis8 fis2. \stemUp a4
  | a2. a4
  | a8 gis a fis gis e g!4
  | g!2. g4
  %20
  | g!8 fis g e fis d b'4
  | b cis d8 cis b a
  | b4 e8 d e4 gis,
  | a4. b8 b4.\prallprall a8
  | a2.
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s1*3
  | s2. cis4
  %5
  | s1
  | s2. dis4
  | e2. dis4
  | e2.
  \partial 4 s4
  | s1
  %10
  | s2. e4
  | s1*5
  %16
  | s2. cis4
  | b dis8 cis dis4 dis
  | e2. b4
  | a cis8 b cis4 cis
  %20
  | d2. d4
  | d e e2
  | e2. e4
  | e4. a8 gis2
  | d8\rest e cis2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 4 cis4
  %1
  | cis d e8 d cis b
  | cis4 cis8 b cis4 cis
  | \once\override NoteColumn.force-hshift = #1.7 b1
  | a2. a4
  %5
  | cis d e8 d cis b
  | cis2. s4
  | s1
  | s2.
  \partial 4 b4
  | b cis d8 cis b a
  %10
  | cis b a b gis4 s
  | a2 b4 fis
  | eis a gis
    << {
      \stemUp \once\override NoteColumn.force-hshift = #0.8 eis
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0.4 gis
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0 b
    } >>
  | ais4 cis b e
  | d b a! gis
  %15
  | a gis fis eis
  | fis4 a\rest a\rest fis
  | dis4 fis8 e fis4 fis
  | e2. e4
  | cis4 e8 d e4 e
  %20
  | d2. fis4
  | e2 e4 fis
  | gis2. b4
  | a2 e
  | a4\rest a8\rest e a4

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 a4
  %1
  | a1~
  | a~
  | a4 a gis e
  | a,\rest e' cis e
  %5
  | a1~
  | a4 gis fis a
  | \stemNeutral a8^( gis fis e) b'4 b,
  | e b e,
  }
  \repeat volta 2 {
  \partial 4 \stemDown e'4
  | e1~
  %10
  | e2. cis4
  | d cis b d
  | cis2. cis4
  | fis1~
  | fis~
  %15
  | fis4 b, cis2
  | fis8 d cis b a gis a fis
  | b2. b4
  | e,2. e4
  | a2. a4
  %20
  | d,2. d'4
  | gis,2 a
  | d2. d4
  | cis d e e,
  | a2._\markup { "[Bourréé I da capo]" }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 807"
    title = \markup { "Bourrée II" }
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
