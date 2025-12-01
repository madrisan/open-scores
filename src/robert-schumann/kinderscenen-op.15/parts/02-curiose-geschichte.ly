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
    <d,, fis>4 (
  | \grace {  b'16 [a16 ] } <cis, g'!>8 ) [r16 <cis fis>16 ] <cis g'>4 <cis b'> (
  %10
  | <d a'>2 ) <a' d>4 (
  | <g cis>8 ) [r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
  | <fis d' fis>8) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis>4 (
  | \grace { b'16 [a16] } <cis, g'>8 ) [r16 <cis fis>16 ]  <cis g'>4 <cis b'> (
  | <d a'>2 ) d'8. ( cis16 )
  %15
  | cis8 \( [d e fis ] fis8. [ gis16 ]
  | gis4 a \) e8 \( fis
  | g a g fis g fis
  | e2 \) d8 \( c
  | b4 c b
  %20
  | a2\) fis4 \(
  | \grace { b16 [a] } <cis,! g'>8 \) [r16 <cis fis>16 ] <cis g'>4 <cis b'> (
  | <d a'>2 ) <a' d>4(
  | <g cis>8) [r16 <fis b>16 ] <e a>4 \stemDown <g a g'>^\accent (
  | <fis d' fis>8) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis> (
  %25
  | \grace { b'16 [a] } <cis, g'>8) [r16 <cis fis>16 ] <cis g'>4 b'8. ( a16 )
  | <d, a'>8\( [b' cis d ] d [e]
  | fis2 e4 ~
  | e4  d4 \) e8 \( fis8
  | g a g fis g fis
  %30
  | e2 d8 c
  | b4 c b
  | a2\) fis4 ( \grace { b16 [a16] }
  | <cis,! g'>8) [r16 <cis fis>16 ] <cis g'>4 <cis b'>(
  | <d a'>2 ) <a' d>4 (
  %35
  | <g cis>8 ) [r16 <fis b>16] <e a>4 \stemDown <g a g'>^\accent (
  | <fis d' fis>8 ) [r16 <g cis e>16 ] <a d>4 \stemUp <d, fis> (
  | \grace { b'16 [a] } <cis, g'>8 ) [r16 <cis fis>16 ] <cis g'>4 b'8. ( a16 )
  | <d, a'>8\( [b' cis d ] d [e ]
  | <a, fis'>2 e'4 (
  %40
  | e ) d \)
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \partial 4
  s4
  %1
  | s2.*5
  %6
  | s2 a'4
  | a2 d4~
  | d4 cis s
  | s2.
  %10
  | s2.*4
  | s2 a4
  %15
  | a2 d4~
  | d4 cis
    \bar "||"
    c!
  | b2 dis4
  | c!2 a4
  | g g8[ a] <d, a'>[ g]
  %20
  | <d g>[ fis e d] d[ bis]
  | s2.*4
  %25
  | s2 cis4
  | s2 b'4
  | a4 s2
  | cis4 d c!
  | b2 dis4
  %30
  | c!2 a4
  | g g8[ a] <d, a'>[ g]
  | <d g>[ fis e d] d[ bis]
  | s2.*4
  | s2 cis4
  | s2 b'4
  | s2.
  %40
  | cis4 d
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \partial 4
  s4
  %1
  | s2.
  | s2.
  | s2.
  | s2.
  %5
  | s2.
  | s2 a8 b
  | \once\override Beam.positions = #'(5 . 5.5)
    cis[ \top\stemDown d e fis]
    \bottom\stemUp fis8. gis16
  | gis4 a s4
  | s2.
  %10
  | s2.
  | s2.
  | s2.
  | s2.
  | s2 a,8 b
  %15
  | \once\override Beam.positions = #'(5 . 5.5)
    cis[ \top\stemDown d e fis]
    \bottom\stemUp fis8.\( gis16
  | gis4 a\) e8[ fis]
  | g[ a g fis g fis]
  | e2 d!4~
  | d! c! b
  %20
  | \once\override NoteColumn.force-hshift = #0.6
    g8 fis e d a'4
  | s2.
  | s2.
  | s2 a4
  | s2.
  %25
  | s2.
  | << {
      \shape #'((0 . 0) (0 . 1) (0 . -6) (-1 . -2)) PhrasingSlur
      a8[\( b cis d] d[ e]
    } \\ { } >>
  | << {
      \once\override Beam.positions = #'(7.4 . 7.8)
      \once\override NoteColumn.force-hshift = #1.3
      fis8 g \top\stemDown a\) b b cis
    } \\ {
      \stemUp
      \once\override NoteColumn.force-hshift = #0
      a,2 g'4^~
    } >>
  | \bottom\stemUp g4 fis e8 fis
  | g[ a g fis g fis]
  %30
  | e2 d!4~
  | d4 c! b
  | g8[ fis e d] a'4
  | s2.
  | s2.
  %35
  | s2 a4
  | s2.
  | s2.
  | << {
      \shape #'((0 . 0) (0 . 1) (0 . -6) (-1 . -2)) PhrasingSlur
      a8[\( b cis d] d[ e]
    } \\ { } >>
  | << {
      \once\override Beam.positions = #'(7.4 . 7.8)
      \once\override NoteColumn.force-hshift = #1.3
      fis8 g \top\stemDown a\) b b cis
    } \\ {
      \stemUp
      \once\override NoteColumn.force-hshift = #0
      a,2 g'4^~
    } >>
  %40
  | \bottom
    << { } \\ { \stemUp g4 fis } >>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
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
  | e4 a, \clef bass <d, a'> (
  | <e a>8) [r16 <dis a'>16 ] <e a>4 <g a>(
  %10
  | <fis a>8 ) [r16 <eis a>16 ] <fis a>4 <fis a> (
  | <e a>8 ) [r16 <d a'>16 ] <cis a'>4 <a a'> (
  | <d a'>8 ) [r16 <e a>16 ] <fis a>4 <d a'> (
  | <e a>8 ) [r16 <dis a'>16 ] <e a>4 <g a> (
  | <fis a>8 ) [r16 <eis a>16 ] <fis a>4 fis (
  %15
  | e4 ) s4
    \clef treble e'4~
  | e a,4 \clef bass a \(
  | b2 b4
  | c8 [b a  g\) ] g \( [fis]
  | g fis e fis g d
  %20
  | <d a'>2\) d8 ( dis
  | <e a>8 ) [r16 <dis a'>16 ] <e a>4 <g a> (
  | <fis a>8 ) [r16 <eis a>16 ] <fis a>4 <fis a> (
  | <e a>8) [r16 <d a'>16 ] <cis a'>4 a8 ( cis8
  | <d a'>8 ) [r16 <e a>16 ] <fis a>4 <d a'> (
  %25
  | <e a>8 ) [r16 <dis a'>16 ] <e a>4 <g a> (
  | fis2 ) g4
  | \once\override NoteColumn.force-hshift = #1
    a2.
  | d2 a4 \(
  | b2 b4
  %30
  | c8 [b a g]\) g \( [fis]
  | g fis e fis g d
  | <d a'>2\) d8 ( dis
  | <e a>8 ) [r16 <d a'>16 ] <e a>4 <g a> (
  | <fis a>8 ) [r16 <eis a>16 ] <fis a>4 <fis a> (
  %35
  | <e a>8 ) [r16 <d a'>16 ] <cis a'>4 a8 ( cis8
  | <d a'>8 ) [r16 <e a>16 ] <fis a>4 <d a'> (
  | <e a>8 ) [r16 <dis a'>16 ] <e a>4 <g a> (
  | fis2 ) g4 (
  | \once\override NoteColumn.force-hshift = #1
    a2._\markup { \italic "ritard." }
  %40
  | d2 )
  \fine
}

centerDynamics = {
  \partial 4
  s4\mf
  %1
  | s2.
  | s2.
  | s2.
  | s2.
  %5
  | s2.
  | s2.
  | s8
    \override Hairpin.self-alignment-Y = #5
    s8\< s8 s8 s8 s8\!
  | s2.
  | s2.
  %10
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %15
  | \override Hairpin.self-alignment-Y = #5
    s8\< s8 s8 s8 s8 s8\!
  | s2.
  | \override Hairpin.self-alignment-Y = #5
    s8\< s8 s8 s8 s8 s8\!
  | s8 s8 s8 s8 s8\> s8
  | s8 s8 s8 s8\! s8 s8
  %20
  | s8 s8 s8 s8 s8\< s8\!
  | s8\p s8 s2
  | s2.
  | s2.
  | s8 s8 s8 s8 s8\mf s8
  %25
  | s2.
  | \override Hairpin.self-alignment-Y = #0
    s8\< s8 s8 s8 s8 s8\!
  | s2.
  | s8\>	 s8 s8 s8\! s8\p s8
  | s8\<	 s8 s8 s8 s8 s8\!
  %30
  | s8 s8 s8 s8 s8\> s8
  | s8 s8 s8\! s8 s8 s8
  | s8 s8 s8 s8 s8\< s8\!
  | s8\p s8 s8 s8 s8 s8
  | s2.
  %35
  | s2.
  | s8 s8 s8 s8\mf s8 s8
  | s2.
  | s8\<	 s8 s8 s8 s8\! s8
  | s2.
  %40
  | s8\> s8 s8 s8\!
}

forceBreaks = {
  \partial 4 s4
  % page 1
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  | \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  % page 2
  | \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
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
      \Sopran
      \Alto
    >>
    \new Devnull \forceBreaks
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
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 10
    }
  }
  \midi {}
}
