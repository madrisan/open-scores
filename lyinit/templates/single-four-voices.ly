Global = {
  \key @key@
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp\phrasingSlurUp\slurUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  @part_elems_position_alto@
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  @part_elems_position_tenor@
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemUp\tieUp\phrasingSlurDown\slurDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1
    \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    composer = ##f % "@composer_firstname@ @composer_lastname@"
    opus = ##f % "@opus@"
    title = \markup { "@partfile_title@" }
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
    \tempo 4 = 100
  }
}
