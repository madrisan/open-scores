Global = {
  \key g \major
  \time 2/2
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'VariatioX
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | R1*8
  | g'2 ^\mordent g4. ^\prallprall fis16[ g]
  %10
  | a4 fis d fis
  | b,4 e e, d'
  | cis4^\prallprall b8[ cis] a[ b cis a]
  | d4 d, d'2~
  | d4 d, d'2~
  %15
  | d2 cis
  | d1
  }
  \break
  \repeat volta 2 {
  | fis2 ^\mordent fis4.^\prallprall e16[ fis]
  | g4 d b d
  | c4 f f, e'
  %20
  | dis4 ^\prallprall cis8[ dis] b[ cis dis b]
  | e4 e, e'2~
  | e4 e, e'2~
  | e dis
  | e2~ e8[ d cis b]
  %25
  | a4 g'2 f8[ e]
  | f2. e8[ d]
  | e2. fis!8[ g]
  | a[ b g a] fis4 a~
  | a g8[ fis] g4 b,~
  %30
  | b4 a8[ b] c2~
  | c4 b a2
  | g1
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | R1*8
  | \override MultiMeasureRest.staff-position = #-4 R1*2
  %11
  | \override MultiMeasureRest.staff-position = #-8 R1*2
  | a'2 a4.\prallprall g16[ a]
  | b4 g e g
  %15
  | e a a, g'
  | fis\prallprall e8[ fis] d2
  }
  \repeat volta 2 {
  | R1*4
  %21
  | b'2 b4._\prallprall a16[ b]
  | c4 a fis a
  | fis4 b b, a'
  | g4\prallprall fis8[ g] e2~
  %25
  | e4 e4\rest a2~
  | a4 d b g~
  | g c8[ b] c2~
  | c2. c4
  | b2 a4\rest g4
  %30
  | <e>2. a8[ g]
  | fis4 g~ g fis
  | g8[ d c d] b2
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \change Staff = "upper" \voiceTwo
    \override MultiMeasureRest.staff-position = #-6
    R1*4
  %5
  | \change Staff = "lower" \voiceThree
    d2^\mordent d4.^\prallprall c16[ d ]
  | e4 c a c
  | a4 d d, c'
  | b4 ^\prall a8[ b] g[ b a c]
  | b8[ a] b4 e2~
  %10
  | e4 a, d2~
  | d4 b e2~
  | e4 d cis e
  | a,8[ b a g] fis2
  | g2 f\rest
  %15
  | a4\rest e a2~
  | a8[ a g a] fis2
  }
  \repeat volta 2 {
  | \override MultiMeasureRest.staff-position = #6
    R1*7
  | \override MultiMeasureRest.staff-position = #4
    R1*5
  %29
  | d'2 d4.\prallprall c16[ d]
  | e4 c a c
  | a4 d d, c'
  | b4^\prallprall a8[ b] g2
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  %1
  | g2^\mordent g4.^\prallprall fis16[ g]
  | a4 fis d fis
  | e a a, g'
  | fis4^\prall e8[ fis] d[ e c d]
  %5
  | b[ d e fis] g4 b,
  | c2 a4\rest a
  | fis2 f4\rest d
  | g d' b d
  | g2 a,4\rest e'
  %10
  | fis2 a,4\rest d
  | g2 a,4\rest e'
  | a2 a,4\rest g'
  | fis2 a,4\rest d4
  | g,4 b g e
  %15
  | a2 a4\rest a
  | d1
  }
  \repeat volta 2 {
  | d8[ e fis g] a4 c,
  | b8[ d e fis] g[ a] b4 ^~
  | b4 a8[ gis8] a2 ^~
  %20
  | a4 fis b a
  | g8[ a b a] g[ fis g e]
  | a8[ b c b] a[ g a fis]
  | b8[ a g a] b[ a b b,]
  | e8 [ b a b] g ^[ fis g e]
  %25
  | cis'2 cis4.\prallprall b16[ cis]
  | d4 b g b
  | c4 e a, g'
  | fis4\prallprall e8[ fis] d[ e fis d]
  | g4 a b g
  %30
  | c,2 a4\rest a'4
  | d,2 f,4\rest d'4
  | g2 g,
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 10 a 1 Clav." }
    subtitle = \markup { "Fughetta" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=120 }
}
