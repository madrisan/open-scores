Global = {
  \key cis \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r4 r8 \highlightSubject { gis ais16 gis fis gis eis'8 cis
  | gis fis16 eis fis8 dis' eis,[ cis'] dis, bis'
  | \unHighlightSubject cis, } cis'16 bis cis dis eis fis gis fisis eis fisis gis fisis eis dis
  | eis4 ~ eis16 dis16 cis eis dis cis bis dis cis bis cis ais
  %5
  | bis8 dis fis2 eis4~
  | eis dis~ dis8 cis bis[ dis~]
  | dis gis, eis'4. eis16 cis \once\override Tie.extra-offset = #'(0 . 2.0) ais4~
  | ais8 ais dis4. dis16 bis \once\override Tie.extra-offset = #'(0 . 2.0) gis4~
  | gis8 gis cis4 ~ cis16 bis cis ais ais'4 ~
  %10
  | ais16 gis fisis ais gis dis eis \highlightSubject { fis eis dis cis dis bis'8 gis
  | dis cis16 bis cis8 ais' bis,[ gis'] ais, fisis'
  | \unHighlightSubject gis,16 } ais bis cis bis ais gis bis eis dis cisis eis gis fis eis gis
  | b!8 ais16 gis fis eis dis cisis dis fis eis dis cisis! eis ais, gis
  | fis eis dis cisis dis eis fis gis ais gis fis gis ais gis fis eis
  %15
  | fis4 ~ fis16 eis dis fis eis dis cis eis dis cis dis bis
  | r eis fis eis cis'4 ~ cis16 bis cis ais ais'4~
  | ais16 dis,, eis dis bis'4 ~ bis16 ais bis gis gis'4~
  | gis16 cis,, dis cis ais'4 ~ ais16 gis ais fisis! fisis'4~
  | fisis16 disis eis cis ais2 \highlightSubject { \unHighlightSubject gis4~ }
  %20
  | gis fisis ~ fisis8 \highlightSubject { \unHighlightSubject eis } disis fisis!
  | \stemNeutral bis16 ais gis bis ais gis fisis ais gis eis cis' ais bis gis fisis' disis~
  | disis eis aisis bis disis,8.\prall eis16 eis4r8 eis8
  | b!16 ais gis ais eis'8 cisis gis fis16 eis fis8 dis'
  | a!16 gis fis gis dis'8 bis fis eis16 dis eis gis cis \highlightSubject { dis
  %25
  | \stemUp eis dis cis dis bis'8 gis dis cis16 bis cis8 ais'
  | bis, gis' ais,[ fisis'] \unHighlightSubject gis,16 } dis eis fisis! gis ais bis gis
  | \stemNeutral\tieNeutral cis bis ais bis cis bis ais gis ais4 ~ ais16 gis fis ais
  | gis fis eis gis fis eis dis fis eis8 gis \stemUp\tieUp cis4
  | g'8\rest e!16 cis ais4 d8\rest ais16 cis e!4
  %30
  | dis8 gis cis,[ fisis] gis, gis'16 fisis! gis ais b! gis
  | \stemNeutral eis fis gis eis cis dis eis cis ais b cis ais fis' gis ais fis
  | dis eis fis dis bis cis dis bis gis ais bis gis eis' fis gis eis
  | cisis dis eis cisis ais bis cisis! ais fis gis ais fis dis' eis fis dis
  | bis cis dis bis gis ais bis gis eis fis gis eis cis eis gis ais
  %35
  | b! ais gis ais fis'8 cis ais gis16 fis gis cis, eis gis
  | ais gis fis gis eis'8 cis gis fis16 eis fis bis, dis fis
  | gis fis eis fis dis'8 bis fis eis16 dis eis gis ais bis
  | cis dis eis dis fis eis dis cis gis'2\trill~
  | \stemUp gis16 gis fis gis eis gis dis gis cis, gis' bis, ais bis dis eis fis
  %40
  | gis fis eis gis dis gis cis, gis' bis, gis' ais, gis ais cis dis eis
  | fis eis dis eis cis dis bis dis ais dis gis, fisis gis bis cis dis
  | \stemNeutral eis fis gis ais bis,8 \highlightSubject { gis ais16 gis fis gis eis'8 cis
  | gis fis16 eis fis8 dis' eis,[ cis'] dis, bis'
  | \unHighlightSubject \stemUp cis, } cis'16 bis cis dis eis fis gis fis eis fis gis fis eis dis
  %45
  | eis4 ~ eis16 dis cis eis dis cis bis dis cis bis cis ais
  | bis8 dis fis2 eis4~
  | eis4 dis4 ~ dis8 cis bis[ dis~]
  | dis gis, cis[ b!] ais2~
  | ais8 ais16 fis \once\override Tie.extra-offset = #'(0 . 1.5) dis4~ dis8 dis gis4~
  %50
  | gis8 gis16 eis \once\override Tie.extra-offset = #'(0 . 1.5) cisis4~ cisis8 ais fis'4~
  | fis16 eis fis dis dis'4 ~ dis16 cis bis dis cis gis ais \highlightSubject { b!
  | \stemNeutral ais gis fis gis eis'8 cis gis fis16 eis fis8 dis'
  | eis, cis' dis, bis' \unHighlightSubject cis,16 } eis fis gis ais bis cis dis
  | e! dis cis dis e! fisis gis ais cis, bis ais gis dis'8 fis,
  %55
  | << { eis8[ cis'] } \\ { s \once\stemUp \once\override NoteColumn.force-hshift = #0.2 gis } >>
    \once\override NoteColumn.force-hshift = #0 dis[ bis'] <eis, gis cis>2
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-8
  %1
  | R1*2
  | e4\rest c'8\rest \highlightSubject { cis8 eis16 dis cis dis bis'8 gis
  | dis cis16 bis cis8 ais' bis,[ gis'] ais, fisis'
  %5
  | \unHighlightSubject gis, } gis'16 fisis gis ais bis gis cis bis ais bis cis bis ais gis
  | ais4 ~ ais16 gis fis ais gis fis eis gis fis eis fis dis
  | eis4 r8 gis cis4. cis16 ais
  | dis,4 r8 fisis bis4. bis16 gis
  | cis,4 r8 eis ais4 ~ ais16 cis dis ais
  %10
  | bis4 r8 gis ~ gis16 fisis eis fisis gis fisis eis dis
  | eis4 ~ eis16 dis cis eis dis cis bis dis cis bis cis ais
  | bis8 dis gis4
    \change Staff = "lower" \voiceOne
    d8\rest b!16 gis eis4
  | g8\rest eis16 gis b!4 ais8[ b!] ais cisis,!
  | dis4 g4\rest b2\rest
  %15
  | s1
  | \change Staff = "upper" \voiceTwo
    cis4 r8 eis ais4 ~ ais16 cis dis ais
  | bis8 a,8\rest r8 dis gis4 ~ gis16 bis cis gis
  | ais8 g,8\rest b8\rest cis \once\override Tie.extra-offset = #'(0 . -0.5) fisis4~ fisis16 ais bis fisis
  | gis4 r8 \highlightSubject { bis, cis16 bis ais bis gis'8 eis
  %20
  | bis8 ais16 gis ais8 fisis'! gis,[ eis'] fisis, disis'!
  | \change Staff = "lower" \voiceOne
    \unHighlightSubject eis,4. } disis8 eis[ disis!] eis ais
  | gis fisis16 eis fisis8 ais gis16 ais bis gis eis fis gis eis
  | cisis dis eis cisis ais cisis eis ais dis, fis ais cisis dis eis fis dis
  | bis cis dis bis gis4 ~ gis16 gis ais bis cis8 d\rest
  %25
  | \change Staff = "upper" \voiceTwo
    r4 bis'2 ais4~
  | ais8 gis fisis[ ais] dis,16 g,16\rest a8\rest
    \change Staff = "lower" \voiceOne
    c8\rest \highlightSubject { gis
  | ais16 gis fis gis eis'8 cis gis fis16 eis fis8 dis'
  | eis, cis' dis, bis' cis4 } c8\rest
    \change Staff = "upper" \voiceTwo
    gis''16 eis
  | cis4 r8 cis16 ais fisis4 r8 cis'8
  %30
  | b!4 ais gis8 r8 r4
  | \change Staff = "lower" \voiceOne
    b,8\rest b16 gis eis8 b'\rest b\rest ais16 fis dis8 c'\rest
  | c\rest ais16 fis dis8 a'\rest a\rest gis16 eis cisis8 b'\rest
  | a\rest gis16 eis cisis8 a'\rest a\rest fis16 dis bis8 a'\rest
  | a\rest fis16 dis bis8 a'8\rest a2\rest
  %35
  | \stemNeutral\tieNeutral d,8\rest b'!16 cis, ais' cis, gis' cis, fis cis eis dis eis8 gis,
  | d'8\rest ais'16 cis, gis' cis, fis cis eis cis dis cis dis8 gis, |
  | d'8\rest gis16 gis, fis' gis, eis' gis, dis' gis, cis bis cis gis eis' dis
  | eis gis, gis' fis gis gis, ais' gis, bis' cis dis bis gis bis dis eis
  | \change Staff = "upper" \voiceTwo
    fis eis dis eis cis'8 gis eis dis16 cis dis gis, cis dis
  %40
  | eis dis cis dis bis'8 gis
    \change Staff = "lower"
    dis cis16 bis cis gis bis cis
  | dis cis bis cis
    \change Staff = "upper"
    ais'8 fisis
    \change Staff = "lower"
    cis bis16 ais bis gis ais bis
  | cis dis eis dis fis eis dis cis fis8 ais,16 bis cis bis ais gis
  | ais4 ~ ais16 gis fis ais gis fis eis gis fis eis fis dis
  | \change Staff = "upper" \voiceTwo
    d4\rest b'8\rest cis16
    \highlightSubject { dis eis dis cis dis bis'8 gis
  %45
  | dis cis16 bis cis8 ais' bis,[ gis'] ais, fisis'
  | \unHighlightSubject gis,8 } gis'16 fis gis ais bis gis cis bis ais bis cis bis ais gis
  | ais4 ~ ais16 gis fis ais gis fis eis gis fis eis fis dis
  | eis2 ~ eis8[ cis] fis eis
  | fis4. fis16 dis gis,4 r8 bis
  %50
  | eis4. eis16 cisis! fis,4 r8 ais
  | dis4~ dis16 fis gis dis eis4
    \change Staff = "lower" \voiceOne
    c8\rest cis~
  | cis16 bis ais bis cis bis ais gis ais4~ ais16 gis fis ais
  | gis fis eis gis fis eis dis fis eis gis ais bis cis bis ais gis
  | fisis gis ais fisis dis4 ~ dis16 dis eis fis gis ais bis gis
  | \change Staff = "upper" \voiceTwo
    cis8[ cis]
    \once\override NoteColumn.force-hshift = #1.1 <fis ais> <fis gis> cis2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*4
  %5
  | r4 r8 \highlightSubject { gis ais16 gis fis gis eis'8 cis
  | gis fis16 eis fis8 dis' eis,[ cis'] dis, bis'
  | \unHighlightSubject cis, } cis'16 bis cis dis eis cis ais bis cis ais fisis gis ais fisis
  | bis,8 bis'16 ais bis cis dis bis gis ais bis gis eis fisis gis eis
  | ais,8 ais'16 gis ais bis cis ais fisis gis ais fisis dis eis fisis! dis
  %10
  | gis,8 gis'16 ais bis8 gis cis4 bis
  | ais8 gis fisis4 gis dis
  | gis r8 dis'16 bis gis4 g,8\rest gis'16 eis
  | cisis4 r8 eis fis[ gis] ais ais,
  | dis,4 g8\rest \highlightSubject { dis' fis16 eis dis eis cis'8 ais
  %15
  | eis dis16 cis dis8 bis' cis,[ ais'] \unHighlightSubject bis, } gisis'
  | \stemNeutral ais, ais'16 gisis ais bis cis ais fisis gis ais fisis dis eis fisis! dis
  | gis,8 gis'16 fisis gis ais bis gis eis fisis! gis eis cis dis eis cis
  | fisis,8 fisis'!16 eis fisis gis ais fisis disis eis fisis! disis bis cisis! disis! bis
  | eis, fisis gis ais bis cisis disis bis eis disis cisis disis eis dis cis bis
  %20
  | cis4~ cis16 bis ais cis bis ais gis bis ais gis ais fisis
  | \stemDown gis8 cis fisis,[ bis] eis, ais gis[ cis]
  | bis2 eis4 g,4\rest
  | \once\override MultiMeasureRest.staff-position = #-8 R1
  | g4\rest g16\rest gis ais bis cis4 ~ cis16 dis eis fisis
  %25
  | \stemNeutral\tieNeutral gis fisis eis fisis gis fisis! eis dis eis4 ~ eis16 dis cis eis
  | dis cis bis dis cis bis ais cis bis8 dis \stemDown\tieDown fis4~
  | fis4 eis2 dis4~
  | dis8 cis dis[ gis,] cis16 dis eis fis eis dis cis eis
  | ais gis fisis ais cis b! ais cis e!8 dis16 cis b! ais gis fisis!
  %30
  | \stemNeutral gis b! ais gis fisis eis dis cis b! cis dis b gis8 gis'16[ eis]
  | \stemDown cis8 a\rest a\rest cis16 ais fis8 g\rest g\rest fis'16 dis
  | bis!8 g\rest g\rest bis16 gis eis8 f\rest f\rest eis'16 cisis!
  | ais8 f\rest f\rest ais16 fis dis8 d\rest d\rest dis'16 bis
  | gis8 d\rest d\rest gis16 eis cis4 c4\rest
  %35
  | s1*9
  | eis'8. gis16 ais bis cis8~ cis4 bis~
  %45
  | bis ais~ ais8[ gis] ais dis,
  | gis4 r8 \highlightSubject { gis ais16 gis fis gis eis'8 cis
  | \stemNeutral gis fis16 eis fis8 dis' eis,[ cis'] \unHighlightSubject dis, } bis'
  | cis,16 gis cis dis eis fis gis eis fis fis, fis' eis fis gis ais fis
  | dis eis fis dis bis cis dis bis eis,8 eis'16 dis eis fis gis eis
  | cisis dis eis cisis ais bis cisis! ais dis,8 dis'16 cisis!	 dis eis fis dis
  | bis cis dis bis gis ais bis gis cis,8 cis'16 dis \stemDown eis8 cis
  | fis4 eis dis8 cis bis4
  | cis gis ais8 g\rest g4\rest
  | g4\rest g16\rest cis bis ais gis4 g4\rest
  | \stemNeutral r8 eis8 fis[ gis] cis,2
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 848"
    title = \markup { "Fuga III " \char ##x007E " à 4" }
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
    \tempo 4 = 104
  }
}
