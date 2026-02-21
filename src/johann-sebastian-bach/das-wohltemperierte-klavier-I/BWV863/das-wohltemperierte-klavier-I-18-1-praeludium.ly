Global = {
  \key gis \minor
  \time 6/8
  \include "../global.ly"
  \mergeDifferentlyDottedOn
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \override MultiMeasureRest.staff-position = #0
  \label #'Praeludium18
  %1
  | gis'16 ais b gis ais cis  e8 dis cis
  | \voiceOne b8 gis'4 fisis4.
  | gis16 ais b dis, e gis  fis gis ais cis, dis fis
  | e16 fis gis b, cis e  ais, b cis fis, cis' e
  %5
  | dis16 e fis dis e gis  b, ais b ais b cis~
  | \voiceOne cis8 b4~  b16 b ais b cis ais
  | fis4.~ \oneVoice fis16 eis fis eis fis gis
  | cis,16 dis e cis dis fis  a8 gis fis
  | e4 cis'8  \voiceOne ais4.~
  %10
  | \oneVoice ais16 gis fisis ais gis eis  cisis8 dis eis
  | fis4. eis
  | dis8. dis16 cisis eis  gis8. cisis,!16 eis! gis
  | fis8. fis16 gis b  \voiceOne eis,4.
  | dis16 eis fis dis eis gis  b8 ais gis
  %15
  | fisis4~ fisis16 gis  ais b cis ais b cis
  | dis16 cis b dis cis ais  fisis8 gis ais
  | \voiceOne b8. ais16 bis cis  dis4.
  | cis16 dis e cis dis fis  a8 gis fis
  | e4.~  e8 fis e
  %20
  | dis4.~  dis8 e dis
  | cis4.~  cis8 dis cis
  | b16 ais gis b cis e  ais, gis fis ais b dis
  | gis,16 dis' cis b ais gis  fisis gis ais fisis gis b
  | e8 e e  e e e
  %25
  | e4.~  e16 dis cis ais' e cis
  | dis16 cis b dis cis ais  b ais gis b ais fisis
  | gis2.~
  | gis~
  | gis
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  | s2.
  | s8 dis' cis~ cis b ais
  | dis8 s4 s4.
  | s2.*23
  %28
  | r8 fis, dis  cis16 bis cis dis e fis
  | e dis cis e cis ais  r16 e' dis cis bis cis
  | dis2.
}

Tenor = \context Voice = "three" \relative c' {
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \voiceThree
  \showStaffSwitch
  | b8 dis cis~  cis b ais
  | s4. s8 dis4~
  | dis8 gis cis,~ cis fis b,~
  | b e4~ e8 dis cis
  %5
  | b16 cis dis b cis e  gis8 fis e
    \change Staff = "upper" \voiceTwo
  | dis16 e fis dis e gis  cis,4.~
  | cis8 b16 ais cis b  d8 cis b~
  | b \hideStaffSwitch \change Staff = "lower" \voiceThree
    a16 gis a fis bis8
    \change Staff = "upper" \voiceTwo
    cis dis
    \change Staff = "lower" \voiceThree
  | gis,16 ais b gis ais cis
    \showStaffSwitch
    \change Staff = "upper" \voiceTwo
    e8 dis cis
  %10
  | \change Staff = "lower" \voiceThree
    b4. ais~
  | ais8 dis gis,~ gis cis fis,~
  | fis b4~  b16 b ais4~
  | ais16 ais dis4
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    cisis4.
  | dis8 r r r4 r8
  %15
  | dis16 cis b dis cis ais
    \change Staff = "lower" \voiceThree
    fisis8 gis ais~
  | ais gis
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    e'~ e dis cis
  | b16 dis gis8 gis  fis16 gis a fis cis' bis!
  | cis4.  bis8 cis dis~
  | dis8 cis b  ais4.~
  %20
  | ais8 b ais  gis4.~
  | gis8 ais gis  fisis4.
  | gis8 c,\rest c\rest r4 r8
  | r4 r8  s4 gis'8~
  | gis gis gis  cis cis cis
  %25
  | cis16 b ais cis b gis  ais4.~
  | ais8 gis4  r4 r8
    \change Staff = "lower" \voiceThree
  | s2.
  | s4. fisis,8 gis ais
  | bis2.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  %1
  | \voiceFour gis4. fisis
  | gis16 ais b gis ais cis  e8 dis cis
  | b4. ais
  | gis4 e8  fis gis ais
  %5
  | b8 b,\rest b\rest b4\rest b8\rest
  | \oneVoice b16 cis dis b cis e  gis8 fis e
  | dis16 e fis cis dis fis  \voiceFour b8 a gis
  | fis4.~  fis16 fis e dis cis bis
  | cis4.  fisis,16 cis'' b ais gis fisis
  %10
  | gis4.~  gis16 gis fis eis dis cisis
  | dis16 eis fis ais, b dis  cis dis eis gis, ais cis
  | b16 cis dis fis, gis b  cisis,8 cisis' ais
  | dis16 eis fis dis eis gis  \oneVoice b8 ais gis
  | fis16 gis ais fis gis b  cisis, dis eis ais, cisis eis
  %15
  | dis4. \voiceFour cis
  | b4.  ais16 cis b ais gis fisis
  | gis fis! e gis fis dis  \oneVoice bis8 cis dis
  | e16 fis gis e fis a  dis, e fis gis ais bis
  | cis16 dis e cis e gis  fis gis ais fis ais cis
  %20
  | b,16 cis dis b dis fis  e fis gis e gis b
  | ais,16 b cis ais cis e  dis eis fisis dis fisis ais
  | gis16 ais b dis, e gis  fis gis ais cis, dis fis
  | e16 fis gis b, cis e  dis eis fisis ais, b dis
  | cis16 dis e b cis e  a, cis e gis, cis e
  %25
  | fisis,4.~  fisis8. fisis'16 gis ais
  | b,4 e8  cis dis dis,
  | gis16 ais bis gis bis dis  fis8 e dis
  | \voiceFour cis2.
  | gis
  \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\pageBreak
  % page 2
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
  \repeat unfold 2 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
  \repeat unfold 1 { s1*6/8\noBreak } s1*6/8\break\noPageBreak
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
    \new Devnull \forceBreaks
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
    opus = ##f % "BWV 863"
    title = \markup { "Praeludium XVIII" }
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
