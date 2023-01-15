\version "2.23.80"
\language "nederlands"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 13\mm
  first-page-number = 0
  indent = 0.0
  line-width = 18\cm
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  %system-system-spacing = #'((basic-distance . 2) (padding . 10))
  top-margin = 13\mm
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #33 \bold "Schafe können sicher weiden" }
        \null\null
        \line { \abs-fontsize #14 \bold "from the Cantata" }
        \null
        \line { \abs-fontsize #18 \bold "Was mir behagt, ist nur die muntre Jagd" }
        \null\null\null
        \line { \abs-fontsize #22 \bold "BWV 208" }
        \null\null
        \null\null
        \line { \abs-fontsize #16 \italic "arranged for Piano Solo by" }
        \null\null
        \line { \abs-fontsize #30 \bold "Egon Petri" }
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key bes \major
  \time 4/4
  \include "./global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  \tempo "Andante piacevole" 4 = 50-56
  %1
  | \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) PhrasingSlur
    <d f>8\(^\markup { \hspace #-1 \dynamic p \italic "non troppo, dolce (quasi flauti)" }
    <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
    <d f>8[( <ees g>) <ees g>( <g bes>)]\)
  | \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) PhrasingSlur
    <c, ees>8\( <c ees>16( <a c>) <c ees>8 <c ees>16( <a c>)
    <c ees>8[( <ees a>) <c a'>( <ees c'>)]\)
  | <d bes'>8~\( <d bes'>32 <ees c'> <f d'>16\)  <d bes'>16(\( <f d'>) <ees c'>( <c f>)\)
    <d bes'>8~\(\pp <d bes'>32 <ees c'> <f d'>16\)  <d bes'>16(\( <f d'>) <ees c'>( <c f>)\)
  | <d bes'>8 <bes' d>32(\(\p <c ees> <d f>16)  <bes d>16( <d, bes'>) <ees c'>( <f a>)\)
    <d bes'>8 <bes' d>32(\(\pp <c ees> <d f>16)  <bes d>16( <d, bes'>) <ees c'>( <c a'>)\)
  %5
  | \stemUp
    \once\shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
    <d bes'>4\p^\markup { \italic\small "espressivo il canto" }\( d8^-( c^-)
    c4.^- d8^-
  | ees4^- g8^-( f^-)
    \once\override Script.avoid-slur = #'inside
    d4^-\trill c8^-( bes^-)\)
  | d^-(\( bes^-) a^-( g^-) c4.^- d8^-
  | a4^- g8^-( f^-) f2^-\)
  | \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) PhrasingSlur
    <d' f>8\( <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
    <d f>8[( <ees g>) <ees g>( <g bes>)]\)
  %10
  | \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.3)) PhrasingSlur
    <ees g>8\( <ees g>16( <c ees>) <ees g>8 g16( ees)
    <ees g>8[( <f a>) <f a>( <a c>)]\)
  | c8\rest <d, bes'>32(\( c' d16) <d, bes'>( d') c( c,)
    <bes bes'>8\) b'8\rest c,--( bes--)
  | c'8\rest <d, bes'>32(\( c' d16) <d, bes'>( d') c( c,)
    <bes bes'>8\) b'8\rest c,--( bes--)
  | ees4.--\( f8-- d--[( c--]) bes--[( c--])
  | a4.-- bes8--\) <d f>8\( <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
  %15
  | <d f>8( <ees g>) <ees g>( <g bes>)\)
    <c, ees>8\( c16 a ees'8 ees16( a,)
  | <c a'>8( <d bes'>) q( <ees c'>)\)
    c'\rest <bes d>32(-\markup { \italic\small "sostenuto" }\(
    <c ees> <d f>16) <bes d>( <d, bes'>) <ees f>( a)
  | <d, bes'>8\)^\markup { \italic\small "a tempo" } <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
    <d f>8( <ees g>) q( <g bes>)
  | \stemDown
    <c, ees>8 <c ees>16( <a c>) <c ees>8 <c ees>16( <a c>)
    <c ees>8[( <ees a>) <c a'>( <ees c'>)]
  | <d bes'>8~\( <d bes'>32 <ees c'> <f d'>16\)  <d bes'>16( <f d'>) <ees c'>( <c f>)
    <d bes'>8~\(\pp <d bes'>32 <ees c'> <f d'>16\)  <d bes'>16( <f d'>) <ees c'>( <c f>)
  %20
  | <d bes'>8 <bes' d>32(\p <c ees> <d f>16)  <bes d>16( <d, bes'>) <ees c'>( <f a>)
    <d bes'>8 <bes' d>32(\pp <c ees> <d f>16)  <bes d>16( <d, bes'>) <ees c'>( <c a'>)
  | \stemUp bes'4\( g-- fis4.-- g8--
  | ees4-- d--
    \once\override Script.avoid-slur = #'inside
    bes--\trill a8--( g--)\)
  | s1
  | s1
  %25

  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  %1
  | s1*4
  %5
  | bes4-- bes bes8 bes bes bes
  | c c c c bes4 e,\rest
  | <d g>8 q <d f> q
    <c e!> q <c f> f
  | <c f> q <c e!>4 c8 c c c
  | f4--\( aes8--( g--) g4.-- a!8--
  %10
  | bes4-- d8--( c--) a4-- g8--^\)^( \bottom d^-)
  | \top\stemDown f'4--\( g8--( f--) f--( d--) ees,4\)
  | f'4--\( g8--( f--) f--( d--) f,4\)
  | <g bes>8 q <f a> q  <f bes> <ees a> <d f> <c g'>
  | <c f> q <ees f> q bes'2--
  %15
  | e,2\rest g'8--[(\( ees--]) d--[( c--])
  | f4.-- g8-- d4.-- c16--( bes--)
  | bes4--\) e,\rest e2\rest
  | s1*3
  %21
  | d'4---\markup { \italic\small "canto" } d8 d <c d> q <bes d> q
  | a a a a g4 c,\rest

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \slurDown
  %1
  | s1*3
  | s2 <bes d>8[ q] q s8
  | s1*9
  %14
  | s2 \stemDown d,2
  | s1*5
  %20
  | s2 \stemUp <bes' d>8[ q q] s
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurUp
  %1
  | <bes bes'>8^.^-(^\markup {
      \italic\small "semplice, tranquillo"
    }_\markup { \hspace #-4 \italic\small "col " \musicglyph #"pedal.Ped" }
    q^.^- q^.^- q^.^-  <bes g'>8^.^- q^.^- <bes ees>8^.^- q^.^-)
  | <bes c a'>8^\markup { \italic\small "simile" } q q q
    <bes f' a>8 q q q
  | <bes' d f> q <a bes d f> q  <g bes d f> q <f bes d f> q
  | <ees f bes d> q <f bes d> q g f16_( ees f8) \stemDown <f, f'>
  %5
  | <bes bes'> <bes' d f> q q  <bes ees g> q q q
  | <a c f> q q q  <bes d f> q q q
  | <bes, bes'> q q q  <bes g'> q <a a'> <bes g'>
  | c c <c bes'> q  <f a> q <ees! a> q
  | <d bes'> q <bes bes'> q <ees bes'> q <d bes'> q
  %10
  | <c ees c'> q q q  <f c'> q <ees a c>\sustainOn q
  | <d f bes>\sustainOff q <ees g bes> <ees a c> <bes d bes'> q <c ees bes'> q
  | <d f bes> q <ees g bes> <ees a c> <bes d bes'> q <c ees bes'> q
  | <c c'> q <f c'> q <bes, bes'>( c d ees
  | \stemUp f) f <f, f'> q <bes bes'> q q q
  %15
  | \stemDown <bes g'> q <bes ees> q <bes c g'>^\markup { \italic\small "molto espr." }
    q <a ees' f> q
  | <bes ees f_(> <bes d f)> <ees g> q <f bes d>\tweak Y-offset -5\sustainOn q <f, f'> q\sustainOff
  | <bes bes'> q q q <bes g'> q <bes ees> q
  | <bes c a'>8 q q q  <bes f' a>8 q q q
  | <bes' d f> q <a bes d f> q  <g bes d f> q <f bes d f> q
  %20
  | <ees f bes d> q <f bes d> q g f16_( ees f8) \stemDown <f, f'>
  | <bes bes'> q <bes' d> q <a d> q <bes d> q
  | <c g'> q <d fis> q <g, d'> q <f g d'> q
  | s1
  | s1
  %25

  \fine
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
    composer = "Johann Sebastian Bach"
    opus = \markup { "BWV 208" }
    title = \markup { "Schafe können sicher weiden" }
    subtitle = \markup {
      \column {
        \line { "[" { \italic "Sheep May Safely Graze" } "]" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #11
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
