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
          \line { \italic "Andante maestoso funebre" }
        }
      }
    } f,
  | fis1
  | g2 bis
  | cis1
  %5
  | r2 f,
  | fis1
  | g2 bes
  | cis1\fermata
  \break
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
  | c4.^\markup { \small\italic "doloroso" } b8 bes4. a8
  %40
  | aes4. g8 a8.[ 16 bes8. b16]
  | c4. b8 bes4. a8
  | aes4. g8 aes8.[ a16 bes8. b16]
  \repeat unfold 2 {
  | c4. b8 bes8.[ cis16 bes8. cis16]
  }
  %45
  \repeat unfold 2 {
  | ees4. d8 cis8.[ e16 cis8. e16]
  }
  %\break
  | \clef treble
    fis4.^\markup { \small\italic "agitato" } f8 e8.[ g16 e8. g16]
    fis4. f8 e8.[ g16 e8. g16]
  \repeat unfold 2 {
  | fis8.[ a16 fis8. a16] g8.[ bes16 g8. bes16]
  }
  \break
  | a2^\markup { \small\italic "largo" } gis
  | a gis4 a8 bes
  | R1
  | R1
  %55
  | R1
  | R1
  | R1
  | R1
  | R1
  %60
  | R1
  | R1
  | R1
  | R1
  | R1
  %65
  | R1
  | R1
  | R1
  | R1
  | R1
  %70
  | R1
  | R1
  | R1
  | R1
  | R1
    \break
  %75
  | R1
  | R1
  | R1
  | R1
  | R1
  %80
  | R1
  | R1
  | R1
  | R1
  | R1
  %85
  | R1
  | R1
  | R1
  | R1
  | R1
  %90
  | R1
  | R1
  | R1
  | R1
  | R1
  %95
  | R1
  | R1
  | R1
  | R1
  | R1
  %100

  \fine
}

Alto = \context Voice = "two" \relative c {
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
  <a cis e>2 gis4 a8 bes

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
  | R1
  | R1
  | R1
  | R1
  %80
  | R1
  | R1
  | R1
  | R1
  | R1
  %85
  | R1
  | R1
  | R1
  | R1
  | R1
  %90
  | R1
  | R1
  | R1
  | R1
  | R1
  %95
  | R1
  | R1
  | R1
  | R1
  | R1
  %100

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
      \dynamic mp \whiteout\italic\small "wie Glocken - Geläute"
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
      \Alto
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
    \tempo 4 = 100
  }
}
