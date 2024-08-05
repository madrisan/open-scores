Global = {
  \key e \major
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 b'8
  %1
  | gis8 a16 gis fis e
  | fis dis e8^! b^!
  | cis b a
  | gis16 fis e8 b''
  %5
  | gis8 a16 gis fis e
  | fis dis e8^! b^!
  | cis b a
  | gis4
  }
  %\break
  \repeat volta 2 {
  \partial 8 gis'8
  | fis e16 dis cis b
  %10
  | e cis fis8^! e^!
  | dis e16 dis cis b
  | cis8 fis,16 gis ais b
  | cis dis e cis gis'8^!
  | fis e16 dis cis b
  %15
  | e[ fis] cis8.\prall b16
  | b4 b8
  | gis8 a16 gis fis e
  | d' b cis8^! dis^!
  | e fis16 e dis cis
  %20
  | a'16 fis gis8^! fis~
  | fis16 dis e8^! cis~
  | cis16 a' b, gis' a, fis'
  | gis,8 a fis
  | e4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 gis16 a
  %1
  | b8 a gis
  | a gis16 fis a gis
  | a8 gis fis
  | e8. fis16 gis a
  %5
  | b8 a gis
  | a gis16 fis a gis
  | a8 gis fis
  | e4
  \partial 8 b'8
  | b4.~
  %10
  | b8 cis4
  | b4.
  | ais8 b,8\rest fis'16 gis
  | ais8 gis ais
  | b4.~
  %15
  | b8 ais4
  | b4 fis8
  | e4.~
  | e~
  | e16 fis gis8 ais
  %20
  | b4 a8~
  | a16 fis gis e a cis,
  | dis8 e fis
  | e fis dis
  | e4
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \repeat volta 2 {
  \partial 8 e8
  %1
  | e4.~
  | e~
  | e4 dis8\prall
  | e4.~
  %5
  | e~
  | e
  | a,8 b b,
  | e[ b']
  }
  \repeat volta 2 {
  \partial 8 { \clef treble e8 }
  | dis e fis
  %10
  | gis ais fis
  | b ais gis
  | fis4.~
  | fis4 \clef bass e8
  | dis gis16 fis e dis
  %15
  | cis[ b] fis'8 fis,
  | b8 cis dis
  | e e, fis
  | gis a b
  | cis4.
  %20
  | dis8 e a,
  | b4.~
  | b8 cis dis
  | e a,_\markup { \hspace #1 "Repetatur Passepied I" } b
  | e,4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 810"
    title = \markup { "Passepied II" }
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
