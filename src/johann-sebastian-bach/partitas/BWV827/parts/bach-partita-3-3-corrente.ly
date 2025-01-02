Global = {
  \key a \minor
  \time 3/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaIIICorrente
  \repeat volta 2 {
  \partial 4 r16 d c b
  %1
  | c8. e16 a8. e16 b'8. d,16
  | c e fis gis a8. e16 b'8. d,16
  | c a b c d e f e d c b a
  | gis a b gis e2~
  %5
  | e16 d c b c a c e a gis fis e
  | c' b a g f d f a d cis b a
  | f' e d c b g b d g fis e d
  | b' a g f e c e g c b a g
  | a8. d,16 e d cis d e d cis d
  %10
  | g8. b,16 c2~\mordent
  | c8. b16 c b a b c b a b
  | e8. gis,16 a2~\mordent
  | a16 d e f e d c b a gis a b
  | e, b' gis f! e c' a f e d' b f
  %15
  | e c' a f e b' gis f! e c' a f
  | e d' b f e c' a f e b' gis f!
  | e8. c'32 d d4.\prallprall c16 d
  | e4~ e16 d c b c e c a
  | gis b gis e d f e d c e c a
  %20
  | << {
      gis16 b e8^~ e4
    } \\ {
      \mergeDifferentlyDottedOn
      s16 b8.~ b4
    } \\ {
      \stemDown\tieDown
      \shape #'((0 . -0.4) (0 . -1) (0 . -0.4) (0 . -0.4)) Tie
      gis4~ \once\override NoteColumn.force-hshift = #0 gis
    } >>
  }
  \pageBreak
  \repeat volta 2 {
  \partial 4 r16 b' c a
  | gis8. e16 b'8. d,16 e8. b16
  | c16 e f d e8. a16 gis8. d'16
  | c16 e a g f e d c b a gis fis
  | e d' c b c2~\mordent
  %25
  | c16 b a g a f a c f e d c
  | d c b a b g b d g f e d
  | e d c b c a c e a g f e
  | d c b a g b c d c b a g
  | c8. f,16 g f e f g f e f
  %30
  | b8. d,16 e2~\mordent
  | e8. d16 e d c d e d c d
  | g8. b,16 c2~\mordent
  | c16 f g a g f e d c b c d
  | g,8. b16 c8.\mordent g16 d'8.\mordent g,16
  %35
  | e'8. g,16 d'8. g,16 e'8. g,16
  | f'8. g,16 e'8. g,16 f'8. g,16
  | g'16 e f g a f e d b' g a b
  | c a g f d' b c d e c b a
  | f' d e f g e d c a' f g a
  %40
  | b,4~\prall b16 g a b c d e f
  | g f a g f e d c e d c b
  | c4~ c16 g c d e c d e
  | a, cis e g bes8. cis,16 d8. e16
  | f4~\mordent f16 a, d e f d e f
  %45
  | b, dis fis a c8. dis,16 e8. fis16
  | g4~\mordent g16 e fis gis a gis fis gis
  | a8. d,16 cis d e f g f g e
  | f d e f e c d e d b c d
  | c a gis a d e f e d c b a
  %50
  | gis fis gis fis e4~ e16 f' e d
  | c e gis a b, d fis g a, c e f
  | gis, b dis e fis, a e' cis gis b d b
  | c a f e b' gis e d a' fis dis c!
  | b a' gis fis e gis b d c8.\prall b16
  %55
  | e8. b16 c8.\mordent a16 e8. gis16
  | << {
      a4^~ a
    } \\ {
      a8 e16 c~ c4
    } \\ {
      s8 e8~ \stemDown \once\override NoteColumn.force-hshift = #0 e4
    } >>
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 r4
  %1
  | a8 r c r e r
  | r16 gis a b c e d e gis,! e' d e
  | a, c d e f8. gis,16 a8. f16
  | e4~ e16 gis b gis e gis d gis
  %5
  | c,8. e16 a,8. b16 c8. e16
  | a8. a,16 d8. e16 f8. a16
  | d8. d,16 g8. a16 b8. d16
  | g8. g,16 c8. d16 e8. c16
  | f8. f,16 f'8. f,16 f'4~
  %10
  | f16 d e f e d c b a g f e
  | d8. d,16 d'8. d,16 d'4~
  | d16 b c d c b a g! f e d c
  | b8. gis'16 a8. c,16 f8. d16
  | e4 r8 r16 a' gis8. d'16
  %15
  | c4 r8 r16 b16 c8. a16
  | gis4^\prallprall r8 r16 a gis d' b gis
  | a c a e f4.^\prallprall e16 f
  << {
  | \stemDown e gis b gis e2_~
  | e16 gis b gis e2
  %20
  | e,4\rest e
  }
  \new Voice {
  | \stemUp s4 c''8\rest d16\rest gis,! a8. c16
  | b4 c8\rest d16\rest gis,! a8. fis16
  | e2
  }
  >>
  }
  \repeat volta 2 {
  \partial 4 r4
  | \stemNeutral e,8 r e' r gis r
  | r16 gis a b c e, d c b d c b
  | a8. c16 d8. f!16 gis8. b16
  | e16 e, fis gis a c e c a c g c
  %25
  | f,4~ f16 e d c d8. f16
  | b,8. d16 g8. f16 e8. g16
  | c,8. e16 a8. g16 f8. a16
  | b,16 e' d c b d e f g, d' c b
  | e8. a,,16 a'8. a,16 a'4~
  %30
  | a16 f g a g f e d c b a g
  | f a g f f'8. f,16 f'4~
  | f16 d e f e d c b a g f e
  | d8. b'16 c8. g16 a8. f16
  | g16 f' e d g, e' d c g d' c b
  %35
  | g c b a b g a b c g b c
  | d g, a b c e d c b a g f
  | e8. e'16 f8. f,16 g8. g'16
  | a8. a,16 b8. b'16 c8. c,16
  | d8. d'16 e8. e,16 f8. f'16
  %40
  | g, b d f e8. g,16 f8. d'16
  | c8. e,16 a8. f16 g8. g,16
  | c16 c, e g c4^~ c16 e f g
  | cis, e g8~ g16 e f g f e d cis
  | d16 d, f a d4~ d16 f g a
  %45
  | dis, fis a8~ a16 fis g a g fis e dis
  | e16 e, g b e4~ e16 c d e
  | f e f g a b cis d e8. a,16
  | d8. a16 c8. a16 b8. e,16
  | a8. c,16 f8. gis,16 a8. f16
  %50
  | e4~ e8 fis16 gis a b c d
  | e8. e,16 e'8. e,16 e'8. e,16
  | e'8. e,16 e'8. e,16 e'8. e,16
  | e'8. c16 d8. b16 c8. a16
  | d,4~ d16 e fis gis a gis a b
  %55
  | c b c d e d c d e8. e,16
  | << { \stemDown a2 } \\ { \stemUp f'4\rest a } >>
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
    opus = ##f % "BWV 827"
    title = \markup { "Corrente" }
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
    \tempo 4 = 110
  }
}
