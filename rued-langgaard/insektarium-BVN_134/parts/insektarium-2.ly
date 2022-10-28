Global = {
   \key a \major
   \time 4/4
   \override Score.BarLine.transparent = ##t
   \override Score.SpanBar.transparent = ##t
}

fragmentA_half = \relative c''' {
   \stemDown \change Staff = "upper" { <b' d>16 }
   \stemUp   \change Staff = "lower" { <ais, cis> }
   \stemDown \change Staff = "upper" { <b' d> }
   \stemUp   \change Staff = "lower" { <ais, cis> }

   \stemDown \change Staff = "upper" { <gis' b> }
   \stemUp   \change Staff = "lower" { <fisis, ais> }
   \stemDown \change Staff = "upper" { <gis' b> }
   \stemUp   \change Staff = "lower" { <fisis, ais> }
}

% bars 5, 8, 12, 15
fragmentA = \relative c''' {
   \fragmentA_half

   \stemDown \change Staff = "upper" { <eis gis> }
   \stemUp   \change Staff = "lower" { <e,! fisis> }
   \stemDown \change Staff = "upper" { <eis' gis> }
   \stemUp   \change Staff = "lower" { <e,! fisis> }

   \stemDown \change Staff = "upper" { <a'! cis> }
   \stemUp   \change Staff = "lower" { <gis, b> }
   \stemDown \change Staff = "upper" { <a'! cis> }
   \stemUp   \change Staff = "lower" { <gis, b> }
}

% bars 6, 9, 13
fragmentB = \relative c''' {
   \stemDown \change Staff = "upper" { <fis a> }
   \stemUp   \change Staff = "lower" { <e, gis> }
   \stemDown \change Staff = "upper" { <fis' a> }
   \stemUp   \change Staff = "lower" { <e, gis> }

   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, e> }
   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, e> }

   \stemDown \change Staff = "upper" { <gis'' b> }
   \stemUp   \change Staff = "lower" { <fisis, ais> }
   \stemDown \change Staff = "upper" { <gis' b> }
   \stemUp   \change Staff = "lower" { <fisis, ais> }

   \stemDown \change Staff = "upper" { <eis' gis> }
   \stemUp   \change Staff = "lower" { <d, fisis> }
   \stemDown \change Staff = "upper" { <eis' gis> }
   \stemUp   \change Staff = "lower" { <d, fisis> }
}

% bars 7, 14
fragmentC = \relative c''' {
   \stemDown \change Staff = "upper" { <cis eis> }
   \stemUp   \change Staff = "lower" { <d, fis> }
   \stemDown \change Staff = "upper" { <cis' eis> }
   \stemUp   \change Staff = "lower" { <d, fis> }

   \stemDown \change Staff = "upper" { <gis' b> }
   \stemUp   \change Staff = "lower" { <fis, a> }
   \stemDown \change Staff = "upper" { <gis' b> }
   \stemUp   \change Staff = "lower" { <fis, a> }

   \stemDown \change Staff = "upper" { <eis' gis> }
   \stemUp   \change Staff = "lower" { <d, fis> }
   \stemDown \change Staff = "upper" { <eis' gis> }
   \stemUp   \change Staff = "lower" { <d, fis> }

   \stemDown \change Staff = "upper" { <cis' eis> }
   \stemUp   \change Staff = "lower" { <d, fis> }
   \stemDown \change Staff = "upper" { <cis' eis> }
   \stemUp   \change Staff = "lower" { <d, fis> }
}

% bars 10, 17
fragmentD = \relative c''' {
   \stemDown \change Staff = "upper" { <d eis> }
   \stemUp   \change Staff = "lower" { <cis, e!> }
   \stemDown \change Staff = "upper" { <d' eis> }
   \stemUp   \change Staff = "lower" { <cis, e!> }

   \stemDown \change Staff = "upper" { <d' eis> }
   \stemUp   \change Staff = "lower" { <cis, e!> }
   \stemDown \change Staff = "upper" { <fis' a> }
   \stemUp   \change Staff = "lower" { <eis, gis> }

   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }
   \stemDown \change Staff = "upper" { <fis' a> }
   \stemUp   \change Staff = "lower" { <eis, gis> }

   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }
   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }
}

% bars 11, 18
fragmentE = \relative c'' {
   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }
   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }

   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }
   \stemDown \change Staff = "upper" { <fis' a> }
   \stemUp   \change Staff = "lower" { <eis, gis> }

   \stemDown \change Staff = "upper" { <d' fis> }
   \stemUp   \change Staff = "lower" { <cis, eis> }
   \stemDown \change Staff = "upper" { <fis' a> }
   \stemUp   \change Staff = "lower" { <eis, gis> }

   \stemDown \change Staff = "upper" { <gis' b> }
   \stemUp   \change Staff = "lower" { <fisis, ais> }
   \stemDown \change Staff = "upper" { <a'! cis> }
   \stemUp   \change Staff = "lower" { <gis, b> }
}

Upper = \relative c'' {
   \clef treble
   \tempo \markup { \bold mosso! mosso! }
   %1
   | \ottava #1

     \stemDown \change Staff = "upper" { <b'' d>16 }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <fisis, ais> }
     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \repeat unfold 2 {
       \stemDown \change Staff = "upper" { <b' d> }
       \stemUp   \change Staff = "lower" { <ais, cis> }
       \stemDown \change Staff = "upper" { <b' d> }
       \stemUp   \change Staff = "lower" { <ais, cis> }
     }

   | \fragmentA_half

     \repeat unfold 2 {
       \stemDown \change Staff = "upper" { <b' d> }
       \stemUp   \change Staff = "lower" { <ais, cis> }
       \stemDown \change Staff = "upper" { <b' d> }
       \stemUp   \change Staff = "lower" { <ais, cis> }
     }

   | \fragmentA_half

     \stemDown \change Staff = "upper" { <eis' gis> }
     \stemUp   \change Staff = "lower" { <e,! fisis> }
     \stemDown \change Staff = "upper" { <eis' gis> }
     \stemUp   \change Staff = "lower" { <fisis, ais> }

     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <fisis, ais> }
     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

   \break

   | \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <fisis, ais> }
     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <fisis, ais> }
     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

   %5
   | \fragmentA
   | \fragmentB \break
   | \fragmentC
   | \fragmentA
   | \fragmentB \break
   % 10
   | \fragmentD
   | \fragmentE

   %12
   | \fragmentA \break
   | \fragmentB
   | \fragmentC
   %15
   | \fragmentA \break
   | \fragmentB
   | \fragmentD
   | \fragmentE \break

   %19,20
   \repeat unfold 2 {
   | \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <fisis, ais> }
     \stemDown \change Staff = "upper" { <gis' b> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
   }

   | \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }
     \stemDown \change Staff = "upper" { <b' d> }
     \stemUp   \change Staff = "lower" { <ais, cis> }

     \override TupletBracket.bracket-visibility = ##f
    %\override TupletNumber.Y-offset = #-7

     \repeat unfold 3 {
       \tupletUp \tuplet 6/4 4 {
         \stemDown \change Staff = "upper" { <b' d> }
         \stemUp   \change Staff = "lower" { <ais, cis> }
         \stemDown \change Staff = "upper" { <b' d> }
         \stemUp   \change Staff = "lower" { <ais, cis> }
         \stemDown \change Staff = "upper" { <b' d> }
         \stemUp   \change Staff = "lower" { <ais, cis> }
       }
     }

   | \repeat unfold 4 {
       \tupletUp \tuplet 6/4 4 {
         \stemDown \change Staff = "upper" { <b' d> }
         \stemUp   \change Staff = "lower" { <ais, cis> }
         \stemDown \change Staff = "upper" { <b' d> }
         \stemUp   \change Staff = "lower" { <ais, cis> }
         \stemDown \change Staff = "upper" { <b' d> }
         \stemUp   \change Staff = "lower" { <ais, cis> }
       }
     }

   | \stemDown \change Staff = "upper"
     <gis' b>8
     \ottava #0
     r8 r4

   \change Staff = "upper"
   \override Score.SpanBar.transparent = ##f
   \override Score.BarLine.transparent = ##f
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
   \clef treble
   %1
   | s1
   | s1
   | s1
   | s1
   %5
   | s1
   | s1
   | s1
   | s1
   | s1
   %10
   | s1
   | s1
   | s1
   | s1
   | s1
   %15
   | s1
   | s1
   | s1
   | s1
   | s1
   %20
   | s1
   | s1
   | s1
   | s2

   \override Score.SpanBar.transparent = ##f
   \override Score.BarLine.transparent = ##f
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
  % composer = "Rued Langgaard"
    % workaround: insert some vertical space after the header
    composer = " "
  % opus = "BVN 134"
    subtitle = "Acridium migratorium"
    subsubtitle = "(Migratory locust)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "II"
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
    \tempo 4 = 100
  }
}
