Global = {
  \key g \major
  \time 2/2
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'VariatioXXII
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Alla breve"
  \repeat volta 2 {
  %1
  | R1*4
  %5
  | b2\rest d~
  | d4 c8[ b] c4 e
  | a, d2 c4~
  | c b8[ a] b2~
  | b4 b8[ a] b4 e
  %10
  | cis a'2 g8[ fis]
  | g1~\downprall
  | g~
  | g4 fis8[ e] fis4 a
  | d,2 g~
  %15
  | g4 fis e2
  | d1
  }
  \break
  \repeat volta 2 {
  | d2\rest a'~
  | a4 g8[ fis] g4 b
  | e,1~
  %20
  | e4 dis8[ cis] dis4 fis
  | b b, b'2~
  | b4 a8[ g] a4 c
  | fis, g a2~
  | a4 g8[ fis] g4 b
  %25
  | e,1
  | d
  | c
  | b2\rest d~
  | d4 c8[ b] c4 e
  %30
  | a,2~ a8[ e' d e]
  | a,4 d2 c4~
  | c4 b8[ a] b2
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
  | R1*2
  | g2\rest g2~
  | g4 fis8[ e] fis4 a
  %5
  | d,2. f4
  | e2. g4~
  | g fis8[ e] fis4 a~
  | a g8[ fis] g4 b
  | e,2 b'
  %10
  | a d
  | e1~
  | e~
  | e4 d8[ cis] d4 fis
  | b,2. e8[ d]
  %15
  | e4 d2 cis4
  | d a8[ g] a2
  }
  \repeat volta 2 {
  | R1
  | b2\rest b~
  | b4 a8[ g] a4 c
  %20
  | fis,2 b
  | b\rest g'~
  | g4 fis8[ e] fis4 a
  | dis, e2 dis4
  | e2 b~
  %25
  | b4 a8[ g] a4 c
  | fis, d g2~
  | g4 fis8[ e] fis4 a
  | d,2 e\rest
  | e\rest g~
  %30
  | g4 g8[ fis] g2~
  | g4 fis8[ e] fis4 a~
  | a g8[ fis] g2
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | c2\rest e~
  | e4 d8[ cis] d2~
  | d4 cis8[ b] cis4 e
  | a,1~
  %5
  | a4 g8[ fis] g2~
  | g4 e4 a2~
  | a4 a8[ g] a4 fis
  | d'2 b\rest
  | b\rest e~
  %10
  | e4 d8[ cis] d2~
  | d4 cis8[ b] cis4 e
  | a,1
  | a2\rest a~
  | a4 g8[ fis] g4 b
  %15
  | cis, d e8[ fis] g4~
  | g fis8[ e] fis2
  }
  \repeat volta 2 {
  | s1*3
  %20
  | s2 fis'~
  | fis4 e8[ dis8] e4 g4
  | c,4 e a2~
  | a4 g fis2
  | e c\rest
  %25
  | \override MultiMeasureRest.staff-position = #8
    R1*2
  | d2\rest c~
  | c4 b8[ a] b4 d
  | g,2. b4
  %30
  | e,2 a~
  | a4 a8[ g8] a4 fis4
  | d'1
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g1
  | fis
  | e
  | d2. c4
  %5
  | b1
  | c
  | d
  | g,~
  | g4 g'8[ fis]  g2^~
  %10
  | g4 fis8[ e] fis4 b
  | e,2. d4~
  | d cis8[ b] cis4 e
  | fis,2 fis'
  | g, e'
  %15
  | a,1
  | d
  }
  \repeat volta 2 {
  | d'2. c4
  | b d g g,
  | c e c a
  %20
  | b b, b' a
  | g1
  | a
  | b
  | e,2. d4
  %25
  | c2 c'~
  | c4 b8[ a] b4 e
  | a,2. g4
  | fis2 g
  | e2. d4
  %30
  | c2 cis
  | d1
  | g,
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
    title = \markup { \smallCaps "Variatio 22 a 1 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
