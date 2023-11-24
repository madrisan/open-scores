Global = {
  \key g \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieUp\slurNeutral
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  \repeat volta 2 {
  | b4 c~ c8 b16 a b8 c
  | d e4 d16 c d4~ d16 e d c
  | b16 d g4 fis16 g \stemNeutral a8 c,4 b16 a
  | \stemUp b a b c d2~ d16 e d e
  %5
  | d1
  | c1~
  | c8 b4 cis16 d e8 a,4.~
  | a8 fis'4 e16 d cis d b cis a4~
  | a16 cis d4.~ d2~
  %10
  | d1~
  | d8 \stemNeutral\tieNeutral d4 cis16 d e8 g,4 fis16 e
  | fis a c4 b16 a b d, e d
    \set subdivideBeams = ##t
    \tuplet 3/2 { g16 fis e } b' g
    \set subdivideBeams = ##f
  | a16 cis, d cis
    \set subdivideBeams = ##t
    \tuplet 3/2 { fis e d } a' fis
    \set subdivideBeams = ##f
    g2~
  | g4~ g16 fis g e fis e fis g a g a b
  %15
  | \stemNeutral cis b cis d e fis e d fis e fis g a g a b
  | \stemUp\tieUp c2 b~
  | b16 a b g e g fis e a2~
  | a16 g a fis d fis e d g2~
  | g16 fis e d cis b a g fis a g fis e d cis b
  %20
  | cis d cis \staffLower b a g fis e fis a g fis e d cis! b
  | cis d cis b a g fis e fis' a d8~ d16 a b g
  | fis a d8~ d16 fis, g e d a' c8~ c16 a b g
  | fis a c8~ c16 g a fis b fis g b cis g d' g,
  | \staffUpper e' b cis e g a, a' a, g' fis e d e8 cis
  %25
  | d16 gis, f'8~ f16 e d cis d a f'8~ f16 e d cis
  | \set subdivideBeams = ##t
    \tuplet 3/2 { d cis b } f' d
    \set subdivideBeams = ##f
    gis d b' d, cis e g8~ g16 e32 fis g16 fis32 e
  | fis16 d' gis,8~ gis16 b a gis a e' g,8~ g16 fis g e
  | fis a d fis, e g d' cis d a fis d r4
  }
  \repeat volta 2 {
  | \set subdivideBeams = ##t
    \stemNeutral a'16 b c4 b16 a b32 g a b c d e fis g8 d~
  %30
  | d32 a b c d e fis g a8 c,~ c16 b32 a b4.~
  | b16 c d4 c16 b c32 a b c d e fis gis a8 e~
  | e32 b c d e fis gis a b8 d,~ d16 c32 b c4.~
    \set subdivideBeams = ##f
  | c32 b a b c16 a b fis' a,8~ a16 g32 fis g16 b e b g'8~
  | g32 f e f g16 e f c' e,8~ e16 dis32 cis dis16 fis b, fis' a,8~
  %35
  | a16 gis32 fis gis16 b e, a gis d'~ d c32 b c16 a dis a fis' a,
  | a'16 g32 fis g16 e \stemUp\tieDown b e a, dis
    \set subdivideBeams = ##t
    e d32 c b a g fis e4~
  | e16 fis g4 fis16 e fis32 e d e fis g a b c4~
  | c32 b c d c b a g
    \set subdivideBeams = ##f
    f16 d'8 f,16~ f16 e32 d \tieUp  e8~ e4~
  | \set subdivideBeams = ##t
    e16 d32 cis d16 d32 e fis16 fis32 g a16 a32 b \stemNeutral c16 b32 a b16 g32 a b16 b32 c d16 d32 e
    \set subdivideBeams = ##f
  %40
  | f16 e32 d e16 a fis g cis, d b8 a r4
  | \stemUp b4 c~ c8 b16 a b8 c
  | d e4 d16 c d4~ d16 e d c
  | b d g8~ \stemNeutral g fis16 g a8 c,4 b16 a
  | b d f4 e16 d \stemUp e2~
  %45
  | e16 d e c a c b a d2~
  | d16 c d b g b a g c2~
  | c16 b a g \stemNeutral\tieNeutral fis e d c b g' fis e a g fis e
  | fis c' b a d c b a b d c b a g fis e
  | fis g fis e d c b a b d g8~ g16 d e c
  %50
  | b d g8~ g16 b, c a g d' f8~ f16 d e c
  | b d f8~ f16 d e b e b c e fis c g' c,
  | a' e fis a c d, d' d, c' b a g a8 fis
  | g16 cis, bes'8~ bes16 a g fis g d bes'8 ~ bes16 a g fis
  | \set subdivideBeams = ##t
    \tuplet 3/2 { g fis e } bes' g
    \set subdivideBeams = ##f
    cis g e' g, fis a c8~
    \set subdivideBeams = ##t
    c16 a32 b c16 b32 a
    \set subdivideBeams = ##f
  | b16 g' cis,8~ cis16 e d cis d a' c,8~ c16 b c a
  | b d b g d g a fis g d b g r4
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \stemDown\tieDown\slurNeutral
  %1
  \repeat volta 2 {
  | g1~
  | g1~
  | g8 r r4 r2
  | s4. e8 fis16 e fis g a4~
  %5
  | a8 c b a g b e, g~
  | g b a g fis a d, fis
  | g2~ g4~ g16 fis e g
  | fis8 a4 g8~ g4~ g16 g fis e
  | fis4 g~ g8 fis16 e fis8 g
  %10
  | a b4 a16 g a4~ a16 b a g
  | fis a s8 s2.
  | s1*4
  %16
  | r16 b' a g a g fis e d g fis g e fis e d
  | cis2~ cis16 fis e fis d e cis d
  | b2~ b16 e d e cis e b cis
  | a8 r r4 s2
  | s1*9
  }
  \repeat volta 2 {
  | s1*7
  %36
  | \stemDown s4 g8 fis e r s4
  | s1*3
  %40
  | s2 g8 fis s4
  | g1~
  | g1~
  | g8 r s2.
  | s2 r16 c b c a b g a
  %45
  | fis!2~ fis16 b a b g a fis g
  | e2~ e16 a g a fis g e fis
  | d8 r s2.

  | s1*9
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieUp\slurNeutral
  %1
  \repeat volta 2 {
  | d8 e4 d16 c d4~ d16 e d c
  | b4 c~ c8 b16 a b8 c
  | d1~
  | d4. s8 s2
  %5
  | s1*4
  | a8 b4 a16 g a4~ a16 b a g
  %10
  | fis4 g~ g8 fis16 e fis8 g
  | a1~
  | a2. g4~
  | g fis~ fis16 g fis g e fis d e
  | cis e d fis e8 cis d16 s8. s4
  %15
  | s1*14
  }
  \pageBreak
  \repeat volta 2 {
  | \clef treble
    fis'8 fis fis fis g r r16 b a g
  %30
  | fis8 r r16 fis e d g8. fis16 g d b g
  | gis'8 gis gis gis a r r16 \stemNeutral\tieNeutral c b a
  | gis8 r r16 gis fis e a8. gis16 a e c a
  | dis8 dis dis8. cis32 b e8 e e~ e32 d c b
  | a8 a' a8. g32 fis b8 fis dis8. cis32 b
  %35
  | s1*2
  | \stemUp\tieUp g8\rest e a4~ a8 a s4
  | \stemDown s2 s8 \staffUpper a16\rest b c \staffLower \stemUp g e c
  | s1*2
  %41
  | d'8 e4 d16 c d4~ d16 e d c
  | b 4 c~ c8 b16 a b8 c
  | d1~
  | d8 d b g s2
  %45
  | s1*12
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \stemNeutral\tieDown\slurNeutral
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  \repeat volta 2 {
  | g1~
  | g1~
  | g8 b a g fis a d, fis
  | g16 d g4 fis16 g a8 c,4 b16 a
  %5
  | b a b c d e c d e d e fis g a fis g
  | a g a b c d b c d e d c b c b a
  | g a g fis e fis e d cis d cis b a b cis a
  | d cis b a g a b g a8 b cis a
  | d1~
  %10
  | d1~
  | \stemDown d8 fis e d cis e a, cis
  | e d fis d g fis e d
  | cis a d cis b d cis b
  | a b cis a d16 cis d e fis e fis g
  %15
  | a g a b cis d b cis \clef treble \stemUp d cis d e fis e fis g
  | a8 e fis d g a g fis
  | e g cis, e fis g fis e
  | d fis b, d e fis e d \clef bass
  | \stemDown cis e a, cis d b g e
  %20
  | a e cis a d b g e
  | a e\rest c4\rest d8 e fis g
  | a b a g fis e fis g
  | a g fis d g e a b
  | \stemNeutral cis e cis a d b g a
  %25
  | \override Rest.staff-position = #0
    b d gis r a, d a' r
  | gis, d' b' r a, e' cis' r
  | r d16 e f8 b, r cis16 d e8 a,
  | d fis, g a d,4 d,
  }
  \repeat volta 2 {
  | \stemDown d''8 d d d d s4.
  %30
  | s1
  | e8 e e e e s4.
  | s1*3
  %35
  | \stemNeutral e8 d c b \clef bass a g! fis e
  | dis e b' b,
    \set subdivideBeams = ##t
    e4~ e32 fis g fis e fis d! e
    \set subdivideBeams = ##f
  | \stemDown cis4. cis8 d4 g16 fis e d
  | \stemNeutral\tieNeutral g8 d b g c c, r4
  | fis'8 a d, fis g d g, b
  %40
  | c c' a g d'~ d32
    \set subdivideBeams = ##t
    cis d e d c b c b a b a
    \set subdivideBeams = ##f
  | \tieDown g1~
  | g1~
  | g8 b a g fis a d, fis
  | g4 b,\rest c'8 d, c b
  %45
  | a c' fis, a b c, b a
  | g b' e, g a b, a g
  | fis a' d, fis g16 b a g fis e d cis
  | d e d c b a g fis g d e fis g a b c
  | d c d e fis d e fis g8 g,16 a b8 c
  %50
  | d e d c b a b c
  | d c b g c a d e
  | fis a fis d g e c d
  | e g cis r d, g d' r
  | cis, g' e' r d, a' fis' r
  %55
  | r g,16 a bes8 e, r fis16 g a8 d,
  | g c, d d, g8. b32 d g4
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 902"
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
    \tempo 4 = 88
  }
}
