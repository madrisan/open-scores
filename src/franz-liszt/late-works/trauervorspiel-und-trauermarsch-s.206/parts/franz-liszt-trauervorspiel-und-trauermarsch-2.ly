Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | \clef bass r2^\markup \small\bold \abs-fontsize #11 {
      \line {
        \column {
          \line { "Einleitung" }
          \line { \italic "Andante maestoso funebre" \normal-text\super "(1)" }
        }
      }
    } f,
  | fis1
  | g2 bes
  | cis1
  %5
  | r2 f,
  | fis1
  | g2 bes
  | cis1\fermata
  \bar "||"
  \key g \minor
  | \tempo "Marsch" 2 = 48
    r2 fis,4_. r
  %10
  | g_. r bes_. r
  | cis_. r r2
  | R1
  | r2 \clef treble <g' bes ees>~
  | q1
  %15
  | r2 <fis a ees'>~
  | q1
  | r2 <f aes d>~
  | q1
  | r2 <e g cis>~
  %20
  | q1
  | r2 <g bes e>4.(^\markup { \small\italic "risoluto" } <a cis f>8)
  | <g bes e>4_. r q r
  | r2 <fis a ees'>4.( <g bes e>8)
  | <fis a ees'>4_. r q4 r
  %25
  | r2 <f aes d>4.( <fis a ees'>8)
  | <f aes d>4 r q r
  | r2 <e g cis>4.( <f aes d>8)
  | <e g cis>2.^\markup { \small\italic "marcato" } q4
  | q2 q
  %30
  | q4 r r2
  | r2 <g b e>_\marcato
  | r2 <fis a ees'>_\marcato
  | r2 <f aes d>_\marcato
  | r2 <e g cis>_\marcato
  %35
  | r2 \clef bass \stemUp c'\marcato
  | b\marcato bes\marcato
  | r c\marcato
  | b\marcato bes\marcato
  | c4.^\markup { \small\italic "doloroso" \normal-text\super "(3)" } b8 bes4. a8
  %40
  | aes4. g8 aes8.[ a16 bes8. b16]
  | c4. b8 bes4. a8
  | aes4. g8 aes8.[ a16 bes8. b16]
  \repeat unfold 2 {
  | c4. b8 bes8.[ cis16 bes8. cis16]
  }
  %45
  \repeat unfold 2 {
  | ees4. d8 cis8.[ e16 cis8. e16]
  }
  \break
  | \clef treble
    fis4.^\markup { \small\italic "agitato" } f8 e8.[ g16 e8. g16]
    fis4. f8 e8.[ g16 e8. g16]
  \repeat unfold 2 {
  | fis8.[ a16 fis8. a16] g8.[ bes16 g8. bes16]
  }
  \break
  | a2^\markup { \small\italic "largo" } gis
  | a gis4 a8 bes
  | bes2 a
  | bes2 a4 bes8 b
  %55
  | <c,! ees! c'>2_-\f <b ees b'>_-
  | <bes ees bes'>2_- <a ees' a>4_- <bes bes'>8[ <b b'>]
  | <c ees c'>2_- <b ees b'>_-
  | <bes ees bes'>_- <a ees' a>4_- <bes bes'>8[ <b b'>]
  | c'4. b8 bes4. a8
  %60
  | aes4. g8 aes8.[ a16 bes8. b16]
  | c4.^\markup { \small\italic "appassionato" } b8 bes4. a8
  | aes4. g8 <aes,! aes'!>8.[ <a a'>16 <bes ees bes'>8. <b b'>16]
  | c'4.^\markup { \small\italic "poco a poco accel." } b8
    <bes, e bes'>8.[ <cis cis'>16 <bes e bes'>8. <cis cis'>16]
  | c'4. b8 <bes, e bes'>8.[ <cis cis'>16 <bes e bes'>8. <cis cis'>16]
  %65
  \repeat unfold 2 {
  | ees'!4. d8 <cis, e cis'>8.[ <e g e'>16 <cis e cis'>8. <e g e'>16]
  }
  \repeat unfold 2 {
  | fis'4. f!8 s2
  }
  | \stemDown
    <fis, a fis'>8.[ <a c a'>16 <fis a fis'>8. <a c a'>16]
    <g bes g'>8.[ <bes cis g'>16 <g bes g'>8. <bes cis g'>16]
  %70
  | <a c a'>8.[ <c ees! c'>16 <a c a'>8. <c ees c'>16]
    <bes cis bes'>8.[ <cis e! cis'>16 <bes cis bes'>8. <cis e! cis'>16]
  | <cis e cis'>8^\markup { \small\italic "sostenuto assai" }
    r16 \stemUp <cis, e! cis'>16[ q8. q16] q8 r16 \stemDown <cis' f cis'>16[ q8. q16]
  | q8 r16 \stemUp <cis, bes' cis>16[ q8. q16] q8 r16 \stemDown <cis' bes' cis>16[ q8. q16]
  | q8 r16 \stemUp <cis, e cis'>16[ q8. q16] q8 r16 \stemDown <cis' f cis'>16[ q8. q16]
  | q8 r16 <bes cis>16[ q8. q16] q8 r16 <cis bes' cis>16[ q8. q16]
  %75
  | q8 r r4 \stemUp fis2
  | s1
  | s2 fis
  | s1
  | s2 \stemDown ees'!~\(
  %80
  | ees cis
  | bes4\) r ees2~\(
  | ees cis
  | bes4\) r f'2~\(
  | f ees
  %85
  | bes\) f'~\(
  | f ees
  | bes4\) r <fis bes fis'>2~\(
  | q e'!4 cis
  | bes\) r fis'2~\(
  %90
  | fis e!4 cis
  | bes\) fis\( g bes
  | cis\) r \stemUp
    \shape #'((( 0 . 2) (0 . 2) (0 . 0) (0 . 0))) PhrasingSlur
    fis,2\(^\markup { \small\italic "dolce espressivo" }
  | g4 a bes c
  | \stemNeutral <e, cis'>\) r <cis fis>2(
  %95
  | <ees g>1)
  | r2 <e bes'>
  | cis'1~
  | cis4 r r2
  | r4 fis,,_. g_. bes^.
  %100
  | cis^. fis,_. g_. bes^.
  | cis,_. \clef bass fis,^. g^. bes^.
  | cis^. fis,^. g^. bes^.
  | cis,_. r <cis f cis'>2^>^\markup { "" \normal-text\super "(4)" }
  | <cis g' cis>^> <cis bes' cis>^>
  %105
  | <cis cis'>2.^\marcato^\markup { \small\italic "marcato" } q4^\marcato
  | q2^\marcato q^\marcato
  | r2 <cis fis cis'>^>
  | <cis g' cis>^> <cis bes' cis>^>
  | <cis cis'>2.^\marcato^\markup { \small\italic "marcato" } q4^\marcato
  %110
  | q2 q^\marcato
  | r2 \clef treble <cis' cis'>_>~
  | q <fis, fis'>_>
  | r2 <g g'>~_>
  | q \clef bass <bes, bes'>
  %115
  | r2 <cis cis'>~
  | q <fis, fis'>_>
  | r2 <g g'>~_>
  | q <bes bes'>^>
  | r2 <cis cis'>~^>
  %120
  | q <fis, fis'>_>
  | r2 <g g'>~_>
  | q <bes bes'>^>
  | <cis cis'>1~^\marcato
  | q1~
  %125
  | q1~
  | q1
  \fine
}

