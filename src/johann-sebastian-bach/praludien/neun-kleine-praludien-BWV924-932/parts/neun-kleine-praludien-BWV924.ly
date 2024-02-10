Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override Rest.staff-position = #0
  %1
  | r16 g[ c e] r g,[ c e] r g,[ c d] r b [d g]
  | r a,[ d g] r a,[ d f] r a,[ d e] r c[ e a]
  | r b,[ e a] r b,[ e g] r c,[ e f] r g,[ d' f]
  | r g,[ d' e] r g,[ c e] r a,[ c d] r e,[ b' d]
  %5
  | r e,[ b' c] r e,[ a c] r f,[ a bes] r c,[ g' bes]
  | r c,[ g' a] r c,[ f a] r d,[ f b!] r e,[ g c]
  | r d,[ g c] r d,[ g b] r c,[ g' b] r c,[ fis a]
  | r b,[ d a'] r b,[ d g] r a,[ c g'] r a,[ c f!]
  | <f d b>4\arpeggio r s2
  %10
  | s4 f16[ g b d] \stemUp b \stemDown g[ b d] \stemUp f g b f]
  | \stemNeutral e c' g f e c' g e d c' f, e d b' f d
  | c b' e, d c a' e c b a' d, c b g' d b
  | a g' c, b a fis' c a b f'! d c b f' d b
  | g e' c b a e' c a fis d' b a g d' b g
  %15
  | \stemUp e c' a g fis c' a fis  d c' b\prall a b g d' f,!
  | g e f d' c b a g \stemDown f' d ees c fis, ees' d c
  | b d b g \stemUp aes f! g d ees fis a! c
    << { f\rest c8[ b16] } \\ { d,8 f } >>
  | <e g c>1^\fermata
    \fine
}

Bass = \context Voice = "two" \relative c {
  \voiceTwo
  \stemNeutral
  \tieNeutral
  \override Rest.staff-position = #0
  %1
  | c4 e g^\mordent g,
  | d'^\mordent f a^\mordent a,
  | e' e'^\mordent a, b^\upmordent
  | c e, fis gis^\downmordent
  %5
  | a c, d e^\upmordent
  | f e d^\prall c
  | g'^\mordent g, g'^\mordent g,
  | g'^\mordent g, g'^\mordent g,
  | g'^\mordent r r16 \stemDown g,[ b d] \stemUp f[ g b d]
  %10
  | b g[ b d] s2.
  | <g, g,>1~
  | <g g,>~
  | <g g,>~
  | <g g,>~
  %15
  | <g g,>~
  | <g g,>~
  | <g g,>
  | <c,, c'>_\fermata
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
    opus = "BWV 924"
    title = \markup { "Praeambulum I" }
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
    \tempo 4 = 40
  }
}
