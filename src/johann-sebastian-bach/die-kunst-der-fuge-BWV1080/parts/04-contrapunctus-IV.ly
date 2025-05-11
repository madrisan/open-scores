Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusIV
  %1
  | \highlightSubjectFirstInv {
    a2^\markup \scale #'(1 . -1) \subject #'(-0.5 . 0) #1
    d,^\markup {
      \hspace #-3
      \expositionBullet "Exposition SATB, bars 1−19"
    }
  | f a
  | bes a4 g
  | f2~ f8 e f g
  %5
  | \unHighlightSubject a2~ } a8 bes! a gis
  | a2~ a8 bes! a gis
  | a4 d g, bes~
  | bes e, a g~
  | g f bes2~
  %10
  | bes4 a d2~
  | d4 c bes2~
  | bes4 a8 g f2~
  | f8 f' e d e f g e
  | a2 r4 a,
  %15
  | f1
  | e4 e' c2~
  | c8 c b a b cis d4
  | e2~ e8 cis d e
  | a,2.^\markup { \episodeBullet "First episode, bars 19-43" }
    d4
  %20
  | bes2. c4
  | a2. bes4
  | g2. a4
  | f2 r
  | \override MultiMeasureRest.staff-position = #6
    R1*3
  %27
  | \highlightSubjectFirstInv { c'2^\markup \scale #'(1 . -1) \subject #'(-0.8 . 0) #1
    f,^\markup {
      \hspace #-6
      \secondExpositionBullet "Second exposition SATB, bars 27−43"
    }
  | a c
  | d c4 bes
  %30
  | a2~ a8 g a b
  | c2 } r
  | r4 e4 c2~
  | c4 b8 c d2~
  | d8 g, a b c2~
  %35
  | c4 d bes2
  | r4 d bes bes'~
  | bes a8 g a g fis a
  | d,2 r4 d
  | bes4. bes8 a2
  %40
  | r4 a' f2
  | r4 g cis,8 d e4~
  | e8 a, b cis d2~
  | d8^\markup { \episodeBullet "Second episode, bars 43-60" }
    b c! d e2~
  | e8 g f e d2~
  %45
  | d8 f e d c2~
  | c8 e d c b2~
  | b8 a gis b a b c4~
  | c8 b a c b c d4~
  | d8 c b d c d e4~
  %50
  | e8 d cis e d e f4~
  | f e2 d4
  | c a'2 gis4
  | a e c2
  | r4 c a2
  %55
  | a'4\rest a f2
  | r4 f d2
    \break
  | r8 c' bes a g f e d
  | c4 d bes2~
  | bes4 g' e2~
  %60
  | e8 a g f e d c bes
  | a^\markup { \subjectPresentationBullet "Subjects presentation BT" }
    f' e dis e2~
  | e8 f e dis e2~
  | e8 g fis e fis g a4
  | d,2. d4
  %65
  | bes2~ bes8 ees d cis
  | d2~ d8 ees d cis
  | d2 r
  | \override MultiMeasureRest.staff-position = #2
    R1*4
  | s1*5
  %77
  | \highlightSubjectFirstInv { e2^\markup \scale #'(1 . -1) \subject #'(2.4 . 0) #1 a,
  | c e
  | g fis4 e
  %80
  | dis2~ dis8 b cis dis
  | \unHighlightSubject e2~^\markup { \episodeBullet "Third episode, bars 81-106" } }
    e8 f! g e
  | f e d4~ d8 e f d
  | e d c4~ c8 d ees c
  | d c b4~ b8 c d b
  %85
  | c1~
  | c2 b
  | c r4 c
  | a2 r4 a'
  | f2 r4 d
  %90
  | b2 r4 d
  | g1~
  | g2~ g8 g f e
  | f2 r8 g a bes!
  | c f, ees d ees2~
  %95
  | ees4 d r8 e fis g
  | a d, c bes c2~
  | c8 bes c ees d2~
  | d4 c8 d ees2~
  | ees4 d8 ees f2~
  %100
  | f4 ees8 f g2~
  | g4 f8 g a2~
  | a8 d, g2 fis4
  | g r r g
  | e!2 r8 f e d
  %105
  | c2 r4 c
  | a2 r8 g' f e
  | d^\markup {
      \subjectStrettoBullet "Third exposition T•B•SA (stretto), bars 107−115"
    }
    ees d cis d2~
  | d8 ees d cis d2~
  | d8 ees d cis d4. e8
  %110
  | f4 a f f\rest
  | \highlightSubjectFirstInv { d^\markup \scale #'(1 . -1) \subject #'(-1 . 0) #1 a2 c4~
  | c e2 f4~
  | f e2 d4~
  | d cis~ cis8 a b cis
  %115
  | d2^\markup { \episodeBullet "Fourth episode, bars 115-128" } } r4 d
  | bes2 r
  | r8 bes c d c bes a g
  | a1~
  | a4 g c2~
  %120
  | c4 a d2~
  | d4 b e2~
  | e8 f g d cis bes' a g
  | f1~
  | f4 e8 d e2~
  %125
  | e4 d8 cis d2~
  | d4 c!8 bes c2~
  | c~ c8 bes c a
  | bes d ees c d g d c~
  | c^\markup {
      \subjectPresentationBullet "Subjects presentation TA"
    }
    bes c ees d c bes a
  %130
  | g fis g4 r a
  | gis2 a4 r
  | r2 r8 a' g e
  | f a d, cis d2~
  | d8 f e d cis d b cis
  %135
  | d4. cis8 d4. cis8
  | d4. ees8 a,4 r
  | r8 d e! g cis,2
  | d1\fermata
  | \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  | s1*4
  %5
  | \staffLower
    \stemDown
    \highlightSubjectFirstInv { d2^\markup \scale #'(1 . -1) \subject #'(1.8 . 0) #1 a
  | c
    \staffUpper
    e
  | f e4 d
  | cis2~ cis8 a b cis
  | \unHighlightSubject d2~ } d8 c! d e
  %10
  | f2~ f8 e f g
  | a2~ a8 g f e
  | d2~ d8 e d cis
  | d4 g cis, e~
  | e a, d2~
  %15
  | d8 ees d cis d4 d'~
  | d c8 b a g f e
  | d4 g~ g8 a g f
  | g a bes g e2~
  | e4 d8 e f2~
  %20
  | f4 g e2~
  | e4 f d2~
  | d4 e cis2
  | d b'8\rest c bes a
  | \stemUp
    g2^~ g8 d' c bes
  %25
  | a2^~ a8 ees' d c
  | bes2^~ bes8 bes a g
  | \stemDown
    f4 ees d2
  | c8 ges' f e f2~
  | f8 c' bes a g a g f
  %30
  | e d e4 d r
  | \highlightSubjectFirstInv { g2_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #1 c,
  | e g
  | a g4 f
  | e2~ e8 d e fis
  %35
  | \unHighlightSubject g2~ } g8 aes g fis
  | g2~ g8 aes g fis
  | g4 c fis, a~
  | a8 aes g fis g2~
  | g8 fis g4~ g8 g f e
  %40
  | d4 r r a'
  | f bes e,4. bes'8
  | a g f g a2~
  | a8 gis a4 r8 e f g
  | a2 r8 d, e f
  %45
  | g2 r8 c, d e
  | f2~ f8 e d f
  | e2~ e4. a8
  | f4 a~ a4. b8
  | gis4 b~ b4. c8
  %50
  | a2. gis8 a
  | b4 d gis, b!~
  | b8 a c4 r8 f e d~
  | d d c b a2
  | r8 bes! a g f2
  %55
  | b8\rest g' f e d2
  | a8\rest ees' d c bes2
  | g2\rest b4\rest bes
  | g2~ g8 a g f
  | e c' bes a g bes a d
  %60
  | c4 e, c2~
  | c4 aes' g8 des' c b
  | c2~ c8 des c b
  | c2~ c4. c8~
  | c bes a g a2~
  %65
  | a8 aes g fis g2~
  | g8 aes g fis g4 gis~
  | gis8 a gis a b2~
  | b4 bes g e
  | \stemUp
    a2. d,4
  %70
  | bes'2. c,4
  | a'2. bes4
  | g2^~ g8 bes a g
  | \highlightSubjectFirstInv { a2^\markup \scale #'(1 . -1) \subject #'(2.4 . 0) #1 d,
  | f a
  %75
  | c b4 a
  | gis2^~ gis8 e fis gis
  | \stemDown \unHighlightSubject a } bes! a gis a d c b
  | a bes! a gis a d c b
  | ais fis' e d cis b ais cis
  %80
  | fis, g fis g a4 fis
  | e b' a2~
  | a8 gis fis a gis4 a
  | b a8 gis a2~
  | a4 g8 fis g4 r
  %85
  | r fis~ fis8 g a fis
  | g4 f!8 aes g f e d
  | e4 g e g~
  | g8 g e d f4 r
  | r a f a~
  %90
  | a8 a g fis g2
  | r4 e' cis \stemUp d~ \stemDown
  | d8 b cis d e2~
  | e8 e d cis d2
  | g,\rest r8 bes a g
  %95
  | f c' bes a bes4 g\rest
  | r2 r8 g fis e
  | d4 r r8 g a bes
  | ees,4 r r8 a bes c
  | fis,4 r r8 bes d aes
  %100
  | g4 r r8 a! bes g
  | a4 g\rest g2\rest
  | g\rest g8\rest ees' d c
  | bes4 r r8 c bes a
  | g2 r4 g
  %105
  | e2 r8 bes' a g
  | f2 r4 a
  | f2~ f8 g f e
  | d4 f~ f8 g f e
  | d4 e f8 a b cis
  %110
  | d4 f d a
  | \highlightSubjectFirstInv { f2_\markup \scale #'(1 . -1) \subject #'(1.4 . 0) #1 c!
  | e gis
  | a g!4 f
  | e2~ e8 cis d e
  %115
  | a,4 } a' fis2
  | r8 fis g a g f e d
  | c4 r r2
  | r8 e f g f ees d cis
  | d4 r r e
  %120
  | c r r fis
  | d r r gis
  | e r r2
  | r8 d' cis e d c bes a
  | bes a g4~ g8 a bes g
  %125
  | a g f4~ f8 g a f
  | g f ees4~ ees8 fis g e
  | fis g a4 d, r
  | R1
  | r4 a bes c
  %130
  | d2 r4 a
  | b2 r4 f'~
  | f e r2
  | \highlightSubjectFirstInv { a2_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #1 d,
  | f a
  %135
  | bes a4 g
  | fis2~ fis8 d e fis
  | \unHighlightSubject g2~ } g8 fis g e
  | fis1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \mergeDifferentlyDottedOn
  \showStaffSwitch
  | R1*4
  | s1*6
  | \stemDown
    \highlightSubjectFirstInv { a2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,
  | f a
  | bes a4 g
  | f2~ f8 e f g
  %15
  | \stemUp
    \unHighlightSubject a2~ } a8 bes! a gis
  | a2~ a8 bes! a gis
  | a4 d g, bes~
  | bes e, a g
  | f8 e f g a4 r
  %20
  | r8 d, e f g4 r
  | r8 cis, d e f4 r
  | r8 b, cis d e4 r
  | r8 a bes! c d2~
  | d8 b c d
    \staffUpper
    \stemDown
    e2_~
  %25
  | e8 cis d e f2_~
  | f8 f e! d
    \staffLower
    \stemUp
    c2^~
  | c2. bes4
  | a c a2~
  | a8 a g f e d e4~
  %30
  | e a8 g f e f4~
  | f e8 d e f g4~
  | g8 a bes!2 a8 g
  | f2 r
  | R1
  %35
  | \highlightSubjectFirstInv { d'2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 g,
  | \stemDown bes d
  | ees2 \stemUp d4 c
  | bes2~ bes8 a bes c
  | \unHighlightSubject d } ees d cis d e,! f g
  %40
  | a d, d'4~ d8 ees d cis
  | d f e! d a'4 cis,~
  | cis d8 e f2~
  | f4 e c2~
  | c4 d b2~
  %45
  | b4 c a2~
  | a4 b gis2~
  | gis4 e2 a4~
  | a f2 d4
  | b' gis2 gis4
  %50
  | a e' a, d~
  | d8 c b d c b a gis!
  | a4. b8 b2\startTrillSpan
  | a\stopTrillSpan r8 d c bes!
  | a2 r8 bes a g
  %55
  | f2
    \staffUpper
    \stemDown
    a8\rest g' \hideStaffSwitch
    \staffLower
    \stemUp
    f e \showStaffSwitch
  | d2
    \staffUpper
    \stemDown
    a8\rest ees' d c
  | bes4 g' e2
  | \staffLower
    \stemUp
    r8 c bes a g2~
  | g d'8\rest d c bes
  %60
  | a2 r8 bes a g
  | a4 b c e
  | c2 r4 e
  | c2 r4 ees
  | a,2 r
  %65
  | \highlightSubjectFirstInv { d_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 g,
  | bes d
  | f e4 d
  | cis2~ cis8 a b cis
  | d4 } a
    \staffUpper
    \stemDown
    \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) Tie
    f'2_~
  %70
  | f4
    \staffLower
    \stemUp
    g,
    \staffUpper
    \stemDown
    \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) Tie
    e'2_~
  | e4 f d2_~
  | d8 f e d cis2_~
  | cis8 ees^\markup {
      \hspace #1 \subjectPresentationBullet "Subjects presentation AS"
    }
    d cis d g f e
  | d ees d cis d g f e
  %75
  | dis e dis e fis e fis dis
  | b c b c d4 b
  | \staffLower
    \stemUp
    a e' c r
  | r e c e~
  | e ais, r fis!8 g!
  %80
  | a!2 r4 b~
  | b8 c d b c4 cis
  | d2. c4
  | b e c8 b c4
  | a d ees f~
  %85
  | f8 b, c d ees2~
  | ees8 d4.~ d4 g,~
  | g8 g a b c4 r
  | r c a2
  | r8 a b cis d4 r
  %90
  | r d b2
  | r8 b cis d e4
    \staffUpper
    \stemDown
    bes'!
  | \staffLower
    \stemUp
    e,8 d e4 cis2
  | r4 a f2
  | r4 c' a c
  %95
  | r f, d2
  | r4 a' fis a~
  | a g8 fis g2~
  | g8 fis g bes a2~
  | a8 g a c bes2~
  %100
  | bes8 a bes d c2~
  | c8 bes c ees d c bes a
  | bes4. c8 a2\startTrillSpan
  | g8\stopTrillSpan ees' d c bes2
  | r8 c bes a g2
  %105
  | r8 d' c bes a2
  | r8 bes a g f2
  | \highlightSubjectFirstInv { a^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 d,
  | f a
  | bes a4 g
  %110
  | f2~ f8 e f g
  | \unHighlightSubject a } bes! a gis a2~
  | a8 a g f e4 d~
  | d8 e d cis d e f g
  | a e'\rest e4\rest r2
  %115
  | r8 c d ees d c bes a
  | g4 d' bes2~
  | bes8 g a bes a g f e
  | f1~
  | f8 f e d e4 g~
  %120
  | g fis8 e fis4 a~
  | a gis8 fis gis4 b~
  | b bes a2~
  | a4 g a d~
  | d bes g e
  %125
  | r a f d
  | r g ees c
  | d2~ d8 d e fis
  | g4 r r2
  | \highlightSubjectFirstInv { d'2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 g,
  %130
  | bes d
  | f e4 d
  | cis2~ cis8 a b cis
  | d4 } a~ a8 bes! a gis
  | a b, cis d e f g e
  %135
  | fis a g4~ g8 fis bes4~
  | bes8 a c2 b8 a
  | b4 bes2 a8 g
  | a1\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \mergeDifferentlyDottedOn
  | s1*14
  %15
  | \highlightSubjectFirstInv { d2_\markup \scale #'(1 . -1) \subject #'(1.3 . 0) #1 a
  | c e
  | f e4 d
  | cis2~ cis8 a b cis
  | \unHighlightSubject d2~ } d8 c bes a
  %20
  | g2~ g8 bes a g
  | f2~ f8 a g f
  | e2~ e8 g f e
  | d4 d' bes g
  | e e' c a
  %25
  | f f' d bes
  | g g' e c
  | a8 f g a bes c d e
  | f2~ f8 ees d c
  | bes2 c
  %30
  | cis d
  | c! r4 e
  | c g'8 f e d ees4~
  | ees8 ees d c b g a b
  | c4 bes! a2
  %35
  | g8 a bes d g4 d\rest
  | \override MultiMeasureRest.staff-position = #-2
    R1*3
  | \highlightSubjectFirstInv { g2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d
  %40
  | f a
  | bes a4 g
  | f2~ f8 e f g
  | a2 } r4 a
  | f2 r4 g
  %45
  | e2 r4 f
  | d2~ d8 c b d
  | c4. b8 c4 a
  | d4. c8 d4 b
  | e4. d8 e4 c
  %50
  | f4. e8 f4 d
  | gis2 d4\rest e
  | a f d e
  | a,2 b4\rest a'
  | f2 r4 f
  %55
  | d2 d4\rest d'
  | bes2 e,4\rest bes'
  | g2 e8\rest a g f
  | e2 r8 f e d
  | c2 b\rest
  %60
  | \override MultiMeasureRest.staff-position = #-4
    R1
  | \highlightSubjectFirstInv { f'2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 c
  | e g
  | bes a4 g
  | fis2~ fis8 d e fis
  %65
  | g4 } d bes2
  | r4 d bes2
  | r8 c b a gis e fis gis
  | a a' g! f! e f g e
  | f g f e d c bes a
  %70
  | g a bes g c d e c
  | f g a f bes a g f
  | e d cis b a g f e
  | f4 a' f d
  | c\rest \stemUp a f d
  %75
  | d'8\rest g fis e dis cis dis b
  | \stemDown e4 e, b' d
  | c r r a'
  | fis2 r4 a
  | fis cis ais fis
  %80
  | r b fis' a~
  | a gis a2~
  | a8 b c a b4 a
  | gis e f fis~
  | fis g2 aes4~
  %85
  | aes a~ a8 g fis a
  | g2 g,
  | c r8 c d e
  | f2 d8\rest g f e
  | d2 d8\rest d e f
  %90
  | g2 d8\rest a' g f
  | e2 r8 e f g
  | a2 r4 a
  | d,2 r8 d c bes
  | a4 b\rest b\rest f'
  %95
  | bes,2 r8 bes a g
  | fis4 r r d'
  | g, a bes g
  | c ees c a
  | d fis d bes
  %100
  | ees g e c
  | f a fis d
  | g ees c d
  | g bes g2
  | b,4\rest g' e2
  %105
  | b4\rest a' f2
  | r4 f d2~
  | d4
    \highlightSubjectFirstInv { f2_\markup \scale #'(1 . -1) \subject #'(0.5 . 0) #1 bes,4~
  | bes d2 f4~
  | f g~ g8 f4 e8
  %110
  | d2~ d8 cis d e
  | f2~ } f8 f e d
  | c2~ c8 b4 bes8
  | a1~
  | a8 g' a bes a g f e
  %115
  | fis2 d4\rest d
  | g, r r g'
  | e2 r4 c
  | f c a f
  | bes2~ bes8 a g bes
  %120
  | a b c4~ c8 b a c
  | b cis d4~ d8 cis b d
  | cis d e4~ e8 d cis e
  | d4 e f d
  | g2 r4 c,
  %125
  | f2 r4 f,
  | bes2~ bes8 a bes g
  | bes a g fis g2~
  | g8 fis g a bes g bes d
  | g1~
  %130
  | g8 d c a bes d g, f
  | e e' d b c e a, gis
  | a a' g e f2~
  | f bes,
  | a1
  %135
  | d~
  | d~
  | d~
  | d
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
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 4"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus IV" }
    subsubtitle = \markup {
      \center-column {
        \line { "Four-voice fugue on principal subject in inversion, employing counter-subjects" }
        \fugueStructureBoxesIV
      }
    }
  }
  \layout {
    \context {
      \Voice
      \override TextScript.color = #greyTextColor
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-2
      \override VoiceFollower.color = #greyTextColor
      \override VoiceFollower.style = #'dashed-line
    }
  }
  \midi { \tempo 4=180 }
}
