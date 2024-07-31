Global = {
  \key cis \major
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | eis16 cis gis cis eis cis
  | \repeat unfold 3 { fis cis }
  | \repeat unfold 3 { gis' cis, }
  | \repeat unfold 3 { ais' cis, }
  %5
  | \repeat unfold 3 { gis' cis, }
  | fis eis dis eis fis dis
  | eis dis cis dis eis cis
  | dis eis dis cis bis ais
  | gis4 gis'8
  %10
  | ais,4 gis'8
  | bis,4 gis'8
  | cis,4 gis'8
  | bis,4 gis'8
  | ais,4 fisis'8
  %15
  | gis,4 gis'8~
  | gis fis!16 eis dis eis
  | fis dis ais dis fis dis
  | \repeat unfold 3 { gis dis }
  | \repeat unfold 3 { ais' dis, }
  %20
  | \repeat unfold 3 { b' dis, }
  | \repeat unfold 3 { ais' dis, }
  | gis fis eis fis gis eis
  | fis eis dis eis fis dis
  | eis fis eis dis cis bis
  %25
  | ais4 ais'8
  | bis,4 ais'8
  | cis,4 ais'8
  | dis,4 ais'8
  | cis,4 ais'8
  %30
  | bis,4 gisis'8
  | ais,4 ais'8~
  | ais gis! fisis
  | gis gis, gis'~
  | gis fis! eis
  %35
  | fis16 eis dis eis fis dis
  | gisis fisis eisis fisis gisis eisis
  | ais gisis ais bis ais gis
  | fisis eis dis eis fisis dis
  | gis8 gis, gis'~
  %40
  | gis fis! eis
  | fis fis, fis'~
  | fis eis dis
  | eis16 dis cis dis eis cis
  | fisis eis dis eis fisis dis
  %45
  | gis fisis gis ais gis fis
  | eis dis cis dis eis cis
  | fis,4 fis'8
  | gis,4 fis'8
  | ais,4 fis'8
  %50
  | b,!4 fis'8
  | ais,4 fis'8
  | gis,4 eis'8
  | fis,4 fis'8~
  | fis eis16 dis cis dis
  %55
  | eis16 cis gis cis eis cis
  | \repeat unfold 3 { fis cis }
  | \repeat unfold 3 { gis' cis, }
  | \repeat unfold 3 { ais' cis, }
  | \repeat unfold 3 { gis' cis, }
  %60
  | fis eis dis eis fis dis
  | eis dis cis dis eis cis
  | dis eis dis cis bis ais
  | \stemUp
    \repeat unfold 2 {
      bis gis16 r gis[ g\rest gis]
    }
  %65
  | \repeat unfold 2 {
      cis gis16 r gis[ g\rest gis]
    }
  | \stemNeutral
    \repeat unfold 2 {
      fis' gis,16 b\rest gis[ g\rest gis]
    }
  | \stemUp
    \repeat unfold 2 {
      eis' gis,16 d'\rest gis,[ a\rest gis]
    }
  %71
  | \repeat unfold 2 {
      fisis' ais,16 d\rest ais[ b\rest ais]
    }
  | \stemNeutral
    \repeat unfold 2 {
      gis' bis,16 r bis[ r bis]
    }
  %75
  | gis' cis, r gis r cis
  | r eis[ f\rest gis g\rest ais]
  | b! ais gis fis eis dis
  | eis fis gis b! ais gis
  | ais dis, r fis, r ais
  %80
  | r dis[ f\rest fis g\rest gis]
  | a! gis fis e! dis cis
  | dis e! fis a! gis fis
  | gis cis, r e! r cis
  | r a![ r fis r dis']
  %85
  | r gis,[ a\rest e! r cis']
  | r a![ g\rest fis f\rest dis]
  | \change Staff = "lower" \stemUp
    \repeat unfold 2 {
      bis gis e'\rest gis,[ a\rest gis]
    }
  | \repeat unfold 2 {
      cis gis d'\rest gis,[ a\rest gis]
    }
  %91
  \repeat unfold 2 {
  | \change Staff = "upper" \stemDown fis' \change Staff = "lower" \stemUp gis, c\rest gis c\rest gis
  }
  \repeat unfold 2 {
  | \change Staff = "upper" \stemDown eis' \change Staff = "lower" \stemUp gis, d'\rest gis, c\rest gis
  }
  %95
  \repeat unfold 2 {
  | \change Staff = "upper" \stemDown fisis' \change Staff = "lower" \stemUp ais, d\rest ais c\rest ais
  }
  \break
  | s8. fis16 a bis
  | \change Staff = "upper" \stemNeutral \stemDown cis e fisis \stemUp ais[ cis e]
  | \stemNeutral bis dis fis dis bis gis
  | fis dis bis s8.
  \break
  | eis!16 gis cis gis eis cis
  | s4.
  %100
  | r8 <eis! gis cis> <dis gis bis>
  | <cis gis' cis>4.
    \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | cis4 cis'8
  | dis,4 cis'8
  | eis,4 cis'8
  | fis,4 cis'8
  %5
  | eis,4 cis'8
  | dis,4 bis'8
  | cis,4 cis'8~
  | cis8 bis16 ais gis ais
  | bis gis dis gis bis gis
  %10
  | \repeat unfold 3 { cis gis }
  | \repeat unfold 3 { dis' gis, }
  | \repeat unfold 3 { eis' gis, }
  | \repeat unfold 3 { dis' gis, }
  | cis bis ais bis cis ais
  %15
  | bis ais gis ais bis gis
  | ais b! ais gis fis eis
  | dis4 dis'8
  | eis,4 dis'8
  | fis,4 dis'8
  %20
  | gis,4 dis'8
  | fis,4 dis'8
  | eis,4 cisis'8
  | dis,4 dis'8~
  | dis cis!16 bis ais bis
  %25
  | cis ais eis ais cis ais
  | \repeat unfold 3 { dis ais }
  | \repeat unfold 3 { eis' ais, }
  | \repeat unfold 3 { fis' ais, }
  | \repeat unfold 3 { eis' ais, }
  %30
  | dis cis bis cis dis bis
  | cis bis ais bis cis ais
  | disis cisis bis cisis disis bis
  | eis disis eis fisis eis dis
  | cisis bis ais bis cisis ais
  %35
  | dis8 dis, dis'~
  | dis cis! bis
  | cis cis, cis'~
  | cis bis ais
  | bis16 ais gis ais bis gis
  %40
  | cisis bis ais bis cisis ais
  | dis cisis dis eis dis cis
  | bis ais gis ais bis gis
  | cis8 cis, cis'~
  | cis b! ais
  %45
  | b! b,! b'~
  | b ais gis
  | ais16 fis cis fis ais fis
  | \repeat unfold 3 { b fis }
  | \repeat unfold 3 { cis' fis, }
  %50
  | \repeat unfold 3 { dis' fis, }
  | \repeat unfold 3 { cis' fis, }
  | b! ais gis ais b gis
  | ais gis fis gis ais fis
  | gis ais gis fis eis dis
  %55
  | cis4 cis'8
  | dis,4 cis'8
  | eis,4 cis'8
  | fis,4 cis'8
  | eis,4 cis'8
  %60
  | dis,4 bis'8
  | cis,4 cis'8~
  | cis8 bis16 ais gis ais
  \repeat unfold 2 {
  |  gis8 fis' dis
  }
  %65
  \repeat unfold 2 {
  | gis, eis' cis
  }
  \repeat unfold 2 {
  | gis dis' bis
  }
  \repeat unfold 2 {
  | gis eis' cis
  }
  %71
  \repeat unfold 2 {
  | gis e'! cis
  }
  | gis dis' bis
  | fis dis' bis
  %75
  | eis, eis' cis
  | gis eis dis
  | cisis eis ais
  | cisis eis gis
  | fis dis ais
  %80
  | fis dis cis
  | bis! dis gis
  | bis dis fis
  | e! cis a!
  | fis dis' bis
  %85
  | e,! cis' a!
  | fis dis bis
  | \stemDown
  \repeat unfold 2 {
    gis fis' dis
  }
  \repeat unfold 2 {
  | gis, eis' cis
  }
  %91
  \repeat unfold 2 {
  | gis dis' bis
  }
  \repeat unfold 2 {
  | gis eis' cis
  }
  %95
  \repeat unfold 2 {
  | gis e'! cis
  }
  | gis16 bis dis s8.
  | s4.
  | \stemNeutral gis,8 r r
  %100
  | s8. gis'16 bis dis
  | gis,8 r r
  | \stemUp ais16 fisis e \stemDown cis[ e fisis]
  << {
  | \stemDown gis,4.
  } \\ {
    \stemUp e'8\rest <cis eis gis> <dis fis gis>
  } >>
  | <cis eis gis>4.
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
    opus = "BWV 848"
    title = \markup { "Praeludium III." }
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
    \tempo 4. = 92
  }
}
