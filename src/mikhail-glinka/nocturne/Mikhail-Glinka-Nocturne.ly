\version "2.24.1"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

sluredTuplet =
  #(define-scheme-function (n1 n2 n3 n4 n5 n6)
  (ly:music? ly:music? ly:music? ly:music? ly:music? ly:music?)
#{
\shape #'((0.5 . 2.5) (0 . 1) (0 . 0.5) (0 . 0)) PhrasingSlur
\tuplet 6/4 { $n1 $n2 $n3 $n4 $n5 $n6 }
#})

\paper {
  bottom-margin = 20\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  tagline = ##f
  top-margin = 20\mm
% markup-system-spacing.basic-distance = #10
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
        \line { \abs-fontsize #30 \bold "Mikhail" }
        \null
        \line { \abs-fontsize #80 \bold "Glinka" }
	\null
	\fill-line { \draw-hline }
	\null\null\null\null
        \line { \abs-fontsize #34 \bold "Nocturne" }
        \null\null
        \line { \abs-fontsize #24 \bold "for Piano or Harpe" }
        \null\null\null
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line \abs-fontsize #8 {
          \concat {
            "Based on the score published by Muzgiz (Полное собрание сочинений, vol 6 - Moscow, 1958)"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key ees \major
  \time 4/4
  \include "global.ly"
}

% _\markup { \dynamic p \italic "amoroso" } FIXME

Upper = \relative c'' {
  \clef treble
  \set Staff.connectArpeggios = ##t
  \tempo \markup { \bold Moderato }
  \override TupletBracket.bracket-visibility = ##f
  \override TupletNumber.transparent = ##t
  \partial 4 bes4
  | g4\( bes8[ ees]\) g4\( f8[\) r16 c]
  | c4\( bes8[\) r16 f] \acciaccatura aes8 g8[ f g aes]
  | bes4\( ees8[\) r16 bes] bes4\( f'8[\) r16 bes,]
  | bes4^.( g'^.) f2^>
  %5
  | g,4\( bes8[ ees]\) g4\(\< f8[\)\! r16 c]
  | ees4\( c'8[\) r16 c] c4( d,)
  | g4~\( \tuplet 3/2 { g8[ aes c,] }\)
    <c ees>4 <b! d>
  | c2 r4 c4
  | \set Score.connectArpeggios = ##t
    << {
      <aes' c>4\arpeggio\( f d bes'
    } \\ {
      <aes,~ c>2\arpeggio aes4 r
    } >>
  %10
  | << { \stemDown <g ees' g>2\arpeggio\) } \\ {} >>
    \tuplet 3/2 { r8 <g g'>^.\( <aes aes'>^. }
    \tuplet 3/2 { <bes bes'>^. <c c'>^. <d d'>^.\) }
  | <ees ees'>4. <ees ees'>8 <ees ees'>4 <a,! a'!>
  | <bes bes'>2 <bes bes'>4\( <c c'>8 <bes bes'>\)
  | << {
      \stemDown <bes bes'>4\( d8[ ees] \stemUp f4 ees8 f
    } \\ {
      s2 bes,2\(
    } >>
  | << g'2\) \\ ees2\) >> <bes bes'>4\( <c c'>8 <bes bes'>\)
  %15
  | << {
      \stemDown <bes bes'>4\( d8[ ees] \stemUp f4 ees8 f
  |   g4. a!8\)
      \omit TupletNumber
      \stemDown
      \tuplet 3/2 {
        <d, bes'>8[\( d' a c bes g]
      }
    } \\ {
      s2 bes,2
      ees2 s
    } >>
  | << { \tuplet 3/2 { f8[ ees d ees g bes,\)] } } \\ {} >>
    \tuplet 3/2 { a!8[\( c ees f a! c]\) }
  | <a ees'>4^. <bes d>^. <g, bes des g>^.\arpeggio r
  | <bes d! f> r <c, ees! f a!> r
  %20
  | \set Staff.connectArpeggios = ##f
    <d f bes d>2\arpeggio
    \once\override TupletBracket.bracket-visibility = ##t
    \override TupletNumber.transparent = ##f
    \tuplet 3/2 { r8 bes'^.\< c^. }
    \tuplet 3/2 { d^. ees^. f^.\! }
    \override TupletNumber.transparent = ##t
  | <g, bes ees g>4\arpeggio <ees' g c ees>\arpeggio r2
  | r8
    \shape #'((0 . 0) (0 . 2.5) (0 . 0.5) (0 . 0)) PhrasingSlur
    c'16[\( d] f[^> ees a,! bes]
    d[^> c a f] ees[ c a! f']\)
  | <f, bes cis>4_. <f bes d>_. r2
  | <bes, d g bes>2\arpeggio
    \once\override TupletBracket.bracket-visibility = ##t
    \override TupletNumber.transparent = ##f
    \tuplet 3/2 { r8 g'_.\( a!_. }
    \tuplet 3/2 { bes^. c!^. d^.\) }
    \override TupletNumber.transparent = ##t
  %25
  | << { f4\arpeggio( ees8) r } \\ { <g, a!>4\arpeggio r } >> r2
  | r16 ees''[ c a!] g[ fis a d,] ees[ c a! g] fis[ a d r32 c]
  | <d, g a!>4\arpeggio <d g bes>\arpeggio r2
  \break
  | r16 ees[_\( g d'] ees^\markup { \tiny\italic "m.s." }
    ees,[ g c]\) r d,[_\( a'! c] d d,[ a' c]\)
  | r16 d,[_\( g bes] d  d,[ g bes]\)  r \stemUp g[_\( bes d] \stemDown g \stemUp g,[ bes d]\)
  %30
  | r16 ees,[_\( g d'] \stemDown ees  \stemUp ees,[ g c]\)  r d,[_\( a'! c] \stemDown a'! \stemUp d,,[ a' c]\)
  | r16 bes,[_\( d a'!] \stemDown bes  \stemUp bes,[ d g]\) \stemNeutral r g[\( bes d] g[ g, g' g,]]\)
  | r16 aes[_\( c g'] \stemDown aes  \stemUp aes,[ c f]\)  r aes,[_\( bes f'] \stemDown bes \stemUp aes,[ bes f']\)
  | r16 g,[_\( bes f'] \stemDown g  \stemUp g,[ bes ees]\)  r g,[_\( aes ees'] \stemDown aes \stemUp g,[ aes ees']\)
  | r16 f,[_\( aes ees'] \stemDown f  \stemUp f,[ aes d]\)  r f,[_\( g d'] \stemDown g \stemUp f,[ g d']\)
  %35
  | r16 ees,[_\( g d'] \stemDown ees  \stemUp ees,[ g c]\)  r ees,[_\( f c'] \stemDown f \stemUp ees,[ f c']\)
  | r16 d,[_\( f bes] \stemDown f'  \stemUp f,[ bes d]\)  r ees,[_\( g c] \stemDown ees \stemUp ees,[ g c]\)
  | r16 d,[_\( f bes] \stemDown d  \stemUp d,[ f bes]\)  r c,[_\( f a!] \stemDown c \stemUp c,[ f a]\)
  | r16 f[_\( bes d] \stemDown f  \stemUp f,[ bes d]\)  r ees,[_\( g d'] \stemDown ees \stemUp ees,[ g c]\)
  | r16 d,[_\( f c'] \stemDown d  \stemUp d,[ f bes]\)  r c,[_\( ees bes'] \stemDown c \stemUp c,[ ees a!]\)
  %40
  | r16 d,[_\( f c'] \stemDown d  \stemUp d,[ f bes]\)  r ees,[_\( a! d] \stemDown ees \stemUp ees,[ a c]\)
  | r16 f,[_\( aes ees'] \stemDown f  \stemUp f,[ aes d]\)  r g,[_\( bes f'] \stemDown g \stemUp g,[ bes ees]\)
    \stemNeutral
  | r16 bes[\( d f] aes\) r4  bes,16[\( d f] aes\) r16 r8
  | r16 bes,[\( d f] aes[ bes, d f]
    aes[\) g(^\markup { \italic "ritard." } f) ees]( d[) c( bes) aes](
  | g4)\(^\markup { \italic "a tempo" } bes8[ ees]\) g4\( f8[\) r16 c]
  %45
  | c4\( bes8[\) r16 f] \acciaccatura aes8 g8[ f g aes]
  | bes4\( ees8[\) r16 bes] bes4\( f'8[\) r16 bes,]
  | bes4^.( g'^.) f2^>
  | g,4\( bes8[ ees]\) g4\(\< f8[\)\! r16 c]
  | ees4\( c'8[\) r16 c] c4( d,)
  %50
  | g4~\(
    \once\override TupletNumber.transparent = ##f
    \tuplet 3/2 { g8[ aes c,] }\)
    <g c ees>4\arpeggio <b! d>
  | c2 r4 c4
  | <aes c aes'~>4\arpeggio\( \tuplet 3/2 { aes'8[ g bes] }
    \tuplet 3/2 { aes8[ f ees] }
    \tuplet 3/2 { d8[ c' bes] }\)
  | aes4( g8) r
    \once\override TupletBracket.bracket-visibility = ##t
    \override TupletNumber.transparent = ##f
    \tuplet 3/2 { r d^.[\( ees^.] }
    \override TupletNumber.transparent = ##t
    \tuplet 3/2 { g^.[ bes^. d^.]\) }
  | f\( ees \tuplet 3/2 { d[ ees g] } \tuplet 3/2 { b,![ c d] } \tuplet 3/2 { ees[ g, a!] }
  %55
  | bes4\) r bes,( c8[ bes])
  | << { \stemDown bes'4\( \stemUp s f ees8[ f] } \\ { bes,4 d8[ ees] bes2\( } >>
  | << { g'2\) ees4 f8[ ees] } \\ { ees2\) ees,4( f8[ ees]) } >>
  | << { ees'4\( g,8[ aes] bes4 aes8[ bes] } \\ { ees,4 s ees2\( } >>
  | << { c'4\) } \\ { aes4\) } >> r4 r8 aes'~^>\(  \tuplet 3/2 { aes f ees }
  %60
  | \tuplet 3/2 { d f c } bes4~ bes8\)[ bes'~^>]\( \tuplet 3/2 { bes g f }
  | \tuplet 3/2 { ees g d } c4~ c8[\) c'~^>]\( \tuplet 3/2 { c aes g }
  | \tuplet 3/2 { f^> aes ees } \tuplet 3/2 { d^> f c }
    \tuplet 3/2 { b! d f } \tuplet 3/2 { g b! d }
  | ees8\) r <ees, fis c'> r <ees g bes> r <f,! aes bes d> r\fermata
  | <g bes ees g>2\arpeggio
    \once\override TupletBracket.bracket-visibility = ##t
    \override TupletNumber.transparent = ##f
    \tuplet 3/2 { r8 <ees ees'>^. <f f'>^. }
    \tuplet 3/2 { <g g'>^.[ <aes aes'>^. <bes bes'>^.] }
    \override TupletNumber.transparent = ##t
  %65
  | <c ees aes c>4^.
    \ottava #1
    <aes' c f aes>4^.
    \ottava #0
    r2
  | \stemNeutral
    r8 aes'16[\( f] d[ bes aes f] d[ bes aes f] d[ f bes\) r32 aes]
  | <bes, ees fis>4_. <bes ees g> r2
    \break
  | r16 aes'[_\( c g'] aes^\markup { \tiny\italic "m.s." }
    aes,[ c f]\) r aes,[_\( bes f'] bes aes,[ bes f']\)
  | r g,[_\( bes f'] g g,[ bes ees]\) r bes[_\( ees bes'] ees bes,[ ees g]\)
  %70
  | r aes,[_\( c g'] aes aes,[ c f]\) r aes,[_\( bes f'] bes aes,[ bes f']\)
  | r g,[_\( bes f'] g g,[ bes ees]\) r bes[_\( ees bes'] ees bes,[ ees g]\)
  | \once\override TupletBracket.bracket-visibility = ##t
    \override TupletNumber.transparent = ##f
    \tuplet 6/4 { r g,,\( bes ees bes g\) }
    \override TupletNumber.transparent = ##t
    \tuplet 6/4 { r bes\( ees g ees bes\) }
    \tuplet 6/4 { r aes\( ees' aes ees aes,\) }
    \tuplet 6/4 { r bes \( ees g ees bes\) }
  | \tuplet 6/4 { r c\( ees f ees c\) } \tuplet 6/4 { r c\( f a! f c\) }
    \tuplet 6/4 { r bes\( f' bes f bes,\) } \tuplet 6/4 { r c\( f aes f c\) }
  | \tuplet 6/4 { r d\( f g f d\) } \tuplet 6/4 { r d\( g b! g d\) }
    \tuplet 6/4 { d'^>\( g, c, c' g c,\) } \tuplet 6/4 { r c\( f a! f c\) }
  %75
  | \tuplet 6/4 { c'^>\( f, bes, bes' f bes,\) } \tuplet 6/4 { r d\( g b! g d\) }
    \tuplet 6/4 { d'^>\( g, c, c' g c,\) } \tuplet 6/4 { r c\( f a! f c\) }
  | \tuplet 6/4 { c'^>\( f, bes, bes' f bes,\) } \tuplet 6/4 { r bes\( ees g ees bes\) }
    \tuplet 6/4 { bes'^>\( ees, aes, aes' ees aes,\) } \tuplet 6/4 { g'\( c, aes f' c aes\) }
  | \tuplet 6/4 { r16 g[_\( bes f' bes, g]\) }
    \tuplet 6/4 { g'^\markup { \tiny\italic "m.s." } g,[\( bes ees bes g]\) }
    \tuplet 6/4 { r f[\( aes d aes f]\) } \tuplet 6/4 { bes' f,[\( aes d aes f]\) }
  | \tuplet 6/4 { r g[_\( bes ees bes g]\) } \tuplet 6/4 { r des'[_\( g bes g des]\) }
    \tuplet 6/4 { bes'^>\( ees, c aes' f bes,\) } \tuplet 6/4 { g'^>\( d! aes f' d as\) }
  | \tuplet 6/4 { r g[_\( bes ees bes g]\) }
    \shape #'((-0.2 . 0) (0 . -1.5) (0 . -0.5) (0 . 0)) PhrasingSlur
    \tuplet 6/4 { f'^>\( bes, g ees' bes g\) }
    \tuplet 6/4 { r ees[_\( aes ees' aes, ees]\) } \tuplet 6/4 { r f[_\( aes d! aes f]\) }
  %80
  | \tuplet 6/4 { r g[_\( bes ees bes g] } \tuplet 6/4 { g'^> g,[ bes ees bes g]\) }
    \tuplet 6/4 { r g[_\( bes ees bes g] }
    \tuplet 6/4 {
      g'^\markup { \italic "ritardando" } g,[ bes ees bes g]\)
    }
    \break
  | \override TupletBracket.bracket-visibility = ##t
    \override TupletNumber.transparent = ##f
    \change Staff = "lower"
    \shape #'((0 . -5.5) (0 . 4) (0 . 1) (-0.5 . -1)) PhrasingSlur
    \tuplet 6/4 {
      \stemDown ees,8^.[\( g^. bes^.] ees^. \stemUp g_.[ bes_.]
    }
    \change Staff = "upper"
    \tuplet 6/4 {
      ees_. \stemDown g^.[ bes^.] ees^. \stemUp g_.[ bes_.]
    }
  | \stemDown ees8\) r8 r4 \stemUp <bes,, ees g> r
  | <g bes ees> r r2
  \fine
}

Lower = \relative c {
  \clef bass
  \partial 4
    r4
  | \sluredTuplet ees,8[\( g' bes ees bes g]\)
    \override TupletBracket.bracket-visibility = ##f
    \override TupletNumber.transparent = ##t
    \sluredTuplet ees[\( aes c f c aes]\)
  | \sluredTuplet ees[\( aes bes d bes aes]\)
    \sluredTuplet ees[\( g bes ees bes g]\)
  | \sluredTuplet g[\( bes ees g ees bes]\)
    \sluredTuplet d,[\( aes' bes f' bes, aes]\)
  | \sluredTuplet ees[\( bes' ees g ees bes]\)
    \sluredTuplet bes,[\( bes' d f d bes]\)
  %5
  | \sluredTuplet ees,,[\( g' bes ees bes g]\)
    \sluredTuplet aes,[\( aes' c f c aes]\)
  | \sluredTuplet g,[\( g' c ees c g]\)
    \sluredTuplet f,[\( f' aes c aes f]\)
  | \shape #'((0.5 . 2.5) (0 . 1.5) (0 . 0.5) (0 . 0)) PhrasingSlur
    \tuplet 3/2 { ees[\( g c\) }
    \shape #'((0.5 . 2.5) (0 . 1.5) (0 . 0.5) (0 . 0)) PhrasingSlur
    \tuplet 3/2 { f,\( aes d]\) }
    \tuplet 6/4 { g,[\( c ees\) g,\( d' f\)] }
  | \sluredTuplet c,[\( g' c ees c g]\)
    c,4 r
  | \sluredTuplet f,8[\( aes' c f c aes]\)
    \sluredTuplet bes,[\( bes' d f d bes]\)
  %10
  | \sluredTuplet ees,[\( g bes ees bes g]\)
    \sluredTuplet d[\( g bes ees bes g]\)
  | \sluredTuplet c,[\( g' c ees c g]\)
    \sluredTuplet f,[\( f' a! ees' a, f]\)
  | \sluredTuplet bes,[\( f' bes d bes f]\)
    \sluredTuplet aes[\( bes d f d bes]\)
  | \sluredTuplet g[\( bes ees g ees bes]\)
    \sluredTuplet d,[\( aes' bes f' bes, aes]\)
  | \sluredTuplet ees[\( g bes ees bes g]\)
    \sluredTuplet aes[\( bes d f d bes]\)
  %15
  | \sluredTuplet g[\( bes ees g ees bes]\)
    \sluredTuplet d,[\( aes' bes f' bes, aes]\)
  | \sluredTuplet ees[\( g bes ees bes g]\)
    \sluredTuplet d[\( f bes d bes f]\)
  | \sluredTuplet c[\( g' c ees c g]\)
    \sluredTuplet f[\( a! c ees c a]\)
  | <fis a>4^. <g bes>^. <e! e'!>^. r
  | <f f'> r <f, f'> r
  %20
  | <bes d f bes>2\arpeggio <d f bes d>\arpeggio
  | <ees ees'>4 <c c'> r2
  | <f c' ees a!>1\arpeggio
  | <bes, f' bes>4^. <bes f' bes>^. r2
  | <g bes d g>2\arpeggio <bes d g bes>\arpeggio
  %25
  | <c g' c>4\arpeggio r r2
  | <d a'! c fis>1\arpeggio
  | <g, d' g>4\arpeggio <g d' g>\arpeggio r2
  | a'!4 r fis r
  | g r bes r
  %30
  | a! r fis r
  | g r bes r
  | f' r d r
  | ees r c r
  | d r b! r
  %35
  | c r a! r
  | bes r ees, r
  | f r ees r
  | d r ees r
  | f r f, r
  %40
  | bes r bes r
  | bes r bes r
  | bes'8 r r16 \clef treble bes[\([ d f] aes\) r4 bes,16[\( d f]
  | aes16\) r r8 <bes, d f aes>4\arpeggio r2
  | \clef bass
    \sluredTuplet ees,,8[\( g' bes ees bes g]\)
    \sluredTuplet ees[\( aes c f c aes]\)
  %45
  | \sluredTuplet ees[\( aes bes d bes aes]\)
    \sluredTuplet ees[\( g bes ees bes g]\)
  | \sluredTuplet g[\( bes ees g ees bes]\)
    \sluredTuplet d,[\( aes' bes f' bes, aes]\)
  | \sluredTuplet ees[\( bes' ees g ees bes]\)
    \sluredTuplet bes,[\( bes' d f d bes]\)
  | \sluredTuplet ees,,[\( g' bes ees bes g]\)
    \sluredTuplet aes,[\( aes' c f c aes]\)
  | \sluredTuplet g,[\( g' c ees c g]\)
    \sluredTuplet f,[\( f' aes c aes f]\)
  %50
  | \tuplet 3/2 { ees[\( g c]\) }
    \tuplet 3/2 { f,[\( aes d]\) }
    \tuplet 6/4 { g,[\( c ees]\) g,[\( d' f]\) }
  | \sluredTuplet c,[\( g' c ees c g]\)
    c,4 r
  | \sluredTuplet f,8[\( aes' c f c aes]\)
    \sluredTuplet bes,[\( bes' d f d bes]\)
  | \sluredTuplet ees,[\( g bes ees bes g]\)
    \sluredTuplet d[\( g bes ees bes g]\)
  | \sluredTuplet c,[\( g' c ees c g]\)
    \sluredTuplet f,[\( f' a! ees' a, f]\)
  %55
  | \sluredTuplet bes,[\( f' bes d bes f]\)
    \sluredTuplet aes[\( bes d f d bes]\)
  | \sluredTuplet g[\( bes ees g ees bes]\)
    \sluredTuplet d,[\( aes' bes f' bes, aes]\)
  | \sluredTuplet ees[\( g bes ees bes g]\)
    \sluredTuplet des[\( ees g bes g ees]\)
  | \sluredTuplet c[\( ees aes c aes ees]\)
    \shape #'((0.5 . 0.5) (0 . 1) (0 . 0.5) (0 . 0)) PhrasingSlur
    \tuplet 6/4 { g,[\( des' ees bes' ees, des]\) }
  | \sluredTuplet aes[\( c ees aes ees c]\)
    \sluredTuplet f,[\( aes' c f c aes]\)
  %60
  | \sluredTuplet bes,[\( bes' d f d bes]\)
    \sluredTuplet g,[\( bes' d g d bes]\)
  | \sluredTuplet c,[\( c' ees g ees c]\)
    \sluredTuplet aes,[\( c' ees aes ees c]\)
  | <d, d'>4 <f f'> <g g'> r4
  | \clef treble
    c8 r a'! r bes r bes, r\fermata
  | \clef bass
    <ees,, g bes ees>2\arpeggio
    <g bes ees g>\arpeggio
  %65
  | <aes c ees aes>4^. <f f'>_. r2
  | <bes f' aes d>1\arpeggio
  | <ees, bes' ees>4_. <ees bes' ees>4_. r2
  | \clef treble
    f''4 r d r
  | ees r g r
  %70
  | f r d r
  | ees r g r
  | \clef bass
    ees, des c bes
  | a! ees' d c
  | b! f' e! ees
  %75
  | d f e! ees
  | d des c aes
  | bes r bes r
  | ees ees, ees' ees,
  | << { ees'4 des c ces } \\ { ees,2. \stemUp ees!4_> } >>
  %80
  | <ees bes'>4 r ees r
  | s1
  | r2 <ees ees'>4 r
  | <ees ees'>4 r r2
  \fine
}

LowerTenuto = \relative c {
  \partial 4 s4
  \voiceThree
  | ees,4 s ees' s
  | ees s ees s
  | g s d s
  | ees s bes s
  %5
  | ees, s aes s
  | g s f s
  | ees' f s2
  | c4 s2.
  | f,4 s bes s
  %10
  | ees s d s
  | c s f, s
  | bes s aes' s
  | g s d s
  | ees s aes s
  %15
  | g s d s
  | ees s d s
  | c s f s
  | s1
  | s1
  %20
  | s1
  | s1
  | s1
  | s1
  | s1
  %25
  | s1
  | s1
  | s1
  | s1
  | s1
  %30
  | s1
  | s1
  | s1
  | s1
  | s1
  %35
  | s1
  | s1
  | s1
  | s1
  | s1
  %40
  | s1
  | s1
  | s1
  | s1
  | ees,4 s ees' s
  %45
  | ees s ees s
  | g s d s
  | ees s bes s
  | ees, s aes s
  | g s f s
  %50
  | s1
  | c'4 s2.
  | f,4 s bes s
  | ees s d s
  | c s f, s
  %55
  | bes s aes' s
  | g s d s
  | ees s des s
  | c s g s
  | aes s f s
  %60
  | bes s g s
  | c s aes s
  | s1
  | s1
}

centeredDynamics = {
  \partial 4 s8-\markup{ \dynamic p \whiteout \pad-markup #0.5 \italic "amoroso" } s8
  | s1
  | s1
  | s1
  | s1
  %5
  | s8-\markup{ \italic "espressivo" } s8 s2.
  | s4 s4 s4\> s4\!
  | s16 s16\pp s8 s2.
  | s4. s8-\markup{ \hspace #1.5 \italic "animato" } s2
  | s1
  %10
  | s2 s8\< s4 s16 s16\!
  | s8\f s8 s4 s4\> s4\!
  | s4. s8-\markup{ \hspace #1.5 \italic "dolce" } s2
  | s1
  | s1
  %15
  | s1
  | s4. s8\< s8 s4 s8\!
  | s2 s4 s8\> s16 s16\!
  | s4 s4 s4\pp s4
  | s1
  %20
  | s8-\markup { \dynamic f \italic "risoluto" } s8 s2.
  | s8\ff s8 s2.
  | s2 s8 s8\> s8 s16 s16\!
  | s1
  | s8-\markup { \dynamic p \italic "con malinconia" } s8 s2.
  %25
  | s1
  | s8\pp s8 s2.
  | s1
  | s8-\markup { \italic "agitato" } s8 s2.
  | s1
  %30
  | s2 s16 s\< s s s8 s16 s\!
  | s2 s16 s\< s s s8 s16 s\!
  | s8\f s8 s2.
  | s4\> s2 s8\! s
  | s1
  %35
  | s8\p s8 s2.
  | s8-\markup { \italic "amoroso" } s8 s2.
  | s4 s8\< s2 s16 s\!
  | s8\pp s8 s2.
  | s1
  %40
  | s16 s16\< s2. s16 s\!
  | s1
  | s8\f s8 s2.
  | s4 s s \pp s
  | s8-\markup { \italic "con espressione" } s8 s2.
  %45
  | s1
  | s1
  | s1
  | s1
  | s4 s s\> s16 s\! s8
  %50
  | s1
  | s1
  | \tuplet 3/2 { s8 s s\< s s s\! } s2
  | s16\> s s8 s\! s s4\< s8 s16 s\!
  | s16-\markup { \italic "dim." } s8. s4 s4\pp s4
  %55
  | s4 s s\< s8 s16 s\!
  | s4 s s s8\> s16 s\!
  | s2 s2\pp
  | s1
  | s2 s8 s16\> s8 s16 s s\!
  %60
  | s2 s8 s16\> s8 s16 s s\!
  | s2 s8\< s16 s8 s16 s s\!
  | s8\f s8 s4 s4 s8\> s16 s16\!
  | s4 s4-\markup { \dynamic p \italic "calando" } s2
  | s8-\markup { \dynamic ff \italic\bold "con forza" } s8 s2.
  %65
  | s1
  | s1
  | s1
  | s16-\markup { \dynamic p \italic "dolce" } s8. s4 \< s s8 s16 s\!
  | s16 s s8 s s s4\> s8 s16 s\!
  %70
  | s16 s8. s4 \< s s8 s16 s\!
  | s16 s s8 s s s4\> s8 s16 s\!
  | s16 s s8 s s s s\> s8 s16 s\!
  | s16 s s8\< s s\! s s\> s8 s16 s\!
  | s16 s s8 s s s4\> s8\! s
  %75
  | s16\> s s8 s\! s s4\> s8\! s
  | s16\> s s8 s\! s s4 s8 s
  | s1
  | s8 s s16-\markup { \italic "morendo" } s8. s2
  | s8\pp s8 s2.
  %80
  | s1
  | s8 s16 s32 s\ppp s8 s s s-\markup { \italic\small "a piacere" } s4

  | s1
}

\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 12)
         (padding . 0)
         (stretchability . 0))
  }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Upper
    >>
    \context Dynamics <<
      \Global \centeredDynamics
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Lower
      \LowerTenuto
    >>
  >>
  \header {
    composer = "Mikhail Glinka"
    %opus = ""
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "ноктюрн"
      %}
    }
    subsubtitle = "(Nocturne)"
  }
  \layout {}
  \midi {}
}
