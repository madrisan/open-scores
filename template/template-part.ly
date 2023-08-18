Global = {
  \key c \major
  \time 4/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  %1
  \tempo \markup { \bold "Allegretto" } 4 = 80
  | c1
  | R1
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c1
  | s1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c1
  | R1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c1
  | s1
  \fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    s4-\markup { \dynamic mf } s2.
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Dynamics <<
      \Global \centerDynamics
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
    %composer = "The Composer"
    %opus = "Op. NN"
    title = \markup { "Title" }
    subtitle = \markup {
      \column {
        \line { "Subtitle" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12

      % Make the piano staves closer together
      %\override StaffGrouper.staff-staff-spacing = #'(
      %                        (basic-distance . 0)
      %                        (padding . 0))

      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
