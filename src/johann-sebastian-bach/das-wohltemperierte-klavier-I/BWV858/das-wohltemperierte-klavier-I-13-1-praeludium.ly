Global = {
  \key fis \major
  \time 12/16
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | fis'16 ais cis  ais fis cis'  cis4.~\prall
  | cis16[ ais b8]  cis16[ ais8]  dis16[ gis,8]  ais16 fis~
  | fis16[ b eis,8]  b'16[ dis,8]  b'16[ cis,]  eis gis b
  | ais16[ fis bis8]  fis16[ cis'8]  fis,16[ dis'8]  gis,16 eis'~
  %5
  | eis16[ gis cis,8]  dis16 bis  cis eis cis~  cis eis32 dis cis16~
  | cis16[ ais' cis,8]  dis16 bis  cis eis gis  eis cis gis'
  | gis4.~\prall  gis16[ eis fis8]  gis16 eis~
  | eis16[ ais dis,8]  eis16[ cisis]  fis[ ais, b!8]  cis16 ais~
  | ais16[ dis gis,8]  ais16[ fis8]  b16[ e,8]  fis16 dis
  %10
  | gis16[ cisis, dis8]  cisis16[ gis'8]  eis16[ b'8]  gis16 eis'~
  | eis16[ eis, fis8]  ais16[ dis8]  eis,16[ gis8]  ais16 cisis
  | dis4.~\prall  dis16 fis ais  fis dis gisis
  | gisis4.~\prall  gisis16 ais bis  eis, fis dis
  | cis16[ eis ais,8]  bis16 gisis  ais cis ais~  ais cis32 bis ais16~
  %15
  | ais16[ fis' ais,8]  bis16 gisis  ais cis eis  cis ais fisis'
  | fisis4.~\prall  fisis16 ais dis,  cis b! ais
  | b16[ dis gis,8]  ais16 fisis  gis b gis~  gis b32 ais gis16~
  | gis16[ e' gis,8]  ais16 fisis  gis b dis  b gis eis'
  | eis4.~\prall  eis16 cis eis  gis eis gis
  %20
  | b4.~  b16[ gis ais8]  b16 gis~
  | gis16[ eis fis8]  gis16 eis  fis[ ais, b!8]  cis16 ais~
  | ais16[ dis gis,8]  ais16[ fis8]  eis16[ b'8]  gis16 dis'~
  | dis16[ b gis'8]  eis16[ b8]  ais16[ cis8]  ais16 fis~
  | fis16[ dis b'8]  gis16 eis  fis4.~\prall
  %25
  | fis16[ ais, b8]  cis16[ ais8]  dis16[ gis,8]  ais16 fis
  | b4.~\prall  b16 eis gis  eis b gis'
  | a,16 cis fis  b, eis gis  cis, fis a  d, gis b
  | eis,16[ b' d8]  b16[ eis8]  d16[ gis8]  eis16 b'
  | ais16[ cis, fis8]  gis16 eis  fis fis, fis'~  fis ais32 gis fis16~
  %30
  | fis16[ fis, fis'8]  gis16 eis  fis cis ais  fis8.
    \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r4. fis16 ais cis  ais fis dis'
  | dis8.[^\prall cis] b[ ais]
  | gis8.[ fis] eis[ cis]
  | fis8.[ gis] ais[ bis]
  %5
  | cis8.[ gis] ais[ eis]
  | fis8.[ gis] cis, r
  | cis16 eis gis  eis cis ais'  ais8.^\prall[ gis]
  | fis8.[ eis] dis[ cis]
  | b8.[ ais] gis[ fis]
  %10
  | eis!8.[ eis'] cisis[ ais]
  | dis8.[ fis] gis[ ais]
  | dis,16 fis ais  fis dis bis'  bis4.~^\prall
  | bis16 dis fis  dis \once\omit Accidental bis fis'  fis eis dis  cis dis eis
  | ais,8.[ eis] fis[ cis]
  %15
  | dis8.[ eis] ais, r
  | dis16 fisis ais  fisis dis cis'  cis8.^\prall[ fisis,]
  | gis8.[ dis] e[ b]
  | cis8.[ dis] gis, r
  | cis16 eis gis  eis cis b'  b8.~^\prall  b16 gis b
  %20
  | eis16 gis eis  cis eis cis  fis,8.[ b]
  | bis8.[ cis] dis,[ cis]
  | b!8.[ ais] gis[ fis']
  | eis8.[ cis] fis[ ais,]
  | b8.[ cis]  fis,16 ais cis  ais fis dis'
  %25
  | dis8.^\prall[ cis] b[ ais]
  | gis16 b dis  b gis eis'  cis,4.~_\prall
  | cis8.[ cis'] cis,[ cis']
  | cis,8.[ eis'] gis[ cis]
  | fis,8.[ cis] dis[ ais]
  %30
  | b8.[ cis] fis,4.
    \fine
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    >>
    \new Devnull \forceBreaks
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 858"
    title = \markup { "Praeludium XIII" }
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
