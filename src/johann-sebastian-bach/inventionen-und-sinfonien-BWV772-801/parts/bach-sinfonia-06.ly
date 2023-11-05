Global = {
  \key e \major
  \time 9/8
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

voiceOneOssia = \relative c'' {
  %1
}

voiceThreeOssia = \relative c {
  %1
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #4
  %\override Rest.staff-position = #0
  \stemUp\tieUp
  %1
  | R1*9/8
  | b8 cis dis e fis gis fis gis e
  | dis4. cis2.
  | b a4.~
  %5
  | a gis2.
  | cis dis4.
  | e2. dis4.~ dis cis2.
  | bis4. cis2.~
  | cis8 dis e fis gis a gis a fis
  %10
  | e gis dis e gis bis, cis e4~
  | e4. g4\rest g8\rest e!4.~
  | e dis2.~
  | dis4. cis b~
  | b ais cis~
  %15
  | cis2. g'4\rest g8\rest
  | b8 ais gis fis e dis e cis dis
  | b4.\prall b4\rest b8\rest b4\rest b8\rest
  | \override MultiMeasureRest.staff-position = #2
    R1*9/8
  | fis8 gis a b cis d cis d b
  %20
  | a b cis d e fis e fis d
  | cis dis! e fis gis a gis a fis
  | e2.~ e4.~
  | e8 e dis cis b a b a cis
  | dis4.~ dis8 e fis gis fis a
  %25
  | b,2.~ b4.
  | a2. gis4.~
  | gis fis2.~ \tieDown
  | fis4. e \tieUp dis~
  | dis2.~ dis4.~
  %30
  | dis8 cis dis e fis gis fis gis e
  | \tieUp a2.~ a4.~
  | a8 fis gis a b cis b cis a
  | dis4.\fermata b4\rest b8\rest b4\rest b8\rest
  | \stemDown e8 dis cis \stemUp b a gis a gis b
  %35
  | \stemDown cis4. b4\rest b8\rest b4\rest b8\rest
  | b'8 a gis fis e dis e dis fis~
  | fis16 e dis cis gis'8~ gis16 fis e dis a'8~ a16 gis fis e b'8~
  | \stemUp b b, cis dis e fis e fis dis
  | e4. r4 r8 fis,4 a8
  %40
  | \override Script.X-offset = #4
    gis2.~\fermata
    gis4.
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  %\override Rest.staff-position = #0
  \stemDown\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | e8 fis gis a b cis b cis a
  | \staffLower gis2. ais4.
  | \staffUpper b2. a!4.~
  | a gis2.
  %5
  | fis e4.~
  | e8 fis gis a b cis b cis a
  | gis4. fis2.
  | e dis4.~
  | dis8 e fis gis a b a b gis
  %10
  | fis4. \staffLower bis,2.
  | cis4. \staffUpper c4\rest r8 r4 gis'8
  | ais cis gis ais cis eis, fis ais4~
  | ais4. b fis
  | e2. dis4.
  %15
  | e2.~ e4.~
  | e8 fis gis ais b cis b cis ais
  | b2. ais4.
  | b4. s s
  | b,8 cis dis e fis gis fis gis e
  %20
  | \staffLower dis4. eis2.
  | fis \staffUpper gis4.
  | a a4\rest a8\rest a4\rest a8\rest
  | cis b a gis fis e fis e gis
  | a2.~ a4.~
  %25
  | a2.~ a4.~
  | \hideStaffSwitch a8 \staffLower gis fis e d cis d b cis
  | cis dis! e dis e cis b cis dis
  | cis dis b a b cis b cis a
  | \staffUpper gis2. fis4.~
  %30
  | fis8 \staffLower dis e fis gis a gis a fis \showStaffSwitch
  | e4. \staffUpper cis'2.~
  | cis8 a b cis dis e dis e cis
  | b4. fis'2.~
  | fis4. s s
  %35
  | \staffLower e,8 fis gis a b cis b cis a
  | g4. c4\rest d8\rest c4\rest d8\rest
  | b8\rest fis gis! a b cis b cis a
  | gis4. a b
  | cis8 dis e \staffUpper fis gis a gis a fis
  %40
  | gis4. r4 r8 cis,8 dis4
  | e2.~ e4.
    \fine
}

VoiceThree = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | \stemDown e2. dis4.
  | e cis fis
  | b,8 cis dis e fis gis fis gis e
  | dis e fis e fis dis cis dis e
  %5
  | dis e cis b cis dis cis dis b
  | a4. fis b
  | e,8 fis gis a b cis b cis a
  | gis a b a b gis fis gis a
  | gis4. e fis
  %10
  | dis2. gis4.
  | cis,4. r4 r8 e4.
  | fis r4 r8 r4 cis'8
  | dis fis cis dis fis ais, b dis fis,
  | gis b fis gis b dis, e gis b,
  %15
  | \stemNeutral cis e b cis e gis, ais cis e,
  | fis4. e' r
  | dis e fis
  | b,8 cis dis e fis gis fis gis e
  | dis e fis gis fis e \tieDown a4.~
  %20
  | a gis cis
  | fis, b2.
  | a8 gis fis e dis cis bis cis dis
  | cis4. r4 r8 r4 r8
  | fis4. r4 r8 r4 r8
  %25
  | b8 a gis fis e dis e dis fis
  | \tieDown gis2.~ gis4.~
  | gis fis2.
  | e dis4.
  | e8 dis cis b a gis a gis b
  %30
  | \stemDown bis,4. c4\rest c8\rest c4\rest c8\rest
  | cis4. c4\rest c8\rest c4\rest c8\rest
  | \stemNeutral fis4. r4 r8 r4 r8
  | dis4. r4 r8 r4 r8
  | a'4.\fermata r4 r8 r4 r8
  %35
  | \stemDown gis4. g4\rest g8\rest g4\rest g8\rest
  | ais8 cis dis e fis g! fis g e
  | dis4. b4\rest b8\rest b4\rest b8\rest
  | e4. fis gis
  | a r4 r8 r4 r8
  %40
  | r8 b fis gis dis e \stemUp ais, b b,
  | \override Script.X-offset = #4
    e2.~\fermata
    e4.
    \fine
}

\score {
  <<
  \new Staff = "ossiaupper" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
  }
  { \voiceOneOssia }
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
        \VoiceTwo
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceThree
      >>
    >>
  }
  \new Staff = "ossialower" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
    \clef bass
  }
  { \voiceThreeOssia }
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 792"
    title = \markup { "Sinfonia VI (E-Dur)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4. = 126
  }
}
