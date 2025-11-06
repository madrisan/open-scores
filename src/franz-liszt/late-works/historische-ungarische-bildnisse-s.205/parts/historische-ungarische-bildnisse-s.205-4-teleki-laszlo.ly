Global = {
  \key g \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205iv
  %1
  | \tempo "Lugubre" 2 = 58
    R1*4
  | r2 <g bes e>^^~
  | q1
  | r2 <fis a ees'>^^~
  | q1
  | r2 <fis aes d>^^~
  %10
  | q1
  | r2 <e g cis>^^~
  | q1
  | r2 <g bes e>4.( <a cis f>8)
  | <g bes e>4_. r q_. r
  %15
  | r2 <fis a ees'>4.( <g bes e>8)
  | <fis a ees'>4_. r q_. r
  | r2 <f aes d>4.( <fis a ees'>8)
  | <f aes d>4_. r q_. r
  | r2 <e g cis>4.( <f aes d>8)
  %20
  | <e g cis>4_.^\markup { "ritard." } r q_. r
    \clef "bass"
  | \stemUp
    c'4.^\markup { "a tempo" } b8 bes4. a8
  | aes4. g8 aes8.\( a16 bes8. b16\)
  | c4. b8 bes4. a8
  | aes4. g8 aes8.\( a16 bes8. b16\)
  %25
  \repeat unfold 2 {
  | c4. b8 bes8. cis16 bes8. cis16
  }
  \repeat unfold 2 {
  | ees4. d8 cis8. e16 cis8. e16
  }
  \repeat unfold 2 {
  | fis4. f8 e8. g16 e8. g16
  }
  %31
  \repeat unfold 2 {
  | fis8. a16 fis8. a16 g8. bes16 g8. bes16
  }
  | <cis, e a>2 <cis e gis>
  | <cis e a>2 gis'4\( a8 bes\)
  %35
  | <e, bes'>2 <cis! f! a>
  | <e bes'>2 a4\( bes8 b\)
  \repeat unfold 2 {
  | <c, ees c'>2 <b ees b'>
  | <bes ees bes'> \once\phrasingSlurDashed <a ees' a>4_\( <bes bes'>8 <b b'>\)
  }

    s1*59
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
  | s1*20
    \clef "bass"
  \repeat unfold 2 {
  | <ees g>2 e
  | e2. e4
  }
  %25
  \repeat unfold 2 {
  | <ees g>2 <e g>4 q
  }
  \repeat unfold 2 {
  | <fis a>2 <g bes>4 q
  }
  \clef "treble" \stemDown
  \repeat unfold 2 {
  | <a c!>2 <bes cis>4 q
  }
  %31
  \repeat unfold 2 {
  | <c ees!> q <bes e> <cis e>
  }
  | s2 gis4 a8 bes
  | cis2 <cis e>4 q
  %35
  | cis2 a4 bes8 b
  | cis2 <cis f>4 q
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*35
  | \change Staff = "upper"
    s2
    \override NoteColumn.force-hshift = #0.7
    a4 bes8 b
    \revert NoteColumn.force-hshift
  | s1
  | s2. ees4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r2 <fis,, fis'>4_. r
  \repeat unfold 5 {
  | <g g'>_. r <bes bes'>_. r
  | <cis cis'>_. r <fis, fis'>_. r
  }
  %12
  \repeat unfold 16 {
  | <g g'>_. <bes bes'>_. <cis cis'>_. <fis, fis'>_.
  }
  | <g g'>_. <bes bes'>_. <cis cis'>_. <f, f'>_.
  %29
  \repeat unfold 5 {
  | <g g'>_. <bes bes'>_. <cis cis'>_. <fis, fis'>_.
  }
  | <g g'> <bes bes'> \stemDown <cis cis'> <fis, fis'>
    \stemNeutral
  %35
  \repeat unfold 6 {
  | <g g'> <bes bes'> <cis cis'> <fis, fis'>
  }
  \repeat unfold 4 {
  | g8 g' bes, bes' cis, cis' fis,, fis'
  }
  %45
  \repeat unfold 2 {
  | <g, g'> <ees'' g> <bes, bes'> <ees' g> <cis, cis'> <e' g> <fis,, fis'> <e'' g>
  }
  \repeat unfold 2 {
  | <g,, g'> <fis'' a> <bes,, bes'> <fis'' a> <cis, cis'> <g'' bes> <fis,, fis'> <g'' bes>
  }
  %49
  \repeat unfold 2 {
  | <g,, g'> <a'' c> <bes,, bes'> <a'' c> <cis,, cis'> <bes'' cis> <fis,, fis'> <bes'' cis>
  }
  \repeat unfold 2 {
  | <g,, g'> <fis'' c' ees> <bes,, bes'> <fis'' c' ees> 
    <cis, cis'> <g'' cis e> <fis,, fis'> <g'' cis e>
  }
  | \override Beam.positions = #'(1 . 2) \repeat tremolo 8 { g,,32 g' } 
    \override Beam.positions = #'(2 . 3) \repeat tremolo 8 { bes, bes' } 
  | \override Beam.positions = #'(3 . 4) \repeat tremolo 8 { cis, cis' } 
    \override Beam.positions = #'(4.2 . 5.3) \repeat tremolo 8 { fis, fis' }
  %55
  | \revert Beam.positions
    \repeat tremolo 8 { g, g' } \repeat tremolo 8 { bes, bes' } 
  | \repeat tremolo 8 { cis, cis' } \repeat tremolo 8 { fis, fis' } 
  | <g, g'>8^. r r4 \clef "treble" <bes fis' bes>2
  | <cis fis bes> <fis a>
  | <g bes>4 r <bes, fis' bes>2
  %60
  | <cis fis bes> <fis a>
  | <g bes>4 r r2
  \repeat unfold 2 {
  | <gis cis e>4 r r2
  }
  | R1
  %65
  | <gis cis e>4 r r2
  | R1*3
  | r2 a
  %70
  | bes1
  | r2 \stemDown fis4_\( g
  | <bes e>1~\)
  | q4 r r2
  | r4 \clef "bass" \stemNeutral <fis,, fis'>-. <g g'>-. <bes bes'>^.
  %75
  | <cis cis'>^. <fis, fis'>-. <g g'>-. <bes bes'>^.
  | <cis, cis'>
    \ottava #-1
    <fis, fis'>4-. <g g'>-. <bes bes'>^.
  | <cis cis'>^. <fis, fis'>-. <g g'>-. <bes bes'>^.
  | <cis, cis'> r <fis cis' fis>2_>
  | <g cis g'>_> <bes cis bes'>^>
  %80
  | \override Beam.positions = #'(0 . 0.5)
    \repeat tremolo 16 { cis,32 cis' }
  | \repeat tremolo 16 { cis,32 cis' }
  | r2 <fis, cis' fis>_>
  | <g cis g'>_> <bes cis bes'>^>
  \repeat unfold 15 {
  | \repeat tremolo 16 { cis,32 cis' }
  }
  | \once\override TextScript.extra-offset = #'(3.2 . 0)
    \repeat tremolo 16 { 
      cis,^\markup {
        \musicglyph "scripts.ufermata"
      }
      cis'
    }
    \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
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
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "IV. Teleki László" }
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
    \tempo 2 = 58
  }
}