AltoI = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*34
  %35
  | \stemDown s2 <ees g>
  | <e g>1
  | s2 <ees g>
  | <e g>1
  %39
  \repeat unfold 2 {
  | <ees g>2 e
  | e2. 4
  }
  \repeat unfold 2 {
  | <ees g>2 <e g>4 q
  }
  %45
  \repeat unfold 2 {
  | <fis a>2 <g bes>4 q
  }
  \repeat unfold 2 {
  | <a c>2 <bes cis>4 q
  }
  \repeat unfold 2 {
  | <c ees> q <bes e> <cis e>
  }
  %51
  | <a cis e>2 \shiftOn <cis e>
  | <a cis e>2 <gis cis e>4 <cis e>
  | <bes cis e>2 <cis f>
  | <bes cis e> <a cis f>4 <cis f>
  %55
  | s1
  | s2. ees4
  | s1
  | s2. ees4
  | <c ees>8.[ g'16 <c, ees>8] b
    <bes cis>8.[ e16 <bes cis>8] a
  %60
  | <aes cis>8.[ e'16 <aes, cis>8] g
    aes8.[ a16 <bes ees>8. b16]
  | <c ees!>8.[ g'16 <c, ees>8] b
    <bes cis>8.[ e16 <bes cis>8] a
  | <aes cis>8.[ e'16 <aes, cis>8] g8 s2
  | <c ees!>8.[ g'16 <c, ees>8] b s2
  | <c ees!>8.[ g'16 <c, ees>8] b s2
  %65
  \repeat unfold 2 {
  | <ees fis>8.[ a16 <ees fis>8] d8 s2
  }
  \repeat unfold 2 {
  | <fis a>8.[ c'16 <fis, a>8] f!8 <e g e'>8.[ <g bes g'>16 <e g e'>8. <g bes g'>16]
  }
  | s1*23
  %92
  | s2 ees'2
  | ees e
  | s1*3
  | fis2 g~
  | \shiftOff 4 s2.
}

AltoII = \context Voice = "five" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*50
  %51
  | s2 gis4 a8[ bes]
  | s2. a8[ bes]
  | s2 a4 bes8[ b]
  | s2. bes8[ b]
  %55
  | s1*20
  %75
  | \phrasingSlurUp s2
    \tempo "Tempo I" 2 = 48
    <ees' ees'>4\( <cis cis'>
  | <cis fis bes>2 <cis fis a>
  | <cis e bes'>4\) r <ees ees'>4 <cis cis'>
  | <cis fis bes>2 <cis fis a>
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | r2 \ottava -1 f,
  | fis1
  | g2 bis
  | cis1
  %5
  | r2 f,
  | fis1
  | g2 bes
  | cis1\fermata
  \bar "||"
  \key g \minor
  \break
  | r2 fis,4_. r
  %10
  | g_. r bes_. r
  | cis_.\ottava 0 r <fis, fis'>_. r
  | <g g'>_. r <bes bes'>_. r
  \repeat unfold 2 {
  | <cis cis'>_. <fis, fis'>_. <g g'>_. <bes bes'>_.
  }
  | <cis cis'>_\markup { \small\italic "sempre staccato" } <fis, fis'> <g g'> <bes bes'>
  %15
  \repeat unfold 15 {
  | <cis cis'> <fis, fis'> <g g'> <bes bes'>
  }
  %31
  | <cis cis'> r <fis, fis'> r
  | <g g'> r <bes bes'> r
  | <cis cis'> r <fis, fis'> r
  \repeat unfold 25 {
  | <g g'> <bes bes'> <cis cis'> <fis, fis'>
  }
  %59
  | \ottava -1 g8_\markup { \small\italic "sempre staccato" } g' bes, bes' cis, cis' fis,, fis'
  \repeat unfold 3 {
  | g,8 g' bes, bes' cis, cis' fis,, fis'
  }
  | \ottava 0
  \repeat unfold 2 {
    <g, g'>8[ <ees'' g> <bes, bes'> <ees' g>] <cis, cis'>8[ <e' g> <fis,, fis'> <e'' g>]
  }
  %65
  \repeat unfold 2 {
    <g,, g'>8[ <fis'' a> <bes,, bes'> <fis'' a>] <cis, cis'>8[ <g'' bes> <fis,, fis'> <g'' bes>]
  }
  \repeat unfold 2 {
    <g,, g'>8[ <a'' c!> <bes,, bes'> <a'' c>] <cis,, cis'>8[ <bes'' cis> <fis,, fis'> <bes'' cis>]
  }
  %69
  \repeat unfold 2 {
    <g,, g'>8[ <fis'' c'! ees!> <bes,, bes'> <fis'' c' ees>]
    <cis, cis'>8[ <g'' cis e> <fis,, fis'> <g'' cis e>]
  }
  | \repeat tremolo 8 { g,,32 g' } \repeat tremolo 8 { bes, bes' }
  | \repeat tremolo 8 { cis, cis' } \repeat tremolo 8 { fis, fis' }
  | \repeat tremolo 8 { g, g' } \repeat tremolo 8 { bes, bes' }
  | \repeat tremolo 8 { cis, cis' } \repeat tremolo 8 { fis, fis' }
  %75
  | <g, g'>8^. r r4 \clef treble <bes fis' bes>2
  | <cis fis bes> <fis a>
  | <g bes>4 r <bes, fis' bes>2
  | <cis fis bes> <fis a>
  | <g bes>4 r r2
  %80
  | R1
  | <g cis e>4 r r2
  | R1
  | <g bes ees!>1~
  | q2 r
  %85
  | R1
  | R1
  | r2 <fis cis'>~
  | q r
  | <g cis e>4 r r2
  %90
  | R1
  | R1
  | r2 <a c!>
  | <bes cis> <fis cis'>
  | <g bes>4 r a2
  %95
  | bes1
  | r2 \stemDown fis4_\( g
  | bes1_~
  | 4\) r r2
  | r4 \clef bass \stemNeutral <fis,, fis'>_. <g g'>_. <bes bes'>^.
  %100
  | <cis cis'>^. <fis, fis'>_. <g g'>_. <bes bes'>^.
  | <cis, cis'>_. \ottava -1 <fis, fis'>_. <g g'>_. <bes bes'>^.
  | <cis cis'>^. <fis, fis'>_. <g g'>_. <bes bes'>^.
  | <cis, cis'>_. r <fis cis' fis>2
  | <g cis g'> <bes cis bes'>
  %105
  | \stemUp
    \override Beam.springs-and-rods = #ly:spanner::set-spacing-rods
    \override Beam.minimum-length = #6
    \override Beam.positions = #'(3 . 3.5)
    \repeat tremolo 16 { cis,32 cis' }
    \repeat tremolo 16 { cis,32 cis' }
  | r2 <fis, cis' fis>
  | \stemNeutral <g cis g'> <bes cis bes'>
    \stemUp
  \repeat unfold 18 {
  | \repeat tremolo 16 { cis,32 cis' }
  }
  \fine
}

centerDynamics = {
  %1
  | s2 s2-\markup {
      \dynamic p \whiteout\italic\small "espressivo dolente"
    }
  | s1*3
  | s2 s2-\markup { \dynamic mp }
  | s1*3
  | s2 s2-\markup {
      \dynamic mp \whiteout\italic\small "wie Glocken - Geläute" \normal-text \super "(2)"
    }
  | s1*35
  %45
  | s4\< s2.
  | s4 s s8 s s\! s
  | s1*2
  %49
  | s4\< s2.
  | s1
  | s1\!
  | s1*11
  %63
  | s1_\markup { \small\italic "poco a poco cresc." }
  | s1*5
  | s1_\markup { \hspace #-1 \whiteout \small\italic "molto appassionato e molto crescendo" }
  | s1
  | s1_\markup { \dynamic ff \small\italic "sempre grandioso" }
  | s1*3
  %75
  | s2 s2-\markup { \dynamic mp \whiteout "espressivo" }
  | s1*7
  %83
  | s1\p
  | s1*3
  | s2 s\pp
  | s1*4
  | s2 s\p
  | s1
  %94
  | s2 s\pp
  | s1*4
  | s4 s2.\p
  | s1
  | s4 s2.\mp
  | s1
  | s2 s-\markup { \hspace #-1 \dynamic ff \whiteout \small\italic "sempre" }
  | s1*11
  %115
  | s1-\markup { \hspace #-1.5 \small\italic "sempre" \dynamic ff }
  | s1*5
  | s2 s\ff\<
  | s1
  | s1\!\fff
}

forceBreaks = {
  % page 2
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  % page 4
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 8 { s1\noBreak } s1\pageBreak
  % page 5
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \AltoI
      \AltoII
    >>
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = #f
    opus = #f
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #20 "II." }
        }
      }
    }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 2 = 48
  }
}

\markup \small \abs-fontsize #9 {
  \hspace #-5
  \line {
    \column {
      \line { "Liszts Anweisungen" \italic "(Liszt's instructions)" }
      \null
      \line {
        \normal-text\super "(1)"
        "Diese Bezeichnung ist für den Verlauf ganzen Stückes festzuhalten"
      }
      \line {
        "   "
        \italic "This marking must be observed throughout the whole piece"
      }

      \line {
        \normal-text\super "(2)"
        "Die einzelnen Glocken-Schläge auf den vier Noten"
        \italic "fis, g, b, cis" \normal-text "sind durch das ganze Werk als breites"
        \italic "staccato" \normal-text "zu spielen"
      }
      \line \italic {
        "   "
        "The individual bell sounds falling on the four notes"
        "F" \raise #0.6 \sharp ", G, B" \raise #0.5 \flat "and C" \raise #0.6 \sharp
        "are to be played throughout with a broad staccato"
      }

      \line { \normal-text\super "(3)" "Im strengen Marsch-Tempo" }
      \line { "   " \italic "In strict march tempo" }

      \line {
        \normal-text\super "(4)" "Die Grund-Intonation" \italic "fis, g, b, cis"
        \normal-text "immer hervorgehoben"
      }
      \line \italic {
        "   "
        "The fundamental tone of"
        "F" \raise #0.6 \sharp ", G, B" \raise #0.5 \flat "and C" \raise #0.6 \sharp
        "is always to be brought out"
      }
    }
  }
}
