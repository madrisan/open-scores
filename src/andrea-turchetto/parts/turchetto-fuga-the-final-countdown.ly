Global = {
  \key fis \minor
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | s1*14
  | fis4 fis'8 cis'16 b cis4 fis,~
  | fis4. d'16 cis d8 cis b4~
  | b4. d16 cis d4 fis,
  | gis4 r8 b16 a b8 a gis b
  | a4. gis16 a b4. a16 b
  %20
  | cis8 b a gis fis4 d'
  | cis2 cis16 d cis b cis4
  | fis, gis8 a gis4. fis8
  | fis,4. d'8 cis4 b
  | r8 d fis16 e d cis b4. a8
  %25
  | gis2~ gis16 e gis b e4~
  | e16 fis e cis a'4 cis4. d8
  | cis4 b8. a16 gis4 r16 e, gis b
  | e4. d8 cis2
  | cis~ cis4. b16 cis
  %30
  | a4. e'16 d e4 a,~
  | a4. fis'16 e fis8 e d4~
  | d4. fis16 e fis4 a,
  | b4 r8 d16 cis d8[ cis b d]
  | cis4. b16 cis d4. cis16 d
  %35
  | e8 d cis b a4 fis'
  | e2 e16 fis e d e4
  | gis16 fis e dis e4~ e8 b' e[ dis]
  | cis b a4~ a8. gis16 a4
  | fis'16 e8. a,4~ a16 gis a b cis4
  %40
  | a16 gis fis a b8 e, fis4. dis'8
  | e8 b e4 fis8. cis16 fis4
  | gis4. e16 dis e2~
  | e4 d8 cis d4. gis,8
  | a e cis'8. cis,16 e2
  %45
  | fis8.[ fis,16 gis a b8] r cis cis cis

  | R1*26
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \mergeDifferentlyDottedOn
  \override VoiceFollower.color = \grayTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | fis4. cis'16 b cis4 fis,~
  | fis4. d'16 cis d8 cis b4~
  | b4. d16 cis d4 fis,
  | gis4 b8\rest b16 a b8 a gis b
  %5
  | a4. gis16 a b4. a16 b
  | cis8 b a gis fis4 d'
  | cis2 cis16 d cis b cis4
  | e,16 dis cis b cis4~ cis8 gis' cis[ b]
  | a gis fis4~ fis8. eis16 fis4
  %10
  | d'16 cis8. fis,4~ fis16 eis fis gis a4
  | fis16 e dis fis gis8 cis, dis4. bis'8
  | cis gis cis4 dis8. a16 dis4
  | e4. cis16 bis cis2~
  | cis4 b8 a b4. eis,8
  %15
  | \stemDown\tieDown
    fis8 cis'16 d cis8 b a4 cis
  | b8[ cis d8. e16] fis4. e8
  | d4 fis2 d8 cis
  | b4 eis8 fis cis16 d cis4.~
  | cis8. b16 cis4 d2
  %20
  | fis4 cis d16 e d cis d8 fis
  | gis16 a gis fis gis2.
  | fis8 cis b8. cis16 a gis a4.
  | r16 a, b cis d8. e16 fis4 d
  | a8 fis'~ fis a b4 d,
  %25
  | b8. b16 e4 r8 e b' d
  | cis16 a8. cis4 e a
  | fis8 gis fis e d4 b8 r
  | e,4~ e8 fis16 gis a8. b16 a4
  | fis16 gis fis e fis2 gis4
  %30
  | a16 e8. cis2~ cis8 b16 cis
  | d8.[ e16 fis8 gis] a4 fis16 gis fis e
  | d8 fis16 e fis2 d16 cis d e
  | fis4 gis8. a16 gis fis e4.
  | a8. e16 cis4 fis16 gis fis e d4
  %35
  | a'16 e8.~ e4 fis16 e fis gis a8 d
  | b16 a b4. e,8.[ fis16 gis8 a]
  | b4 gis16 a gis fis gis8 r gis'4
  | a8. e16 cis b a8 e'4 cis8 a'
  | d8 cis cis4. e,8 a16 gis fis e
  %40
  | fis8 d gis cis~ cis[ b a8. fis16]
  | e8. fis16 gis4 cis8 a4 cis8
  | e8.[ gis,16  e'8 b~] b16 a gis fis e8 a
  | fis16 gis fis e fis4 gis8. fis16 e4
  | cis16 b cis8 e4 a,16 gis a b cis4
  %45
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    fis,,4 e8 d cis16 e a8 e'4

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*7
  | cis4. gis'16 fis gis4 cis,~
  | cis4. a'16 gis a8 gis fis4~
  %10
  | fis4. a16 gis a4 cis,
  | dis4 r8 fis16 e fis8 e dis fis
  | e4. dis16 e fis4. e16 fis
  | gis8 fis e dis cis4 a'
  | gis2 gis16 a gis fis gis4
  %15
  | a,16 gis fis eis fis4~ fis8 cis' fis[ e]
  | d cis b4~ b8. ais16 b4
  | gis'16 fis8. b,4~ b16 ais b cis d4
  | b16 a gis b cis8 fis, gis4. eis'8
  | fis8 cis fis4 gis8. d16 gis4
  %20
  | a4. fis16 eis fis2~
  | fis4 eis8 dis eis4. cis8
  | a4 gis fis e~
  | e d a'8[ fis16 a b8 d]
  | fis16 a8. d4 fis,16 e d cis b8. b16
  %25
  | e4. e,16 d e2~
  | e4 r16 a cis e a8[ b cis b16 cis]
  | d4 d,8 cis b8.[ a16 gis8 e16 d]
  | cis a cis e a4~ a8 gis fis[ e]
  | dis4. e8 d4 e8 e,
  %30
  | cis''16 b a gis a4~ a8 e' a[ gis]
  | fis e d4~ d8. cis16 d4
  | b'16 a8. d,4~ d16 cis d e fis4
  | d16 cis b d e8 a, b4. gis'8
  | a e a4 b8. fis16 b4
  %35
  | cis4. a16 gis a2 ~
  | a4 gis8 fis gis4 b,16 a gis fis
  | e4. b'16 a b4 e,~
  | e4. cis'16 b cis8 b a4~
  | a4. cis16 b cis4 e,
  %40
  | fis4 r8 a16 gis a8 gis fis a
  | gis4. fis16 gis a4. gis16 a
  | b8 a gis fis e4 cis'
  | b2 b16 cis b a b4
  | a4~ a8 e cis'8.[ cis,16 e8 a]
  %45
  | \stemDown\tieDown
    d8[ cis b8. gis16] a4. gis16 a

  | R1*26
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
    composer = "Andrea Turchetto"
    opus = ##f
    title = \markup { "Fugue on “The final countdown”" }
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
    \tempo 4 = 110
  }
}
