Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo \markup { \abs-fontsize #14 \italic "Fantasia." }
  | <a c e>1
  | <b d>2 q
  | q <a c>
  | <a c> <gis b>
  %5
  | q a
  | <cis e g> q
  | q <d f>
  | q <c e>
  | <a c e> <b dis>
  %10
  <b e>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | e1_\markup { \bold \whiteout "Arpeggio." }
  | <d f>2 <e gis>
  | <f gis> <e gis!>
  | <d f> <d f>
  %5
  | q <c e>
  | <g' bes> <g a cis>
  | <g bes> a
  | <gis b> <gis! a>
  | c,4\rest gis' <fis a>2
  %10
  | <e gis>1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | a1
  | <d, f>2 <d e>
  | <e a> q
  | a gis
  %5
  | gis a
  | <g bes> a
  | cis <a d>
  | b c
  | c b
  %10
  | b1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <a c e>1
  | <a b>2 <gis b>
  | <a d> <a c>
  | <b d> q
  %5
  | <c d> <c e>
  | <cis e> q
  | <d e g> <d f>
  | <e gis> q
  | <f a> <fis a>
  %10
  | <e gis>1\fermata
    \fine
}

forceBreaks = {
  \repeat unfold 9 { s1\noBreak } s1\break\noPageBreak
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 944"
    title = \markup { "Fantasie und Fuge a-Moll" }
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
