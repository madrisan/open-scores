Global = {
  \key cis \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #4
  %1
  | s1*13
  | \once\override Voice.Rest.X-offset = #-0.4
    d2\rest \highlightSubject { cis
  %15
  | bis e
  | \shiftOn dis1 }
  | cis2. \shiftOff dis4
  | e dis cis2
  | b cis
  %20
  | dis \once\override Voice.Rest.X-offset = #-0.4 d\rest
  | es4\rest e dis cis
  | b dis gis2~
  | gis4 fis gis a
  | b1~
  %25
  | b4 a gis fis
  | gis8 fis e dis
    \once\override Tie.extra-offset = #'(0 . 1.4)
    cis2~
  | cis b~
  | b4 cis b a
  | gis2 ais4 b
  %30
  | cis2 b~
    \noBreak
  | b ais
  | \once\override Tie.extra-offset = #'(0 . 1.4)
    b1~
  | b4 cis dis e~
  | e2 dis
  %35
  | e4 dis e fis
  | gis8 fis gis a gis fis e gis
  | fis e fis gis fis e dis fis
  | e dis e fis e dis cis e
  | dis cis dis e dis cis b dis
  %40
  | cis b cis dis cis b ais cis
  | b2~ b8 cis dis b
  | cis2~ cis8 dis e cis
  | dis2~ dis8 e fis dis
  | e1~
  %45
  | e4 dis2 \tieDown cis4~
  | \stemDown
    \once\override NoteColumn.force-hshift = #0.3
    cis bis8 ais bis4 dis~
  | dis2 cis~
  | cis bis4 b~
  | b8 b cis d cis b
    \change Staff = "lower" \once\stemUp a
    \change Staff = "upper" cis
  %50
  | b a b cis b a
    \change Staff = "lower" \once\stemUp gis
    \change Staff = "upper" b
  | a2~ a8 cis b a
  | g'4\rest \stemUp\tieUp cis, fis fis
  | fis e8 d e2~
  | e4 d8 cis d2~
  %55
  | d cis
  | fis e~
  | e4. fis8 e d cis e
  | d cis d e d cis b d
  | \highlightSubject { cis1
  %60
  | bis2 e
  | \unHighlightSubject dis1~ }
  | dis4 gis, cis cis
  | cis b8 a b2~
  | b a
  %65
  | gis b\rest
  | \highlightSubject { dis1
  | cisis2 fis
  | eis } e
  | dis8 cis dis e dis cis b dis
  %70
  | cis b cis dis cis e dis cis
  | bis2 b
  | ais a
  | gis \once\override Voice.Rest.X-offset = #-0.4 d'\rest
  | R1*2
  %76
  | \highlightSubject { cis1
  | bis2 e
  | \unHighlightSubject dis1~ }
  | dis2 cis~
  %80
  | cis bis
  | f'4\rest cis8 dis e4 fis
  | gis8 fis gis a gis fis e gis
  | fis e fis gis fis e dis fis
  | e dis e fis e d cis e
  %85
  | d cis d e d cis b d
  | cis b cis d cis b a cis
  | b a b cis b a gis b
  | a2 d\rest
  | \highlightSubject { cis1
  %90
  | bis2 e
  | \unHighlightSubject dis1~ }
  | dis4 cis8 bis gis'4 gis
  | gis fis8 e fis2
  | \highlightSubject { e1
  %95
  | dis2 g
  | fis2 } d!
  | cis1
  | R
  | b'4\rest bis, fis' fis
  %100
  | fis e8 dis e4 dis8 cis
  | dis4 bis cis2~
  | cis1
  | bis2 b
  | ais a
  %105
  | gis1
  | ais2 bis
  | \highlightSubject { cis1
  | bis2
    \once\override Tie.extra-offset = #'(0 . 1)
    e~
  | e dis4 } cis
  %110
  | bis2 cis~
  | cis bis
  | cis1~
  | cis~
  | cis~
  %115
  | cis\fermata
    \fine
}

