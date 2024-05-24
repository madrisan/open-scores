Global = {
  \key e \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  %1
  | R1*3/4*9
  %10
  | b8 ais b e, cis' e,
  | d'4 e\rest e\rest
  | cis8 b cis fis, d' fis,
  | e'4 e\rest e\rest
  | d8 cis d b e cis
  %15
  | fis d fis cis b g'
  | e cis e b ais fis'
  | d b e d cis b
  | ais b cis ais fis e!
  | d4 b'2~
  %20
  | b8 c!16 d e d c b e d c b
  | c4 a2~
  | a8 b16 c d c b a d c b a
  | b4 cis dis
  | e8 fis16 g a g fis e a g fis e
  %25
  | c'4 dis, e
  | fis8 g16 a b a g fis b a g fis
  | e2.~
  | e4 d c~
  | c c b~
  %30
  | b fis g
  | a c b
  | g2.~
  | g16 g a b c b a g c b a g
  | fis2.~
  %35
  | fis16 fis g a b a g fis b a g fis
  | e g a b c b a g a g fis e
  | fis a b c d c b a b a g fis
  | g b c d e d c b c b a g
  | a8 b16 c d e fis g a8 c,
  %40
  | b4 d fis,
  | g16 fis g a b a b c d c d e
  | fis2 g4~
  | g8 fis16 e fis8 a fis d
  | g2.~
  %45
  | g~
  | g4 fis g\rest
  | g8 d e d c b
  | a4 b cis
  | d8 a'\rest a4\rest a\rest
  %50
  | \once\override MultiMeasureRest.staff-position = #6
    R1*3/4
  | R1*3/4
  | d,16\rest e, fis g a8 d b g
  | fis8 d'\rest e4\rest e\rest
  | \once\override MultiMeasureRest.staff-position = #4
    R1*3/4
  %55
  | R1*3/4*3
  | \override MultiMeasureRest.staff-position = #4
    R1*3/4*7
  %65
  | a,8 gis a e b' e,
  | c'4 d\rest d\rest
  | b8 a b e, c' e,
  | d'4  e\rest e\rest
  | c8 b c a d a
  %70
  | e' c e b a f'
  | d b d a gis e'
  | c a d c b a
  | gis a'\rest a4\rest b\rest
  | a8\rest e c a a' e
  %75
  | f a\rest a4\rest a\rest
  | a8\rest d, b g g' d
  | \stemNeutral\tieNeutral e16 g a g f e d c b d c b
  | c d e d c b a g fis! e d c
  | b a g a b c d e fis a g fis
  %80
  | g a b c d e f g cis, g' f e
  | f a bes a g f e d cis e d cis
  | d e f e d c b a gis fis e d
  | c b a b c d e fis gis b a gis
  | a b c d e fis g! a dis, a' g fis
  %85
  | g b c b a g fis e dis fis e dis
  | e fis g fis e d! c b a g fis e
  | \stemUp\tieUp dis'2.~
  | dis16 cis dis e dis cis dis e dis cis dis fis
  | b,4 e dis
  %90
  | e2.~
  | e4 d2~
  | d4 c~ c16 b c a
  | b2~ b16 b cis dis
  | e8 dis e b fis' b,
  %95
  | g'4 g\rest g\rest
  | fis8 e fis b, g' b,
  | a'4 g\rest g\rest
  | g16 a g fis g e dis e a e dis e
  | b' c b a b g fis g c g fis g
  %100
  | a b a g a fis e fis b fis dis! fis
  | g a g fis g e dis e a g fis e
  | dis4 d16\rest a fis dis s4
  | r8 <ais' cis e>8 e'4 dis8.\parenthesize\prallprall e16
  | e4 r r
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | e8 dis e b fis' b,
  | g'4 e\rest e\rest
  | fis8 e fis b, g' b,
  | a'4 e\rest e\rest
  %5
  | g8 fis g e a fis
  | b g b fis e c'
  | a fis a e dis b'
  | g e a g fis e
  | dis e fis dis b a
  %10
  | g4 gis ais
  | b8 cis16 d e d cis b e d cis b
  | g'4 ais, b
  | cis8 d16 e fis e d cis fis e d cis
  | b4 fis' g
  %15
  | b, a' g
  | b, g' fis
  | b, fis' eis
  | fis fis, ais
  | b8 cis d b dis a!
  %20
  | g4 g\rest gis
  | a8 b c a cis g!
  | fis4 b\rest fis'
  | g g a
  | b f\rest f\rest
  %25
  | f\rest a b
  | dis, d\rest d\rest
  | d\rest b' c
  | g2.
  | fis
  %30
  | e4 dis e
  | fis dis fis~
  | fis8 b, e16 d! c b e d c b
  | a8 a\rest a4\rest a\rest
  | b16\rest e d c d c b a d c b a
  %35
  | g8 a\rest a4\rest a\rest
  | R1*3/4*4
  %40
  | g'8 fis g d a' d,
  | b'4 c,\rest c\rest
  | a'8 g a d, b' d,
  | c'4 g\rest g\rest
  | b8 a b g c a
  %45
  | d b d a g e'
  | c a c g fis d'
  | b g c b a g~
  | g16 fis e fis e\rest fis e fis e\rest g fis g
  | e\rest a d, e fis g a b cis d e fis
  %50
  | g fis e fis 	g fis e d e d cis b
  | cis b a b cis b a g a g fis e
  | d2.~
  | d8 d16 e fis g a8~ a16 b cis d
  | e,8 d'~ d cis16 b a g fis e
  %55
  | d e fis8~ fis e16 d cis8 d\turn
  | e fis16 g a g fis e a g fis e
  | fis8 d fis a fis d
  | g16 a b c d c b a d c b a
  | b8 g b d b g
  %60
  | c16 g a b c b a gis c b a gis
  | a e fis gis a gis fis e a g f e
  | d8 gis16 a b2~
  | b16 a b c d2~
  | d16 c b a gis a b a gis fis e d
  %65
  | c4 \change Staff = "lower" \stemUp a gis
  | a16 e fis gis a e fis gis a b \change Staff = "upper" \stemDown c d
  | e4 d c
  | b16 a' gis fis e a gis fis e d c b
  | a8 a\rest a4\rest a\rest
  %70
  | a8\rest a[ c e] f! c\rest
  | c\rest d[ f! d] b b\rest
  | b\rest c b e d f!
  | e b' gis! e e' b
  | c e,\rest c4\rest c\rest
  %75
  | g'8\rest a f d d' a
  | b e,\rest c4\rest c\rest
  | s2.*10
  %87
  | g'16\rest a b c b a b c b a b c
  | fis,2.~
  | fis4 e fis
  %90
  | g16 a b a g a b a g b a g
  | fis g a g fis g a g fis a g fis
  | e fis g fis e g fis e a4~
  | a16 g fis e 	dis e fis g a e\rest e8\rest
  | d4\rest b dis
  %95
  | d8\rest e16 dis e fis g a b cis dis e
  | fis8 g,\rest dis4 e~
  | e8 dis16 e fis g a b cis dis e fis
  | g8 g,\rest g4\rest g\rest
  | g8\rest b[ e dis] e g,\rest
  %100
  | g\rest e'[ dis cis] dis f,\rest
  | e4\rest e8 g fis a~
  | a16 c! a fis dis s8. s4
  | s8 g <fis b>2
  | <g b>4 s2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3/4*22
  %23
  | e8 dis e b fis' b,
  | g'4 r r
  | fis8 e fis b, g' b,
  | a'4 r r
  | g8 fis g e a fis
  | b g b fis e c'
  | a fis a e dis b'
  %30
  | g e a g fis e
  | dis e fis dis b dis
  | e fis g e b d!
  | c b a c e c
  | d e fis d a c
  %35
  | b a g b d b
  | c e a e c a
  | d fis b fis d b
  | e g c g e c
  | fis16 g fis e d c b a g fis e d
  %40
  | g4 b d
  | g8 fis g d b' g
  | d'4 c b
  | a8 b16 c d c b a d c b a
  | g a b c d c d g, e' d e g,
  %45
  | f'!4 b, c
  | a d d,
  | g fis g
  | d8 cis d a e' a,
  | fis'4 r r
  %50
  | e8 d e a, fis' a,
  | g'4 r r
  | fis8 e fis d g e
  | a fis a e d b'
  | g e g d cis a'
  %55
  | fis d g fis e d
  | cis a cis e cis a
  | d16 a' b c! d c b a d c b a
  | b8 d, fis a fis d
  | g16 d' e f! g f e d g f e d
  %60
  | e b c d e d c b e d c b
  | c8 c, c'2~
  | c16 c b a gis a b a gis fis e d
  | c e d c b c d c b a gis fis
  | e8 gis b d e gis
  %65
  | \stemDown a4 c, e
  | a, g\rest g\rest
  | \stemNeutral\tieNeutral r gis' a~
  | a8 b16 a gis8 b gis e
  | a gis16 fis e a gis fis e d c b
  %70
  | a4 r r8 a'
  | b r r4 r8 gis
  | a r r4 r8 d,
  | e16 b' c d e d c b c b a gis
  | a e fis gis a g f e f e d cis
  %75
  | d a' b c! d c b a b a g fis
  | g d e fis g f e d e d c b
  | c8 b c g d' g,
  | e' g e c a fis'!
  | g fis g d a' d,
  %80
  | b' d b g e cis'
  | d, cis d a e' a,
  | f' a f d b gis'
  | a gis a e b' e,
  | c' e c a fis dis'
  %85
  | e, dis e b fis' b,
  | g'4 r r
  | fis8 e fis b, g' b,
  | a'4 r r
  | g8 fis g e a fis
  %90
  | b g b fis e c'
  | a fis a e dis b'
  | g e a g fis e
  | dis e fis dis b a
  | g4 g' b
  %95
  | e, r8 e16 fis g a b cis
  | dis4 a g
  | fis r8 fis16 g a b cis dis
  | \clef treble e8 dis e b fis' b,
  | g'2~ g8 a16 g
  %100
  | fis2~ fis8 g16 fis
  | e8 d! \clef bass c![ b c a]
  | b4 s b16 a g fis
  | e g fis e b'4 b,
  | e, r r
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
    title = \markup { "Fughetta" }
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
    \tempo 8 = 280
  }
}
