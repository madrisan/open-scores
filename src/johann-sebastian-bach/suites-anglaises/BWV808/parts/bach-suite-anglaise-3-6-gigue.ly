Global = {
  \key g \minor
  \time 12/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  \partial 8 d8
  %1
  | ees d c bes a g fis a d, c bes a
  | bes d g a, g' fis g bes a \stemUp\tieUp bes d c
  | d4.~ d8 e f e4.~ e8 f g
  | a g f g f e f g a d,4.~
  %5
  | d8 c bes c4.~ c4 d8 bes4 c8
  | a4 bes8 c4 d8 bes4 c8 d4.~
  | d4 e8 fis4. g a~
  | a g~ g8 f! e f4.~
  | f ees~ ees8 d c d4.~
  %10
  | d c~ c8 bes a bes4.
  | d8\rest a4 d8\rest a g a4. d8\rest e,! g
  | f4.~ f8 g a g4.~ g8 a bes
  | a d f g8\rest g e \stemNeutral\tieNeutral f a g a4.
  | a,8 cis b cis e d e4. e,8 g f
  %15
  | g bes a bes4. cis,8 e d e g f
  | g bes a bes a g cis bes! a d a g
  | e' a, g f g e f e d g e d
  | a' e d bes' e, d cis d e a, r a''
  | bes a g f e d cis e a, g f e
  %20
  | f a d e, d' cis d a fis d4
  }
  \break
  \repeat volta 2 {
  \partial 8 s8
  | s1*12/8*5
  %26
  | f'2.\rest f4.\rest d8\rest d\rest \stemUp g,
  | fis g a bes c d \stemNeutral ees! c g' a bes c
  | bes g d c' e, fis g d ees f c d
  | ees4. e\prall f8 c d ees bes c
  %30
  | d a bes c g a bes4 g'8 aes,4 f'8
  | g,4 ees'8 f,4 d'8 ees, f g d ees c
  | b c d ees f g aes f c' d ees f
  | g ees c f a, b ees c a d fis, g
  | c a fis bes d, ees a f d g bes, c
  %35
  | d4.~ d8 e fis g a bes c d ees
  | d4 bes'8 ees, d c bes4 g'8 c, bes aes
  | g4 ees'8 aes, g f ees c' ees, d c' bes
  | c, bes' a d, c' bes e, d' c fis, ees' d
  | g, c bes a bes g fis ees d g d c
  %40
  | a' d, c bes c \change Staff = "lower" \stemUp a bes a g c a g
  | d' a g ees' a, g fis g a bes \change Staff = "upper" \stemDown c d
  | \stemNeutral ees c g' a bes c d bes g c e, fis
  | g4 d'8  g f ees d c bes a g fis
  | g ees' d bes\prall a g g d bes g4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1*12/8
  | \change Staff = "lower" r2. r4. \change Staff = "upper" \stemDown d'8\rest d\rest g
  | bes a g f e d cis e \change Staff = "lower" \stemUp\tieUp a, g f e
  | f a d e, d' cis d4.~ d8 \change Staff = "upper" \stemDown\tieDown e f
  %5
  | e4.~ e8 fis g a g fis g fis e
  | fis e d e g fis g4.~ g8 a bes
  | a4.~ a8 bes c d c bes c bes a
  | bes2. a
  | g f
  %10
  | ees d4.~ d8 f e
  | f4 e8 d4.~ d8 cis b c4.
  | d~ d8 e f e4.~ e8 f g
  | a4. g s2.
  | s1*12/8*6
  | s2. s4. s4
  %20
  \partial 8 \change Staff = "lower" \stemUp a,8
  | fis g a bes c d ees c \change Staff = "upper" \stemDown g' a bes c
  | \stemNeutral\tieNeutral bes g d c' e, fis g e f e cis d
  | a'4.~ a8 g f g4.~ g8 f e
  | d e f e a g f e d bes'4.~
  %25
  | bes8 a g a g fis g4 ees'8 f,4 d'8
  | \stemDown\tieDown ees, d c d c bes c4 a'8 bes,4 c8
  | d4.~ d8 \change Staff = "lower" \stemUp\tieUp c bes c4.~ c8 bes a
  | g4. a8 bes c bes4. b^\prall
  | c4 s8 s4. s2.
  %30
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  \partial 8 r8
  %1
  | R1*12/8
  | s1*12/8*4
  %6
  | r4. r8 r d ees d c bes a g
  | \stemNeutral\tieNeutral fis a d, c bes a bes d g a, g' fis
  | g bes a bes d c d4.~ d8 a d,
  | ees g f g bes a bes4.~ bes8 f bes,
  %10
  | c ees d ees g f g4.~ g4 cis,8
  | d4 c8 bes4.^\prall a r8 r a'
  | bes a g f e d cis e a, g f e
  | f a d e, d' cis d4.~ d8 f e
  | f a g a4. a,8 cis b cis e d
  %15
  | e4.~ e8 g f g4.~ g8 bes a
  | bes g f e f g a,4 r8 b4 r8
  | cis4 a8 b4 cis8 d4 r8 e4 r8
  | f4 r8 g4.~ g8 f e f cis' d
  | g, cis d gis, cis d a cis d e d cis
  %20
  | d f, g a g a d, fis a d4
  }
  \repeat volta 2 {
  \partial 8 b,8\rest
  | R1*12/8
  | r2. r4. r8 r d,
  | cis d e f g a bes g d' e f g
  | f d a g' b, cis d4.~ d8 c bes
  %25
  | c4.~ c4 d8 ees d c d c b
  | c4 a'8 bes,4 g'8 a g fis g f ees
  | \stemDown\tieDown d e fis g4.~ g8 a bes fis4.
  | g4 ees8 c4 d8 g2.
  | c8 g a bes! f g a4 f8 g4 a8
  %30
  | \stemNeutral\tieNeutral bes fis g a e fis g d ees f c d
  | ees b c d a b c d ees f g aes
  | g a b c, d ees f g aes b, c d
  | ees4 aes8 d,4 g8 c,4 r8 r r bes'
  | a4. r8 r g f4. r8 r ees
  %35
  | fis, g a bes c d ees c g' a bes c
  | bes g d c' e, fis g d bes aes' c, d
  | ees bes g f' a, b c4 r8 g4 r8
  | e4 r8 fis4 r8 g4 r8 a4 r8
  | bes4 r8 c4 r8 d4 r8 e4 r8
  %40
  | fis4 d,8 \stemDown e4 fis8 g4 g8\rest a4 g8\rest
  | bes4 b8\rest c4 b8\rest d e fis g, a bes
  | \stemNeutral c d ees fis, g a bes4 ees8 a,4 d'8
  | ees d c bes a g fis a d, c bes a
  | bes g' c, d c d g, bes d g4
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
    opus = ##f % "BWV 808"
    title = \markup { "Gigue" }
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
