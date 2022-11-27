Global = {
   \key c \major
   \time 4/4
   \include "../global.ly"
}

Upper = \relative c' {
   \clef treble
   \tempo \markup { \bold Tempo ad libitum }
   %1
   | g''8-.\harmonic[_\markup {
       \italic \abs-fontsize #8
       \column {
         \line { "Strike the piano lid" }
         \line { "with your knuckles" }
       }
   }
     g-.\harmonic g-.\harmonic g-.\harmonic]
     g8-.\harmonic[ g-.\harmonic g-.\harmonic g-.\harmonic]
   | \stemDown <cis cis,>-._\p
     \change Staff = "lower" {
       \stemUp <f f,>8-._\ppp <f f,>8-. <f f,>8-.
       \stemUp <f f,>8-. <f f,>8-. <f f,>8-. <f f,>8-.
     }
   | \change Staff = "upper"
     \stemDown
     g,8-.\harmonic[ g-.\harmonic g-.\harmonic g-.\harmonic]
     g8-.\harmonic[ g-.\harmonic g-.\harmonic g-.\harmonic]
   | cis,8-._\pp[ cis-. cis-. cis-.]  cis-.[ cis-. cis-. cis-.]
   \break
   %5
   | <bes cis>8-. <bes cis>-. <bes cis>-. <bes cis>-.
     <bes cis>8-. <bes cis>-. <bes cis>-. <bes cis>-.
   | cis8-.\>[ cis-. cis-. cis-.]  cis-.[ cis-. cis-. cis-.]\!
   | <bes cis>8-. <bes cis>-. <bes cis>-. <bes cis>-.
     <bes cis>8-. <bes cis>-. <bes cis>-. <bes cis>-.
   | <b! cis>8-. <b cis>-. <b cis>-. <b cis>-.
     <b cis>8-. <b cis>-. <b cis>-. <b cis>-.
   | <b! cis>8-.[ <b cis>-. <b cis>-. <b cis>-.]
     <b cis>8-.[ <b cis>-. <b cis>-. <b cis>-.]
   %10
   | \once\override Beam.positions = #'(-3 . -3)
     \stemDown <b cis>8-. <b cis>-.
     \change Staff = "lower" {
       \stemUp <c! c'!>8-. <c'! c,!>8-.
     }
     \once\override Beam.positions = #'(-3 . -3)
     \change Staff = "upper" {
        \stemDown <f,, f'>8-. <f' f,>8-.
     }
     \change Staff = "lower" {
       \stemUp <cis cis'>8-. <cis'! cis,!>8-.
     }
     \change Staff = "upper"
   | \stemDown
     <c, d>8-.^>[ <c d>-.\> <c d>-. <c d>-.]
     <c d>8-.[^\markup {
       \italic \small { m.g. }
     }
     <c d>-. <c d>-. <c d>-.]\!
   | r4
     \ottava #1 \stemDown <a'' b d f a>8-.\pp
     \ottava #0
     r8 r2
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
   \clef treble
   %1
   | r1
   | s1
   | s1
   | s1
   %5
   | \ottava #2 b'''''4\sf \ottava #0
     \clef bass
     \once \override Staff.OttavaBracket.direction = #DOWN
     \ottava #1 a,,,,,4 \ottava #0
     r2
   | s1 \clef treble
   | a'''8-.\pp\>[ g-. b-. e,-.]  a8-.[ g-. b-. e,-.]\!
   | r4 f4\pp(\> bes, a)\!
   | r4 f'4\pp\(\> bes, a\)\!
   %10
   | s1
   | s1
   | r4
     \clef bass
     \once \override Staff.OttavaBracket.direction = #DOWN
     \ottava #1 \stemUp <a, a,>8-.
     \ottava #0
     r8 r2
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
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
  % composer = "Rued Langgaard"
    % workaround: insert some vertical space after the header
    composer = " "
  % opus = "BVN 134"
    subtitle = "Anobium pertinax"
    subsubtitle = "(Deathwatch beetle)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "VI"
       %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 60
  }
}
