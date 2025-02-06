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
  | b2 d8\rest bes
  %25
  | a2 d4~
  | d16 e, gis b e b e gis b f e d
  | c4 c r
  | r c r
  | r c r
  %30
  | r16 c b a f' e d c b d c b
  | e4 r r16 d c b
  | c4 r16 c b a gis4
  | a4 r r
  | R1*3/4*15
  | \override MultiMeasureRest.staff-position = #4
    R1*3/4
  | \override MultiMeasureRest.staff-position = #6
    R1*3/4
  | \override MultiMeasureRest.staff-position = #2
    R1*3/4*2
  | \override MultiMeasureRest.staff-position = #0
    R1*3/4
  %54
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e cis
  %60
  | d2.~
  | d

  | R1*3/4*136
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
  | r16 b a gis a4 r
  | r16 b a gis a4 r
  %30
  | R1*3/4
  | r16 gis fis e a b c d e,4~
  | e r c16\rest f e d
  | c4~ c16 d e f gis,8. gis16
  | a c b a e' b c d
    \change Staff = "lower" \voiceThree
    e,
    \change Staff = "upper" \voiceTwo
    d' c b
  %35
  | c d c b a e' f g a g f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b
    \change Staff = "lower" \voiceThree
    a gis b a gis
  | a e a c
    \change Staff = "upper" \voiceTwo
    e a, c e a g a e
  %40
  | fis4 r16 g fis e d c b
    a
  | \change Staff = "lower" \voiceThree
    g d g b d g, b d
    \change Staff = "upper" \voiceTwo
    g fis g dis
  | e4 r16 fis e d c b a g
  | fis8. e'16 dis e dis e a, c b a
  | g' dis e fis dis4.\prallmordent dis8
  %45
  | e4 r16 a g fis g b a g
  | a b c b a g fis e d c' b a
  | g a b a g fis e d c b' a g
  | fis g a g fis e dis cis b a' g fis
  | g4 r16 e' b g
    \change Staff = "lower" \voiceThree
    \once\override Beam.damping = #+inf.0
    e
    \change Staff = "upper" \voiceTwo
    g a b
  %50
  | c e, a c e a, c e a g fis e
  | dis e fis e dis cis b a g fis e dis
  | e fis g fis e d c b
    \change Staff = "lower" \voiceThree
    a g fis! e
  | c' b a g fis g a b dis,8. dis16
  | e4. e8 dis4
  %55
  | e4 b'8\rest b g b
  | a c fis, c' d, c'
  | g b e, b' c, b'
  | fis a dis, a' b, fis'
  | g4 g\rest g\rest
  %60
  | b16\rest fis b
    \change Staff = "upper" \voiceTwo
    d fis b, d fis b a b fis
  | gis2.
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
  | \stemNeutral\tieNeutral a~ a16 gis a b c d e f
  | f,4~ f16 e f g a b c d
  | c,4~ c16 b a b c d e f
  %30
  | d,8 d' a d f, d'
  | d, d' c16 c' b a gis8 e
  | a16 f e d c8 d e e,
  | \stemDown\tieDown a16 c b a e' b c d e, d' c b
  | c4~ c16 d e f gis,8.\prallmordent gis16
  %35
  | a4 r8 e' c e
  | \stemNeutral d f b, f' g, f'
  | c e a, e' f, e'
  | \stemDown b d gis, d' e, d'
  | c4 r \stemNeutral c~
  %40
  | c16 a b c d,8 c' fis, c'
  | \stemDown b4 r \stemNeutral b~
  | b16 g a b c,8 b' e, b'
  | \stemDown a16 b c b a g fis e dis8 dis'
  | e16 g fis e b' fis g a b, a' g fis
  %45
  | g a g fis e b' cis dis e d c b
  | c b a b c b a g fis a g fis
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d c b
  %50
  | a4 r16 a e c a c e a
  | b,8 a' fis a dis, a'
  | g16 a b a g fis e d c b a g
  | a b c b a g fis e b' c b a
  | g8 a b4. b8
  %55
  | e,4 a\rest g'~
  | g g,\rest fis'!~
  | fis g,\rest e'~
  | e g,8\rest c b a
  | g fis e fis g e
  %60
  | b'4. cis8 d b
  | e16 b e gis b e, gis b e d e b
  | \tieNeutral c4~ c16 b c a f'!4
  | r16 c, f a c f, a c f ees f c
  | d4~ d16 c d bes g'4
  %65
  | r16 d, g b d g, b d g f g d

  | R1*3/4*132
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
