Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieDown
  | R1*5
  | \override MultiMeasureRest.staff-position = #4
    R1*2
  | r2 \highlightSubjectFirstInv { r4 c
  | b e r gis,
  %10
  | a e a8 g f e
  | d c b4~ b8 cis d e
  | \unHighlightSubject f } e f d e fis g a
  | bes a bes g a4 d~
  | d8 c d b c4 cis
  %15
  | d g, f a
  | \tieUp d4. e8 f g a4~
  | a bes8 a g f g4
  | c,1~
  | c8 fis, g a bes2~
  %20
  | bes a~
  | a8 d4 cis8 d2~
  | d4 cis d2\rest
    \break
  | \highlightSubjectSecond { a'2^\markup \subject #'(2.5 . 0) #2 d,4. e8
  | f4. g8 a2
  %25
  | bes a4. g8
  | f2~ f8 e fis gis
  | \unHighlightSubject a } g!16 f e4~ e8 d c b
  | a gis a b cis d e f
  | g a bes g e a g a
  %30
  | f g a f d g f g
  | e f g e f4. g8
  | a4. g8 f e d cis
  | d2~ d8 b cis4
  | d8 bes! a g f4 f'~
  %35
  | f8 e fis gis a2~
  | a~ a8 a g f
  | e4 a2 g4
  | f2 e~
  | e4 fis8 g a4 d,~
  %40
  | d e8 f! g4 c,~
  | c8 b cis d e4 a,~
  | a8 a d cis d2~
  | d4 d cis2
    \break
  | d8 bes c!4~ c8 a bes4~
  %45
  | bes8 a d4~ d8 cis d4~
  | d8 cis d e f4. e8
  | d2~ d8 cis d e
  | cis4 r r2
  | R1
  %50
  | r4 d8 e f g a f
  | g a bes g e a g a
  | f e d4~ d8 b c d
  | e d c4~ c8 b e4~
  | e d c b
  %55
  | a2 r
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  | r4 a8 b cis d e f
  | g a bes g e a g a
  %60
  | f g f e d e f d
  | e fis g2 fis4
  | g d g2~
  | g4 f8 e f4 d
  | c2. c4
  %65
  | f2~ f8 g f g
  | e4 \highlightSubjectFirst { a,^\markup \subject #'(2.2 . 0) #1 bes f
  | r d' c f
  | bes,8 c d e f g a4~
  | a8 g f e d2 }
  %70
  | c~ c8 c d e
  | f2~ f8 fis g a
  | bes2 r8 d, e f
  | g2~ g8 gis a b
  | c2 r8 e, f! g
  %75
  | \highlightSubjectSecond { a2^\markup \subject #'(2.5 . 0) #2 d,4. e8
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  | \unHighlightSubject a } f g4~ g8 d e g
  %80
  | c,2 bes~
  | bes8 g a c f2~
  | f4 b, e2~
  | e4 d r8 e f a
    \break
  | d,2 c~
  %85
  | c8 a b \highlightSubjectFirst { cis^\markup \subject #'(1.5 . 0) #1 d4 a
  | r f' e a
  | d,8 e f g a bes c4~
  | c8 bes a g f2 }
  | \once\override NoteColumn.force-hshift = #0
    e r
  %90
  | r r8 c d c
  | bes2 r
  | r8 f' g f e4 a
  | f8 a bes a g4 c
  | f, bes r f~
  %95
  | f ees2 d4~
    \break
  | d c2 bes4~
  | bes a~ a8 g g'4~
  | g8 e fis4 f2~
  | f4 ees8 d ees2~
    \break
  %100
  | ees4 d8 c d ees f4~
  | f8 d e! f g4 bes,~
  | bes8 g a bes c d ees c
  | d4 \highlightSubjectSecond { f^\markup \subject #'(-1 . 0) #1 bes,4. c8
  | d4. e!8 f2
  %105
  | g f4. ees!8
  | d2~ d8 c d e!
  | f4 } f,8 g a bes c d
  | ees f g ees c f ees f
  | d ees f d bes g g'4~
  %110
  | g g2 fis4
  | g8 f! ees d cis4 d
  | e!2~ e8 a, d c
  | bes1~
  | bes8 bes a g f4. f8
  %115
  | e a4 g8 f e f g
  | a g a bes c d ees c
    \break
  | d2 c4 f8 e
  | f4. cis8 d2~
  | d2. cis4
  %120
  | d2\fermata d\rest
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieUp
  %1
  | \highlightSubjectFirst { r4_\markup \subject #'(0 . 0) #1 cis d a
  | r f' e a
  | d,8 e f g a bes c4~
  | c8 bes a g fis d \unHighlightSubject g4~ }
  %5
  | g8 e fis a bes2~
  | bes8 g a cis d2~
  | d8 c bes a g f e4
  | a4. g8 f4 e8 fis
  | gis4 a8 b c4 b
  %10
  | a2 r
  | \override MultiMeasureRest.staff-position = #-12
    R1
  | \override MultiMeasureRest.staff-position = #-10
    R1
  | \override MultiMeasureRest.staff-position = #-8
    R1
  | \highlightSubjectFirst { r4_\markup \subject #'(1.5 . 0) #1 gis a e
  %15
  | r bes' a d
  | g,8 a b cis d e f4_~
  | \tieDown f8 e d c bes \unHighlightSubject a bes4~ }
  | bes a8 g f g f ees
  | d2~ d4 e!8 f
  %20
  | g f e d c4 f
  | f2~ f8 fis g gis
  | a2 r
  | \override MultiMeasureRest.staff-position = #-4
    R1
  | d2 a4. b8
  %25
  | cis4. d8 e2
  | a, r
  | \override MultiMeasureRest.staff-position = #-6
    R1*5
  | s1*2
  | \highlightSubjectSecond { d2_\markup \subject #'(0.8 . 0) #2 a4. b8
  %35
  | c4. d8 e2
  | f e4. d8
  | cis2~ cis8 a b cis
  | \unHighlightSubject d2~ } d8 d c! b
  | c2~ c8 c bes! a
  %40
  | bes2~ bes8 bes a g
  | a2~ a8 g f e
  | f2. f4
  | e2. e4
  | \highlightSubjectSecond { a2_\markup \subject #'(1.2 . 0) #2 d,4. e8
  %45
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  | a4 } d~ d8 c bes a
  | g4 c~ c8 bes a g
  %50
  | f4 bes2 a4
  | e' r r2
  | \highlightSubjectFirst { r4_\markup \subject #'(1.5 . 0) #1 d, f c
  | r a' g c
  | f,8 g a b c d e4^~
  %55
  | e8 d c b a2~
  | a8 fis gis4 } r2
  | \override MultiMeasureRest.staff-position = #-2
    R1
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  %60
  | r4 d8 e f g a b
  | c d ees c a d c d
  | bes c bes a g a bes g
  | a b c2 bes4~
  | bes e, a2~
  %65
  | a4 d g,2~
  | g8 g f e f e d cis
  | d e f4~ f8 e d4~
  | d \highlightSubjectFirst { \unHighlightSubject d'8 } cis d e f4~
  | f a, bes d,8 e
  %70
  | f e f g a4. g8
  | f a bes c d2~
  | d4. c8 bes4. a8
  | g b c d e2~
  | e4. d8 c4. b8
  %75
  | \highlightSubjectSecond { c2_\markup \subject #'(1.2 . 0) #1 f,4. g8
  | a4. bes8 c2
  | d c4. bes8
  | a2~ a8 g a bes
  | c2 } r
  %80
  | r8 e, f a d,4 e
  | f4. e8 d a bes d
  | g2~ g8 bes a e
  | f2 r
  | r8 fis g bes e,4 fis
  %85
  | g8 fis g4 \stemUp bes f
  | r4 d' c \stemNeutral f
  | bes,8 c d e f g a4~
  | a8 g f e d2
  | \once\override NoteColumn.force-hshift = #0 cis
    r
  %90
  | r8 g a g \stemDown fis4 a
  | r8 g f! g a4 e
  | f c' g e'
  | a, r r8 d ees d
  | c4 f bes, c
  %95
  | r8 g a g f4 bes
  | r8 ees, f ees d4 g
  | r8 c, d c bes4 bes'~
  | bes8 g a4~ a8 g f ees
  | d4 g4~ g8 f ees d
  %100
  | c4 f4~ f8
    \change Staff = "lower"
    \stemUp\tieUp
    ees d c
  | bes4. a8 bes c
    \change Staff = "upper"
    \stemDown\tieDown
    d e!
  | f4 c r2
  | r8 c' bes a g fis g a
  | bes a bes g c ees d c
  %105
  | bes4 ees r8 ees d c
  | bes a g a bes a bes g
  | c4 r r f,
  | g8 a bes2 a4~
  | a d, r8 g a bes
  %110
  | c d ees c a d c d
  | bes2 a4 bes~
  | bes8 a g a f2~
  | f8 a g f e4 d
  | cis8 d e4~ e8 e d4~
  %115
  | d \highlightSubjectFirst { cis d a
  | r f' e a
  | d,8 e f g a bes c4~
  | c8 bes a g \unHighlightSubject f } g a4~
  | a1~
  %120
  | a2\fermata r
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  | R1*2
  | f,2\rest \highlightSubjectFirst { f4\rest^\markup \subject #'(1 . 0) #1 fis
  | g d r bes'
  %5
  | a d g,8 a bes c
  | d e f4~ f8 e d c
  | bes a d2 } cis8 b
  | cis d e4~ e8 d e4~
  | e2. d4
  %10
  | c2 r8 e, a4~
  | a g8 fis g2
  | f!8 g a b c2
  | bes8 c d e f2
  | e4 f8 d e a, \highlightSubjectFirstInv { bes4^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1
  %15
  | a d r fis,
  | g d a'8 g f e
  | d c bes4~ bes8 c d e
  | \unHighlightSubject f } g f2 g8 a
  | bes2~ bes8 a g f
  %20
  | e4 f8 g a4 d
  | d, r r d'
  | e2 r
  | \override MultiMeasureRest.staff-position = #6
    R1*2
  | \override MultiMeasureRest.staff-position = #10
    R1
  | \highlightSubjectSecond { d2 a4. b8
  | c4. d8 e2
  | f e4. d8
  | cis2~ cis8 a b cis!
  %30
  | \unHighlightSubject d } e f4~ f8 e d e
  | cis d e4~ e8 a, d4~
  | d8
    \change Staff = "upper"
    \stemDown\tieDown
    e f4~ f8 g a4~
  | a8 g f e f4 e
  | \change Staff = "lower"
    \stemUp\tieUp
    a, b8 cis d2
  %35
  | c!4. b8 c2~
  | c8 c bes! a bes4. a16 g
  | a2 r
  | \override MultiMeasureRest.staff-position = #8
    R1*6
  | \highlightSubjectFirst { r4^\markup \subject #'(1.5 . 0) #1 fis g d
  %45
  | r bes' a d
  | g,8 a bes c d e f4~
  | f8 e d c bes2\trill }
  | a2. d8 c
  | bes a g2 c8 bes
  %50
  | a g f4~ f8 e f4
  | bes e, a2~
  | a8 g f g a4 e
  | a4. b8 c d c b
  | a2. gis4
  %55
  | a e e' d8 c
  | b4 e,8 fis gis a b c
  | \change Staff = "upper"
    \stemDown\tieDown
    d e f d b e d e
  | cis
    \change Staff = "lower"
    \stemUp\tieUp
    a d4 g, bes
  | e, d2 cis!4
  %60
  | d r r2
  | \override MultiMeasureRest.staff-position = #4
    R1*5
  | \highlightSubjectSecond { a'2^\markup \subject #'(2.5 . 0) #2 d,4. e8
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  %70
  | \unHighlightSubject a } c d e f4. e8
  | d4. c8 bes4. a8
  | g d' e fis g4. f8
  | e4. d8 c4. b8
  | a8 e' fis gis a4. g8
  %75
  | f e f c d c d bes
  | a g f4~ f8 e f a~
  | a g f g a4. bes8
  | c2. f,4~
  | f8 d e g c4. bes8
  %80
  | a2~ a8 f g c
  | f,2 r4 bes~
  | bes8 d, e g cis,4. cis8
  | d e f a d4. c8
  | bes2~ bes8 g a d
  %85
  | g,4 d'8
    e
    \change Staff = "upper"
    \stemDown\tieDown
    f e d cis
  | \change Staff = "lower"
    \stemUp\tieUp
    d a
    \change Staff = "upper"
    \stemDown\tieDown
    a'4~ a8 e
    \change Staff = "lower"
    \stemUp\tieUp
    d cis
  | g'4 d r8 d c bes
  | a4. cis8 d4 a
  | \change Staff = "upper"
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.7
    a'8 e
    \change Staff = "lower"
    \stemUp\tieUp
    d e f4 cis
  %90
  | d a c fis,
  | g c r8 c bes c
  | d4 a c cis
  | d c! bes g
  | a8 c bes c d4 a
  %95
  | bes c~ c8 a bes a
  | g4 c r8 f, g f
  | ees4 a r8 d, ees cis
  | d4 r d'4. c8
  | b a g4 c4. bes8
  %100
  | a g f4 \stemDown bes4. a8
  | g1
  | f4. g8 a bes c a
  | \stemUp bes4 \highlightSubjectFirst { f^\markup \subject #'(-0.8 . 0) #1 g d
  | r bes' a d
  %105
  | g,8 a bes c d ees f4~
  | f8 ees d c bes2 }
  | a4 f' ees d
  | c2 f
  | bes,8 c d bes ees d c bes
  %110
  | a bes c a d4 d,
  | g g'~ g8 f e d
  | cis d e cis d c bes a
  | g d e f g a bes g
  | a1
  %115
  | \highlightSubjectFirst { r4^\markup \subject #'(1.8 . 0) #1 a bes f
  | r d' c f
  | bes,8 c d e f g a4~
  | a8 g f e d4. } e8
  | f4 e8 d e f g4~
  %120
  | g fis\fermata f,2\rest
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | s1*2
  | \override MultiMeasureRest.staff-position = #-4
    R1*4
  | \highlightSubjectFirstInv { r4_\markup \scale #'(1 . -1) \subject #'(1.5 . 0) #1 f e a
  | r cis, d a
  | e'8 d c b a g f4~
  %10
  | f8 g a b c4 } a
  | b e~ e8 a, b cis
  | d2 c!8 d e fis
  | g2 d8 e f g
  | a2~ a8 f g e
  %15
  | f e d cis d bes c a
  | b cis d2 f,4
  | g2. f8 g
  | a2. bes8 c
  | d4 e8 fis g f e d
  %20
  | c4 d8 e f e d c
  | bes4 bes'8 a bes4 bes,
  | a a'8 bes a g f e
  | f e f g f e d cis
  | d d, d' e f a d f
  %25
  | e f g e cis d e cis
  | d4 d, r2
  %--
  | R1*4
  | \highlightSubjectSecond { a'2_\markup \subject #'(0.5 . 0) #2 d,4. e8
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  %35
  | \unHighlightSubject a2~ } a8 g f e
  | d2 g~
  | g8 g f e f2~
  | f8 e f g a2~
  | a8 bes! a g fis4.\trill e16 fis
  %40
  | g8 a g f! e4.\trill d16 e
  | f4 e8 d cis4.\trill b16 cis
  | d2~ d8 f, bes a
  | g a bes g e a g a
  | f g a fis bes4 g
  %45
  | d'4. e8 f4. fis8
  | g2 f!8 g a4
  | bes a2 g4~
  | g8 g e d f2~
  | f4 e8 d e2~
  %50
  | e4 d8 cis d2~
  | d cis
  | \highlightSubjectSecond { d_\markup \subject #'(1.2 . 0) #2 a4. b8
  | c4. d8 e2
  | f e4. d8
  %55
  | c2~ c8 b c d
  | \unHighlightSubject e } dis e4 r e
  | fis8 gis a2 gis8 fis
  | g!4 f! e d
  | cis d8 bes g4 a
  %60
  | d, r r2
  | R1
  | r4 g8 a bes c d e
  | f g a f d g f g
  | e f g e c f e f
  %65
  | d e f d b e d e
  | cis2 d~
  | d4 bes f'4. d8
  | g4. g8 f4. e8
  | d4. c8 bes2
  %70
  | f' b,\rest
  | b\rest c8\rest d e fis
  | g2 b,\rest
  | b\rest c8\rest e fis gis
  | a2 b,\rest
  %75
  | \highlightSubjectFirst { b4\rest_\markup \subject #'(0.5 . 0) #1 a' bes f
  | r d c f
  | bes,8 c d e f g a4~
  | a8 g f e d2 }
  | c b\rest
  %80
  | \override MultiMeasureRest.staff-position = #-6
    R1*5
  %85
  | \highlightSubjectSecond { g'2_\markup \subject #'(0 . 0) #2 d4. e8
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  | \once\override NoteColumn.force-hshift = #0 a2 }
    d,8\rest a' g a
  %90
  | bes4 fis a d,
  | ees e f r
  | r2 r8 e f e
  | d4 f2 ees4~
  | ees d r8 f ees f
  %95
  | g4 c, d2
  | ees4 a, bes2
  | c4 fis, g2
  | d r
  %--
  | R1*4
  | \highlightSubjectFirst { r4_\markup \subject #'(0.5 . 0) #1 d' ees bes
  | r g' f bes
  %105
  | ees,8 f g a bes c d4~
  | d8 c bes a g2 }
  | f r
  | \override MultiMeasureRest.staff-position = #-4
    R1*7
  %115
  | a2 d,4. e8
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  | a1
  %120
  | d,2\fermata r
  | \bar "|."
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
    opus = "BWV 1080, 10"
    subtitle = "alla Decima"
    title = \markup {
      Contrapunctus X
    }
  }
  \layout { }
  \midi { \tempo 4=90 }
}
