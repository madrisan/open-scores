Global = {
  \key f \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override Rest.staff-position = #0
  %1
  | r16 c a c f, c' a c f, d' bes d f, d' bes d
  | g, e' bes e g, e' bes e f c a c f, r r8
  | r8 <c' f> <a f'> <c f> r <d f> <bes f'> <d f>
  | r8 <e g> <e bes'> <e g> <c f a>4 r
  %5
  | r16 a' f a c, a' f a c, g' f g c, g' e g
  | a, f' e f a, f' d f a, e' d e a, e' c e
  | f, d' c d g, d' bes d g, c bes c f, c' a c
  | f, bes a bes c, bes' g bes c, a' f a c, a' f a
  | d, a' f a d, f a c d, bes' g bes d, bes' g bes
  %10
  | e, bes' g bes e, g bes d f, c' a c f c a f
  | r16 bes g bes e bes g e r a f a d a f d
  | r16 g e g c g e c r f d f g a bes d,
  | g a bes e, f g a c, d f a c bes a g a
  | \set tieWaitForNote = ##t
    d f e d c~ e~ g~ bes~ <c, e g bes>4 r8 <c f a>
  %15
  | \override Voice.Rest.X-offset = #0.4
    \stemUp c'16\rest g c\rest f, c'\rest f, c'\rest e, \stemDown <f, a c f>2
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemUp
  \mergeDifferentlyDottedOn
  \override Rest.staff-position = #0
  %1
  | s1*13
  | \autoBeamOff
    s4 c4*1/4 e8.*1/3 g8*1/2 bes16 s2
    \autoBeamOn
  | \stemDown bes,16 e a, d g, c g bes s2
}

Bass = \context Voice = "three" \relative c {
  \voiceThree
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <f a>8 <f c'> <f a> <f c'> r <f d'> <f bes> <f d'>
  | r <f g> <f bes> <f g> <f a>4 r16 c' a c
  | f, c' a c f, c' a c f, d' bes d f, d' bes d
  | g, e' bes e g, e' bes d f c a c f, c a c
  %5
  | f,8 g a bes c d e c
  | d e f g a bes c a
  | bes a g f e c f e
  | d g e c f16 c a c f, a c f
  | bes,8 bes' r a g16 d bes d g, bes d g
  %10
  | c,8 c' r bes a c, a' c,
  | g' c, g' c, f c f c
  | e c e c d c bes g
  | e' c a' f bes4 r
  | r2 e,,4 r8 f
  %15
  | d'[ bes] c[ c,] f2
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
    opus = "BWV 927"
    title = \markup { "Praeambulum IV" }
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
    \tempo 4 = 94
  }
}
