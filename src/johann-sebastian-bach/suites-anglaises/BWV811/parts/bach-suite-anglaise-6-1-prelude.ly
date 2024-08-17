Global = {
  \key d \minor
  \time 9/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
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
  | c f a, bes e g, a d f,
  %70
  | g16 a bes d bes a g a bes d a g f g a d g, f
  | e f g bes g f e f g bes f e d e f b e, d

  | R1*9/8*125
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
  | s1*9/8*11

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

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
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
  | bes4. r4 r8 a4.
  | g r4 r8 gis4.


  | R1*9/8*124
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
    opus = ##f % "BWV 811"
    title = \markup { "Prélude" }
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
