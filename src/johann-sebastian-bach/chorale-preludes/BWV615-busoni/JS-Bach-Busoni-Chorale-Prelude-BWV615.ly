\version "2.23.80"

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
  line-width = 16.8\cm
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
    maintainerEmail = "d.madrisan@proton.me"
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
        \line { \abs-fontsize #36 \bold "In dir ist Freude" }
        \null
        \line { \abs-fontsize #22 "(In You Is Joy)" }
        \null\null\null
        \line { \abs-fontsize #24 \bold "Chorale Prelude BWV 615" }
        \null
        \line {
          \abs-fontsize #16 "from «"
          \abs-fontsize #16 \italic "Das Orgelbüchlein"
          \abs-fontsize #16 "», Part III"
        }
        \null\null\null\null\null
        \line { \abs-fontsize #16 \italic "arranged for Piano Solo by" }
        \null
        \line { \abs-fontsize #33 \bold "Ferruccio Busoni" }
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key g \major
  \time 3/2
  \include "global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

calando = { \override TextSpanner.bound-details.left.text = \markup { \italic\small "calando " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \override TupletBracket.bracket-visibility = ##f
  \tempo \markup {
    \column {
      \line { "Allegro marcato" }
      \general-align #Y #-1
      \line { \hspace #2 \small "Lebhaft, doch gemessen; mit großer Pracht" }
    }
  }
  %1
  | R1*3/2
  | d2^^ d^^ c^^
  | b^^ f'8\rest g, d' g f8\rest a, d fis
  | <b, g'> <g d'> <fis a> <e c'> b' d g, b a d fis, a
  %5
  | d2^^ <b d>^^ <a c>^^
  | b8^^ <b g'> <c fis> <a e'> <b d> <fis c'> <g b> <e d'> <fis c'> <g b> <d a'> <fis c'>
  | <g b> d e fis g a b c <fis, d'> <g e'> <a fis'> <fis d'>
  | \stemDown <b g'>4 r r2 r2
  | \stemUp d2^^ <g, b d>^^ <d c'>^^
  %10
  | <d g b>2.^^ <c fis a>4^^ <b d g>2^^
  | <c d c'>^^ <b d g b>^^ <a c a'>^^
  | <g b d g>8^.^^ d'[ e fis] g a b c d e fis d
  | g e d c d b a g a g fis e
  | fis2. a4 g a
  %15
  | b2. e,4^.  a2~^-
  | a8 c b a g fis e fis g4 fis
  | <e, e'~>2 e'8\< fis g a b c d e\!
    \bar "||"
  %\break
  | fis, c' b a b a g a fis a g fis
  | d'2^^ d^^ c^^
  %20
  | <b, b'>2^^ fis''8\rest g, d' g fis8\rest a, d fis
  | \stemDown <b, g'>^^ d <fis a> <e c'> <d b'> d' <b, g'> <d b'> <c a'> d' <a, fis'> <c a'>
  | \stemUp <d d'>2^^ <d b' d>^^ <c a' c>^^
  | <b g' b>8 \stemDown <b' g'>[ <c fis> <a e'>] <b d> <fis c'> <g b> <e d'> <fis c'> <g b> <d a'> <fis c'>
  | <b, g' b> <fis d'>[ <g e'> <a fis'>] <b g'> <c a'> <d b'> <e c'> <fis d'> <g e'> <a fis'> d
  %25
  | <g, g'> \stemUp <d, d'>[ a' c] b <d, d'> g b a <d, d'> fis a
  | d2^^ <g, b d>^^ <c, d c'>^^
  | <b d g b>2.^^ <c fis a>4^^ <d g>2
  | <c c' d> <b g' b d> <a a' c>
  | <b d b'>8^.^^ \stemDown d'[ e fis]
    \once\override Hairpin.Y-offset = #-3.6
    g\< <fis a> <g b> <a c> <b d> <c e> <a fis'> <b d>\!
  %30
  | g' e d c \stemUp d2 <a c>
  | <g b~>2 b4. a8 \stemDown <e g> <fis a> <g b> <a c>
  | \stemUp <d, d'>2 <d b'> c'8\rest <a, c> <g b> <fis a>
  | f'\rest <a, f'!> <g e'> <f! d'> e' d c b c2
  | fis,2 r8 fis g4~ g8 e fis4
  %35
  | <d g>2 \clef bass d8\rest b c d <g, b>2
  | a'8\rest \clef treble a b c e\rest c d e d c b a
  | \once\override Rest.extra-offset = #'(-0.3 . 0) c'\rest
    \stemDown a, g fis \stemUp g4 a^> <b, g'>8^> <a fis'> <b g'>4
  | r4 <fis'' d'>8 <a c> g4 s b a
    \bar "||"
  %\break
  | \tieDown <g, g'>2*1/2 b4 g2~ g8 fis g a
  %40
  | <b, b'>2 <c c'> <d d'>
  | e'4. d8 <e, c'>2 s2
  | \tieUp e'4. 8 <f,! f'!~>2 f'8 a g f
  | <e, e'>4 <d d'> <e c'>2 r2
  | \stemDown r8^\markup { \italic\small "non legato" }
    e' d c b c b c \tuplet 3/2 { d c d } c[\<( b16 c]\!
  %45
  | d1^>) \stemUp d2
  | f8\rest
    \once\override Staff.TextScript.extra-offset = #'(0 . -3.5)
    <f,! d'>_\markup { \italic\small "cresc." } <e c'> <d b'>
    <c a'> <d b'> <c a'> <d b'> b'4.( a16 b
  | c1*1/8~^>) \once\omit Flag \once\omit Stem c8
    s4 s2 c
  | c^^ c^^ b^^
  | <c, fis a>1^^ <c fis a>2^^
  %50
  | <d g b>2^^ <g c>^^ <fis a>^^
  | \tieDown g4.^^ d8 g2~^> g8 fis' g a
  | <b, g' b>2^^ <c c'>^^ <d d'>^^
  | \stemDown <e e'>4.^^ <d d'>8 \stemUp <c e c'>2^^ s2
  | <e e'>4. <e e'>8 <f! f'!^~>2 f'8 <f a>( <e g> <d f>
  %55
  | <e, c' e>4) <d b' d> <e c'>2 f2\rest
  | \stemDown
    r8
    \once\override Staff.TextScript.extra-offset = #'(0 . -1.5)
    <g e'>_\markup { \italic\small "non legato" } <f! d'> <e c'>
    <d b'> <e c'> <d b'> <e c'>  <e c'> <fis d'> <d b'> <e c'>
  | d'1 \stemUp dis,2
  | a'1 a2
  | c1*1/8^~^> \once\omit Flag \once\omit Stem c8 s2.
    \once\override NoteColumn.force-hshift = #0.5 <c, c'>2
  %60
  | <c fis c'>^^ <c g' c>^^ <b c b'>^^
  | <a c fis a>1^^ <a c fis a>2^^
  | <b d g b>^^ <c e g c>^^ <a c fis a>^^
  | \stemDown <g b g'> \stemUp <c, e c'>^^ <a c a'>^^
  | <g b g'>1.\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \slurUp\tieUp
  %1
  | \stemDown s1*3/2
  | s1*3/2
  | d2_^ <b d>_^ <a c>_^
  | s1*3/2
  %5
  | g'8 d g a d,\rest b d g d\rest a d fis
  | s1.*3
  | s4 \stemUp <fis a> s2 \stemDown fis8 a g fis
  | s1*3/2
  %11
  | s2 b,8 c d e fis g e fis
  | s2 c8\rest\< fis g a b c a b\!
  | g1 s2
  | s1*3/2
  %15
  | \tieDown d8 f! e d c2~ c8 d b c
  | b1 e8 b dis a~
  | a c b a \bottom g fis e fis g a b c
  | \top d2_^ d_^ c_^
  | g'8 b fis a g b e, g fis a d, fis
  %20
  | g d g a <b, d b'>2_^ <a c a'>_^
  | s1*3/2
  | g''8 d g a e,\rest g d' g e,\rest a d fis
  | s1*3/2
  | s1*3/2
  %25
  | s1*3/2
  | s4 \stemUp <fis, a>4 \stemDown b,8 a' g a fis a g fis
  | s1 b,8 c d b
  | c2_^ b_^ a_^
  | s1*3/2
  %30
  | s2 r8 b'' a g r8 fis e d
  | r e d c b a' g fis s2
  | g8 <a, fis'> <b g'> <c a'> g\rest <b g'> <a fis'> <g e'> <fis c' fis>2
  | \stemDown <g b>2 e4 fis
    << {
      \stemDown g e
    } \\ {
      \stemUp
      \once\override Rest.extra-offset = #'(0.4 . 0) c8\rest
      b' a g
    } >>
  | b,8\rest c b a  b a\< b c\!
    \once\override NoteColumn.force-hshift = #0.4
    a4. a8
  %35
  | g8\rest g a b \clef bass g4 fis c8\rest d e f!
  | s2 <d' a'>1
  | << {
      \once\override NoteColumn.force-hshift = #0.4 b'2.^^
    } \\ {
      \once\override NoteColumn.force-hshift = #0.4 g2
      g8 d fis c d4 d
    } \\ {
      \once\override NoteColumn.force-hshift = #0.8 < \parenthesize g, d'>1
    } >>
  | s4 d'' <b b'>8 <c a'> <b g'> <a a'> <b g'> d <a fis'> c~
  | c a b d \bottom g,,2^\markup { \italic\small "dimin." } s2
  %40
  | \top e8\rest_\markup { \italic\small "meno" \dynamic f }
    a' g f! f,\rest g' f e g,\rest f' e d
  | e b' c g a,\rest b'-.\mf c-. g-. e-. c e g
  | a8\rest g c4~ c8 e d c <f, b>2
  | e8 g d f! s1
  | s1*3/2
  %45
  | g8\rest b a g fis! g fis g \tuplet 3/2 { a gis a } gis8[(\< fis16 gis])\!
  | a1_> a2
  | \once\override NoteColumn.force-hshift = #-0.5 e8
    <a c> <g b> <fis a> <e g> <fis a> <e g> <fis a>
    \tuplet 3/2 { <g b> <fis a> <g b> } <fis a>8[ <e g>16 <fis a>]
  | \once\override NoteColumn.force-hshift = 1 d8
    g fis e
    \once\override NoteColumn.force-hshift = 1 d
    e d e
    e fis d e
  | s1*3/2
  %50
  | s2 e4 c d c~
  | c8 a b4~ b8\< g' a b c d e fis\!
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1.5)
    e,8\rest_\markup { \italic "più" \dynamic f }
    a' g f! e,\rest g' f e e,\rest f' e d
  | \once\override Rest.extra-offset = #'(0.4 . 0)
    e,\rest \stemUp b'' c g
    e,\rest \stemDown <d' b'> <e c'> <c g'>  <g e'> <e c'> <g e'> g'
  | g,\rest g' c4 c8_( e d c b2)
  %55
  | e,8 g d f!  c g_. e_. g_.  c,4 c\rest
  | s1*3/2
  | fis'8 <d b'> <c a'> <b g'>  <a fis'> <b g'> <a fis'> <b g'>
    \once\override NoteColumn.force-hshift = #-0.5 <b g'> <c a'> <a fis'> <b g'>
  | c <f! d'> <e c'> <d b'>  <c a'> <d b'> <c a'> <d b'>  <d b'> <e c'> <c a'> <d b'>
  | e <a c> <g b> <fis a>  <e g> <fis a> <e g> <fis a>  <fis a> <g b> <e g> <fis a>
  %60
  | d g fis e  d e d e  e fis d e
  | << {
      c,\rest \stemUp d' fis a c b a g
      \once\override NoteColumn.force-hshift = #1.1
      fis e d c
    } \\ {
      \stemDown
      \magnifyMusic 0.75 {
        s8 a d fis  a g fis e
        s8 c b a
      }
    } >>
  | d,4\rest \stemDown b'8 d  g fis e d  c b a d
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  %1
  | \top d2^^ d^^ c^^
  | b8 \bottom d a c b d g, b a d fis, a
  | g d \top g a s1
  | \bottom s2 d8 c b d c b a c
  %5
  | b2 s1
  | \top g'8 \bottom d e fis g a, b c d e, fis d
  | \once\override NoteColumn.force-hshift = #0.4 g fis g a
    \once\override NoteColumn.force-hshift = #0.6 b \top c d e s2
  | \bottom s8 d s4. d8 s4. d8 s4
  | \top e8\rest e d c b a' g a
    \bottom \once\override NoteColumn.force-hshift = #-1.1 a,,2
  %10
  | r8 g a b c d e fis g a b g
  | a \top fis' g a s1
  | s1*3/2
  | \bottom b,2-- b-- \showStaffSwitch cis--
  | \top d2. c!4 b c \hideStaffSwitch
  %15
  | s1*3/2
  | \bottom dis,2 <e, e'>4 <g, g'>8 <a a'> <b b'> <a a'> <b b'>4
  | s1*3/2
  | s1*3/2
  | \top b''8 \bottom d a c b d g, b a d fis, a
  %20
  | d,4 s4 s1
  | s4 a''8 c b a g4 a8 g fis4
  | s1*3/2
  | a,8\rest d, e fis g a b c d e fis d
  | s1*3/2
  %25
  | s1*3/2
  | \top e8\rest e d c s1
  | \bottom a8\rest <g, b> <a c> <b d> \stemDown <c e> <d fis> <e g> <fis a> g a b g
  | \stemUp a \top fis' g a
    \once\override NoteColumn.force-hshift = 1.2
    b c, d e
    \once\override NoteColumn.force-hshift = 1.2
    fis g e fis
  | \once\override NoteColumn.force-hshift = -0.7
    g8 s s4 s1
  %30
  | \bottom s2 d' <a c>
  | <g b> b,4. a8 s2
  | d^^ d^^ c^^
  | \showStaffSwitch \top
    \once\override NoteColumn.force-hshift = 0 b2._^ \bottom a4^> g^> b^>
  | << {
      \showStaffSwitch\stemDown d, e8 fis
      \top \once\override NoteColumn.force-hshift = 0.8 g2 d'2
    } \\ {
      \stemUp a2^>
    } >>
  %35
  | s1*3/2
  | << {
      \top <c, e a c>2. \bottom \stemDown <b b'>4_^ <a a'>2_^
    } \\ {
      \showStaffSwitch \top \hideNotes c2._^ \unHideNotes \bottom g'4 fis e
    } >>
    \hideStaffSwitch
  | s1*3/2
  | s1*3/2
  | \tieDown f8\rest a, b d~ \stemDown d g, a b c d e fis
  %40
  | s1*3/2
  | \stemUp <c c'>2 s1
  | \top e'2*1/2
    \bottom c8 bes a g f! e d f e d
  | c e g b c4^. c,^. s2
  | s1*3/2
  %45
  | s1*3/2
  | \top s1 \tupletDown\tuplet 3/2 { e'8 d e } d[ c16 d]
  | \top \once\override NoteColumn.force-hshift = #0 c1
    s2
  | \once\override NoteColumn.force-hshift = 0 c2\f
    \once\override NoteColumn.force-hshift = 0 c2
    s4 \stemUp c4
  | \bottom a8\rest d,^\markup { \italic\small "m.d" } fis a c b a g
    \top fis' e d c
  %50
  | b \bottom g, b d  g fis e d  c b a d~
  | d a b4~  b8 g a b  c d e fis
  | s1*3/2*6
  %58
  | e'8\rest <d f!> <c e> <b d> <a c>4 e'\rest e2\rest
  | e8\rest <c a'> <b g'> <a fis'> <g e'>4 s2.
  %60
  | s1*3/2*2
  | a8\rest g <d b'> <g d'>  <b g'> <a fis'> <g e'> <fis d'>
    <e c'> <d b'> <c a'> d
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override Rest.staff-position = #0
  %1
  | \stemNeutral
    r4^\f <d d'>4-! <g g'>-! <b, b'>8-! <c c'>-! <d d'>-! <c c'>-! <d d'>4-!
  | <g, g'>4 g'\rest_\markup {
      \column {
        \italic "non legato"
        \general-align #Y #-2
        \italic"robustamente"
      }
    } g2\rest g\rest
  | \stemDown
    g4\rest <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | \stemUp
    <g, g'> r b'2\rest b\rest
  %5
  | \stemDown g4\rest <d d'> <g g'> \stemUp <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'> g'\rest g2\rest g\rest
  | \stemDown <d' d'>2^^ <d d'>^^ <c c'>^^
  | <b b'>8\ff s <a a'> <c c'> <b b'> s <g g'> <b b'> <a a'> s <fis fis'> <a a'>
  | \stemUp <g g'>4 <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  %10
  | \stemDown <g, g'>4 c\rest g'2\rest g\rest
  | \stemUp b4\rest <d, d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'> s4 s1
  | s1*3/2
  | \stemDown r8 b'' a g a fis e d \stemUp e c b a
  %15
  | \stemUp gis2 \stemDown a8 b' a g! fis e dis e
  | e,4\rest <b b'>\ff s1
  | \stemUp <e, e'>2 s1
  | r4^\markup { \dynamic ff } <d' d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'> g'4\rest g2\rest g\rest
  %20
  | e4\rest <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'>4 \clef treble \stemDown fis'''8 e d c b4 c8 b a4
  | <b g'>4 \clef bass \stemUp <d,, d'> <g g'>
    <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | \stemDown <g, g'> g'4\rest g2\rest g\rest
  | <d' d'>2^^ <d d'>^^ <c c'>^^
  %25
  | <b b'>4^^ <a a'>8 <c c'> <b b'>4 <g g'>8 <b b'> <a a'>4 \stemUp <fis fis'>8 <a a'>
  | <g g'>4 <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | \stemDown <g, g'>4 s4 s1
  | g'4\rest \stemUp <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'>8 \clef treble d'''[ e fis] g <fis a> <g b> <a c> \stemDown <b d> <c e> <a fis'> <b d>
  %30
  | <g g'> e' d c e,\rest d' c b c,\rest fis e d
  | c\rest e d c \clef bass b a g fis  <e g> <fis a> <g b> <a c>
  | b8 a,\rest d4 g b,8_. c_. d_. c_. d4
  | <g, g'>_. b_. c d e c
  | b,2\rest \stemUp <d b' d>^^ <c a' d>^^
  %35
  | <b g' d'>2.^^ <a d c'>4^^ <g d' b'>2^^
  | <g g'> <fis! fis'!>1
  | << g'1 \\ { \stemDown g,2 d''4\rest d-! g-! \stemUp b,8-! c-! } >>
  | d-! c-! <d, d'>4-! <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
    \bar "||"
  | <g, g'>1*1/4 \stemDown b'4 s1
  %40
  | g'4 \stemNeutral g, a a' b b,
  | d,4\rest \stemDown <g g'>\mf <c c'> \stemUp <e, e'>8 <f! f'!> <g g'> <f f'> <g g'>4
  | <c, c'>4_. g'4\rest g2\rest g2\rest
  | e4\rest \stemDown <g g'> <c c'> <e, e'>8 <f! f'!> <g g'> <f f'> <g g'>4
  | \stemUp <c, c'>2^- r4 <g' g'> <fis fis'> <e e'>
  %45
  | <d d'>2 r4 <d d'> <c c'> <b b'>
  | <a a'>2 r4 \stemDown <a' a'> \stemUp <g g'> <f! f'!>
  | <e e'>2 r4 <e e'> <d d'> <c c'>
  | <b b'>8 <e e'> <d d'> <c c'> <b b'> <c c'> <b b'> <c c'> <c c'> <d d'> <b b'> <c c'>
  | \stemDown <d d'>4 <a a'> <d d'> <fis, fis'>8 <g g'>
    \stemUp <a a'> <g g'> <a a'>4
  %50
  | <d, d'>1.
  | <g g'>1*1/4 s8 \stemDown d''
    \once\shape #'((0 . 0.6) (0 . 0.6) (0 . 0.6) (0 . 0)) Tie
    g2^~^> g8
    fis g a
  | <g b>4 <g, b g'> <a c a'> <a' c a'> <b d b'> <b, d b'>
  | e,\rest <g g'> <c c'> \stemUp <e, e'>8 <f! f'!> <g g'> <f f'> <g g'>4
  | <c c'> \clef treble \stemDown c''8^( bes \stemUp <a c> <g b!> <f! a> <e g> <d f>) <f a>( <e g> <d f>
  %55
  | <c e>4) \clef bass <g, g'> \stemDown <c c'> \stemUp <e, e'>8 <f! f'!> <g g'> <f f'> <g g'>4
  | <c, c'>2 r4 \stemDown <g'' g'>^! <fis fis'>^! <e e'>^!
  | <d d'>2^- r4 <d d'>^! <c c'>^! <b b'>^!
  | <a a'>2 b4\rest <a c a'> <g b g'> <f! a f'!>
  | <e g e'>2 a4\rest \stemUp <e g e'> <d fis d'> <c e c'>
  %60
  | << {
      <b b'>8 <e e'> <d d'> <c c'>
      <b b'> <c c'> <b b'> <c c'>  <c c'> <d d'> <b b'> <c c'>
  |   <d d'>4 <a a'> <d d'> <fis, fis'>8 <g g'> <a a'> <g g'> <a a'>4
    } \\ {
      \stemUp
      \autoBeamOff
      \omit Flag \omit Stem
      \magnifyMusic 0.75 {
        d8 g fis e  d e d e  e fis d e
  |     fis s s4 s1
      }
      \autoBeamOn
    } >>
  | <d, d'>1.
  | \stemDown <g' d' b'>2^^_\markup { \hspace #-0.5 \italic\tiny "(zusammen)" }
    \stemUp <c, g' e'> <d fis fis'>
  | <g, d' g>1.^\fermata
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
    opus = \markup { "BWV 615" }
    title = \markup { "In dir ist Freude" }
    subtitle = \markup {
      \column {
        \line { "[" { \italic "In You Is Joy" } "]" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #12
    }
  }
  \midi {
    \tempo 4 = 35
  }
}
