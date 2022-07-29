\version "2.23.10"

Global = {
   \key c \major
   \time 5/4
}

Upper = \relative c' {
   \clef treble
   \tempo \markup { \bold Sempre legato }
   %1
   | \tupletUp
     \tuplet 3/2 4 {
       bes''8_\pp_\markup {
         \italic \abs-fontsize #8
         \column {
           \line { "keep the pedal down" }
         }
       }
       a bes
     }
     \tuplet 3/2 4 { a gis a }
     \tuplet 3/2 4 { gis fisis\> gis }
     \tuplet 3/2 4 { a gis a }
     \tuplet 3/2 4 { bes a bes\! }
   %2
   | \omit TupletNumber
     \tuplet 3/2 4 { a\< gis a }
     \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { a gis a }
     \tuplet 3/2 4 { bes a bes\! }
     \tuplet 3/2 4 { ces\sf bes ces }
   %3
   | \tuplet 3/2 4 { bes\> ces bes }
     \tuplet 3/2 4 { ces bes a }
     \tuplet 3/2 4 { gis a gis }
     \tuplet 3/2 4 { a bes a\! }
     \tuplet 3/2 4 { bes\pp a aes }
   %4
   | \tuplet 3/2 4 { fisis gis fisis }
     \tuplet 3/2 4 { gis g! ges }
     \tuplet 3/2 4 { f! fis g! }
     \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { a gis a }
   %5
   | \tuplet 3/2 4 { bes a bes }
     \tuplet 3/2 4 { a gis a }
     \tuplet 3/2 4 { bes a bes }
     \tuplet 3/2 4 { a gis a }
     \tuplet 3/2 4 { aes g! aes }
   %6
   | \tuplet 3/2 4 { a! gis a! }
     \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { g! fis g! }
     \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { a! gis a! }
   %7
   | \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { g! fis\< g! }
     \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { a gis a\! }
     \tuplet 3/2 4 { bes\sf a bes }
   %8
   | \tuplet 3/2 4 { a\> bes a }
     \tuplet 3/2 4 { bes a bes }
     \tuplet 3/2 4 { a aes g }
     \tuplet 3/2 4 { aes g aes\! }
     \tuplet 3/2 4 { g ges f }
   %9
   | \tuplet 3/2 4 { ges f ges }
     \tuplet 3/2 4 { f e\< ees }
     \tuplet 3/2 4 { e! eis fis }
     \tuplet 3/2 4 { g! fis f! }
     \tuplet 3/2 4 { fis g! gis\! }
   %10
   | \tuplet 3/2 4 { a\sf aes\> g }
     \tuplet 3/2 4 { aes g aes }
     \tuplet 3/2 4 { g aes g }
     \tuplet 3/2 4 { aes g aes }
     \tuplet 3/2 4 { g aes g\! }
   %11
   | \tuplet 3/2 4 { gis\pp fisis gis }
     \tuplet 3/2 4 { fisis gis fisis }
     \tuplet 3/2 4 { gis fisis gis }
     \tuplet 3/2 4 { fisis gis gisis }
     \tuplet 3/2 4 { ais gisis ais }
   %12
   | \time 4/4
     \tuplet 3/2 4 { a!\< aes g }
     \tuplet 3/2 4 { gis a! bes\! }
     \tuplet 3/2 4 { a!\> aes g! }
     \tuplet 3/2 4 { gis a! bes\! }
   %13
   | \time 5/4
     \tuplet 3/2 4 { ces8 bes ces }
     \tuplet 3/2 4 { bes ces bes }
     \tuplet 3/2 4 { ces bes a }
     \tuplet 3/2 4 { gis a gis\< }
     \tuplet 3/2 4 { a bes a\! }
   %14
   | \tuplet 3/2 4 { bes\> a aes }
     \tuplet 3/2 4 { g\! aes g }
     \tuplet 3/2 4 { aes g ges }
     \tuplet 3/2 4 { f fis g! }
     \tuplet 3/2 4 { aes g! aes }
   %15
   | \tuplet 3/2 4 { a! aes g }
     \tuplet 3/2 4 { fis\< g gis }
     \tuplet 3/2 4 { a!\! gis a! }
     \tuplet 3/2 4 { bes\> a! bes\! }
     \tuplet 3/2 4 { a! aes g! }
   %16
   | \tuplet 3/2 4 { gis\< a bes }
     \tuplet 3/2 4 { ces bes\! ces\pp }
     \tuplet 3/2 4 { bes a aes }
     \tuplet 3/2 4 { g!\< aes g! }
     \tuplet 3/2 4 { aes a! bes\! }
   %17
   | \tuplet 3/2 4 { ces\ppp bes ces }
     \tuplet 3/2 4 { bes ces bes }
     \tuplet 3/2 4 { ces bes ces }
     \tuplet 3/2 4 { bes ces bes }
     \tuplet 3/2 4 { ces bes\pppp ces }
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
   \clef treble
   %1
   | s1 s4
   | s1 s4
   | s1 s4
   | s1 s4
   %5
   | s1 s4
   | s1 s4
   | s1 s4
   | s1 s4
   | s1 s4
   %10
   | s1 s4
   | s1 s4
   | \time 4/4
     s1
   | \time 5/4
     s1 s4
   | s1 s4
   %15
   | s1 s4
   | s1 s4
   | s1 s4
   \fine
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
      composer = "Rued Langgaard"
      opus = "BVN 134"
      subtitle = "Culex pipiens"
      subsubtitle = "(Mosquito)"
      title = \markup {
         %\override #'(font-name . "TeX Gyre Schola") {
         "IX"
         %}
      }
   }
   \layout { }
   \midi {
      \tempo 4 = 220
   }
}
