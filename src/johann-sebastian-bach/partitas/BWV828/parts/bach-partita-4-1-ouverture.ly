Global = {
  \key d \major
  \time 2/2
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \omit TupletBracket \omit TupletNumber
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp
  \repeat volta 2 {
  %1
  | fis2~ fis8. fis16 g8.^\mordent a16
  | \grace fis8 \once\override NoteColumn.force-hshift = #-0.4 e2 e
  | d4~ d32 g, a b c d e fis g2~
  | g8. g16 a8. b16 cis,8.^\prall e16 a8.\arpeggio g16
  %5
  | \grace g8 fis4 e8 d fis4. fis8
  | fis4~ fis16 b32 a g fis e dis e4. e8
  | e8. \tuplet 3/2 { d32 cis d } d8.cis16^\prall d2~
  | d8. \tuplet 3/2 { d32 cis b } cis8.^\mordent d16 e8. <d fis>16 <d gis>8. <e a>16
  | gis4~^\mordent gis16 fis32 gis a gis fis e \once\override Tie.staff-position = #10 b'2~
  %10
  | \once\override Beam.positions = #'(7 . 4) b16.
    \tuplet 3/2 { b,64 cis d } cis32 b a gis a b cis d e fis gis16 a8. \tuplet 3/2 { d,32 cis b } cis16 e g8~
  | g8. \tuplet 3/2 { cis,32 d e } fis g fis e d cis b a gis8. b16 e4~
  | e8. \tuplet 3/2 { fis32 gis a } gis8.^\prall \tuplet 3/2 { fis32 gis a } b,4.^\prall a8
  | a8. \tuplet 3/2 { cis32 b a } g'8. e16 fis2~
  | fis8. \tuplet 3/2 { fis32 e d } e2~ e8. \tuplet 3/2 { e32 d cis }
  %15
  | d2~ d8. \tuplet 3/2 { f32 e d } b'8. \tuplet 3/2 { gis32 fis e }
  | c'2~ c8. \tuplet 3/2 { b32 a gis } a4~
  | a8. \tuplet 3/2 { b32 a gis } a16 fis8 gis16 gis4.^\prall a8
   \break
  | \alternative {
      { a2~ a8 s4. }
      { \time 9/8 a4 b8\rest c4.\rest c4.\rest }
    }
  }
  %20
  | \once\override MultiMeasureRest.staff-position = #6
    R1*9/8
  | a8\rest fis a b e, g a d, fis
  | g8 a16 g fis e a8 d, fis g cis, e
  | s1*9/8
  | e4. s2.
  %25
  | \once\override NoteColumn.force-hshift = #0 d4.~ d8 b' d,
    \once\override NoteColumn.force-hshift = #-0.4 cis16 d d8.\prallprall cis16
  | e4.~ e8 d4~ d8 cis4~
  | cis8 b d~ d cis4~ cis8 b4~
  | b8 a cis fis,4. gis
  | a g'16\rest d e d cis d~ d d e d cis d
  %30
  | cis4. d e
  | fis8 g16 fis e d c' b a c b a gis b a gis a b
  | e,8 e4~ e8 d4~ d8 cis4~
  | cis8 fis, b~ b e, a gis4\prall a8
  | a16 b cis d e cis a4. gis4\prall fis16 gis
  %35
  | a8 e g fis16 gis a8 fis e gis a
  | d, e16 d cis d e gis a8 e d gis a
  | \slurDown \appoggiatura d, cis4 e8\rest c'4.\rest c\rest

  | s1*9/8*76
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown
  \omit TupletBracket \omit TupletNumber
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \repeat volta 2 {
  %1
  | \once\stemUp
    \shape #'((0.8 . 1) (0 . 1) (0 . 1) (0 . 1)) Tie
    d2~
    \once\override NoteColumn.force-hshift = #1 d8. b16\rest b4\rest
  | \stemUp\tieUp b4~ b32 s16. s8 \shiftOn e8. a,16 gis8.^\prall \tieDown a16~
  | a4~ a32 s16. s8 \stemDown r8 r16 b e8. d16
  | cis8. d16 e8. fis16 a,4 \stemUp e'\arpeggio
  %5
  | d2 \once\override Script.extra-offset = #'( -2.4 . -4.0 ) d4.^\mordent s8
  | \stemDown\tieDown b4 a\rest \once\override NoteColumn.force-hshift = #0.3
    \once\stemUp
    \shape #'((1 . 0.8) (0 . 1) (0 . 1) (0 . 1)) Tie
    b2~
  | b4 f\rest b2~
  | b8. g16\rest e4\rest f8\rest f16\rest a16 b8. cis16
  | <b e>4 g\rest d'8\rest d16\rest \stemUp\tieUp gis!~ gis4~
  %10
  | \once\omit Stem \once\omit Flag \once\override NoteColumn.force-hshift = #0 gis16
    s8. s2 s16 \stemDown
    \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) Tie
    e8._~
  | \shiftOff \once\omit Flag e8. e,16\rest f4\rest gis4. gis8
  | a8 g\rest g4\rest gis2
  | s2 g8\rest g32\rest e' d cis \tieDown d4~
  | d4~ d8. \tuplet 3/2 { d32 cis b } cis2~
  %15
  | cis8. \tuplet 3/2 { cis32 b a } b4~ b b\rest
  | b2\rest b4\rest b16\rest g32\rest e fis gis a b
  | c4 r16 fis8. e4 d
  | \alternative {
      { cis2 s }
      { d8\repeatTie cis e fis b, d e a, cis }
    }
  }
  %20
  | d8 e16 d cis b e8 a, cis d gis, b
  | cis8 d16 cis b a d8 g,\rest g\rest c g\rest g\rest
  | b c16 b a g fis8 f\rest f\rest a f\rest f\rest
  | \stemUp\tieUp fis'4.~ fis16 d e fis gis a b a gis fis e d_~
  | \once\stemDown d4. a'16\rest cis, d e fis gis a gis fis e d \tieDown cis~
  %25
  | \stemDown \once\override NoteColumn.force-hshift = #-1 cis4.
    \once\override NoteColumn.force-hshift = #-0.3 b
    \stemUp \once\override NoteColumn.force-hshift = #0 a8 \shiftOn
    \shape #'((0.8 . 1) (0 . 0.8) (0 . 0.8) (0 . 1)) Tie
    b4~
  | \stemDown b8. d16 cis b a8. cis16 b a gis4 e8
  | fis4. gis8. b16 a gis fis8. a16 gis fis
  | e4.~ e16 d e d cis d~ d d e d cis d~
  | d cis d e fis gis a4. b4.~
  %30
  | b8 gis a~ a gis a~ a gis a~
  | a4 e8\rest e\rest f a b e, gis

}

