Global = {
  \key fis \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  %1
  | b'8\rest \highlightSubject {
    cis8( fis-.) eis-.  fis eis16 dis cis8.\prallprall b32 cis
  | dis4 b8\rest cis  b ais gis cis
  | \stemUp\tieUp ais }
    \highlightSubject { \unHighlightSubject fis16[ }
    fis']  eis fis gis dis  eis fis gis8~  gis16 fis eis dis
  | cis16 dis eis bis  cis dis eis cis  ais bis cis4 bis8
  %5
  | cis2~ cis8 cis16 dis  eis4
  | fis4 r8 ais,  gis ais  b ais16 gis
  | ais16 cis cis ais  gis cis cis gis \autoBeamOff ais8 cis \autoBeamOn fis4~
  | fis8 eis4 dis16 cis \autoBeamOff bis8 dis \autoBeamOn gis4~
  | gis8 fis16 eis fis4~  fis8 eis16 dis eis4~
  %10
  | eis8 eis[ dis cis]  bis gis cis4~
  | cis4~ cis16 cis8 bis16 cis8
    \highlightSubject { cis[ fis eis]
  | fis8 eis16 dis cis4 dis r8 cis
  | b ais gis cis ais } ais[ dis cisis]
  | dis4 r8 eis fis gis ais fis
  %15
  | dis4 r8 gis eis4 r8 eis
  | dis16 bis cis eis dis bis cis8~ cis16 bis cis4 bis8
  | cis4 r8 bis cis16 eis eis cis bis eis eis bis
  | \autoBeamOff cis8 eis \autoBeamOn ais4~ ais8 gis16 fis gis4~
  | gis8 fis16 eis fis4~ fis8 fis[ eis dis]
  %20
  | cisis r r4 r8 dis,16 eis fis dis dis fis
  | gis dis dis gis ais dis, dis ais' b dis, dis b' cisis dis, dis cisis'
  | dis4 r16 eis fis gis cisis, b' ais gis fis8 eis16\prall dis
  | dis8 fis[ b ais] b2~
  | b8 eis, ais gis ais2~
  %25
  | ais8 ais[ gis fis] eis4 e~
  | e16 cis cis e dis b b dis dis b b dis cis ais ais cis
  | cis ais ais cis b gis gis b b gis gis b ais b ais gis
  | ais8 cis[ dis e~] e16 dis cis e dis b b dis
  | e b b e fis b, b fis' gis b, b gis' ais b, b ais'
  %30
  | b8 r r4 r8 dis, gis fisis
  | gis ais b gis eis \highlightSubject { cis[ fis eis]
  | fis eis16 dis cis8.\prallprall b32 cis dis4 r8 cis
  | b ais gis cis \unHighlightSubject ais16 } cis cis ais gis cis cis gis
  | \autoBeamOff ais8 cis \autoBeamOn fis2 eis4
  %35
  | fis1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | s1*2
  | r8 \highlightSubject {
    fis( cis'-.) bis-. cis8 bis16 ais gis8.\prallprall fis32 gis
  | ais4 } r8 gis fis eis dis gis
  %5
  | eis8 cis16[ b'] ais b cis gis ais b cis8~ cis16 b ais gis
  | fis16 gis ais eis fis gis ais fis dis[ eis] fis4 eis8
  | fis4 r8 eis fis4 r8 ais
  | dis16 gis, gis cis ais fis fis ais gis4 r8 bis!
  | ais4 r8 ais gis4 r8 gis
  %10
  | fis4~ fis16 gis ais fis dis4 r8 gis
  | fis8 eis dis dis eis16 gis[ cis b] ais b cis gis
  | ais b cis8~ cis16 b ais gis fis gis ais eis fis gis ais eis
  | fis4 gis~ gis8 fis r4
  | r8 ais dis cisis dis eis fis dis
  %15
  | bis \highlightSubject {
    gis[ cis bis] cis bis16 ais gis8.\prallprall fis32 gis
  | ais4 r8 gis fis[ eis dis gis]
  | \unHighlightSubject eis16 } gis gis eis dis gis gis dis eis4 r8 gisis
  | ais r r cis b4 r8 b
  | ais4 r8 ais gis2~
  %20
  | gis16 b b gis fis gis ais eis fis gis ais8 r8 dis
  | \once\shape #'((0 . 0.6) (0 . 2) (0 . 2.2) (0 . 0.6)) Tie
    dis2^~ dis4
    \once\shape #'((0 . -0.6) (0 . -2) (0 . -2) (0 . -0.6)) Tie
    gis,~
  | gis16 fis gis ais b4 ais8 r16 eis' dis8 cisis!
  | dis r r4 r8 dis gis fis
  | \once\shape #'((0 . -0.4) (0 . -2) (0 . -2) (0 . -0.4)) Tie
    gis2~ gis8 cis, fis eis
  %25
  | \autoBeamOff fis cis \autoBeamOn dis4~ dis16 gis, gis cis cis gis gis cis
  | ais2 gis
  | fis eis4 r
  | r8 \highlightSubject {
    fis b ais b ais16 gis fis8.\prallprall e32 fis
  | gis4 r8 fis e dis cis fis
  %30
  | dis } dis[ gis fisis] gis4 r8 ais
  | b cis dis b gis4 r8 cis
  | ais4 r8 ais gis16 eis fis ais gis eis fis8~
  | fis16 eis fis4 eis8 fis4 r8 eis
  | fis4 r8 ais gis16 dis' dis b gis cis cis b
  %35
  | ais1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*4
  | b8\rest \highlightSubject {
    cis8( fis-.) eis-.  fis eis16 dis cis8.\prallprall b32 cis
  | dis4 } r8 cis b ais gis cis
  | fis, fis'[ eis cis] fis16 ais ais fis dis fis fis dis
  | \autoBeamOff bis8 cis \autoBeamOn fis4~ fis16 gis bis gis eis gis gis eis
  | cis ais' ais fis dis fis fis dis bis gis' gis eis cis eis eis cis
  %10
  | ais cis cis ais \autoBeamOff fis8 fis'~ \autoBeamOn fis16 fis eis dis cis dis eis cis
  | ais bis cis ais fis8 gis cis,4 r
  | r8 fis'16 gis ais fis fis ais b fis fis b cis fis, fis cis'
  | dis fis, fis dis' eis fis, fis eis' fis eis dis cis b gis' gis b,
  | ais fis' fis ais, gis eis' eis gis, fis gis fis eis dis eis fis dis
  %15
  | gis ais gis fis eis fis gis eis ais b cis8~ cis16 b ais gis
  | fis gis ais eis fis gis ais fis eis8 eis16 fis gis8 gis,
  | cis cis'[ bis gis] cis ais gisis eis
  | ais16 cis cis ais fis ais ais fis dis b' b gis eis gis gis eis
  | cisis ais' ais eis dis fis fis dis b dis dis b gis b b gis
  %20
  | ais8 \highlightSubject {
    ais[ dis cisis] dis cis16 b ais8.\prallprall gis32 ais
  | b4 r8 ais gis[ fis eis ais]
  | \autoBeamOff dis, } fis \autoBeamOn gis4~ gis16 eis' fis gis ais8 ais,
  | dis16 ais' ais fis dis fis fis dis gis, dis'' dis b gis b b gis
  | eis gis gis eis cis eis eis cis fis, cis'' cis ais fis ais ais fis
  %25
  | dis fis fis dis b dis dis b cis8 cis, r8 cis''16 b
  | cis8 fis,[ b ais] b eis, ais gis
  | ais dis, gis fis gis cis, fis eis
  | fis16 ais ais fis dis fis fis dis b8 r r b'
  | b1~
  %30
  | b16 ais gis fis e cis' cis e, dis b' b dis, cis ais' ais cis,
  | b cis b ais gis ais b gis cis dis cis b ais b cis ais
  | dis eis fis8~ fis16 eis dis cis b cis dis ais b cis dis b
  | gis8 ais16 b cis8 cis, fis fis'[ eis cis]
  | fis16 ais ais fis dis fis fis dis b8 gis[ cis cis,]
  %35
  | fis1\fermata
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
      \Alto
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
    title = \markup { "Fuga XIII " \char ##x007E " à 3" }
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
