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
  | \slurDown \appoggiatura d,16 cis4 e8\rest c'4.\rest c\rest
  | d16 e fis g a fis d4. cis4\prall b16 cis
  | d8 a c b16 cis d8 b a cis d
  %40
  | g,8 a16 g fis g a cis d8 a g cis d
  | \appoggiatura g,16 fis4 d'8\rest g4.\rest g\rest
  | \tieNeutral g,16 fis g8 d'~ d cis! b~ b a g
  | fis8 eis cis'~ cis b a~ a g fis
  | e8 dis b'~ b a g~ g fis e
  %45
  | cis' e, a d fis, a e' g, a
  | fis'16 a, d fis d a a'\rest b, d fis d b a'\rest cis, e fis e cis
  | d8 b d g b, d a' c, d
  | b'16 d, g b g d c'\rest e, g b g e c'\rest fis, a b a fis
  | g16 fis e dis e g a, fis' e dis e g g, fis' e dis e g
  %50
  | \stemNeutral c,16 fis a4~ a8 g16 fis e d! c! dis fis4~
  | fis8 g, b c fis, a b e, g
  | a8 b16 a g fis b8 e, g a dis, fis
  | g16 e fis g a b c a b cis dis e fis dis e fis g a
  | b16 a g fis e dis e8 fis16 g a fis \once\stemUp\tieUp \appoggiatura e16 dis!4 e8
  %55
  | s2. \stemUp f8\rest f\rest g8
  | g2.~ g8 e g
  | fis16 e d e fis g a g fis g a b \once\override Stem.length = #6 \once\stemDown c4.
  | b8 e, g a d, fis g cis, e
  | fis8 g16 fis e d g8 cis, e fis b, d
  %60
  | e8 fis16 e d cis fis8 b, d e ais, cis
  | d8 e16 d cis b e8 fis16 e d cis fis8 e16 d cis b
  | ais16 gis fis gis ais b cis b ais b cis d e4.~
  | e16 fis e fis e fis d e d e d e cis8 fis4~
  | fis16 b, cis d e fis g8 cis, e fis b, d
  %65
  | e8 fis16 e d cis fis8 b, d e ais,! cis
  | d16 cis b cis d e fis e dis e fis g a4.~
  | a16 b a b a b g a g a g a fis8 b4~
  | b16 e, fis g a b c8 fis, a b e, g
  | a8 b16 a g fis b8 e, g a dis,! fis
  %70
  | g4.~ g8 fis16 e d cis fis8 e16 d cis b
  | e4 cis8 fis4 d8 e4.~
  | e8 d cis b4 cis8 fis, b ais
  | b8 fis b d4.~ d16 d, fis b d cis
  | d16 gis, a b cis d e8 a, cis d gis, b
  %75
  | cis8 e, a c4.~ c16 c, e a c b
  | c16 fis, g a b c d8 g, b c fis, a
  | \stemNeutral b8 c16 b a g e'4.~ e8 fis16 e d cis
  | a'4.~ a8 b16 a g fis g8 a16 g fis e
  | fis8 g16 fis e d g8 a16 g fis e a8 g16 fis e d
  %80
  | \stemUp cis16 d cis b a g f'\rest g fis e d c f\rest e d c b a
  | d16\rest c b a g fis f'\rest fis e d cis b d\rest d cis b a g
  | b16\rest b a g fis e f'\rest e d cis b a d\rest c b a g fis
  | b16\rest a g fis e d d'\rest d cis b a g b\rest b a g fis e
  | fis16 a, b cis d e fis d e fis g a b4.~
  %85
  | b16 cis, d e fis gis a gis a b cis d e4.~
  | e16 fis, g a b cis d b cis d e fis g4.~
  | g16 a, b c d e fis e fis g a b c4.~
  | c16 d, e fis g a b8 a g~ g fis e
  | d8 cis! a'~ a g fis~ fis e d
  %90
  | c8 b g'~ g fis e~ e d cis
  | b8 a e'~ e d cis~ cis b a
  | g8 f f'~ f e d~ d c b
  | a8 gis b'~ b a gis~ gis fis e
  | d16 b cis d e cis a4. g!4\prall fis16 g
  %95
  | fis16 a b cis d b g4. fis4\prall e16 fis
  | e16 gis a b cis a fis4. e4\prall d16 e
  | d16 fis gis a b gis e4. d4\prall cis16 d
  | cis16 e d cis b a r a' g fis e d r b' a g fis e
  | fis16 a g fis e d r d' cis b a g r e' d cis b a
  %100
  | gis16 b a gis fis e r d' cis b a gis r fis' e d cis b
  | cis4 r8 \stemUp r16 cis d e fis g! a4.~
  | a8 g fis g8 c\rest c\rest g4.~
  | g8 fis e s2.
  | g,4.~ g8 e' g, fis16 g g8.\prall fis32 g
  %105
  | a4.~ a8 g4~ g8 fis4~
  | fis8 e g~ g fis4~ fis8 e4~
  | e8 d fis b,4. cis
  | d4 r8 c'16\rest g a g fis g~ g g a g fis g
  | fis4. g4. a4.
  %110
  | b8 c16 b a g f'e d f e d cis e d cis d e
  | a,8 a'4~ a8 g4~ g8 fis4~
  | fis8 b, e~ e a, d cis4\prall d8
  | d1*9/8\fermata
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
    \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) Tie e8._~
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
  | a8. d16 cis b a8. cis16 b a gis4 a8
  | d,4. cis b
  | s1*9/8*4
  %38
  | \stemUp a'4 r8 \override Stem.details.beamed-lengths = #'(4.5)
    \once\override NoteColumn.force-hshift = #0.4 e fis g
    \revert Stem.details.beamed-lengths
    \once\override NoteColumn.force-hshift = #0.4 e fis g
  | fis4 e8\rest \stemDown g4 e8\rest fis4 e8\rest
  %40
  | e4 b8\rest fis'4 c8\rest e4 e8\rest
  | d4 e8\rest s2.
  | s1*9/8*4
  %46
  | s4. gis ais
  | b4 e,8\rest e4 e8\rest fis4 d8\rest
  | g4 g8\rest cis4 g8\rest fis4 g8\rest
  | s1*9/8*8
  %57
  | s2. \stemUp c'16 a g fis e d
  | s1*9/8*4
  %62
  | \stemDown s4. s4 cis8~ cis4.~
  | cis8 cis cis b b b <ais cis>4.~
  | <ais cis>16 s s4 a8\rest cis4 a8\rest b4~
  %65
  | b8 ais4~ ais8 b4~ b8 ais4
  | b8 e,\rest e\rest e\rest e\rest fis'~ fis4.~
  | fis8 fis fis e e e \once\override NoteColumn.force-hshift = #0 <dis fis>4.~
  | \once\override NoteColumn.force-hshift = #1 <dis fis>16 s s4
    e8\rest \once\override NoteColumn.force-hshift = #0 fis4~
    fis8 \once\override NoteColumn.force-hshift = #0 e4~
  | e8
    \shape #'((0.6 . 0.6) (0 . 0.6) (0 . 0.6) (0 . 0.6)) Tie dis4~
    dis8 \once\override NoteColumn.force-hshift = #0
    \shape #'((0.4 . 0.8) (0 . 0.8) (0 . 0.8) (0 . 0.8)) Tie e4~
    e8 \once\override NoteColumn.force-hshift = #0 dis4
  %70
  | r8 \override Stem.details.beamed-lengths = #'(2.5) e cis
    \revert Stem.details.beamed-lengths
    ais4.~ ais8 b4~
  | b8 ais cis~ cis b4~ b8 ais cis
  | fis,4.~ fis8 e4 d4 cis8
  | d4 c8\rest s2.
  | s1*9/8*17
  %91
  | \staffLower\stemUp s2. cis4 d8\rest
  | d4 d8\rest d4.\rest <d fis>4 d8\rest
  | <d f>4 d8\rest d4.\rest <d gis>4 d8\rest
  | <e a>4 d8\rest s2.
  | s1*9/8*6
  %101
  | \staffUpper\stemDown s2. a''16 g fis e dis cis
  | b4. r16 b cis d e fis g fis e d cis b
  | a4. \stemUp fis'16 fis, g a b cis d cis b a g fis~
  | \stemDown fis4. e d8 e4~
  %105
  | e8. g16 fis e d8. fis16 e d cis4 a8
  | b4. cis8. e16 d cis \staffLower\stemUp\tieUp b8. d16 cis b
  | a4.~ a16 g a g fis \tieDown g~ g g a g fis g~
  | g fis gis ais b cis \staffUpper\stemDown d4. e~
  | e8 cis d~ d cis d~ d cis d~
  %110
  | d4 c8\rest s2.
  | s8 r16 g'' fis e d8. fis16 e d cis4 d8
  | g,4. fis <e a>
  | <fis a>1*9/8
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
  | \staffUpper\stemDown fis'4 d8\rest \once\override NoteColumn.force-hshift = #0.4 e4.
    \once\override NoteColumn.force-hshift = #0.4 e
  | d4 s8 s2.
  %40
  | \staffLower\stemUp cis4 c8\rest s2.
  | s1*9/8
  | d4 d8\rest d4.\rest d4 d8\rest
  | cis4 d8\rest d4.\rest cis4 d8\rest
  | b4 d8\rest d4.\rest b4 b8\rest
  %45
  | a4 cis8 a4 d8 g,4 cis8
  | d4 d8\rest s2.
  | s1*9/8*8
  %55
  | \staffUpper e'16[ d c b a g fis e dis cis \staffLower b a g fis e d cis! b]
  | \staffUpper\stemDown\tieDown r8 a''16 b cis d e fis e d cis b a4.~
  | a8 e\rest e\rest s2.
  | \staffLower\stemUp s1*9/8*5
  %63
  | s4. \mergeDifferentlyHeadedOff fis,8 b d e ais, cis
  | d e16 d cis b e8 ais, cis d gis, b
  %65
  | cis d e d16 e d e d e cis d cis d cis d
  | b4. s2.
  | s4. \staffUpper\stemDown d8\rest e g \once\override NoteColumn.force-hshift = #0.4 a dis, fis
  | g8 a16 g fis e a8 dis, fis g cis, e
  | g8 a16 g fis e
    \once\override NoteColumn.force-hshift = #0.3 g
    a
    \once\override NoteColumn.force-hshift = #0.3 g
    a g a fis g
    \once\override NoteColumn.force-hshift = #0.3 fis
    g fis g
  %70
  | e8 b\rest b\rest s2.
  | \staffLower\stemUp\tieUp s1*9/8*2
  | s2. b4.~
  | b8 fis16 gis a b cis4 c8\rest <gis b>4 c8\rest
  | <e, a>4 r8 s4. a4.~
  %75
  | a8 e16 fis g a b4 a8\rest <fis a>4 a8\rest
  | <d, g>4 e8\rest s2.
  | s4. b8 d fis cis e a
  | d, a' c s2.
  | s1*9/8*8
  %88
  | s2. b4 c8\rest
  | a4 a8\rest a4.\rest a4 a8\rest
  %90
  | g4 b8\rest b4.\rest g4 b8\rest
  | g4 b8\rest b4.\rest \stemDown a4 f8\rest
  | a4 f8\rest f4.\rest a4 f8\rest
  | b4 f8\rest f4.\rest b4 f8\rest
  | a4 f8\rest s4. \stemUp e'4.
  %95
  | d4 d8\rest s4. d4.
  | cis4 d8\rest s4. cis4.
  | b4 d8\rest s2.
  | a4 c8\rest c4.\rest cis4 c8\rest
  | d4 c8\rest c4.\rest <d fis>4 c8\rest
  %100
  | <b d>4 c8\rest c4.\rest <b e>4 c8\rest
  | s1*9/8*9
  %110
  | s4. d8\rest bes d e a, cis
  | d s4 s2.
  | s1*9/8
  | d,1*9/8
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
  | \staffLower s4.*3
  | << \once\stemDown d,,4 \\ \once\stemUp a' >> r8 r4. r
  %40
  | d,4 r8 r4. r
  | \stemUp r16 d,[ e fis g a b cis d e fis g a b c \staffUpper d e fis]
  | \staffLower\stemDown b,4 b,8\rest b4 b8\rest b'4 b,8\rest
  | b'4 d,8\rest a4 d8\rest a'4 d,8\rest
  | a'4 d,8\rest g,4 d'8\rest g4 d8\rest
  %45
  | g4 d8\rest fis4 d8\rest e4 d8\rest
  | d4 r8 r4. cis'4 r8
  | b 4 r8 r4. a4 r8
  | g4 r8 r4. s4.
  | \staffUpper e'8 \staffLower g, b c fis, a b e, g
  %50
  | a8 b16 a g fis b8 e, g a dis, fis
  | \stemNeutral g16 fis e dis e g a, fis' e dis e g g, fis' e dis e g
  | c,16 fis a4~ a8 g16 fis e d! c! dis fis4~
  | fis8 r16 e fis g a b a g fis e dis b cis dis e fis
  | g16 e fis g a b c d c b c a b4 b,8
  %55
  | e,4 r8 s2.
  | a8 cis e a e a cis8 d16 cis b a
  | d8 a d \staffUpper\stemDown fis d fis \once\override NoteColumn.force-hshift = #0 a b16 a g fis
  | g8 a16 g fis e fis8 g16 fis e d e8 fis16 e d cis
  | d8 e16 d cis b e8 fis16 e d cis d8 e16 d cis b
  %60
  | cis8 d16 cis b ais d8 e16 d cis b cis8 d16 cis b ais
  | \staffLower\stemNeutral b8 fis a! g fis e d fis e
  | fis4.~ fis8 e16 d cis b ais b cis b ais gis
  | fis8 ais cis \stemDown\tieDown fis2.~
  | fis2.~ fis4.~
  %65
  | fis2.~ fis4.
  | \tieNeutral b4.~ b8 a!16 g fis e dis e fis e dis cis
  | b8 dis fis b2.~
  | b2.~ b4.~
  | b2.~ b4.~
  %70
  | \stemNeutral b16 e, g b e d e8 ais, cis d gis, b
  | cis8 d16 cis b ais d8 gis, b cis fis, ais
  | b16 b, cis d e fis g a g fis g e fis4 fis,8
  | b4.~ \stemUp b16 b d fis b ais \stemDown\tieDown b,8\rest d b
  | e4 b8\rest b4.\rest e4 b8\rest
  %75
  | a4.~ \stemUp a16 a c e a g! \stemDown b,8\rest c! a
  | d4 b8\rest b4.\rest d4 b8\rest
  | g4.~ \stemUp g16 a b cis! d e fis,4.~
  | fis16 d e fis g a \stemDown b4. cis
  | d4. b'8 a g fis a g
  %80
  | a4 r8 \staffUpper fis'4 c8\rest d4 c8\rest
  | \staffLower g4 r8 \staffUpper e'4 c8\rest cis4 c8\rest
  | \staffLower fis,4 r8 \staffUpper d'4 c8\rest b4 c8\rest
  | \staffLower e,4 r8 cis'4 r8 a4 r8
  | \stemNeutral\tieNeutral d,4.~ d16 e d c b a g a g fis e d
  %85
  | cis4.~ cis16 d' cis b a g! fis g fis e d cis
  | b4.~ b16 cis' b a g fis e fis e d cis b
  | a4.~ a16 b' a g fis e d e d c b a
  | g16 b c d e fis g4 r8 \stemDown g'4 r8
  | g4 b,8\rest fis4 b8\rest fis'4 b,8\rest
  %90
  | fis'4 b,8\rest e4 b8\rest d4 b8\rest
  | cis4 b8\rest a4 g8\rest \once\override Voice.Rest.X-offset = #0.4 g4.\rest
  | \once\override Voice.Rest.X-offset = #0.4 g4.\rest
    a4 g8\rest \once\override Voice.Rest.X-offset = #0.4 g4.\rest
  | \once\override Voice.Rest.X-offset = #0.4 g4.\rest
    a4 g8\rest \once\override Voice.Rest.X-offset = #0.4 g4.\rest
  | \once\override Voice.Rest.X-offset = #0.4 g4.\rest
    \stemUp d'16\rest a cis e a cis \stemDown\tieDown e8 d cis~
  %95
  | cis4 d,8\rest \stemUp d16\rest a d fis a cis \stemDown d8 cis b~
  | b4 d,8\rest \stemUp d16\rest a cis e a b \stemDown cis8 b a~
  | a4 d,8\rest \stemUp d16\rest a b d e gis \stemDown b8 a gis
  | a4 b,8\rest a4 b8\rest a'4 b,8\rest
  | a'4 b,8\rest a4 b8\rest a'4 b,8\rest
  %100
  | a'4 b,8\rest a4 b8\rest gis'4 b,8\rest
  | a'8 b16 cis d e fis4 r8 e4 r8
  | dis8 e16 dis cis b e4 r8 d4 r8
  | cis8 d16 cis b a d4 r8 cis4 r8
  | b8 cis16 b a b cis8 d16 cis b cis d8 cis16 b a g
  %105
  | \stemNeutral fis8 fis, a b e, g a d, fis
  | g8 a16 g fis e a8 d, fis g cis, e
  | \stemDown fis8 g16 fis e d g8 g, g' a a, a'
  | b8 fis d \stemNeutral b b' b, cis cis' cis,
  | d8 e16 d cis d e8 fis16 e d e fis8 g16 fis e fis
  %110
  | g8 b d \stemDown g2.~
  | g8 fis a b e, g a d, fis
  | \stemNeutral b,8 d cis d fis, g a g a
  | d,1*9/8\fermata
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
