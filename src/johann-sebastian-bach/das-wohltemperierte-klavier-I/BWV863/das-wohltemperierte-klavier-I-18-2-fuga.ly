Global = {
  \key gis \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \override MultiMeasureRest.staff-position = #0
  %1
  | s1*4
  | \voiceOne r4 \highlightSubject { gis  fisis8 gis16 ais b8 ais
  | gis cisis dis fis,  gis gis ais ais
  | \unHighlightSubject dis,8 } eis fis4~  fis8 e16 fis  gis8 fisis16 gis
  | ais8 gis16 ais  b8 gis  ais r fisis r  
  | gis8 ais b4  cis8 r ais r
  %10
  | b8 dis16 cisis dis4  eis8 r cisis r
  | dis8 eis fis4~  fis8 e16 fis  gis8 fisis16 gis
  | ais8 gis16 ais  b8 gis  ais r fisis r
  | gis8 fis!16 e  dis8 e  fis r dis r
  | e8 dis16 cis  bis8 cis  dis r bis r
  %15
  | cis4 r r8 cis4 dis8
  | e4 dis  cis2~
  | cis8 fisis gis b,  ais fisis' gis cis,
  | b8 gis' fis! ais,  gis fis' eis gis,
  | fis4 r r2
  %20
  | s1*4
  | r4 \highlightSubject { dis'  cisis8 dis16 eis  fis!8 eis
  %25
  | dis8 gisis ais cis,!  dis dis eis eis
  | \unHighlightSubject ais,8 } eis' fis4~  fis8 ais b4~
  | b8 e, dis4  cis2~
  | cis4 b~  b8 ais16 gis  ais fis bis8
  | cis2~  cis8 b!16 ais  b gis cisis8
  %30
  | dis8 cis!16 b  ais8 b  cis r ais r
  | b8 ais16 gis  fisis8 gis  ais r fisis r
  | gis4 r  r8 gis4 ais8
  | b4 ais gis2~
  | gis4 fis e2~
  %35
  | e8 dis b'2 a4~
  | a4) r8 gis  ais ais bis bis
  | cis4 r8 \highlightSubject { dis  bis cis16 dis  e8 dis
  | cis8 fisis gis b,  cis cis dis dis
  | \unHighlightSubject gis,8 } bis cis2 b4~
  %40
  | b4 ais8 gis  fisis gis4 fisis8
  | gis1
    \fine
}

Alto = \context Voice = "two" \relative c {
  | R1*2
  | r4 \highlightSubject { dis' bis8 cis16 dis  e8 dis
  | cis8 fisis gis b,!  cis cis dis dis
  %5
  | gis,4 } \voiceTwo cis4~  cis8 b16 cis  dis8 cisis16 dis
  | eis8 dis16 eis  fis!8 dis  eis r cisis r
  | \highlightSubject { \unHighlightSubject dis4 } r8 ais  gis4 r8 dis'
  | e8 dis r dis  e r dis r
  | dis4 r8 fis!  gis r fis r
  %10
  | fis4 r8 ais  b r ais r
  | fis8 gis  ais b16 a gis8 cis4 dis8
  | e4 dis cis2~
  | cis4 b a2~
  | a4 gis fis2~
  %15
  | fis8 e16 fis  gis8 fis16 e  dis8 e16 fis  gis8 fisis16 gis
  | ais8 gis16 ais  b8 gis  ais r fisis r
  | gis8 r r4 r4 r8 fisis
  | gis4 r8 fis!  eis4 r8 eis~
  | eis dis16 cisis  \highlightSubject { dis4  bis8 cis16 dis  e8 dis
  %20
  | \oneVoice cis fisis gis b,!  cis cis dis dis
  | \unHighlightSubject gis,8 } fisis' gis4~  gis8 fis16 eis  fis dis gisis8
  | ais2~  ais8 gisis16 fisis  gisis eis ais8
  | bis2~  bis8 ais16 gisis  ais bis cis8~
  | \voiceTwo cis8 bis16 ais  gisis ais fisis gisis  ais2~
  %25
  | ais8 bis cis ais  b4~ b16 ais, b cis
  | dis4 cis8 ais'  b4 r16 dis e fis
  | gis8 r r fis,  gis ais16 b  e,4~
  | e8 dis16 cis  dis b eis8  fis2~
  | fis8 e!16 dis  e cis fisis8  gis2~
  %30
  | gis4 fis! e2~
  | e4 dis  cis2~
  | cis8 b16 cis  dis8 cis16 b  ais8 bis16 cis  dis8 cisis16 dis
  | eis8 dis16 eis  fis8 dis  eis r cisis r
  | dis8 cis!16 b  ais8 b  cis r ais r
  %35
  | b4 r8 b  cis cis dis dis
  | e16 b cis dis  e8 gis fis2~
  | fis16 dis e fis  gis8 fis16 e  dis8 gis4 fisis16 gis
  | ais8 gis16 ais  b!8 gis  a r a r
  | dis,8 r r gis  ais4 gis8 fis
  %40
  | e8 dis cis4~  cis8 b ais4
  | b1
}

