Global = {
  \key ees \major
  \time 2/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  \tempo \markup { \bold Allegro risoluto }
  | <g bes ees g>4^> <f bes d f>8^.[ <g bes ees g>^.]
  | <aes c ees aes>4^> <g bes ees g>8^.[ <f c' ees f>^.]
  | <g bes ees g>4^> <f aes d f>8^.[ <ees g bes ees>^.]
  | <f d' f>8^.[ bes^.] <ees, c' ees>4_>
  %5
  | <ees bes' d ees>_> <ees aes c ees>_>
  | <ees g bes ees>4_> <d f bes d>8_.[ <ees g bes ees>_.]
  | <g c ees g>4^> <f aes d f>8^.[ <ees g c ees>^.]
  | <d g bes d>4_> <c ees g c>8_.[ <bes d g bes>_.]
  | <a! fis' a!>8_.[ d_.] <g, g'>4_>
  %10
  | <g fis' g>4_> <g f'! g>4_>
  | <g' bes ees g>4 <f bes d f>8[ <g bes ees g>]
  | <aes c ees aes>4 <g bes ees g>8[ <f c' ees f>]
  | <g bes ees g>4 <f aes d f>8[ <ees g bes ees>]
  | <f d' f>8[ bes] <ees, ees'>4_>\<
  %15
  | <ees des' ees>4_> <ees ces' ees>_>\!
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  | <ees, bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <aes, aes'>4 <ees' ees'>8[ <aes, aes'>]
  | <ees' ees'>4 <bes bes'>8[ <ees, ees'>]
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4
  %5
  | <ees' bes' d> <ees aes c>
  | <ees, bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <c c'>4 <f f'>8[ <c c'>]
  | <g' bes d g>4 <c, c'>8[ <g g'>]
  | <d d'>8[ <d' d'>] <g, g'>4
  %10
  | <g' fis'>4 <g f'!>
  | <ees bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <aes, aes'>4 <ees' ees'>8[ <aes, aes'>]
  | <ees' ees'>4 <bes bes'>8[ <ees, ees'>]
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4
  %15
  | <des ees des'> <ces ees ces'>

  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic f } s2.
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
    title = \markup { "4. Rapsodie Es-Dur" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
