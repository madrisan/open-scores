Global = {
  \key c \major
  \time 3/4
  \include "./../global.ly"
}

bottom = { \change Staff = "lower" }
top = { \change Staff = "upper" }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \tempo \markup { \bold "Andantino molto moderato" }
  \partial 4
  \once\override Staff.TextScript.extra-offset = #'(-4 . -0.5)
  <d e>4(_\markup { \dynamic p \italic\small "dolce" }
  %1
  | \override Staff.TextScript.extra-offset = #'(-1.5 . -2.5)
    f8. g16 <des f>4^. q^.
  | <a des f>2) <b d e g>4(
  | bes'8. aes16 <c, g' c>4^. q^.
  | q2) \stemDown <d' e>4(_\markup { \dynamic mf }
  %5
  | \stemUp f8. g16 a,4 <cis, fis a>
  | \once\override Stem.cross-staff = ##t
    <cis fis a>2)
    <e aes bes>4(_\markup { \dynamic p }
  | b'!8. c16 <c,d>4^. q^.
  | \once\override NoteColumn.force-hshift = #0 q2) r4
  | \override Staff.TextScript.extra-offset = #'(-1 . -2.5)
    <b' b'>4_\markup {
      \dynamic mf \italic\small "espressivo"
    } s2
  %10
  | s2.
  | <b b'>4 s2
  | <b b'>4 s2
  | s2.
  | \override Staff.TextScript.extra-offset = #'(-0.4 . -1)
    \stemNeutral
    \ottava 1 <f'' des' g>4^.(_\markup {
      \dynamic pp \italic\small "dolcissimo"
    }
    \override Staff.TextScript.extra-offset = #'(-1.5 . 0)
    \ottava 0 <f, des' g>4^.^\markup {
      \italic\small "a tempo"
    }
    <f, des' g>^.)
  %15
  | \stemUp fes2 <ces des ges>4
  | \stemNeutral \ottava 1 <c''! g'! d'!>4^.( \ottava 0 <c, g' d'>4^. <c, g' d'>^.)
  | f8.( g16 f2)
  | \override Staff.TextScript.extra-offset = #'(-1 . -2)
    <ges' ees' aes>4^.(_\markup {
      \italic\small "più" \dynamic p
    } <des, ees ges aes>2^.)
  | <b! d! e! g!>4^.( <f' des' g>2^.\>)
  %20
  | r4\!\ppp <c g' bes d>^.( <ees aes ees'>^.)
  | \stemUp \ottava 1 <c'' c'>2.\laissezVibrer \ottava 0
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | des4 s2
  | s2.
  | <c f>4 s2
  | s2.
  %5
  | des'4
    \once\override Stem.length = #20
    \once\override Stem.cross-staff = ##t
    <cis, fis>4
    s
  | s2.
  | g'4 s2
  | \hideNotes
    \showStaffSwitch
    \once\override NoteColumn.force-hshift = #0 d2
    \bottom
    ees4
    \hideStaffSwitch
    \unHideNotes
    \top
  | \slurUp e'8.( fis16 <b, e b'>4 <d g d'>
  %10
  | <b e b'> q <gis cis gis'>
  | e'8. fis16 <b, e b'>4 <d g d'>
  | \override Hairpin.Y-offset = #-4
    \override Staff.TextScript.extra-offset = #'(-1 . -2.5)
    e8.\< fis16 <b, e b'>4\! <dis~ gis~ dis'^~>_\markup { \dynamic mf }
  | \override Staff.TextScript.extra-offset = #'(0 . 0)
    q^\markup {
      \italic\small "poco rall."
    } <e a b e>2\>)
  | s2.\!
  %15
  | \slurDown c,8.( des16 c4) s
  | s2.
  | c2.
  | s2.*3
  | \once\override NoteColumn.force-hshift = #-0.2 f''8.( g16
    \override Script.X-offset = #4
    %\override Hairpin.minimum-length = #8
    f2)\laissezVibrer^\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | \showStaffSwitch s2 \once\omit Stem a4
  | \top
    \once\override NoteColumn.force-hshift = #0
    \once\omit Stem a2 s4
    \hideStaffSwitch
  | \bottom s2.*3
  | \once\override Stem.length = #22
    \stemUp \once\override Stem.cross-staff = ##t g2
    s4
  | s2.*2
  | e'!8. fis16 <b, e>4 <d g>
  %10
  | <b e> q <gis cis>
  | e'8. fis16 <b, e>4 <d g>
  | e8. fis16 <b, e>4 <dis_~ gis~>
  | q <e a b>2
  | \clef bass
    s2.*4
  %18
  | s4
    \once\override Stem.length = #22
    \once\override Stem.cross-staff = ##t
    a,2
  | s2.*2
  %21
  | \stemDown\slurDown
    f''8.( g16
    \override Script.X-offset = #4
    f2)\laissezVibrer\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \partial 4 r4
  %1
  | ees,,4\laissezVibrer <bes'' a'>_.( q_.)
  | <e, bes'>2 aes'4
  | aes,,\laissezVibrer <ees'' aes>_.( q_.)
  | <aes, ees' aes>2 r4
  %5
  | ees,4\laissezVibrer g''_.( g_.)
  | \stemDown <ees, bes'>2 r4
  | \stemNeutral aes,\laissezVibrer <ees'' aes>_.( q_.)
  | <aes, ees' aes>2 \clef treble ees''4\(
  | \stemDown b s2
  %10
  | s2.
  | b4 s2
  | b4 s2
  | s4 \once\omit Stem e2\)
  | \stemNeutral
    ees,,,4_.\laissezVibrer( <ees' bes'>_. <ees' bes'>_.)
  %15
  | <aes beses>2 <bes, ees g>4
    aes,4_.\laissezVibrer( <aes' ees'>_. <ees' aes>_.)
  | <aes ees'>2.
  | f,,4_.\laissezVibrer( \stemDown <f' c'>2)
  | <bes aes'>4_.( \stemUp ees,2_.)
  %20
  | aes,4\laissezVibrer \stemDown <aes'' ees'>_.( <ees aes>_.)
  | \clef treble
    \stemUp
      \override LaissezVibrerTieColumn.tie-configuration
         = #`((5.5 . ,UP)
              (0 . ,UP))
    <aes' ees'>2.\laissezVibrer
  \fine
}

centerDynamics = {
  \partial 4 s4
  %1
  | s2.*20
  | \override Hairpin.Y-offset = #-5
    s4 s8\> s8 s8 s8\!
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
    composer = "Alfredo Casella"
    %opus = "Op. 31"
    title = \markup {
      \fill-line {
        \center-column {
          \line { \italic "To Ricardo Viñes" }
          \null
          \line { \abs-fontsize #24 "DEUX CONTRASTES" }
          \null
          \line { "I. GRAZIOSO" }
          \line { \abs-fontsize #12 \italic "Hommage à Chopin" }
          \null\null\null
        }
      }
    }
    subtitle = #f
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
