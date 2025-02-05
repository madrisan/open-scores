Global = {
  \key a \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  \tempo \markup { \abs-fontsize #14 \italic "Fuga." }
  | a16 c b c e b c d e, d' c b
  | c d c b a e' f g a g f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  %5
  | d c b c d c b a gis b a gis
  | a e a c e a, c e a g a fis
  | g e fis g dis4.\prallmordent dis8
  | e4 r8 b' g b
  | a c fis, c' d, c'
  %10
  | g b e, b' c, b'
  | fis a dis, a' b, a'
  | g4 r4 g~
  | g16 e f g a,8 g' cis,! g'
  | f4 r f~
  %15
  | f16 d e f g,8 f' b, f'
  | e16 f e d c b a g fis a b c
  | d e d c b a gis fis e gis a b
  | c4 b4. b8
  | a4 g'4\rest a8\rest c
  %20
  | c4 b\rest b8\rest b
  | b4 b\rest b8\rest a
  | a4 a8\rest f e d
  | c2 d8\rest c
  | bes2 d8\rest bes
  %25
  | a2 d4~
  | d16 e, gis b e b e gis b f e d

  | R1*3/4*171
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #-4
  %1
  | R1*3/4*6
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  %10
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e b
  | cis4 d,16\rest d' cis b a g f e
  | d a d f a d, f a d c d a
  %15
  | b4 c,16\rest c' b a g f e d
  | c4 d\rest b16\rest e d c
  | b4 c\rest a16\rest d c b
  | a8 a'~ a[ a] gis4
  | a r8 e' c e
  %20
  | d f b, f' e, f'
  | c e a, e' f, e'
  | b d gis, d' e, b'
  | b4 a f8\rest a~
  | a4 g e8\rest g~
  %25
  | g4 f2
  | \change Staff = "lower" \voiceThree
    b,4 b\rest
    \change Staff = "upper" \voiceTwo
    e~
  | e16 b' a gis a4 f\rest
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3/4*17
  | a16 c b a e' b c d e, d' c b
  | c d c b a e' f g a g f e
  %20
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b a gis b a gis
  | a e a c e a, c e a g a fis
  | g d, g b d g, b d g f g e
  %25
  | f f, a c f e d c b c b a
  | gis4 a,\rest gis'
  | \tieNeutral a~ a16 gis a b c d e f

  | R1*3/4*171
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
    opus = ##f % "BWV 944"
    title = ##f % \markup { "Fuga" }
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
