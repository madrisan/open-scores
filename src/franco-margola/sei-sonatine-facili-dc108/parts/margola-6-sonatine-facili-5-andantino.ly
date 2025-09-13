Global = {
  \key c \major
  \time 6/8
  \include "../global.ly"
}

greyTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \textMark \markup { \hspace #2 "A1" }
    a8\(-2 c a d4 c8
  | a4 c8 a4 g8
  | a c a d4 c8
  | a4. c\)
  %5
  | \textMark \markup { \hspace #2 "A2" }
    a8\( c a d4 c8
  | a4 c8 a4 g8
  | a d c a4 g8
  | a4.~ a8\) r r
  | \textMark \markup { \hspace #2 "B1" }
    c\(-2 d c f4 c8
  %10
  | g4_- c8-4 gis4-2_- c8
  | a-1 d-3 c d f c
  | g4. c\)-4
  | \textMark \markup { \hspace #2 "B2" }
    c8\(-2 d c f4 c8
  | g4 c8-4 gis4-1 c8
  %15
  | a-1 d-3 c d f c
  | g4.~ g4\) r8
  | \textMark \markup { \hspace #2 "A1b" }
    a8\(-2 c a d4 c8
  | a4 c8 a4 g8
  | a c a d4 c8
  %20
  | a4. c\)
  | \textMark \markup { \hspace #2 \bold "A2b" }
    a8\( c a
    \once\override TextScript.extra-offset = #'(0.6 . 0)
    d4_\markup {
      \whiteout
      "rit.  -  -  -  a poco  -  -  -  a poco"
    }
    c8
  | a4 c8 a4 g8
  | a d c a4 g8
  | a4.~-4 a8\)\fermata r r
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \clef "treble"
  %1
  \repeat unfold 4 {
  | f2.~-1
  | f
  }
  %9
  \repeat unfold 4 {
  | f^-
  }
  \repeat unfold 3 {
  | f--
  }
  %16
  | f4. e
  \repeat unfold 3 {
  | f2.~
  | f
  }
  %23
  | f
  | r4 r8
    \clef "bass"
    <f,, c'>8\fermata r r
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \showStaffSwitch
  %1
  \repeat unfold 2 {
  | a4\rest b8\rest e4.
  | d c
  | d e
  | f e
  }
  %9
  | ees-1-2 d
  | cis-1-4 d
  \repeat unfold 2 {
  | ees d
  | cis d
  }
  %15
  | ees d
  | des c
  | a4\rest b8\rest e4.
  | ees d
  | cis d
  %20
  | dis e
  | a,4\rest b8\rest e4.
  | ees d
  | dis e
  | \change Staff = "upper" f4.~-2 f8 s4
    \change Staff = "lower"
    \fine
}

centerDynamics = {
  | s4.\mp s
  | s2.*15
  | s4.\pp s
  | s2.*3
  | s4.-\markup { "ancora più piano" } s
}

forceBreaks = {
  % page 1
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
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
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franco Margola"
    opus = ##f % "dC 108"
    title = \markup { "5. Andantino" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
      \override VoiceFollower.color = #greyTextColor
      \override VoiceFollower.style = #'dashed-line
    }
    \context {
      \Score
      \override TextMark.color = #(x11-color "gray")
      \override TextMark.font-series = #'bold
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
