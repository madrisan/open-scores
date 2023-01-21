Global = {
  \key g \major
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritard " } }
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <d fis>2( <d g>
  | <d c'>2. <d b'>4
  | a'2 \grace { b8[ a g a] } b4. g8
  | b2 a)
  %5
  | <f! gis>2( <e a>
  | <f! d'>2 \acciaccatura e8 <e c'>2)
  | r4 <d f! b>2~( <d f b>8[ r16 <b e gis>])
  | <b e gis>2( <c e a>4) r
  | << { fis2( g! } \\ >>
  %10
  | << {
      c1)\fermata
    } \\ {
      s8 \hideNotes dis,8^~ \unHideNotes \stemUp dis2.^\fermata
    } \\ {
      s4 \bottom\stemDown fis,~ \stemUp fis2\fermata
    } >>
  | << { dis'2( e } \\ >>
  | << {
      a2) a4\fermata b8*2\rest\fermata
    } \\ {
      \mergeDifferentlyDottedOn
      s8 \stemUp c,4. c4 s
    } \\ {
      \bottom s4 \stemDown dis,~ \stemUp dis s
    } >>
  | \override Score.BarLine.transparent = ##t
    \override Score.SpanBar.transparent = ##t
    s1
  | s1
  %15
  | \shape #'((0 . 0) (0 . 0.8) (0 . 0.8) (0 . 0)) Tie
    e''1~
  | \magnifyMusic 0.75 {
      \omit TupletBracket
      \omit TupletNumber
      \tuplet 3/2 { e8 e[( fis] } \tuplet 3/2 { g[ fis e] }
      \tuplet 3/2 { g'[ e cis] } \tuplet 3/2 { bes[ g e]) }
    }
  \bar "||"
  | \override Score.BarLine.transparent = ##f
    \override Score.SpanBar.transparent = ##f
    <d, fis>2( <d g>
  | <d c'>2. <d b'>4
  | a'2 \grace { b8[ a g a] } b4. g8
  %20
  | b2 a)
  | <f! gis>2( <e a>
  | <f! d'>2 \acciaccatura e8 <e c'>2)
  | r4 <d f! b>2~( <d f b>8[ r16 <b e gis>])
  | <b e gis>2( <c e a>4) r
  %25
  | r <c ees a>2~\( <c ees a>8[ r16 <a d fis>]\)
  | <a d fis>2~( <g d' g)>4) r
  | r <g c e>2.
  | \bottom
    r4 <fis a d>2.
  | <g d'>1\fermata
    \top
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set tieWaitForNote = ##t
  %1
  | s1*2
  | e2 e
  | d1
  %5
  | s1*4
  | \override Beam.positions = #'(-4.5 . -5.5)
    fis8\p[ d \bottom\stemUp a d,]
    \top\stemDown g'8[ d \bottom\stemUp g, d]
  %10
  | \top\stemDown c''[_\markup { "rit." } dis, \bottom\stemUp fis, c~]
    \stemDown c2
  | \override Beam.positions = #'(-5 . -6)
    \top\stemDown dis'8[ c \bottom\stemUp fis, c]
    \top\stemDown e'8[ b \bottom\stemUp e, b]
  | \top\stemDown a''8^~[_\markup { \raise #-5 "rit." } c, \bottom\stemUp dis, a]
    \top\hideNotes a''4 \unHideNotes s
    \revert Beam.positions
    \stemUp\tupletNeutral
    \magnifyMusic 0.75 {
      \omit TupletBracket
      \tuplet 3/2 { r8 a(\pp b } \tuplet 3/2 { c b a } fis'4. e8
  |   e4 dis2^\fermata)
      \omit TupletNumber
      \acciaccatura dis8 \tuplet 5/4 { dis16 e dis cisis dis }
  %15
  |   %\undo\omit TupletNumber
      \tupletDown
      \tuplet 3/2 { g,8\rest e fis } \tuplet 3/2 { g fis e }
      cis'4. b8
  |   s1
    }
  | s1*2
  | \stemDown e,2 e
  %20
  | d1
  | s1*4
  %25
  | s1
  | s1
  | s1
  | s1
  | s1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*3
  | g2 fis
  %5
  | b a
  | gis \grace { a8[ gis fisis gis] } s2
  | s1*8
  | \top\stemDown ais2. b4
  | << {
      \once\override Arpeggio.positions = #'(-4 . -2)
      \stemDown <cis e>2\arpeggio_\fermata s2
    } \\ {
      \magnifyMusic 0.75 {
        \shape #'((0.5 . 1.2) (0 . 1) (0 . 0.5) (0 . 0)) Slur
        \once\override NoteColumn.force-hshift = #-0.2
        b'4(
      }
      ais2.\fermata)
    } >>
  | s1*3
    \bottom
  %20
  | \stemUp g,2 fis
  | b a
  | gis \grace { a8[ gis fisis gis] } s2
  | s1*2
  %25
  | s1
  | s1
  | s1
  | s1
  | s1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <c a'>2( <b g'>
  | <a fis'>2. <b g'>4
  | <c g'>2 <cis g'>
  | d1)
  %5
  | d2( c!
  | b c)
  | r4 d2~^( d8[ r16 e])
  | e2^( \stemUp a,4) \stemDown r
  | \shape #'((0 . 1) (0 . 0) (0 . 1) (0 . 1.4)) Slur
    c2( b
  %10
  | a1)\fermata
  | a2( g
  | fis~) \stemUp fis4\fermata r8*2^\fermata
  | s1
  | s1
  %15
  | s1
  | s1
  | \stemDown
    <c' a'>2( <b g'>
  | <a fis'>2. <b g'>4
  | <c g'>2 <cis g'>
  %20
  | d1)
  | d2( c!
  | b_\markup { \hspace #3 "rit."  } c)
  | r4 d2~^( d8[ r16 e])
  | e2^(\> \stemUp a,4) \stemDown r
  %25
  | r4 \stemUp c2~ c8[ r16 d]
  | d2( b4) r
  | r c2.
  | r4 \stemDown <d, c'>2.
  | <g, b'>1\fermata\!
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-1 \dynamic p } s\< s s
  | s s s\! s
  | s1*2
  %5
  | s4 s s\< s
  | s4 s s\! s
  | s4 s4-\markup { \hspace #-0.4 \dynamic pp } s2
  | s4\> s s\! s
  | s1
  %10
  | s1*3
  | s8 s\< s s\! s4 s
  | s1
  %15
  | s8 s\< s s s s\! s s
  | s8 s s s s s\>^\markup { \small "rit." } s s
  | s4\!-\markup { \dynamic p } s\< s s
  | s s s\! s
  | s1
  %20
  | s1
  | s4 s\< s s
  | s s s\! s
  | s4 s4-\markup { \dynamic pp } s\ritardando s\startTextSpan
  | s1*4
  | s1\stopTextSpan
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
    title = \markup { "13. Der Dichter spricht" }
    subtitle = \markup {
      \column {
        \line { "(The Poet Speaks)" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
