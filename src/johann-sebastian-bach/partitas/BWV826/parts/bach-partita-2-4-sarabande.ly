Global = {
  \key c \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | g16 c d ees f, ees' d8~ d16 f, g aes
  | g d' ees f ees4 s
  | a,16 ees' f g b, f' g aes c, g' f ees
  | \stemNeutral\tieNeutral d ees f d b4\prall g
  %5
  | ees'16 g, aes! bes aes g f8~ f16 c' d ees
  | d f, g aes g f ees8~ ees16 bes' c des
  | c g f ees d! c' bes aes \stemUp f'8. aes,16
  | aes4 g2
  }
  \repeat volta 2 {
  | \stemNeutral\tieNeutral bes16 ees g8~ g16 c, bes aes bes ees f g
  %10
  | f a bes8~ bes16 g f ees f bes, a bes
  | ees d c8~ c16 g' f ees a bes c8~
  | c16 ees, d c d f d a bes4~
  | bes16 des c bes g' bes, aes g aes c f g
  | a ges f ees c' ees, des c des f bes aes
  %15
  | ges f e f des c b c aes' g f e
  | f c des e f bes, aes g f4~
  | f16 ees' d c d aes' bes, f' g aes, g f
  | ees d' c b c g' aes, ees' f g, f ees
  | d c' b a b f' g, d' ees f, ees d
  %20
  | c g' fis a c a b d g, f' ees d
  | ees g c, b c4~ c16 ees aes, g
  | aes4~ aes16 c f, e f4~
  | f16 aes des c e f b, c fis, g ees' b!
  | c f, ees d \stemUp c'2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  %1
  | g4 f s
  | g ees'16 b c8~ c16 g aes bes
  | a4 b c
  | s2.*3
  %7
  | s2 s8. <bes, d f>16
  | q4 <bes ees>2
  | s2.*15
  %24
  | s4 <ees g>2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | c8 c'~ c16 bes aes g aes8 c,
  | b g'~ g16 f ees d ees8 g,
  | c, c' d d, ees ees'
  | f16 g aes f g a b c d f ees d
  %5
  | c8 c, f16 g aes bes c8 f,
  | bes bes, ees16 f g aes bes8 ees,
  | aes aes, bes16 aes' g f ees d c bes
  | ees g, aes bes ees,8 g16 bes ees4
  }
  \break
  \repeat volta 2 {
  | ees16 g bes d ees g ees,8~ ees16 g f ees
  %10
  | d f g a bes d d,8~ d16 f ees d
  | c g' a bes a bes c8~ c16 ees, d c
  | bes f' g a bes d bes,8~ bes16 aes' g f
  | e8 g c e, f c'
  | ees! ges a, f' bes, des
  %15
  | bes g aes f c' c,
  | f f, aes c f ees
  | d! f bes, d ees, d'
  | c ees aes, c d, c'
  | b d g, b c, b'
  %20
  | a d, d' g, g' b
  | c d ees16 g c, bes aes!8 bes
  | c16 ees aes, g f8 g aes16 c f, ees
  | des8 f aes, fis' g g,
  | c4~ c16 ees, f g c,4
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
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 826"
    title = \markup { "Sarabande" }
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
