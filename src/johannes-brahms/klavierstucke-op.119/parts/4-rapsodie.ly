Global = {
  \key ees \major
  \time 2/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }
Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \slurNeutral\stemNeutral
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
  | <ees' ges bes ees>4_> <d ges bes d>8_.[ <ees ges bes ees>_.]
  | <ces ees ges ces>4\ff <bes ees ges bes>8[ <ces ees ges ces>]
  | <aes ces ees aes>4 <g! ces ees g!>8[ <aes ces ees aes>]
  | <ges a! c! ges'>4\sf f'16^>[( d bes a])
  %20
  | d_>[( bes f e!]) bes'_>[( f d c])
  | s2
  | s2
  | s2
  | bes''4\rest f'16[( d bes a!])
  %25
  | d[( bes f e!]) bes'[( f d c])
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #22
    \once\override Stem.flag-style = #'no-flag
    bes4^>(<g bes>_>
  | <ees g bes>_> <c ees g c>_>
  | <c ees aes! c>_>
    \once\override Staff.TextScript.extra-offset = #'(0.2 . -2.7)
    <f aes c f>^>)_\markup { \dynamic f }
  | \stemUp\slurUp bes'4\rest d16[( b! g fis])
  %30
  | b![( g d cis]) g'[( d b! a!])
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #22
    \once\override Stem.flag-style = #'no-flag
    \stemDown g4 <f g>
  | \stemNeutral <ees g> <d f g>
  | <c ees g>
    \once\override Staff.TextScript.extra-offset = #'(0.2 . -1)
    <c ees a!>_\markup { \dynamic f }
  | \stemUp\slurUp d''4\rest f16[( d bes a!])
  %35
  | d[( bes f e!]) bes'[( f d c])

  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2*23
  %24
  | \bottom <f, bes d>2^~ q
  | s2*3
  | \top <d' g b! d>2~\fp
  %30
  | q
  | s2*3
  | <bes d bes'>2~
  %35
  | q
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2*20
  %21
  | bes'4^>( bes^>
  | bes^> <a! bes>^>
  | <g bes>^> <ees a! c>^>)
  | \stemDown <bes, bes'>2~
  %25
  | \once\override Stem.length = #10
    \stemUp \once\override NoteColumn.force-hshift = #0
    <bes bes'>2
  | \stemDown
    bes''4_( <g bes>
  | \stemNeutral <ees g> <c ees g>
  | <aes! c ees aes!> <f aes c f>)
  | \stemUp <g b! d g>2~
  %30
  | q
  | \stemDown g'4 <f g>
  | <ees g> <d f g>
  | <c ees g> \stemUp <f, c' f>
  | <bes d f>2~
  %35
  | q
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
  | <bes ees ges bes>4 <ges' ges'>8[ <ees ees'>]
  | <ces' ees ges ces>4 <ees, ees'>8[ <ces ces'>]
  | <aes' ces ees aes>4 <ces, ces'>8[ <aes aes'>]
  | <ees' a! c! ees>4( <bes, bes'>_.)
  %20
  | <bes bes'>_. <bes bes'>_.
  | <bes'' bes'>(^\markup { \hspace #0.1 \dynamic fp } \stemDown <a! bes>
  | <g bes> <f bes>
  | <ees bes'> <c bes'>)
  | \tweak X-offset #0.2 bes,\rest_\Ped
    <bes bes'>_.
  %25
  | \once\override NoteColumn.force-hshift = #1 <bes bes'>_.
    <bes bes'>_.
  | s2*3
  | g'4\rest g_.
  %30
  | g_. g_.
  | s2
  | s2
  | s2
  | bes4\rest_\Ped <bes, bes'>_.
  %35
  | q_. q_.

  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic f } s2.
  | s2*23
  %26
  | s32 s32
    \once\override Hairpin.self-alignment-Y = #8
    s8\< s4
  | s2
  | s8 s8 s8\! s8
  | s2
  %30
  | s2
  | s8
    \once\override Hairpin.self-alignment-Y = #8
    s8\< s4
  | s2
  | s8 s8 s8\! s8

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
    title = \markup { "Rapsodie Es-Dur" }
    subtitle = \markup { "Op. 119, No 4" }
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
