Global = {
  \key c \minor
  \time 2/4
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
  %1
  | r8 g c4~
  | c8 d16 c b a g f
  | ees8[ g' d, f']
  | ees16 d c d e fis g a
  %5
  | bes g fis g d g fis g
  | c g fis g a g fis e
  | d8 g4 fis8
  | g g\rest g4\rest
  | d16\rest c fis, g a bes c8~
  %10
  | c16 bes a bes c d e fis
  | g8 fis16 g~ g4~
  | g8 e16 g~ g4~
  | g8 e16 f~ f4~
  | f8 d16 f~ f4~
  %15
  | f16 ees d f ees d c b
  | c b c d ees f g8~
  | g16 f ees g f ees d c
  | b a b c d ees f8~
  | f16 aes! g f ees d c bes
  %20
  | aes c f ees d c b d
  | g f ees g f ees d f
  | ees4 s
  | \stemNeutral ees16 c a' ees c' ees, d c
  | d bes! a bes f bes a bes
  %25
  | d bes g' d bes' d, c bes
  | c a g a fis a g a
  | c a fis' c a' c, bes a
  | bes8 d g4~
  | g8 a16 g fis e d c
  %30
  | bes8[ d' a, c']
  | g, bes'16 a g8 bes
  | e,[ g bes, e]
  | f, aes'!16 g f8 aes
  | d,[ f aes, d]
  %35
  | \stemUp ees,!4 d'8\rest c
  | aes4 r
  | r8 g c4~
  | c8 d16 c b a g f
  | ees8[ g' d, f'~]
  %40
  | f16 ees d f ees d c bes!
  | aes! g aes bes c d ees8~
  | ees16 d c ees d c bes aes
  | g f g aes bes c des8~
  | des16 c bes des c bes aes g
  %45
  | aes2~
  | aes8 g g4~
  | g8 aes16 g f ees d c
  | g'	2
  }
  \pageBreak
  \repeat volta 2 {
  | r8 d' g,4~
  %50
  | g8 f16 g a b c d
  | ees8[ c, f' d,]
  | g'16 aes g f ees d c bes
  | aes8[ f' g, e']
  | f16 c' e, f c'\rest c e, f~
  %55
  | f8 e'\rest b4\rest
  | g8\rest f16 g aes bes c d,
  | ees8 f\rest f4\rest
  | g8\rest ees16 f g aes bes g
  | aes8 a\rest g4\rest
  %60
  | f16\rest g f ees d c b a
  | b c d ees f4~
  | f16 ees b c f\rest ees b c
  | f\rest d b c d\rest c b c~
  | c8[ g' d f~]
  %65
  | f8 ees16 f g4~
  | g8[ f c ees]
  | ees8 d16 ees f4~
  | f8 ees16 d c bes a g
  | c2~
  %70
  | c4. c8
  | bes4 a
  | b'16\rest a fis g b\rest a fis g
  | a8\rest g ees4~
  | ees8 d4 c8~
  %75
  | c[ ees d c]
  | bes[ g' a, fis']
  | g4 g8\rest f
  | b,4 g'\rest
  | b8\rest g c,4~
  %80
  | c8 bes16 c d e f g
  | aes16 c8. aes16 c bes c
  | aes16 c8. aes16 bes aes bes
  | g16 bes8. g16 bes aes bes
  | g16 bes8. g16 aes g aes
  %85
  | f16 aes8. f16 aes g aes
  | f16 aes8. f16 g f g
  | ees g d g c, f bes, ees
  | aes, c f ees f4
  | f8\rest c g'4~
  %90
  | g8 aes16 g f ees d c
  | b4 f'8\rest ees
  | c4 d\rest
  | r8 g, f'4~
  | f8[ d g f]
  %95
  | ees4 d
  | c2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  %1
  | s2*4
  %5
  | e8\rest d g4~
  | g8 a16 g fis e d c
  | bes8[ d' a, c'~]
  | c16 bes a c bes a g f!
  | ees8 c d\rest fis!
  %10
  | g c,\rest c\rest a'!
  | bes16 d8. bes16 des c des
  | bes16 des8. bes16 c bes c
  | aes16 c8. aes16 c bes c
  | aes16 bes8. aes16 bes aes bes
  %15
  | g8 e\rest e4\rest
  | e8\rest ees16 f g a b! c
  | d8 g,\rest f4\rest
  | c8\rest d16 ees f g a! bes
  | c8 g\rest f4\rest
  %20
  | s2
  | g8\rest c4 b8
  | a16\rest c b c g c b c
  | s2*12
  %35
  | s4 ees,~
  | ees8 f16 ees d c \staffLower\stemUp bes aes
  | g4 \staffUpper\stemDown b8\rest c
  | f4 b,\rest
  | s2*15
  %54
  | \once\override Beam.positions = #'(1.2 . -1.4)
    \stemUp \shiftOn aes'8 \staffLower f,
    \once\override Beam.positions = #'(2 . -1.4)
    \staffUpper bes' \staffLower g,
  | s2
  | \staffUpper\stemDown d'!16 c d ees f g aes8~
  | aes16 c bes aes g f ees d
  | c b c d ees f g8~
  | g16 bes aes g f ees d c
  %60
  | b8 b\rest c4\rest
  | c\rest g'8\rest d'
  | g,4 f
  | ees d
  | ees8[ ees' b d~]
  %65
  | d4. c16 bes
  | a4. c8~
  | c4. bes16 aes
  | g4 d\rest
  | f8\rest bes[ a g]
  %70
  | fis a d,4~
  | d8 c16 d e fis g a
  | bes8[ g, c' a,]
  | d'4. c8
  | fis, bes4 a8~
  %75
  | a[ fis g a]
  | d, c\rest c16\rest ees' d c
  | b8 d g,4~
  | g8 f16 g a b! c d
  | ees b,[ c d] ees f g aes
  %80
  | bes! aes g aes bes c d e!
  | f8 e16 f~ f4~
  | f8 e16 f~ f4~
  | f8 d16 ees~ ees4~
  | ees8 d16 ees~ ees4~
  %85
  | ees8 c16 d~ d4~
  | d8 c16 d~ d4
  | c8[ bes! aes g]
  | f4 r16 c' b d
  | g,4 r8 ees'
  %90
  | c4 g\rest
  | e8\rest d g4~
  | g8 aes16 g f ees d c
  | b4 g'8\rest d'
  | g,[ b c \once\shape #'((0.4 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie d~]
  %95
  | \once\override NoteColumn.force-hshift = #1.2 d c4 b8
  | \stemUp g2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | ees4 b'8\rest ees,
  | f4 b8\rest b
  | c4. b8
  | c g'\rest f4\rest
  %5
  | s2*23
  | a,16\rest g fis g d g fis g
  | c, g' fis g a g fis e
  %30
  | d8 g4 fis8
  | b16\rest g fis g d g fis g
  | bes g e' bes g' bes, aes! g
  | aes f e f c f e f
  | aes f d' aes f' aes, g f
  %35
  | g8 bes s4
  | s2*3
  | a8\rest ees[ f g~]
  %40
  | g g c4~
  | c8 c16 d \staffUpper\stemDown ees16 f g aes
  | bes8 \staffLower\stemUp f, bes4~
  | bes8 bes16 c \staffUpper\stemDown d ees f g
  | aes8[ \staffLower\stemUp g, f e]
  %45
  | f16 \staffUpper\stemDown f' e g f ees d! c
  | b4 b8\rest ees
  | c2
  | b
  | \staffLower\stemUp b4 d8\rest d
  %50
  | g, c4 b8
  | c16\rest g aes g c\rest f, g f
  | ees8 g' c,4~
  | c8 bes16 c d16 e \staffUpper\stemDown f g
  | f8 c\rest g' c,\rest
  %55
  | \once\override Beam.positions = #'(4 . 3)
    \stemUp c'16 des c bes aes g f ees!
  | s2*38
  %93
  | \stemDown s4. \staffUpper \once\override NoteColumn.force-hshift = #0.4 aes8
  | g4 f
  | ees2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | c4 b8\rest c
  | d4 b\rest
  | d8\rest ees[ f g]
  | c,[ c' bes a]
  %5
  | g4 r8 g
  | a4 r
  | \stemNeutral r8 bes,[ c d]
  | g, d' g4~
  | g8 a16 g fis e d c
  %10
  | bes8[ d' a, c']
  | g,[ bes' f, aes'!]
  | e,[ g' c,, e']
  | f,[ aes' ees, g']
  | d,[ f' bes,, d']
  %15
  | ees,[ ees' f g]
  | aes r r4
  | r8 d,[ ees f]
  | g r r4
  | r8 g c4~
  %20
  | c8 d16 c b a g f
  | ees8[ g' d, f']
  | c, ees'16 d c8 ees
  | a,[ c f, a]
  | bes, d'16 c bes8 d
  %25
  | g, bes ees, g
  | a, c'16 bes a8 c
  | fis,[ a d, fis]
  | \stemDown g, g\rest bes g\rest
  | a g\rest c  g\rest
  %30
  | g\rest bes[ c d]
  | g, g\rest bes g\rest
  | g4\rest c8 b\rest
  | f' g,\rest aes f\rest
  | g4\rest bes8 g\rest
  %35
  | \stemDown a16\rest f' ees d c bes aes g
  | f ees' d c bes aes g f
  | ees d' c bes \stemNeutral aes g f ees
  | d c' bes aes g f ees d
  | c8 \stemDown c'4 b8
  %40
  | c4 d16\rest c d ees
  | f8 b,\rest r4
  | bes4 c16\rest bes c d
  | ees8 b\rest r4
  | b8\rest aes[ bes c]
  %45
  | f, c' f4~
  | f16 ees d f ees d c bes!
  | \stemNeutral aes8 g aes4^\mordent
  | g2
  }
  \repeat volta 2 {
  | \stemDown g'4 r8 f
  %50
  | ees4 d
  | c8 g\rest d' g,\rest
  | ees'4 b8\rest e
  | f4 bes8 c
  | s2
  %55
  | \staffUpper\stemDown aes'8 \staffLower f,[ g aes]
  | bes r r4
  | r8 ees,[ f g]
  | aes r r4
  | r8 d,[ ees f]
  %60
  | \stemNeutral g d g,4~
  | g8 f16 g a b c d
  | ees8[ c, f' d,]
  | g'[ ees, aes' f,]
  | g'16 g, g' aes g f ees d
  %65
  | c g' c d c bes! a g
  | f f, f' g f ees d c
  | bes f' bes c bes aes! g f
  | ees ees, ees' f ees d c bes
  | a g a bes c d ees c
  %70
  | d c d e fis g a fis
  | g8[ ees c d]
  | g, r ees' r
  | bes16 g' fis g c, a' fis g
  | d bes' fis g ees c' fis, g
  %75
  | fis, ees' d c bes a g fis
  | g f ees d c8 d
  | g16 fis g a b c d ees
  | f ees d ees f g a b
  | c8 r r c
  %80
  | e, r r c'
  | f,[ aes' ees, g']
  | d,[ f' bes,, d']
  | ees,[ g' d, f']
  | c,[ ees' aes,, c']
  %85
  | d,[ f' c, ees']
  | b,[ d' g,, b']
  | \stemNeutral c, g' c4~
  | c8 d16 c b a g f
  | ees d c d ees f g ees
  %90
  | aes! g f g aes4~
  | aes16 aes g f ees d c bes!
  | aes g' f ees d c b a
  | g ees' d c b a g f
  | ees aes g f ees d ees f
  %95
  | g c ees fis g8 g,
  | << { \override Stem.length = #5 c,2 } \\ { \stemUp c'2 } >>
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    opus = ##f % "BWV 826"
    title = \markup { "Capriccio" }
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
