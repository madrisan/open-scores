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
    \pageBreak
  | e16 d cis d8 dis16
  | e8. fis16 b, a
  | gis fis gis a8.
  | d8 b16 cis dis eis~
  %30
  | eis fis8 gis16 fis gis
  | a8 fis16 b8.~
  | b16 cis a d b8
  | eis8.~ eis16 fis gis
  | d cis b cis8.~
  %35
  | cis8 gis'16~ gis a b
  | a fis eis fis8.~
  | fis8.~ fis16 e d
  | e fis ais, b8 fis16
  | cis' d e d fis, a~
  %40
  | a gis8 fis8.
  | eis8 cis16 fis e d
  | cis b cis \clef "bass" a8.~
  | a cis16 fis, eis
  | fis cis fis gis cis, gis'
  %45
  | a8. cis,~
  | cis16 cis' fis, b a gis
  | a8. eis~
  | eis cis~
  | cis4.
  %50
  | fis\fermata
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
  | e16 d cis d8 dis16
  | e8. fis16 b, a
  | gis fis gis a8.
  %30
  | d8 b16 cis dis eis~
  | eis fis8 gis16 fis gis
  | a8 fis16 b8.~
  | b16 cis a d b8
  | \clef "treble" eis8.~ eis16 fis gis
  %35
  | d cis b cis8.~
  | cis8 gis'16~ gis a b
  | a fis eis fis8.~
  | fis8.~ fis16 e d
  | e fis \clef "bass" ais, b8 fis16
  %40
  | cis' d e d fis, a
  | a gis8 fis8.
  | eis8 cis16 fis e d
  | cis b cis a8.~
  | a cis16 fis, eis
  %45
  | fis cis fis gis cis, gis'
  | a8. cis,~
  | cis16 cis' fis, b a gis
  | a8. eis~
  | eis cis~
  %50
  | cis8. fis\fermata
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
