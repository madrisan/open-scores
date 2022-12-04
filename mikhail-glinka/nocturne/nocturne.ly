\version "2.23.7"

#(ly:set-option 'relative-includes #t)

coverColor = #(rgb-color 0.2 0.4 0.5)

sluredTuplet =
  #(define-scheme-function (n1 n2 n3 n4 n5 n6)
  (ly:music? ly:music? ly:music? ly:music? ly:music? ly:music?)
#{
\shape #'((0.5 . 2.5) (0 . 1) (0 . 0.5) (0 . 0)) PhrasingSlur
\tuplet 6/4 { $n1 $n2 $n3 $n4 $n5 $n6 }
#})

\paper {
  indent = 0.0
  line-width = 18.6\cm
  top-margin = 10\mm
  bottom-margin = 10\mm
% ragged-last-bottom = ##t
% ragged-bottom = ##f
  first-page-number = 0
% markup-system-spacing.basic-distance = #10
% last-bottom-spacing.padding = #2
  print-all-headers = ##t
  tagline = ##f
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
        \null\null
        \null\null\null\null
        \fill-line {
          \override #'(thickness . 5)
          \draw-squiggle-line #0.5 #'(10 . 0) ##t
        }
        \null\null\null\null
        \null\null\null\null
        \fill-line { \abs-fontsize #11 "Transcribed and Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line {
          \abs-fontsize #8 "Based on the score published by Muzgiz (Полное собрание сочинений, vol 6 - Moscow, 1958)"
        }
        \null
      }
    }
  }
}

Global = {
  \key ees \major
  \time 4/4
  % Draw a box round the bar number(s)
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
}

% _\markup { \dynamic p \italic "amoroso" } FIXME

Upper = \relative c'' {
  \clef treble
  \set Staff.connectArpeggios = ##t
  \tempo \markup { \bold Moderato }
  \omit TupletBracket
  \omit TupletNumber
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
  | <a ees'>4^. <bes ees>^. <g, bes des g>^.\arpeggio r
  | <bes d! f> r <c, ees! f a!> r
  %20
  | \set Staff.connectArpeggios = ##f
    <d f bes d>2\arpeggio \tuplet 3/2 { r8 bes'^.\< c^. d^. ees^. f^.\! }
  | <g, bes ees g>4\arpeggio <ees' g c ees>\arpeggio r2
  | r8
    \shape #'((0 . 0) (0 . 2.5) (0 . 0.5) (0 . 0)) PhrasingSlur
    c'16[\( d] f[^> ees a,! bes]
    d[^> c a f] ees[ c a! f']\)
  | <f, bis>4_. <f bis d>_. r2
  | <bes, d g bes>2\arpeggio
    \tuplet 3/2 { r8 g'_.\( a!_. bes^. c!^. d^.\) }
  %25
  | << { f4\arpeggio( ees8) r } \\ { <g, a!>4\arpeggio r } >> r2
  | r16 ees''[ c a!] g[ fis a d,] ees[ c a! g] fis[ a d r32 c]
  | <d, g a!>4\arpeggio <d g bes>\arpeggio r2
  | r16 ees[_\( g d'] ees^\markup { \tiny\italic "m.s." }
    ees,[ g c]\) r d,[_\( a'! c] d d,[ a' c]\)
  | R1
  %30
  \fine
}

Lower = \relative c {
  \clef bass
  \partial 4
    r4
  | \sluredTuplet ees,8[\( g' bes ees bes g]\)
    \omit TupletBracket
    \omit TupletNumber
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
  | <g, d' g>4\arpeggio <g d' g>4\arpeggio r2
  | a'!4 r fis r
  | R1
  %30
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