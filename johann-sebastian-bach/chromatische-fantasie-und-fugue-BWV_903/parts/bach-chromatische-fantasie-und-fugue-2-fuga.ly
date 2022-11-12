Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one"  \relative c'' {
  %1
  \voiceOne
  | a4 bes b
  | c c8 b c4
  | e, f fis
  | g g8 fis g a
  %5
  | bes4 a g
  | f g8 f e d
  | e4 a, cis
  | d8 d16 e f8 f16 g a8 a16 b
  | c2.~
  %10
  | c8 a16 bes! c8 c16 d! e8 e16 fis
  | g2.
  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Tenor = \context Voice = "two"  \relative c'' {
  %1
  \voiceTwo
  | \change Staff = "lower"
    \override MultiMeasureRest.staff-position = #0
    R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %5
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | \change Staff = "upper"
    d,8. e16 f4 fis
  %10
  | g g8 fis g4
  | b,! c cis
  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Bass = \context Voice = "three"  \relative c' {
  %1
  \voiceThree
  | \override MultiMeasureRest.staff-position = #-4
    R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %5
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | s2.
  %10
  | s2.
  | s2.
  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \context Staff = "upper" <<
      \Global
      \clef treble
      \Soprano
      \Tenor
    >>
    \context Staff = "lower" <<
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 903"
    %subtitle = ""
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Fugue"
      %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
