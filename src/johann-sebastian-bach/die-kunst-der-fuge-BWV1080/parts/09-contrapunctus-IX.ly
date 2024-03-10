Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  | R1*7
  | \highlightSubjectFirst { r4^\markup \subject #'(1.8 . 0) #1 a a'2~
  | a4 gis8 fis e d c b
  %10
  | a gis a b c a b c
  | d cis d e f d e f
  | f4\prall( e) r8 e d e
  | f a g f g f e d
  | c f e d e d c bes!
  %15
  | \unHighlightSubject a } d c bes c bes a gis
  | a4 e' cis2
  | d r4 c!~
  | c bes8 d g4 e
  | cis2 r4 cis
  %20
  | d f e16( f g8) bes,4
  | a d cis16( d e8) g,4
  | f2 r4 c'
  | b2 g'4\rest gis,
  | a1~
  %25
  | a
  | b8 c d b c2~
  | c bes!
  | a g
  | f8 a g f g f e d
  %30
  | g bes a g a g f e
  | a4 c f2~
  | f e~
  | e d~
  | d cis
  %35
  | \highlightSubjectSecond { d1^\markup \subject #'(1 . 0) #2
  | a'
  | f
  | d
  | cis
  %40
  | d2 e
  | f1~
  | f4 g f e
  | \unHighlightSubject d1~ }
  | d8 d c bes c bes a g
    \break
  %45
  | a c' bes a bes a g f
  | e f g4 r g
  | g( f) r8 c bes c
  | a4 d c b
  | c bes!8 a bes2
  %50
  | a4 f' d2~
  | d8 c bes a bes a g f
  | e f g a bes2~
  | bes8 a b c d2~
  | d8 c d e f2~
  %55
  | f8 f e d e d c b
  | c d c bes! c bes a g
  | a4 cis d e
  | a,8 bes a g a g f e
    \break
  | f c' bes a bes a g f
  %60
  | \once\stemDown e4 e' r8 e d cis
  | d4 a d c!
  | bes a g f
  | e8 d e f g e a4~
  | a8 f bes4~ bes8 g c bes
  %65
  | a d c bes c a c4~
  | c8 d c bes c bes a g
  | f1~
  | f8 a g f g f e d
  | e1~
  %70
  | e8 g' f e f e d c
  | d1~
  | d8 f e d e d c b
  | c e d c d c b a
  | b4 r r2
  %75
  | r4 e, e'2~
  | e4 dis r dis
  | e8 f e d! e d c b
  | a4 a' d, f~
  | f8 e d c d c b a
  %80
  | gis2 a4 b
  | c1~
  | c4 a d c
  | b1~
  | b4 g c bes
  %85
  | a1
  | e'
  | c8 a' g f g f e d
  | cis e d cis d cis b a
  | d4 \highlightSubjectFirst { a^\markup \subject #'(0.8 . 0) #1 a'2~
  %90
  | a4 g8 f e d cis b
  | a g a b c a b cis
  | d cis d e f d e f
  | f4( e) r8 e d e
  | f a g f g f e d
  %95
  | c f e d e d c bes
  | \unHighlightSubject a } d c bes c bes a g
  | f bes a g a g f e
  | d1~
  | d8 d' c bes c bes a g
  %100
  | a4 r r2
  | r bes~
  | bes4 b c cis
  | r8 d c! bes c4 d
  | bes g'2 f8 ees
  %105
  | d4 ees f r
  | R1*3
  | \override MultiMeasureRest.staff-position = #6
    R1*3
  | f8\rest d, e fis g fis g a
  | bes g a b c b c d
  | ees4 d c bes!
    \break
  %115
  | a8 g a bes c a b cis
  | d4 g,2 f4~
  | f8 e d2 g4~
  | g8 bes a g a g f e
  | f e f a g f e d
  %120
  | \once\override NoteColumn.force-hshift = #0.2
    e2
    c'4\rest cis
  | d2~ d8 c! bes a
  | g1~
  | g
  | f2 r4 bes
  %125
  | a2 r4 cis
  | d8 c! bes a bes a g fis
  | g1~
  | g8 bes a g a g f e
  | f4. g8 e4. d8
  %130
  | d1\fermata
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieUp\slurUp
  %1
  | \highlightSubjectFirst { r4_\markup \subject #'(0 . 0) #1 d d'2~
  | d4 cis8 b a g f e
  | d cis d e f d e f
  | g fis g a bes g a bes
  %5
  | bes4\prall( a) r8 a g a
  | bes d c bes c bes a g
  | f bes a g a g f e
  | \unHighlightSubject d } g f e f e d c
  | b4 e gis e
  %10
  | c8 d c b a4 g'
  | f8 g f e d4 d'
  | gis, a8 b c4 b
  | a2 r4 gis
  | a2 r4 e
  %15
  | f2 r4 f
  | e2 r4 g~
  | g f8 g a2
  | d, r4 g
  | e f8 g f4 e
  %20
  | d r r e
  | f r r cis
  | d2 r4 e
  | f d b'8\rest f e d
  | c b c d e c d e
  %25
  | f4 f4\rest e2\rest
  %--
  | R1 s1*4
  | r2 r4 a
  | bes8 d c bes c bes a g
  | f a g f g f e d
  | e bes' a g a g f e
  %35
  | d c' bes a g f e g
  | f4 e r cis'
  | \tieDown d a d c!~
  | c bes8 a g4 f
  | e f8 g f4 e
  %40
  | d g2 bes4
  | a c f, a8 g
  | a e' d cis d c bes a
  | bes4 c bes a
  | g2 r
  %45
  | \highlightSubjectFirst { r4_\markup \subject #'(1.5 . 0) #1 c, c'2~
  | c4 bes8 a g f e d
  | c bes c d e c d e
  | f e f g a f g a
  | \slurDown a4( g) r8 g f g
  %50
  | a c bes a bes a g f
  | e a g f g f e d
  | c2 } r8 c d e
  | f2~ f8 e fis gis
  | a2~ a8 g! a b
  %55
  | c4 e, fis gis
  | a c, d e
  | f g f cis
  | cis( d) r2
  | \highlightSubjectSecond { d1_\markup \subject #'(1.8 . 0) #1
  %60
  | a'
  | f
  | d
  | cis
  | d2 e
  %65
  | f1~
  | f4 g f e
  | \unHighlightSubject d8 } e d cis d c b a
  | b1~
  | b8 d c b c b a gis
  %70
  | a4 r r2
  | r8 c' b a b a gis fis
  | gis4 r r2
  | \highlightSubjectFirst { r4_\markup \subject #'(2 . 0) #1 e
    \shape #'((0 . 0) (0 . 0) (0 . -0.4) (0 . -0.2)) Tie
    e'2^~
  | e4 d8 c b a gis fis
  %75
  | e d e fis gis e fis gis
  | a gis a b c a b c
  | c4( b) r8 b a b
  | c e d c d c b a
  | g c b a b a gis fis
  %80
  | \unHighlightSubject e4( } f!) e2~
  | e4 e a g
  | fis r r2
  | r4 d g f
  | e r r2
  %85
  | r8 e' d c d c b a
  | b c b a b a gis fis
  | e1
  | a~
  | a4 d8 e f4 e8 d
  %90
  | e4 r r2
  | r r8 c, d e
  | f4 r r8 f g a
  | bes a g bes a2~
  | a4 bes2 c8 bes
  %95
  | a4 f g e
  | f r r cis
  | d r r2
  | R1
  | \highlightSubjectFirst { r4 d_\markup \subject #'(1.3 . 0) #1
    \shape #'((0 . 0) (0 . 1) (0 . 1) (-0.5 . 0)) Tie
    d'2^~
  %100
  | d4 c8 bes a g fis e
  | d cis d e fis d e fis
  | g fis g a bes g a bes
  | bes4( a) r8 a g a
  | bes d c bes c bes a g
  %105
  | f bes aes g aes g f ees
  | d2 } \stemUp ees4 f
  | bes, b c d
  | ees1^~
  | ees8[ g f ees] f[ ees d c]
  %110
  | a'1^~
  | a8 bes a g bes a g fis
  | g4 r r2
  | R1
  | r8 \stemDown b, c d ees c d e
  %115
  | f1~
  | f2 e
  | d4. c8 bes2
  | a4 r r2
  | \highlightSubjectSecond { d1_\markup \subject #'(1.4 . 0) #2
  %120
  | a'
  | f
  | d
  | cis
  | d2 e
  %125
  | f1~
  | f4 g f ees
  | d2 } r4 d
  | e cis d2~
  | d cis
  %130
  | a1\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  | \override MultiMeasureRest.staff-position = #0
    R1*14
  %15
  | s1*7
  | \highlightSubjectFirst { r4^\markup \subject #'(1 . 0) #1 a
    \change Staff = "upper"
    \stemDown\tieDown
    \shape #'((0.5 . 1.1) (0 . 1.2) (0 . 1.2) (-0.5 . 0.5)) Tie
    a'2~
  | a4 gis8 fis e
    \change Staff = "lower"
    \stemUp\tieUp
    d c b
  | a gis a b c a b c
  %25
  | d cis d e f d e f
  | \change Staff = "upper"
    \stemDown\tieDown
    f4_( e) b8\rest e d e
  | f a g f g f e d
  | c f e d e d cis b
  | \change Staff = "lower"
    \stemUp\tieUp
    a4 } bes!8 a bes2~
  %30
  | bes4 c8 bes c2~
  | c4 r r2
  %--
  | \override MultiMeasureRest.staff-position = #6
    R1*3
  %35
  | \highlightSubjectFirst { r4^\markup \subject #'(1.8 . 0) #1 d, d'2~
  | d4 cis8 b a g f e
  | d cis d e f d e f
  | g fis g a bes g a bes
  | bes4( a) r8 a g a
  %40
  | bes d c bes c bes a g
  | f bes a g a g f e
  | d2 } r8 d e f
  | g a g f g f e d
  | e f e d e c d e
  %45
  | \highlightSubjectSecond { f1_\markup \subject #'(0.5 . 0) #2
  | c'
  | a
  | f
  | e
  %50
  | f2 g
  | a1~
  | a4 bes a g
  | f } d' c b
  | a f' e d
  %55
  | c2 b
  | a g
  | f8 bes a g a g f e
  | f g f e f e d cis
  | d2 r
  %--
  | R1*13
  | \highlightSubjectSecond { a'1^\markup \subject #'(0 . 0) #2
  | e'
  %75
  | \once\override NoteColumn.force-hshift = #1.2 c
  | a
  | gis
  | a2 b
  | c1~
  %80
  | c4 d c b
  | \unHighlightSubject a8 } gis a b c a b c
  | d cis d e fis d e fis
  | g, fis g a b g a b
  | c b c d e c d e
  %85
  | f,4 e fis d
  | g fis gis e
  | a bes!8 a bes4 g~
  | g8 g' f e f e d cis
  | f e, f g a g a b
  %90
  | cis b cis d cis d e4~
  | e d a2~
  | a4 f bes d
  | g, bes e,8 g f e
  | d4 r r2
  %95
  | r4 a' bes2
  | c4 r r g
  | a e f a
  | bes8 c bes a bes a g fis
  | \highlightSubjectSecond { g1^\markup \subject #'(2 . 0) #2
  %100
  | d'
  | bes
  | g
  | fis
  | g2 a
  %105
  | bes1~
  | bes4
    \change Staff = "upper"
    \stemDown\tieDown
    c bes aes
  | \unHighlightSubject g1~ }
  | g4 g a bes
  | c1~
  %110
  | c8 ees d c d c bes a
  | \change Staff = "lower"
    \stemUp\tieUp
    bes2 c4 a
  | bes c bes a
  | g2 a4 b
  | c r r2
  %115
  | R1
  | r8 c bes a g bes a g
  | f4 r r2
  | R1
  | \highlightSubjectFirst { r4^\markup \subject #'(2 . 0) #1 d d'2~
  %120
  | d4 cis8 b a g f e
  | d cis d e f d e f
  | g fis g a bes g a bes
  | bes4( a) r8 a g a
  | bes d c bes c bes a g
  %125
  | f bes a g a g f e
  | d2 } r4 a'
  | bes2 r4 bes
  | cis, g' f bes
  | a2. g4
  %130
  | fis1\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieUp\slurUp
  | s1*14
  %15
  | \highlightSubjectFirst { r4_\markup \subject #'(1.5 . 0) #1 d d'2~
  | d4 cis8 b a g f e
  | d cis d e f d e f
  | g fis g a bes g a bes
  | bes4( a) d,8\rest a' g a
  %20
  | bes d c bes c bes a g
  | \unHighlightSubject f } bes a g a g f e
  | d g f e f e d c
  | d4 b e2
  | a, r
  %25
  | r8 g' f e d c b a
  | \stemUp gis4.\trill fis16 gis a8 g f e
  | d4 \stemNeutral d' e c
  | f b, cis a
  | d2 r4 d
  %30
  | e2 r4 c
  | f8 a g f g f e d
  | g bes a g a g f e
  | a2 d,4\rest bes'
  | g e a a,
  %35
  | bes f' bes2
  | a r
  %--
  | R1*22
  | \highlightSubjectFirst { r4_\markup \subject #'(2 . 0) #2 d,, d'2~
  %60
  | d4 cis8 b a g f e
  | d cis d e f d e f
  | g fis g a bes g a bes
  | bes4( a) r8 a g a
  | bes d c bes c bes a g
  %65
  | f bes a g a g f e
  | d2 } r
  | r4 d e f
  | g g' e g
  | c, c, d e
  %70
  | f a' d, f
  | b, d gis, b
  | e, e' fis gis
  | a1~
  | a8 gis a fis gis!4 b
  %75
  | \once\override NoteColumn.force-hshift = #-0.2
    b( a) d,\rest e
  | f1
  | e
  | \override MultiMeasureRest.staff-position = #-2
    R1*2
  %80
  | r8 \stemDown\tieDown d c b c b a gis
  | a4 r r2
  | \override MultiMeasureRest.staff-position = #-4
    R1*7
  | \highlightSubjectSecond { d1_\markup \subject #'(0.5 . 0) #1
  %90
  | a'
  | f
  | d
  | cis
  | d2 e
  %95
  | f1~
  | f4 g f e
  | \unHighlightSubject d1~ }
  | d8 ees d c d c bes a
  | bes2 r4 bes'
  %100
  | fis a fis d
  | g2 d
  | ees4 f e ees
  | d2 r8 c bes a
  | g4 r r2
  %105
  | r4 ees' d g
  | f8 aes g f g f ees d
  | ees f ees d ees d c b
  | c d c bes! c bes a g
  | a bes a g a g fis e
  %110
  | fis2 r4 fis'
  | g ees c d
  | g, r r2
  | r4 f' ees d
  | c r r2
  %115
  | r8 e f g a f g a
  | bes4 r r2
  | r8 g f e d f e d
  | cis4 e cis a
  | d c! bes2
  %120
  | a r4 a
  | bes1~
  | bes2 r8 e f g
  | a, e' a g f4 e
  | d2 r4 cis
  %125
  | d2 r4 a
  | bes2 r4 c
  | bes8 c bes a bes a g f
  | e4 e' f g
  | a g a a,
  %130
  | d1\fermata
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
    opus = "BWV 1080, 9"
    subtitle = "alla Duodecima"
    title = \markup {
      Contrapunctus IX
    }
  }
  \layout { }
  \midi { \tempo 4=220 }
}
