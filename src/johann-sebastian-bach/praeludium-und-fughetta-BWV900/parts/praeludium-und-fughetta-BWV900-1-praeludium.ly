Global = {
  \key e \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r16 g' e b c a' b, g' a, fis' dis a b g' a, fis'
  | \stemUp f8\rest e fis e a, d\rest b a
  | \stemNeutral\tieNeutral r16 fis g b e a, c g~ g e fis a d g, b f!~
  | f d e g c a c e, d fis a c fis c a' c,
  %5
  | b g b dis, e b' c, b' a fis a cis, dis a' b, a'
  | g32 fis e fis g a b c fis, c' b a dis c b a g b c d! e b a g a b c b a g fis e
  | e'8 dis e16 b fis' b, g' ais, cis g' b, fis' ais, fis'
  | fis, b d e fis ais, gis' b, ais' cis, e ais gis b, ais' cis,
  | \stemUp\tieUp b'8 fis g4~ g fis~
  %10
  | fis e8 d cis8. d16 e4~
  | e8 d16 cis d4~ d8 cis16 b cis4~
  | cis8 b16 a! fis'8 a, g32 fis e fis b a b cis \stemNeutral d! b cis d gis, d' cis b
  | cis b a b cis d e fis g! e fis g cis, g' fis e fis8 a fis d
  | g16 b g d e c' d, b' c, a' fis c d b' c, a'
  %15
  | b, g' e b c a' b, g' a, fis' d a b g' a, fis'
  | \stemUp a8\rest g a g fis f\rest g fis
  | e16 s8. s2.
  | \override Beam.positions = #'(5.8 . 3)
    e32 d! c! b a g fis e
    \once\override Beam.positions = #'(2 . -0.5)
    dis cis b a \change Staff = "lower" g fis e dis e8 a\rest a4\rest
    \change Staff = "upper"
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1
  | g8 e\rest a g fis e\rest g fis
  | s1*6
  %9
  | f4\rest g8\rest b e a, g\rest a
  | d g, g\rest b~ b a g\rest cis!
  | a fis e\rest b' g e e\rest ais
  | fis4 c8\rest <b dis fis> <b e>16 s8. s4
  | s1*3
  %16
  | g'8 e' fis e a, g\rest b a
  | g16 e g c! \stemNeutral b dis, cis' e, dis' fis, a dis cis e, dis' fis,
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | a8\rest g fis g a a\rest g a
  | b16 s8. s2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | e,8 	e' dis e fis b,\rest e fis~
  | fis16 e g c b dis, cis' e, dis' fis, a dis cis e, dis' fis,
  | \stemNeutral e'8 d c a d c b g
  | c b a g fis e d fis
  %5
  | g, fis' c e fis, e' b dis
  | e, e' dis b e d c4^\prall
  | b16 fis' b fis g e' fis, d'! e, cis' ais e fis d' e, cis'
  | d,8 fis e d cis g'! fis e
  | d16 cis d fis b e, g d~ d b cis e a d, fis c~
  %10
  | c a b d g e g b, a cis e g cis g e' g,
  | fis d fis ais, b fis' g, fis' e cis e gis, ais! e' fis, e'
  | d32 cis b cis d e fis g! a! fis g a dis, a' g fis e8 a gis e
  | a8 e cis a d32 cis d e fis g a b c a b c fis, c' b a
  | b8 r c g a d, b d
  %15
  | g,16 b' g d e c' d, b' c, a' fis c d b' c, a'
  | b, e g c b dis, cis' e, dis' fis, a dis cis e, dis' fis,
  | e' g, b e dis fis, e' g, fis' a, dis fis e g, fis' a,
  | \stemDown g'8 a, b b, e16[ d!32 c! b a g fis] e8 e\rest
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 900"
    title = \markup { "Praeludium" }
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
    \tempo 4 = 54
  }
}
