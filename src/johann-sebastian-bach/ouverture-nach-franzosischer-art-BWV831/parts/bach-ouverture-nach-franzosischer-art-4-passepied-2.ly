Global = {
  \key b \minor
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp\slurDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 fis8
  %1
  | d e fis
  | g a b
  | cis\mordent a8.\prall g32 a
  | b8 a16 g fis e
  %5
  | \appoggiatura e16 d8 \appoggiatura fis16 e8 \appoggiatura g16 fis8
  | \appoggiatura a!16 g8 \appoggiatura b16 ais8 b_.
  | e,( d4\prallprall)
  | cis4
  \break
  }
  \repeat volta 2 {
  \partial 8 cis'8
  | \stemNeutral a b cis
  | d eis fis
  | \once\stemUp \appoggiatura e16 d8 g16 fis e d
  | fis e d cis e8
  | a,8 d16 cis b a
  | \stemUp cis b a g a8
  | d, g fisis
  | g4 fis8
  | \appoggiatura fis16 eis8 \appoggiatura g16 fis8 \appoggiatura a16 g8
  | \stemNeutral \once\stemUp \appoggiatura b16 a8 \once\stemUp \appoggiatura cis16 b8
    \once\stemUp \appoggiatura d16 cis8
  | b\mordent g8.\prall fis32 g
  | cis16 b a g fis e!
  | d8 g16 fis e d
  | fis e d cis fis8_.
  | d e cis
  | b4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 d8
  %1
  | s4.*7
  | s4
  \partial 8 a'8
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 8 s8
  %1
  | b cis d
  | e cis d
  | e cis fis
  | d e cis
  %5
  | b cis d
  | e cis d
  | cis b4
  | a4
  \partial 8 s8
  | fis' g a
  %10
  | b g a
  | bis cis bis
  | cis g a
  | fisis g fisis
  | g d \change Staff = "upper" \stemDown e
  %15
  | b a cis
  | b cis d
  | \change Staff = "lower" \stemUp cis d eis
  | fis4.~
  | fis4 eis8
  %20
  | fis4 cis8
  | b e16 d cis b
  | cis4 a8
  | b cis a
  | b4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 \once\stemNeutral b8
  %1
  | b'4.~
  | b
  | e,4 fis8
  | g4 a8
  %5
  | b4.~
  | b4.
  | a8 b b,
  | fis'4
  }
  \repeat volta 2 {
  \partial 8 fis8
  | \clef treble fis'4.~
  %10
  | fis~
  | fis8 e g
  | cis,4.~
  | cis8 b d
  | g, b \once\override Score.Clef.X-extent = #'(0 . 1.5) \clef bass cis,
  %15
  | \stemNeutral d cis d
  | g a bis
  | \stemDown cis4.~
  | cis8 b! a
  | d b cis
  %20
  | a fis a
  | b4.~
  | b8 a fis_\markup { \hspace #0.5 "Passepied I da capo" }
  | g e fis
  | b,4
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 831"
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
