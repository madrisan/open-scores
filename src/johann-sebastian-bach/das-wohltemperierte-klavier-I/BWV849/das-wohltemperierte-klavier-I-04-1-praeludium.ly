Global = {
  \key cis \minor
  \time 6/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | gis8 fis e dis e cis cis'4. b8 a4
  | gis2.~ gis2 fis4
  | dis'8 cis bis ais bis gis gis'4. fis8 e4
  \noBreak
  | <bis dis>2.~ q2 <bis gis'>4
  %5
  | cis8 bis cis e a4~ a8 gis fis e dis cis
  | b a b dis gis4~ gis8 fis e dis cis b
  | a gis a cis fis4~ fis8 e dis cis b a
  | gis2.~ gis4. fis8 a4~
  | a8 gis fis e fis dis dis' cis bis ais bis gis
  %10
  | \stemNeutral a'! gis fis e fis dis \stemUp e2.~
  | e4. dis8 cis4 cis4. b8 ais4~
  | ais8 gis fisis eis fisis dis dis'2.~
  | dis8 bis cis dis e dis b4. cis8 ais4
  | \tieNeutral <b, dis gis>2.~ q2 b'4~
  %15
  | b8 gis ais cis e4^~ e8 dis e gis fis e
  | \tieUp dis2.~  dis2 cis4~
  | cis8  ais bis dis fis gis a gis fis e fis dis
  | \once\override Tie.extra-offset = #'(0.4 . 0.6)
    e2.~ e~
  | e8 d eis gis b4~ b8 d,! cis b a gis
  %20
  | \stemNeutral\tieNeutral a2.~ a8 gis a cis fis4~
  | fis8 e dis cis b a gis fis gis b e4~
  | e8 dis cis b a gis fis e fis a dis4~
  | dis8 cis bis ais gis fis e dis e gis cis4~
  | cis8 b a gis a fis fis' e d cis d a
  %25
  | a' gis fis e fis dis \stemUp\tieUp bis'2 gis4
  | gis2.~ gis8 fis e dis e cis
  | fis2.~ fis8 e dis cis dis gis,
  | e'2.~ e8 dis e fis gis a
  | bis,4.\prall cis8 dis4 <dis, fis>2.~
  %30
  | \stemNeutral\tieNeutral fis8 e dis cis dis bis a' gis fis e fis dis
  | bis' a! gis fis gis dis dis' cis bis! ais bis gis
  | gis'4 fis8 e dis cis bis cis dis fis a,4~
  | a8 gis a fis a'4~ a gis8 fis e dis
  | \stemUp\tieUp e2~  e8 a e4. fis8 dis4
  %35
  | cis2.~ cis4. e8 dis4
  << {
  | e2.~ e4. bis8 cis4
  | \tweak Accidental.Y-offset 0.4
    \once\override Tie.extra-offset = #'(0 . 1.5)
    fisis2.~ fisis2 <bis, gis'>4
  } \\ {
  | s1 s4
    \once\stemUp
    \once\override Tie.extra-offset = #'(0 . -0.4)
    cis^~
    \stemUp \shiftOn cis8 dis e dis cis b \stemDown ais gis fisis eis fis dis
  } >>
  | cis'2.~ cis4. dis8 bis4
  | \once\override Tie.extra-offset = #'(0 . 1)
    cis2~
    cis8 bis cis2.\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s2. <e gis>2 fis4
  | e2.~ e2 fis4~
  | fis2. <gis dis'>2 <gis cis>4
  | gis2.~ gis2 gis4
  %5
  | a e\rest e\rest a2.
  | gis4 d\rest d\rest gis2.
  | fis4 c\rest c\rest fis2.
  | e2. s
  | s1.
  %10
  | s2. g8\rest dis' cis bis cis ais
  | fisis4. gis8 ais4 dis,4. eis8 fisis!4~
  | fisis8 s s2 <fisis! ais>2 gis4~
  | gis2.~ gis2 fisis4
  | s1.
  %15
  | s2. ais4. b8 cis4~
  | cis8 cis b ais b fis~ <dis fis>2.
  | fis8 d\rest d4\rest d\rest bis'!4. cis8 gis4
  | << {
      \stemDown\tieDown g8\rest dis' cis bis cis
      gis^~ <e gis>2.
    } \\ {
      \stemUp\tieUp s2
      \once\shape #'((0 . -0.8) (0 . -0.8) (0 . -1.2) (-0.7 . -0.8)) Tie
      cis'4~ cis2.
    } >>
  | e,4\rest d8\rest cis d2 s
  | s1.*5
  %25
  | s2 s8 \once\omit Flag \once\omit Stem dis'~ dis2.~
  | dis4. e8 bis4 cis2.~
  | cis4. bis8 dis4 gis,2.~
  | gis4. cis8 fis, gis a2.
  | gis2. bis,
  %30
  | s1.*4
  | g'8\rest dis' cis bis cis4~ cis2 bis!4
  %35
  | e,8\rest b' ais gis fisis gis fisis2.~
  | fisis8 gis ais gis b! ais!~ ais2.~
  | ais8 s s4 s1
  << {
  | \stemDown e8 b' a gis fis a e4. fis8 \stemUp dis[ fis_~]
  | \shiftOn fis gis a fis~ fis4 \shiftOff gis2.
  } \\ {
  | s1 s4 d
  | cis2 dis4 eis2.
  } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s1.
  | gis8 fis e dis e cis cis'4. b8 a4
  | gis2.~ gis2 cis4
  | dis8 cis bis ais bis gis fis'4. e8 dis4
  %5
  | e2. dis~
  | dis cis~
  | cis b
  | b8 a gis fis gis e e'4. dis8 cis4
  | bis1.~
  %10
  | bis4. cis8 dis4 cis2.
  | s1.*2
  | s2. dis,~
  | dis8 cis b ais b gis b dis gis e fis dis
  %15
  | e2. fis
  | \change Staff = "upper" \stemDown
    fis'2.*2/3 \stemUp b4~ \shiftOff b2 s4
  | \change Staff = "lower" \stemUp
    s2 dis,,4 fis8 e dis cis dis gis~
  | gis fis e dis e gis cis d\rest d4\rest d\rest
  | s1 gis,4 cis~
  %20
  | cis8 b a gis a fis fis'4. e8 dis cis
  | b4. cis8 dis4~ dis4. gis,8 cis bis
  | cis2.~ cis4. bis8 cis ais
  | bis4. cis8 dis4 cis2.
  | a4. b8 cis4 d2.\prall
  %25
  | bis2. fis'4 e\rest e\rest
  | s1.*8
  %34
  | s2. 	gis,~
  | gis8 gis fisis gis ais dis, e2.~
  | e8 dis cis b cis e fisis2.
  | s1.
  | s1 s4 gis,8 gis'~
  | gis4 fis a gis2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  %1
  | cis1.~
  | cis
  | bis2.~ bis2 cis4
  | gis'1.~
  %5
  | gis2. fis~
  | fis e~
  | e dis
  | e1.
  | dis2. gis4. fis8 gis4
  %10
  | cis,2.~ cis4. dis8 e4
  | \stemNeutral ais,8 dis cis b cis ais fisis b ais gis ais fisis
  | cis2.~ cis8 cis' b ais b gis
  | \stemDown e'4. dis8 cis4 dis2 dis,4
  | gis2.~ gis
  %15
  | cis8 dis cis b cis ais fis4. gis8 ais4
  | \stemNeutral b2.~ b8 b' a! gis a fis
  | \stemDown dis e dis cis dis bis gis4. ais8 bis!4
  | cis2.~ cis8 dis e fis gis a
  | b2~ b8 b eis,2.
  %20
  | fis1.
  | gis4. a8 b4 e,2.~
  | e4. dis8 cis4 dis2.
  | gis4. ais8 bis4 cis4. b8 a gis
  | fis2.~ fis4. e8 fis4
  %25
  | dis!4. fis8 a4~ a8 gis fis e fis dis
  | \stemNeutral\tieNeutral e dis cis bis cis a a'2.~\prall
  | a8 gis fis e fis dis bis'2.\prall
  | cis8 b a gis a fis fis'2.~\prall
  | fis8 e dis cis bis ais gis fis e dis cis b
  %30
  | a!4. b8 gis4 fis4. gis8 e4
  | dis4. e8 fis4 bis,4. dis8 fis4
  | e8 e' fis gis a fis dis e fis dis bis cis
  | dis bis gis ais bis cis dis e fis gis ais bis
  | \stemDown\tieDown cis b a gis a fis gis2 gis,4
  %35
  | ais2.~ ais4. b8 cis4
  | fisis,2.~ fisis4. gis8 ais4
  | \stemNeutral dis,2 r4 r2.
  | r8 dis'' cis b a fis gis[ dis e cis] \stemDown gis4
  | cis2.~ cis_\fermata
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
    opus = "BWV 849"
    title = \markup { "Praeludium IV." }
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
    \tempo 4 = 92
  }
}
