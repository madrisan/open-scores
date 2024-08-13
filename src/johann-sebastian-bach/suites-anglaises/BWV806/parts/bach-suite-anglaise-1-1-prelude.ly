Global = {
  \key a \major
  \time 12/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %\set Timing.beamExceptions = #'()
  %\set Timing.baseMoment = #(ly:make-moment 3/16)
  %\set Timing.beatStructure = 1,1,1,1,1,1,1,1
  %1
  | \change Staff = "lower"
    \stemDown a16[ cis e] \stemUp a[ gis fis] \stemDown e[ gis b] \stemUp d[ cis b]
    \stemDown a[ cis \change Staff = "upper" e] \stemDown a[ gis fis] \stemDown e[ gis b] \stemUp d[ cis b]
  | \stemDown a[ b cis d] \stemUp\tieUp e[ fis] gis[ a b gis e gis] a4.~ a~
  | a8 gis fis e fis d cis4.~ cis4 d8\downmordent
  | e d cis b cis a gis4.~ gis4 a8
  %5
  | b cis d cis d b \grace b8 cis4.~ cis4 d8
  | e fis g fis g e fis4\mordent e8 d4 e8
  \break
  | fis gis a b gis a gis4.~\parenthesize\prall gis4 a8\mordent
  | b a gis fis gis e dis e fis~ fis4.~
  | fis8 b, e~ e e dis e dis cis b cis a
  %10
  | gis4 \stemNeutral\tieNeutral a8 gis4\prall fis8 e2.~
  | e8 d! cis b d cis d e fis e fis d
  | \stemUp\tieUp a' gis fis e g fis g a b a b g
  | fis gis a b4.~ b8 a gis a fis gis
  | eis2.~ eis8 fis gis cis, fis eis
  %15
  | \stemNeutral\tieNeutral fis gis a b4.~ b8 cis d cis d b
  | a b gis gis4\prall fis8 \stemUp\tieUp fis'8 e d cis d b
  | ais4 b8 ais4\prall gis8 fis2.~
  | fis8 gis ais b ais cis d2.~
  | d8 cis b e4.~ e8 d cis d fis e
  %20
  | fis2.~ fis8 g a! b c a
  | g fis e d e cis fis4 g!8 cis,4\prall b8
  | b' a! gis! fis gis e dis e fis b, cis dis
  | e b e~ e e d~ d d cis~ cis b a
  | gis2.~ gis8 a b cis b d!
  %25
  | cis2.~ cis8 d e fis e g
  | fis2.~ fis8 gis a b fis a
  | gis fis e a4.~ a8 gis fis gis e fis
  | g2. fis
  | e d4.~ d8 cis b
  %30
  | cis2.~ cis8 d cis b cis a
  | gis!4.~\prall gis8 a b e, d cis b cis a
  | e'' d cis b d cis d2.~
  | d4. cis~ cis8 d cis b c a
  | gis!4.~ gis8 b gis e e' a,~ a b gis
  \break
  %35
  | a' gis fis e fis d cis4 d8 cis4\prall b8
  << {
  | a b cis d fis e fis d e fis a gis
  | a1.
  }
  \new Voice {
  | s4. s s
    \once\override Tie.extra-offset = #'(0 . 0.8)
    fis4._~
  | \shiftOff fis~ \stemUp fis8 e d e2.
  } >>
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \mergeDifferentlyDottedOn
  %1
  | s1*12/8
  << {
  |  s2. a'8 gis16 fis e d \once\stemUp\tieUp \shiftOn
     \once\override Tie.extra-offset = #'(0 . -0.5)
     cis4.~
  |  \stemUp \shiftOn cis4 s8 s4. s s
  }
  \new Voice {
  | s1  \stemUp\tieUp \shiftOff e8~
    \once\override Tie.extra-offset = #'(0 . 0.2)
    e4.~
  | \shiftOn e4 s8 f,4.\rest
  } >>
  | s1*12/8
  %5
  | s2. \tieDown
    \override Tie.extra-offset = #'(0 . 0.3)
    a~
  | \stemDown a~ a
  | g\rest e'~
  | e4. g,\rest e\rest b'8 cis a
  | gis4. fis e2.~
  %10
  | e8 \change Staff = "lower" \stemUp dis cis b cis a gis4 a8 gis4 fis8
  | e2. d\rest
  | \change Staff = "upper" \stemDown\tieDown
    cis' d4. e~
  | e d cis~ cis4 b8
  | cis b a gis b a b2.
  %15
  | s1*12/8
  | s2. fis'~
  | fis8 e d s4. r8 e d cis d b
  | ais4 r8 r4. b8 cis d e d fis
  | g4.~ g8 fis e b'2.
  %20
  | ais8 b cis d e ais, b2.~
  | b~ b4. ais4 b8
  | b2.~ b4. b4 a8
  | gis4. fis e fis4.*1/3 \change Staff = "lower" \stemUp fis,8 \change Staff = "upper" \stemDown b~
  | b cis dis e dis fis e2.~
  %25
  | e8 fis gis a gis b a2.~
  | a8 b cis d cis e d2.~
  | d4. cis8 b a b4.~ b8 cis d
  | e d fis e4.~ e8 a, cis d4.~
  | d8 gis, b cis4.~ cis8 b a b4.~
  %30
  | b8 a g fis g e fis2.
  | e8 d cis s4. s s
  | \change Staff = "lower" \stemUp
    gis4 a8 b
    \change Staff = "upper" \stemDown
    e fis gis4.~ gis4 a8
  | b4.~ b8 a g fis4. f~
  | f8 e d s4. e d
  %35
  | a'2.~ a8 \change Staff = "lower" \stemUp gis fis e fis d
  | \change Staff = "upper" \stemDown a'4.~ a~ a8
    \override Tie.extra-offset = #'(0 . -0.2)
    d4 ~
    \once\override NoteColumn.force-hshift = #0.3 d4.~
  | \once\override NoteColumn.force-hshift = #0.3 d^~
    \shiftOff d8 cis b cis2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  %1
  | s1*12/8
    \change Staff = "upper"
  << {
  | \stemDown\tieDown s1 s8 f16\rest b a gis a e~
  | e4 d8\rest s4. a'8 gis fis e fis d
  }
  \new Voice {
  | s1 s4. \stemUp\tieUp a'8~
  | \shiftOn a4 b8\rest
  } >>
  | \tieDown cis,4.~ cis4 d8 e2.~
  %5
  | e4 b8 e4.~ e4 b8\rest a4.\rest
  | \change Staff = "lower" \stemUp\tieUp
    a8\rest a\rest e a4.~ a8 a g fis g e
  | s1*12/8
  | r8 b e r cis fis b, b' cis dis cis b
  | s2. r8 r fis gis4 a8
  %10
  | b4 s s1
  | s1*12/8*4
  %15
  | a4.~ a8 gis fis gis4.~ gis8 gis cis
  | fis,4.~ fis8 fis eis
    << {
      \once\override NoteColumn.force-hshift = #0 fis4 gis8
    } \\ {
      \once\override NoteColumn.force-hshift = #0 fis,4.
    } >>
    ais'4 b8
  | cis4 r8 cis d b ais4 b8 ais4 gis8
  | fis4 s s1
  | s1*12/8*4
  %23
  | s4. s s r8 s4
  | e2.~ e8 fis gis a gis b
  | a2.~ a8 b cis d cis e
  | d2. d4.\rest d\rest
  | s1*12/8*4
  %31
  | s4. b8 cis a gis4 a8 gis4 fis8
  | \stemDown e4 fis8 gis4 \stemUp a8 b4 r8 r4.
  | s1*12/8
  | s4. cis!8 d b cis4. b
  %35
  | cis4 d8 cis4 b8 a2.
  | cis8 d e fis d cis d fis e d fis e
  | fis \change Staff = "upper" \stemDown\tieDown a gis \shiftOnn \once\stemUp a4.~
    \once\override NoteColumn.force-hshift = #0 a2.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \mergeDifferentlyDottedOn
  %1
  | s1*12/8*2
  | \stemNeutral\tieNeutral a4 r8 r4. r2.
  | r e'8 d cis b cis a
  %5
  | gis4.~ gis4 e8 a gis fis e fis d
  | \stemDown\tieDown cis4.~ cis4 a8 d4. g,\rest
  | \stemNeutral dis'4 fis8 dis4 b8 e dis cis b cis a
  | \stemDown gis4. a b4 b8\rest b4.\rest
  | e'8 gis, a b a b e,2.~
  %10
  | e~ e8 dis cis b cis a
  | gis4 a8 gis8 fis e fis gis a gis a b
  | \stemNeutral\tieNeutral
    a4 b8 cis b a b cis d cis d e
  | d e fis gis, a b eis,4.\downmordent fis8 e d
  | cis2.~ cis4.~ cis4 cis'8
  %15
  | \stemDown\tieDown d4. dis e eis
  | fis4 b,8 cis4.
    \once\override NoteColumn.force-hshift = #0
    \once\override Stem.length = #5
    fis4.~
    fis~
  | fis2.~ fis~
  | fis4 \stemNeutral\tieNeutral e8 d4 cis8 b4 d8\rest d4.\rest
  | R1*12/8
  %20
  | fis8 gis ais b ais cis d4.~ d4 dis8
  | e fis g fis g e d fis d fis cis e
  | dis4.\parenthesize\prall~ dis4 e8 fis b, a gis a fis
  | e fis gis a fis b gis e a dis,4.
  | \stemDown a8\rest a\rest b gis a b e,4 e8\rest g4.\rest
  %25
  | b8\rest b\rest e cis d e a,4 a8\rest a4.\rest
  | r8 r a' fis g a d, fis d b d b
  | \stemNeutral\tieNeutral e2.~ e4.~ e8 e' d
  | cis d b cis b a d4.~ d8 b d
  | gis, b e, a cis, e fis,4. gis\upmordent
  %30
  | a8 cis e a a, cis d,4. dis\upmordent
  | e4 r8 b'4.\rest g2.\rest
  | \stemDown \once\override Voice.Rest.X-offset = #0.4 g\rest e'8 d cis b cis a
  | \stemNeutral gis fis e a b cis d cis e d e f
  | \stemDown\tieDown e2.~ e
  %35
  | a~ a~
  | a~ a~
  | a \stemNeutral a,
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 806"
    title = \markup { "Prélude" }
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
