Global = {
  \key g \major
  \time 2/2
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | f2\rest g~
  | g fis~
  | fis4 g8 fis e2~
  | e4 d8 cis d2
  %5
  | d2\rest e~
  | e4 d8 e fis2~
  | fis4 a8 g a2~
  | a8 g a fis g2
  | d\rest e~
  %10
  | e d~
  | d4 e8 fis g2~
  | g8 fis g e fis2~
  | fis4 fis e2~
  | e4 e d2~
  %15
  | d4 g cis,8 d e4~
  | e2 d
  }
  \break
  \repeat volta 2 {
  | f2\rest a~
  | a g~
  | g4 a8 b c2~
  %20
  | c8 b c4 b2
  | d,\rest e~
  | e dis4 e
  | fis2. e8 fis
  | g2~ g8 fis e d
  %25
  | c4 a'\rest a2~
  | a g~
  | g4 a8 b c2~
  | c8 b c a b2~
  | b4 b a2~
  %30
  | a4 a g2~
  | g4 c fis,8 g a4~
  | a2 g
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b1
  | a2. b8 a
  | g2. fis8 e
  | fis2 e\rest
  %5
  | g2. fis8 g
  | a2. c8 b
  | c2~ c8 b c a
  | b2 g\rest
  | g1
  %10
  | fis2. g8 a
  | b2~ b8 a b g
  | a2. a4
  | g2. g4
  | fis2. b4
  %15
  | e,8 fis g2.
  | fis1
  }
  \repeat volta 2 {
  | c'1
  | b2. c8 d
  | e2~ e8 dis e4
  %20
  | dis2 b\rest
  | g1
  | fis4 g a2~
  | a4 g8 a b2~
  | b8 a g fis e4 e\rest
  %25
  | c'1
  | b2. c8 d
  | e2~ e8 d e c
  | d2. d4
  | c2. c4
  %30
  | b2. e4
  | a,8 b c2.
  | b1
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | r4 g8 a b4 c
  | d4 d, d'2
  | r4 e8 d cis4 a
  | d d, d' c
  %5
  | b^\prall a8 b c4 c,
  | c' b8 c d4 a
  | d, fis8 e fis4 d
  | g d g, g'8 a
  | b4 a8 b cis4 b8 cis
  %10
  | d4 cis b a
  | g fis e d
  | cis4 b8 cis d4 cis8 d
  | b4 a8 b cis4 b8 cis
  | ais4 gis8 ais b a g fis
  %15
  | g4 e a a,
  | d a' d2
  }
  \repeat volta 2 {
  | r4 d8 e fis4 d
  | g4 g, g' a8 b
  | c4 b a g8 a
  %20
  | b4. a8 g fis e dis
  | e4 e'8 d c4 b
  | a b8 c fis,4 g8 a
  | dis,4 e8 fis b,4 cis8 dis
  | e4 \clef treble e'8 dis e4 fis8 g
  %25
  | a4 g8 a fis4 e8 fis
  | g4 fis e d \clef bass
  | c b a g
  | fis e8 fis g4 fis8 g
  | e4 d8 e fis4 e8 fis
  %30
  | dis4 cis8[ dis] e[ d c b]
  | c4 a d d,
  | g d' g2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 18 a 1 Clav." }
    subtitle = \markup { "Canone alla Sesta" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=120 }
}
