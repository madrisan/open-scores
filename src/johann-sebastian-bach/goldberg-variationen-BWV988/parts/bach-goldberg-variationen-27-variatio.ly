Global = {
  \key g \major
  \time 6/8
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | R1*6/8
  | a8[ b16 cis d e] fis[ e d e fis8]
  | g, r r e' r r
  | fis,[ g16 a b c] d[ e d c d8]
  %5
  | d r r g, r r
  | c16[ d c b a g] fis[ a c e d c]
  | b[ c b a g fis] e[ g b d c b]
  | a8[ b^\turn c] d, d'4~
  | d16[ fis e d cis b] cis[ d e cis d e]
  %10
  | a,2.~\prallmordent
  | a16[ a g fis e d] cis[ d e d e cis]
  | fis8 r r b, r r
  | b'16[ c b a g fis] e[ g b d cis b]
  | a[ b a g fis e] dis[ fis a c b a]
  %15
  | g8[ a^\turn b~] b[ a g~]
  | g16[ fis e d e cis] d4.
  }
  \break
  \repeat volta 2 {
  | a''8[ g16 fis e d] c[ d e d c a']
  | b,8 r8 r8 g'8 r8 r8
  | c16[ d c b a g] a[ b a g fis e]
  %20
  | dis8[ e^\turn fis] b,4.~
  | b16[ a b d c b] c[ f c a f a]
  | dis,[ e fis a g fis] g8[ g8.\prallprall fis32 g]
  | a16[ b c b a8] a4.~^\turn
  | a16[ fis g a b c] d[ c b a gis fis]
  %25
  | e[ gis a b c d] e[ d c d e8]
  | a, r r fis' r r
  | b,[ c16 d e fis] g[ a g fis g e]
  | c'16[ b a g fis e] d4.~
  | d16[ c d e fis g] a[ e c a b c]
  %30
  | fis,[ g a b c a] b[ d g8] r
  | r e[ d] c[ d16 c b a]
  | b[ d b g a fis] g4.\mordent
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g8[ a16 b c d] e[ d c d e8]
  | fis, r r d' r r
  | e,[ fis16 g a b] c[ d c b c8]
  | c r r fis, r r
  %5
  | b16[ c b a g fis] e[ g b d c b]
  | a[ b a g fis e] d[ fis a c b a]
  | g8[ a^\turn b] c, c'4~
  | c16[ e d c b a] b[ c d b c d]
  | g,2.~^\prallmordent
  %10
  | g16[ g fis e d cis] b[ cis d cis d b]
  | e8 r r a, r r
  | a'16[ b a g fis e] d[ fis a c b a]
  | g[ a g fis e d] cis[ e g b a g]
  | fis8 g^\turn a~ a g fis~
  %15
  | fis16[ e d cis d b] cis4~^\prallprall cis16[ b32 cis]
  | d8[ fis, a] d,4.
  }
  \repeat volta 2 {
  | R1*3/4 \clef "treble"
  | g''8[ fis16 e d c] b[ c d c b g']
  | a,8 r r fis' r r
  %20
  | b16[ c b a g fis] g[ a g fis e d] \clef "bass"
  | c8[ d^\turn e] a,4.~
  | a16[ g a c b a] b[ e b g e g]
  | cis,[ dis e g fis e] fis8[ fis8.^\prallprall e32 fis]
  | g16[ a b a g8] gis4.~^\turn
  %25
  | gis16[ e fis gis a b] c[ b a g fis e]
  | d[ fis g a b c] d[ c b c d8]
  | g, r r \clef "treble" e' r r
  | a,[ b16 c d e] fis[ g fis e fis d]
  | b'[ a g fis e d] c4.~
  %30
  | c16[ b c d e fis] g[ d b g a b] \clef "bass"
  | e,[ fis g a b g] a[ c fis8] r
  | r d[ c] b[ c16 b a g]
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 27 a 2 Clav." }
    subtitle = \markup { "Canone alla Nona" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
