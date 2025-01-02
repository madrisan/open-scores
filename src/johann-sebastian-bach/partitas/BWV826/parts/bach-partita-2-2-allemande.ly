Global = {
  \key c \minor
  \time 2/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaIIAllemande
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  \repeat volta 2 {
  \partial 8. aes'16 g f
  %1
  | g d ees b c f ees d ees b c g aes d c b
  | c g aes ees f ees' d c b8.\prall a16 g8 b
  | c16 d ees8 f,16 ees' d c d ees f8 g,16 f' ees d
  | ees16 f g8 aes,16 g' f ees f g aes8 b,16 aes' g f
  %5
  | \stemUp\tieUp ees4~ ees8. c16 d4~ d8. b!16
  | c4. c16 b c4~ c16 c bes aes
  | g16 c32 d ees16 c g8 aes bes4~ bes8 g'~
  | \stemNeutral\tieNeutral g16 c,32 d ees16 c a f' c32 d ees16 \stemUp\tieUp d4~ d8 d
  | d c\prall g'16\rest fis g a ees8 d\prall a'16\rest g a bes
  %10
  | f8 e\prall a16\rest a bes c g8 fis\prall a16\rest ees d c
  | d16 a bes fis g c bes a bes fis g d ees a g fis
  | g d ees b c f ees d ees c d fis a ees d c
  | bes d g bes~ bes fis g bes, c ees g bes~ bes fis g c,
  | d fis g bes~ bes fis g d ees fis g bes~ bes fis g bes
  %15
  | e a, bes fis g bes a g fis d ees bes c ees d c
  | bes8 d' bes a16 g
    \once\shape #'((0 . 0.8) (0 . 1.5) (0 . 1) (0 . 0.3)) Tie
    g4^~ g16
  }
  \break
  \repeat volta 2 {
  \partial 8. \stemNeutral ees'16 d c
  | d a b g aes f ees d ees( f32 g) c,8 r16 aes'' g f
  | g d e c des bes aes g aes( bes32 c) f,8 r16 c f g
  | aes e f c des c' bes aes bes f g d e! des' c bes
  %20
  | c g aes e f ees'! des c des a bes g g'4~
  | g16( c,) f( e) aes( g f e) f( c) ees( des) bes'( aes g f)
  | e( f32 g) c,16 bes aes f' g, e' f4~ f32 g f e f16 g
  | aes e f c aes f ees' c d a bes d f aes g f
  | g d ees! bes g ees d' b c g aes c ees g f ees
  %25
  | f c d aes f d c' a b fis g b d f ees d
  | ees b c aes g( f) ees' d c b c d g,8 d'
  | ees16 g c g ees d c b c ees g8~ g16 bes, aes g
  | aes c f c aes g f e f b d8~ d16 f, ees d
  | c8[ ees'( aes, g)] d[ f'( aes, g)]
  %30
  | ees[ g'( aes, g)] f aes'16 g aes g fis g
  | fis4.~\prall fis16 e32 fis g16 d f ees d c b a
  | \stemUp g8 g'\arpeggio
    \override Beam.positions = #'(4.8 . 4.5)
    ees d16 c c4^~ c16
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  \partial 8. s8.
  %1
  | s1*4
  %5
  | f16\rest b c g aes ees f8 f16\rest g aes f g d ees8~
  | ees16 f32 g aes16 f d f8.~ f16 f ees d ees8 f
  | ees4 b\rest e16\rest f g ees ees8 e8\rest
  | s2 g16\rest a bes8~ bes fis
  | g4 f\rest a f\rest
  %10
  | bes f\rest c' g\rest
  | s1*5
  %16
  | e,8\rest
    << {
      \stemDown d' d c c16\rest d4
    } \\ {
      \stemUp\shiftOn g8 g fis s16 d16[ b8.]
    } >>
  }
  \repeat volta 2 {
  \partial 8. s8.
  | s1*15
  | c8\rest
    << {
      \stemDown\tieDown <g' c>8\arpeggio g f ees4~ ees16
    } \\ {
      \stemUp\tieUp\shiftOn ees'8\arpeggio c bes g4~ g16
    } >>
  }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8. s8.
  %1
  | s1*15
  | s2 d8\rest d16\rest d g
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  \repeat volta 2 {
  \partial 8. r8 r16
  %1
  | c8 c, \clef treble r16 aes''' g f g d ees b c f ees d
  | ees b c g \clef "bass" aes8 f g g,~ g16 f' ees d
  | ees b c g aes! g' f ees f c d a b! aes' g f
  | g d ees b c bes' aes g aes ees f c d8 b'
  %5
  | c8[ ees f, aes] b,[ d ees, g]
  | aes[ f g g'] c, g' c4
  | c8. g32 f ees f g16 c,32 d ees16 g,8. bes32 aes g aes bes16 ees,32 f g16
  | a,8[ c f a] bes8. f''32 ees d ees f16 bes,32 c d16
  | ees,16 g a bes c d ees c fis, a bes c d e fis d
  %10
  | g, bes c d e fis g ees a, c d ees d c bes a
  | bes c d a bes ees d c d a bes fis g c bes a
  | bes fis g d ees32 f g16 c,32 d ees16 fis,4 r8 d
  | g[ bes'( ees, d)] a[ c'( ees, d)]
  | bes[ d'( ees, d)] c[ ees'( ees, d)]
  %15
  | <cis, cis'>4 r8 c' d[ a fis d]
  | g16 a bes c d8 d, \stemDown g4_~ g16
  }
  \repeat volta 2 {
  \partial 8. r8 r16
  | \stemNeutral g8 g' r16 aes g f g d ees b c f, ees d
  | c8 c' r16 des' c bes c g aes e f bes, aes g
  | f g aes8 bes,16 aes' g f g aes bes8 c,16 bes' aes g
  %20
  | aes16 bes c8 des,16 c' bes aes bes c des8 e,16 des' c bes
  | aes8[ c f, aes] des[ f g, bes~]
  | bes aes16 bes c8 c, f16 c' f g aes f aes c
  | f8[ aes, c f,] bes[ f' d bes]
  | ees[ g, bes ees,] aes[ ees' c aes]
  %25
  | d[ f, aes d,] g[ d' b g]
  | c[ ees, aes f] g g,~ g16 aes' g f
  | g d ees b c f ees d ees b c g aes des c bes
  | c g aes e f bes aes g aes f g b d aes g f
  | ees( g c ees)~ ees b c ees, f( aes c ees)~ ees b c f,
  %30
  | g( b c ees)~ ees b c g aes! b! c ees~ ees b c ees
  | a d, ees b c ees d c b g aes! ees f aes g f
  | ees g c ees g8 g, <c c,>4~ q16
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 826"
    title = \markup { "Allemande" }
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
