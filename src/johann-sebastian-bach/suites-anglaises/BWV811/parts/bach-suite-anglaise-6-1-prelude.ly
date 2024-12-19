Global = {
  \key d \minor
  \time 9/8
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVIPrelude
  %1
  \tempo "Prélude"
  | r4 r8 d f a cis, g' bes
  | a4 d,8 f a d~ d e cis
  | d a c~ \once\override Tie.extra-offset = #'(0 . 1) c4.~
    \once\override Tie.extra-offset = #'(0 . -0.6)
    c~
  | c4 s8 a c fis, g bes d,
  %5
  | e g d cis e g bes a g
  | f e d \stemNeutral f'4.\mordent f
  | f2.~\trill f4.~
  | f2.~ f4.~
  | f8 e d e a gis a b c
  %10
  | d, e f~ f e d c d b
  | \once\stemUp c2.~ c4.~
  | c~ c8 b a d e f
  | \stemDown s8 b,4~ \stemUp b2.~
  | b4 gis8 a b c e, a gis
  %15
  | a4. s s8 a c
  | \stemNeutral e a, c e a e c e c
  | a c16 b a gis a8 c a e a e
  | c e c s2.
  | r4 r8 \stemUp a8 c e gis, d' f
  %20
  | e4 a,8 c e a~ a b gis
  | a e g~ \once\override Tie.extra-offset = #'(0 . 1.5) g4.~ g~
  | g4 s8 e g cis, d f a,
  | bes! d a gis b d f e d
  | c\prall b a c'4.\mordent c
  %25
  | c2.\trill~ c4.~
  | c a8 c ees \stemNeutral fis a c,
  | bes\parenthesize\prall a g bes'4.\mordent bes
  | bes2.~\trill bes4.~
  | bes8 a g f e d cis a' g
  %30
  | f e d c bes a g g' f
  | e d c bes a g f f' e
  | d bes' a gis a e f cis d
  | gis, b d f e d cis d b
  | \stemUp cis2.\prall d4.\upmordent ~
  %35
  | d16 f e d c b \stemNeutral gis'2.
  | a4. r4 r8 r4 r8
  \break
  | \tempo Adagio
    \stemUp d,4 e32 d cis d d4.\trill ~ d4 cis16 d
  | \tempo Allegro
    cis8 f\rest f\rest f4\rest f8\rest f4\rest f8\rest
  | s1*9/8*2
  %41
  | e16\rest a, b cis d e f8 e d e d cis
  | d16 c bes a g f e g a bes a g c bes a g f e
  | d f g a g f bes a g f e d c4.~
  | \repeat unfold 3 { c16 e f a e f }
  %45
  | \repeat unfold 3 { c16 e f a e f }
  | d8 e16 f g a bes8 a g a g f
  | c'4 e,8 f4 g8 g4~\prallprall g32 f g a
  | f4 c'8\rest r16 d, e f g a bes, c d e f g
  | r f' e d c bes a8 b c b c d
  %50
  | c2.~ c4.~
  | c2.~ c4 c8
  | b16 a b c d e \stemNeutral f8 e d e16 c d e f g
  | a f e d e f g e d c d e f d c b c d
  | e b c e b c f, b c e b c g b c e b c
  %55
  | a b c e b c g b c e b c fis, b c ees b c
  | f, a b d a b ees, g a c fis, g d f g b f g
  | \stemUp c4.~ c16 g a b c d ees8 d c
  | bes4.~ bes4 bes8 d c bes
  | a4.~ a4 a8 d16 e d e f8
  %60
  | g,4. cis,16 d e f g a bes8 a g
  | \stemNeutral f16 d cis b cis d g e d cis d e a f e d e f
  | b g f e f g cis a g f g a d bes a g a bes
  | e bes a g f e f a bes c bes a g d' e f e d
  | cis4.~ cis16 b cis d e f g f e f g e
  %65
  | f d e fis g a bes8 a g a g fis
  | g4.~ \stemUp g16 a, b c d e f e d e f d
  | e c d e f g a8 g f g f e
  | f bes d, e a c, d g bes,
  | c f a, \stemNeutral\tieNeutral bes e g, a d f,
  %70
  | g16 a bes d bes a g a bes d a g f g a d g, f
  | e f g bes g f e f g bes f e d e f b e, d
  | cis8 d16 e f g a b cis d e f g f e f g e
  | f d c bes c d e c bes a bes c d bes a g a bes
  | c a g f g a bes g f e f g a f e d e f
  %75
  | g4.~ g16 bes a g f e f a g f e d
  | cis d e a cis, e d e f bes d, f e f g c e, g
  | f g a d fis, a g a b e gis, b a b cis d e f
  | g e cis a cis e f d b gis b d e cis bes g bes cis
  | d b gis f gis b cis bes g e g bes cis e d cis b a
  %80
  | d8 a f d a' f d a' f
  | d a' f d gis f d a' f
  | d16 e f b f e d e f b e, d cis e g bes a g
  | a g f e d c b a b cis d e cis b cis d e g,
  | r16 a' b cis d e f8 e d e f16 e d cis
  %85
  | a' g f e d cis d\stemUp  e d e f8 a, d cis
  | d a a a a a bes16 c d bes c d
  | g,8 g g g g g a16 bes c a bes c
  | \stemNeutral f, g a f g a bes c d bes d c e f g e f g
  | s2. s4 \stemUp\tieUp f8
  %90
  | e4. g4\rest fis8 g a bes
  | fis4. g4\rest gis8 a b c
  | gis16 b a g f e d f e d c b a c b a gis a
  | gis8 e e a16 b c a b c b c d b c d
  | c4.~ c16 d e c d e d4.~
  %95
  | d16 e f! d e f e4.~ e16 f g! e f g
  | f2.~ f4.~
  | f16 e d f e d c b a c b a dis e fis dis e fis
  | gis,4. \stemNeutral\tieNeutral r16 fis gis a b c d c e d c b
  | c a b cis d e \stemUp\tieUp f8 e d e d cis
  %100
  | d4. ~ \stemNeutral\tieNeutral d16 b a gis a b e,4.~
  | e4.^~ e16 fis gis a b c d, \stemUp\tieUp e fis gis a b~
  | b8 e, a~ a g4~ g8 c, f~
  | \tieNeutral f e4~ e8 a, d~ d c4~
  | c16
    \change Staff = "lower"
    gis a c fis, a dis, e fis a dis, fis d'\rest a fis dis b d
  %105
  | a'16\rest e fis gis a b c8 b a b a gis
  | \once\override Beam.positions = #'(12 . 14)
    a16 b c
    \change Staff = "upper"
    d e f g f e f g a \stemUp\tieUp bes8 a g
  | f4.~ f4 f8 a g f
  | e4.~ e4 e8 a16 b a b c8
  | % FIXME:  NoteColumn.force-hshift has no effect here...
    d,4.~ \once\stemDown d8 s \once\stemDown d f! e d
  %110
  | c16 d e c d e f g a f g a b c d b c d
  | e,8 fis16 gis a b c8 b a b c16 b a gis
  | e' d c b a gis a b a b c8 e, a gis
  | a8 s4 f8 e d e d cis
  | d d'\rest d\rest d16\rest a8 g f16 d'\rest g,8 f e16
  %115
  | f d e fis g a bes8 a g a g fis
  | g d'\rest d\rest e16\rest d8 c bes16 d\rest c8 bes a16
  | bes8 d d d d d ees16 f g ees f g
  | c,8 c c c c c d16 ees f d ees f
  | bes,16 c d bes c d ees f g ees f g a! bes c a bes c
  %120
  | fis,4. g4\rest g8\rest f4.
  | e4. e4\rest e8\rest ees4.
  | d8 f bes ees, g bes d, f bes
  | c, g' bes bes, f' bes bes, ees g
  | \stemNeutral c,16 d ees g d ees c d ees f g a bes a c bes a g
  %125
  | f bes a g f ees d ees f c d bes ees f g d ees c
  | f g a! d, ees c d a' bes f g ees d c ees d c d
  | bes d f bes, d f \stemUp bes8 bes bes bes bes bes
  | bes16 g ees g ees c a'8 a a a a a
  | aes16 f d f d bes g'8 g g g g g
  %130
  | g4. c8 bes a a g fis
  | fis a\rest a\rest s2.
  | s1*9/8*9
  %141
  | \stemNeutral r16 d, e fis g a bes8 a g a bes16 a g fis
  | g f ees d c b c b c d ees8 bes c16 bes a bes
  | g8 bes bes bes bes bes e!16 f g e f g
  | \stemUp a,8 a a a a a d16 e f d e f
  %145
  | \stemNeutral g a bes g a bes e, f g e f g cis, d e cis d e
  | a,4.~ a16 a b cis d e f e g f e d
  | cis8 d\rest d\rest d4\rest d8\rest d4\rest d8\rest
  | s1*9/8*2
  %150
  | c16\rest \stemUp a b cis d e f8 e d e d cis
  | d16 c bes a g f e g a bes a g c bes a g f e
  | d f g a g f bes a g f e d c4.~
  | \repeat unfold 3 { c16 e f a e f }
  | \repeat unfold 3 { c16 e f a e f }
  %155
  | d8 e16 f g a bes8 a g a g f
  | c'4 e,8 f4 g8 g4~\prallprall g32 f g a
  | f4 d'8\rest  r16 d, e f g a bes, c d e f g
  | \stemNeutral r f' e d c bes a8 b c b d e
  | \stemUp c2.~ c4.~
  %160
  | c2.~ c4 c8
  | b16 a b c d e \stemNeutral f8 e d e16 c d e f g
  | a f e d e f g e d c d e f d c b c d
  | e b c e b c f, b c e b c g b c e b c
  | a b c e b c g b c e b c fis, b c e b c
  %165
  | f, a b d a b ees, g a c fis, g d f g bes f g
  | \stemUp\tieUp c4.~ c16 g a b c d ees8 d c
  | bes4.~ bes4 bes8 d c bes
  | a4.~ a4 a8 d16 e d e f8
  | g,4. cis,16 d e f g a bes8 a g
  %170
  | \stemNeutral\tieNeutral f16 d cis b cis d g e d cis d e a f e d e f
  | b g f e f g cis a g f g a d bes a g a bes
  | e bes a g f e f a bes c bes a g d' e f e d
  | cis4.~ cis16 b cis d e f g f e f g e
  | f d e fis g a bes8 a g a g fis
  %175
  | g4.~ \stemUp g16 a, b c d e f e d e f d
  | e c d e f g a8 g f g f e
  | f bes d, e a c, d g bes,
  | c f a, bes e g, a d f,
  | \stemNeutral g16 a bes d bes a g a bes d a g f g a d g, f
  %180
  | e f g bes g f e f g bes f e d e f b e, d
  | cis8 d16 e f g a b cis d e f g f e f g e
  | f d c bes c d e c bes a bes c d bes a g a bes
  | c a g f g a bes g f e f g a f e d e f
  | g4.~ g16 bes a g f e f a g f e d
  %185
  | cis d e a cis, e d e f bes d, f e f g c! e, g
  | f g a d fis, a g a b e gis, b a b cis d e f
  | g e cis a cis e f d b gis b d e cis bes g bes cis
  | d b gis f gis b cis bes g e g bes cis e d cis b a
  | d8 a f d a' f d a' f
  %190
  | d a' f d gis f d a' f
  | d16 e f b f e d e f b e, d cis e g bes a g
  | a g f e d c! b a b cis d e cis b cis d e g,
  | r16 a' b cis d e f8 e d e f16 e d cis
  | a' g f e d cis \stemUp d e d e f8 a, d cis
  %195
  | d4. r4 r8 r4 r8
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s4. d4. cis4.*1/3 g'4
  | d4 d8~ d4.*1/3 a'4 e4.
  << {
  | \stemDown f \stemUp \once\override NoteColumn.force-hshift = #0.4 fis8 a d,_~ d4._~
  | \shiftOn d8 d fis \stemDown a4. g
  } \\ {
  | s4.
    \once\shape #'((1.6 . -0.8) (0 . -1.2) (0 . -1.2) (-0.6 . -0.8)) Tie
    \stemDown \once\override NoteColumn.force-hshift = #0.4
    fis^~
    \stemUp \once\override Tie.extra-offset = #'(0 . 0.2) fis_~
  | fis4 s8 s2.
  } \\ {
  | s4. s8 \stemDown
    \once\shape #'((0.6 . -0.8) (0 . -1.2) (0 . -1.2) (-0.6 . -0.8)) Tie
    a4~
    \stemUp
    \once\override NoteColumn.force-hshift = #0
    \once\override Tie.extra-offset = #'(-0.1 . -1)
    a4.~
  | \shiftOff a4 s8 s2.
  } >>
  | e4. cis~ cis
  %5
  | d4 s8 s2.
  | s1*9/8*6
  %13
  | \stemUp gis8 b e, \stemDown f e4~ e4.~
  | e8 e4~ e4. e~
  | e s e8 s4
  | s1*9/8*3
  %19
  | s4. a, gis
  | a4 s8 c4. b!
  << {
  | \stemDown c4. \stemUp \shiftOn cis8 e \tieDown a,~ \shiftOff a4.~
  | \shiftOn a8 a cis \stemDown e4. d
  } \\ {
  | s4. s8 e4^~ \stemUp e4.~
  | e4*1/2 \stemDown a,4 s8 g'4 s8 f4
  } \\ {
  | s4.
    \once\override Tie.extra-offset = #'(-0.8 . -0.4)
    cis4._~
    \shiftOff cis~
  | cis4
  } >>
  | bes4.*1/3 d4 << { \stemDown gis,4._~ gis } \\ { s8 b4 s4. } >>
  | a4. s2.
  %25
  | s1*9/8
  | d8\rest d fis a4. s
  | s1*9/8*7
  %34
  | e8\rest bes' a gis a e f cis d
  | s1*9/8*2
  | <f b>8 s4 b2.
  | a8 s4 s2.
  | s1*9/8*8
  %47
  | e4 c8 c4 d8 c4.
  | <a c>4 c8\rest s2.
  | s1*9/8
  %50
  | f16\rest a g f e d c8 d e d e f
  | e f g g f ees ees d4~
  | d4. s2.
  | s1*9/8*4
  %57
  | e4. s2.
  | e16\rest g fis e d
    \change Staff = "lower" \voiceThree
    c
    \change Staff = "upper" \voiceTwo
    s4 \once\stemUp g'8
    \once\override Beam.positions = #'(-1 . -2.1)
    bes a g
  | d16\rest f e d c
    \change Staff = "lower" \voiceThree
    bes
    \change Staff = "upper" \voiceTwo
    s4 a'8~ a4.
  %60
  | s s4 g8~
    \once\override Beam.positions = #'(-2 . -3.1)
    g f e
  | s1*9/8*24
  %85
  | s4. s4 bes'8 a4 g8
  | f4 c8\rest c4\rest f8 g4 f8
  | e4. b4\rest e8 f4 e8
  | s1*9/8
  | c'4.^~ c16 c d e d c b c d e f b,
  %90
  | c4. g4\rest a8 bes c d
  | a4. g4\rest b8 c d e
  | b e,\rest e\rest e4\rest e8\rest c4\rest c8\rest
  | c\rest e e e2.~
  | e16 fis g e fis g fis4.~ fis16 g a fis g a
  %95
  | g4.~ g16 a b gis a b a4.~
  | a16 bes c a bes c d e f d e f bes, c d bes c d
  | gis,4. a8 d,\rest d8*1/2\rest \once\omit Flag \once \omit Stem a'16~ a4.
  | e4. s2.
  | s1*9/8*2
  %101
  | s4. g,4\rest b8\rest d4.
  | c4. b4 b8 a4.
  | s1*9/8*3
  %106
  | s2. <e' g>8 f e
  | s4. s4 \once\stemUp \once\omit Flag d8 \shiftOn f e d
  | s4. s4 e8~ e4.
  | s4.
    \change Staff = "lower" \voiceThree
    gis,16 a
    \change Staff = "upper" \voiceTwo \stemUp
    b c d e \stemDown d8 c b
  %110
  | a g\rest g\rest s2.
  | s1*9/8
  | s4. c4\rest f8 e4 d8
  | cis16 a b cis d e a,4\rest a8 bes a g
  | a a a a a a a a a
  %115
  | a a\rest a\rest a4\rest d8 ees d c
  | d d d d d d d d d
  | d c\rest c\rest c4\rest \once\omit Flag bes'8 c4 bes8
  | a4. e4\rest \shiftOn a8 bes4 a8
  | \change Staff = "lower" \voiceThree
    g4.~ g4 f8 e d c
  %120
  | \change Staff = "upper" \voiceTwo
    g'\rest a a a a a b16 c d b c d
  | g,8 g g g g g a16 bes c a bes c
  | d4. ees d
  | c bes bes
  | s1*9/8*3
  %127
  | s4. g8\rest d' d d d d
  | c g\rest g\rest g\rest c c c c c
  | bes g\rest g\rest g\rest bes bes bes bes bes
  %130
  | ees d c c2.~
  | c16 c d fis c d bes d ees g d ees c e fis a e fis
  | \stemNeutral\tieNeutral d fis g bes fis g e g a c g a fis g a c fis, a
  | bes a g f ees d ees c a' d, ees c d bes g' c, d bes
  | c4.~ c16 ees d c bes a bes d c bes a g
  %135
  | fis8 d d' d e,! d' d fis, d'
  | d g, d' d a bes c16 bes d c bes a
  | bes8 d bes g d' bes g d' bes
  | \repeat unfold 3 { g d' bes }
  | g16 a bes e! bes a g a bes e bes a fis a c ees d c
  %140
  | d c bes a g f e d e fis g a fis e fis g a c,
  | s1*9/8*3
  | \stemDown\tieDown s4. b4\rest g'8 f4 e8\rest
  | s1*9/8*11
  %156
  | e4 c8 c4 d8 c4.
  | <a c>4 c8\rest s2.
  | s1*9/8
  | f16\rest a g f e d c8 d e d e f
  %160
  | e f g g f ees ees d4~
  | d4. s2.
  | s1*9/8*4
  %166
  | e4. s2.
  | e16\rest g fis e d
    \change Staff = "lower" \voiceThree
    c
    \change Staff = "upper" \voiceTwo
    s4 \shiftOn \once\stemUp g'8 \shiftOff
    \once\override Beam.positions = #'(-1 . -2.1)
    bes a g
  | d16\rest f e d c
    \change Staff = "lower" \voiceThree
    bes
    \change Staff = "upper" \voiceTwo
    s4 a'8~ a4.
  | s4. s4 g8
    \once\override Beam.positions = #'(-2 . -3.1)
    g f e
  | s1*9/8*24
  %194
  | s4. s4 bes'8 a4 g8
  | f4. s2.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  << {
  %1
  | d'8\rest f, a~ a4. \once\override NoteColumn.force-hshift = #0 g
  | d'8\rest a4 s4. \once\override NoteColumn.force-hshift = #0 bes
  } \\ {
  %1
  | s8 f4~ f4. \once\override NoteColumn.force-hshift = #0 e
  | \stemUp f4. s \stemDown \once\override NoteColumn.force-hshift = #0 g
  } >>
  | a2. c8 bes a
  | bes2.~ bes4.
  %5
  | g2.~ g4.
  | a4. s2.
  | s2. s4.
  | d8\rest b d f e d c d b
  | c2.~ c4.
  %10
  | b2. gis!4.
  | \change Staff = "upper" \voiceTwo d'8\rest a' e c e
    \change Staff = "lower" \voiceThree a, g! f e
  | d'8\rest a c e d c b c d~
  | d4.~ d4 d8 c d b
  | c4.~ c8 b a b c d~
  %15
  | d c b c a c s4.
  | s1*9/8*2
  | s4. a8 c16 b a gis a8 e c
  \break
  << {
  | f8\rest c e~ e4. d
  | c'8\rest e,4~ e4. f
  } \\ {
  | s8 \stemDown c4~ c4. b!
  } >>
  %21
  | e2. g8 f e
  | f2.~ f4.
  | << { d2.~ d4. } \\ { s4. \once\stemUp b2. } >>
  | e4. s2.
  | s1*9/8*12
  %37
  | g4\rest g8\rest f2.
  | e16 a b cis \change Staff = "upper" \voiceTwo d e f8 e d e d cis
  | d4.~  d4 bes'8 c,4 a'8
  %40
  | bes,16 d e f e d g4.~ g16 a, b cis b a
  | d4.~ d8 e f g f e
  | \change Staff = "lower" \voiceThree
    d4. c2.
  | bes2.~ bes16 bes a g f g
  | a2.~ a4.~
  %45
  | a g f~
  | f16 f g a bes c d8 c bes c bes a
  | g4 g8 f4.~ f8 f e
  | f16 c d e f g s2.
  | a4.~ a8. g16 f8~ f g a
  %50
  | g4. e'16\rest g,8 a bes16 e\rest a,8 bes c16
  | f\rest bes,8 c d16 c4 bes8 a4.
  | g r16 b c d e f g8 f e
  | f4 f8 e4 e8 d4 d8
  | \repeat unfold 2 { c4 c8 c4 c8 c4 c8 }
  %56
  | d4. c g
  | s1*9/8
  | s4. s4
    \change Staff = "upper" \voiceTwo
    \shiftOn f'8 \shiftOff e4.
  | s1*9/8
  %60
  | s2. cis!4.
  | \change Staff = "lower" \voiceThree
    s1*9/8*23
  %84
  | f,4 e8 d e f g f d
  | d4. g4\rest d16 e f4 e8
  | d4. s2.
  | s1*9/8
  | d'4.~ d4 c8 bes4.~
  | bes16 bes a g f g a4.~ a8 g f
  | g8 s4 s2.
  | s1*9/8*5
  %96
  | c8\rest c\rest f, bes4 c8 d4 c8
  << {
  | b4. a2.*1/2 fis4.
  } \\ {
    s4. f'4\rest d8\rest \stemUp \once\override NoteColumn.force-hshift = #-1 c4.
  } >>
  | b4. s2.
  | s1*9/8*2
  %101
  | c4. s2.
  | s1*9/8
  | g4 g8 f4. e4 e8
  | fis s4 s4. b,4 s8
  %105
  | s1*9/8
  | s2. cis'8 d cis
  | d16\rest d c bes a g s4
    \change Staff = "upper" \voiceTwo
    c8 b4.
  | \change Staff = "lower" \voiceThree
    d16\rest c b a g f s2.
  | s4. s4 a8 g4.
  %110
  | s1*9/8*2
  | s2. e4.
  | e8 g\rest g\rest a16\rest a8 g f16 a\rest g8 f e16
  | s1*9/8
  | s4. c'16\rest d8 c bes16 c\rest c8 bes a16
  | s1*9/8*25
  %141
  | bes4 a8 g a bes c bes a
  | g4.~ g~ g4 fis8
  | g4. c4\rest d8 c d <bes e!>
  | <c f>4. c4\rest <cis e>8 d4.~
  %145
  | d4 c8 bes4 a8 g4.~
  | g16 g f e d e f4.~ f8 d g
  | c16\rest a b cis
    \change Staff = "upper" \voiceTwo
    d e f8 e d e d cis
  | d4.~ d4 bes'8 c,4 a'8
  | bes,16 d e f e d g4.~ g16 a, b cis b a
  %150
  | d4.~ d8 e f g f e
  | \change Staff = "lower" \voiceThree
    d4. c2.
  | bes~ bes16 bes a g f g
  | a2.~ a4.~
  | a g f~
  %155
  | f16 f g a bes c d8 c bes c bes a
  | g4 g8 f4.~ f8 f e
  | f16 c d e f g \stemNeutral a8 g f g f e
  | \stemUp a4.~ a8. g16 f8~ f g a
  | g4. d'16\rest g,8 a bes16 e\rest a,8 bes c16
  %160
  | f16\rest bes,8 c d16 c4 bes8 a4.
  | g4. s2.
  | f'4 f8 e4 e8 d4 d8
  | \repeat unfold 2 { c4 c8 c4 c8 c4 c8 }
  %165
  | d4. c g
  | s1*9/8
  | s4.
    \change Staff = "upper" \voiceTwo
    s4 f'8 e4.
  | s1*9/8
  | s2. cis!4.
  | \change Staff = "lower" \voiceThree
    s1*9/8*23
  %193
  | f,4 e8 d e f g f e
  | d4. e4\rest d16 e f4 e8
  | d4. s2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  %1
  | d2.~ \once\override NoteColumn.force-hshift = #0.7 d4.~
  | d2.~ \once\override NoteColumn.force-hshift = #0.2 d4.~
  | \repeat unfold 2 { d2.~ d4.~ }
  %5
  | \shiftOff d2.~ d4.
  | d4.~ d16 e f g a8 c, e a
  | b, d f a b c b gis a
  | gis2.~ gis4.
  | a2.~ a4.~
  %10
  | a gis e
  | a2. s4.
  | f2.~ f4.
  | e2.~ e4.~
  | e2.~ e4.
  %15
  | a4. b,4\rest b8\rest r4 r8
  | R1*9/8*2
  | \once\override MultiMeasureRest.staff-position = #-4 R1*9/8
  | a2.~ \once\override NoteColumn.force-hshift = #0.8 a4.~
  %20
  | \repeat unfold 3 { a2.~ a4.~ }
  | a2.~ a4.
  | a4. r8 \stemNeutral\tieNeutral a16 bes! c d ees8 c a
  %25
  | fis a d fis a c ees d c
  | bes4.~ bes8 a g a g fis
  | g4.~ g16 g a bes c d
    \change Staff = "upper" \voiceTwo
    e f g e f g
  | cis, d e cis d e
    \change Staff = "lower" \voiceFour
    \stemNeutral\tieNeutral g, a bes g a bes e, f g e f g
  | a,8 b cis d e f g a a,
  %30
  | d4.~ d8 d' c bes a bes
  | c,4.~ c8 c' bes a g a
  | bes,4. r4 r8 r4 r8
  | b4. r4 r8 r4 r8
  | a4 r8 s2.
  %35
  | gis'8 b d f e d cis d b
  | cis bes a gis a e f cis d
  | \stemDown\tieDown gis,4. gis2.
  | a8 g\rest g\rest g4\rest g8\rest g4\rest g8\rest
  | r16 d' e fis g a bes8 a g a g fis
  %40
  | g4.~ g16 e d cis d e f4.~
  | f~ f4 bes8 g4 a8
  | bes2. a4.~
  | a g4 f8 e4.
  | f e d
  %45
  | c bes a
  | bes4 g8\rest g4\rest g8\rest g4\rest g8\rest
  | b16\rest bes c d c bes a8 c bes c4.
  | f,8 e\rest e\rest a' g f g f e
  | f4.~ f16 e f8. e16 d8 e f
  %50
  | e4.~ e8 f g f g a
  | g a bes a4 g8 fis4.
  | g s2.
  | b,8\rest g'4 b,8\rest g'4 b,8\rest g'4
  | b,8\rest c4 b8\rest d4 b8\rest e4
  %55
  | b8\rest f'4 b,8\rest g'4 b,8\rest a'4
  | b8 a g c fis, a g4 g,8
  | c16 c' bes a g f e8 fis g fis g a
  | \stemNeutral\tieNeutral g4 r8 bes16 a g f e d c4.
  | f4 r8 a16 g f e d c b4.
  %60
  | r16 e f g a b r8 r e, a4 a,8
  | d f a, e' g a, f' a d,
  | g g, g' g a, g' g bes,! g'
  | cis, e a d, f a bes, d g
  | a16 a, b cis d e f8 e d e d cis
  %65
  | d4.~ d16 e fis g a bes c bes a bes c a
  | \stemDown\tieDown b g a b c
    \change Staff = "upper"
    d e8 d c d c b
  | c4.~ c16 d e f g a bes a g a bes g
  | a f e d e f g e d c d e f d c bes c d
  | e
    \change Staff = "lower"
    c bes a bes c d bes a g a bes c a g f g a
  %70
  | \stemNeutral bes4. r4 r8 a4.
  | g r4 r8 gis4.
  | a16 a, b cis d e f8 e d e d cis
  | d g bes, c f a, bes e g,
  | a d f, g c e, f bes d,
  %75
  | e16 a g f e d cis8 d e d e f
  | e f g f g a g a bes
  | a b c b cis d cis16 f! e d cis b
  | \repeat unfold 3 { a8 a' a, }
  | a8 a' a, a8 a' a, g g' g,
  %80
  | f16 cis' d f cis d g, cis d f cis d a cis d f cis d
  | bes cis d f cis d b cis d f cis d a cis d f cis d
  | gis,4. r4 r8 g4.
  | f16 a b cis d e f8 e d e d cis
  | \stemDown d4 c!8 bes4 a8 g4 a8
  %85
  | f4. f4\rest g8 a4 a8
  | d,4. r4 d''8 bes a g
  | c4. r4 bes8 a g f
  | bes4 a8 g4 a8 g4 f8
  | e4. f4 e8 d4.
  %90
  | c8 c' c \stemNeutral\tieNeutral c c c bes16 a g bes a g
  | d'8 d d d d d c16 b a c b a
  | e' f c e d c b a gis b a g f e d f e d
  | e e, fis gis a b c8 b a b a gis
  | a4.~ a16 b c a b c b4.~
  %95
  | b16 c d b c d c4.~ c16 d e cis d e
  | \stemDown\tieDown d2.~ d4.
  | e2.~ e4.
  | b16\rest e fis gis a b c8 b a b a gis
  | a4.~ a16 b cis
    \change Staff = "upper"
    d e f g f a g f e
  %100
  | f
    \change Staff = "lower"
    a, b c b a d4.^~ d16 gis, a b a gis
  | \stemNeutral\tieNeutral r16 e, fis gis a b c8 b a b a gis
  | a16 b c d e f g e d c d e f, g a b c d
  | \stemDown\tieDown e c b a b c d, e f g a b c a gis fis gis a
  | dis,2.~ dis4.
  %105
  | e4.~ e16 fis gis a b c d c e d c b
  | c b a b c d e d cis d e f g f e f g a
  | d,4. \stemUp f16 e d c b a g4.
  | c4. \stemUp e16 d c b a g fis4.
  | r16 b c d e fis b,8\rest b\rest \stemDown b! e4 \stemNeutral e,8
  %110
  | a r16 a b c d e f d e f d e f d e f
  | gis, f' e d c b a b a g f e d8 d' e
  | c8 r16 \stemDown c d e f8 e d e4 e,8
  | a a a a a a a a a
  | \stemNeutral f'16 a, b cis d e f8 e d e d cis
  %115
  | d8 d d d d d d d d
  | bes'16 d, e fis g a bes8 a g a g fis
  | g8 r r r4 g'8 ees d c
  | f4. f,4\rest ees'8 d c bes
  | ees4 d8 c4 d8 c bes a
  %120
  | d4. r16 ees d c bes a g a b g a b
  | c4. r16 d c bes a g f g a f g a
  | bes a bes d a bes g a bes d a bes f a bes d a bes
  | ees, a bes d a bes d, a' bes d a bes ees, a bes d a bes
  | a,4.~ a16 bes c a bes c f,8 f' ees
  %125
  | d4^\prall c8 bes bes' aes g f ees
  | ees'16 d c bes c a bes8 d, ees f ees f
  | bes,4.~ bes16 d f bes, d f bes d f bes, d f
  | ees,8 r r f,16 a c f, a c f a c f, a c
  | d,8 r r ees,16 g bes ees, g bes ees g bes ees, g bes
  %130
  | c, ees g c, ees g a, c ees a, c ees fis, a c fis, a c
  | \repeat unfold 2 { d,8 d' d, d d' d,  d d' d, }
  | g16 a bes g a bes c8 bes a bes a g
  | d'16 d' c bes a g fis8 g a g a bes
  %135
  | c16 a fis d fis a bes g e! cis e g a fis ees c ees fis
  | g e cis bes cis e fis ees c a c ees fis d fis a g fis
  | g fis g bes fis g bes, fis' g bes fis g c, fis g bes fis g
  | d fis g bes fis g ees fis g bes fis g d fis g bes fis g
  | cis,4. r4 r8 c4.
  %140
  | bes16 d e! fis g a bes8 a g a g fis
  | \stemDown g4 f8 ees4 d8 c4 d8
  | ees4.~ ees8 d c d c d
  | g,4. g4\rest g'8 bes a g
  | f4. c4\rest a'8 bes4 c!8
  %145
  | bes4 a8 g4 f8 e4 d8
  | cis4. d4 c8 bes!4.
  | a8 a\rest a\rest r4 r8 r4 r8
  | \stemNeutral\tieNeutral r16 d e fis g a bes8 a g a g fis
  | g4.~ g16 e d cis d e f4.~
  %150
  | f~ f4 bes!8 g4 a8
  | \stemDown\tieDown bes2. a4.~
  | a g4 f8 e4.
  | f e d
  | c bes a
  %155
  | bes4 b8\rest b4\rest b8\rest b4\rest b8\rest
  | b16\rest bes c d c bes a8 c bes c4.
  | f,8 g\rest g\rest s2.
  | f'4.~ f16 e f8. e16 d8 e f
  | e4.~ e8 f g f g a
  %160
  | g a bes a4 g8 fis4.
  | g r16 b c d e f g8 f e
  | r g,4 r8 g4 r8 g4
  | r8 c,4 r8 d4 r8 e4
  | r8 f4 r8 g4 r8 a4
  %165
  | b8 a g c fis, a g4 g,8
  | c16 c' bes a g f e8 fis g fis g a
  | g4 r8 bes16 a g f e d \once\stemNeutral c4.
  | f4 r8 a16 g f e d c \stemNeutral\tieNeutral b4.
  | r16 e f g a b r8 r e, a4 a,8
  %170
  | d8 f a, e' g a, f' a d,
  | g g, g' g a, g' g bes, g'
  | cis, e a d, f a bes, d g
  | a16 a, b cis d e f8 e d e d cis
  | d4.~ d16 e fis g a bes c bes a bes c a
  %175
  | \stemDown\tieDown b g a b c
    \change Staff = "upper"
    d e8 d c d c b
  | c4.~ c16 d e f g a bes a g a bes g
  | a f e d e f g e d c d e f d c bes c d
  | e
    \change Staff = "lower"
    c bes a bes c d bes a g a bes c a g f g a
  | \stemNeutral bes4. r4 r8 a4.
  %180
  | g r4 r8 gis4.
  | a16 a, b cis d e f8 e d e d cis
  | d g bes, c f a, bes e g,
  | a d f, g c e, f bes d,
  | e16 a g f e d cis8 d e d e f
  %185
  | e f g f g a g a bes
  | a b c b cis d cis16 f! e d cis b
  | a8 a' a, a a' a, a a' a,
  | a a' a, a a' a, g g' g,
  | f16 cis' d f cis d g, cis d f cis d a cis d f cis d
  %170
  | bes cis d f cis d b cis d f cis d a cis d f cis d
  | gis,4. r4 r8 g4.
  | f16 a b cis d e f8 e d e d cis
  | \stemDown d4 c8 bes4 a8 g4 a8
  | f4. e4\rest g8 a4 a8
  %175
  | d,4. r4 r8 r4 r8
    \fine
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
    opus = "BWV 811"
    title = \markup {
      \fill-line {
        \center-column {
          \line \abs-fontsize #18 \caps {
            "Suite VI" \abs-fontsize #14 { \caps "avec Prélude" }
          }
        }
      }
    }
    subtitle = ##f % \markup \abs-fontsize #14 { "Prélude" }
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
    \tempo 8. = 120
  }
}
