Global = {
  \key d \major
  \time 3/4
  \include "../global.ly"
}

top = \change Staff = "upper"
bottom = \change Staff = "lower"

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4
    <d fis>4 (
  %1
  | \grace { b'16 [a16] }
    <cis, g'>8 ) [ r16 <cis fis>16 ]  <cis g'>4 <cis b'> (
  | <d a'>2 ) <a' d>4 (
  | <g cis>8 ) [ r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
  | <fis d' fis>8 ) [ r16 <g cis e>16 ] <a d>4 \stemUp <d, fis>4 (
  %5
  | \grace { b'16 [a16] } <cis, g'>8 ) [r16 <cis fis>16]  <cis g'>4 <cis b'> (
  | <d a'>2 ) d'8. ( cis16 )
  | cis8 \( [d e fis ] fis8. [ gis16 ]
  | gis4 a \)
  }
  \break
  \repeat volta 2 {
  \partial 4 { e8 \( fis }
  | g a g fis g fis
  %10
  | e2 \) d8 \( c
  | b4 c b
  | a2\) fis4 \(
  | \stemNeutral
    \grace { b16 [a] } <cis,! g'>8 \) [r16 <cis fis>16 ] <cis g'>4 <cis b'> (
  | <d a'>2 ) <a' d>4(
  %15
  | <g cis>8) [r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
  | <fis d' fis>8) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis> (
  | \grace { b'16 [a] } <cis, g'>8) [r16 <cis fis>16 ] <cis g'>4 b'8. ( a16 )
  | a8\( [b cis d ] d [e]
  | fis2 e4 ~
  %20
  | e4  d4 \)
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \partial 4
  s4
  %1
  | s2.*5
  | s2 a'4
  | a2 d4~
  | d4 cis
  \partial 4 { c! }
  | b2 dis4
  %10
  | c!2 a4
  | g g8[ a] <d, a'>[ g]
  | <d g>[ fis e d] d[ bis]
  | s2.*4
  %17
  | s2 cis4
  | d s b'4
  | \stemUp \shiftOn a4 s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \partial 4
  s4
  %1
  | s2.*5
  | s2 a8 b
  | \once\override Beam.positions = #'(5 . 5.5)
    cis[ \top\stemDown d e fis]
    \bottom\stemUp fis8. gis16
  | gis4 a
  \partial 4 { e8[ fis] }
  | g[ a g fis g fis]
  %10
  | e2 d!4~
  | d! c! b
  | \once\override NoteColumn.force-hshift = #0.6
    g8 fis e d a'4
  | s2.*2
  %15
  | s2 a4
  | s2.*2
  | \shape #'((0 . 0) (0 . 1) (0 . -6) (-1 . -2)) PhrasingSlur
    a8[\( b cis d] d[ e]
  | \once\override Beam.positions = #'(7.4 . 7.8)
    \once\override NoteColumn.force-hshift = #0
    fis8 g \top\stemDown a\) b b cis
  %20
  | cis4 d
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4
  <d a'>4 (
  %1
  | <e a>8) [r16 <dis a'>16 ] <e a>4 <g a> (
  | <fis a>8) [r16 <eis a>16 ] <fis a>4 <fis a> (
  | <e a>8) [r16 <d a'>16 ] <cis a'>4 <a a'> (
  | <d a'>8) [r16 <e a>16 ] <fis a>4 <d a'> (
  %5
  | <e a>8) [r16 <dis a'>16 ] <e a>4 <g a> (
  | <fis a>8 ) [r16 <eis a>16 ] <fis a>4 fis_(
  | e!4 s4 ) \clef treble e'4~
  | e4 a,
  }
  \repeat volta 2 {
  \clef "bass"
  \partial 4 a4\(
  | b2 b4
  %10
  | c8 [b a  g ] g [fis]
  | g fis e fis g d
  | <d a'>2 d8 dis
  | <e a>8\) [r16 <dis a'>16 ] <e a>4 <g a> (
  | <fis a>8 ) [r16 <eis a>16 ] <fis a>4 <fis a> (
  %15
  | <e a>8) [r16 <d a'>16 ] <cis a'>4 a8 ( cis8
  | <d a'>8 ) [r16 <e a>16 ] <fis a>4 <d a'> (
  | <e a>8 ) [r16 <dis a'>16 ] <e a>4 <g a> (
  | fis2 ) g4
  << {
  | \once\override NoteColumn.force-hshift = #0.6
    a2._\markup { "ritard." }
  | \stemDown d2
  } \\ {
  | a2 \stemUp\tieUp g'4~
  | g fis
  } >>
  }
  \fine
}

centerDynamics = {
  \partial 4
  s4\mf
  %1
  | s2.*6
  | s8
    \override Hairpin.self-alignment-Y = #5
    s8\< s8 s8 s8 s8\!
  | s2
  \partial 4 { s8\p s }
  | \revert Hairpin.self-alignment-Y
    s8\< s8 s8 s8 s8 s8\!
  | s2 s4\>
  | s4 s8 8\! s4
  | s2 s8\< s8
  | s8\!\p s8 s2
  | s2.*2
  | s4 s s\mf
  | s2.
  | s8 s\< s2
  | s4\! s2
  | s4\> s\!
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
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "2. Curiose Geschichte" }
    subtitle = \markup {
             \column {
               \line { "(A Curious Story)" }
               % workaround to insert some vertical space after the subtitle
               \line { " " }
             }
           }
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
    \tempo 4 = 112
  }
}
