Global = {
  \key g \minor
  \time 4/4
  \include "../global.ly"
}

staccato = \markup { \hspace #-1.5 \small\italic "staccato" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | \tempo "Assez animé" 4 = 120
    <bes d g>4^\markup { \hspace #-1.5 \small\italic "legato" }\(
    <a d fis> <aes d f> <g c e>
  | <a! c ees> <g bes d> <ees g c>8[ <e! bes'>] <fis a>4\)
    \break
  | <bes d g>\( <a d fis> <aes d f> <g c e>
  | <a! c ees> <g bes d> <c, fis a>8[ <d bes'>] <bes g'>4\)
  %5
  | <aes ees' aes>4(_> <bes g'>8) r <aes ees' aes>4(_> <bes g'>8) r
  | \phrasingSlurUp
    \shape #'((0 . 3) (0 . 0) (0 . 0) (0 . 3)) PhrasingSlur
    <a fis'>4\( <bes g'> a'!8 e fis\) r
  | <aes, ees' aes>4(_> <bes g'>8) r <aes ees' aes>4(_> <bes g'>8) r
  | <a! fis'>4\( <g g'> d' bes\)
   \break
  | \stemUp <ees g bes>4\( <fis a c> f'! c
  %10
  | bes c8 bes f'!2\)
  | <des, f! aes>4\( <e! bes'> <c e! g c>2\arpeggio
  | <fis a! ees'>4 <f! bes d> <ees c'> <d bes'>
  | <c ees a> <bes g'> <a fis'>2\)
  | \stemNeutral <bes' d g>4\(^\markup { \small\italic "legato" }
    <aes b! f'!> <g c e!> <a! c ees>
  %15
  | \stemUp <g bes d> <ees c'> <e! bes'>2\)\breathe
  | <cis ees g>4\( <c! e! g> <d g d'>2\)
  | <cis ees g>4\( <c! e! g> <d g d'>2\)
  | \stemNeutral ees''4\( c8. aes16 ees2\)
  | <g, bes>4\(^\markup { \small\italic "sans ralentir" }
    <c, fis a!> <bes g'>2\)
  %20
  | <bes' bes'>2\laissezVibrer^\markup {
      \small\italic "strictement en mesure"
    }
    s
  | R1
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  %1
  | s1*5
  | d2 <a e'>4 <a d>8 s
  | s1
  | d2 s
  | s <aes' c>4 aes
  %10
  | <ees g> <fis a!> <aes c>2
  | s1
  | s2 g
  | s4 d2.
  | s1
  %15
  | s4 g2.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurNeutral
  %1
  | s1*7
  | s2 <fis a>8 q <d g>4
  | \slurUp bes8( bes') bes( \clef treble bes')
    \stemDown bes( bes') bes( bes,)
  %10
  | \stemUp bes,,( bes') bes( \clef treble bes')
    \stemDown bes'( bes,) \stemUp\slurDown bes( bes,)
  | \slurUp aes,( aes') aes( \clef treble aes') aes'( aes,) aes4
  | s1
  | ees,,4 a d2
  | s1*6
  %20
  | g'1*1/2\laissezVibrer <d, bes'>2~
  | q2~ q8 f8\rest f4\rest
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  %1
  | g'8^._\staccato g'^. d^. d,^. b!^. b'!^. c^. c,^.
  | fis,-. fis'-. g-. g,-. c-. cis-. d4^.
  | g8^. g'^. d^. d,^. b!^. b'!^. c^. c,^.
  | fis,-. fis'-. g-. g,-. d'-. d,-. g,4_.
  %5
  | c8_\markup { \hspace #-0.5 \small\italic "sempre staccato" } c' ees ees, c c' ees ees,
  | d d' g, g' cis, a d r
  | c, c' ees ees, c c' ees ees,
  | \stemDown d' d, bes bes' d d, g,4
  | bes'1
  %10
  | \clef bass bes1
  | \clef bass aes1
  | \clef bass
    \stemNeutral c'8( d,) d( d,) d( d,) d''( d,)
  | \stemDown\slurDown ees( d) a'( d,) d'( d,_~) d g\rest
  | \stemNeutral\slurNeutral r g_\staccato r b! r c r fis
  %15
  | r g r c r cis r4
  | bes( g) b!( g)
  | bes( g) b!2
  | \clef treble
    r2 c'4\( aes8. ees16
  | d4\) \clef bass
    \override Staff.SustainPedalLineSpanner.staff-padding = #8.5
    \set Staff.pedalSustainStyle = #'mixed
    d,( g,2)\sustainOn
  %20
  | \stemDown\tieDown d''2 g,,,~
  | g~ g8 b\rest\sustainOff b4\rest
  \fine
}

centerDynamics = {
  %1
  | s1\mf
  | s1*3
  | s1\sf
  | s1*3
  %9
  | s4\mf s2.
  | s1*2
  | s4\sf s s\> s
  | s s\! s s
  | s1\mf
  | s
  | s\p
  | s
  | s4\mf s2.
  | s4 s2.\p
  | s1\p
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
    composer = "Francis Poulenc"
    arranger = \markup \italic { "Paris Juin 1941"}
    opus = #f
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #10 \normal-text\italic "à Claude Delvincourt" }
          \null
          \line { \abs-fontsize #18 "IMPROVISATION" }
          \line { \abs-fontsize #13 "en sol mineur" }
          \null\null
        }
      }
    }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 2 = 120
  }
}
