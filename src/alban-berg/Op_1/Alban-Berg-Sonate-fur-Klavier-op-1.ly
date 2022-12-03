\version "2.23.7"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 10\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.6\cm
% markup-system-spacing.basic-distance = #10
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 3)
        (stretchability . 25))
  top-margin = 10\mm
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
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Alban" }
        \null
        \line { \abs-fontsize #80 \bold "Berg" }
	\null
	\fill-line { \draw-hline }
	\null\null\null\null
        \line { \abs-fontsize #40 \bold "Klaviersonate" }
        \null\null
        \line { \abs-fontsize #30 \bold "Op. 1" }
        \null\null\null\null
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \fill-line { \abs-fontsize #8 "Based on the Robert Lienau's score" }
        \null
      }
    }
  }
}

Global = {
  \key b \minor
  \time 3/4
  % Draw a box round the bar number(s)
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
}

accel = { \override TextSpanner.bound-details.left.text = \markup { \small "accel. " } }
accelcresc = { \override TextSpanner.bound-details.left.text = \markup { \small "accel. e cresc. " } }
accelcrescp = { \override TextSpanner.bound-details.left.text = \markup { \small "(accel. e cresc.) " } }
espress = { \override TextSpanner.bound-details.left.text = \markup { \small "espress. " } }
rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. " } }
ritdim = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. e dim. " } }
stringendo = { \override TextSpanner.bound-details.left.text = \markup { \small "stringendo " } }

