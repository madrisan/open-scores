Global = {
  \key d \major
  \time 2/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \stemUp
  \repeat volta 2 {
  %1
  | a4 d~
  | d8 [ cis16 d ] e8 [ g, ]
  | g8 [ fis ] r8 d'8
  | fis,8 [ e ] r8 cis'8
  %5
  | e,8[ d ] r b'
  | d,[ cis ] r a'
  | b,[ cis ] d4 ~
  | d8[ cis16 d ] e[ d cis d ]
  | e[ d cis b ] a[ \bottom g! fis e ]
  %10
  | fis8 \top\stemUp fis'16[ g ] a[ g fis g ]
  | a[ g fis e ] d[ c b a ]
  | b[ d e fis ] g[ b cis! d ]
  | e[ g, fis e ] fis[ e' d cis ]
  | d[ fis, gis a ] gis[ d' cis b ]
  %15
  | cis[ a b cis ] d,[ cis' b a ]
  | gis[ e fis gis ] a[ b cis d ]
  | e4 a ~
  | a8[ gis16 a ] b8[ d, ]
  | cis[ e ] d16[ cis b a ]
  %20
  | a2
  }
  \break
  \repeat volta 2 {
  | a4 e'~
  | e8[ fis16 g! ] a[ g fis e ]
  | fis2~
  | fis
  %25
  | g4 fis~
  | fis8[ e16 dis ] e4~
  | e8[ a16 b ] a[ g fis e ]
  | e8 dis4 e16[ fis ]
  | g8[ fis16 g ] a[ g fis a ]
  %30
  | g[ fis e g ] fis[ e dis fis ]
  | e2~
  | e~
  | e8 fis4 e8~
  | e[ dis e g ]
  %35
  | \stemNeutral a,16[ g' fis a ] g[ fis e dis ]
  | e4. r8
  | b'4 s
  | \stemUp e,2~
  | e4 g!~
  %40
  | g8[ fis16 e ] fis16[ a g b ]
  | a[ c, b a ] b[ a' g fis ]
  | g[ b, cis d ] cis[ g' fis e ]
  | fis[ d e fis ] g,[ fis' e d ]
  | cis[ a b cis ] d[ e fis g ]
  %45
  | a4 d ~
  | d8[ cis16 d ] e8[ g, ]
  | fis[ a ] g16 fis e d ]
  | d2
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \repeat volta 2 {
  %1
  | fis2
  | e2~
  | e4 d~
  | d cis~
  %5
  | cis b~
  | b a~
  | a gis
  | a2~
  | a8 s4.
  %10
  | s2*7
  %17
  | cis'2
  | b~
  | b8 a4 gis8
  %20
  | r16 e[ cis8~ ] cis4
  }
  \repeat volta 2 {
  | R1*1/2
  | R1*1/2
  | d4 a'~
  | a8[ b16 c ] d[ c b a ]
  %25
  | b4 a
  | g4. a16[ b ]
  | c2~
  | c4 b~
  | b2~
  %30
  | b~
  | b8[ b16 c ] d[ c b d ]
  | c[ b a c ] b[ a gis b ]
  | a4 g
  | fis4 e8 r
  %35
  | \bottom\stemUp\tieDown a,4\rest a8\rest a^~
  | a16[ g fis a ] g8 c\rest
  | s4 \top\stemDown d'!~
  | d8[ cis!16 b ] cis[ a gis b ]
  | a2~
  %40
  | a4 r
  | s2*4
  %45
  | fis'2
  | e~
  | e8 d4 cis8
  | r16 a[ fis8~ ] fis4
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | d8[ e fis g ]
  | a[ b cis a ]
  | d[ cis b a ]
  | g[ e a g ]
  %5
  | fis[ b gis e ]
  | a[ gis fis e ]
  | d[ cis b e ]
  | a,[ b cis b ]
  | \stemDown a[ b cis a ]
  %10
  | \stemNeutral d[ e fis e ]
  | d[ e fis d ]
  | g[ fis e d ]
  | cis[ b ais fis ]
  | b[ e, e' gis ]
  %15
  | a[ gis fis d ]
  | e[ d cis b ]
  | a[ b cis d ]
  | e[ fis gis e ]
  | a[ cis, d e ]
  %20
  | a,8.[ e'16 ] a4
  }
  \pageBreak
  \repeat volta 2 {
  | a8[ b a g ]
  | fis[ e fis a ]
  | d,[ e d c ]
  | b[ a b d ]
  %25
  | g,[ g' a b ]
  | c[ c, c' b ]
  | a[ fis g a ]
  | b[ a g fis ]
  | e[ e' b dis ]
  %30
  | e[ g, a fis ]
  | g[ e' gis, e' ]
  | a,[ c d b ]
  | c16[ b a c ] b[ a g b ]
  | a[ g fis a ] g[ fis e d ]
  %35
  | \stemDown c[ b a c ] b4
  | e~ e16[ dis e fis ]
  | gis8[ b gis e ]
  | a a,4 b8
  | cis![ e cis a ]
  %40
  | d d,4 e'8
  | fis[ e dis b ]
  | e[ a, a' cis ]
  | d[ cis b g ]
  | a[ g fis e ]
  %45
  | d[ e fis g ]
  | a[ b cis a ]
  | d[ fis, g a ]
  | d,8. [ a'16 ] d4
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 936"
    title = \markup { "4. Kleines Präludium D-Dur" }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
