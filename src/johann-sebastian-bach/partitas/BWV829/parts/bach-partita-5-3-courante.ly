Global = {
  \key g \major
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
    \partial 16*3 d16 e fis
  %1
  | g d b d g, b
  | d b g' d b' g
  | a fis d fis a, d
  | fis d a' fis c' a
  %5
  | b g d g c a
  | b g d g c a
  | b g a fis g e
  | fis d a d fis d
  | g d a' d, b' d,
  %10
  | e c g c e c
  | fis c g' c, a' c,
  | dis b fis b dis b
  | e b fis' b, g' b,
  | cis g' d g e g
  %15
  | fis d gis d b' d,
  | cis d e cis a g
  | fis a d a fis' d
  | gis( a) a,4~
  | a16 b cis a e' a,
  %20
  | fis'( g) a,4~
  | a16 b cis d e fis
  | g[ a b cis] d cis32 b
  | a16 g fis8-. e-. \prallmordent
  | d16 a gis b e, d'
  %25
  | cis a e d cis d
  | c' a fis d cis d
  | b' a g d cis d
  | a' g fis d cis d
  | g fis e d cis b
  %30
  | a cis e g cis e
  | \stemUp a8 d, cis
  | d8.
  }
  \repeat volta 2 {
    \partial 16*3 \stemNeutral r16 a'8
  | fis d cis
  | d e fis
  %35
  | g16 a a8.\prall g32 a
  | b4 b,8
  | e dis e
  | a c, b
  | g' a16 g fis e
  %40
  | dis8 b b'~
  | b g e~
  | e16 dis e dis cis b
  | a'8 fis dis~
  | dis16 cis e dis cis b
  %45
  | g'8 fis e
  | c' b a~
  | a16 g b a g fis
  | e4 g8
  | cis, a b
  %50
  | cis d e
  | fis d e
  | fis g a
  | b g a
  | b c d
  %55
  | e, fis g
  | a d, a'
  | b16 g d b d g
  | a fis dis b ais b
  | g' e b g b e
  %60
  | f d b g fis! g
  | e' d c b a g
  | fis a c d fis a
  | \stemUp d8 g, fis
  | g8.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  \partial 16*3 s8.
  | s1*3/8*30
  | e8\rest fis e
  | fis8.
  \partial 16*3 s8.
  | s1*3/8*30
  | g8\rest b a
  | b8.
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
    \partial 16*3 r16 r8
  %1
  | g'8 b d
  | b g r
  | fis a d
  | a fis r
  %5
  | g b d g b, d
  | g, c a
  | d d, c'
  | b a g
  | c c, b'
  %10
  | a g fis
  | b b, a'
  | g fis e
  | a b cis
  | d b e,
  %15
  | a a, a'~
  | a fis d~
  | d16 cis d cis b a
  | g'8 e cis~
  | cis16 b d cis b a
  %20
  | fis'8 e d
  | cis d e
  | fis g a
  | b e, gis
  | a a, g'
  %25
  | fis d fis
  | g b, e
  | fis a, d
  | e g, b
  | cis a' g
  %30
  | fis g, a
  | d,8.
  }
  \break
  \repeat volta 2 {
    \partial 16*3 a''16 b cis
  | d a fis a e g
  | fis a g b a c!
  %35
  | b d c e d fis
  | g d b d g, b
  | c b a b g b
  | fis a e a dis, a'
  | e g d g c, a'
  %40
  | b fis dis fis a, dis
  | g, b e b g' e
  | ais( b) b,4~
  | b16 cis dis b fis' b,
  | g'( a) b,4~
  %45
  | b16 cis dis e fis g
  | a b cis dis e dis
  | e8 g, b
  | \override Beam.positions = #'(4 . 4)
    e,16 b g b e, e'
    \revert Beam.positions
  | a, b cis a d a
  %50
  | e' a, fis' a, g' a,
  | d e fis d g d
  | a' d, b' d, c' d,
  | g a b g c g
  | d' g, e' g, f' g,
  %55
  | c d c b a g
  | \override Beam.positions = #'(4.5 . 2.5)
    fis e d c b a
  | \override Beam.positions = #'(4 . 4)
    g b d g fis e
    \revert Beam.positions
  | dis8 b dis
  | e,16 g b e d c
  %60
  | b8 g b
  | c, g' c~
  | c fis, a
  | b, c d
  | g,8.
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 829"
    title = \markup { "Courante" }
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
