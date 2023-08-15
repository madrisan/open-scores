Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurDown
  \repeat volta 2 {
  %1
  | d16[ g b a] g[ b d c] b[ d g] r
  | d,[ fis a g] fis[ a c b] a[ d fis] r
  | b,,[ e g fis] e[ g b a] g[ cis e] r
  | a,,[ d fis e] d[ fis a g] fis[ a d8~]
  %5
  | d16[ b g a] b[ g d e] f[ d b] r
  | e'[ c a b] c[ a e fis] g[ e c] r
  | a''[ fis d e] fis[ d a b] c[ a fis c']
  | b[ g d fis] g[ d b c] d[ b g a]
  | b8[ b''16 a] g[ fis e d] cis[ e d e]
  %10
  | a,8[ a'16 g] fis[ e d cis] b[ d cis d]
  | g,8[ g'16 fis] e[ d cis b] a[ cis b d]
  | cis[ e a, b] cis[ a e fis] g[ e cis e]
  | d8[ fis a d] r16 c[ a fis ]
  | g8[ b d g] r16 g[ fis g]
  %15
  | a,8[ cis e g] r16 g[ a cis,]
  | d16[ fis a cis] d[ cis32 b a g fis e] d4
  }
  \break
  \pageBreak
  \repeat volta 2 {
  | a16[ d fis e] d[ fis a g] fis[ a c] r
  | d,,[ g b a] g[ b d c] b[ d f] r
  | e[ c a b] c[ a fis g] a[ fis dis e]
  %20
  | fis[ dis b cis] \clef "bass" dis[ b fis g] a[ fis dis fis]
  | g[ b e dis] \clef "treble" e[ g b a] g[ b e] r
  | e,[ a c b] a[ c e d] c[ e a] r
  | r c,[ b fis'] g[ dis e g,] fis[ e' dis a']
  | g\prall[ fis e8] r16 a,[ g fis] \appoggiatura fis8 e4~
  %25
  | e8[ e'16 d] c[ b a g] fis[ ais cis e]
  | d[ fis, d' c] b[ a gis fis] e[ gis b d]
  | c[ e, c' b] a[ c e d] c[ e a g]
  | fis[ a c b] a[ g fis e] d[ fis a c]
  | b[ d g, a] b[ g d e] f[ d b d]
  %30
  | e[ g c, d] e[ c a b] c[ a e g]
  | fis[ a d, e] fis[ d a b] c[ a fis a]
  | b[ d g, a] b[ g b d] g4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | g8[ d b g] r16 g'[ fis e]
  | fis8[ d a fis] r16 fis'[ e d]
  | e8[ b g e] r16 e'[ d cis]
  | d8[ a fis d] r16 c'[ b a]
  %5
  | b8[ d g b] r16 g[ f g]
  | c,8[ e a c] r16 a[ g a]
  | d,8[ fis a d] r16 d,[ c d]
  | g,8[ g' b, d] g, r8 \clef "treble"
  | g'16[ b d c] b[ d g fis] e[ g b] r
  %10
  | fis,[ a cis b] a[ cis fis e] d[ fis a] r \clef "bass"
  | e,[ g b a] g[ b e d] \clef "treble" cis[ e g fis]
  | e[ g cis b] a[ cis e d] cis[ e a g]
  | fis[ a d, e] fis[ d a b] c[ a fis a]
  | b[ d g, a] b[ g e fis] g[ e b d] \clef "bass"
  %15
  | cis[ e a, b] cis[ a e fis] g[ e cis e]
  | fis[ a d, e] fis[ d fis a] d4
  }
  \repeat volta 2 {
  | d8[ a fis d] r16 c'[ b a]
  | g8[ d b g] r16 f'[ e d]
  | c[ e a g] fis[ a c b] a[ c! dis c] \clef "treble"
  %20
  | b[ dis fis e] dis[ fis a g] fis[ a c a]
  | b[ g e fis] g[ e b dis]e[ b g b] \clef "bass"
  | c[ a e gis] a[ e c d] e[ c a c]
  | dis,8[ dis' e c a b]
  | e,[ g b e] r16 d[ c b]
  %25
  | c[ e g f] e[ g c b] ais[ cis fis] r
  | b,,[ d fis e] d[ fis b a] gis[ b e] r
  | a,,[ c e d] c[ a c e] a[ c fis, g]
  | a[ fis d e] fis[ d a b] c[ a fis d]
  | g8[ b d f] r16 f[ e d]
  %30
  | c8[ e g c] r16 c[ b c]
  | d,8[ fis a c] r16 c[ d fis,]
  | g[ b d fis] g[ fis32 e d c b a] g4
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 8 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 8
    }
  }
  \midi { \tempo 4=100 }
}