Mezzosoprano = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  %1
  | s1*11
  | \clef treble
    g2\rest \highlightSubject { gis
  | eis a
  | gis }
    \once\override Tie.extra-offset = #'(0 . 0.4)
    \shiftOn fis_~
  %15
  | fis \tieDown cis'~
  | \shiftOff cis b^~
  | b a
  | \shiftOn gis
    \once\override Tie.extra-offset = #'(0 . 0.4)
    a~
  | a4 gis fis e
  %20
  | ais2 gis^~
  | \stemDown\tieDown gis fisis
  | gis \change Staff = "lower" \stemUp b,
  | cis2. cis4
  | dis cis dis eis
  %25
  | \stemUp fis2 \change Staff = "upper" \stemDown a
  | gis e8\rest b' a gis
  | fis4 a gis fis
  | eis2
    \once\override Tie.extra-offset = #'(0 . 0.4)
    fis~
  | fis4 e \stemDown e2~
  %30
  | e dis
  | \shape #'((1 . 0.6) (0 . 0.6) (0 . 0.4) (0 . 0)) Tie
    e1~
  | \stemUp e4 dis e fis8 gis
  | fis2
    \shape #'((0.6 . 0.6) (0 . 0.6) (0 . 0.6) (-0.6 . 0.6)) Tie
    b~
  | b4 cis b a
  %35
  | gis2 g\rest
  | s1*2
  | g2\rest s
  | \override MultiMeasureRest.staff-position = #-6 R1
  %40
  | \override MultiMeasureRest.staff-position = #-8
    R1*2
  | \once\override Voice.MultiMeasureRest.X-offset = #0.4 R1
  | \once\override Voice.MultiMeasureRest.X-offset = #0 R1
  | b2\rest \stemDown \highlightSubject { cis
  %45
  | bis e
  | dis1 }
  | \stemUp\tieUp gis8 fis gis a gis fis e gis
  | fis e fis gis fis e dis fis
  | eis2 a
  %50
  | gis1~
  | gis4 fis8 e d2
  | \stemDown\tieDown gis,2 g\rest
  | \override MultiMeasureRest.staff-position = #-6 R1
  | g2\rest \highlightSubject { a
  %55
  | gis cis
  | b1~ }
  | b4 e, a a
  | a gis8 fis gis2~
  | gis4 cis,8 dis! e4 fis
  %60
  | gis8 fis gis a gis fis e gis
  | fis e fis gis fis e
    \hideStaffSwitch \change Staff = "lower" \once\stemUp dis
    \change Staff = "upper" fis
  | e dis e fis e dis
    \change Staff = "lower" \once\stemUp cis
    \change Staff = "upper" e
  | dis cis dis e d cis
     \change Staff = "lower" \once\stemUp b
      \change Staff = "upper" d
  | cis b cis d cis e dis cis
  %65
  | bis2 cis
  | dis4 dis gis8 ais b4~
  | b ais dis dis
  | dis cis8 b cis2~
  | cis b
  %70
  | ais a~
  | a4 dis, gis gis
  | gis fis8 e fis2~
  | fis \stemUp e
  | dis cis
  %75
  | \showStaffSwitch \change Staff = "lower" %\stemUp\tieUp
    %d2\rest \shiftOff gis,~
    \override MultiMeasureRest.staff-position = #4 R1
  | %\once\override NoteColumn.force-hshift = #-0.2 gis8 g\rest g4\rest f2\rest
    R1
  | \change Staff = "upper" \stemDown\tieDown
    \once\override Voice.Rest.X-offset = #1.5 a4\rest
    gis' cis cis
  | cis4 bis8 ais bis cis dis bis
  | gis fis gis a gis fis e gis
  %80
  | fis e fis gis fis e dis fis
  | e gis a b cis dis bis cis
  | dis4 g,\rest g2\rest
  | \override MultiMeasureRest.staff-position = #-2 R1*2
  %85
  | e4\rest fis b \shiftOff b~
  | b a8 gis a2
  | gis1~
  | gis8 gis fis eis fis2
  | gis~ gis8 gis fis e
  %90
  | dis a' gis fis e gis cis b
  | a gis a fis gis2~
  | gis4 cis cis2~
  | cis4 ais dis dis~
  | dis cis8 b cis2
  %95
  | b2 b
  | ais \highlightSubject { fis
  | \stemUp \shiftOn eis a
  | gis4 } gis cis cis
  | cis \stemDown bis8 a bis cis
    \once\override Tie.extra-offset = #'(0 . 0.2)
    \shiftOff dis4~
  %100
  | \stemUp \shiftOn dis cis8 bis cis2
  | fis,	2
    \once\override Tie.extra-offset = #'(-0.2 . -0.3)
    gis^~
  | gis
    \once\override Tie.extra-offset = #'(0 . 0.5)
    fis~
  | fis4 b\rest gis gis
  | gis fis8 e! \stemDown fis4 fis
  %105
  | \stemUp\tieUp
    \once\override NoteColumn.force-hshift = #1.4 fis
    e8 dis e2~
  | e4 fis8 gis a4 gis~
  | gis e a a
  | a gis8 fis gis4 ais8 bis!
  | cis2 ais!
  %110
  | gis gis
  | \shape #'((0.4 . 0) (0 . 1.8) (0 . 0.8) (-0.5 . -0.4)) Tie
    gis1~
  | \once\override NoteColumn.force-hshift = #0.6 gis2 fis
  | eis a
  | gis1~
  %115
  | gis
}

