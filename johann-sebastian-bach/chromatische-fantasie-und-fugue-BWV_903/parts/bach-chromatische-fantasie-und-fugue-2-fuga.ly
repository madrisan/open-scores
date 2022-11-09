Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  %1
  | r2.
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  %1
  | r2.
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" {
      \Global
      \Upper
      \pageBreak
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
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
