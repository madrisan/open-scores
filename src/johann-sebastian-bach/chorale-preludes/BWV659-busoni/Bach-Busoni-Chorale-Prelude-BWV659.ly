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
        \line { \abs-fontsize #28 \bold "Nun komm’ der Heiden Heiland" }
        \null
        \line { \abs-fontsize #18 "(Saviour of the nations, come)" }
        \null\null\null
        \line { \abs-fontsize #24 \bold "Chorale Prelude BWV 659" }
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #18 \italic "arranged for Piano Solo by" }
        \null\null
        \line { \abs-fontsize #36 \bold "Ferruccio Busoni" }
        \null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key g \minor
  \time 4/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

canto = \markup { "Canto" }
tc = \markup { \small "(t.c.)" }
uc = \markup { \small "(u.c.)" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \tempo \markup { \bold "Adagio" }
  %1
  | s1
  | s1
  | s1
  | s4 g^\markup {
      \column {
        "sehr ausdruckvoll mit vollem Anschlag"
        \general-align #Y #-1
        "sostenuto ed espressivo"
        "Canto"
      }
    }
    g fis8[( g16 a])
  %5
  | bes4~ bes16[ g( a32 g fis g])
    c4~ c16[ a bes32 a g a]
  | d4~ d16[ g,32 a bes c d16] ees8. d16 c16[ bes32 a a16 bes32 c]
  | g16[ fis e! d] g4~ g32[ a g fis! g16 c32 a] g8[( fis16.)\prall g32]
  | \once\override NoteColumn.force-hshift = #-1 g2 r
  | R1
  %10
  | \override MultiMeasureRest.staff-position = #5
    s1
  | g8^-[^\canto
    bes16( a] bes32[ a bes8.])
    \once\shape #'((0 . 0) (0 . 0.8) (0 . 1.2) (0 . 0.5)) Tie
    c4~^-
    \once\override NoteColumn.force-hshift = #1.2 c16[
    bes a bes]
  | c16[ d ees8~] ees16[ c bes c] d[ ees f8~] f16[ d c d]
  | ees16[^- f^- g8~^-] g16[ c, d ees] bes16[ a g f] <f f'~>4
  | f'16[ g32 f ees f d16] ees4~ ees16[\<^\markup { "sostenuto" } a32 bes\! c16 ees,] d4~
  %15
  | d16[ g, g32\prall f g16] c32[ bes a16 bes32 a g16]
    f[ g32 a bes c d ees] f4~
  | f16[ g32 f ees d c bes] d8[( c16.\prall) bes32^\markup { "rallentando" }] bes2
  | \override MultiMeasureRest.staff-position = #0
    s1
  | s1
  | bes8[^\canto( c32 bes a bes]) c8[( d32 c bes c])
    d16[ bes a bes] bes16[ f'8 ees32 d]
  %20
  | c16[ d32 c b!16 c] d16[ ees32 d c16 d] ees16[ c b! c] c16[ g'8 f32 ees]
  \pageBreak
  | d16[ g32 a bes!16 f] ees16[( d) d( c)]
    c16[ fis32 g a16 ees] d16[( c) c( bes)]
  | bes[ g'16. f!32 ees d] c[ d c b! c8~] c16[ ees32 d c d ees16~] ees32[ c aes g aes8~]
  | aes16[ ees'32_\markup { \small "dramatico" } d ees c b! c] c[ aes g aes aes g fis g]
    fis16[ a!32 c ees16 d] d4~
  | d32[ g fis e! d16. c32] bes8[( a32\prall g a16]) g2
  %25
  | \override MultiMeasureRest.staff-position = #4
    s1
  | s1
  | \override MultiMeasureRest.staff-position = #6
    s1
  | s4 g^-^\canto\( g32[ fis g16 a32 g fis g] fis8[ g16 a]\)
  | bes4~^- bes16[ g_~( g64 a g fis g16])
    c4~^- c16[ a_~( a64 bes a g a16])
  %30
  | d4~^- d16[ g,32 a bes c^- d16^-] ees8.^>^\markup { \small "ritenutamente" } d16
    c16[ bes32 a a16 bes32 c]
  | g16 fis e! d] g4~
    g32[ a g fis! g16 c32 a] g8[( fis16.\prall) g32]
  | g16[^\<^\markup { \dynamic f \small " con grand'espress. e largamente" }
    g'\! f!8]~ \stemDown f16[ ees32 d g f ees d]
    f[ ees d c bes'8~] bes32[ a bes c bes a g a]
  | g[ fis g a c,8~] \stemUp c32[ ees d c d c bes a]
    bes16[ g'32^\markup { \small "più riten." } ees cis^- d^- g,16^-] bes8[( a32\prall g a16])
  | g1^\markup { \hspace #3 "(Adagio)" } \fermata

  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \slurUp\tieUp
  %1
  | \stemUp b'2\rest d,,4\rest d(
  | d c f4. ees16[ d])
  | ees2 d~
  | d4 \breathe \stemDown\tieDown c d2~
  %5
  | d4 s2.
    \bottom\stemUp\tieUp
  | \top\stemDown\tieDown
    s2 g8[ fis] g[ ees]
  | d4 b8\rest
    \once\override NoteColumn.force-hshift = #-1
    \once\omit Flag bes
    ees4 d8[ c~]
  | \once\override NoteColumn.force-hshift = #-2 c[
    bes16-\uc c] d8[ c16 bes] a4. \stemUp bes16[ c]
  | d8[ ees f g] c,4. d16[ ees]
  %10
  | f4. g16 f ees2
  | \once\override NoteColumn.force-hshift = #1 d4
    \stemDown
    d8[ ees16 f] g[ f ees d] c8 b\rest
  | e8\rest g_._( f4~_\markup { "ten." })
    \stemUp \once\override NoteColumn.force-hshift = #0.2 f4
    s8 \stemDown\once\omit Flag bes
  | bes4_\markup { "ten." } g8\rest g f4 s8 \once\override NoteColumn.force-hshift = #0.4 aes
  | \once\override NoteColumn.force-hshift = #0.4 \stemUp g4
    \top\stemDown
    a,8\rest \stemDown g'_(_.
    \stemUp \once\override NoteColumn.force-hshift = #0.4
    f4)
    a,8\rest \stemDown f'_.
  %15
  | g8_-\p c,\rest \once\omit Flag g' c,\rest \once\omit Flag c d\rest d\rest \once\omit Flag ees'
  | \once\override NoteColumn.force-hshift = #0.9 d[ g,]
    f16[_( d ees8~])
    \stemUp\tieUp \once\override NoteColumn.force-hshift = #0.4 ees[ d16 ees]
    f8[ ees16 d]
  | c4. d16 ees f2~
  | f8[ ees16 d] ees8[ c'] fis,[ g]
    \once\shape #'((0.5 . 0.8) (0 . 0.8) (0 . 1) (0 . 0.5)) Tie
    a4_~
  | \stemDown \once\override NoteColumn.force-hshift = #0.4
    \once\override Beam.positions = #'(-2 . -2.5)
    a8 g
    \once\shape #'((0.8 . -0.8) (0 . -0.8) (0 . -1.2) (-0.8 . -0.8)) Tie
    f!4~
    f8[ ees d bes]
  %20
  | \once\omit Flag a' s s \once\omit Flag b! s s s a
  | bes4 s8 \once\override NoteColumn.force-hshift = #1 bes_( a4) s8 \once\omit Flag a
  | g4 f16\rest f[ g f] g8 f\rest s4
  | \top\stemDown s4. ees8 \once\omit Beam d[ fis!]
    \stemUp
    \once\override NoteColumn.force-hshift = #0.4
    \once\override Beam.positions = #'(1.3 . 1.8)
    g[ a]
  | << {
      s4.
      \once\hideNotes
      \once\override NoteColumn.force-hshift = #0
      \once\omit Flag \once\omit Stem
      d,8_~
    } \\ {
      \stemDown
      \once\override Beam.positions = #'(-6 . -5)
      d8[
      \once\shape #'((0.5 . 0.5) (0 . 0.7) (0 . 0.7) (0 . 0.5)) Tie
      g_~] g[ fis]
    } >>
    \stemUp\tieUp\slurUp
    \once\override NoteColumn.force-hshift = #0.4
    << {
      \set breathMarkType = #'caesura
      \once\override NoteColumn.force-hshift = #0.4 d8[ \breathe c16 b!]
    } \\ {} >>
    c16[( d) d( ees)]
  %25
  | ees2~ ees8[ d16 c] d16[( ees!) ees( f!)]
  | f2~ f16[ ees g(^\( f)] f[( ees) ees( d)]\)
  | d[(^\( aes') aes( g)] g[( f) f( ees)]\)
    ees8. f16 ees32[ d~ d8 g16]
  | ees16[( f) f( ees)] \breathe
    \stemDown\tieDown\slurDown
    ees[( d) d( c)] c[( bes) bes( a)]
    a8[ bes16 c]
  | \bottom\stemUp fis,8[ \top\stemDown d' g, bes~]  bes8[( a16) g] a4
  %30
  | \top\stemDown\tieDown
    s4. \once\omit Flag g'8~
    \stemUp
    \once\override Beam.positions = #'(0.8 . 1)
    g[ fis]
    \autoBeamOff
    \once\override NoteColumn.force-hshift = #0.4 g
    \once\override NoteColumn.force-hshift = #0.4 ees
    \autoBeamOn
  | \stemDown d4 s8 \once\omit Flag bes ees4 d8 c
  | \once\override Beam.positions = #'(-6.5 . -5.5)
    <g b!>8[-\markup { \hspace #2 \small "dolce" }
    \bottom\stemUp
    \once\shape #'((0.5 . 0) (0 . 0) (0 . 0.1) (-1.2 . 0.8)) Slur
    <c,( a'> <d b'!> <b! g'^~>]
    <c g'>)[ <f d'>( <ees c'> <d d'>16 <ees bes'>]
  | s8) s8 \stemDown d[ fis]
    \stemUp g4
    << \\ {
      \top\stemDown \once\override NoteColumn.force-hshift = #0.4 d'8. c16^~
    } >>
  | << {
      s16 \top\stemUp b[ f' d] ees4 s2
    } \\ {
      \top\stemDown
      \once\override NoteColumn.force-hshift = #1 c16[ b!8.~_\markup { \small "tenuto" }]
      \stemUp
      \once\override NoteColumn.force-hshift = #0.4
      b16[ b c8]
      <b! d>2^\fermata
    } >>
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
  | \top\stemDown\tieDown g'4\rest \clef bass g,( g4 f
  | bes4. a16[ g] a4) g~
  | g c2 bes8 a
  | g[ fis]
    \clef treble
    \tieUp
    \once\override NoteColumn.force-hshift = #1
    g[_\markup { \hspace #-2 \small "(tre corde)" } a]
    \once\override NoteColumn.force-hshift = #0.6
    bes[ a16 \bottom\stemUp g] <d a'>4~
  %5
  | <d a'>8[ \top\stemDown\tieDown g16 fis] g8 bes8~( bes a16) g a8 c~
  | c8[ bes16^( a]) bes8[ d~]
    \once\override NoteColumn.force-hshift = #0.5 d16
    c8 \bottom\stemUp bes16 a[ g \top\stemDown
    \once\override NoteColumn.force-hshift = #0.5 c8]
  | \once\override NoteColumn.force-hshift = #0 a4
    s8 g~
    \once\override NoteColumn.force-hshift = #0.5 g
    \top\stemDown c
    \once\override NoteColumn.force-hshift = #0.5 a4
  | g2 g4 f~
  | f \top\stemDown\tieDown bes2 a4~
  %10
  | a8 b!16 c d4~ d8 c16 b c4~ \breathe
  | c8[_\tc bes16 c] s4 s8 \stemUp g'[ \shiftOff a] s
  | s2 \stemDown \once\override NoteColumn.force-hshift = #0.2 f8[
    \bottom\stemUp d16 c] \top\stemDown d8[ f]
  | \bottom\stemUp s8 [ees16 d]
    c4 \top\stemDown \once\override NoteColumn.force-hshift = #0.4 c8[ bes16 a]
    \top\stemDown
    bes'16[ c d8~]
  | d8[ c16 b!]
    \once\shape #'((0.5 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie
    c4_~ \shiftOff
    \once\override Beam.positions = #'(-3.5 . -4.5)
    c8[ bes16 a!]
    \once\shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0)) Tie
    bes4~
  %15
  | \once\omit Flag bes8
    s ees,_- s a,_- s s a'
  | bes4
    \once\override Beam.positions = #'(-1.2 . -1.5)
    \once\override NoteColumn.force-hshift = #1
    \once\shape #'((0 . -0.2) (0 . 0) (0 . -0.6) (-1 . -0.8)) Slur
    bes8[^( a])
    bes8 f,_\uc bes4~_-
  | bes a~ a8[ b!16 c] d[ c b a]
  | g4~ g8[ a16 bes!] c[ d] ees4 d16[ c] \breathe
  | bes8_\tc \once\override NoteColumn.force-hshift = #0.3 ees4 d16[ c]
    \bottom\stemUp bes4. s8
  %20
  | \top\stemDown f'8 e\rest e\rest f g[ f] ees4
  | \bottom\stemUp d8\rest d[
    \top\stemDown g f]
    \bottom\stemUp ees[ d]
    \top\stemDown d\rest d
  | d4
    \bottom\stemUp f16\rest d[ ees d] c8 c\rest d16\rest <b! d>^( [ <c ees> <b d>]
  | <c ees>8) c\rest c\rest
    \top\stemDown \once\override NoteColumn.force-hshift = #0.8 c16[ bes]
    \once\omit  a!8[ c]
    d16[( c) c( bes)]
  | \once\omit Flag \once\omit Stem bes8 s4
     \once\override NoteColumn.force-hshift = #0.4
    d8_- g,2~
  %25
  | g8[ g16 fis] g[( a) a( bes)] bes2~
  | \top\stemDown\slurDown\tieDown
    bes8[ a16( g)] a[( b!) b( c)] c2~
  | c2 c8.[( d16]) c32[ b! c b c b a! b]
  | c8 g\rest \bottom\stemUp\tieUp s2.
  | s8 s s4 s4 \top\stemDown\tieDown a8[ c]~
  %30
  | c8[ bes16( a)] bes8[ d~] d16[ c8 bes16] a[ g c bes]
  | a4 a8\rest g \once\override NoteColumn.force-hshift = #0.4 g[ c]
    \once\override NoteColumn.force-hshift = #0.4 a4
  | \bottom\stemUp g,2~ \stemDown g8 g'4.
  | \stemUp <c, a'>8[
    \once\shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . -0.5)) Slur
    <ees g>^( fis a16 \top\stemDown ees'] d8)[ g~] g8[ fis!]
  | g,4._~ g16 fis g2\pp
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Staff.SustainPedalLineSpanner.outside-staff-priority = #1000
  \override Staff.SustainPedalLineSpanner.staff-padding = #8
  %1
  | \stemUp
    <g g'>8[^\markup { \dynamic p " legato (una corda)" } <a a'> <bes bes'> <c c'>]
    <d d'>[ <ees ees'> <d d'> <c c'>]
  | <bes bes'>[ <d d'> <f f'> <ees ees'>] <d d'>[ <c c'> <b! b'!> <g g'>]
  | <c c'>[^\markup { \small "senza rallentando" } <bes bes'> <a a'> <g g'>]
    <fis fis'>[ <d d'> <g g'> <f f'>]
  | <ees ees'>[ <d d'>] <ees ees'>4 <d d'>2~
  %5
  | \once\override NoteColumn.force-hshift = #0.3
    \once\override Beam.positions = #'(2.8 . 2.8)
    <d d'>8[\sustainOn <d' d'> <ees ees'>\tweak X-offset -4\sustainOff <d d'>]
    \override Staff.SustainPedalLineSpanner.staff-padding = #6
    <e! e'!>[\sustainOn <c c'> <f! f'!>\tweak X-offset -4\sustainOff <e e'>]
  | <fis fis'>[ <d d'> <g g'> <g, g'>] \stemDown <c c'>[ d' ees <c, c'>]
  | <d d'>[ <c c'> <bes bes'> <ees ees'>] <c c'>[ <a a'> <d d'> <d, d'>]
  | \stemUp
    <g g'>[ <a a'> <bes bes'> <c c'>] <d d'>[ <ees ees'> <d d'> <c c'>]
  | <bes bes'> [ <c c'> <d d'> <ees ees'>] <f f'>[ <g g'> <f f'> <ees ees'>]
  %10
  | <d d'>[ <c c'> <b! b'!> <g g'>] <c c'>[ <d d'> <ees ees'> <c c'>]
  | <g' g'>[ <g, g'> <g' g'> <f f'>] <ees ees'>[ <c c'> <f f'> <g g'>]
  | \stemDown\slurDown
    <a a'>[ <bes bes'>^-( <c c'>^- <a a'>^-]) <bes bes'>[ bes' <bes, bes'> <aes aes'>]
  | <g g'>[ f'
    \override Staff.SustainPedalLineSpanner.staff-padding = #7
    ees\sustainOn
    <ees, ees'>~] <ees ees'>[\tweak X-offset -4\sustainOff <ees, ees'> <d d'> <c' c'>]
  | % in the original score:
    % b![ g c bes] a![ f bes d]
    <b! b'!>[ <g g'> <c c'> <bes bes'>] <a! a'!> [ <f f'> <bes bes'> <d d'>]
  %15
  | <ees ees'>[( <d d'> <ees ees'> <d d'>] <ees ees'>[ <d d'> <ees ees'> <c c'>])
  | <d d'>[ <ees ees'> <f f'> <f, f'>] <bes bes'>[ <c c'> <d d'> <ees ees'>]
  | <f f'>[ <g g'> <f f'> <ees ees'>] <d d'>[ <c c'> <b! b'!> <g g'>]
  | <c c'>[ <d d'> <c c'> <bes bes'>] <a a'>[ <g g'> <fis fis'> <d d'>]
  | <g g'>[ <g' g'> <a a'> <f! f'!>]
    \override Staff.SustainPedalLineSpanner.staff-padding = #8
    <bes bes'>[ <c, c'> <d d'>\sustainOn <ees ees'>]\tweak X-offset 2\sustainOff
  %20
  | \stemUp <f f'>[ <f, f'>\pp( <ees ees'> <d d'>] <c c'>[ <d d'>
    \override Staff.SustainPedalLineSpanner.staff-padding = #9
    <ees ees'>\sustainOn <c c'>])\sustainOff
  | << {
      \stemDown g'4
    } \\ {
      \once\override Beam.positions = #'(0.5 . -0.5)
      \stemUp g'8[\sustainOn \stemDown g'] \omit\sustainOff
    } >>
    r \stemDown <g, g'> g'[ fis] r <fis,! fis'!>
  | <g g'>8 <f! f'!>
    \override Staff.SustainPedalLineSpanner.staff-padding = #6
    <ees ees'>4~\sustainOn <ees ees'>8 <d d'>\tweak X-offset -6\sustainOff
    <c c'>4~\sustainOn
  | <c c'>8\tweak X-offset 1\sustainOff <c, c'> <c' c'>4~ <c c'>8[ <a a'> <bes bes'> <fis fis'>]
  | \stemUp <g g'> [ <bes bes'> <c c'> <d d'>] <ees ees'> [ <f! f'!>^\uc <ees ees'> <d d'>]
  %25
  | <c c'> <c, c'> d''\rest <c, c'> <g g'>[ <g' g'> <f! f'!> <ees ees'>]
  | <d d'>[ <d, d'> <d' d'> <g, g'>] <c c'>[ <ees ees'> <aes, aes'> <c c'>]
  | <f, f'>[ <f' f'> <ees ees'> <aes aes'>] <g g'>[ <f f'> <g g'> <g, g'>]
  | <c c'>[ <d d'> <c c'> <bes! bes'!>] <a! a'!>[ <d, d'>] <d' d'>4~
  | \stemDown <d d'>8[ <bes bes'> <ees ees'> <d d'>]
    \stemUp <e! e'!>[ <c c'> <f! f'!> <e! e'!>]
  %30
  | <fis fis'>[ <d d'> <g g'> <g, g'>] <c c'>[ <d d'> <ees ees'> <c c'>]
  | <d d'>[ <c c'> <bes bes'> <ees ees'>] <c c'>[ <a a'> <d d'> <d, d'>]
  | g1
  | \stemDown g'2~_- g8[ <bes, bes'>^- <d d'>^- <d, d'>^-]
  | <g g'>1*2/4\fermata
    \stemUp
    \override Parentheses.font-size = #5
    <d' \parenthesize b'!>2*2/4\fermata\sustainOn s4\sustainOff
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
    opus = \markup { "BWV 659, " { \italic "ca." } "1708 – 17" }
    title = \markup { "Nun komm’ der Heiden Heiland" }
    subtitle = \markup {
      \column {
        \line { "[" { \italic "Now comes the gentiles' Saviour" } "]" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
    %subsubtitle = \markup { "BWV 659, " { \italic "ca." } "1708 – 17" }
  }
  \layout {
    \context {
      \PianoStaff
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 35
  }
}
