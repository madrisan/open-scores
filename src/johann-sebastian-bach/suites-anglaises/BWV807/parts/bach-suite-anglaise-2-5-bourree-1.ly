Global = {
  \key a \minor
  \time 2/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIBourreeI
  \repeat volta 2 {
  \partial 4 a'4
  %1
  | e4\prall d8 e f4 e8 d
  | e4 a, a a'
  | e4\prall d8 e f4 e8 d
  | e4 d8 c d4 c8 d
  %5
  | e4 d8 c d4 c8 b
  | c4 b8 c d4 c8 d
  | e8 d c e d c b c
  | d c b c a c b d
  | c b a e' c b a e'
  %10
  | c b a d c b a d
  | b a g d' b a g d'
  | b a g c b a g c
  | a g fis c' a g fis c'
  | a g fis b a g fis b
  %15
  | g4\prall fis8 g a4 g8 fis
  | g fis e fis g a b fis
  | g a fis g a g fis a
  | g e g b g b e b
  | e g e g a g fis e
  %20
  | fis e dis b' fis e dis b'
  | g fis e b' g fis e b'
  | dis, cis b b' dis, cis b dis
  | e4 fis b, dis\trill
  | \alternative {
      { \partial 2. e2. }
  %25
      { \partial 2. e2. }
    }
  }
  \break
  \repeat volta 2 {
  \partial 4 b4
  | b\prall a8 b c4 b8 c
  | d4 c8 b a gis f'4
  | e4 d8\prall c d4 c8\prall b
  %30
  | d c b c a b c d
  | e f d e f g e f
  | g a g f e d cis bes'
  | a g f a g f e f
  | g f e f d f e g
  %35
  | f e d a' f e d c
  | bes a g d' bes a g f'
  | e d c g' e d c bes
  | a g f c' a g f a
  | bes c d f e f g b,!
  %40
  | cis d e g f g a cis,
  | d4.\turn e8 e4.\prallprall d8
  | d2. c8 d
  | f4 d8 e f4 e8 d
  | e4 d8 c d4 c8 d
  %45
  | e4 d8 c d4 c8 b
  | c4 b8 c d4 c8 b
  | c4 b8\prall a b4 a8 b
  | c4 b8\prall a b4 a8\prall gis
  | a4 f'8 e d[ c b a]
  %50
  | gis a b gis e4 b'
  | c8 d e a, cis d e a,
  | d e f a, dis e fis a,
  | e' fis g b, e fis gis b,
  | f'! g! a c, fis g a c,
  %55
  | g' a b d, gis a b e,
  | a b c gis a e f d
  | e4. f8 b,4.\trill a8
  | a2.
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 a8 b
  %1
  | c a c a d a d a
  | c a d a c a b a
  | c a c a d a d a
  | c a c a b a b a
  %5
  | gis b fis b gis b e, gis
  | a e a e b' e, b' e,
  | c' e, a e b' e, gis e
  | a4 e c e
  | a, c e g
  %10
  | fis a d, fis
  | g, b d fis
  | e g c, e
  | fis, a c e
  | dis fis b, dis
  %15
  | e8 b e b dis b dis b
  | e4 b e, dis'
  | e8 b e b dis b dis b
  | e4 b e g
  | e g b e
  %20
  | dis b dis b
  | e b e, g
  | a g a fis
  | g a b b,
  | \alternative {
      { \partial 2. e'8[ f! e d] c[ b]  }
  %25
      { \partial 2. e,4 b e, }
    }
  }
  \repeat volta 2 {
  \partial 4 e'8 fis
  | gis e gis e a e a e
  | b' e, b' e, c' e, d' e,
  | c' e, a e b' e, gis e
  %30
  | a4 e a,8 e' a b
  | cis a cis a d a d a
  | e' a, e' a, f' a, g' a,
  | f' a, d a e' a, cis a
  | d4 a f a
  %35
  | d, d, e f
  | g g' a bes
  | c c,, d e
  | f c' f d
  | g f g e
  %40
  | a g a f
  | bes g a a,
  | d8 e f e d c b a
  | g a b c d e f g
  | c, c' b a g f e d
  %45
  | c c' b a gis b a gis
  | a e gis a b e, fis gis
  | a a' gis fis e d c b
  | a g! f! e d c d e
  | f4 e f d
  %50
  | e2~ e8 d c b
  | a4 a'2 g4
  | f d b' a
  | g e e'2~
  | e4 d8 c d b c a
  %55
  | b4 f'! e d
  | c8 b a b c a d b
  | c gis a d, e4 e,
  | << { \stemDown a2. } \\ { f'4\rest \stemUp e a } >>
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
    opus = ##f % "BWV 807"
    title = \markup { "Bourrée I" }
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