Tenor = \context Voice = "three" \relative c'' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \repeat volta 2 {
  %1
  | \staffUpper\stemDown\tieDown a2~ \shiftOff a8. d,16 e8. fis16
  | g4~ g32 e fis g a b cis d g,8\rest g16\rest e d8. cis16
  | d2~ d8. s8. s8
  | \staffLower\stemUp\tieUp e8\rest e16\rest b cis8. d16 \staffUpper\stemDown e8. e16\rest a4\arpeggio
  %5
  | a2 a4. a8
  | \once\override Voice.Rest.X-offset = #0.4 c,8\rest c16\rest d e8. fis16 g8. d16\rest c4\rest
  | \staffLower\stemUp a8\rest a16\rest fis16 gis8. ais16 b8 b\rest b4\rest
  | s1
  | s2 \staffUpper\stemDown\tieDown e4\rest d'~
  %10
  | <d gis>16 s8. s2 cis4~
  | cis8. s16 s2.
  | s1*5
  %17
  | \staffLower\stemUp\tieUp s4 cis, b e~
  | \alternative {
      { e2 s }
      { e4\repeatTie s2 s4. }
    }
  }
  | s1*9/8*3
  %23
  | \staffUpper\stemDown d8 e16 fis g a b8 g\rest g\rest a g\rest g\rest
  | \once\override NoteColumn.force-hshift = #0.8 gis a16 gis fis e a8 e\rest e\rest gis e\rest e\rest
  | \once\override NoteColumn.force-hshift = #0 fis8
    gis16 fis e fis gis8 a16 gis fis gis a8 gis16 fis e d
  | \staffLower\stemUp s1*9/8*8
  %34
  | a4 a8\rest b cis d b cis d
  | <e, a cis>4 b'8\rest d4 d8\rest cis4 d8\rest
  | <gis, b>4 b8\rest cis4 c8\rest b4 c8\rest
  | a4 b8\rest s2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  \repeat volta 2 {
  | <d, d'>4~ d32 d' e fis g a b cis d2~
  | \stemDown\tieDown d2~ d8. cis16 b8. a16
  | b2~ b8. e,16 fis8. g16
  | a2~ a8. e16 cis8. a16
  %5
  | \stemNeutral\tieNeutral d4^~ d16 cis32 b a g fis e d8. d'16 e8. fis16
  | g,8 r8 r4 r8 r16 g fis8. e16^\prall
  | \stemDown\tieDown b'2~ b8. b16 cis8. d16
  | \stemNeutral\tieNeutral gis,8. \tuplet 3/2 { e'32 fis gis } a8. b16 cis8. d16 b8. a16
  | e'8. d32 cis b8. d16 gis,8. b16 e,8. gis16
  %10
  | fis,4~ fis8. \tuplet 3/2 { fis'32 e d } cis8. e16 a,8. cis16
  | d,8. \tuplet 3/2 { a'32 b cis } d4~ d8. d16 cis8. b16
  | cis16 e d cis b[ cis a8] e'4 e,
  | a4~ a16 b32 cis d e fis g a4~ a16. b32 cis d e fis
  | g2~ g16. a,32 b cis d e fis4~
  %15
  | fis4~ fis8. \tuplet 3/2 { a32 gis fis } gis4~ gis32 a, b c d e fis gis
  | a8. \tuplet 3/2 { g32 f e } f16 g a f \once\stemUp \appoggiatura e8 dis2~
  | dis8. \tuplet 3/2 { d32 c b } c16 a dis,8 e2
  | \alternative {
      { a2_~ \stemDown a32[ b cis d \staffUpper e fis g fis e fis g a b cis d e] }
      { \time 9/8 \staffLower a,,4 r8 r4. r4. }
    }
  }
  | R1*9/8*5
  %25
  | s1*9/8
  | \stemNeutral cis8 cis, e fis b, d e a, cis
  | d8 e16 d cis b e8 a, cis d gis, b
  | cis8 d16 cis b a d8 d, d' e e, e'
  | fis8 cis a fis fis' fis, gis gis' gis,
  %30
  | a8 b16 a gis a b8 cis16 b a b cis8 d16 cis b cis
  | d8 fis a d2.~
  | d8 cis e fis b, d e a, cis
  | fis, a gis a cis, d e4 e,8
  | \stemDown <a cis e>4 b8\rest b'4. b
  %35
  | a,4 a8\rest a4.\rest a\rest
  | a4 a8\rest a4.\rest a\rest
  | b16\rest a[ b cis d e fis g a b cis \staffUpper d e fis g a b cis]

  | s1*9/8*76
  \fine
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
    title = \markup { "Ouverture" }
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
