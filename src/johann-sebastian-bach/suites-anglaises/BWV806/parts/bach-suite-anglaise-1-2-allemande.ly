Global = {
  \key a \major
  \time 4/4
  \include "../global.ly"
}

voiceFive  = #(context-spec-music (make-voice-props-set 4)  'Voice)
voiceSix  = #(context-spec-music (make-voice-props-set 5)  'Voice)

Soprano = \context Voice = "one" \relative c''' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \repeat volta 2 {
  \partial 16 a16
  %1
  | a4 b16\rest cis, e a~ a a gis fis gis b e, fis
  | g4.
    \once\override NoteColumn.force-hshift = #-0.2
    \once\override Stem.length = #8.5
    \once\stemDown
    fis8
    \once\override Tie.extra-offset = #'(0 . 2.4)
    e2~
  | e4. \once\stemUp d8~ d16 d cis b cis4
  | b~ b8. cis16 a cis fis, gis a4~
  %5
  | a16 a gis fis gis4~ gis8. gis16 a b b\downprall a32 b
  | \once\override Tie.extra-offset = #'(0 . 2.5)
    cis2~ cis8. cis16 d cis32 d e16 d32 e
  | fis4 ~ fis8. fis16 gis a gis a a8.\downprall gis32 a
  | b2~ b16 e, a8 r16 d, a' gis~
  | gis gis fis e fis a cis, dis e4 e8. fis16
  %10
  | \once\override Tie.extra-offset = #'(0 . 2)
    dis2~
    dis4 d8.\mordent e16
  | cis4 f\rest a,4*1/4 \autoBeamOff fis8.*1/3 dis8 \autoBeamOn gis8. gis16~
  | gis gis fis e fis a cis, dis e4 e8. fis16
  | dis4\prall b16 dis fis b~ b b ais gis ais cis fis, gis
  | a4~ a8 gis fis2~
  %15
  | fis4. e8~ e32 fis gis! a! gis fis gis a dis,8.\prallprall e16
  | e4~ e8. dis16 e4..
  }
  \break
  \repeat volta 2 {
  \partial 16 b'16
  | R1*15
  | r2 r4 r8 r16
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | \stemUp\tieUp s4 a \once\override Stem.length = #4 b2
  | c16\rest
    \once\override Tie.extra-offset = #'(0 . 0.4)
    e8.~
    e8 \shiftOn d_~ d16 d cis b
    \once\override Tie.extra-offset = #'(0 . -1)
    cis4~
  | cis~
    \once\override Stem.details.beamed-lengths = #'(4 4)
    cis16 a8 gis!16 a4
    \once\override Staff.TextScript.extra-offset = #'(-1.2 . -5.3)
    a^\markup { \musicglyph "scripts.mordent" }
  | fis4. \stemDown\tieDown e8~ e4~ e16 fis dis!8
  %5
  | e4 e~_\mordent e8. c16\rest s4
  | \once\override Voice.Rest.X-offset = #1.4
    b'16\rest
    \stemUp b a gis
    \once\override Tie.extra-offset = #'(0 . 0.8)
    a4~ a8. f16\rest s4
  | \once\override Voice.Rest.X-offset = #1.4
    d'16\rest \stemDown\tieDown e d cis d8. b16\rest e2~
  | e16 a gis fis e d cis b cis8. cis16 b4*1/4 d8.
  | cis2 s16
    \stemUp
    \once\shape #'((0.4 . -0.4) (0 . -0.4) (0 . -0.4) (-1 . -1.2)) Tie
    cis8.^~
    cis4
  %10
  | \once\override Voice.Rest.X-offset = #1.4
    b16\rest
    cis b ais
    \once\override Tie.extra-offset = #'(0 . 0.4)
    b4~
    b \stemDown b~
  | b16 b a gis a cis fis, gis a fis dis b b\rest b e8
  | cis2 s16 \once\stemUp cis8.~ cis4
  | s4 b4*1/4 \autoBeamOff dis8.*1/3 fis8 \autoBeamOn cis2
  | s16 \stemUp\tieUp
    \once\shape #'((0 . 0) (0 . -0.2) (0 . -0.5) (-0.6 . -1)) Tie
    fis8.~
    \shiftOff \omit Flag \once\omit Beam fis8 \tieDown e~
    \undo\omit Flag
    \stemDown e16 e dis cis dis4~
  %15
  | dis4~ dis16 b8 ais16 b2~
  | b16 b cis d cis8. c16 b4..
}

AltoTwo = \context Voice = "five" \relative c' {
  \voiceFive
  \partial 16 s16
  %1
  | \change Staff = "lower" \stemUp
    s16 a cis
    \change Staff = "upper" \stemDown\tieDown e~ e4 d2
  | e4*1/4_\parenthesize\mordent e'16 cis
    \once\override Tie.extra-offset = #'(0 . 0.8)
    a~
    \stemUp \once\override NoteColumn.force-hshift = #0.3 a a8.
    \stemDown a4~ a16 b e, fis
  | \stemUp \shiftOnn g4*1/4 e8. \stemDown fis8 f e4 e
  | dis s2.
  %5
  | s2. e4~
  | e2~ e8. s16 a4~
  | a2 s
  | s1
  | s2 s8
    \stemUp
    \once\shape #'((-0.4 . -0.8) (0 . -0.8) (0 . -0.8) (-1 . -0.8)) Tie
    ais8^~
    ais4
  %10
  | \stemDown
    \once \omit Stem
    \once\override NoteColumn.force-hshift = #0
    fis2~ fis4 s
  | s1
  | s2 e16 cis \change Staff = "lower" \stemUp ais fis~ fis4
  | s1
  | s8 \change Staff = "upper" dis'^~ \shiftOff \once\omit Flag dis8
}

TenorTwo = \context Voice = "six" \relative c' {
  \voiceSix
  \partial 16 s16
  | s1
  | s4 \change Staff = "upper" \stemDown fis8. gis16 s2
  | s4 s2.
  | \change Staff = "lower" \stemUp\tieUp a,4 s2.
  %5
  | s1*2
  | s2. \autoBeamOn b'16\rest e,8.~
  | e4. e8~ e4 s
  | s1
  %10
  | s2. s16 b e8~
  | e4 s2.
  | s1
  | s8 \stemDown\tieDown dis,~ \stemUp dis4 s2
  | \change Staff = "upper" \stemDown\tieDown a''16 fis dis b~ b b8. s2
  %15
  | \change Staff = "lower"
    \once\override Stem.length = #4
    \once\override NoteColumn.force-hshift = #0
    a4*1/4 fis8. s2.
   | s2 \stemUp \shiftOff gis4..*4/7 e8.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | \stemDown\tieUp s8 cis~ cis4 s2
  | \change Staff = "upper" \stemUp
    s8
    \once\override Tie.extra-offset = #'(-0.8 . -0.9)
    \autoBeamOff cis'~ \once\omit Flag \once\omit Stem cis s2 s8 \autoBeamOn
  | \stemDown \once\override NoteColumn.force-hshift = #1 g16 e cis8 s2.
  | \change Staff = "lower" \stemUp
    \autoBeamOff s16 fis,8.*1/3 dis8 \autoBeamOn f'16\rest b,8. \stemUp cis4~ cis8 b16 a
  %5
  | b4 b~ b8. b16\rest b\rest a8 gis16
  | a8\rest a16\rest e s4 g4*1/4 \autoBeamOff e8.*1/3 cis8 \autoBeamOn e'16\rest d8 cis16
  | a8\rest a16\rest a s4 d4*1/4 \autoBeamOff b8.*1/3 gis8 \autoBeamOn s4
  | \once\override Voice.Rest.X-offset = #2.4 c8\rest
    c16\rest a b4 s e~
  | e16 \change Staff = "upper" \stemDown\tieDown e fis gis a8. gis16 e'16 cis ais fis~ fis4~
  %10
  | fis2
    \change Staff = "lower" \stemUp
    a,4*1/4 \autoBeamOff fis8.*1/3 dis8 \autoBeamOn f'16\rest \once\stemDown b,8.
  | s4 c\rest c\rest e,^~
  | e16 e fis gis a8. gis16 \parenthesize fis4*1/2 \once\stemDown ais8^~ ais4
  | \stemUp\tieUp b,,16 b' dis fis~ fis4 e2
  | fis4 gis8. ais16 b4~ b16 cis fis, gis
  %15
  | a16 fis dis8 gis g fis e fis16 gis a!8~
  | a gis~ gis16 a fis8 e4*1/4 e,16 gis b~ \stemDown \once\omit Flag b8.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 16 r16
  %1
  | r a8. ~ a4~ a2~
  | a1~
  | a8. \stemNeutral\tieNeutral a16~ a4~ a~ a16 cis fis, gis
  | \stemDown\tieDown a fis dis b gis'4 fis2
  %5
  | e4~ e16 fis b, cis d b gis e cis'8 b
  | a4 a'16 b e, fis g e cis a fis'8 e
  | d4 d'16 fis b, cis d b gis e cis'8 b16 a
  | gis2 a8 cis16 a e'8 e,
  | a4. a8 \tieUp \once\stemUp \grace b8 ais4~ ais16 fis gis ais
  %10
  | b4~ b16 cis fis, gis a fis dis b gis'4
  | a8 gis fis e dis b e e,
  | a4. a8 \once\stemUp \grace b8 ais4_~ ais16 fis gis ais
  | \tieDown s16 b8.~ b4~ b2~
  | b2~ b~
  %15
  | b8. b16~ b4~ b2
  | e2 a,16\rest e8.~ e8.
  }
  \repeat volta 2 {
  \partial 16 r16
  | R1*15
  | r2 r4 r8 r16
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
      \AltoTwo
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \TenorTwo
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 806"
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