Alto = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #-4
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  %1
  | s1*6
  | c2\rest \highlightSubject { cis
  | bis e
  | dis1 }
  %10
  | cis2 fis~
  | fis4 \stemDown\tieDown e dis cis
  | cis2 b
  | cis fis~
  | fis4 e dis cis
  %15
  | dis2 gis
  | d4\rest a' gis fis
  | eis cis fis2
  | e1~
  | e2 gis
  %20
  | dis c\rest
  | s1*4
  %25
  | b2\rest
    \change Staff = "lower" \stemUp\tieUp
    \highlightSubject { cis
  | bis e
  | dis1 }
  | cis~
  | cis
  %30
  | \change Staff = "lower" \stemUp
    \shiftOff fis,4 gis ais b
  | \change Staff = "upper" \stemDown
    cis1
  | g2\rest \highlightSubject { e'
  | dis gis
  | fis1 }
  %35
  | e2 e\rest
  | R1*2
  | e2\rest \highlightSubject { \stemDown\tieDown gis
  | fisis b
  %40
  | \unHighlightSubject ais1~ }
  | ais4 dis, gis2~
  | gis4 fis8 e fis2~
  | fis4 e8 fis gis2~
  | gis1~
  %45
  | gis
  | s1*3
  | \hideStaffSwitch \change Staff = "lower" \stemUp
    c,4\rest cis fis fis
  %50
  | fis eis8 dis eis2
  | fis4 fis,8 gis a4 b
  | cis8 b cis d cis b a cis
  | b a b cis b a gis b
  | a gis a b a b cis d
  %55
  | e d e fis e d cis e
  | d cis d e d cis b d
  | cis b cis d cis b a cis
  | b1
  | a8 gis fis e dis cis bis cis
  %60
  | c'4\rest gis cis cis
  | cis bis8 ais bis2
  | cis a
  | fis gis
  | eis fis
  %65
  | gis1
  | s1*3
  | a4\rest dis, gis gis
  %70
  | gis fis!8 e fis2~
  | fis8 a gis fis eis dis eis cis
  | fis eis fis gis a gis a b
  | \showStaffSwitch \change Staff = "upper" \stemDown
    cis bis cis dis e dis e fis
  | gis fis gis a gis fis e gis
  %75
  | fis e fis gis fis e dis fis
  | e dis e fis e dis cis e
  | dis2
    \once\override Voice.Rest.X-offset = #0.6 e\rest
  | s1*4
  %82
  | \hideStaffSwitch \change Staff = "lower" \stemUp\tieUp
    c4\rest gis cis cis
  | cis bis8 ais bis2
  | cis1
  %85
  | b2.
    \showStaffSwitch \change Staff = "upper" \stemDown
    \shiftOn fis'4
  | eis2
    \change Staff = "lower" \stemUp
    \once\override NoteColumn.force-hshift = #0 fis
  | b, cis~
  | cis~ cis8 cis b a
  | s1*6
  %95
  | e'4\rest b e e
  | e d8 cis b4 f'\rest
  | \change Staff = "upper" \stemDown\tieDown f,\rest cis' fis fis
  | fis e8 dis e2
  | \once\override Tie.extra-offset = #'(0 . -1)
    fis2.~ \once\override NoteColumn.force-hshift = #0.4 fis8 gis
  %100
  | a4 gis8 fis gis4 fis8 e
  | dis2 \once\omit Stem \highlightSubject { \shiftOff e~
  | e dis4 } cis
  | dis eis8 fis b,2\rest
  | c4\rest cis \stemUp dis cis
  %105
  | \stemDown bis2 cis~
  | cis dis
  | cis4 cis fis fis
  | fis e8 dis e4 fis8 gis
  | ais2 dis,~
  %110
  | dis e
  | dis2. e8 fis
  | eis4 cis~ cis2
  | cis4 cis fis fis
  | fis2 eis4 dis
  %115
  | eis1
}

