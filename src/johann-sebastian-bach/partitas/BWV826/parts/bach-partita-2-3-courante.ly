Global = {
  \key c \minor
  \time 3/2
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 c8
  %1
  | c4~ c16 g a b c8 d ees c << { aes'4. aes8 } \\ { c,,4\rest d'4 } >>
  | g1~ g4 f~
  | f16 aes g f g8 d
    \once\shape #'((0 . 2) (0 . 2) (0 . 1) (0 . 0.5)) Tie
    ees2~ ees8 ees d c
  | b4.\prall c8 d2~ d8 c ees g
  %5
  | c16 bes aes g aes8 f g2~ g8 aes g f
  | ees4~\prall ees16 d c b c8 d ees f g f16 ees bes'8. bes16
  | bes4~\arpeggio bes16 aes g f g2~ g8 g f ees
  | d2~ d4. d8~ d bes c4~
  | c16 ees d c d8 a bes d g bes~ bes bes a g
  %10
  | f4.\prall g8 a2~ a16 g f ees! f8 d
  | ees16 d c b c8 fis g g, c16 bes a8~ a4.\prallprall g8
  | g2. g2 r8
  }
  \break
  \repeat volta 2 {
  \partial 8 d'8
  | d4~ d16 g f ees d8 c b! c16 d g,4.\mordent g8
  | <d' f>2~ f8 aes g f ees d c b
  %15
  | b'16\rest ees, f g aes4 g2 g8\rest d f g
  | f ees d c ees4.\mordent ees8 g,4. aes8
  | bes2~ bes16 des c bes e8 f g4. g8~
  | g16 g f e f g aes f bes4. aes8 g4. c8
  | bes aes g f ees4 d!8.\prallprall ees16 f2~
  %20
  | f16 bes, c d ees4~ ees16 d ees f g4~ g f~
  | f16 aes g f g8 d ees f16 g c,8 ees~ ees ees d c
  | b4.\prall c8 d2~ d16 c bes aes! bes8 g
  | aes16 g f e f8 b c g f'16 ees d8 d4.\prallprall c8
  | c2. c2 r8
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | <ees g>4 s2. r8
    \once\shape #'((0 . 0) (0 . -0.8) (0 . -0.3) (0 . 0)) Tie
    f'4.~
  | f8 f ees d ees4 \stemUp\shiftOn c^~ c8 c4 d8
  | b2~ b8 b c4 \once\override Voice.Rest.X-offset = #1.5 b\rest a
  | \stemDown e16\rest g f ees f8 d f8\rest g d f ees4 g~
  %5
  | g8 s4. r8 d'[ ees c] b2
  | c2 s1
  | <bes ees g>4\arpeggio s a16\rest f'ees d ees8 bes c2~
  | c16 c bes a bes8 f d f bes4 g4. a!8
  | fis2 g4 a\rest cis2
  %10
  | d1~ d4 a\rest
  | s1 fis2
  | b,4\rest e16\rest f[ ees d ees8 c] \stemUp << { \shiftOn d2 } \\ b >> s8
  \partial 8 s8
  | b'2 s1
  | s1.
  %15
  | \stemDown c4. f8~ f f16 ees d ees f8 b,2
  | c4 s2. c,8\rest c des4~
  | des16 des c bes e8 f g2 r8 s \once\stemUp e'4
  | c2 r8 e! f4~ f8 f e4
  | f a,\rest s2 b16\rest bes aes g aes8 f
  %20
  | g2. r16 f' ees d ees8 c4 d8
  | b2 c4 a fis2
  | g e8\rest g d f ees2~
  | ees8 aes, d4 e8\rest c4. b'!2
  | d,4\rest g16\rest bes[ aes g aes8 f] << { \stemUp\shiftOn g2 } \\ { ees } >>

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | c2 ees,4 g c b
  | c~ c16 g a b c8 d ees c \staffUpper\stemDown\tieDown aes'4. aes8
  | g2.~ g8 aes! fis2
  | s1*3/2
  %5
  | \staffLower\stemUp\tieUp s8 \stemUp c4 b8 b\rest g c4 g2~
  | g4 ees g s2.
  | d'4\rest bes ees2~ ees4 a,!
  | bes4~ bes16 f, g a bes8 c d bes s2
  | b'4\rest a d bes g e
  %10
  | s2 d'8\rest d a! c bes2~
  | bes8 a4. s2 d,2
  | f4\rest << { d2_~ \shiftOn d } \\ { \stemUp c'4\rest fis, g2 } >> s8
  \partial 8 s8
  | \staffUpper \once\stemDown g'4. \staffLower a,8 b c d ees \staffUpper\stemDown\tieDown f d ees f
  | g2 s1
  %15
  | \staffLower\stemUp s1 g,2
  | g4 s2. s2
  | \staffUpper s1 s8 bes'4.
  | \staffLower\stemUp s1.*3
  %21
  | d,4\rest d g ees c a
  | d2 a4\rest g2 c4^~
  | c aes g aes4 g2
  | r4 << { g,2_~ \shiftOn g } \\ { a'4\rest \stemUp b, c2 } >> s8
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | r4 c2.~ c2
  | c4 r s2 s2
  | s1*3/2
  | s2 b' c4 bes
  %5
  | aes d, ees4. f8 g4 g,
  | c2. c'4 bes^\prall aes
  | g2. g4 a f
  | bes4 s2. ees,4. ees8
  | d1~ d2
  %10
  | d16 d' c bes c8 a fis2 c4\rest g'
  | c,4 ees8 d c bes ees c d4 d,
  | g2.~ g2 r8
  }
  \repeat volta 2 {
  \partial 8 r8
  | r4 g'2.~ g2
  | << { \stemDown g4~ g16 g' f ees } \\ { \once\stemUp b4^\prall s } >> d8 c b! c16 d g,4.^\mordent g8
  %15
  | aes4 d, ees f g g,
  | c4~ c16 g a b c8 d ees c bes'4. aes8
  | g4. f8 e f g aes bes des c bes
  | \stemNeutral\tieNeutral aes c aes f des4 bes c c,
  | f2~ f16 bes' aes g f8 ees d4 bes
  %20
  | ees~ ees16 g, a b c8 d ees c aes'4. aes8
  | \stemDown\tieDown g1~ g2~
  | g16 g f ees f8 d b2 c
  | f4. d8 ees4 aes8 f g4 g,
  | c,2.~ c2 r8
  }
  \fine
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 826"
    title = \markup { "Courante" }
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
