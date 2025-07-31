Global = {
  \key bes \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  %1
  | \tempo "Fuge"
  | \override MultiMeasureRest.staff-position = #6
    R1
  | \override MultiMeasureRest.extra-offset = #'(0.8 . 0)
    R1*2
    \revert MultiMeasureRest.extra-offset
    \override MultiMeasureRest.staff-position = #0
  | \highlightSubject { f4 e g fis
  %5
  | c'8 b f[ e] bes'[ a] ees d
  | g bes16 a g f e d c8 d16 e f g f ees }
  | d8 ees f g16 f ees8 f g aes16 g~
  | g4 e8 f~ f4 d8 ees
  | f8\rest g16 f ees d c bes a8 bes16 c d f ees d
  %10
  | c4 f d a'~
  | a8 g g4\rest g8 f g4\rest
  | d g2 f4
  | r8 f16 ees d c bes a g8 g'16 f ees d c bes
  | a8 a'16 g f ees d c bes8 bes'16 a g f ees d
  %15
  | c8 c'16 bes a g f ees d4 r8 bes'~
  | bes a r a~ a g r g16 f
  | e4 r8 e f4 r8 a,
  | bes4 r8 f' ees g16 f ees d c bes
  | a8 bes c d16 c bes8 c d ees16 d
  %20
  | fis8 g b,[ c] e[ f] a, bes~
  | bes d16 c bes a g f e8 f16 g a4~
  | a8 bes16 c d bes c d bes4 r
  | g8 a16 bes c g a bes a2
  | bes8 r r f' f bes16 a g f ees d
  %25
  | ees4 r8 ees ees a16 g f ees d c
  | d4 r8 d d g16 f ees d c bes
  | a8 c16 bes a g f ees d8 ees f g16 f
  | ees8 f g aes16 g~ g4 e8 f~
  | f4 d8 ees~ ees4 d'8\rest ees,
  %30
  | ees4 d f e
  | g fis a g
  | bes a bes r8 d
  | ees4 r8 e f4 r8 fis
  | g4 r8 d c r r c
  %35
  | bes r r f' \highlightSubject { ees4 d
  | f e bes'8 a ees![ d]
  | aes' g des[ c] f aes16 g f ees d c }
  | d8 r r f ees4 des16 c ees des
  | c4 ees16 d f ees d4 f16 ees g f
  %40
  | ees4~ ees16 d f ees d4~ d16 c ees d
  | c4~ c16 b d c bes4~ bes16 a c bes
  | a g bes a c4 bes16 a c bes d4~
  | d~ d16 b b c c4~ c16 a a bes
  | bes4 r r2
  %45
  | g'4 fis f8 a16 g e4
  | ees8 f16 ees d4~ d8 ees16 d cis4
  | c8 d16 c b4 bes8 c16 bes a8 c16 a
  | bes4 r r2
  | \highlightSubject { bes4 a c b
  %50
  | f'8 e bes[ a] ees'[ d] aes g }
  | r2 \highlightSubject { f'4 e
  | g fis c'8[ b] f e
  | bes' a ees[ d] g bes16 a g f ees d
  | c8 d16 e f g f ees } d2~
  %55
  | d8 e16 f g a g f e2
  | c8 d16 e f g f ees <bes d>4 r
  | \override MultiMeasureRest.staff-position = #4
    R1
  | r4 c16 b d c b4 bes16 a c bes
  | a4 aes16 g bes aes g4 bes
  %60
  | aes c~ c8 d16 e f4~
  | f2 bes,8 c16 d ees4~
  | ees2 f4 ees
  | g f a g~
  | g f2 ees4~
  %65
  | ees d2 c4~
  | c bes2 c4
  | bes2 c4 bes
  | a8 f16 g a bes c d ees8 c'16 bes a g f ees
  | d c ees d f4 ees16 d f ees g4~
  %70
  | g4 e16 c g' f~ f4 d16 bes f' ees
  | r2 r8 c'16 bes a g f es
  | d4 r8 d ees4 r8 e
  | f4 r8 fis8 g4 r8 d
  | c4 r8 c bes4 r8 bes
  %75
  | a8 f16 g a bes c d ees c d ees f g a bes
  | \stemNeutral
    \stemUp c32 bes a g \stemDown f[ ees d c]
    \stemUp f ees d c \stemDown bes[ a g f]
    \stemUp c' bes a g \stemDown f[ ees d c]
    \stemUp f ees d c s8
  | s1*8
  %85
  | b'4\rest <bes d g> b2\rest
  | b4\rest <c ees a> b2\rest
  | s1*2
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  %1
  | \stemUp
    \highlightSubject { bes'4 a c b
  | \stemNeutral
    f'8 e bes[ a] ees'[ d] aes g
  | c8 ees16 d c bes a g f8 g16 a bes d c bes }
  | \stemDown\tieDown
    a8 bes c d16 c bes8 c d ees16 d
  %5
  | fis,8 g b[ c] e,[ f] a bes
  | e,4 bes'2 a4
  | bes c2 d4
  | b8 c g[ f] a[ bes] f ees~
  | ees e\rest e4\rest f2~
  %10
  | f8 e\rest bes'2 c4
  | d b8 c~ c4 a8 bes~
  | bes4 bes2 a4
  | bes8 d16 c bes a g f ees8 ees'16 d c bes a g
  | f8 f'16 ees d c bes a g8 g'16 f ees d c bes
  %15
  | a8 a'16 g f ees d c bes4 g8\rest d'
  | c2 bes~
  | bes4 s2.
  | s1
  | \highlightSubject { f4 e g fis
  %20
  | c'8 b f[ e] bes'[ a] ees d
  | g bes16 a g f e d c8 d16 e f g f ees }
  | d4 r d8 e16 fis g a g f
  | ees2 c8 d16 ees f g f ees
  | d8 r r d' d4 r8 g,
  %25
  | g4 r8 c c4 r8 f,
  | f4 r8 bes g4 r8 g
  | f a16 g f ees d c bes4 c~
  | c d b8 c4.
  | a8 bes~ bes4 c r8 c
  %30
  | a8 bes16 c bes4~ bes8 c16 d c4~
  | c8 d16 ees d4~ d8 ees16 f ees4~
  | ees8 f16 g f4 f s8 \stemUp\shiftOn bes
  | bes4 s8 c c4 s8 d
  | d8 d16 c s2.
  | s1*16
  %51
  | \highlightMotif { c8 ees16 d c bes a g } a g bes a g4
  | bes16 a c bes a4
    \shiftOff
    \once\override Beam.positions = #'(1.7 . 1.4)
    a8
    \shiftOn
    \once\override NoteColumn.force-hshift = #0 g~
    g4
  | \once\override Beam.positions = #'(1.5 . 1.2)
    g8
    \shiftOn
    \once\override NoteColumn.force-hshift = #0 f~
    f4 g2~
  | \stemDown
    g4 f~ f8 g16 a bes c bes a
  %55
  | g2~ g8 a16 b c d c bes
  | a2 s4 f8 e
  | \stemNeutral
    ees d g fis f e a gis
  | \stemDown
    g16 fis a g fis4 f16 e g f e4
  | ees16 d f ees d4 ees f16 ees g f~
  %60
  | f4 g16 f aes g~ g4 f16 a g f~
  | f8 c' bes4 f ees16 g f ees~
  | ees8 bes' aes4~ aes16 c bes aes g4
  | bes16 des c bes a4 c16 ees d c b4
  | bes16 des c bes a4 aes16 c bes aes g4
  %65
  | aes16 bes aes g fis4 g16 aes g f e4
  | ees16 g f ees d4 ees16 g f ees~ ees g f ees
  | d f ees d ees g f ees~ ees g f ees d f ees d
  | c4 r r c'8\rest \stemUp c
  | bes4 c16 bes d c~ c4 \stemDown d16 c ees d
  %70
  | \stemUp b16 g d' c~ c4 a16 f c' bes~ bes4
  | s2. c8\rest c
  | bes4 b8\rest bes bes4 b8\rest c
  | c4 b8\rest d d4 s
  | s2 f,4 b8\rest f
  %75
  | f s s2.
  | s1*2
  | \change Staff = "lower" \voiceThree
    \omit TupletNumber
    \tuplet 3/2 { s16 bes,[ g] } \tuplet 3/2 { s des'[ bes] }
    \change Staff = "upper" \voiceTwo \stemUp
    \tuplet 3/2 { s e[ des] } \tuplet 3/2 { s g[ e] } \tuplet 3/2 { s bes'[ g] }
    \tuplet 3/2 { s des'[ bes] } \tuplet 3/2 { s e[ des] } \tuplet 3/2 { s g[ e] }
  | \tuplet 3/2 { s bes'[ g] } s8 s2.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  %1
  | \change Staff = "upper" \stemDown
    d'4 s2.
    \change Staff = "lower"  \stemNeutral\tieNeutral
  | s1*5
  %7
  | \highlightSubject { bes4 a c b
  | f'8 e bes[ a] ees'[ d] aes g
  | c8 ees16 d c bes a g f8 g16 a bes d c bes }
  %10
  | \stemUp\tieUp
    a8 bes c d16 c bes8 c d ees16 d
  | fis8 g d[ c] e[ f] c bes
  | d8\rest d16 c bes a g f e8 f16 g
    \once\override Tie.extra-offset = #'(0 . 1)
    f4~
  | f bes2 c4~
  | c d2 ees4~
  %15
  | ees f2 g4\rest
  | s1
  | \change Staff = "upper" \voiceTwo
    g,8\rest g'16 f e d c
    \change Staff = "lower" \voiceThree
    bes a8 g'\rest e4\rest
  | r8
    \change Staff = "upper" \voiceTwo
    f16 ees d c
    \change Staff = "lower" \voiceThree
    bes aes g2
  | f4 c g' d
  %20
  | \stemNeutral
    a'8 g d'[ c] g[ f] c' bes
  | g4 d\rest d8\rest c f4
  | bes2 b4\rest bes
  | c r8 c8 f,4 r8 f
  | bes8 f'16 ees d c bes a g4 bes
  %25
  | c8 ees16 d c bes a g f4 a
  | bes8 d16 c bes a g f ees4 ees'
  | \stemUp
    f, a bes f
  | g2.~ g8 f
  | f4. ees8 g4 r8 g
  %30
  | a f f4 g2
  | a bes
  | c d4
    \change Staff = "upper" \voiceTwo
    r8 f
  | ees4 r8 g f4 r8 a
  | g4 bes16 a g f ees8 c'16 bes a g f ees
  %35
  | d8 f'16 ees d c bes aes g8 a bes c16 bes
  | a8 bes c d16 c e8[ f] a, bes
  | d ees g,[ aes]~ aes4 a
  | bes8 f'16 ees d c bes aes g f aes g f8 g
  | aes16 g bes aes g8 a bes16 a c bes a8 b
  %40
  | c16 b d c a4 bes16 a c bes g4
  | aes16 g bes aes f4 g16 f aes g e4
  | f4 g16 f a g~ g4 a16 g bes a~
  | a fis fis g g4~ g16 e e f f4~
  | f16 d d ees g e e f a fis fis g fis ees' d c
  %45
  | bes8 c d16 ees d c b4 bes8 c16 bes
  | a4~ a8 bes16 a g4~ g8 a16 g
  | fis4 f8 g16 f e4 ees
  | d16 c ees d c bes d c
    \change Staff = "lower" \voiceThree
    bes a c bes a8 bes16 a
  | bes8
    \change Staff = "upper" \voiceTwo
    d16 ees f8 g16 f ees d f ees g f aes g
  %50
  | \change Staff = "lower" \voiceThree
    b, g b c
    \change Staff = "upper" \voiceTwo
    e c e f
    \change Staff = "lower" \voiceThree
    a, f a bes d bes d ees
  | c4
    \change Staff = "upper" \voiceTwo
    ees8 e f4
    \change Staff = "lower" \voiceThree
    c16 b d c
  | \once\stemDown g4
    \change Staff = "upper" \voiceTwo
    d'16 c ees d fis8[ g]
    \change Staff = "lower" \voiceThree
    b, c
  | \change Staff = "upper" \voiceTwo
    e8 f
    \change Staff = "lower" \voiceThree
    a,[ bes] b4\rest \stemNeutral\tieNeutral bes~
  | bes a bes8 bes, r bes'
  %55
  | b2 c8 c, r c'
  | f,2 bes8 a aes g
  | c b bes a d cis c b
  | cis4 d2 c4~
  | c \stemUp\tieUp bes~ bes16 a c bes~ bes4
  %60
  | c16 b d c~ c2.
  | f,8 g16 a bes d c bes bes2
  | ees,8 f16 g aes c bes aes bes4~ bes16 des c b
  | c4~ c16 ees d c d4~ d16 b c d
  | c4~ c16 a bes c bes4~ bes16 g aes bes
  %65
  | aes4 a16 fis g a g4~ g16 e f g
  | f4~ f16 d ees f ees4 f~
  | f16 d ees f g ees f g a f g a bes d c bes
  | a2 s4
    \change Staff = "upper" \voiceTwo
    r8 f'
  | f2 g
  %70
  | g4. f8 f4. ees8~
  | ees8 g16 f ees d
    \change Staff = "lower" \voiceThree
    c bes a4
    \change Staff = "upper" \voiceTwo
    r8 f'
  | f4 r8 f ees4 r8 g
  | f4 r8 a g d'16 c bes a g f
  | ees8 c'16 bes a g f ees d4 r8 d
  %75
  | c8 r r4 r2
  | \change Staff = "lower" \voiceThree
    s1
  | s2
    \omit TupletNumber
    \tuplet 3/2 { s16 bes,[ g] } \tuplet 3/2 { s des'[ bes] }
    \tuplet 3/2 { s16 e[ des] } \tuplet 3/2 { s g[ e] }
  | \stemDown
    \tuplet 3/2 { e16 s8 } \tuplet 3/2 { g16 s8 } \tuplet 3/2 { bes16 s8 }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 { des16 s8 } \tuplet 3/2 { e16 s8 }
    \tuplet 3/2 { g16 s8 } \tuplet 3/2 { bes16 s8 } \tuplet 3/2 { des16 s8 }
  | \tuplet 3/2 { e16 s8 } b8\rest b8.\rest
    \stemUp <bes, c g'>16 \appoggiatura q4 <a c f>2^\fermata
  %80
  | \change Staff = "lower" \voiceThree
    \highlightMotif { bes4 a c b
  | f'8 e bes[ a] ees' d aes[ g]
  | c8 ees16 d c bes a g } f8 d'16 c bes a g f
  | ees8 c'16 bes a g f ees d8 a' bes d,
  | ees a bes e, f a bes fis
  %85
  | g4 r r8. e16 e4\trill
  | f4 r r8. fis16 fis4\trill
  | g8. a16 a4\trill bes8. d16 d4\trill
  | \change Staff = "upper" \voiceTwo \stemUp
    ees f bes,2^\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  %1
  | \stemNeutral
    bes4 d\rest d2\rest
  | R1*5
  | \override MultiMeasureRest.staff-position = #-8
    R1*3
    \override MultiMeasureRest.staff-position = #0
  %10
  | \stemDown\tieDown
    \highlightSubject { f4 e g fis
  | c'8 b f[ e] bes'[ a] ees d
  | g8 bes16 a g f e d c8 d16 e f g f ees }
  | d2 ees
  | f g
  %15
  | a bes8 d16 c bes a g f
  | e8 c'16 bes a g f e d8 bes'16 a g f e d
  | c4 r f8 c'16 bes a g f ees
  | d4. d8 ees4. e8
  | f4 r r2
  %20
  | s1*7
  | r2 \highlightSubject { bes,4 a
  | c b f'8 e bes a
  | ees' d aes g c ees16 d c bes a g
  %30
  | f8 g16 a bes c bes aes } g8 a16 bes c d c bes
  | a8 bes16 c d ees d c bes8 c16 d ees f ees d
  | c8 d16 ees f g f ees d8 f16 ees d c bes aes
  | \stemNeutral\tieNeutral
    g8 g'16 f ees d c bes a8 a'16 g f ees d c
  | bes4 d8\rest b c4 d8\rest a
  %35
  | bes4 d8\rest d ees4 bes'
  | f c' c,8[ f] c' bes
  | bes, ees bes'[ aes] d,4\rest f
  | bes d,8\rest d ees4 d\rest
  | R1*3
  %42
  | \highlightMotif { f4 e g fis
  | c'8 b f[ e] bes'[ a] ees d }
  | aes' g bes[ a] c[ bes] a fis
  %45
  | g4 d'2 c4~
  | c bes2 a4~
  | a g2 f4~
  | \stemDown\tieDown
    f16 e g f ees d f ees d c ees d c bes d c
  | bes4 d4\rest d2\rest
  %50
  | R1*5
  | \once\override MultiMeasureRest.extra-offset = #'(-1 . 0)
    R1
  | \override MultiMeasureRest.staff-position = #-4
    R1*3
  %59
  | r2 \highlightMotif { ees4 d
  | f e bes' a
  | ees d aes' g
  | des c } d ees
  | e f fis f
  | e ees d des
  %65
  | c2 b4 bes
  | a aes g a
  | bes s2.
  | f'2  d4\rest d8\rest f'8
  | \highlightMotif { bes,4 a c b
  %70
  | f8 e bes' a ees d aes' g
  | c,8 ees16 d c bes a g f4 } r8 a
  | \stemNeutral bes f'16 ees d c bes aes g8 g'16 f e d c bes
  | a8 a'16 g fis ees d c bes4 d8\rest b
  | c4 d8\rest a bes16 f g a bes c d ees
  %75
  | f4 e\rest d2\rest
  | s2. s8 bes'32a g f
  | \stemUp c' bes a g \stemDown f[ ees d c]
    \stemUp f ees d c \stemDown bes[ a g f]
    \stemDown
    \omit TupletNumber
    \tuplet 3/2 { e16 s8 }
    \tuplet 3/2 { g16 s8 }
    \tuplet 3/2 { bes16 s8 }
    \tuplet 3/2 { des16 s8 }
  | R1
  | d4\rest d8.\rest e16 f2^\fermata
  %80
  | \highlightMotif { bes,4 a c b
  | f'8 e bes[ a] ees' d aes[ g]
  | c8 ees16 d c bes a g } f8 d'16 c bes a g f
  | ees8 c'16 bes a g f ees d8 a' bes d,
  | ees a bes e, f a bes fis
  %85
  | g4 r r8. e16 e4\trill
  | f4 r4 r8. fis16 fis4\trill
  | g8. a16 a4\trill bes8. d16 d4\trill
  | \stemNeutral ees4 f bes,2\fermata
    \fine
}

forceBreaks = {
  % page 1
  % \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  % \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  % \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  % \repeat unfold 2 { s1\noBreak } s1\pageBreak
  % page 2
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 898"
    title = ##f
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
