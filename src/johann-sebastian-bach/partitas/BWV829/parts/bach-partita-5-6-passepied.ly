Global = {
  \key g \major
  \time 3/8
  \include "../../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaVPassepied
  \repeat volta 2 {
  \partial 8 d8
  %1
  | g4 \mordent g32 a b16
  | \appoggiatura b8 a4 g8
  | fis g e
  | d a' g
    \break
  %5
  | fis c' b
  | a e'='' d
  | c \prall b16 a d8
  | c16 b a g d8
  | g4 \mordent g32 a b16
  %10
  | \appoggiatura b8 a4 g8
  | fis g e
  | \stemNeutral d16 fis e d e fis
  | g e' d cis b a
  | gis a a'8 g
  %15
  | \stemUp fis d cis
  | d4
  }
  \break
  \repeat volta 2 {
  \partial 8 a'8
  | d,4 \mordent d32 e fis16
  | g4 a8
  | b a16 g fis g
  %20
  | a g fis e g8
    \break
  | \stemNeutral\slurDown \once\stemUp \appoggiatura c,='' b4 c32 d e16
  | g,4 g'8
  | \once\stemUp \appoggiatura c,8 b4 c32 d e16
  | g,4 f'8~
  %25
  | \stemUp f f e
  | c' fis,! g
  | a,16 b c8 b
  | \appoggiatura b8 a4 d8
  | g4 \mordent g32 a b16
  %30
  | e,=''4 d8
    \break
  | c b16 c d b
  | d c b a d b
  | \stemNeutral d c b a d b
  | d c b a c a
    \break
  %35
  | \override Beam.positions = #'(4 . 4)
    c b a g c a
    \revert Beam.positions
  | c b a g a b
  | e,4 fis32 g a16
  | d,4 d'8
    \break
  | g,4 \mordent fis32 g a16
  %40
  | d,='4 d'8
  | \stemUp\slurUp \appoggiatura c b4 c32 d e16
  | f4 g8
  | e f d
  | f16 e d c e c
  %45
  | \stemNeutral
    \override Beam.positions = #'(-3 . -3)
    e d c b d b
  | \override Beam.positions = #'(-4 . -4)
    d c b a c a
    \revert Beam.positions
  | d8 g, fis
  | g4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 8 s8
  %1
  | b8\rest b e~
  | e d4~
  | d8 e cis
  | d4.~
  %5
  | d4.~
  | d8 c' b
  | a g fis
  | g4 g,8\rest
  | a\rest b cis~
  %10
  | cis d4~
  | d8 e cis
  | s1*3/8*3
  %15
  | d8 fis e
  | fis4
  \partial 8 g8\rest
  | c,8\rest fis a
  | d, g fis~
  | fis e dis
  %20
  | e e\rest e\rest
  | s1*3/8*4
  %25
  | a8 b c~
  | c c b
  | a4 g8
  | fis4 d8\rest
  | d\rest d g~
  %30
  | g gis a~
  | a4 gis8
  | a d,\rest d\rest
  | s1*3/8*8
  %41
  | d8\rest f! e~
  | e e d
  | \staffLower\stemUp c \staffUpper\stemDown d' b~
  | b \staffLower\stemUp\tieUp b, a~
  %45
  | a a g~
  | g g fis
  | g b a
  | b4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 8 s8
  %1
  | s1*3/8*11
  | b4.
  | a
  | b4 cis8
  %15
  | s4.
  | s4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 g8
  %1
  | g'4.
  | fis4 g8
  | a4 a,8
  | b16 c'! b a b g
  %5
  | a, a' g fis g e
  | fis4 g8
  | c, d d,
  | g g' fis
  | e4.
  %10
  | fis4 b8
  | g4 a8
  | \stemDown\tieDown b b, cis~
  | cis cis d~
  | d d e
  %15
  | fis g a
  | d,4
  }
  \repeat volta 2 {
  \partial 8 d8
  | c'!4.
  | b4 a8
  | g a b
  %20
  | e, b' e16 c
  \repeat unfold 3 {
  | e d c b e c
  }
  | e d c b d b
  %25
  | c8 d, c
  | b a' g
  | fis d g
  | d16 d' c b c a
  | b4.
  %30
  | c4 f8
  | d e e,
  | a, a' gis
  | a c, b
  | a g' fis
  %35
  | g b, a
  | g r16 b' a g
  | c b a g c a
  | c b a g c a
  | c b a g c a
  %40
  | c b a g a fis
  | g4.
  | a4 b8
  | c f, g
  | \stemDown c,4.
  %45
  | b
  | a
  | b8 c d
  | g,4
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
    opus = ##f % "BWV 829"
    title = \markup { "Passepied" }
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
    \tempo 4. = 52
  }
}
