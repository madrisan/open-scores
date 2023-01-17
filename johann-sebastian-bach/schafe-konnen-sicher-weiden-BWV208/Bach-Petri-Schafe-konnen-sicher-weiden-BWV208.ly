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
  ragged-last-bottom = ##f
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

startParenthesis = {
  \once\override Parentheses.stencils = #(lambda (grob)
    (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
      (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once\override Parentheses.stencils = #(lambda (grob)
    (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
      (list point-stencil (cadr par-list))))
}

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
    <ees g>8\( <ees g>16( <c ees~>) <ees g>8 g16( ees)
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
    bes--\trill a8--( g--)
  | c4-- d8--( b!--) c4.-- d8--
  | ees4-- f8--( d--) ees4-- g8--( f--)
  %25
  | g4-- aes-- b,!-- c8--( d--)
  | ees4-- d8--( c--)\) <ees g> q16( <c ees>) <ees g>8 q16( <c ees>)
  | \stemDown <ees g>8( <f aes>) q( <aes c>) <d, f>8 q16( <b! d>) <d f>8 q16( <b d>)
  | <d f>8( <f b!>) <d b'>( <f d'>)
    <ees_~ c'~>\( q32 <f d'> <g ees'>16\)  <ees c'>( <g ees'>) <f d'>( <d g>)
  | <ees_~ c'~>8\(\pp q32 <f d'> <g ees'>16\)  <ees c'>( <g ees'>) <f d'>( <d g>)
    <ees c'>8 <c' ees>32(\p <d f> <ees g>16) <c ees>( <ees, c'>) <f d'>( <g b!>)
  %30
  | <ees c'>8 <c' ees>32( <d f> <ees g>16) <c ees>( <ees, c'>) <f d'>( <d b'!>)
    \stemUp\once\shape #'((0 . -1.5) (0 . 0) (0 . 0.5) (0 . 0)) PhrasingSlur
    <ees c'>4\( bes8-- a!--
  | bes4.-- d8-- c4-- bes8--( a16-- bes--)
  | \once\override Script.avoid-slur = #'inside
    a4--\trill g8--( f--)\)  a' a16( f)  <f a>8 a16( f)
  | <f a>8( <g bes>) <g bes>( <bes d>)  bes, bes16( g)  bes8 bes16( g)
  | g8[( e'!)] <cis e>[( g')] <ees a> q16( fis) <fis a>8 q16 <d fis>
  %35
  | <fis a>8( <g bes>) q( d')  <g, c> q16( <e! g>) q8 16( <c e>)
  | <e! g>8( <f a>) q( <a c>)  <a, c> <a c>16 <f a> <a c>8 <a c>16 <f a>
  | <a c>8( bes) <bes d>4 <b! d>8 <b d>16 <g b> <b d>8 <b d>16 <g b>
  | <b! d>8( c) e( g)  g\( g16( c,) <f a>8 a16( <d, f>)
  | <e! bes'>8( <g c>) <e bes'>( <e g>)
    \once\override Staff.TextScript.extra-offset = #'(0 . -0.5)
    c16--(_\markup { \hspace #0.3 \italic\small "sostenuto" } bes-- a-- bes-- c-- bes-- c-- d--)
  %40
  | a4-- g8--( f--) f2--^\markup { \italic\small "a tempo" }\)
  | bes4-- d8--( c--) c4.-- d8--
  | ees4-- g8--( f--) d4--\trill c8--( bes--)
  | d--[( bes--]) a--[( g--]) c4.-- d8--
  | a4-- g8--( f--) f2--
  %45
  | <d' f>8 <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
    <d f>8[( <ees g>) <ees g>( <g bes>)]
  | <ees g>8 <ees g>16( <c ees>) <ees g>8 g16( ees)
    <ees g>8[( <f a>) <f a>( <a c>)]
  | c8\rest <d, bes'>32(\( c' d16) <d, bes'>( d') c( c,)
    <bes bes'>8\) b'8\rest c,--( bes--)
  | c'8\rest <d, bes'>32(\( c' d16) <d, bes'>( d') c( c,)
    <bes bes'>8\) b'8\rest c,--( bes--)
  | ees4.-- f8-- d--[( c--]) bes--[( c--])
  %50
  | a4.-- bes8-- <d f>8 <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
  | <d f>8( <ees g>) <ees g>( <g bes>)
    <c, ees>8 c16 a ees'8 ees16( a,)
  | <c a'>8( <d bes'>) q( <ees c'>)
    c'\rest <bes d>32(-\markup { \italic\small "sostenuto" }
    <c ees> <d f>16) <bes d>( <d, bes'>) <ees f>( a)
  | <d, bes'>8^\markup { \italic\small "a tempo" } <d f>16( <bes d>) <d f>8 <d f>16( <bes d>)
    <d f>8( <ees g>) q( <g bes>)
  | \stemDown
    <c, ees>8 <c ees>16( <a c>) <c ees>8 <c ees>16( <a c>)
    <c ees>8[( <ees a>) <c a'>( <ees c'>)]
  %55
  | <d bes'>8~\( <d bes'>32 <ees c'> <f d'>16\)  <d bes'>16( <f d'>) <ees c'>( <c f>)
    <d bes'>8~\(\pp <d bes'>32 <ees c'> <f d'>16\)  <d bes'>16( <f d'>) <ees c'>( <c f>)
  | <d bes'>8 <bes' d>32(\p <c ees> <d f>16)  <bes d>16( <d, bes'>) <ees c'>( <f a>)
    <d bes'>8 <bes' d>32(_\markup { \dynamic pp \italic "rit. . . . . . ." } <c ees> <d f>16)
    <bes d>16( <d, bes'>) <ees c'>( <c a'>)
  | <bes d bes'>1

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
  | g'8\< g <f g> q  g g <f g> q
  | <ees g> q <f aes>( <f g>) <ees g> q g g\!
  %25
  | <g c>-\markup { \italic\small "quasi" \dynamic f \italic\small "(ma dolce)" } q <aes c> q
    g g\> g <aes c>
  | <g c> q <f b!>4 c'2--\p\!
  | s1*3
  %30
  | s2 g8\rest ees ees ees
  | f f f f g g g g
  | f2 f'4--\( e!8--( d--)
  | d4.-- f8--  e!--( f16-- g--) e8--( d--)
  | cis4-- b!8-- a--\) c!2~--\(
  %35
  | c4 bes8--( c16-- a--) bes2~
  | bes8--( a--) a4--\)
    \tieUp\once\shape #'((-0.8 . 2.2) (0 . 3) (0 . 3) (0 . 0.5)) Tie
    ees'!2~--
  | ees8( d--) d--( f16-- e!--)
    \once\shape #'((-0.3 . 1.2) (0 . 2.5) (0 . 2.5) (0 . 0.5)) Tie
    f2~--
  | f8[( e!--]) d--[( e--])
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    e4--_\markup {
      \italic\small "quasi" \dynamic f
    } d8--( c--)
  | bes4-- a8--( bes16-- g--) f4 f
  %40
  | <c f>8 q <bes e!>4 <a c>2
  | <d f>8-\markup { \italic "più" \dynamic p } q bes'4 bes8 bes bes bes
  | c c c_~ c  bes4 d,\rest
  | <d g>8 q <d f> q  <c e!> q <c f> f
  | <c f> f <c e!> c8 c c c c
  %45
  | f4-- aes8--( g--) g4.-- a!8--
  | bes4-- d8--( c--) a4-- g8--^( \bottom f^-)
  | \top\stemDown f'4-- g8--( f--) f--( d--) ees,4
  | f'4-- g8--( f--) f--( d--) f,4
  | <g bes>8 q <f a> q  <f bes> <ees a> <d f> <c g'>
  %50
  | <c f> q <ees f> q bes'2--
  | e,2\rest g'8--[( ees--]) d--[( c--])
  | f4.-- g8-- d4.-- c16--( bes--)
  | bes4-- e,\rest e2\rest
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
  | s1*5
  %26
  | s2 \stemDown ees,2
  | s1*3
  %30
  | \stemUp\slurUp <c' ees>8 q q <b! d g> <ees g>4--^\markup { \hspace #-1.8 \italic\small "canto" } s4
  | s1*2
  | a,8( g) g( f) s2
  | s1*6
  %40
  | s2
    \override Parentheses.font-size = #3
    \magnifyMusic 0.90 {
      d'8\rest \startParenthesis\parenthesize f, f \endParenthesis\parenthesize f
    }
  | s1*9
  %50
  | s2 \stemDown d2
  | s1*5
  %56
  | \stemUp s2 <bes' d>8 q q s

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
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <bes c a'>8^\markup { \italic\small "simile" } q q q
    <bes f' a>8 q q q
  | <bes' d f> q <a bes d f> q  <g bes d f> q <f bes d f> q
  | <ees g bes d> q <f bes d> q g f16_( ees f8) \stemDown <f, f'>
  %5
  | <bes bes'> <bes' d f> q q  <bes ees g> q q q
  | <a c f> q q q  <bes d f> q q q
  | <bes, bes'> q q q  <bes g'> q <a a'> <bes g'>
  | c c <c bes'> q  <f a> q <ees! a> q
  | <d bes'> q <bes bes'> q <ees bes'> q <d bes'> q
  %10
  | <c ees c'> q q q  <f c'> q <ees a c>\sustainOn q
  | <d f bes>\sustainOff q <ees g bes> <ees a c> <bes d bes'> q <c ees bes'> q
  | <d f bes> q <ees g bes> <ees a c> <bes d bes'> q <d f bes> q
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
  | <ees g bes d> q <f bes d> q g f16_( ees f8) \stemDown <f, f'>
  | <bes bes'> q <bes' d> q <a d> q <bes d> q
  | <c g'> q <d fis> q <g, d'> q <f g d'> q
  | <ees g c> q <d g b!> <d g d'>  <ees g c> q <b! g'> q
  | <c g' c> q  <b! d aes' d> <b d g d'> <c g' c> q <d f b!> q
  %25
  | <ees g c> q <f c' f>( <f c' ees> <f g d'>) q <ees g c> <f c'>
  | \stemUp g g <g, g'> <g g'> <c c'> q q q
  | \stemDown\slurDown <c aes'> q <c f> q <c d b'!> q q q
  | <c g' b!> q q q <c' ees g> q <bes c ees g> q
  | <aes c ees g> q <g c ees g> q  <f aes c ees> q <g c ees> q
  %30
  | aes( g16 f g8) g c <c, c'> q q
  | <d bes'> q q q <e! g> q <e c'> q
  | <f c'> q <e! cis'> q <d f a d> q <c! d a'> q
  | <bes d> q <a d> q \stemUp <g bes g'> q q q
  | <a e'!> q <g cis e> q <fis d'> q <d d'> q
  %35
  | <g d'> q <f! d'> q
    \once\override Staff.SustainPedal.stencil =
      #(lambda (grob) (grob-interpret-markup grob (markup "(" #:musicglyph "pedal.Ped" ")" )))
    \override SustainPedal.style = #'dotted-line
    <e! c'>\sustainOn q <c c'> q
  | <f c'> q\sustainOff <f f'> q
    \once\override Staff.TextScript.extra-offset = #'(0 . 1.5)
    q^\markup { \italic\small "più espr." } q q q
  | \stemDown <bes f'>^\< q q <bes d>  \stemUp <g g'> q q q
  | \stemDown <c g'> q <c c'> q\! <bes! c g'> q <a c f> q
  | \stemUp <g c e!> q q q  <a c f> q <bes d f> q
  %40
  | c c <c, c'> q \stemDown <f f'>2
  | <bes, bes'>8 bes'' <bes d f> q <bes ees g> q q q
  | <a c f> q q q <bes d f> q q q
  | <bes, bes'> q q q  <bes g'> q <a a'> <bes g'>
  | c c <c bes'> q  <f a> q <ees a> q
  %45
  | <d bes'> q <bes bes'> q <ees bes'> q <d bes'> q
  | <c ees c'> q q q  <f c'> q <ees a c> q
  | <d f bes> q <ees g bes> <ees a c> <bes d bes'> q <c ees bes'> q
  | <d f bes> q <ees g bes> <ees a c> <bes d bes'> q <d f bes> q
  | <c c'>8 q <f c'> q <bes, bes'>^( c d ees
  %50
  | \stemUp f) f <f, f'> q <bes bes'> q q q
  | \stemDown <bes g'> q <bes ees> q <bes c g'>
    q <a ees' f> q
  | <bes ees f_(> <bes d f)> <ees g> q <f bes d>\tweak Y-offset -5\sustainOn q <f, f'> q\sustainOff
  | <bes bes'> q q q <bes g'> q <bes ees> q
  | <bes c a'>8 q q q  <bes f' a>8 q q q
  %55
  | <bes' d f> q <a bes d f> q  <g bes d f> q <f bes d f> q
  | <ees g bes d> q <f bes d> q g f16_( ees \autoBeamOff f8) \stemUp <f, f'> \autoBeamOn
  | <bes, bes'>1
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
    \tempo 4 = 53
  }
}