Tenor = \context Voice = "three" \relative c' {
  | r4 \highlightSubject { gis4  fisis8 gis16 ais  b8 ais
  | gis8 cisis dis fis,!  gis8 gis ais ais
  | \unHighlightSubject dis,8 } eis fis4~  fis8 e16 fis  gis8 fisis16 gis
  | ais8 gis16 ais b8 gis  ais r fisis r
  %5
  | gis8 fis! e4  dis8 gis4 ais8
  | b4 ais gis2~
  | \voiceThree gis8 fis16 gis  ais8 fis  dis e r b'!
  | cis4 r8 dis  cis r ais r
  | b4 r8 b  e r cis r
  %10
  | dis4 r8 dis  gis r eis r
  | dis8 r8 \oneVoice \highlightSubject { dis4  bis8 cis16 dis e8 dis
  | cis8 fisis gis b,!  cis cis dis dis
  | gis,4 } r8 gis  a a b b
  | e,4 r8 e  fis fis gis gis
  %15
  | \voiceThree cis,8 dis e fis  gis4. b!8
  | cis4 b e8 d\rest dis d\rest  
  | dis8 r \highlightSubject { gis,4  fisis8 gis16 ais  b8 ais
  | gis8 cisis dis fis,!  gis gis ais ais
  | \unHighlightSubject dis,8 } eis  fis4~  fis8 e16 fis  gis8 fisis16 gis
  %20
  | ais8 gis16 ais  b8 gis  ais r fisis r
  | gis4 r8 b  ais gis ais bis
  | eis,8 dis'  eis fisis  bis, ais bis cis
  | dis2~  dis8 cis16 bis  cis8 ais~
  | ais16 ais dis cis  bis ais bis8  ais bis16 cisis  dis8 eis
  %25
  | fis4~  fis16 gis! fis eis  dis cis b ais  gis4
  | fis8 gis ais cis  dis2
  | cis4. b8  b r ais r
  | b4 r r2
  | s1*3
  %32
  | r4 \highlightSubject { gis  fisis8 gis16 ais  bis8 ais  
  | gis8 cisis dis fis,  gis gis ais ais
  | dis,4 } r8 dis  e e fis fis
  %35
  | b,16 dis e fis  gis2 fis4
  | e4 r8 b'  cis cis dis dis
  | gis,2~  gis8 ais16 bis  cis8 dis
  | e4  dis  e8 r fis r
  | bis,8 r r e e4 dis
  %40
  | cis4 r8 cis,  dis2~
  | dis1
}

Bass = \context Voice = "four" \relative c {
  \override MultiMeasureRest.staff-position = #0
  %1
  | s1*6
  | \voiceFour r4 \highlightSubject { dis  bis8 cis16 dis  e8 dis
  | cis8 fisis gis b,!  cis cis dis dis
  | gis,4 } r8 dis'  e e fis fis
  %10
  | b,4 r8 fis'  gis gis ais ais
  | dis,8 r r4 r2
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  | \override MultiMeasureRest.staff-position = #-8
    R1
  %15
  | r4 \highlightSubject { cis  bis8 cis16 dis  e8 dis
  | cis8 fisis gis b,  cis cis dis dis  
  | \unHighlightSubject gis,8 } ais b cis  dis4 r8 dis
  | eis4 dis2 cisis4
  | \highlightSubject { \unHighlightSubject dis4 } r16 dis, e! fis  gis8 cis4 dis8
  %20
  | e4 dis cis2~
  | cis8 b16 ais  b gis cisis8  dis2~
  | dis8 cis!16 bis  cis ais disis8  eis2~
  | eis8 dis!16 cis  dis bis eis8  fis4~ fis8. eis16
  | dis4 eis ais, r
  %25
  | R1
  | r4 \highlightSubject { fis'  dis8 e!16 fis  gis8 fis
  | e8 ais b dis,  e e fis fis
  | \unHighlightSubject b,8 } ais gis cis  fis, e! dis gis
  | \oneVoice cis8 b! ais dis  gis, fis eis ais
  %30
  | dis,4 r8 dis'  e! e fis fis
  | b,4 r8 b  cis cis dis dis
  | \voiceFour gis,8 ais b cis  dis fis!~  fis16 gis fis eis
  | dis16 cisis bis ais  gis fis gis ais  b4 ais8 gis
  | fis8 ais dis,4  r2
  %35
  | r4 r8 gis  a a b b
  | e,4 e'2 dis4
  | cis8 dis e fis  gis2~
  | gis2. fis4~
  | fis4 r8 e  fisis, fisis gis gis
  %40
  | cis,8 dis e4  dis2
  | gis1
  \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  %page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
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
    title = \markup { "Fuga XVIII " \char ##x007E " à 4" }
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
