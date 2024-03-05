Global = {
  \key d \major
  \time 9/16
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | d8.~ d16 fis a d a fis
  | d16 fis a c8. r
  | b16 a b e,8.~ e16 fis g
  | a16 g a d,8.~ d16 e fis
  %5
  | g16 e cis a cis e g fis e
  | fis16 d e fis gis a b cis d
  | \stemUp\tieUp cis16 b a d cis b cis b a
  | e'8.~ e16 cis d e fis g
  | a8.~ a16 b, cis d e fis
  %10
  | g8.~ g16 a, b cis d e
  | \stemNeutral fis8. gis, b'~
  | b16 cis, e a8.\stemUp dis,
  | e16 e, fis g a b cis d! e
  | d8. c' fis,
  %15
  | g16 g, a b cis! d e fis g
  | fis16 e d a'8. g8.~
  | g8. fis a\rest
  | fis8. g8 a16\rest a8.\rest
  | g8. fis8 f16\rest f8.\rest
  %20
  | d8. cis e~
  | e8. d gis
  | a8. cis, dis~
  | dis8. e ais
  | b8. dis, eis
  %25
  | fis8. a a
  | a8. b\rest b\rest
  | g16 fis e g8. g
  | g8. a\rest a\rest
  | fis16 d b~ b ais b cis d e
  %30
  | \stemNeutral\tieNeutral d16 b g_~ g fis g \stemUp a! b c
  | \stemNeutral b16 g e'~ e dis e fis g a
  | \stemUp\tieUp \override Tie.staff-position = 8 g4.~ g8.~ \revert Tie.staff-position
  | g16 s8 s4.
  | \staffLower\stemUp a,,16 \staffUpper d fis a d fis d a fis
  %35
  | d \staffLower b \staffUpper \stemNeutral\tieNeutral d gis b d gis b gis
  | a16 e cis a e cis \staffLower a \staffUpper cis e
  | a16 cis e g8. r
  | fis16 e fis b,8.~ b16 cis d
  | e16 d e a,8.~ a16 b cis
  %40
  | d16 b gis e gis b d cis b
  | \stemUp\tieUp cis8.~ cis e\rest
  | cis8.~ cis e\rest
  | c8.~ c e\rest
  | c8.~ c e\rest
  %45
  | \stemNeutral\tieNeutral r16 fis, gis a b c~ c b a
  | \stemUp\tieUp gis a b e, gis b e8.~
  | e16 d cis b cis a e a gis
  | \staffLower
    \once\override Beam.positions = #'(3.5 . 5) a,,16 cis e
    \once\override Beam.positions = #'(12 . 13.5) a \staffUpper cis e a8.
  }
  \pageBreak
  \repeat volta 2 {
  | R1*9/16*6
  %55
  | s1*9/16*9
  %64
  | cis16 d e fis, e' d cis d e
  | gis,16 e' d cis d e ais, b cis
  | d16 fis a gis fis e d cis b
  | cis16 e g! fis e d c b a
  | b16 c d c b a b a g
  | a16 b c b a g a g fis
  %70
  | \stemNeutral g16 b' a g fis e \stemUp d cis b
  | \stemNeutral cis16 d e d e fis e fis g
  | fis16 a g fis e d \stemUp c b ais
  | b16 cis! d cis d e d e fis
  | e8. cis g'
  %75
  | fis8. e4.
  | fis8. b4.~
  | b8. a g!
  | fis4.~ fis8.~
  | fis~ fis16 fis e d cis b
  %80
  | e4.~ e8.~
  | e~ e16 e d cis b a
  | d4.~ d8.~
  | d~ d16 d cis b a gis
  | cis16 b a d4.
  %85
  | e16 fis e d b c~ c8 c'16
  | \stemNeutral\tieNeutral b16 a b e,8.~ e16 fis g
  | a16 g a d,8.~ d16 e fis
  | g16 e cis a cis e g fis e
  | \stemUp\tieUp fis8.~ fis a\rest
  %90
  | fis8.~ fis a\rest
  | f8.~ f a\rest
  | f8.~ f a\rest
  | \stemNeutral\tieNeutral r16 b, cis d e f~ f e d
  | cis16 d e \stemUp a, cis e a8.~
  %95
  | \stemNeutral a16 g fis e fis d a d cis
  | d a fis \stemDown d \staffLower\stemUp a fis d8.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s1*9/16*15
  %16
  | \stemUp\tieUp s4. \omit Flag e8.~
  | e s4.
  | s1*9/16*11
  %29
  | \undo\omit Flag s4. \shiftOn ais,8.
  | s4. \stemDown\tieDown fis8.
  | s1*9/16
  | g'16 e cis~ cis b cis d cis b
  | a cis e g e cis \stemNeutral a e cis
  | s1*9/16*7
  %41
  | \stemDown cis'16 gis a~ \once\omit Flag \stemUp \shiftOff a8. g\rest
  | \stemDown cis16 gis a~ \once\omit Flag \stemUp \shiftOff a8. g\rest
  | \stemDown c16 gis a~ \once\omit Flag \stemUp \shiftOff a8. g\rest
  | \stemDown c16 gis a~ \once\omit Flag \stemUp \shiftOff a8. g\rest
  %45
  | s1*9/16
  | s8. << { s8 \stemDown b16_~ \omit Flag b8. } \\ { s16 gis8_~ gis8. } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | s1*9/16*6
  %7
  | \tieDown a8.~ a16 \staffUpper\stemDown cis e a e cis
  | \staffLower\stemUp a \staffUpper\stemDown cis e g8. f8.\rest
  | fis16 e fis \staffLower\stemUp b,8.~ b16 \staffUpper\stemDown cis d
  %10
  | e d e \staffLower\stemDown\tieUp a,8.~ a16 b cis
  | d b gis e gis b d cis b
  | cis a b cis \staffUpper\stemDown dis e fis g a
  | g8. e \staffLower\stemUp ais,
  | b16 \staffUpper\stemDown cis d e fis g a b c
  %15
  | b8. g cis,
  | d e\rest \tieDown cis'~
  | cis d16 fis, g a b c
  | d8.~ d16 e, fis g a b
  | cis8.~ cis16 d, e fis g a
  %20
  | b8. e,\rest cis'
  | a e\rest d'
  | e e, fis
  | b s e
  | fis fis, gis
  %25
  | cis fis fis
  | fis16 fis, g! a b cis dis e fis
  | b,8.\rest e e
  | e16 e, fis g a b cis d e
  | e,8.\rest fis e
  %30
  | \staffLower\stemUp c\rest d c
  | c\rest e dis
  | c\rest g' fis
  | e s4.
  | s1*9/16*7
  %41
  | \staffUpper\stemDown s8. e b\rest
  | s8. e b\rest
  | s8. dis b\rest
  | s8. e b\rest
  %45
  | s1*9/16
  | s8. e8.~ \shiftOff e8.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  \repeat volta 2 {
  | R1*9/16*6
  | s1*9/16*9
  %16
  | \stemNeutral\tieNeutral d8.~ d16 fis a d a fis
  | d16 fis a c8. r
  | b16 a b e,8.~ e16 fis g
  | a16 g a d,8.~ d16 e fis
  %20
  | g16 e cis a cis e g fis e
  | fis16 d e fis g a b cis d
  | cis16 b a b a g a g fis
  | g16 e fis g a b cis d e
  | d16 cis b cis b a b a gis
  %25
  | a16 gis fis~ fis a cis e dis cis
  | dis8. r r
  | e,8.~ e16 g b d cis b
  | cis8. r r
  | \stemDown\tieDown d,8. d' cis
  %30
  | b,8. b' a
  | g,8. <g' b> <fis a>
  | e8. e' d
  | cis8. r r
  | a8. r r
  %35
  | r16 b8 r8. r
  | r8. r a
  | \stemNeutral\tieNeutral r8. r16 a, cis e a cis
  | d,8. r16 gis, b d fis b
  | cis,8. r16 fis, a cis e a
  | b,8. r16 e, gis b e gis
  | \tieDown a,8.~ a16 cis e a e cis
  | gis8.~ gis16 cis e a e cis
  | fis,8.~ fis16 a b c b a
  | e8.~ e16 a b c b a
  | dis,8. dis' dis,
  | d!8.~ d16 e fis gis a b
  | cis,8. d e
  | \stemDown a4.~ a8.
  }
  \repeat volta 2 {
  | \stemDown cis'16 d e fis, e' d cis d e
  | g, e' d cis d e a, b cis
  | d \staffUpper fis a gis fis e d cis b
  | cis e g! fis e d \staffLower cis b a
  | b cis d cis b a b a gis
  | \stemNeutral\tieNeutral a16 e' d cis b a g! fis e
  | d8.~ d16 fis a d a fis
  | d fis a c8. r
  | b16 a b e,8.~ e16 fis g
  | a g a d,8.~ d16 e fis
  | g e cis a cis e g fis e
  | fis8. a d,
  | g16 d' c b a g fis e dis
  | e8. b gis'
  | a16 e' d cis! b a gis fis eis
  | fis8. r ais
  | \stemDown\tieDown b e, fis
  | b, e r
  | a, d r
  | g, e' d
  | cis dis b
  | e, r g'~
  | g fis cis
  | d a' d
  | g,4. r8.
  | \stemNeutral cis,16 d e fis, e' d cis d e
  | gis, e' d cis d e ais, b cis
  | d fis a gis fis e d cis b
  | cis e g! fis e d cis b a
  | d8. d' b
  | \tieUp gis16 a b~ b a gis fis e d
  | cis8. cis' a
  | fis16 gis a~ a gis fis e d cis
  | b8. b' gis
  | e16 fis gis~ gis fis e d cis b
  | a b cis b a' g! fis g a
  | cis, a' g fis g a d, e fis
  | g b d cis! b a g fis e
  | fis a c b a g fis e d
  | e fis g fis e d e d cis
  | \tieNeutral d8.~ d16 fis a d a fis
  | cis8.~ cis16 fis a d a fis
  | b,8.~ b16 d e f e d
  | a8.~ a16 d e f e d
  | gis,8. gis' gis,
  | g!~ g16 a b cis d e
  | fis,8. g a
  | d,4. \stemDown d'8.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 828"
    title = \markup { "Gigue" }
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