Tenor = \context Voice = "four" \relative c {
  \voiceFour
  \stemUp\tieUp
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  \override Rest.staff-position = #0
  %1
  | \change Staff = "upper" \stemDown\tieDown
    \override MultiMeasureRest.staff-position = #0 R1*3
  | \clef bass
    \highlightSubject { gis'1
  %5
  | fisis2 b
  | ais1 }
  | gis2 a~
  | a4 gis8 fis gis4 cis
  | fis, gis8 a b2~
  %10
  | b4 a
    \change Staff = "lower" \stemUp\tieUp
    gis fis
  | gis2 fis4 e
  | dis2. d4
  | cis2 cis
  | cis f\rest
  %15
  | \override MultiMeasureRest.staff-position = #2
    R1*4
  | a2\rest \highlightSubject { gis
  %20
  | fisis
    \change Staff = "upper" \stemDown
    \once\override NoteColumn.force-hshift = #1.4 b
  | \change Staff = "lower" \stemUp
    ais1 }
  | gis4 \stemDown\tieDown a gis \highlightSubject { fis
  | eis2 a
  | gis1 }
  %25
  | fis~
  | \stemDown fis4 gis8 fis e4 fis8 gis
  | a4 fis \once\override Stem.length = #5.5 gis2
  | cis,1^~
  | \shape #'((0 . 0) (0 . 0) (0 . -0.5) (-0.8 . -1)) Tie
    cis^~
  %30
  | \stemUp\tieUp \shiftOn cis2 fis
  | e4 dis e fis
  | gis fis gis a!
  | \once\override Tie.extra-offset = #'(0 . 0.4)
    b1~
  | \once\override Tie.extra-offset = #'(0 . 0.4)
    b~
  %35
  | b2 \highlightSubject { cis
  | bis e
  | dis1 }
  | \stemDown cis1~
  | cis4 b ais gis~
  %40
  | gis fisis8 eis fisis2
  | gis8 ais gis fisis gis ais b gis
  | a b a gis ais b cis ais
  | b cis b ais bis cis dis bis
  | cis1
  %45
  | \override MultiMeasureRest.staff-position = #5
    R1*4
  | s1*2
  %51
  | b,2\rest \highlightSubject { \once\override Stem.length = #4.5 fis'
  | eis a
  | gis1 }
  | fis
  %55
  | a,4\rest e' a a
  | a gis8 fis gis2
  | a fis
  | b, e
  | a,1
  %60
  | \once\stemUp dis2 r
  | s1*3
  | f,4\rest cis' fis fis
  %65
  | \stemUp fis e8 dis e2
  | <dis fisis> <dis gis>
  | eis4 g\rest a2\rest
  | \override MultiMeasureRest.staff-position = #2 R1
  | s1*5
  %74
  | r4 gis, cis cis
  | cis bis8 a bis2
  | \shiftOff cis b\rest
  | \override MultiMeasureRest.staff-position = #5 R1*4
  %81
  | \highlightSubject { cis1
  | bis2 \shiftOn e
  | dis1 }
  | \stemDown\tieDown cis4 e a a
  %85
  | a gis8 fis
    \once\override Tie.extra-offset = #'(0 . 0.4)
    gis2~
  | \stemUp gis \once\override NoteColumn.force-hshift = #-1.4 fis
  | gis1
  | a2 s
  | gis1
  %90
  | gis
  | fis2 dis
  | e8 dis e fis e dis cis e
  | dis cis dis e dis cis bis dis
  | cis4 e a a
  %95
  | \stemDown a g8 fis e2
  | b4\rest fis' b b
  | \stemUp b a8 gis a gis fis e
  | dis2 c'4\rest gis
  | dis' dis dis cis8 bis
  %100
  | \highlightSubject { cis1
  | bis2 \change Staff = "upper" \stemDown \shiftOff e }
  | \change Staff = "lower" \stemUp\tieUp
    a,4\rest cis, fis fis
  | fis eis8 dis cis2~
  | cis dis~
  %105
  | dis4 dis gis gis
  | gis fis8 e fis4 fis~
  | fis e8 dis e4 dis8 cis
  | dis4 gis, cis cis
  | cis b8 ais dis2~
  %110
  | dis8 e fis4~ fis8 e dis cis
  | gis'1
  | a2. gis8 a
  | b!4 a gis fis
  | cis' b8 a gis4 fis
  %115
  | gis1
}