Upper = \relative c' {
  \clef treble
  \tempo \markup { \bold Mäßig bewegt. }
  \partial 2
    << { g'8.\( c!16_\<  fis!4~\! }
      \\ { s4  <b,! g!> }\p >>
  \repeat volta 2 {
  | << { \accel fis'8_\startTextSpan[ g g ees ees b!\stopTextSpan] }
      \\ { <b! g!>4 <bes g> <a b!> } >>
  | << { d4.\rit cis!8_\startTextSpan  cis4\) }
      \\ { gis8.\(^\> g!16  g4\! \)  g8. \( fis!16 } >>
  | << {
      d'4\rest  d8\rest_\stopTextSpan
      \once\set breathMarkType = #'upbow
      \breathe d^\<_\markup{
        \pad-markup #1.2 \small\italic "a tempo"
      } \([bes fis!]\!
    } \\ {
      <fis! d>2 \)  d4
    } >>
  \break
  | << { \stemUp f'!8. e!16^\>  e4\!\)  r8 f!16\( \accelcresc e_\startTextSpan }
      \\ { <a,! f!>4.\(  <ais fis>8\<  <g! b!>4\! \) } >>
  %5
  | << { ees'8 bes!^\<  <a'! ees!>4 \! \)  s8 bes_\stopTextSpan\espressivo([ }
      \\ { <bes, ges>4 d!8. cis!16  cis4 } >>
  | << { fis!8 d!]) cis'!\espressivo([ a! f! ]) a8\espressivo([ }
      \\ { \stringendo <ais, fis>8._\startTextSpan <b! g!>16  <b g>8. <bis gis>16  <bis gis>8. <cis! a!>16 } >>
  | << { dis8.])^> a'!16([  b,!8.->])  a'!16\(  g,!4->~ }
      \\ { <cis! a!>8_\stopTextSpan_\markup{ \pad-markup #0.1 \small\italic "molto rit." }
           \f {
	     \stemDown
             \once\override Beam.positions = #'(-6 . -7)
             <b! g! b,!>8_\<_\tenuto[
             <a f! a,!>8_\tenuto
           }
           \change Staff = "lower" {
             \stemUp
             <g! ees g,!>8^\tenuto  <f! des f,!>8^\tenuto  <ees ces ees,>8^\tenuto\!] }
           } >>
  | << {
      g8.[\ff\< gis16->\! gis8-> e!->  e-> c!->]
    } \\ {
      s4 \ritdim s8^\startTextSpan s4.
    } >>
  | << { dis8.->\) d!16  d8 cis->_~  cis8. c!16_~ }
      \\ { s2. } >>
  %10
  | << { c!2._~ } \\ { s4 s4 s8 s8\stopTextSpan } >>  %%%
  | << {
      c!8\pp ^\markup{ \small\italic "Rascher als Tempo I" }  b'8\rest(
      s4
      <d! b! fis! d!>4^\tenuto\!
    } \\ {} >>
  \break
  | << {
      bes4\tenuto ees,\tenuto g!\tenuto
    } \\ {
      <e! c!>4 <b! g!>4 <d! bes>4
    } >>
  | << {
      \stemUp bes8.^\< b!16\!^\>  b!4\!)
      \shape #'((0 . 0) (0 . 1.2) (0 . 1.5) (0 . 0)) PhrasingSlur
      c!8. \( cis16
    } \\ {
      \stemDown ges8. g!16  g!4  gis4
    } >>
  | << {
      cis!8 e!_\<
      \tupletUp \tuplet 3/2 4 {
        b'! g! dis'
      }\! b'!4 \)
    } \\ {
      g,,!4  r4  <f''! b,!>4
    } >>
  %15
  | << {
      \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 1.5)) PhrasingSlur
      \tupletUp \tuplet 3/2 4 {
        d!8\<\( bes fis'\!
      }
      a!4^\markup{ \small\italic "poco ritard." }
      aes4
    } \\ {
      \stemDown d,!4  <des a!>4 \tuplet 3/2 4 { bes8 fis\< des' }
    } >>
  | << {
      g!4 \)
      \once\set breathMarkType = #'upbow
      \breathe
      \shape #'((0 . 3.5) (0 . -4) (0 . -4) (0 . 0)) PhrasingSlur
      \change Staff = "lower"
      \tuplet 3/2 4 {
        gis,,8^\mf\( e! c'!
      }
      \showStaffSwitch
      \change Staff = "upper"
        fis!4_~
    } \\ {
      ees'4 s4\!^\markup{ \small\italic "Tempo I." }
    } >>
  | << { fis,8[ g!  g! ees  ees b!] } \\ { } >>
  | << {
      d8. cis!16 \)
      \accelcresc
      \tuplet 3/2 4 {
        cis8\startTextSpan \( g gis'_\<
      }
      cis!4\!~
    } \\ {
      gis,4  cis  fis!4
    } >>
  | << {
      cis'8[\) d!\( d bes bes fis! ]\stopTextSpan
    } \\ {  %%% stopTextSpan should probably be in next bar
      \parenthesize f!8 c8\rest  c4\rest  c4\rest
    } >>
    \break
  %20
  | << {
      \accelcrescp a'8.\)_\startTextSpan f'!16[\( f!8( des) des( a)]
    } \\ {
      f!4  a!8^\tenuto bes[_( ges cis,!]
    } >>
    \noBreak
  | << {
      d'!16 c! b! c!  aes'8 ees
      \once\override NoteColumn.force-hshift = #-0.9
      << <d'!~ ees,!>4 \stopTextSpan
      \\ {
        \once\override NoteColumn.force-hshift = #-1.5 aes!4
      } >>
    } \\ {
      <fis, c!>4)  <ees' bes>4
    } >>
    \noBreak
  | << {
      <d' e,!>8[\)\( ees b! g!]  <f'! ges,>16 ees! d ees
    } \\ {
      a,!4
      \once\override NoteColumn.force-hshift = #-0.5 f!
      \once\override NoteColumn.force-hshift = #-0.5 bes
    } >>
  | << {
      << <ais' ais,>2->^\ff \\ <fis! d!>2 >>
      <gis, ais gis'>4->
    } \\ {
      s8
      \crossStaff {
        \autoBeamOff
        \stemDown
        b,,!16 c! c8 dis
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        \tuplet 3/2 4 {
          ais'8 fis! s
        }
      }
    } >>
    \break
  | << {
      \stemUp <ais' gis'>2^> <fis! d'! fis!>4^>
    } \\ {
      \stemDown cis'!2 a!4
    } >>
  %25
  | << {
      \once\override NoteColumn.force-hshift = #0.3
      \stemDown e'!8[->\) cis!_^]
      \tupletDown \tuplet 3/2 4 {
        \once\shape #'((0 . 1) (0 . 3.5) (0 . 3) (0 . -1)) Slur
        fis,!8_^( bes_^ d,!_^
      }
      s4
  |   \tupletUp \tuplet 3/2 4 {
        <a! a'!>8[ <cis! cis'!> <f, f'>]
      }
      \stemUp <b,! b'!>4)^\tenuto \stemNeutral
      \tuplet 3/2 4 { c'!8 e! gis, }

    } \\ {
      \stemUp
      \once\override NoteColumn.force-hshift = #0.5  <b'! fis!>4.
      d!8[^> <cis! cis,!>8.^> <b! b,!>16^>^\< ]
      s16 s32\! s32^\> s16 s32 s32\!
      s4
      % I bit too hacky... for just displying < > at the right high :p
      \hideNotes
      d32^\< s32 s32 s32\! a64^\> s32 s64 s64 s32\!
      \unHideNotes
    } >>
  | s2.
  | s2.
  | s2.
  %30
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %35
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %40
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %45
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %50
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %55
  | s2.
  }
}

Lower = \relative c {
  \clef bass
  \partial 2
    r4
    \once\shape #'((0 . 0) (0 . 0.5) (0 . -1) (-2 . -2)) PhrasingSlur
    cis'~\(
  \repeat volta 2 {
  | cis4  c!  b!
  | <e_\( ais,>2~\)
    <ais, fis,!\)>4
  | << {
      b,,8._( fis'!16  b!4)
    } \\ {
      s4.
      \once\set breathMarkType = #'upbow
      \breathe
      s8
    } >>
    r8. c'!16\(
  | cis4~ cis8.\) d!16\(  d4
  %5
  | ees4\)  b!8_\<\( fis!  f'!4\!\)
  | s2.
  | s2.
  | << {
      <d,! ges bes d!>4 <cis' a!>4-\markup {
        \small\italic "r.H."
      }
      <c! gis e>4
    } \\ {
      r8 <e,,! e,!>8~\sfz_\markup { \small\italic "l.H." }
      <e e,>2
    } >>
  | << {
      <b''! g!>4  <bes ges>4
      << {
        \stemDown \shape #'((0 . 0) (0 . 1.5) (0 . 0.5) (0 . 0)) PhrasingSlur a4\(
      } \\ {
        \stemUp f!8\tenuto fis\tenuto
      } >>
    } \\ {
      r8 a,,~ a2
    } >>
  %10
  | << {
      g''2\)_\markup{ \small\italic "espressivo" } f!8.\( fis16
    } \\ {
      \stemDown dis8.->\( d!16->
      \once\override Stem.details.beamed-lengths = #'(6) d8.-> cis16->~
      cis8 c!
    } \\ {
      \override Rest.extra-offset = #'(0.7 . 0) f,8\rest
      \stemDown a!_~ \once\override NoteColumn.force-hshift = #0.3 a2
    } >>
  | << {
      \stemUp
      \once\shape #'((0 . 0) (0 . 0) (5 . 0) (5 . 0)) PhrasingSlur
      fis'!8 \showStaffSwitch a!\)
      \change Staff = "upper"
      \tupletUp \tuplet 3/2 4 {
        e'!8[\< c! gis'!]\!
      }
    } \\ {
      \once\stemDown <c,,! a! d,!>2 \)
      \tupletUp \tuplet 3/2 4 { r8_\p
      \stemUp
      \once\shape #'((0 . 0) (0 . 0) (0 . 0.2) (0.5 . 1)) PhrasingSlur
      gis,^\( b! \) }
    } >>
  | << {
      \once\shape #'((-0.5 . 1) (1 . 0.5) (0 . 1.0) (0 . 0)) PhrasingSlur
      \tupletUp \tuplet 3/2 4 { fis'!8[\<\( d! ais'!] }
      \once\stemDown e'!4\!^\tenuto
      \once\stemUp c!4_\tenuto
    } \\ {
      s2.
    } >>
  | << {
      f,!4_\tenuto
      \once\stemDown <cis' dis,>4 \)
      \tenuto \once\stemDown d!4
    } \\ {
      s4\> \once\stemUp a4\! \( \once\stemUp e!
    } >>
  | << { e'!2 f!4\( } \\ { a,!2 \) <d aes>4 } >>
  %15
  | << { <aes' fis>4\) \tuplet 3/2 4 { f!8\( cis! a'! } ees'4\) }
      \\ { bes,4  b!_\(  c! } >>
  | << { <b'! g!>4  \once\shiftOn d,4_\(  \stemDown cis4 }
      \\ { cis4\)  d!4 \stemUp <b' g!>4 } >>
  | << { <aes bes>4^\< <b! g!>4\! <a! fis!>4 }
      \\ { d,!4 cis! c! } >>
  | << { f!4  e8\) \espress d'8[\(_\startTextSpan  dis e]\< }
      \\ { \stemDown b,!4. d'8\tenuto bes\tenuto fis!\tenuto } >>
  | << {
      \stemDown
      \once\override NoteColumn.force-hshift = #-1
      fis'8.[\tenuto\)_\!\> e!16]\tenuto  e4\tenuto\!  r8 f16\tenuto e\tenuto
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #-0.15 <bes g>2
    } \\ {
      \acciaccatura {
        \stemUp g,!8 \stemNeutral
      }
      \once\stemDown g!2 g4\rest
    } >>
  %20
  | << {
      \stemDown ees''8\tenuto[ bes\tenuto]
      \stemUp ees,\stopTextSpan[\( bes]
      \stemDown a'!4\)
    } \\ { } >>
  | \once\shape #'((0 . 0) (5.5 . -0.5) (3 . -15) (0 . -5)) PhrasingSlur
    aes8\( ees  d'!16[ c! b! c!]
    \change Staff = "upper"
    \once\override TextScript.X-offset = #-3
    \stemDown \shiftOn
    aes'8-\markup {
      \small\italic "l.H"
    } ees
  | \once\override NoteColumn.force-hshift = #1.1
    d'!8.\)
    d,!16[_\markup{ \small\italic "breiter werdend" }_>_(_\<
      \once\override NoteColumn.force-hshift = #0.2 d'!8.]_>)
    des,16[_>_(
      \once\override NoteColumn.force-hshift = #0.2 c'8.]_>)
    c,!16_>\!_(
  | \once\override Stem.details.beamed-lengths = #'(10 16.5 3)
    \once\override NoteColumn.force-hshift = #0.2
    b'!8_>)

    \change Staff = "lower"
    \crossStaff {
      \stemDown
      b,,!16_>%^\markup { \small\italic "marc." }
      c!_> c8_> dis_>
      \once\override Beam.positions = #'(-2 . -2)
      \tuplet 3/2 4 {
        ais'8\<_> fis!_>
        \change Staff = "upper"
        <d' d'>\!_>_(
        \change Staff = "lower"
      }
    }
  | \change Staff = "upper"
    \once\override Stem.details.beamed-lengths = #'(10 16.5 3)
    \once\override NoteColumn.force-hshift = #1.1
    <gis! gis'!>8_>)

    \change Staff = "lower"
    <gis,, gis'>16_>( <a! a'!>16_> <a! a'!>8_> <cis! cis'!>8_>
    \tuplet 3/2 4 {
      <fis! fis'!>8\<_> <d! d'!>_>
      \once\override Stem.details.beamed-lengths = #'(10 16.5 4)
      \change Staff = "upper"
      <ais'! ais'!>\!_>)
      %\showStaffSwitch
    }
  %25
  | \change Staff = "lower"
    \clef violin
    %\set Staff.connectArpeggios = ##t
    << {
      \once\shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -1)) Slur
      \stemUp e''!8[( cis!^^]
      \stemUp \tupletDown \tuplet 3/2 4 {
        fis,!8^^ bes^^ d,!^^
      }
      \once\shape #'((0.75 . 2.5) (0 . 3) (0 . 2.5) (-1 . 4.5)) Slur
      gis,4)_^^_\tenuto_(
      \clef bass
  |   \stemDown
      <gis cis fis>8) <g c f>4\tenuto <fis b! e!>4\tenuto <f! bes ees>8\tenuto
    } \\ {
      \once \override Arpeggio.positions = #'(-4.5 . 2.5)
      <b'! fis! b,!>\arpeggio
    } >>
  | s2.
  | s2.
  | s2.
  %30
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %35
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %40
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %45
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %50
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %55
  | s2.
  }
}

\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 12)
         (padding . 0)
         (stretchability . 0))
  } <<
    \accidentalStyle Score.piano
    \new Staff = "upper" {
      \Global
      \Upper
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    composer = "Alban Berg"
    opus = "Op. 1"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "SONATE"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    #(layout-set-staff-size 18)
  }
  \midi {}
}
