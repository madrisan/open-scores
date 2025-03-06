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
  | c8 s4. s2
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
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*41
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
