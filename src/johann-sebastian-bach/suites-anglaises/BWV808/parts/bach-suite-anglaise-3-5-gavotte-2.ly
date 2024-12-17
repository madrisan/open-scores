Global = {
  \key g \major
  \include "../global.ly"
  \time 2/2
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIIGavotteII
  \repeat volta 2 {
  \partial 2 d4 e8( c)
  %1
  | d4 g8( a) b4 a8( fis)
  | g4 d g a8 fis
  | g a b c d b c a
  | b2
  }
  \break
  \repeat volta 2 {
  \partial 2 d4 e8 c
  %5
  | d4 c8 a b g a fis
  | g4 d e8 d g d
  | e d g d e d a'4
  | a2 a4 b8 g
  | c4 b8 g e' c d b
  %10
  | c b a g a b c b
  | a g fis g a g fis e
  | d2. e8 c
  | d4 g8 a b4 a8 fis
  | g4 d b'8 fis g d
  %15
  | d' fis, g d b' fis g d
  | g4 d'\rest
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 2 s2
  %1
  | s1*3
  | s2
  \partial 2 s2
  | s1*3
  | fis2 s
  | s1*7
  | d4 c\rest
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 2 { b4 a }
  %1
  | b c d c
  | b c b a
  | b c b a
  | g2
  \partial 2 { b4 a }
  %5
  | b e d c
  | b\prall a8 b c4 b
  | c b c c8 a
  | c2 c4 d
  | e d c b
  %10
  | a b c d
  | c e d c
  | b c b a
  | b c d c
  | b d\rest d d\rest
  %15
  | b d\rest
    \once\override Staff.TextScript.extra-offset = #'(2 . -2)
    d_\markup {
      "Repetatur Gavotte I"
    } d\rest
  | b c\rest
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 g2~
  %1
  \repeat unfold 3 {
  | g1~
  }
  | g2
  }
  \break
  \repeat volta 2 {
  \partial 2 g~
  %5
  \repeat unfold 11 {
  | g1~
  }
  | g4 b,\rest
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 808"
    title = \markup { "Gavotte II ou la Musette" }
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
