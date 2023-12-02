Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

staffLower = \change Staff = "lower"
staffUpper = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g16 fis g8~ g16 d e fis g a b cis
  | d cis d8~ d16 a b cis d e fis d
  | g fis g8^~ g16 fis e d cis e a, g
  | fis e d cis d fis \staffLower\stemUp a, g fis a d,8
  %5
  | \staffUpper\stemNeutral b''8\rest d16[ c16 d8 g,8 b,8 d'8]
  | b8\rest e16[ d16 e8 a,8 c,8 e'8]
  | b8\rest fis'16[ e16 fis8 d8 a'8 c,8~]
  | c8 b8 b16\rest g b d g d g a
  | b g d b g b d g b g fis e
  %10
  | a e cis a fis a cis e a fis e d
  | g d b g e g b d g fis e d
  | cis g e cis a cis e g cis e d cis
  | d8 \clef "bass" fis,, fis \clef "treble"  a' d fis
  | b, \clef "bass" g, g \clef "treble" b' e g
  %15
  | cis,16 e a, g fis a d fis g e d cis
  | fis d cis b a g fis e d4
  }
  \break
  \pageBreak
  \repeat volta 2 {
  | fis'16 g a8~ a16 b a g fis e d c
  | b c d8~ d16 e d c b a g fis
  | e gis a b a e a b c a dis e
  %20
  | fis e dis cis \stemUp\tieUp b2~
  | b16 dis e8~ e16 dis, e8~ \stemDown e16 \staffLower\stemUp dis, e8
  | \staffUpper a''16\rest gis a8~ a16 gis, a8~ a16 gis,16 a8_~
  | a16 b c fis b, dis e g fis e dis a'
  | g fis e dis \stemDown e g \staffLower\stemUp b, a g b e,8
  %25
  | \staffUpper\stemNeutral b''8\rest e c e a a,
  | b\rest d b d g g,
  | c16 a e c a c e a c a c e
  | fis c a fis d fis a c fis c fis a
  | b g d b g b d g b f b d
  %30
  | e, d' c e, d c' b d, c e fis g
  | a c, b a b d b g c a g fis
  | b g fis e d c b a g4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g8[ b'16 a b8 g g, g']
  | fis,[ fis'16 e fis8 d fis, d']
  | e,[ e'16 d e8 g a, cis']
  | d,[ fis16 e fis8 d] \stemDown d, f16\rest c'
  %5
  | \stemNeutral\tieUp b a b8~ b16 d e fis g a b g
  | c, b c8~ c16 e fis g a b c a
  | d, cis d8~ d16 a' b c! d e fis d
  | g fis g d b d g, b d, g b, d
  | g,8[ g' b g g, g']
  %10
  | fis,[ fis' a fis fis, fis']
  | e,[ e' g e e, g']
  | a, e' g e a, g'
  | fis16 a d fis a fis d a fis a d, fis
  | g b d g b g d b g b e, g
  %15
  | a8[ cis] d16[ a fis d] a'8[ a,]
  | d,16 d' e fis g a b cis d4
  }
  \repeat volta 2 {
  | d,,8[ fis'16 e fis8 d d, fis']
  | g,[ b'16 a b8 g g, b']
  | c,[ c'16 b c8 fis, a c]
  %20
  | a fis dis16 b dis fis b dis \staffUpper fis a
  | \stemDown g8. fis16 g8.[ \staffLower\stemNeutral fis,16] g8. b,16
  | c8.[ \staffUpper\stemDown b''16] c8.[ \staffLower\stemNeutral b,16] c8. e,16
  | dis8[ a' g ais, b fis']
  | e[ g16 fis g8 e] \stemDown e, g16\rest d'
  %25
  | \stemNeutral c16 e a c e c a e c e d c
  | b d g b d b g d b d c b
  | a8[ c e g fis e]
  | d[ fis a c b a]
  | g[ b d f e d]
  %30
  | c[ e fis gis a g]
  | fis[ d g g, d' d,]
  | g16 g, a b c d e fis g4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    title = \markup { \smallCaps "Variatio 1 a 1 Clav." }
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
  \midi { \tempo 4=82 }
}
