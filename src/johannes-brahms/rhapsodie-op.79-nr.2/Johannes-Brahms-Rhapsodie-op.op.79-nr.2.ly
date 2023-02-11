\version "2.23.80"
\language "nederlands"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 8\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 17\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 25))
  top-margin = 15\mm
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "davide.madrisan@gmail.com"
  }
  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Johannes" }
        \null
        \line { \abs-fontsize #80 \bold "Brahms" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #48 \bold "Rapsodie g-moll" }
        \null\null\null
        \line { \abs-fontsize #34 \bold "op. 79 nr. 2" }
        \null\null\null
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line { \abs-fontsize #12 "Based on the Edizioni Curci - Milano" }
        \null\null
      }
    }
  }
}

Global = {
  \key g \minor
  \time 4/4
  \include "./global.ly"
  %\override Staff.BreathingSign.text =
  %  \markup { \magnify #1.5 \musicglyph "scripts.rcomma" }
  \override Staff.BreathingSign.text = \markup {
    \override #'(direction . 1)
    \override #'(baseline-skip . 2)
    \dir-column {
      \translate #'(-0.025 . 0.3)
      \center-align \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
      \center-align \musicglyph "scripts.ufermata"
    }
  }
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }
crescendo = { \override TextSpanner.bound-details.left.text = \markup { \small "crescendo " } }
intempo = \markup { \small "in tempo" }
rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \tempo
  \markup {
    \column {
      \bold "Molto passionato, ma non troppo allegro"
      " "
    }
  }
  \partial 4
    d,4
  %1
  \repeat volta 2 {
  | ees g^\markup { \small "m.s." } bes e,!
  | f a^\markup { \small "m.s." } c f^>
  | e! c g a
  | b! d2 fis,4^\intempo
  %5
  | g b!^\markup { \small "m.s." } d gis,
  | a cis!^\markup { \small "m.s." } e! a^>
  | gis e! b cis
  | dis fis2
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <b,,! b'!>4(_\markup {
      \dynamic f \whiteout \pad-markup #0.2 \small ", in tempo"
    }
  | <e! g! b! e!>^.) <d_~ a'~ d~>4_> \tuplet 3/2 { <d a' d>4 <d a'>8_. }
    \tuplet 3/2 { <d g b>_.[ r <d g>_.] }
  %10
  | \omit TupletNumber
    \tuplet 3/2 { <d fis a>_.[ g\rest d_.] } \tuplet 3/2 { <d g b!>_.[ g\rest <d g>_.] }
    \tuplet 3/2 { <d fis a>_.[ g\rest d_.] } \tuplet 3/2 { <d g b>_.[ g\rest <d g>_.] }
  | \stemDown
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <g c ees! g>4^._\markup {
      \dynamic f
    }
    <fis_~ a_~ d~ fis~>4^>
    \stemUp \undo\omit TupletNumber \tuplet 3/2 { <fis a d fis>8[ r <d a' d>_.] }
    \tuplet 3/2 { <d g bes>_.[ r <d g>_.] }
  | \omit TupletNumber
    \tuplet 3/2 { <d fis>_.[ g\rest <d a' d>_.] } \tuplet 3/2 { <d g bes>_.[ g\rest <d g>_.] }
    \tuplet 3/2 { <d fis a>_.[ g\rest <d a' d>_.] } \tuplet 3/2 { <d g bes>_.[ g\rest <bes, d g>_.] }
  | <fis d' fis>4_- <gis b! f'!>_- <cis e!>\fermata
    \once\override Staff.BreathingSign.text = \markup {
      \translate #'(0 . 1)
      \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
    }
    \breathe
    \stemDown \tuplet 3/2 { <a' a'>8\< <bes bes'> <a a'>\! }
  | \stemUp gis'4~\> \tuplet 6/4 { gis8[(\! d e!] f[ g f]) } e4
  %15
  | \stemUp gis4~\> \tuplet 6/4 { gis8[(\! d e!] f[ g f]) } e4
  | g!4~\> \tuplet 9/6 { g8[\!( cis, d e! f e d e d] }
  | \tuplet 6/4 { c![ d bes a bes a] } e'!4)
    \once\override Hairpin.Y-offset = #-5.5
    \tuplet 3/2 { d8\>( e d\! }
  | \tuplet 3/2 { c! d bes } \tuplet 3/2 { a bes a } e'!4) \tuplet 3/2 { a,8( bes a) }
  | f'4 \tuplet 3/2 { a,8( bes a) } gis'4 \tuplet 3/2 { a,8( bes a) }
  %20
  | <a cis e! a>2.^-
    \clef bass \stemDown\slurDown
    \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(1 . -1.5)
      a,8_\markup {
        \dynamic p \whiteout \pad-markup #0.4 \small "mezza voce"
      }(
      bes a)
    }
  | \stemUp\slurUp d4^. d^. d^. \tuplet 3/2 { a8( bes a) }
  | \stemUp\slurUp d4^. d^. d^. \tuplet 3/2 { a8( bes a) }
  | <d f>4 q q <g, e'!>
  | <f d'> <e! cis'> <f d'> \clef treble \tuplet 3/2 { a'8( bes a) }
  %25
  | <d, d'>4^.( q^. q^.) \tuplet 3/2 { a'8( bes a) }
  | <d, d'>4^.( q^. q^.) \tuplet 3/2 { a'8( bes a) }
  | <d f>4 q q <g, e'!>
  | <f e'!> <f d'> <e! d'> <e cis'>
  | <f' a> q q <e! g>
  %30
  | <e! f> <d f> <d e> <cis e>
  | d \tuplet 3/2 { r8 <cis e!>4 }
    \tuplet 3/2 { r8 \once\override NoteColumn.force-hshift = #0.3 d4 }
    \tuplet 3/2 {
      \ottava #1
      r8 <cis'! e!>4
      \ottava #0
    }
  | s2. d,,4
  }
  %33

  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \partial 4
    \tuplet 3/2 { d8 \bottom d, a' } \top
  %1
  | ees'2. \omit TupletNumber \tuplet 3/2 { e!8 \bottom e,! bes' }
  | \top \once\override Stem.length = #4.5 f'2. \tuplet 3/2 { f'8 f, c' }
  | \tuplet 3/2 { e! e,! g } \tuplet 3/2 { c c, e }
    \tuplet 3/2 { g g, e' } \tuplet 3/2 { a a, <ees' fis> }
  | s1
  %5
  | \top \once\override Stem.length = #5 g2. s4
  | \once\override Stem.length = #5 a2. \tuplet 3/2 { a'8\f a, e' }
  | \tuplet 3/2 { gis gis, b! } \tuplet 3/2 { e! e,! gis }
    \tuplet 3/2 { b b,! gis' } \tuplet 3/2 { cis cis, <g'! ais> }
  | \rit
    \tuplet 9/6 {
      dis'\startTextSpan[ dis, <fis b!> fis' fis, <b!_~ d^~> <b d> fis <b dis>\stopTextSpan]
    }
    \breathe s4
  | s1*5
  | gis2. \tuplet 3/2 { <a a'>8[(\< <bes bes'> <a a'>])\! }
  %15
  | gis2. \tuplet 3/2 { <a a'>8[(\< <bes bes'> <a a'>])\! }
  | g!2. f4
  | \undo\omit TupletNumber \tuplet 3/2 { e!4\< d8 } cis4 g'\! f
  | \tuplet 3/2 { e!4\< d8 } cis4\! g'\>
    \once\override Staff.TextScript.extra-offset = #'(1.6 . 1)
    cis,\!_\markup {
      \small "cresc."
    }
    \omit TupletNumber
  | s1
   %20
  | s1
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1.5
      a8( bes a)
    }
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } e'!4
  %25
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \crescendo
    \tuplet 3/2 { a8_\startTextSpan( bes a) }
    \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1.5
      a8( bes a)
    }
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
  | \tuplet 3/2 { r8 bes( a) } \tuplet 3/2 { r8 bes( a) }
    \tuplet 3/2 { r8 bes( a) } \tuplet 3/2 { a( bes a) }
  %30
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a)\stopTextSpan }
  | \tuplet 3/2 { a8(\f bes a) }
    \override Parentheses.font-size = #1
    \tuplet 3/2 {
      s8 \once\override NoteColumn.force-hshift = #1.7
      <bes bes'> <a a'>\parenthesize\<
    }
    \tuplet 3/2 { s8 <bes bes'> <a a'> }
    \tuplet 3/2 {
      s8 \once\override NoteColumn.force-hshift = #1.7
      <bes' bes'> <a a'>\!
    }
  | \slurUp \tuplet 9/6 {
      f'8[( d a f d a f d a\parenthesize\mf ])
    }
    \tuplet 3/2 {
      d8 \bottom d, a'
    }
    \revert Parentheses.font-size\top
  %33

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyHeadedOn
  \partial 4
    s4
  %1
  | \omit TupletNumber
    \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead ees8[ \bottom\tieDown ees, bes'~  bes ees, bes'~  bes ees, bes']
    } s4
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead f'8[ \bottom\tieDown f, c'~  c f, c'~  c f, c']
    } s4
  | s1\rit
  | \tuplet 9/6 { \top b'!8[\startTextSpan b,! <d g>  d' d, <g_~ b^~>  <g b> d <g b>\stopTextSpan] }
    \once\override Staff.BreathingSign.text = \markup {
      \translate #'(0 . 0.3)
      \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
    }
    \breathe
    \tuplet 3/2 { fis \bottom fis, cis' }
  %5
  | \tuplet 9/6 {
      \top \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead g'[ \bottom g, d'~ d g, d'~ d g, d' ]
    }
    \tuplet 3/2 { \top gis \bottom gis, d' }
  | \tuplet 9/6 {
      \top \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead a'[ \bottom a, e'^~ e a, e'^~ e a, e' ]
    }
    s4
  | s1*13
  %20
  | \hideNotes g,1^\f \unHideNotes


}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \partial 4
    <d,, d'>4
  %1
  \repeat volta 2 {
  | <g g'>_\Ped s2 <c, c'>4
  | <a' a'> s2 \stemNeutral <a, a'>4
  | <c' c'>2 <c, c'>4^\< <c'' ees! fis>
  | <g, g'> <b'! d g>\! <d g b!> \stemDown <fis,, fis'>
  %5
  | <b! b'!> s2 <e,! e'!>4
  | <cis' cis'> s2 \stemUp <cis, cis'>4
  | <e'! e'!>2 <e, e'>4^\< \stemNeutral <e'' g! ais>
  | <b,! b'!> <dis' fis b!>\! <fis b dis> <b,, b'>(
  | <e,! e'>_.) <fis fis'>2_> \tupletUp\tuplet 3/2 { <g g'>8_.[ <b! b'!>_.] r }
  %10
  | \omit TupletNumber
    \stemNeutral
    \tuplet 3/2 { <d d'>8-.[ <fis fis'>-.] r }
    \tuplet 3/2 { <g g'>8^.[ <b! b'!>^.] r }
    \tuplet 3/2 { <d d'>8^.[ <d, d'>^.] r }
    \tuplet 3/2 { <g g'>8-.[ <g, g'>-.] r }
  | <c, c'>4_. <d d'>2_>
    \undo\omit TupletNumber
    \override TupletNumber.direction = #-1
    \tupletUp\tuplet 3/2 { <g g'>8_. <bes bes'>_. r }
  | \omit TupletNumber
    \tuplet 3/2 { <d d'>-.[ <fis fis'>-.] r }
    \tuplet 3/2 { <g g'>^.[ <bes bes'>^.] r }
    \tuplet 3/2 { <d d'>^.[ <d, d'>^.] r }
    \tuplet 3/2 { <g g'>-.[ <g, g'>-.] r }
  | \tuplet 3/2 { <a' a'>-.[ <a, a'>-.] r }
    \tuplet 3/2 { <d d'>-.[ <d, d'>-.] r }
    \stemDown\slurUp \tuplet 3/2 { <a' a'>_. <a, a'>4\fermata }
    r4^\mp
  | \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tuplet 9/6 { d'8[( bes' d f bes d, b'! d, b!]) }
    \stemUp\slurDown \tuplet 3/2 { cis,( cis' e!) }
  %15
  | \stemDown\slurUp
    \shape #'((0 . 4) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tuplet 9/6 { d,8[( bes' d f bes d, b'! d, b!]) }
    \stemUp\slurDown \tuplet 3/2 { c,!( c'! e!) }
  | \stemDown\slurUp
    \shape #'((0 . 4) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tuplet 9/6 { bes,!8[( bes' d g bes g cis bes cis,]) }
    \stemUp\slurDown \tuplet 3/2 { a,( a' d }
  | \tuplet 3/2 { g,, g' e'!) }
    \shape #'((0 . 2) (0 . 0) (0 . 1) (0 . 0)) Slur
    \stemDown\slurUp \tuplet 6/4 { a,,[( a' e' a e cis]) }
    \stemUp\slurDown \tuplet 3/2 { a,( a' d }
  | \tuplet 3/2 { g,, g' e'!) }
    \shape #'((0 . 2) (0 . 0) (0 . 1) (0 . 0)) Slur
    \stemDown\slurUp \tuplet 6/4 { a,,[( a' e' a e cis]) }
    \stemUp\slurDown \tuplet 3/2 { a,( a' e' }
  | \stemDown \tuplet 3/2 { b'! f d) }
    \shape #'((0 . 2) (0 . 0) (0 . 1) (0 . 0)) Slur
    \slurUp \tuplet 6/4 { a,[( a' e' d' b f]) }
    \stemUp\slurDown \tuplet 3/2 { a,,( a' e' }
  %20
  | \slurUp \tuplet 9/6 {
      \top e'![ cis \bottom a^\> e! cis a e! cis gis])
    }
    \tuplet 3/2 { <a a'>\!\arpeggio(_\> bes' a)\! }
  | <d,, d'>4_._( <f f'>_. <g g'>_.)
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | <d,, d'>4_._( <f f'>_. <g g'>_.)
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | <d,, d'>8.[ <e! e'!>16 <f f'>8. <d d'>16] <bes' bes'>4_- <g g'>8.[ <e e'>16]
  | <a a'>4 q q
    \stemDown
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a' e'! a>8\!\arpeggio(^\> bes' a)\!
    }
  %25
  | \stemUp <d,, d'>4 <f f'> <g g'>
    \stemDown
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | \stemUp <d,, d'>4 <f f'> <g g'>
    \stemDown
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | \stemNeutral <d,, d'>8.[ <e! e'!>16 <f f'>8. <d d'>16] <bes' bes'>4^- <g g'>8.[ <e e'>16]
  | <a a'>4 <f f'>8.[ <d d'>16] <a' a'>4 <a, a'>
  | <d d'>8.[ <e! e'!>16 <f f'>8. <d d'>16] <bes' bes'>4^- <g g'>8.[ <e e'>16]
  %30
  | <a a'>4 <f f'>8.[ <d d'>16] <a' a'>4 <a, a'>
  | <d d'> <a' e'! a> <d f d'> \clef treble <a' e'! a>
  | <d f d'> r \clef bass <d,,, d'>2
  }
  %33

  \fine
}

centerDynamics = {
  \partial 4
    s4-\markup { \hspace #-2 \dynamic f }
  %1
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
    composer = "Johannes Brahsm"
    opus = "Op. 79 Nr. 2"
    title = \markup { "Rapsodie g-moll" }
    %subtitle = \markup { "Op. 79, No 2" }
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
