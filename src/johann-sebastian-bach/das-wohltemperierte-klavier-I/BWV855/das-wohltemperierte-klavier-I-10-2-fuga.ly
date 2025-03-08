Global = {
  \key e \minor
  \time 3/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \highlightSubject { e16 g b e  dis e d e  cis e c e
  | b16 e dis e  ais, cis g fis  g ais fis e
  | \unHighlightSubject d!8 } b' r16 fis' g fis  e d cis e
  | d4~ d16 cis b ais  b cis ais b
  %5
  | cis16 fis, ais cis  e ais, cis e  g fis e g
  | fis16 e d cis  b ais gis fis  d'4~
  | d16 e, gis b  d gis, b d  f e d f
  | e16 d c b  a gis fis e  c'4~
  | c16 a d, e  fis g a b  c d e fis
  %10
  | g16 fis a g  fis e d c  b g' a, fis'
  | \highlightSubject { g,16 b d g  fis g f g  e g es g
  | d16 g fis! g  cis, e! bes a  bes cis! a g
  | \unHighlightSubject fis8 } d' r16 a' b! a  g fis e g
  | fis4~ fis16 e d cis  d e cis d
  %15
  | e16 d cis b  a gis e' d  cis b a g
  | fis8 d fis a d fis,
  | d'16 c! b a  g fis d' c  b a g f
  | e8 c e g c e,
  | e'16 d c b  a gis e' d  c b a gis
  %20
  | a16 c e a  r e f e  d c b d
  | c4~ c16 b a gis  a fis dis b'
  | \highlightSubject { e,16 g! b e  dis e d e  cis e c e
  | b16 e dis e  ais, cis g fis  g ais! fis e
  | \unHighlightSubject dis8 } b' r16 b' c! b  a g fis a
  %25
  | g4~ g16 fis e dis  e fis d e
  | cis8 a' r16 a bes a  g f e g
  | f4~ f16 e d cis  d e c d
  | b!8 g' r16 a, b c  d e f d
  | e16 d g f  e d cis bes  a bes g a
  %30
  | f8 d' r16 a' bes a  g f e g
  | f4~ f16 e d c  d c d e
  | \highlightSubject { a,16 c e a  gis a g a  fis a f a
  | e16 a gis a  dis, fis c b  c dis! b a
  | \unHighlightSubject gis8 } e gis b e gis,
  %35
  | e'16 d cis b  a gis e' d  cis b a g
  | fis8 d fis a d fis,
  | d'16 c b a  g fis d' c  b a g fis
  | b16 a g fis  e dis b' a  g fis e dis
  | \highlightSubject { e16 g b e  dis e d e  cis e c e
  %40
  | \unHighlightSubject b16 } a g c  b a b gis  a g a fis
  | g16 fis g a  dis, fis c b  c dis! b a
  | gis32_( b e16) r8 r4 r4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R2.*2
  | \highlightSubject { b16 d fis b  ais b a b  gis b g b
  | fis16 b ais b  eis, gis d cis  d eis cis b
  %5
  | \unHighlightSubject ais8 } fis' r16 fis' g fis  e d cis e
  | d4~ d16 cis b ais  b cis a b
  | gis,8 e' r16 e' f e  d c! b d
  | c4~ c16 b a gis  a b g a
  | fis,8 d' r16 e fis g  a b c a
  | b16 a c b  a g fis e  d e c d
  | b8 g' r16 d' e d  c b a c
  %10
  | b4~ b16 a g fis  g fis g a
  | \highlightSubject { d,16 fis a d  cis d c d  b d bes d
  | a16 d cis d  gis, b f e  f gis! e d
  | \unHighlightSubject cis8 } a cis e a cis,
  | a'16 g fis e  d cis a' g  fis e d c
  %15
  | b8 g b d g b,
  | g'16 f e d  c b g' f  e d c b
  | e16 d c b  a gis e' d  c b a gis
  | \highlightSubject { a16 c e a  gis a g a  fis! a f a
  | e16 a gis a  dis, fis c b  c dis! b a
  %20
  | \unHighlightSubject g!8 } e' r16 b' c b  a g fis a
  | g4~ g16 fis e dis e  fis dis e
  | fis16 b, dis fis  a dis, fis a  c b a c
  | b16 a g fis  e dis cis b  g'4~
  | g16 a, cis e  g cis, e g  bes a g bes
  %25
  | a16 g f e  d cis b! a  f'4~
  | f16 d g, a  b c! d e  f g a b
  | c16 b e d  cis bes a g  f d' e, cis'!
  | \highlightSubject { d,16 f a d  cis d c d  b! d bes d
  | a16 d cis d  gis, b! f e  f gis! e d
  %30
  | \unHighlightSubject c8 } a' r16 e' f e  d c b d
  | c4~ c16 b a gis  a fis dis fis
  | b16 a gis fis  e dis b' a  gis fis e d
  | cis8 a cis e a cis,
  | a'16 g fis e  d cis a' g fis e d c
  %35
  | b8 g b d g b,
  | b'16 a g fis  e dis b' a  g fis e dis
  | e16 b g e  r b'' c b  a g a fis
  | g16 fis e e'  dis e d e  cis e c e
  | b8[ a] b r b, r
  %40
  | e,8 r r4 r
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
    opus = ##f % "BWV 855"
    title = \markup { "Fuga X " \char ##x007E " à 2" }
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
