Global = {
  \key c \major
  \time 6/8
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \stemUp
  %1
  | a8[ c16 b c a] b8[ e,16 b' e b]
  | c8[ a e'] f16[ e f d f c]
  | f[ d f b, f' g,] e'[ d e c e b]
  | e[ c e a, e' f,] d'[ c d b d a]
  %5
  | d[ b d g, d' e,] c'[ a c e a fis]
  | g8 e4~ e16[ dis e cis dis fis]
  | b4.~ b8[ a16 g fis e]
  | a4.~ a8[ g16 fis e d]
  | g4.~ g8[ fis16 e dis e]
  %10
  | fis4.~ fis8[ e16 fis g8~]
  | g16[ g fis e fis d] e8 a4~
  | a16[ a gis fis gis e] c'4.~
  | c16[ c b a g! fis] e4.~
  | e16[ e d c b a] gis[ a b c d b]
  %15
  | c[ d e d e f] d4.~
  | d16[ d] e4~ e8[ d16 c b a]
  | s1*6/8
  | s1*6/8
  | s1*6/8
  %20
  | s1*6/8
  | s1*6/8
  | s1*6/8

}

Alto = \context Voice = "Two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \stemDown
  %1
  | s1*6/8*14
  %15
  | a4.~ a16[ gis a fis gis b]
  | e,8 c'16[ b a gis] a4.

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemUp\tieDown
  %1
  | R1*6/8*5
  %6
  | \clef treble \stemUp e'8[ g16 fis g e] fis8[ b,16 fis' b fis]
  | g8[ e b'] c16[ b c a c g]
  | c[ a c fis, c' d,] b'[ a b g b fis]
  | b[ g b e, b' c,] a'[ g a fis a e]
  %10
  | a[ fis a dis, a' b,] g'[ fis g b e cis]
  | d4.~ d16[ g, a c! fis dis]
  | e4.~ e16[ d c b c a]
  | d4.~ d16[ d c b a g]
  | f!4.~ f16[ e d e fis gis]
  %15
  | \clef bass a,8[ c16 b c a] b8[ e,16 b' e b]
  | c8[ a e'] f16[ e f d f c]

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  %1
  | s1*6/8*14
  %15
  | \override MultiMeasureRest.staff-position = #-4
    R1*6/8*8
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
%    composer = "Johann Sebastian Bach"
%    opus = "BWV 543 / S.462a"
    title = \markup { "Fuge" }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 100
  }
}

