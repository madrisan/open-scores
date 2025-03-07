Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

lH = \markup \small\italic { "l.H" }
rH = \markup \small\italic { "r.H" }
grayTextColor = #(x11-color "dimgray")

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'KlavierstuckeII
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral
  %1
  \tempo \markup {
    \bold\concat { "Langsam (" { \tiny\note {4} #1 } " )" }
  }
  | R1
  | r2 r4
    \shape #'(
      (( 0 . 0) (0 . 0) (0 . 3) (0 . 3))
      (( 0 . 1) (0 . 1) (0 . 0) (0 . 0))
    ) PhrasingSlur
    \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    <b'! d!>8[_\markup{ \dynamic mf }\(\< fis,]\!
    \break
  | dis4.^\markup {
      \dynamic p \small\italic "espress."
    } a!8\< c!4\!\> aes!\!\)
  | R1
    \break
  %5
  | <ges'' bes fes'>16^>\arpeggio r r8 \clef bass <fis,, ais>^. r8 r2
  | \clef treble s2 <b! d!>~^\>_\rH
    \break
  | \once\override Staff.TextScript.extra-offset = #'(-3 . 0)
    q8[\!^\markup \small\italic {
      "gut im Takt"
    } <g'! b!>_.]_\pp_\lH r4 r8 <g b>8_.^\lH q_. r
  | r4 q8_. r r4 q8_.[ q_.]
  | r4 r8 \stemDown\tieDown <g! b!>~_\lH q2
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp
  %1
  | s1*8
  | s2
    \once\override Staff.TextScript.extra-offset = #'(2.5 . -5)
    <ees fis bes d!>^\rH-\tweak script-priority #-100 ^\fermata
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  %1
  | r4^\markup \italic\small {
      \hspace #-4 "äußerst kurz" \dynamic pp
    } <g'! b!>8_.[ q_.] q_. r r q_.
  | r4 <g b>8_.[ q_.] q_. r r q_.
  | r4 <g b>8_.^\pp[ q_.] q_. r r q_.~
  | q[ q_.] <c! ees>^-[( <g b>]) r q r4
  %5
  | <c! ees>8^-( <g! b!>4) q8_. r4 q8_. q_.
  | \shape #'((( 0 . 0) (0 . 1) (0 . 0) (0 . 4))) Slur
    <aes, c>8^\rH^(_\markup \annotation {8} <a! cis>4^\< <c! ees>8\!
    \clef bass
    \once\override Staff.TextScript.extra-offset = #'(0 . -0.4)
    <fis,, bis dis f!>2~_\>)^\markup \italic\tiny {
      \hspace #1.8 \with-color \grayTextColor
      \column {
        \line { "presa muta" }
        \raise #1 \line { "dell'accordo" }
        \raise #2 \line { \hspace #2 \char ##x2193 }
      }
    }_\markup \annotation {9}
  | q8\! r r4 <f'! a!>8^._\pp_^_\markup \annotation {10}^\rH r r4
  | <ees g>8^. r r4 r8 <des f>^. r4
  | r8 <c e!>^.^\rH r4 r2^\fermata
  \fine
}

centerDynamics = {
  %1
  | s1*5
  | \once\override Staff.TextScript.extra-offset = #'(-1 . -1)
    s4-\markup \italic\small { "etwas gedehnt" } s2.
  | s1*2
  | s4-\markup \italic\small { \hspace #2 "poco rit." } s2.
}
Sustain = {
  \set Staff.pedalSustainStyle = #'mixed
  \override Staff.SustainPedal.color = \grayTextColor
  %1
  | s1*5
  | \override Staff.SustainPedalLineSpanner.staff-padding = #9
    s2 s4\sustainOn s8\sustainOff
    \set Staff.pedalSustainStyle = #'bracket
    s8\sustainOn
  | s8 s\sustainOff s2
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
      \clef treble
      \Bass
      \Sustain
    >>
  >>
  \header {
    %composer = "Arnold Schönberg"
    %opus = "Op. 19"
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #20 "II." }
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
    \tempo 4 = 58
  }
}
