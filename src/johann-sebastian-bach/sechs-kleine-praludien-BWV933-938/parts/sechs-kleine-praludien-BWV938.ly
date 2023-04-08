Global = {
  \key e \minor
  \time 3/8
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | r16 e[ g b g e]
  | e'8[ b e]
  | dis16[ b dis fis dis b]
  | b'8[ fis b]
  %5
  | g16[ fis e d! c b]
  | a[ c e g fis e]
  | fis[ e d c b a]
  | g[ b d f! d b]
  | e8[ fis\mordent g]
  %10
  | d4\mordent r8
  | g8[ fis\prall g]
  | a16[ b c8] r
  | b8[ a\prall g]
  \pageBreak
  | a[ c, b]
  %15
  | g'[ fis\prall e]
  | fis[ a, g]
  | e'\mordent[ fis16 e d cis]
  | fis8[ g16 fis e d]
  | cis[ e d cis b ais]
  }
  \alternative {
    { b4.\mordent }
    { b4.\mordent }
  }
  \break
  \repeat volta 2 {
  | r16 dis,[ fis a! fis dis]
  | c'!8[ b a~]
  | a16[ gis b d! b gis]
  %25
  | f'!8[ e d~]
  | d16[ c b a a'8~]
  | a16[ f! g a d,8~]
  | d16[ b a g g'8~]
  | g16[ e f! g c,8~]
  %30
  | c16[ f! b, e a, d]
  | g,[ c f,! b e, a]
  | gis[ a c b a gis]
  | a4\mordent r8
  | r16 e[ a gis a c]
  %35
  | fis,![ c' e, c' d, d']
  | b[ d, g! fis g b]
  | e,[ b' d, b' c, b']
  | a[ g fis a e a]
  | dis,[ a' e a fis a]
  %40
  | g[ b e dis e fis]
  | dis[ b cis dis e fis]
  | g[ fis g e a e]
  | fis[ c! b a g b]
  | e[ d e c fis c]
  %45
  | d[ a g fis e g]
  | c[ e, dis e fis g]
  | a[ b c a fis'8~]
  | fis16[ b, e g fis dis]
  }
  \alternative {
    { e4.\mordent }
  %50
    { e4.\mordent }
  }
  \override Score.TextMark.self-alignment-X = #CENTER
  \textEndMark \markup { \musicglyph "scripts.ufermata" }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | e8^\mordent[ e,] r
  | r16 e'[ g b g e]
  | b'8^\mordent[ b,] r
  | r16 b'[ dis fis dis b]
  %5
  | e8[ g e]
  | c[ a c]
  | d[ fis d]
  | b[ g b]
  | c16[ b a c g c]
  %10
  | fis,[ c' e, c' d, c']
  | b[ c a c g c]
  | fis,[ c' e, c' d, c']
  | g[ b fis b e, b']
  | fis[ b e, b' dis, b']
  %15
  | e,[ b' d,! b' cis, b']
  | d,[ b' cis, b' b, b']
  | cis,[ b' d, b' e, b']
  | d,[ b' e, b' fis b]
  | g8[ e fis]
  }
  \alternative {
    { b,16[ dis fis a! g fis] }
    { b,8[ fis' b] }
  }
  \repeat volta 2 {
  | b^\mordent b, r
  | r16 b[ dis fis dis b]
  | e8^\mordent e, r
  %25
  | r16 e'[ gis b gis e]
  | a[ a, b c d e]
  | f![ d e f g a]
  | b[ g a b c d]
  | e[ c d e f! g]
  %30
  | \clef treble a8[ g f!]
  | e[ d c]
  | \clef bass d[ e e,]
  | a16[ f! e d c b]
  | a8[ b c]
  %35
  | d[ e fis!]
  | g,![ a b]
  | c[ d e]
  | fis, g a]
  | b[ cis dis]
  %40
  | e[ c! a]
  | b8 r16 b'[ cis dis]
  | e8[ d! c!]
  | d[ fis, e]
  | c'[ b a]
  %45
  | b[ d, c]
  | a'[ b16 a g fis]
  | e16[ dis e dis cis b]
  | e8[ g, b]
  }
  \alternative {
    { e,16[ b' e fis g a] }
  %50
    { e,4. }
  }
  \tweak direction #DOWN
  \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 938"
    title = \markup { "6. Kleines Präludium e-Moll" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
