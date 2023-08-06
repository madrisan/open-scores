Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | \clef "bass" g8 r8 \clef "treble" g'''4.~ \upprall g16[ fis32 g]
  | a8 r  \clef "bass" fis,,4~\mordent fis16[ a g fis]
  | e8 r \clef "treble" e''8 ([ d8 ] cis8[ d16 e )]
  | fis,8 r \clef "bass" c,4.\upprall c16[ b32 c]
  %5
  | b8[ g b d g b,]
  | c[ e g c e, g]
  | fis[ a d, fis a c]
  | b[ g b d] g r
  | \clef "treble" r16 b'32[ a b16] r r e,32[ d e16] r r a,32[ g a16] r
  %10
  | r a'32[ g a16] r r d,32[ cis d16] r r g,32[ fis g16] r
  | r g'32[ fis g16] r r b,32[ a b16] r r e,32[ d e16] r
  | r \clef "bass" g,32[ fis g16] r r cis,32[ b cis16] r r g32[ fis g16] r \clef "treble"
  | r32 d''[ e fis a fis e d] r d[ e fis a fis e d] r d[ e fis a fis e d]
  | b'8-. r \clef "bass" f,-. r e-. r \clef "treble"
  %15
  | r16 e'32[ d e16 a32 g] a16[ d,32 cis d16 g32 fis] g16[ cis,32 b cis16 fis32 e]
  | fis16[ d cis d] fis32[ e d16 a'32 g fis16] d'8 r
  }
  \repeat volta 2 {
  | fis16[ a d a] fis[ a d, fis] a[ fis g a]
  | d,[ g b g] d[ g  b, d] g[ b, c d]
  | g,[ c e c] a[ c fis, a] c[ fis, g a]
  %20
  | dis,[ fis b fis] dis[ fis b, dis] fis[ dis e fis]
  | b,[ e g e] b[ e g, b] e[ dis e g]
  | c,[ f a f] c[ f a, c] f[ e f a]
  | dis,[ fis! a fis] dis[ fis b, dis] \clef "bass" fis,[ a g fis]
  | g[ b e b] g[ b e, fis] g[ e g b]
  %25
  | e r r e,32[ d! e16^.] r r c'32[ b c16^.] r r \clef "treble" a'32[ g]
  | a16_. r r \clef "bass" d,,32[ c d16_.] r r b'32[ a b16^.] r r \clef "treble" g'32[ fis]
  | g16_. r r \clef "bass" c,,32[ b c16_.] r r a'32[ g a16-.] r r \clef "treble" fis'32[ e]
  | fis16_. r r d'32[ c d16-.] r r g32[ fis g16-.] r r b32[ a]
  | b8-. r d,,_. r f_. r
  %30
  | r32 e[ f g c g f e] r fis[ g a c a g fis] r g[ a bes cis bes a g]
  | d'16-.[ c!32 b! c16-. b32 a] b16_.[ bes32 a bes16_. a32 g] a16_.[ d32 c d16_. g,32 fis]
  | g32[ a b c d c b a] g16[ b d, g] g,8 r
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral\slurNeutral
  \repeat volta 2 {
  | b16[ g d g] b[ g d' b] g[ b a g]
  | d'[ a fis a] d[ a \clef "treble" a' fis] d[ fis e d]
  | g[ e b e] g[ e b' g] e[ b' a g]
  | d'[ a fis a] d[ a a' fis] d[ fis e d]
  %5
  | g[ d b d] g[ d b' g] d[ f e d]
  | e[ c g c] e[ c g' e] c[ d c b]
  | a[ fis d fis] a[ fis d' a] fis[ a g fis]
  | g[ d b d] g[ d b' g] d'[ c b a]
  | g8 r16 g'32[ fis g16] r r cis,32[ b cis16] r r fis,32[ e]
  %10
  | fis16 r r fis'32[ e fis16] r r b,32[ a b16] r r e,32[ d]
  | e16 r r e'32[ d e16] r r g,32[ fis g16] r r cis,32[ b]
  | cis16 r r \clef "bass" e,32[ d e16] r r a,32[ g a16] r r fis32[ e]
  | fis8-. r \clef "treble" d'''^. r c^. r \clef "bass"
  | r32 g,[ a b d b a g] r g[ a bes d bes a g] r gis[ a b d b a gis]
  %15
  | a16[ cis32 b cis16 fis,32 e] fis16[ b32 a b16 e,32 d] e16[ a32 g a16 d,32 cis]
  | d32[ e fis g  a g fis e] d16[ fis a, d] d,8 r
  }
  \repeat volta 2 {
  | d'8 r \clef "treble" c'''!4.^\upprall~ c16[ b32 c]
  | b8 r f,4~\upmordent f16[ a g f]
  | e8 r fis'!8[( a] dis,[ e16 fis)]
  %20
  | b,8 r \clef "bass" a,,4.^\downprall~ a16[ g32 a]
  | g8[ e g b g e]
  | a[ a, a' c b a]
  | b[ dis  fis b] b,[ \clef "treble" e'16 dis]
  | e8[ g] b[ e16 dis e8] r8 \clef "bass"
  %25
  | r16 c,,32[ b c16_.] r r a'32[ gis a16^.] r r e'32[ d e16^.] r
  | r b,32[ a b16-.] r r g'32[ fis g16^.] r r d'32[ c d16^.] r
  | r a,32[ g a16-.] r r e'32[ d e16^.] r r c'32[ b c16^.] r
  | r \clef "treble" a'32[ g a16-.] r r fis'32[ e fis16^.] r r a32[ g a16^.] r
  | r32 g,[ a b d b a g] r g[ a b d b a g] r g[ a b d b a g]
  %30
  | c8^. r \clef "bass" a,^. r e^. r
  | fis16^.[ a32 g a16^. d32 c] d16^.[ g,32 fis g16^. c32 b!] c16^.[ fis,32 e fis16^. b32 a]
  | b16^.[ g fis g] b32[ a g16 d'32 c b16] g'8 r
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
    title = \markup { \smallCaps "Variatio 14 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
