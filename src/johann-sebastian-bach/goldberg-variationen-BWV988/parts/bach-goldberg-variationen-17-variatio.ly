Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | b16[ d fis a] g8.[ c,16] b[ a g b]
  | a[ cis e g] fis8.[ b,16] a[ g fis a]
  | g[ b d fis] e8.[ a,16] g[ fis e g]
  | fis[ e fis e] fis[ a d cis] d[ fis a c,]
  %5
  | b[ g' a, fis'] g,[ e' f, d'] e,[ c' d, b']
  | c[ e, b' d,] a'[ c, g' b,] fis'![ a, e' g,] \clef "bass"
  | a[ fis' g, e'] fis,[ d' e, c'] d,[ b' c, a']
  | b,[ a b a] b[ d g fis] g8 r \clef "treble"
  | d''16[ b' c, a'] b,[ g' a, fis'] g,[ e' fis, d']
  %10
  | e,[ d' cis b] cis[ e a8] a\mordent r
  | b,16[ g' a, fis'] g,[ e' fis, d'] e,[ cis' d, b']
  | cis,[ b' a gis] a[ cis e8] e4~\prallmordent
  | e16[ d e cis] d[ b c a] b[ g a fis]
  | g[ e' fis, d'] e,[ cis' \once\stemUp \grace d32 cis16(b )] \once\stemUp \grace cis32 b16[( a) b g']
  %15
  | g8.[ fis32 e] fis16[ d b g] a[ fis g e']
  | fis,[ e fis e] fis[ a d cis] d8 r
  }
  \break
  \repeat volta 2 {
  | a'16[ fis g e] fis[ d e c!] d[ b c a]
  | b[ g a fis] g[ e fis dis] e[ c d b] \clef "bass"
  | c[ a b gis] a[ fis g e] f[ dis e cis]
  %20
  | dis[ cis dis cis] dis4~ dis16[ fis b a] \clef "treble"
  | g[ b a c] b[ dis cis e] dis[ fis e g]
  | fis[ a g b] a[ c b d] c[ e dis fis]
  | e[ g fis a] g[ b a c] b[ g a fis]
  | g[ e fis dis] e[ c b a] g[ fis e8~]
  %25
  | e16[ e' b d] c[ b a c] b[ d c e]
  | d[ b a c] b[ a gis b] a[ c b d]
  | c[ a g! b] a[ fis' g e] fis[ d e c']
  | c8~[ c32 b a g] fis16[ g a fis] \once\stemUp \grace e8 d4~
  | d16[ b c a] b[ g' a, f'] g,[ e' f, d']
  %30
  | e,8 r32 g[ a b] c16[ a b g] a[ fis g e ]
  | fis[ e' d8~] d32[ e fis g fis e d c] b16[ g' a, fis']
  | g,[ fis g fis] g[ b d fis] g8 r
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g16[ b a c] b[ d c e] d[ fis e g]
  | fis[ a g b] a[ \clef "treble" cis b d] cis[ e d fis]
  | e[ g fis a] g[ b a cis] b[ d cis e]
  | d[ cis d cis] d2~
  %5
  | d16[ b c a] b[ g a f] g[ e f d] \clef "bass"
  | e[ c d b] c[ a b g] a[ fis! g e]
  | fis[ d e c] d[ b c a] b[ g a fis]
  | g[ fis g fis] g4~ g16[ d' g fis] \clef "treble"
  | g[ b d fis] g8.[ a16] b[ cis d b]
  %10
  | cis[ b a g] fis[ e dis cis] \clef "bass" b[ a g fis]
  | e[ g b dis] \clef "treble" e8.[ fis16] g[ a b g]
  | a[ d, cis b] cis[ e a b] cis[ e g b,]
  | a[ fis' g, e'] fis,[ d' e, c'] d,[ b' c, a'] \clef "bass"
  | b,[ g' a, fis'] g,[ e' fis, d'] e,[ cis' d, b']
  %15
  | cis,[ a' b, g'] a,[ fis' g, e'] fis,[ d' e, cis'!]
  | d[ cis d cis] d[ a fis a] d,8 r
  }
  \repeat volta 2 {
  | d16[ fis a cis] d8.[ e16] fis[ g a fis]
  | g[ b, c d] g,8.[ fis'16] g[ a b gis]
  | a[ c, d e] a,8.[ gis'16] a[ b c ais]
  %20
  | b[ ais b ais] b[ fis g a]
    b,8[ \clef "treble" \once\override Voice.Script.padding = #0.5 dis'8^\turn]
  | e16[ g fis a] g[ fis e g] fis[ dis e cis] \clef "bass"
  | dis[ cis b d] c[ a b gis] a[ g fis a]
  | g[ e fis dis] e[ dis cis e] dis[ e fis dis]
  | e[ g, a b] e,[ fis g a] b[ c d b]
  %25
  | c[ e d f] e[ g fis a] gis[ b a c] \clef "treble"
  | b[ d c e] d[ f e gis] fis[ a gis b]
  | a[ c b d] c[ a b g] a[ fis g e]
  | fis[ d e cis] d[ b' c, a'] b,[ g' a, fis']
  | b,8 r32 d[ e fis] g16[ e f d] e[ c d b] \clef "bass"
  %30
  | g[ e f d] e[ c' d, b'] c,[ a' b, g']
  | a,[ g' fis c] b[ d g b] d[ b c a]
  | b[ a b a] b[ g d b] g8 r
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
    title = \markup { \smallCaps "Variatio 17 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=90 }
}
