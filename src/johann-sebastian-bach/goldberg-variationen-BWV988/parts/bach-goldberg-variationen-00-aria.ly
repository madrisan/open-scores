Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g'4 g( a8.\mordent) b16
  | a8 \appoggiatura g16 fis8 \appoggiatura e16 d2
  | g,4\mordent g4.\downprall fis16 g
  | a32[( g fis16) g32( fis e16)] \appoggiatura e8 d2
  %5
  | d'4 d( e8.\mordent) f16
  | e8 \appoggiatura d16 c8 \appoggiatura b16 a4. fis'8\turn
  | g32[( fis16.) a32( g16.)] fis32[( e16.) d32( c16.)] \appoggiatura c8 a'8. c,16
  | b32[( g16.) fis8] \appoggiatura fis g2\mordent
  | b4 b( cis8.\mordent) d16
  %10
  | d16 cis b a \stemUp d2
  | g4 \stemNeutral g4.\downprall fis16 g
  | g8 \appoggiatura fis16 e8 cis4.\lineprall e8
  | a16( g fis e) d8 a4_~ a32 b c16
  | b( a g fis) e8 \appoggiatura d'16 \stemUp\tieUp cis4~ cis32 d e16
  %15
  | d16^( cis b a) g'8 b,4 cis8
  | \grace cis16 d8^~[ d32 e d cis] \appoggiatura cis8 d2
  }
  \break
  \repeat volta 2 {
  | \stemNeutral\tieUp
    a4\mordent a4~\downprall a16[ a32( b c d e16)]
  | \appoggiatura e16 d8 \appoggiatura c16 b8 \appoggiatura a8 g4. g'8
  | \appoggiatura fis16 e8. fis32 dis \grace dis8 e4.\mordent a32( b a g)
  %20
  | a8. fis16 \appoggiatura e8 dis4. b8
  | g'8. \prallup fis16 \stemUp \grace fis8 \stemNeutral e4^~ e16[ b16 c32( b a b)]
  | g'32[( e16.) fis32( dis16.)] \stemUp \grace dis8 \stemNeutral e4^~ e16 g, fis e
  | \stemUp fis8. e'16 \appoggiatura e16 dis8 a' \prallup g fis
  | \appoggiatura fis16 e8. fis32 dis \grace dis8 e2
  %25
  | \stemNeutral e8 \appoggiatura d16 c8 \appoggiatura b16 a4. b16[ c]
  | d32[( c b16) c32( b a16)] \grace a16 g4. a16 b
  | c16 d c b c a e a \stemUp c4^~
  | c16 d c b c a fis a c e d c
  | b c b a b g d g b g c d
  %30
  | e f e d e c g c e c fis g
  | a c, b a b c d g, b a g fis
  | g4^~ g16 d g fis \appoggiatura fis8 g4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | \bottom \stemUp
    \repeat unfold 2 { d4\rest f\rest d }
  | c\rest d\rest cis
  | d\rest d\rest a
  %5
  | c\rest c\rest g
  | c\rest c\rest a
  | s2.*2
  | d4\rest f\rest e
  %10
  | \top s8. \once\omit Flag \once\omit Stem \hideNotes a16~ \unHideNotes \stemDown a2
  | <g b e g>4\arpeggio s2
  | s2.
  | \bottom \stemUp d4\rest e\rest d
  | d4\rest \top\stemDown s e
  %15
  | fis e8. fis16 g4~
  | g fis2
  | s2.*6
  %23
  | fis4. c'8 b a~
  | a4 g2
  | \bottom\stemUp s4 e,2 \top\stemDown
  | s2.
  %27
  | s4. e'8~ e16 b' a g
  | fis4 f8\rest fis4.
  | g8 e\rest e\rest d8.[ g8.~]
  %30
  | g4 g8\rest g8.[ c8.]
  | s2.
  | c,16\rest c b a b2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s4 b2
  | s4 a2
  | s4 g2
  | s4 \stemUp fis2
  %5
  | s4 d2
  | s4 e4. s8
  | c'8\rest c8^~ c8[ b16 a] g fis e fis
  | g8 a8 b2
  | s4 b2
  %10
  | a4 s2
  | c8\rest b e4. d8
  | cis8 d8 e2
  | s4 a,2
  | s4 b s
  %15
  | s2.
  | c4\rest c8\rest a d4
  | a'8\rest e fis2^\mordent
  | f8\rest c d2
  | g8\rest e g4 fis8^\prall e
  %20
  | dis e fis2
  | c8\rest a g^\prallprall fis g4
  | b8\rest a g^\prallprall fis g b
  | g4\rest g\rest g8\rest dis
  | e4 s2
  %25
  | b'4\rest c\rest a~
  | a8 fis \grace e16 d8[ e16 fis] g[ fis g8~]
  | g[ e] a a\rest a4\rest
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  |\stemDown g2.
  | fis
  | e
  | d2_~ d8 c
  %5
  | b2.
  | c2~ c8 d
  | e8 c8 d2
  | g,4. d'8[ e8.\prallmordent fis16]
  | g2._~
  %10
  | g4 fis8\prallprall e fis b
  | e,4. e8 fis g
  | a4. b8 a g
  | fis2.
  | g
  %15
  | a
  | d,
  }
  \repeat volta 2 {
  | d'2 c4
  | b4. a8 b4
  | c4. b8 a4
  %20
  | b4. a8 g fis
  | e2 d4
  | c2 b4
  | a8 c b a b4
  | e8 b e, b' e d
  %25
  | c2.
  | b
  | a4. g8 fis e
  | \stemUp d8 a' d c b a
  | \stemDown g8 d' g f e d
  %30
  | c g' c b a g
  | fis d g b d d,
  | g4. d8 \stemUp \once\override Script.padding = #.8 g,4
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
      \Sopran
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 988"
    title = \markup { \smallCaps "Aria con Variazioni" }
    subtitle = \markup { \smallCaps "Aria" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=50 }
}
