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
  | s1*28
  }
    \fine
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
  | s1*28
  }
    \fine
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
  | s1*28
  }
    \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \stemNeutral\tieDown\slurNeutral
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
  | s1*28
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
    \tempo 4 = 84
  }
}
