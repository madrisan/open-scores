Global = {
  \key e \minor
  \time 8/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemNeutral\tieUp
  \tempo \markup { \bold "(Furioso)" }
  \repeat volta 2
  {
  %1
  | R1*8/4
  | R1*8/4
  | r4 r8 b^. cis4.^- ais8 g'4. e8 fis4. dis8
  | c'!4. ais8 b4. e,8 d!4 r cis2\prallprall
  %5
  | b8[ cis] d4~ d8[ f,!] d'4~ d8[ b] c!4~ c8[ ees,] c'4~
  | c8[ a] b4~ b8[ fis'] g4~ g8[ g,] a4~ a8[ e'] fis4~
  | fis8[ fis, g c!~] \stemUp c[ a] b4~ b8[ gis]
    \once\shape #'((0 . 1) (0 . 1.5) (0 . 1.5) (0 . 1)) Tie
    a4~ a8[ d,!] d'4~
  | d8[ b] c4~ c8[ a]
    \once\shape #'((0 . 2) (0 . 2.5) (0 . 2) (0.4 . 1.5)) Tie
    b4~ \once\override NoteColumn.force-hshift = #0 b8[ e,]
    e'4~ e8[ cis] dis4
  | e4. g8 fis4. b8 e,4. a8 cis,4. g'!8
  %10
  | fis4. 8 e4. a8 d,4. g8 b,4. f'8
  | e16[( d c d)] e4 a, d g, c fis, b
  | e,4 a~ a8 d, g4~ g8[( fis16 e)] \stemNeutral\slurNeutral c'!4~ c8[( b16 ais)] e'4~
  | e8[( d16 cis)] d8[( cis16 b)] cis8[( d16 e) d8( cis16 b)] ais8[( gis16 fis)] g'!4~ g8 e fis4~
  | fis8 dis e4~ e8 a, a'4~ \stemUp a8 fis g4~ g8 e fis4~
  %15
  | \stemNeutral fis8 b, b'4~ b8 gis ais4\prallprall b \stemUp g e fis
  | dis4 e~ e8 a gis4 a fis d e
  | cis4 d~ d8 g fis4 g8 d g4~ g8 e fis4~
  | fis8 dis e4~ e8 cis dis4 e8^-[ fis16 g a b c!8] \stemDown d,8^-[ e16 f g a b8]
  | c,8^-[ d16 e f g a8] b,8^-[ c16 d e f! d8] \stemUp c4. b8 c4. c8
  %20
  | b4 f'\rest a,4. fis8 e4.c'8 d!4. b8
  | gis'4 g\rest a4. d,8 e8[ d!16 c b a g8] g'8\rest a,16[ b c! b a8]
  | g4 g~ g g~ g fis~ fis f~
  | f4 e~ e e~ e dis~ dis g
  | d'4\rest a d\rest ais r8 b16[ fis dis8( b16 ais)] b8 dis16 fis_. \stemDown b4^-
  }
  \pageBreak
  \repeat volta 2
  {
  %25
  | R1*8/4
  | R1*8/4
  | \override MultiMeasureRest.staff-position = #2
    R1*8/4
  | \clef bass s1*8/4
  | R1*8/4
  %30
  | R1*8/4
  | \stemUp f'4\rest f8\rest b,^. a4.^- c8 dis,4. fis8 e4. g8
  | \once\override NoteColumn.force-hshift = #1.5 ais,4. c!8 b4. dis8 e4 r fis2\prallprall
  | g8[ e] e'4~ e8[ cis] d!4~ d16[ c b8 c16 b a8] a'16[ g! fis8 g16 fis e8]
  | fis[ a,] d4~ 8 b c!4~ c16[ b a8 b16 a g8] g'16[ f! e8 f16 e d8]
  %35
  | e4. 8^. f!4.^- d8 e4. c8 d4. b8
  | c4. a8 b4. gis8 a4. b8 c4 cis
  | d e d e fis4. b8^. \stemDown a4.^- c!8
  | \stemNeutral dis,4. fis8 e4. g8 ais,4. c!8 b4. dis8
  | e4 r fis2\prall\prall \stemUp g2~ g8[ d^.] f!4~^-
  %40
  | f8[ f! e d] c2~ 8[ c b a] gis[ b^.] d4~^-
  | d8[ b c a'] d,[ a' b,^. gis'^.] a[ dis,^.] e4~^- 8[ dis] e4~
  | e16[ dis cis8 dis16 cis b8] b'16[ a g8 a16 g fis8] g4. 8 cis,4. d!8
  | e4 g\rest s2 b4\rest e8\rest e, c'4.^- a!8
  | b4. g8 a4. fis8 g2~^- g8[ fis16 e fis g a8]
  %45
  | s1 s2 g,8[ b] e4~^-
  | e8[ g, fis e] dis[ fis^.] a4~^- a8[ fis g e'] a,[ e' a,^. dis^.]
  | e[ c b a] g b4.^( b4) bes~ \once\override NoteColumn.force-hshift = #0 bes8[ g] cis4~
  | cis8[ bes a g] f!8 a4.~ a4 aes~ 8[ f] b!4~
  | \stemNeutral b8[ gis a e] fis4. dis8 c'4. a8 b4. gis8
  %50
  | f'!4. dis8 e4. a,8 g!4 c\rest fis,2\parenthesize\prallprall
  | \stemUp e4 <f! gis>~ q <gis b>~ q <e a>~ q <b' d>~
  | <g b d> <a c>~ q <c! dis> r8 e16[ b gis8( e16 dis)] e16[ gis b8^.] e4^-
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*8/4*6
  %7
  | s2 dis4. fis8 e4. c'8 f,!4 s8 b8
  | gis4. a16[ fis] g!4. dis'8
    \once\override NoteColumn.force-hshift = #1.2 e4.
    c8 a4. b8
  | g4 b a b gis a~ a8 e' a,4~
  %10
  | a4 b g a fis g~ g8 d' g,4~
  | g4. e8 fis!4. d8 e4. c8 d4. b8
  | c4. a8 b4. \bottom g8 a4. fis8 g4. e8
  | fis2 g4 gis fis b8\rest b^. cis4.^- ais8
  | g'4. e8 fis4. dis8 \top c'!4. ais8 b4. \bottom e,8
  %15
  | d!4 d\rest cis2^\prallprall b4 \top g'8\rest d'_. cis4._- fis,8
  | b4. d!8 gis,4 g8\rest d'8_. cis4._- 8 b4. e,8
  | a4. c!8 fis,4 r8 c'8_. b4._- 8 c4. a8
  | b4. g8 a4. fis8 g4 \bottom g8\rest e^. f!4.^- d8
  | e4. c8 d4 b a8[ \top e'] a4~ a8 e a4~
  %20
  | a8[ g16 fis g fis e8] fis4. dis8 \once\override NoteColumn.force-hshift = #1.2 c'4. a8 b4. gis8
  | f'!4. dis8 e4. a,8 g!4 d\rest  fis2~
  | fis8 dis e4~ 8 bes e4~ 8 cis d!4~ d8 aes d4~
  | d8 b c4~ 8 fis, c'4~ 8 ais b4~ 8 8 e4_-
  | d8\rest b_. fis'4_- d8\rest cis_. g'!4_- s1
  %25
  | s1*8/4*2
  | f4\rest f8\rest fis_. e4._- g8 ais,4. cis8 b4. d8
  | eis,4. g!8 fis4. ais8 b4 r cis2_\prallprall
  | \clef treble
    d8[ g fis e] d[ fis_.] b,4~_- b8[ gis] f'!4~ f8[ d] gis4~
  %30
  | gis8[ f! e d] c[ e_.] a,4~_- a8[ fis] ees'4~ ees8[ c fis c]
  | \tieUp b4 \bottom g4~g fis~ fis \top\tieDown b~ b g~
  | g fis4~ 4 f\rest f\rest b c \bottom b^~
  | b8 c\rest \top g'\rest b_. a4._- fis8 gis4 d\rest e2\rest
  | e4\rest e8\rest a_. g4._- e8 fis4 d\rest e2\rest
  %35
  | g8\rest g_. c4~_- 8[ a] b4~ b8[ gis] a4~ a8[ fis] g!4~
  | g8[ e] f!4~ f8[ d] e4~ e d8[ gis] a4. g!8
  | \tieUp fis4 b2 cis4 d8[ b \bottom a g] fis[ a^.] c!4~^-
  | c8[ c b a] g[ b^.] e,4~^- e8[ g fis e] dis[ fis^.] a!4~^-
  | a8[ fis g e'] a,[ e' b^. dis^.] e,[ \top e' d! c] \tieDown b2~
  %40
  | b~ b8[ e,_.] a4~_- a b,\rest b\rest e8\rest f!_.
  | e4_- \bottom a f! d e4. \top c'8 fis,4. g!8
  | a4 d,\rest e2\rest r8 ais_. b4~_- 8[ ais] b4~
  | b16[ ais gis8 ais16 gis fis8] fis'16[ e dis8 e16 dis cis8] dis![ b]
    \shape #'((-0.2 . -0.5) (0 . -1.5) (0 . -1) (0 . 0)) Tie
    g'!4~ g8[ e] fis4~
  | fis8[ dis] e4~ 8[ cis] dis4 e8[ d!16 c! b c d8] c2_-
  %45
  | dis8[ b' a g] fis[ a^.] c4^~^- c8[ c, b a] s2
  | s1*8/4
  | s2. e4~ \tieUp e~ \stemUp e~ \once\override NoteColumn.force-hshift = #1 e2_~
  | \stemDown \once\override NoteColumn.force-hshift = #0 e8
    c8\rest c4\rest a\rest s \stemUp \once\override NoteColumn.force-hshift = #0 d~ d~
    \once\override NoteColumn.force-hshift = #0.4 d2_~
  | \stemDown d4 c s1.
  %50
  | \tieDown s1 g'!4 e~ e8[ cis] dis4
  | e8 d4.~ 8 4.~ 8 c4.~ c8[ b_.] gis'!4_-
  | f!8 e4.~ 8 fis4.

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*8/4*6
  | e2 s1.
  | s1*8/4*37
  %45
  | \showStaffSwitch
    b4\rest b8\rest \clef treble b'^. a4.^- c8^. dis,4. fis8 e4. \top g8
  | \bottom ais,4. c!8 b4. \top dis8 e4 b\rest fis'2
    \hideStaffSwitch
  | \tieDown g2 b,4\rest s4. cis4._( \once\override NoteColumn.force-hshift = #0 8)
    \mergeDifferentlyDottedOn g'4.~
  | \once\omit Flag \once\override NoteColumn.force-hshift = #0 g8
    s s2 d4~ 8 b!4. s8 f'4.~
  | \once\override NoteColumn.force-hshift = #0 f4 s
    \bottom a,8\rest a^. b4~^- b8[ gis] a4~ a8[ d,!] \tieUp d'4~
  %50
  | d8[ b] c4~ c8[ a] b4~ b8[ e,^.]

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieUp
  %1
  \repeat volta 2
  {
  | \clef treble r4 r8 e'^. fis4.^- dis8  c'4. a8  b4. gis8
  | f'4. dis8  e4. a,8  g!4 r  fis!2^\prallprall
  | e8[ fis] g4~  g8[ e] fis4~ fis8[ dis] e4~ e8[ a,!] a'!4~
  | a8[ fis] g4~ g8[ e] fis4~ fis8[ b,] b'4~ b8[ gis] ais4
  %5
  | b4. a!8 gis4. e8 a4. g!8 fis4. d8
  | g4. fis8 e!4. cis8 fis4. e8 dis4. b8
  | g4\rest g8\rest \clef bass e^. fis4.^- dis8 c'4. a8 b4. gis8
  | f'!4. dis8 e4. a,8 g!4 r fis2^\prallprall
  | e8 e, e'4~ e8 cis d!4~ d16[ cis! b8 cis16 b a8] a'16[ g fis8 g16 fis e8]
  %10
  | d8 d, d'4~ d8 b c4~ c16[ b a8 b16 a g8] g'16[ f e8 f16 e d8]
  | \stemDown c8 g' c4~ c8 a b4~ b8 g a4~ a8 fis g4~
  | g8 e fis4 g4 e cis dis e cis
  | ais4 b e eis fis b,\rest ais' b,\rest
  | b'4 b,\rest g2\rest e'4 r d! r
  %15
  | g4. fis8 e4. fis8 b b, b'4~ b8 gis a!4~
  | a16[ gis fis8 gis16 fis e8] e'16[ d cis8 d16 cis b8] a8 a, a'4~ a8 fis g4~
  | g16[ fis e8 fis16 e d8] d'16[ c! b8 c16 b a8] g8 b e4 a, d
  | g,4 c fis, b e,8 b' c!4_~ c8 a b4_~
  | b8 gis a4_~ a8 fis! gis4 a8[( g16 fis) g8( fis16 e)] fis8[ g16 a g fis e8]
  %20
  | \stemNeutral\tieNeutral dis8_. b_. e4~^- e8 a, b4~ b8 gis a4~ a8 d,! d'4~
  | d8 b c4~ c8 a b4~ b8 e, e'4~ e8 cis dis4
  | e4. d'!8 cis4. a8 d,4. c'8 b!4. g8
  | c,4. b'8 a4. fis8 b,4. a'!8 g4. e8
  | dis4. b'8 g4. e8 b1_-
  }
  \repeat volta 2
  {
  %25
  | r4 r8 b'^. a4.^- c8 dis,4. fis8 e4. g8
  | ais,4. c!8 b4. dis8 e4 r fis2^\prallprall
  | g8[ c b a] g[ b^.] e,4~^- e8[ cis] d!4~ d8[ fis] b,4~
  | b8[ gis] ais4~ ais8[ cis] e!4~ e8[ cis! d b'^.] e,[ b' fis^. ais^.]
  | b2~^- b8[ a! gis fis] e4. d8^. c!4.(^\prall b8)
  %30
  | a4 a'~^- a8[ g! fis! e] d4. c8 b4.^\parenthesize\prall( a8)
  | \stemDown g8[ b e d] c[ e_.] a,4_~_- a8 fis g4~ \stemNeutral g8 b e,4~
  | e8 cis dis4~ dis8 fis a4~ a8[ fis g e'^.] \stemDown a,[ e' b^. dis^.]
  | e4. g8 fis4. b8 e,4. a8^. \stemUp cis,8[( e) a,_. cis_.]
  | \stemDown d4.^- fis8 e4. a8 d,4. g8^. \stemUp b,8[( d) g,^. b^.]
  %35
  | \stemNeutral\slurNeutral c8 e a4 d, g c, f! b, e
  | a,4 d~ d8 gis, c4~ c8[ b16 a] f'!4~ f8[ e16 dis] a'4~
  | a8[( g16 fis!) g8( fis16 e)] fis8[ g16 a g8 fis16 e] b'4 \clef treble a4\rest b2\rest
  | s1*8/4
  | a1\rest g4\rest r8 \clef bass e'^. d!4.^- f8
  %40
  | gis,4. b8 a4. c8 dis,4. f8 e4. gis8
  | a4 \clef treble \stemDown a\rest b2 c4. e8 \clef bass a,4. c8
  | fis,4.^- a8^. dis,8[( fis) b,^. dis^.] \stemNeutral e4.^- e,8 e'4. g8
  | cis,4._- e8^. ais,8[( cis) fis,-. ais-.] b^-[ cis!16 dis e fis g8] a,8_-[ b16 c d e fis8]
  | g,8_-[ a16 b c d e8] fis,8_-[ g16 a b a b8] e,4. e'8 a,4. c8
  %45
  | \stemDown b4 g\rest a'2\rest b4 a4\rest a2\rest
  | \clef bass b,4 b\rest b\rest r8 b'^. c4^- b a! b^.
  | \stemNeutral e,2~^- e8[ d! cis b] a4. g8_. f!4.(^\prall e8)
  | d4 d'~^- d8[ c! b! a] g4. f!8 e4.^\prall( d8)
  | c4 e\rest e\rest \stemDown g8\rest b_. e4_- g,\rest g\rest g8\rest e'_.
  %50
  | a4 b,\rest g'! b,\rest \stemDown c4. b8 \stemNeutral a4 b
  | e,4. b''8^. gis4.^- e8 c4. f8 d4. b8
  | gis4. e'8 c4. a8 e1_-
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
      \Sopran
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
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 830"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Gigue"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 60
  }
}
