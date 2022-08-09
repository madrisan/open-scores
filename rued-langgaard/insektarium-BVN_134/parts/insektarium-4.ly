\version "2.23.11"

Global = {
   \key c \major
   \time 4/4
}

Upper = \relative c'' {
   \clef treble
   %1
   | <gis' c e>8-.\pp
     \change Staff = "lower" { \stemUp <cis f a>-. <cis f a>-. }
     \change Staff = "upper" { \stemDown <gis c! e>-. }
     <gis c e>-.
     \change Staff = "lower" { \stemUp <b ees g>-. <b ees g>-. }
     \change Staff = "upper" { \stemDown <d fis b>-. }
   | <d fis b>-.
     \change Staff = "lower" { \stemUp <gis, c e>-. <gis c e>-. }
     \change Staff = "upper" { \stemDown <bes ees g>-. }
     <bes ees g>-.
     \change Staff = "lower" { \stemUp <e,! b'!>-. <e! b'!>-. }
     \change Staff = "upper" { \stemDown <aes ees'>-. }
   | <aes ees'>-.
     \change Staff = "lower" { \stemUp <e e'!>-. <e e'!>-. }
     \change Staff = "upper" { \stemDown <bes' bes'>-. }
     <bes bes'>-.
     \change Staff = "lower" { \stemUp <d, d'!>-. <d d'!>-. }
     \change Staff = "upper" { \stemDown <g g'>-. }
     \break
   | <g g'>-.
     \change Staff = "lower" { \stemUp <gis gis'>-. }
     \change Staff = "upper" { \stemDown <dis dis'>-. }
     \change Staff = "lower" { \stemUp <e e'>-. }
     \change Staff = "upper" { \stemDown <bes bes'>-. }
     \change Staff = "lower" { \stemUp <e e'>-. <e e'>-. }
     \change Staff = "upper" { \stemDown <bes bes'>-. }
   %5
   | <bes bes'>-.
     \change Staff = "lower" { \stemUp <d d'>-. <d d'>-. }
     \change Staff = "upper" { \stemDown <f f'>-. }
     <cis cis'>-.
     <ais' ais'>-. <ais ais'>-.
     \change Staff = "lower" { \stemUp <cis, cis'>-. }
   | <a' a'>-.
     \change Staff = "upper" { \stemDown \ottava #1 <f' f'>-. <f f'>-.\ottava #0 }
     r8
     r2\fermata
   | <gis, c e>8-.
     \change Staff = "lower" { \stemUp <cis f a>-. <cis f a>-. }
     \change Staff = "upper" { \stemDown <gis c! e>-. }
     <gis c e>-.
     \change Staff = "lower" { \stemUp <b ees g>-. <b ees g>-. }
     \change Staff = "upper" { \stemDown <d fis b>-. }
   | <d fis b>-.
     \change Staff = "lower" { \stemUp <gis, c e>-. <gis c e>-. }
     \change Staff = "upper" { \stemDown <bes ees g>-. }
     <bes ees g>-.
     \change Staff = "lower" { \stemUp <e,! b'!>-. <e! b'!>-. }
     \change Staff = "upper" { \stemDown <aes ees'> }
   | <aes ees'>-.
     \change Staff = "lower" { \stemUp <e e'!>-. <e e'!>-. }
     \change Staff = "upper" { \stemDown <bes' bes'>-. }
     <bes bes'>-.
     \change Staff = "lower" { \stemUp <d, d'!>-. <d d'!>-. }
     \change Staff = "upper" { \stemDown <g g'>-. }
   %10
   | <g g'>-.
     \change Staff = "lower" { \stemUp <gis gis'>-. }
     \change Staff = "upper" { \stemDown <dis dis'>-. }
     \change Staff = "lower" { \stemUp <e e'>-. }
     \change Staff = "upper" { \stemDown <bes bes'>-. }
     \change Staff = "lower" { \stemUp <e e'>-. <e e'>-. }
     \change Staff = "upper" { \stemDown <bes bes'>-. }
   | <bes bes'>-.
     \change Staff = "lower" { \stemUp <d d'>-. <d d'>-. }
     \change Staff = "upper" { \stemDown <f f'>-. }
     <cis cis'>-.
     <ais' ais'>-. <ais ais'>-.
     \change Staff = "lower" { \stemUp <cis, cis'>-. }
   | <a' a'>-.
     \change Staff = "upper" { \stemDown \ottava #1 <f' f'>-. <f f'>-.\ottava #0 }
     r8
     r2
   | \ottava #1
     <bes bes'>8-.\ppp
     \change Staff = "lower" { \stemUp <a, a'>-. }
     \change Staff = "upper" { \stemDown <aes' aes'>-. }
     \change Staff = "lower" { \stemUp <e, e'>-. }
     \once\override Beam.positions = #'(-4 . -4)
     \change Staff = "upper" { \stemDown <g' g'>-. }
     \change Staff = "lower" { \stemUp <b,, b'>-. }
     \change Staff = "upper" { \stemDown <d d'>-. }
     \change Staff = "lower" { \stemUp <des des'>-. }
   | \once\override Beam.positions = #'(-4.8 . -5)
     \change Staff = "upper" { \stemDown <c c'>-. }
     \change Staff = "lower" { \stemUp <a a'>-. }
     \change Staff = "upper" { \stemDown <b b'>-. }
     \ottava #0
     \change Staff = "lower" { \stemUp <d d'>-. }
     \change Staff = "upper" { \stemDown <g g'>-. }
     \change Staff = "lower" { \stemUp <fis fis'>-. }
     \change Staff = "upper" { \ottava #1 \stemDown <bes' bes'>-. \ottava #0 }
     \change Staff = "lower" { \stemUp <d, d'>-. }
   %15
   | \change Staff = "upper" { r2 \stemDown <g, g'>8-. }
     \change Staff = "lower" { \stemUp <fis fis'>-. }
     \change Staff = "upper" { \ottava #1 \stemDown <bes' bes'>-. \ottava #0 }
     \change Staff = "lower" { \stemUp <d, d'>-. }
     \change Staff = "upper"
   | r1\fermata
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
   | r1\fermata
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
    subtitle = "Tripula oleracea"
    subsubtitle = "(Daddy longlegs)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "IV"
       %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 60
  }
}
