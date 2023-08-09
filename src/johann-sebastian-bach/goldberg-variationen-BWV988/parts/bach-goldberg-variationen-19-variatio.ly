Global = {
  \key g \major
  \time 3/8
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | d8 d4~
  | d8 d4~
  | d8[ d cis]
  | d4 f8\rest
  %5
  | g16[ fis g d b d]
  | e[ d e c a c]
  | d[ c d e d c]
  | b[ a b c b a]
  | g8 g'4~
  %10
  | g8 fis4~
  | fis8 [ e d]
  | cis16[ d] e4~
  | e8 d c!~
  | c[ b g'~]
  %15
  | g16[ e fis d e cis!]
  | d4.
  }
  \break
  \repeat volta 2 {
  | fis16[ e fis d a d]
  | g[ fis g d b d]
  | e[ dis e g fis e]
  %20
  | dis[ e fis dis b dis]
  | e8 e4~
  | e8 e4~
  | e8[ e dis]
  | e4 f8\rest
  %25
  | f\rest e16[ c a c]
  | d4.~
  | d8[ c16 b c8~]
  | c[ d16 c b a]
  | \stemNeutral d[ c d b g b]
  %30
  | e[ d e c a c]
  | fis[ e fis a d, fis]
  | g[ fis g d b g]
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b16[ a b g d g]
  | a[ g a fis d fis]
  | g[ fis g b a g]
  | fis[ e fis g a fis]
  %5
  | g8 g4~
  | g8 g4~
  | g8[ g fis]
  | g4 c,8\rest
  | c\rest c\rest d'
  %10
  | cis4 c8
  | b[ e, gis]
  | a4 g!8
  | fis4 a8
  | d,[ g b]
  %15
  | cis[ a g~]
  | g fis4
  }
  \repeat volta 2 {
  | \bottom\stemUp d8 d4^~
  | d8 b \top\stemDown g'~
  | g[ g c]
  %20
  | fis, e\rest e\rest
  | b'16 [ a b g e g]
  | c[ b c a fis a]
  | b[ a b c b a]
  | g[ fis g a b g]
  %25
  | e4 c8\rest
  | c\rest d16[ g b g]
  | e4.
  | d8 c\rest c\rest
  | \bottom\stemUp g g4^~
  %30
  | g8[ c, c'^~]
  | c[ a c^~]
  | c b4
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | g8[ g, g']
  | fis[ fis, fis']
  | e[ e, e']
  | d[ d, c'!]
  %5
  | b[ b' g]
  | c[ c, c']
  | b16[ a b c d8]
  | g,[ g,16 d' g a]
  | b[ a b g e g]
  %10
  | a[ g a fis d fis]
  | g[ fis g e b e]
  | g![ fis g e cis e]
  | a[ g a fis d fis]
  | b[ a b g e g]
  %15
  | a8[ a, a']
  | d16[ cis d a fis d]
  }
  \repeat volta 2 {
  | d'8 d, c'
  | b g b
  | c[ b a]
  %20
  | b[ a16 g a fis]
  | g8[ e g]
  | a[ a, a']
  | g16[ fis g a b8]
  | e,[ e' d]
  %25
  | c16[ b c a fis a]
  | b[ a b g e g]
  | a[ g a c e, g]
  | fis[ e fis a d, fis]
  | \stemDown b,8[ g b]
  %30
  | c[ a c]
  | d[ c d]
  | g4.
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
    title = \markup { \smallCaps "Variatio 19 a 1 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=80 }
}
