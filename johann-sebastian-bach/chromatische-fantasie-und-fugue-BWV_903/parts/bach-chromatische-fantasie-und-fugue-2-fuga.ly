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
  | g2.~
  | g8 a16 g f!8 f16 e d8 c16 b!
  | gis'2.\trill
  | a2.~
  %15
  | a8 b!16 a gis8 gis16 fis e8 e16 d
  | c8 e, a a16 b! c4~
  | c16[ bes a bes] c[ d ees d] c[ bes c a]
  | bes8 d, g[ g16 a] bes8[ c16 bes]
  | a8[ bes16 c] d[ ees d c] d[ b! c d]
  %20
  | s2.
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
  | d4 d8[ cis d e]
  | f4 e d
  | c4 d8[ c
    \change Staff = "lower"
    b! a]
  %15
  | \stemUp b!4 e, gis
  | a8[ a16 b!] c8[ c16 d]
    \change Staff = "upper"
    \stemDown
    e8[ e16 fis]
  | g!2.~
  | g8[ g,16 a] bes8[ bes16 c] d8[ d16 e!]
  | f2.
  %20
  | s2.


  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Bass = \context Voice = "three"  \relative c' {
  %1
  \voiceFour
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
  | R1*3/4
  %10
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %15
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | a4 bes b!
  %20
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
