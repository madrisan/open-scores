Global = {
  \key bes \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  %1
  | \tempo "Fuge"
  | s1*3
  | f4 e g fis
  %5
  | c'8 b f[ e] bes'[ a] ees d
  | g bes16 a g f e d c8 d16 e f g f ees
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
  | bes d16 c bes a g f ees8 f16 g a4~
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
  | bes r r f' ees4 d
  | f e bes'8 a ees![ d]
  | aes' g des[ c] f aes16 g f ees d c
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
  | bes4 a c b
  %40
  | f'8 e bes[ a] ees'[ d] aes g
  | r2 f'4 e

  | R1*36
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  %1
  | \stemUp
    bes'4 a c b
  | \stemNeutral
    f'8 e bes[ a] ees'[ d] aes g
  | c8 ees16 d c bes a g f8 g16 a bes d c bes
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
  | f4 e g fis
  %20
  | c'8 b f[ e] bes'[ a] ees d
  | g bes16 a g f ees d c8 d16 ees f g f ees
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
  | c8 ees16 d c bes a g a g bes a g4
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  %1
  | \change Staff = "upper" \stemDown
    d'4 s2.
    \change Staff = "lower"  \stemNeutral\tieNeutral
  | s1*5
  %7
  | bes4 a c b
  | f'8 e bes[ a] ees'[ d] aes g
  | c8 ees16 d c bes a g f8 g16 a bes d c bes
  %10
  | \stemUp\tieUp
    a8 bes c d16 c bes8 c d ees16 d
  | fis8 g d[ c] e[ f] c bes
  | d8\rest d16 c ges a g f e8 f16 g
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
  | a8 bes c d16 c ees8[ f] a, bes
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
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  %1
  | \stemNeutral
    bes4 d\rest d2\rest
  | R1*5
  | s1*3
  %10
  | \stemDown\tieDown
    f4 e g fis
  | c'8 b f[ e] bes'[ a] ees d
  | g8 bes16 a g f e d c8 d16 e f g f ees
  | d2 ees
  | f g
  %15
  | a bes8 d16 c bes a g f
  | e8 c'16 bes a g f ees d8 bes'16 a g f ees d
  | c4 r f8 c'16 bes a g f ees
  | d4. d8 ees4. e8
  | f4 r r2
  %20
  | s1*7
  | r2 bes,4 a
  | c b f'8 e bes a
  | ees' d aes g c ees16 d c bes a g
  %30
  | f8 g16 a bes c bes aes g8 a16 bes c d c bes
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
  | f4 e g fis
  | c'8 b f[ e] bes'[ a] ees d
  | aes' g bes[ a] c[ bes] a fis
  | g4 d'2 c4~
  | c bes2 a4~
  | a g2 f4~
  | \stemDown\tieDown
    f16 e g f ees d f ees d c ees d c bes d c
  | bes4 d4\rest d2\rest

  | R1*38
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
