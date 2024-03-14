Global = {
  \key d \minor
  \time 3/2
  \include "../global.ly"
}

\include "../macros.ly"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  %1
  | \highlightSubjectFirstInv { a2^\markup \scale #'(1 . -1) \subject #'(-0.5 . 0) #1 d,1
  | f2 a1
  | bes2 a g
  | f2. e4 f g
  %5
  | a2 } a4\rest g f e
  | d2 b'4\rest c, bes a
  | \once\override NoteColumn.force-hshift = #0.3 g
    a
    \once\override NoteColumn.force-hshift = #0.3 bes
    c d ees!
  | d4 e!8 fis g2. a8 g
  | f!4 g8 a bes2. c8 bes
  %10
  | a2 r4 f' e d
  | c d cis1\trill
  | d1.~
  | d8 e f e d4 cis d e
  | f g a2 r4 cis,
  %15
  | d8 e f g f2 r4 fis,
  | g8 a bes c bes2 r4 g
  | d'8 c bes a g2 g'
  | f8 e d c bes2 bes'
  | a8 g f e d2 r4 cis
  %20
  | d e f g a2
  | R1*3/2
  | r1 a,8 g f e
  | d cis d e f4 g a bes
  | a b8 cis d2. e8 d
  %25
  | c!4 e a,2 r8 c b a
  | gis4 a8 b c4 d e f
  | e d c d c b
  | a2 g b8\rest g a b
  | c d e f e a g f e d c b
  %30
  | c d e d c2 r4 c
  | bes8 a g bes d2 r8 a g f
  | e4 f8 g a4 bes c d
  | c bes a g f2~
  | f8 e f g a2~ a8 g a bes
  %35
  | c4 d8 e f2. g8 f
  | e4 g c,2 d\rest
  | \override MultiMeasureRest.staff-position = #0
    R1*3/2*5
  | \highlightSubjectSecondInv { a8^\markup \scale #'(1 . -1) \subject #'(-1 . 0) #2 g f e d2~ d8 cis d e
  | f4 g a2. bes8 c
  | bes2 a2. g4
  %45
  | f2. e4 f g
  | \unHighlightSubject a2~ } a8 bes a g f4 a
  | e2~ e8 f e d e4 f
  | g2~ g8 a g f e4 g
  | d2~ d8 e d cis d4 g
  %50
  | f2. g8 a bes d c bes
  | a bes a g f2~ f8 g f e
  | d4 r a''8 g f e d2~
  | d4 e f g f8 d c bes
  | a1.~
  %55
  | a~
  | a2~ a8[ d16 e fis e d8] a'2\fermata
  \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  | s1*3/2*4
  %5
  | \highlightSubjectFirstInv { d2_\markup \scale #'(1 . -1) \subject #'(1.3 . 0) #1 a1
  | bes2 d1
  | ees2 d c
  | bes2. a4 b cis
  | d2. c!4 d e
  %10
  | \unHighlightSubject f8 } e f g a4 d, c
    \staffLower
    \stemUp\tieUp
    bes
  | a2 c,4\rest g' f e
  | \stemDown d e f g \stemUp a bes
  | a2. bes4 a g
  | \staffUpper
    \stemDown
    d' e f g a g
  %15
  | f e d ees d c
  | bes a g1_~
  | g4 d' g2 r4 a,
  | bes f' bes2 r4 cis,
  | d a8 g f4 bes a e'
  %20
  | d2. e4 f g
  | a2~ a8 g f e d2~
    \pageBreak
  | \hideStaffSwitch
    d8
    \staffLower
    \stemUp\tieUp
    d,
    \staffUpper
    \stemDown
    d' e f g a g f4 f,
    \showStaffSwitch
  | g2 f2. e4
  | f2 f'1_~
  %25
  | f4 e8 g f d c b a4 b
  | c8 b c d e f e d c b a gis
  | a2 r \hideStaffSwitch r
  | R1*3/2*4
  | \staffLower
    \stemUp\tieDown
    \highlightSubjectSecondInv { c8^\markup \scale #'(1 . -1) \subject #'(1.4 . 0) #2 bes a g
    \stemDown f2_~ \stemUp f8 e f g
  | \showStaffSwitch a4 bes c2.
    \staffUpper
    \stemDown d8 ees
  | d2 c2.
    \staffLower
    \stemUp
    bes4
  %35
  | a2. g4 a
    \staffUpper
    b!
  | \stemDown \unHighlightSubject c2~ } c8 d c bes a4 c
  | g2~ g8 a g f g4 a
  | bes8 c bes a bes4 c d ees
  | d f ees d cis8 b a b
    \pageBreak
  %40
  | cis4 d e f e g
  | f e d8 e d cis d4 e
  | f8 e d4~ d8 c bes a
    \staffLower
    \stemUp
    \once\override NoteColumn.force-hshift = #0.6 g4
    d^~
  | \once\override NoteColumn.force-hshift = #0.4 d
    \staffUpper
    \stemDown
    \staffLower
    \stemUp
    e \stemDown f d \stemUp a'2
    \staffUpper
    \stemDown
  | r r8 bes'8 a g f d e cis
  %45
  | d2. c!4 d e
  | f8 e d4 a' r r a,~
  | a
    \staffLower
    \stemUp
    e8 f e4
    \staffUpper
    \stemDown
    c'8 b a b c d
  | e d cis2 e4 c g~
  | \hideStaffSwitch
    g8 a g
    \staffLower
    \stemUp
    f e4
    \staffUpper
    \stemDown
    \showStaffSwitch
    bes'2 bes4
  %50
  | a2~ a8 c \hideStaffSwitch bes
    \staffLower
    \stemUp
    a g bes a g
  | \staffUpper
    \stemDown
    \showStaffSwitch
    d'4 r
    a'8 g f e d2_~
  | d8 cis d e f2~ f8 g a bes
  | a d, c bes
    \staffLower
    \stemUp
    a g a bes a4
    \staffUpper
    \stemDown
    e'
  | f cis~ cis8 d e d cis b cis d
  %55
  | e a g f e d cis b cis d e fis16 g
  | fis8 e d4 a'1\fermata
  \bar "|."
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  | \override MultiMeasureRest.staff-position = #0
    R1*3/2*9
  %10
  | \highlightSubjectFirstInv { a2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 d,1
  | \stemDown f2 a1
  | \stemUp bes2 a \stemDown g
  | f2. e4 f g
  | \stemUp a2 } r4 g f e
  %15
  | d2 r4 c bes a
  | g a bes c d ees!
  | d2. cis4 d e
  | f2. e4 f g
  | a2. g4 a bes
  %20
  | a g f 2. e8 g
  | f4 d a' d8 c bes4 a8 g
  | a4 bes a8 g f e d2~
  | d2. cis8 b cis2
  | d4 a'2 g4 a b
  %25
  | c4. b16 c d2 r
  | e,8 d c b a2~ a8 gis a b
  | c4 d e2. f8 g
  | f2 e2. d4
  | \once\override NoteColumn.force-hshift = #0.2 c2.
    b4 c d
  %30
  | \once\override NoteColumn.force-hshift = #0.2 e2.
    d4 e fis
  | \once\override NoteColumn.force-hshift = #0.2 g2.
    e4 f! g
  | \hideStaffSwitch
    \stemDown\tieDown a2~ \stemUp a8 g f g
    \staffUpper
    \stemDown a g a bes
  | c4 d8 e f2~ f8 ees
    \staffLower
    \stemUp
    d c
    \showStaffSwitch
  | bes2 a8 g a bes
    \staffUpper
    \stemDown
    c2~
  %35
  | c8 bes a g a4 b8 c d4
    \staffLower
    \stemUp
    d,
  | e2 f2. e8 d
  | e f g f e f e d e4 fis
  | g2 r8 d'8 ees c bes a g a
  | bes4 d c bes a f
  %40
  | e8 d cis b cis a d b cis4 e
  | d cis d f bes8 a g bes
  | a2^~ a8 f g a
    \once\override NoteColumn.force-hshift = #0 bes2
  | \once\override NoteColumn.force-hshift = #0 a^~
    \once\override NoteColumn.force-hshift = #-1 a8
    g f e d2^~
  | d4 g f d cis4. d16 e
  %45
  | f8 g f e f g a2 bes4
  | a d a8 g f4^~ f8 e d f
  | a2 r r4 a
  | g bes g e~ e8 d e fis
  | g4 d s2 s
  %50
  | \highlightSubjectSecondInv { a'8^\markup \scale #'(1 . -1) \subject #'(1.6 . 0) #2 g f e d2. \stemDown e4
  | \stemUp f g a2. \stemDown bes8 c
  | \stemUp bes2 a2. g4
  | f g \stemDown f e f g
  | \stemUp a } r g r r8 f e d
  %55
  | cis4 d e f g2
  | r8 g fis e fis1\fermata
  \bar "|."
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | s1*3/2*9
  %10
  | \override MultiMeasureRest.staff-position = #-8
    R1*3/2*4
  | \highlightSubjectFirstInv { d2_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #1 a1
  %15
  | bes2 d1
  | ees2 d c
  | bes2. a4 b cis
  | d2. cis4 d e
  | f2. } e4 f g
  %20
  | f e d2. c8 bes
  | \highlightSubjectSecondInv { a_\markup \scale #'(1 . -1) \subject #'(-2 . 0) #2 g f e d2~ d8 cis d e
  | f4 g a2. bes8 c
  | bes2 a2. g4
  | f2. e4 f g
  %25
  | a1 } r8 a g f
  | e f e d c4 r r2
  | r r a'~
  | a4 b c d e f
  | e gis a1^~
  %30
  | a4 g!8 f e4 fis g a
  | bes2^~ bes8 a g bes a c bes d
  | \staffUpper
    \stemDown\tieDown
    c2~ c8 bes a g
    \staffLower
    f2~
  | f f,8 g a bes a4 f
  | bes8 c d e f2~ f8 e f g
  %35
  | a g f e d1
  | c8 d c bes a bes a g f g a bes
  | c d e d c4 c2 bes!8 a
  | g1.~
  | g4 f8 ees f4 g a2~
  %40
  | a1~ a4 g8 f
  | g a bes a bes4 a g2
  | d'4 d,2 e8 f g e f g
  | a bes a g f2~ f8 g f e
  | d e d cis d e f g a2~
  %45
  | a8 bes a g a bes c d c bes a g
  | f g f e f g a bes a g f a
  | c d c b c4 a c a
  | e8 f e d e f g4~ g8 fis g a
  | bes c bes a bes g g'4~ g8 f e d16 cis
  %50
  | d1.~
  | d~
  | d~
  | d~
  | d4 e8 f e d cis b a2~
  %55
  | a4 b cis d e8 d cis4
  | d1.\fermata
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
    opus = "BWV 1080, 12/2"
    subtitle = "inversus"
    title = \markup {
      Contrapunctus XII
    }
  }
  \layout { }
  \midi { \tempo 4 = 144 }
}
