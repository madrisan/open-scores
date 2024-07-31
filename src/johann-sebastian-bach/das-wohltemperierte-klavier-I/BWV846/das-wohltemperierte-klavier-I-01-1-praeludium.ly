Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \repeat unfold 2 { d8\rest g,16 c e g, c e }
  | \repeat unfold 2 { d8\rest a16 d f a, d f }
  | \repeat unfold 2 { d8\rest g,16 d' f g, d' f }
  | \repeat unfold 2 { d8\rest g,16 c e g, c e }
  %5
  | \repeat unfold 2 { d8\rest a16 e' a a, e' a }
  | \repeat unfold 2 { d,8\rest fis,16 a d fis, a d }
  | \repeat unfold 2 { d8\rest g,16 d' g g, d' g }
  | \repeat unfold 2 { d8\rest e,16 g c e, g c }
  | \repeat unfold 2 { d8\rest e,16 g c e, g c }
  %10
  | \repeat unfold 2 { r8 d,16 fis c' d, fis c' }
  | \repeat unfold 2 { r8 d,16 g b d, g b }
  | \repeat unfold 2 { r8 e,16 g cis e, g cis }
  | \repeat unfold 2 { r8 d,16 a' d d, a' d }
  | \repeat unfold 2 { r8 d,16 f b d, f b }
  %15
  | \repeat unfold 2 { r8 c,16 g' c c, g' c }
  | \repeat unfold 2 { r8 a,16 c f a, c f }
  | \repeat unfold 2 { r8 a,16 c f a, c f }
  | \repeat unfold 2 { r8 g,16 b f' g, b f' }
  | \repeat unfold 2 { r8 g,16 c e g, c e }
  %20
  | \repeat unfold 2 { r8 bes16 c e bes c e }
  | \repeat unfold 2 { r8 a,16 c e a, c e }
  | \repeat unfold 2 { r8 a,16 c ees a, c ees }
  | \repeat unfold 2 { r8 b16 c d b c d }
  | \repeat unfold 2 { r8 g,16 b d g, b d }
  %25
  | \repeat unfold 2 { r8 g,16 c e g, c e }
  | \repeat unfold 2 { r8 g,16 c f g, c f }
  | \repeat unfold 2 { r8 g,16 b f' g, b f' }
  | \repeat unfold 2 { r8 a,16 c fis a, c fis }
  | \repeat unfold 2 { r8 g,16 c g' g, c g' }
  %30
  | \repeat unfold 2 { r8 g,16 c f g, c f }
  | \repeat unfold 2 { r8 g,16 b f' g, b f' }
  | \repeat unfold 2 { r8 g,16 bes e g, bes e }
  | r8 f,16 a c f c a c \change Staff = "lower" a f a f d f d
  | \change Staff = "upper" \stemNeutral r8 g'16 b d f d b d b g b d, f e d
  %35
  | <e g c>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | \repeat unfold 2 { e16\rest e8.~ e4 }
  | \repeat unfold 2 { e16\rest d8.~ d4 }
  | \repeat unfold 2 { e16\rest d8.~ d4 }
  | \repeat unfold 2 { e16\rest e8.~ e4 }
  %5
  | \repeat unfold 2 { e16\rest e8.~ e4 }
  | \repeat unfold 2 { e16\rest d8.~ d4 }
  | \repeat unfold 2 { e16\rest d8.~ d4 }
  | \repeat unfold 2 { e16\rest c8.~ c4 }
  | \repeat unfold 2 { e16\rest c8.~ c4 }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*9
  %10
  | \repeat unfold 2 { d16\rest a8.~ a4 }
  | \repeat unfold 2 { f'16\rest b,8.~ b4 }
  | \repeat unfold 2 { f'16\rest bes,8.~ bes4 }
  | \repeat unfold 2 { f'16\rest a,8.~ a4 }
  | \repeat unfold 2 { f'16\rest aes,8.~ aes4 }
  %15
  | \repeat unfold 2 { e'16\rest g,8.~ g4 }
  | \repeat unfold 2 { e'16\rest f,8.~ f4 }
  | \repeat unfold 2 { e'16\rest f,8.~ f4 }
  | \repeat unfold 2 { a16\rest d,8.~ d4 }
  | \repeat unfold 2 { b'16\rest e,8.~ e4 }
  %20
  | \repeat unfold 2 { b'16\rest g8.~ g4 }
  | \repeat unfold 2 { a16\rest f8.~ f4 }
  | \repeat unfold 2 { a16\rest c,8.~ c4 }
  | \repeat unfold 2 { a'16\rest f8.~ f4 }
  | \repeat unfold 2 { a16\rest f8.~ f4 }
  %25
  | \repeat unfold 2 { a16\rest e8.~ e4 }
  | \repeat unfold 2 { a16\rest d,8.~ d4 }
  | \repeat unfold 2 { a'16\rest d,8.~ d4 }
  | \repeat unfold 2 { a'16\rest ees8.~ ees4 }
  | \repeat unfold 2 { a16\rest e8.~ e4 }
  %30
  | \repeat unfold 2 { a16\rest d,8.~ d4 }
  | \repeat unfold 2 { a'16\rest d,8.~ d4 }
  | \repeat unfold 2 { a'16\rest c,8.~ c4 }
  | a'16\rest c,8.~ c4~ c2
  | a'16\rest b,8.~ b4~ b2
  %35
  | c1

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c2 c
  | c c
  | b b
  | c c
  %5
  | c c
  | c c
  | b b
  | b b
  | a a
  %10
  | d, d
  | g g
  | g g
  | f f
  | f f
  %15
  | e e
  | e e
  | d d
  | g, g
  | c c
  %20
  | c c
  | f, f
  | fis fis
  | aes aes
  | g g
  %25
  | g g
  | g g
  | g g
  | g g
  | g g
  %30
  | g g
  | g g
  | c, c
  | c~ c
  | c~ c
  %35
  | c1\fermata
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
    opus = "BWV 846"
    title = \markup { "Praeludium I." }
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
    \tempo 4 = 70
  }
}