Bass = \context Voice = "five" \relative c {
  \voiceFive
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \highlightSubject { cis1
  | bis2 e
  | dis1 }
  | \stemDown\tieDown cis4 dis e2~
  %5
  | e4 dis8 cis dis4 gis
  | cis, dis8 e fis2~
  | fis4 e dis cis
  | dis2 cis~
  | cis4 b a gis
  %10
  | a2 ais
  | bis cis
  | gis4 a b2~
  | b4 a gis fis
  | cis'2 a~
  %15
  | a4 gis fis e
  | fis2 gis
  | a4 gis a b
  | cis b cis dis
  | e2 cis~
  %20
  | cis4 b ais gis
  | cis2 dis
  | gis, c,\rest
  | \override MultiMeasureRest.staff-position = #-6
    s1*6
  %29
  | d2\rest \highlightSubject { b'
  | ais dis
  | cis1 }
  | b~
  | b4 gis' fis e
  | b'2 b,
  %35
  | e a
  | gis cis~
  | cis bis
  | cis g,\rest
  | R1
  %40
  | \once\override MultiMeasureRest.extra-offset = #'(1.4 . 0)
    \override MultiMeasureRest.staff-position = #-8
    R1*2
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  | b4\rest cis8 dis e4 fis
  %45
  | gis8 fis gis a gis fis e gis
  | fis e fis gis fis e dis fis
  | e dis e fis e a gis a
  | dis, cis dis e dis gis fis gis
  | cis,2 b\rest
  | R1*6
  %56
  | \override MultiMeasureRest.staff-position = #-9 R1*4
  | gis2 g\rest
  | \override MultiMeasureRest.staff-position = #-6 R1*3
  | s1
  %65
  | g4\rest gis cis cis
  | cis4 b8 ais b ais gis b
  | ais gis ais b ais gis fis ais
  | gis fis gis ais gis b ais gis
  | fisis2 gis
  %70
  | ais dis
  | gis, g\rest
  | R1
  | \highlightSubject { cis,
  | bis2 e
  %75
  | dis1 }
  | cis4 cis8 dis e4 fis
  | \stemNeutral gis8 fis gis a gis fis e gis
  | fis e fis gis fis dis e fis
  | e4 e' a a
  %80
  | a gis8 fis gis4 gis,
  | \stemDown cis b a2
  | gis4 f\rest g2\rest
  | \override MultiMeasureRest.staff-position = #-8 R1*2
  %85
  | s1
  | b4\rest cis \once\override NoteColumn.force-hshift = #0 fis fis
  | fis eis8 dis eis2
  | fis fis~
  | fis8 fis e dis e4 cis
  %90
  | f,\rest gis cis cis
  | cis bis8 ais bis cis dis bis
  | e,2 e4\rest a
  | dis,2 d4\rest gis4
  | cis,4 d\rest d2\rest
  %95
  | s1*2
  | g2\rest \highlightSubject { cis
  | bis2 e
  | dis1 }
  %100
  | cis4 e a a
  | a gis8 fis e dis cis b
  | ais2 a~
  | a4 gis8 fis eis2
  | fis1
  %105
  | gis~
  | gis~
  | gis~
  | gis
  | fisis
  %110
  | gis
  | gis
  | cis~
  | cis~
  | cis~
  %115
  | cis_\fermata
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
      \Mezzosoprano
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
    opus = ##f % "BWV 849"
    title = \markup { "Fuga IV " \char ##x007E " à 5." }
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
    \tempo 2 = 60
  }
}
