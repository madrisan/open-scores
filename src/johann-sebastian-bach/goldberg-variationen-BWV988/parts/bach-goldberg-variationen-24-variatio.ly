Global = {
  \key g \major
  \time 9/8
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  %1
  | \stemNeutral g4 fis8 g4 a8 b[ d cis]
  | d4 a8 d4 e8 \once\stemUp \grace e16 fis[ g fis e d8]
  | g[ b a] b[ g fis] g4.~
  | g8[ fis e] fis[ g a] \stemUp d,4.~
  %5
  | d8[ g fis] g[ b a] b[ d16 c b a]
  | b8[ c16 b a g] a8[ b16 a g fis] g8[ a16 g fis e]
  | d8 a'\rest a\rest g a\rest a\rest fis a\rest a\rest
  | g a\rest a\rest c, g'\rest g\rest b, g'\rest g\rest
  | \override MultiMeasureRest.staff-position = #2
    R1*9/8
  %10
  | R1*9/8
  | \stemNeutral r8 b[ a] \stemUp g[ a fis] \stemNeutral e16[ d cis8 d]
  | \once\stemUp \grace d8 cis4.~ cis8[ d e] a,[ b cis]
  | d4 fis8 g4 a8 \stemUp b,4.~
  | b8[ a g] a2.~
  %15
  | a8[ d cis] \stemNeutral d16[ e fis8 e] fis[ a16 g fis e]
  | \stemUp fis8[ g16 fis e d] e8[ fis16 e d cis] d4.
  }
  \break
  \repeat volta 2 {
  | R1*9/8
  | R1*9/8
  | \stemNeutral a'2.~^\downprall a4.~
  %20
  | a8[ g fis] g[ b a] b4 dis,8
  | e[ g16 fis e d] c8[ e16 d c b] a8[ c16 b a g]
  | fis4 e'8 dis [e \turn fis] b,4.~
  | \stemUp b8[ dis e]~ e16[ d c b c8]~  c16[ b a g a8~]
  | a8 fis g b4.~ b8 c d
  %25
  | e gis, b a4.~ a8 b c
  | d fis, a d,4 fis8 b4.~
  | b4 dis,8 e[ fis g] fis[ g a]
  | d,4. d4. d4._~
  | d8[ g fis] g[ a b] c[ d16 c b a]
  %30
  | b8[ c16 b a g] a8[ b16 a g fis] g8[ b16 a g fis]
  | g8 b8\rest b8\rest d,8 b'8\rest b8\rest fis8 b8\rest b8\rest
  | g8 b8\rest b8\rest c,8 b'8\rest b8\rest b,4.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #6
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  %1
  | R1*9/8
  | R1*9/8
  | g4 fis8 g4 a8 b d cis
  | d4 a8 d4 \top\stemDown \shiftOff e8 \grace e16 fis[ g fis e d8]
  %5
  | g[ b a] b[ g fis] g4.~
  | g8[ fis e] fis[ g a] d,4.~
  | d8[ g fis] g[ b a] b[ d16 c b a]
  | b8[ c16 b a g] a8[ b16 a g fis] g8[ a16 g fis e]
  | d8[ b' a] g[ a fis] e16[ d cis8 d]
  %10
  | \once\stemUp \grace d8 cis4.~ cis8[ d e] a,[ b cis]
  | \bottom\stemUp d4 fis8 g4 \top\stemDown a8 \bottom\stemUp b,4.^~
  | b8[ a gis] a2.^~
  | a8[ d cis] d16[ e fis8 e] fis[ \top\stemDown a16 g fis e]
  | fis8[ g16 fis e d] e8[ fis16 e d cis]
    \override Beam.positions = #'(-5 . -5.3)
    d8[ e16 d cis \bottom\stemUp b]
    \revert Beam.positions
  %15
  | a8 c\rest c\rest d e\rest e\rest cis c\rest c\rest
  | d d\rest d\rest \top\stemDown g e\rest e\rest fis4.
  }
  \repeat volta 2 {
  | \tieDown a2.~^\downprall a4.~
  | a8[ g fis] g[ b a] b4 \bottom\stemUp dis,8
  | e[ g16 fis e d] c8[ e16 d c b] a8[ c16 b a g]
  %20
  | \tieUp fis4 e'8 dis [e \turn fis] b,4.~
  | b8[ dis e]~ e16[ d c b c8]~ c16[ b a g a8~]
  | a8 fis g d'4.\rest e\rest
  | \top\stemDown\tieDown
    \override MultiMeasureRest.staff-position = #-6
    R1*9/8
  | R1*9/8
  %25
  | R1*9/8
  | b4.\rest b~ b8 c d
  | e \bottom\stemUp\tieUp gis, b a4.~ a8 b c
  | \top\stemDown d \bottom\stemUp fis, a d,4 fis8 b4.~
  | b4 dis,8 e fis g fis g a
  %30
  | d,4. d d~
  | d8 g fis g a b c d16 c b a
  | b8 c16 b a g a8 b16 a g fis g4.
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  %1
  | g4. r8 r fis g4 e8
  | fis4. r8 r a d,4 fis8
  | e2._( e4_) a8
  | d,4. r r8 r c'
  %5
  | \stemNeutral\tieNeutral b4. r8 r d g,4 b8
  | e4. r8 r a, b[ a b]
  | c[ b a] b[ d c] d4 d,8
  | g4 g,8 g4 g'8 g[ fis16 e d c]
  | b8[ g a] b[ c d] g,4 g'8~
  %10
  | g[ fis e] a4 g8 fis[ g a]
  | \stemDown\tieDown b4.~ b4 a8 g4 e8
  | a,4 a8\rest b\rest b\rest g' fis4 e8
  | fis4 a8 b4 cis8 d4 d,8
  | g4 b,8 cis d e fis e fis
  %15
  | g fis e fis a g a4 a,8
  | d4 d,8 d4 d'8 d4.
  }
  \repeat volta 2 {
  | \tieUp
    d8[ fis a] d[ e16 d c b] c8[ d16 c b a]
  | b4.~ b8[ c d] g,[ a b]
  | c r r a r r fis r r
  %20
  | \tieDown dis4 fis8 b4.~ b8[ g a]
  | g r r e r r c c\rest c\rest
  | a4 ais8 b[ c'16 b a g] a8[ b16 a g fis]
  | g8[ a16 g fis e] c'8[ dis, e] b[ e dis]
  | \tieNeutral e4.^\mordent~ e8[ g b] e4 d8
  %25
  | c4.~ c8[ b c] fis,[ g a]
  | \stemNeutral b8[ d, fis] b,[ c d] g,[ a b]
  | \stemDown\tieDown c4. c c~
  | c8[ d16 c b a] b8[ c d] g,[ a b]
  | e, d\rest d\rest e' g,\rest g\rest a g\rest g\rest
  %30
  | g[ a b] c[ b a] b[ g a]
  | b4._~ b8[ a g] d'4 d,8
  | g4 g,8 g4 g'8 g4.
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
    title = \markup { \smallCaps "Variatio 24 a 1 Clav." }
    subtitle = \markup { "Canone all'ottava" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
