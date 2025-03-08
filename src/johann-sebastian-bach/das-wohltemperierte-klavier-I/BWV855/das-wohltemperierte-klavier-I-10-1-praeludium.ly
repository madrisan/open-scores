Global = {
  \key e \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \label #'Praeludium10
  %1
  | e'2~ e8 fis32 e dis e  e8.\trill dis32 e
  | fis1~
  | fis16 e dis( e)  fis( e) g( fis)  a4~ a32 c b a  g16 a32 fis
  | g2~ g8 c16 b  c8 e,
  %5
  | fis2~ fis8 b~ b32 c b a  b g a b
  | e,2~ e16 c a b  c e d e32 c
  | d2~ d8 g~ g32 f e d c16 d32 b
  | c2~ c16 d e fis  g fis a c,
  | \appoggiatura c8 b2~ b8 b  c32 b a16 b32 a g16
  %10
  | e'8~ e32 fis e dis e8. fis16 fis4.\trill r16 e32 fis
  | g2~ g16 b, a g_~ g fis32 e dis16 e
  | c'8~ c32 b a b  c d c b c16 d d4.\trill r16 c32 d
  | e2~ e8 d16 c  d b gis a
  | d2~ d16 f e d  c8.\trill d32 b
  %15
  | c1~
  | c4~ c16 a gis a  c a gis a  e a gis a
  | c2~ c8 b  cis e16 dis
  | e1~
  | e8 dis16 fis  a c b dis,  e2~
  %20
  | e4~ e32 fis e dis e cis dis16 dis4.\trill e8
  | e1~
  | e~
  | e16 a b c  \stemNeutral b c b a  e a b c  b c b a
  | b16 a gis a  b a gis a  d,8 b'~  b16 a gis! a
  %25
  | f16 b, c d  c d c b  e d e f!  e f e d
  | c16 gis a b  a gis a b  c a' g! f  e f e d
  | cis16 e fis! g  fis g fis e  dis fis g a  g a g fis
  | g16 g, a b  a b a g  f' gis, a b  a b a gis!
  | e'16 a, b c  b c b a  d b c d  c d c b
  %30
  | c16 a gis a  e a gis a  c2~
  | c16 a gis a  dis, a' gis a  c a gis a  e a gis a
  | c16 fis, g! a  g fis eis fis  b e, fis g  fis e dis e
  | a16 g' a b  a b a g  a, fis' g a  g a g fis
  | ais,16 e' fis g  fis g fis e  \voiceOne dis2
  %35
  | r16 b c d  c d c b  a2
  | r16 g a b  a b a g  r fis g a  g a g fis
  | r16 e fis g  fis g fis e  dis2
  | \oneVoice b16 cis dis e  fis g a b  \voiceOne c!2
  | cis2 dis
  %40
  | e16 d! c b  a g fis e  c' b a g  fis e dis cis
  | dis16 b fis'8 d'16\rest e,8 dis!16  e2
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \mergeDifferentlyDottedOn
  %1
  | <g' b>8 r r4 q8 r r4
  | <a c>8 r r4 q8 r r4
  | q8 r r4 <b fis'>8 r r4
  | <b e>8 r r4 q8 r r4
  %5
  | <a c>8 r r4 <b d>8 r r4
  | <g b>8 r r4 <a c>8 r r4
  | <fis a>8 r r4 < g b>8 r r4
  | <e g>8 r8 r4 <fis! a>8 r r4
  | <d g>8 r r4 q8 r r4
  %10
  | <a' cis>8 r r4 <a dis!>8 r r4
  | <b e>8 r r4 <g b>8 r r4
  | <f a>8 r r4 <f b>8 r r4
  | <g c>8 r r4 <e g>8 r r4
  | <fis! a>8 r r4 <gis b>8 r r4
  %15
  | <e a>8 r r4 q8 r r4
  | <dis a'>8 r r4 <e a>8 r r4
  | <fis a>8 r r4 q8 r r4
  | <gis b>8 r r4 <ais cis>8 r r4
  | <fis a!>8 r r4 <g b>8 r r4
  %20
  | <g cis>8 r r4 <fis b>8 r r4
  | <g b>8 r r4 <gis b>8 r r4
  | <a c>8 r r4 <b d>8 r r4
  | c8_\markup{ \bold "Presto" } s4. s2
  | s1*10
  %34
  | s2 r16 a b c!  b c b a
  | g2  r16 fis g a  g a g fis
  | e2 dis
  | cis2  r16 a b c b c b a
  | s2  r16 fis' g a  g a g fis
  | r16 g a b  a b a g  r a b c  b c b a
  %40
  | g8 r r4 s2
  | s16 b,8.~ b8 a  <gis b>2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  %1
  | s1*37
  | s2 r16 dis! e fis e fis e dis
  | r16 e fis g fis g fis e  r fis g a g a g fis
  %40
  | e8 r r4 a,16 b c d e fis g a~
  | a8. a16 g8 fis s2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | e16 g a b  a b a g  e g a b  a b a g
  | e16 a b c  b c b a  e a b c  b c b a
  | dis,16 a' b c  b c b a  dis, a' b c b c b a
  | e16 g a b  a b a g  e g a b  a b a g
  %5
  | e16 fis g a  g a g fis  d! fis g a  g a g fis
  | d16 e fis g  fis g fis e  c e fis g  fis g fis e
  | c16 fis g a  g a g fis  b, g' a b  a b a g
  | b,16 e fis! g  fis g fis e  a, fis' g a  g a g fis
  | g,16 a' b c  b c b a  g b c d  c d c b
  %10
  | g16 cis d e  d e d cis  fis, dis' e fis  e fis e dis
  | e,16 fis g a  g a g fis  e g a b  a b a g
  | e16 a b c  b c b a  d, b' c d  c d c b
  | c,16 d e f  e f e d  c e f! g  f g f e
  | c16 fis! g a  g a g fis  b, gis' a b a b a gis
  %15
  | a16 b c d  c d c b  g! a b c  b c b a
  | fis!16 a b c  b c b a  e a b c  b c b a
  | dis,16 a' b c  b c b a  dis,! fis g! a  g a g fis
  | d!16 gis a b  a b a gis  cis, e fis g  fis g fis e
  | c!16 fis g a  g a g fis  b, e fis g  fis g fis e
  %20
  | ais,16 e' fis g  fis g fis e  b fis' g a!  g a g fis
  | e16 g a b  a b a g  d gis a b  a b a gis
  | c,16  a' b c  b c b a  gis b c d  c d c b
  | \stemNeutral a16 c d e  d e d c  a c d e  d e d c
  | a16 d e f  e f e d  a d e f  e f e d
  %25
  | gis,16 d' e f  e f e d  gis, b c d  c d c b
  | a16 b c d  c d c b  a b c d  c d c b
  | g!16 cis d e  d e d cis  fis, dis' e fis  e fis e dis
  | e16 e, fis g  fis g fis e  d! e f g!  f g f e
  | c16 fis! gis a  gis a gis fis  b, gis' a b  a b a gis
  %30
  | a16 a, b c  b c b a  g! a b c  b c b a
  | fis16 a b c  b c b a  e a b c  b c b a
  | dis,16 a' b c  b c b a  e! g a b  a b a g
  | c,4 r r16 a'' b c  b c b a
  | cis,4 r  b16 fis' g a  g a g fis
  %35
  | b,16 g' a b  a b a g  b, a' b c  b c b a
  | b,16 b' c d  c d c b  b, a' b c  b c b a
  | b,16 g' a b  a b a g  b, fis' g a  g a g fis
  | g16 b a g  fis e dis fis \stemDown b,2
  | b2 b
  %40
  | c8 g\rest g4\rest s2
  | b2 <e, e'>
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
      \Soprano
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
    opus = ##f % "BWV 855"
    title = \markup { "Praeludium X" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
