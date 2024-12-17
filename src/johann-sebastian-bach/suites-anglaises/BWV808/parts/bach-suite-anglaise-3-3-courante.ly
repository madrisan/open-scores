Global = {
  \key g \minor
  \time 3/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIICourante
  \repeat volta 2 {
  \partial 8 d8
  %1
  | d2~ d4. d8 g a fis g
  | a2 d,4.\mordent d8 a' bes g a
  | bes2 \stemNeutral g8 d ees bes' a c fis, g
  | fis4\prall e8 d d'4. ees8 d c bes a
  %5
  | bes a g a bes c d ees ees4.\prall d16 ees
  | f4. ees8 d c bes a bes c f, aes
  | g4 g'~ g8 f ees d c d ees bes
  | a c d ees f ees f g f ees d c
  | \once\stemUp \grace c8 d4 \once\stemUp \grace c8 bes4 \stemUp bes'4.\arpeggio \stemNeutral a8 g a bes f
  %10
  | \once\stemUp \grace f8 ees4.\prall d8 c d ees bes a bes c g
  | fis g a ees d e fis4 g bes8 a
  | bes4 g g'4.\mordent aes8 g f ees d
  | \stemUp ees2. g4 a2~
  | a4 g8 f g1~
  %15
  | g4. a8 f4.\prall e8 e4.\prall d8
  | d2.~ d2~ d8
  }
  \break
  \repeat volta 2 {
  \partial 8 a'8
  | a2. fis4 g4. a8
  | \once\stemUp \grace a8 bes4. a8 s1
  | s g4.\prall f16 g
  %20
  | \stemNeutral f2~ f8 g aes g f ees d ees
  | c b a g c b c ees d ees f d
  | f ees d c d e f g g4.\prall^\markup { \hspace #0.4 \flat } f16 g
  | \once\stemUp \grace g8 aes4.\mordent b,8 \once\stemUp \grace b8 c4.\mordent d8 \stemUp d4.\downprall c8
  | c2~ \stemNeutral c8 d ees d c bes a bes
  %25
  | bes a g f g a bes c c4.\prall bes16 c
  | d1 \stemUp d8\rest g, a bes
  | c1~ c8 c bes a
  | bes2~ bes4. bes8 bes a bes g
  | fis2.\prall g8 a g f ees d
  %30
  | ees2 c8 ees g bes a fis g a
  | d, fis a c \once\stemUp \grace c8 bes4.\prall a8 a4.\prall g8
  | g2.~ g2~ g8
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | g8\rest c bes a bes2 s
  | b8\rest ees d c s1
  | d8\rest a' g fis s1
  | s1*3/2*5
  %9
  | s2 <d' g>4.\arpeggio s8 s2
  | s1*3/2*3
  %13
  | g,8\rest d' c bes! c4 ees d8 c bes a
  | bes2. a8 g cis d e bes
  | a2. e4\rest cis'2
  | e,\rest e4\rest <fis a>2~ q8
  \partial 8 g8\rest
  | g\rest g' fis e fis4 d d2~
  | d g8 a bes f f e d c
  | c'4. g8 a e f bes e,!2
  %20
  | s1*3/2*3
  | s1 b!2
  | c s1
  %25
  | s1*3/2
  | g8\rest c bes a bes g a bes e,2
  | f8\rest bes a g a fis g a d,2
  | d8\rest a' g fis g ees! f g cis,2\prall
  | d1.~
  %30
  | d8 bes a g s1
  | s2 g' fis!
  | b,2\rest b4\rest <bes d>2~ q8
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  | s1*3/2*4
  %5
  | f4\rest \stemNeutral bes, d g f ees
  | s1*3/2*9
  %15
  | \stemUp c'8\rest a b cis d2 a
  | << { d,2. d2~ d8 } \\ { g,2\rest \once\stemUp a4 s2 s8 } >>
  \partial 8 s8
  | s1*3/2*2
  %19
  | s1 c'2
  | s1*3/2*12
  %32
  | f,4\rest bes, d g2~ g8
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | g2~ g8 fis g d ees c d ees
  | fis,2 r8 a' bes c fis, g a d,
  | g4 d ees g c, ees
  | d4. 	c8 bes a bes g d'4 d,
  %5
  | \stemDown g2. s
  | \stemNeutral d'8 f g a bes a bes c d4 bes
  | ees8 f ees d c4 d ees c
  | f ees d c8 bes f'4 f,
  | bes bes,8 a g fis g a bes4 g
  %10
  | c8 b c d ees4 d c a
  | d2 r4 r8 c' bes c d fis,
  | g a bes d, ees f g c, b c d g,
  | c2 \clef treble r8 a'' bes c fis, g a d,
  | g f e d e cis d e \clef bass a, b cis g
  %15
  | \stemDown\tieDown f2. g4 a a,
  | c,4\rest d2~ d~ d8
  }
  \repeat volta 2 {
  \partial 8 r8
  | d'2 \clef treble \stemNeutral\tieNeutral r8 ees''! d c bes a g fis
  | g4 \clef bass g,8 a bes4 g c bes
  | a8 c d e f4 bes, c c,
  %20
  | f8 g aes g f ees d ees b4 c
  | g g'8 f ees4 aes f g
  | c, c'8 bes aes4 des bes c
  | f,8 ees f d ees aes g f g4 g,
  | c, ees''8 d c bes a bes ees,4 g
  %25
  | f ees d g ees f
  | bes, f' bes2~ bes8 d c bes
  | a4 g fis2~ fis8 d e fis
  | g4 d g, r r2
  | r8 bes' a g a d, ees c b c d g,
  %30
  | c d c bes a4 bes c8 ees d c
  | fis4 d g c, d d,
  | \stemDown\tieDown g2.~ g2~ g8
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    opus = ##f % "BWV 808"
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
