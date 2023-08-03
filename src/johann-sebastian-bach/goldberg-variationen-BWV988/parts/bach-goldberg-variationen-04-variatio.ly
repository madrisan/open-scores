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
  \stemUp\slurNeutral\tieUp
  \repeat volta 2 {
  %1
  | r8 b[ g]
  | d'[ a d]
  | g4.~
  | g8[ fis] r
  %5
  | R1*3/8*2
  | r8 a,[ c~]
  | c16[ a b8] r
  | r e[ g]
  %10
  | cis, a'4
  | d,8 g4~
  | g8[ fis e~]
  | e[ d c~]
  | c b4
  %15
  | a8[ d cis~]
  }
  \alternative {
    { cis8[ d ] d\rest }
    { cis8\repeatTie[ d] d\rest }
  }
  \break
  \repeat volta 2 {
  | f8\rest fis[ d]
  | g b4~
  %20
  | b8[ a16 g fis e]
  | dis[ e] fis4~
  | fis8[ e g]
  | cis,[ dis e~]
  | e[ dis16 cis b a]
  %25
  | g16\prall [ fis e8] d'\rest
  | d\rest d[ e]
  | a,[ b d]
  | g, c4~
  | c8[ d c]
  %30
  | b16[ c] d4~
  | d16[ c d c b a]
  | d8[ g, fis~]
  }
  \alternative {
    { fis[ g ] c\rest }
    { fis,\repeatTie[ g] c\rest }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s1*3/8
  | d8\rest d[ fis ]
  | b,[ g' c]
  | b16[ g a8] r
  %5
  | R1*3/8
  | c,8\rest c[ e]
  | a, d4~
  | d8[ g ] d\rest
  | R1*3/8
  %10
  | R1*3/8
  | e8\rest cis'[ e]
  | a,4 g8~
  | g[ fis a]
  | d,[ e g]
  %15
  | cis,[ a' g~]
  }
  \alternative {
    { g16[ e fis8] f\rest }
    { g16\repeatTie[ e fis8] f\rest }
  }
  \repeat volta 2 {
  | R1*3/8
  | r8 d'[ b]
  %20
  | g[ a c]
  | fis,4 f8\rest
  | f\rest b g
  | e fis g
  | fis4.
  %25
  | e4 e8\rest
  | e8\rest a c
  | fis, g b
  | e, a4~
  | a8 fis a~
  %30
  | a g b
  | e,4.
  | a,8 d c~
  }
  \alternative {
    { c16 a b8 b\rest }
    { c16\repeatTie a b8 b\rest }
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #6
  \override Rest.staff-position = #0
  \stemUp\tieUp
  \repeat volta 2 {
  %1
  | s4.*2
  | b8\rest b[ g]
  | d'4 d8\rest
  %5
  | b8\rest g[ b ]
  | e,[ a g~]
  | g[ fis16 e fis8]
  | g[ d ] a'\rest
  | R1*3/8
  %10
  | d8\rest d[ fis]
  | b,[ e] e\rest
  | c8\rest cis[ e]
  | a,4.~
  | a8[ g b]
  %15
  | e, fis e
  }
  \alternative {
    { d4 c'8\rest }
    { d,4 f'8\rest }
  }
  \repeat volta 2 {
  | \override MultiMeasureRest.staff-position = #8 R1*3/8
  | f8\rest d[ g]
  %20
  | e8 c4~
  | c8[ b16 a g fis]
  | g16[ a ] b4~
  | b8[ a b]
  | c8 b4~
  %25
  | b8[ g b ]
  | e,[ a16 g fis g]
  | d'4.
  | c8[ fis, a]
  | d,4.~
  %30
  | d4 g8~
  | g[ a c]
  | fis,[ g a]
  }
  \alternative {
    { g4 f'8\rest }
    { g,4 g8\rest }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override Rest.staff-position = #0
  \stemDown\tieDown
  \repeat volta 2 {
  %1
  | g4.
  | fis
  | e4.
  | r8 d[ fis]
  %5
  | b,4.
  | c
  | d
  | c8\rest b[ d]
  | g, g'4~
  %10
  | g8 fis4~
  | fis8[ e g]
  | cis,[ a' cis]
  | fis,4.
  | g8 g,4~
  %15
  | g8[ fis a]
  }
  \alternative {
    { d,8.[ d'16 e fis] }
    { d,8.[ a''16 b cis] }
  }
  \repeat volta 2 {
  | d4 c!8
  | b4 g8
  %20
  | c8 [ fis, a ]
  | b8 [ dis, b ]
  | e8 [ g e ]
  | a8 [ fis e ]
  | a8 [ b b, ]
  %25
  | e4 d8
  | c4.~
  | c8 b4~
  | b8[ a c]
  | fis,8[ d fis]
  %30
  | g[ b g]
  | c4.~
  | c8[ b d ]
  }
  \alternative {
    { g,8. a'16 b c }
    { g,4 g8\rest }
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
    title = \markup { \smallCaps "Variatio 4 a 1 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 11
    }
  }
  \midi { \tempo 4=76 }
}
