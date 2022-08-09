\version "2.23.11"

Global = {
   \key c \major
   \time 3/4
   \override Score.BarLine.transparent = ##t
   \override Score.SpanBar.transparent = ##t
}

Upper = \relative c,, {
   \clef bass
   \tempo \markup { \bold Rubato }
   %1
   | s2.
   | s2.
   | s2.
   | \phrasingSlurUp
     \repeat tremolo 4 { b'32\( ais }
     \repeat tremolo 4 { a!32 gis }
     \repeat tremolo 4 { g!32 fis\) }
   %5
   | s2.
   | s2.
   | s2.
   | r4 r4
     \repeat tremolo 4 { d'32\<\( cis\! }
   | \repeat tremolo 4 { d32\> cis\! }
     \omit TupletNumber
     \tuplet 6/4 4 {
         c!16[ cis d dis e eis]\)
     }
     s4
   %10
   | s2.
   | s2.
   | s2.
   | s2.
   | s2.
   %15
   | s2.
   | s2.
   | s2.
   | s2

   \override Score.SpanBar.transparent = ##f
   \override Score.BarLine.transparent = ##f
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c,, {
   \clef bass
   %1
   | \override Beam.gap-count = #3
     \phrasingSlurUp
     \shape #'((0 . 0) (0 . -20) (0 . 4) (0 . 0)) PhrasingSlur
     \repeat tremolo 12 { e32\( dis }
   | \repeat tremolo 12 { e32 dis }
   | \override Beam.gap-count = #0
     \change Staff = "upper" {
       \tuplet 6/4 4 { e16\<[eis fis g gis a]\! ais\>[a! gis g! fis f!]\! }
     }
     \change Staff = "lower" {
       \repeat tremolo 4 { e32 dis\) }
     }
   | \repeat tremolo 4 { e32 dis }
     \grace e8
     \repeat tremolo 4 { f32 e }
     \repeat tremolo 4 { dis!32 e }
   %5
   | \override Beam.gap-count = #3
     \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) PhrasingSlur
     \repeat tremolo 12 { f!32\( e }
   | \override Beam.gap-count = #0
     \omit TupletBracket
     \omit TupletNumber
     \once \override Beam.damping = #4
     \change Staff = "upper" {
       \stemDown
       \tuplet 6/4 4 {
         f16[fis g gis a ais
         b bes a! aes g! ges
       }
     }
     \change Staff = "lower" {
       \stemUp
       \tuplet 6/4 4 { f!16 e dis e eis fis]\) }
     }
   | \shape #'((0 . 3) (0 . 0) (0 . 3) (0 . -3)) PhrasingSlur
     \tuplet 19/12 4 {
       \stemUp
       \change Staff = "lower" {
         e16\([
       }
       \stemDown
       \change Staff = "upper" {
	 gis a ais b bis
	 cis c! b! bes a! aes
       }
       \stemUp
       \change Staff = "lower" {
         g! aes g! fis g aes a!]\)
       }
     }
   | \override Beam.gap-count = #3
     \repeat tremolo 8 { bes32 a }
     \repeat tremolo 4 { ais32 b! }
   | \repeat tremolo 4 {
       ais32 b!
     }
     % workaround to show a line toward an empty upper staff
     \showStaffSwitch
     \change Staff = "upper" {
       \hideNotes \shiftOff c4 \unHideNotes
     }
     \hideStaffSwitch
     \override Beam.gap-count = #0
     \tuplet 6/4 4 {
       \stemUp
       \shape #'((0 . 4) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
       \change Staff = "lower" {
         a!16[\(
       }
       \stemDown
       \change Staff = "upper" {
         ais\< b bis c d!\!]
       }
     }
   %10
   | \stemUp
     \tuplet 6/4 4 {
       \change Staff = "upper" {
         ees16[ a, bes b! c cis]
       }
     }
     \tuplet 6/4 4 {
       \stemDown
       d16[\)
       \stemUp
       \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) PhrasingSlur
       \change Staff = "lower" {
         gis,16\<\( a ais b bis\!]
       }
     }
     \tuplet 6/4 4 {
       \stemDown
       \change Staff = "upper" {
         cis16[ c!\> b!
       }
       \stemUp
       \change Staff = "lower" {
         bes a! aes\!]\)
       }
     }
   | \override Beam.gap-count = #3
     \repeat tremolo 12 { g32\( fis }
   | \grace fis8
     \repeat tremolo 12 { e32 dis }
   | \override Beam.gap-count = #0
     \change Staff = "upper" {
       \tuplet 6/4 4 {
         e16[\< eis fis g gis a]\!
       }
       \tuplet 6/4 4 {
         ais[\> a! aes g! ges f!]\!
       }
     }
     \change Staff = "lower" {
       \tuplet 6/4 4 {
         bes[ a bes a aes g]
       }
     }
   | \override Beam.gap-count = #3
     \repeat tremolo 12 { fis32\< eis\!\) }
   %15
   | \shape #'((0 . 0) (0 . -12) (0 . 3) (0 . 0)) PhrasingSlur
     \repeat tremolo 12 { fis32\>\( eis\! }
   | \override Beam.gap-count = #0
     \change Staff = "upper" {
       \tuplet 6/4 4 {
         fis16[\< fisis gis a ais b\!]
       }
       \tuplet 6/4 4 {
         bes16[\> a! aes g! ges f!\!]
       }
     }
     \change Staff = "lower"
     \override Beam.gap-count = #3
     \repeat tremolo 4 { e!32 dis\) }
   | \repeat tremolo 12 { e!32\( dis\< }
   | \override Beam.gap-count = #0
     \change Staff = "upper" {
       \tuplet 7/4 4 {
         e16[ eis fis g gis a ais\!]\)
       }
     }
     b'4\rest
     \change Staff = "lower"
   \override Score.SpanBar.transparent = ##f
   \override Score.BarLine.transparent = ##f
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
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
  % composer = "Rued Langgaard"
    % workaround: insert some vertical space after the header
    composer = " "
  % opus = "BVN 134"
    subtitle = "Melonetha vulgaris"
    subsubtitle = "(Cockchafer)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "III"
       %}
    }
  }
  \layout {
    \context { \Score
      \omit BarNumber
      \omit TimeSignature
    }
  }
  \midi {
    \tempo 4 = 140
  }
}
