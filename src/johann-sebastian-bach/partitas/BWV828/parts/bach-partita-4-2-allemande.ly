Global = {
  \key d \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \omit TupletBracket
  \repeat volta 2 {
  \partial 8 fis8
  %1
  | <a, d fis>2~ fis'16 e fis a g fis e d
  | d16 a'8.~ a16 g fis e fis a b c~ c a g fis_~
  | \stemNeutral fis16 c' b a b g e'8~ e16 d cis b a g32 fis g16 e'
  | \stemUp g,4 fis_~\prall fis16 a b cis d cis b a
  %5
  | a8 fis'4.^~ fis16 g fis e \stemNeutral\tieNeutral fis d ais8~
  | ais16 cis b ais ais16 b8.~ b16 d cis b cis d e fis
  | \tuplet 3/2 { g16 fis e } b'8~ b16 a g fis \tuplet 3/2 { g16 fis e } g8~ g16 fis e d!
  | \tuplet 3/2 { e16 d cis } e8~ e16 d cis b \tuplet 3/2 { cis16 b ais } fis'8~ fis16 e d cis
  | d16 b ais b b d8.~ d16 e32 fis e16 d d16 e32 fis e16 d
  %10
  | d16 gis32 a b8~ b16 a gis fis \tuplet 3/2 { e16 d cis } d8~
    \set subdivideBeams = ##t
    \tupletSpan 8 \tuplet 3/2 { d16 cis b fis' e d }
    \set subdivideBeams = ##f
  | cis16 a gis a a cis8.~ cis16 d32 e d16 cis cis16 d32 e d16 cis
  | c16 fis32 gis a8~ a16 gis fis e \tuplet 3/2 { dis16 cis b } c8~
    \set subdivideBeams = ##t
    \tuplet 3/2 { c16 b a c b a }
    \set subdivideBeams = ##f
  | a16 gis8.~ gis8~ gis32 dis'32 e fis  e16 dis dis e e gis a c
  | \set subdivideBeams = ##t
    e,32 f g! f e f e d~
    \set subdivideBeams = ##f
    d8~ d32 cis d e d16 cis cis d d e gis b
  %15
  | d,32 e f e d e d c~ c8~ c32 b c d c16 b b c c fis32 gis a16 c,~
  | \stemUp\tieUp
    \set subdivideBeams = ##t
    \tupletSpan 8 \tuplet 3/2 { c b a b a gis f'e d e d c a' gis fis gis fis e c' b a b a gis~ }
    \set subdivideBeams = ##f
  | gis8 a32 gis fis e dis16 a' a,8~ a16 b cis8~ cis16 d32 e d cis b16
  | a2~ a4~ a16 fis g8~
  | \stemNeutral\tieNeutral
    g32 e fis g fis16 d~ d d32 e fis gis a16~ a32 fis gis a gis16 e~ e e32 fis gis a b16~
  %20
  | b32 gis a b a16 fis~ fis fis32 gis a b cis16~ cis32 a b cis b16 gis~ gis gis32 a b cis d16~
  | \set subdivideBeams = ##t
    \tuplet 3/2 { d cis b cis b a d c b c b a }
    \set subdivideBeams = ##f
    c16 dis,8 e16~
    \set subdivideBeams = ##t
    \tuplet 3/2 { e16 a b c b a }
    \set subdivideBeams = ##f
  | f'16 gis,8 a16~
    \set subdivideBeams = ##t
    \tuplet 3/2 { a16 d e f e d gis d e f e d a' d, e f e d }
    \set subdivideBeams = ##f
  | b'32 f e d e16 b c gis a dis,~
    \set subdivideBeams = ##t
    dis32 e fis! gis a b cis d~
    \set subdivideBeams = ##f
    d16 b gis a
  | \tieUp a4~ a16 gis8 a16~ a4.
  }
  \pageBreak
  \repeat volta 2 {
  \partial 8 \stemUp e'8
  %25
  | e2~ \stemNeutral\tieNeutral e16 e fis g fis e d cis
  | a'4~\arpeggio a16 g fis e d b cis e~ e d cis b~
  | b16 a cis d~ d cis32 b fis'16 g~ g e32 fis g a b16~ b32 a g fis g16 e
  | e4 fis4~\mordent fis16 fis fis32\prall e fis16 a b, c8~
  | c16 c c32\prall b c16 fis gis, a8~ a16 b32 cis dis e fis16~ fis dis32 e fis g! a16~
  %30
  | a16 fis g8~\mordent g16 fis32 g a g fis16 g32 fis e16 b' a~ a g32 fis e16 dis
  | e32 dis cis b a'16 g~ g fis32 e d16 cis
    \set subdivideBeams = ##t
    \tuplet 3/2 { d16 cis b } g'16 fis~
    \set subdivideBeams = ##f
    fis e32 d cis d e16
  | b8 ais~ \tupletSpan 8 ais8~ ais32 eis' fis gis fis16 eis eis fis fis ais ais b
  | \set subdivideBeams = ##t
    fis32 g! a! g fis g fis e~
    \set subdivideBeams = ##f
    e8~ e32 dis e fis e16 dis dis e e ais ais b
  | \set subdivideBeams = ##t
    e,32 fis g fis e fis e d!~
    \set subdivideBeams = ##f
    d8~ d32 cis d e d16 cis cis d d gis32 ais b16 d,~
  %35
  | \set subdivideBeams = ##t
    \tupletSpan 8 \tuplet 3/2 { d16 cis b cis b ais }
    ais16 g'8.~ \tuplet 3/2 { g16 fis e fis e dis } dis16 c'8.~
  | c32 a b c b8~ \tuplet 3/2 { b16 a g a g fis } g32 fis e dis e8~ \tuplet 3/2 { e16 d c d c b }
  | c16 g8 a32 b \tuplet 3/2 { c16 d e f e d } c16 g8 a32 b \tuplet 3/2 { c16 d e f e d }
    \set subdivideBeams = ##f
  | cis!16 ais8 fis'32 e fis16 b~ b32 fis e d e16 cis8 e32 d e16 ais~ ais32 e d cis
  | d16 b8 b'32 a g16 g32 fis e16 e32 d cis g' fis e fis16 b, d8 cis16.\prall b32
  %40
  | \stemUp\tieUp b2 s4 r16 d, fis g
  | a4 s a16 fis d e fis g a b
  | c32 b a16 b8~ b4~ b16 a b c \stemNeutral\tieNeutral b a b dis~
  | dis16 e a, dis~ dis e g, dis'~ dis e fis, e'~ e dis32 e fis16 a,~
  | \set subdivideBeams = ##t
    \tuplet 3/2 { a16 fis g a g fis }
    \set subdivideBeams = ##f
    fis16 g8.~ g16 a32 b a16 g g a32 b a16 g
  %45
  | g16 cis32 d e8~ e16 d cis b a g32 fis g8~
    \set subdivideBeams = ##t
    \tuplet 3/2 { g16 fis e b' a g }
    \set subdivideBeams = ##f
  | fis16 d cis d d fis8.~ fis16 g32 a g16 fis fis g32 a g16 fis
  | f16 b32 cis d8~ d16 cis b a \tuplet 3/2 { gis16 fis e } f8~
    \set subdivideBeams = ##t
    \tuplet 3/2 { f16 e d f e d
  | cis16 b a } g'8~ \tuplet 3/2 { g16 f e f e d e d cis } bes'8~ \tuplet 3/2 { bes16 a g a g f
  | g f e } d'8~ \tuplet 3/2 { d16 cis b cis b a g' fis! e fis e d }
    \set subdivideBeams = ##f
    a'16 c,8.~
  %50
  | \stemUp\tieDown c32 a b c b16 g~ g g32 a b cis d16~ d32 b cis d cis16 a~ a a32 b cis d e16~
  | e32 cis d e d16 b~ b16 b32 cis d e fis16~ fis32 d e fis e16 cis~ cis cis32 d e fis g16~
  | \set subdivideBeams = ##t
    \tuplet 3/2 { g16 fis e fis e d g f e f e d } f16 gis,8 a16~ \tuplet 3/2 { a16 d e f e d }
  | bes'16 cis,8 d16~ \tuplet 3/2 { d16 g, a bes a g cis g a bes a g d' g, a bes a g }
    \set subdivideBeams = ##f
  | e'32 bes a g a16 e f cis d gis,~
    \set subdivideBeams = ##t
    gis32 a b! cis d e fis g~ \tuplet 3/2 { g16 fis e fis e d }
    \set subdivideBeams = ##f
  %55
  | d32 fis e d c'8~ c16 b32 a b16 e~
    \set subdivideBeams = ##t
    e32 d cis b a d gis,16~
    \stemUp\tieUp \tuplet 3/2 { gis16 a d, g fis e }
    \set subdivideBeams = ##f
  | d4~ d16 cis8 d16~ d4.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 s8
  %1
  | s1
  | d2 s
  | s1*2
  | a'2 s
  | s1*8
  %14
  | \staffLower\stemUp\tieUp
    s2 f8\rest b,4.~
  | b8 s4. s2
  | f'8\rest d4 c8
    \once\override NoteColumn.force-hshift = #-1
    b[ e dis d~]
  %17
  | d b c e16 dis \staffUpper\stemDown a'4 gis
  | s2. e4
  | s1*4
  %23
  | s4 \staffLower\stemUp e8\rest c b a b \staffUpper\stemDown d~
  | d8~ d32 fis e d e4 d8 cis4
  }
  \partial 8 s8
  | <a' cis>2 s
  | <cis e>4\arpeggio s2.
  | s1*13
  %40
  | \stemUp d,16\rest e fis cis d2 s4
  | s1
  | \stemDown\tieDown e8\rest e16\rest fis g d b8 s2
  | s1*12
  %55
  | s2. s8 cis
  | d8~ d32 b a g a4 g8 fis4
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \mergeDifferentlyHeadedOn
  \repeat volta 2 {
  \partial 8 s8
  %1
  | d4\rest a d2~
  | d4 a d2~
  | d2. cis4
  | s1
  %5
  | b'8\rest fis a cis d a d fis~
  | fis8 b, d fis g f\rest e4\rest
  | c8\rest g b dis e8 b e g~
  | g8 cis, e g fis2~
  %10
  | fis8 d fis a gis4 f8\rest fis~
  | fis8 e16 d e4 d8\rest a d8\rest b
  | e8\rest cis e g! fis4 e8\rest e
  | dis8 c16 b c8 a~ a a4 fis8
  %15
  | e4 c'8\rest gis a c a fis
  | gis8 b fis a gis4 \shiftOn gis~
  | gis8 gis a c a2~
  | \stemDown \once\override NoteColumn.force-hshift = #1.2 a8 gis \stemUp a4
    \once\stemDown \once\override NoteColumn.force-hshift = #-1 b8 s s4
  %20
  | s2 e4 b8 e~
  | e16 a, cis e d4 c16\rest e, a cis e4
  | c8\rest a b4~ b8 b cis4~
  | cis8 cis d4~ d8 d e4~
  %25
  | e8 e4 e8 d8\rest a4 a8
  | c8\rest b e, a f\rest d4 d8~
  | d4 s2.
  | a'8 a, cis e a4.
  }
  \repeat volta 2 {
  \partial 8 s8
  %25
  | f4\rest cis e a
  | e'4\rest cis e2~
  | e4 d2 cis4
  | d8 g\rest f4\rest c4\rest c8\rest fis,
  | a8 fis a c~ c fis, b4~
  %30
  | b8 b cis dis e2~
  | e4 cis8 fis~ fis d b e~
  | e8 cis ais cis d cis b gis
  | ais8 cis gis b ais4 ais~
  | ais8 ais b d b2
  %35
  | ais8 d\rest d\rest ais b g'\rest g\rest dis
  | e8 e\rest e\rest dis e e\rest e4\rest
  | s1*3
  %40
  | \stemNeutral s4 c16\rest ais b fis d b d fis b4
  | s1
  | \stemUp\tieUp f4\rest f8\rest f16\rest d g2~
  | g8 a4 b c dis,8
  | e4. b8 e2~
  %45
  | e8 a16 g a4 a8\rest d, a'8\rest e
  | a8\rest fis a c b4 a8\rest a
  | gis8 f16 e f8 d~ d d4 b8
  | f'8\rest b, cis d f\rest cis d f
  | f8\rest e g a f8\rest c d fis
  %50
  | d'8\rest d e4~ e8 e fis4~
  | fis8 fis g4~ g8 g a4~
  | a8 a4 a8 f\rest d4 d8
  | e8\rest e a, d c8\rest g4 g8
  | a8\rest e a\rest f~ f e16 d cis4
  %55
  | d8\rest d4 g fis e8
  | fis8 d, fis a d4.
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \mergeDifferentlyDottedOn
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | d,2. e4
  | fis2. d4
  | g4 e a2
  | \stemNeutral\tieNeutral d8 cis16 b a d fis, a d,4~ d16 a' b cis
  %5
  | \stemDown\tieDown d2~ d4 r
  | g2~ g8 a! g fis
  | e2~ e4 r4
  | ais2~ ais8 cis ais fis
  | b2~ b8 b a!4
  %10
  | gis4. e8 fis4 gis
  | a2~ a8 a g!4
  | fis4 e fis dis
  | g,8\rest e e'4~ e2~
  | e2~ e4. e8
  %15
  | f4~ f~ f8 f e dis
  | \shape #'((0 . -1) (0 . -1.3) (0 . -1.3) (0 . -1)) Tie e2~ e
  | f4 fis r8 e4.
  | fis4~ fis16 fis e d cis4~ cis8. a16
  | d4. dis8 e4. eis8
  %20
  | fis4. fis8 gis4. gis8
  | a4 g fis e
  | d4 c b a
  %25
  | gis8 gis' a4 e2
  | s8 a,4.~ a
  }
  \repeat volta 2 {
  \partial 8 r8
  | a2. a'4
  | g2. g4
  | fis4 b e, a
  | d8 cis16 b a d fis, a d,8 a d4~
  | d2 dis4. b8
  %30
  | e2~ e8 g fis a
  | g8 b ais4 b g
  | fis2~ fis~
  | fis2~ fis4. fis8
  | g2~ g8 g fis eis
  %35
  | fis8 g fis e! dis c' b a
  | g8 a g fis e g, a b
  | \stemNeutral\tieNeutral e, e' c g e e' c g
  | e8 e' d g cis, b cis fis
  | b,8 d e fis g e fis fis,
  %40
  | b2 s
  | r16 fis a d fis a \staffUpper d fis \staffLower r4 d,,
  | \stemDown\tieDown g2. g4
  | c4 b a b
  | e8 b e,4. cis'8 d b
  %45
  | cis4. a8 b4 cis
  | d2~ d8 d c4
  | b4 a b gis
  | a2 a
  | a2 a
  %50
  | g'4. gis8 a4. ais8
  | b4. b8 cis4. cis8
  | d4 c b a
  | g4 f e d
  | cis4 d a4. g8
  %55
  | fis4 g8 e' cis d a4
  | d8 d,4.~ d4.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    title = \markup { "Allemande" }
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
