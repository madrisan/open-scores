Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | r16 d[ e fis] g[ fis g a] b[ a g b]
  | a[ g fis e] d[ e fis g] a[ fis e d]
  | g[ fis e d] cis[ d e fis] g[ b a g]
  | fis[ e d cis] d[ a d e] fis[ d fis a]
  %5
  | d[ b a b] g[ b a b] d,[ g fis g]
  | e[ g d g] c,[ g' b, g'] a,[ g' b, g']
  | c,[ g' b, g'] c,[ fis e fis] d[ fis c fis]
  | b,[ g' fis e] d [ c b a] g8 r8
  | b''8 r g, r b'4
  %10
  | a8 r fis, r a'4
  | g16[ fis e dis] e[ g d g] cis,[ g' b, g']
  | cis,[ g' e g] a,8[ g' fis g \turn]
  | a[ e, fis fis' g a]
  | b[ fis, e g' a b]
  | e,[ g, \clef "bass" a, e' cis a]
  | fis[ \clef "treble" d' fis a] d4
  }
  \break
  \repeat volta 2 {
  | fis8 r d, r fis'4 \downmordent
  | g8[ d16 g] a8[ d,16 a'] b8([ g)]
  | e[( c) a( g')] fis32[ e dis16 e8~]
  %20
  | e[ dis \prall ] r \clef "bass" a,[ g \prallprall fis]
  | e r \clef "treble" e'' r \clef "bass" d,,4 \downmordent
  | c8 r \clef "treble" e'' r \clef "bass" a,,,4 \prallmordent
  | b8 r \clef "treble" g'''[ fis e dis]
  | e r \clef "bass" e,,4 ~ e16[ d! c b]
  %25
  | c[ e d e] a[ e d e] c'[ a g a]
  | fis'[ a, g a] \clef "treble" g'[ d c d] b'[ g fis g]
  | e'[ d c d] fis[ d c d] g[ d c d]
  | a'[ d, c b] c[ b a g] fis[ a' g fis]
  | g8[ b,] r \clef "bass" f,[ e d]
  %30
  | c16[c' b c] \clef "treble" d[ c e c] fis[ c g' c,]
  | a'[ c, b a] b8[ d' \clef "bass" d,, \clef "treble" c'']
  | b16[ g d g] b[ g d' b] g'4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  \repeat volta 2 {
  | g8 r \clef "treble" b' r \clef "bass" g,4
  | fis8 r \clef "treble" a' r  \clef "bass" fis,4
  | e8 r \clef "treble" g' r \clef "bass" e,4
  | d8 r \clef "treble" fis' r \clef "bass" d,[ c]
  %5
  | b r \clef "treble" d'' r \clef "bass" b,,4
  | c8 r \clef "treble" e'' r \clef "bass" c,,4
  | d8 r \clef "treble" a'' r \clef "bass" d,,4
  | g,8 r \clef "treble" b''4~ b16[ a g fis]
  | g[ b cis d] e[ fis e d] cis[ b a g]
  %10
  | fis[ a b cis] d[ e d cis] b[ a g fis]
  | e8[ fis g b] e4~^\mordent
  | e8[ d] cis16[e b e] a,[ e' g, e']
  | fis,[ e' d cis] d[ a d, d'] e,[ d' fis, d']
  | g,[ e' d cis] d[ b e, d'] fis,[ d' g, d']
  %15
  | a[ d cis b] cis[e a, cis] e,[ g fis e]
  | fis[a d, fis] \clef "bass" a,[ d fis, a] d,4
  }
  \repeat volta 2 {
  | \clef "treble"
    r16 d''[ c b] a[ g fis e] d[ c' b a]
  | b[ g fis e] d[ c b a] g[ g' a b]
  | c[ d e d] c[ b a g] a[ b c a]
  %20
  | b[ a b fis] b,[ cis dis e] fis[ g a fis]
  | g[ b g e] g[ b g e] g [ b g e]
  | a[ c a e] g[ c g e] fis [ c' fis, e]
  | g[ b g e] b[ b' a b] g [b fis b]
  | g[ e g b] e[ b g b] e,8 r \clef "bass"
  %25
  | e r c, r e'4
  | d8 r b, r d'4
  | c8 b a g fis e
  | fis[g16 a] d,4~ d16[c' b a]
  | b[ g fis g] a[ g b g] c[g d' g,]
  %30
  | e'8[ g,] r b[ a  g]
  | fis16[ \clef "treble" d' e fis] g[ d b g] a[ c g' fis]
  | g8[ \clef "bass" g, d b] g4
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
    title = \markup { \smallCaps "Variatio 5 a 1 ovvero 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=120 }
}
