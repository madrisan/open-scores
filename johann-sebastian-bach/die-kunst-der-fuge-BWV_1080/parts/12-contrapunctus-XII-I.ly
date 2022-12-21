Global = {
  \key d \minor
  \time 3/2
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  | \override MultiMeasureRest.staff-position = #0
    R1*3/2*9
  | \override MultiMeasureRest.staff-position = #2
    R1*3/2*4
  | a2 d1
  %15
  | c2 a1
  | \stemDown gis2 a b
  | \stemUp c2. d4 c bes!
  | a2. bes4 a g
  | f2. g4 f e
  %20
  | f g a2. b8 cis
  | d e f g a2~ a8 bes a g
  | f4 e d2. cis8 b
  | cis2 d2. e4
  | f2. g4 f ees
  %25
  | d1 r8 d e fis
  | g fis g a bes4 r r2
  | r r d,2~
  | d4 c bes a g fis!
  | \once\override NoteColumn.force-hshift = #0.2 g
    ees d1_~
  %30
  | d4 ees8 f g4 f ees d
  | \once\override NoteColumn.force-hshift = #0.2 c2~
    c8 d ees! c d bes c a
  | \change Staff = "lower"
    \stemUp\tieUp
    bes2~ bes8 c d ees!
    \change Staff = "upper"
    \stemUp\tieUp
    f2~
  | f f'8 ees d c d4 f
  | c8 bes a g f2~ f8 g f ees!
  %35
  | d e! fis g a1
  | bes8 a bes c d c d ees f ees d c
  | bes aes g aes bes4 bes2 c8 d
  | ees1.~
  | ees4 f8 g f4 ees d2~
  %40
  | d1~ d4 e!8 f
  | e d cis d cis4 d e2
  | a,4 a'2 g8 f e g f e
  | d cis d e f2~ f8 e f g
  | a g a bes a g f e d2~
  %45
  | d8 cis d e d c bes a b cis! d e
  | f e f g f e d cis d e f d
  | bes a bes c bes4 d bes d
  | g8 f g a g f e4~ e8 f e d
  | cis b cis d cis e e,4~ e8 f g a16 bes!
  %50
  | a1.~
  | a~
  | a~
  | a~
  | a4 g8 fis g a bes c d2~
  %55
  | d4 c bes a g8 a bes4
  | a1.\fermata
  \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  | s1*3/2*9
  %10
  | \stemUp d2 a'1
  | f2 d1
  | \stemDown cis2 d \stemUp e
  | f2. g4 f e
  | d2 r4 e f g
  %15
  | a2 r4 b c d
  | e d c b a gis
  | \stemDown a2. bes!4 a g
  | f2. g4 f e
  | d2. e4 d cis
  %20
  | d e f2. g8 e
  | f4 a d, a8 b cis4 d8 e
  | d4 cis d8 e f g a2~
  | a2. bes8 c bes2\trill
  | a4 d,2 ees4 d c
  %25
  | bes4. c16 bes a2 r
  | g'8 a bes c d2~ d8 ees d c
  | bes4 a g2. fis8 e
  | fis2 g2. a4
  | bes2. c4 bes a
  %30
  | g2. aes4 g f
  | ees2. g4 f ees
  | \stemUp\tieUp
    \shape #'((0 . 0) (0 . 1) (0 . 2.5) (-0.2 . 1)) Tie
    d2~
    \stemDown d8 ees f ees
    \change Staff = "lower"
    \stemUp\tieUp
    d ees d c
  | bes4 a8 g f2~
    f8 g
    \change Staff = "upper"
    \stemDown\tieDown
    a bes
  | c2 d8 ees d c
    \change Staff = "lower"
    \stemUp\tieUp
    bes2~
  %35
  | bes8 c d ees d4 c8 bes a4
    \change Staff = "upper"
    \stemDown\tieDown
    a'
  | g2 f2. g8 aes
  | g f ees f g f g aes g4 f
  | ees2 r8 a, g bes c d ees d
  | c4 a bes c d fis
  %40
  | g8 a bes c bes d a c bes4 g
  | a bes a f cis8 d e cis
  | d2~ d8 f e d
    \change Staff = "lower"
    \stemUp\tieUp
    cis2
  | d~ d8
    \change Staff = "upper"
    \stemDown\tieDown
    e f g a2~
  | a4 e f a bes4. a16 g
  %45
  | f8 e f g f e d2 cis4
  | d a d8 e f4~ f8 g a f
  | d2 r r4 d
  | e cis e g~ g8 a g f
  | e4 a r2 r
  %50
  | d,8 e f g a2. g4
  | f e d2. cis8 b
  | cis2 d2. e4
  | f e f g f e
  | d r e r r8 fis! g a
  %55
  | bes4 a g fis e2
  | r8 e fis g fis1\fermata
  \bar "|."
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  | \override MultiMeasureRest.staff-position = #6
    R1*3/2*4
  %5
  | a2 d1
  | c2 a1
  | \stemDown gis2
    a b
  | \stemUp c2. d4 c b
  | a2. bes!4 a g
  %10
  | f8 g f e d4 a' b cis
  | d2 r4
    \change Staff = "upper"
    \stemDown\tieDown
    e f g
  | \stemUp a g f e \stemDown d cis
  | d2. cis4 d e
  | \change Staff = "lower"
    \stemUp\tieUp
    a, g f e d e
  %15
  | f g a gis a b
  | c d e1~
  | e4 a, e2 r4 d'
  | c f, c2 r4 bes'
  | a d8 e f4 cis d g,
  %20
  | a2. g4 f e
  | d2~ d8 e f g a2~
  | \hideStaffSwitch
    a8
    \change Staff = "upper"
    \stemDown\tieDown
    a'
    \change Staff = "lower"
    \stemUp\tieUp
    a, g f e d e f4 f'
  | \showStaffSwitch
    e2 f2. g4
  | f2 f,1~
  %25
  | f4 g8 e fis a bes c d4 c
  | bes8 c bes a g fis g a bes c d ees
  | \hideStaffSwitch
    d2 r r
  | R1*3/2
  | \override MultiMeasureRest.staff-position = #2
    R1*3/2*3
  | \change Staff = "upper"
    \stemDown
    bes8 c d ees
    \showStaffSwitch
    \stemUp
    \shape #'((0 . 0) (0 . 0.5) (0 . 0) (-2 . -0.5)) Tie
    f2~ \stemDown f8 g f ees
  | d4 c bes2.
    \change Staff = "lower"
    \stemUp\tieUp
    a8 g
  | a2 bes2.
    \change Staff = "upper"
    \stemDown
    c4
  %35
  | d2. ees4 d
    \change Staff = "lower"
    \stemUp\tieUp
    c
  | bes2~ bes8 a bes c d4 bes
  | ees2~ ees8 d ees f ees4 d
  | c8 bes c d c4 bes a g
  | a f g a bes8 c d c
  %40
  | bes4 a g fis g e
  | f! g a8 g a bes a4 g
  | f8 g a4~ a8 b cis d
    \change Staff = "upper"
    \stemDown
    e4 a_~
  | a g f a
    \change Staff = "lower"
    \stemUp\tieUp
    d,2
  | r r8 cis,! d e f a g bes
  %45
  | a2. bes4 a g
  | f8 g a4 d, r r d'~
  | d
    \change Staff = "upper"
    \stemDown
    g8 fis g4
    \change Staff = "lower"
    \stemUp\tieUp
    bes,8 c d c bes a
  | g a bes2 g4 b e~
  | e8 d e f g4 cis,2 cis4
  %50
  | d2~ d8 b cis d e cis d e
  | a,4 r d,8 e f g a2~
  | a8 bes a g f2~ f8 e d cis
  | d a' b cis d e d cis d4 g,
  | fis bes!~ bes8 a g a bes c bes a
  %55
  | g d e fis g a bes c bes a g fis!16 e
  | fis8 g a4 d,1\fermata
  \bar "|."
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  %1
  | d2 a'1
  | f2 d1
  | cis2 d e
  | f2. g4 f e
  %5
  | d2 r4 e f g
  | a2 r4 b c d
  | \stemUp
    e d c b a gis
  | \stemNeutral a g!8 f e2.\trill( d8 e)
  | f4 e8 d \stemDown cis2.\trill( b8 cis)
  %10
  | d2 r4 f, g a
  | bes a bes1\trill
  | a1.~
  | a8 g f g a4 bes a g
  | f e d2 r4 bes'
  %15
  | a8 g f e f2 r4 f'
  | e8 d c b c2 r4 e
  | a,8 b c d e2 e,
  | f8 g a bes c2 c,
  | d8 e f g a2 r4 bes
  %20
  | a g f e d2
  | R1*3/2
  | r2 r d'8 e f g
  | a bes a g f4 e d cis
  | d c!8 bes a2.\trill g8 a
  %25
  | bes4 g d'2 r8 bes c d
  | ees4 d8 c bes4 a g fis
  | g a bes a bes c
  | d2 ees r8 ees d c
  | bes a g fis g d e fis g a bes c
  %30
  | bes a g a bes2 r4 b
  | c8 d ees c a2 r8 d ees f
  | g4 f8 ees d4 c bes a
  | bes c d ees f2~
  | f8 g f ees d2~ d8 ees d c
  %35
  | bes4 a8 g fis2.\trill e8 fis
  | g4 ees bes'2 r
  | \override MultiMeasureRest.staff-position = #-4
    R1*3/2*5
  | d8 e f g a2~ a8 bes a g
  | f4 e d2. cis8 b
  | cis2 d2. e4
  %45
  | f2. g4 f e
  | d2~ d8 cis d e f4 d
  | g2~ g8 fis g a g4 f
  | e2~ e8 d e f g4 e
  | a2~ a8 g a bes a4 e
  %50
  | f2. e8 d cis a b cis
  | d cis d e f2~ f8 e f g
  | a4 r d,,8 e f g a2~
  | a4 g f e f8 a b cis
  | d1.~
  %55
  | d~
  | d2~ d8[ a16 g fis g a8] d,2\fermata
  \bar "|."
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
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 12/1"
    subtitle = "[rectus]"
    title = \markup {
      Contrapunctus [12]
    }
  }
  \layout { }
  \midi { }
}
