Global = {
  \key fis \minor
  \time 6/16
  \include "../global.ly"
}

CanonNotes = {
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | fis16 cis fis gis cis, gis'
  | a8.~ a8 eis16
  | fis gis a b cis d
  | cis8. eis8.~
  %5
  | eis16 fis cis gis' a b
  | a8. cis,8.~
  | cis8 dis16 e dis cis
  | dis16 fis, a gis8.
  | fis8 cis16 bis cis dis~
  %10
  | dis e fis gis8.
  | cis8.~ cis16 ais bis
  | cis dis eis fis8.~
  | fis16 eis gis a fis cis'
  | d,8. cis16 r r
  %15
  | r b a b cis d
  | cis8.~ cis8 gis16
  | a e fis gis a b
  | cis8. d,
  | cis16 d e fis a8~
  %20
  | a8 gis16 a cis,8
  | d16 fis eis fis8.~
  | fis16 a gis a b cis
  | d4.~
  | d16 fis e d cis b
  %25
  | cis8 g16 fis8.

  | R1*6/16*25
    \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*6/16
  | fis16 cis fis gis cis, gis'
  | a8.~ a8 eis16
  | fis gis a b cis d
  %5
  | \clef "treble" cis8. eis8.~
  | eis16 fis cis gis' a b
  | a8. cis,8.~
  | cis8 dis16 e dis cis
  | \clef "bass" dis16 fis, a gis8.
  %10
  | fis8 cis16 bis cis dis~
  | dis e fis gis8.
  | cis8.~ cis16 ais bis
  | \clef "treble" cis dis eis fis8.~
  | fis16 eis gis a fis cis'
  %15
  | d,8. cis16 r r
  | \clef "bass" r b a b cis d
  | cis8.~ cis8 gis16
  | a e fis gis a b
  | cis8. d,
  %20
  | cis16 d e fis a8~
  | a8 gis16 a cis,8
  | d16 fis eis fis8.
  | fis16 a gis a b cis
  | d4.~
  %25
  | d16 fis e d cis b
  | cis8 g16 fis8.

  | R1*6/16*24
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
    composer = "Andrea Turchetto"
    opus = "2020"
    title = \markup {
      %"Canon in" \concat{ F\super\sharp } "minor"
      "Canon in F" \translate #(cons 0 1.3) \smaller \sharp "minor"
    }
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
    \tempo 8. = 72
  }
}
