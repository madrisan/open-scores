Global = {
  \key ees \major
  \time 2/8
  \include "../global.ly"
}

% The compiler prints a few times the following warning message:
%   programming error: Going back in MIDI time.
%   continuing, cross fingers
% This is because of the \afterGrace commands used in the source
% and seems a known issue.

Upper = \relative c' {
  \clef treble
  \tempo \markup { \bold Presto }
  %1
  | \override TupletBracket.bracket-visibility = ##f
    \stemUp \tuplet 3/2 16 {
      bes32\([ bes' bes, bes' bes, bes']
      bes,32[ bes' bes, bes' bes, bes']
    }
  | \tuplet 3/2 16 {
      \stemUp
      \override Stem.details.beamed-lengths = #'(5)
      bes,[ bes'\) bes\(]
      \revert Stem.details.beamed-lengths
      \stemDown
      bes'\)[ bes\( bes'\)]
      \ottava #1
      bes\([ bes'\) bes\(]
      \ottava #0
      bes,,\)[ bes'\( bes,\)]
    }
  | \omit TupletNumber
    \tuplet 3/2 16 {
      bes[\( bes,\) bes\(]
      \phrasingSlurUp
      \stemUp
      bes,\)[ bes'\( bes,]
      bes'[ bes, bes' bes, bes' bes,]
    }
    \break
  | \repeat unfold 2 {
      \tuplet 3/2 16 { bes'[ bes, bes' bes, bes' bes,] }
    }
  %5-6
  | \repeat unfold 4 {
      \tuplet 3/2 16 { ces[ aes ces aes ces aes] }
    }
  | \repeat unfold 2 {
      \tuplet 3/2 16 { f'[ des f des f des] }
    }
  | \tuplet 3/2 16 { e![ a e! a e! a] }
    \tuplet 3/2 16 { g![ b! g! b! g! b!] }
  | \key c \major
    \tuplet 3/2 16 {
      g[ b b, b' b, b']
      b,[ b' b, b' b, b']
    }
  %10
  | \tuplet 3/2 16 {
      \stemUp
      \override Stem.details.beamed-lengths = #'(5)
      b,[ b'\) b\(]
      \revert Stem.details.beamed-lengths
      \stemDown
      b'\)[ b\( b'\)]
      \ottava #1
      b\([ b'\) b\(]
      \ottava #0
      b,,\)[ b'\( b,\)]
    }
  | \tuplet 3/2 16 {
      b[\( b,\) b\(]
      \phrasingSlurUp
      \stemUp
      b,\)[ b'\( b,]
      b'[ b, b' b, b' b,]
    }
  | \tuplet 3/2 16 { b'[ b, b' b, b' b,] }
    \tuplet 3/2 16 { b'[ b, b' b, b' bes,] }
  | \key ees \major
    \stemUp \tuplet 6/4 8 {
      ces[ aes ces aes ces aes]
      ces[ aes ces aes ces aes]
    }
  | \stemUp \tuplet 6/4 8 {
      ces[ aes ces aes ces aes]
      ces[ aes ces aes ces \afterGrace aes]\) ces8
    }
  %15
  | \tuplet 3/2 16 { bes32\([ bes' bes, bes' bes, bes'] }
    \tuplet 3/2 16 { bes,[ bes' bes, bes' bes, bes'] }
  | \tuplet 3/2 16 {
      \stemUp
      \override Stem.details.beamed-lengths = #'(5)
      bes,[ bes'\) bes\(]
      \revert Stem.details.beamed-lengths
      \stemDown
      bes'\)[ bes\( bes'\)]
      \ottava #1
      bes\([ bes'\) bes\(]
      \ottava #0
      bes,,\)[ bes'\( bes,\)]
    }
  | \tuplet 3/2 16 {
      bes[\( bes,\) bes\(]
      \phrasingSlurUp
      \stemUp
      bes,\)[ bes'\( bes,]
      bes'[ bes, bes' bes, bes' bes,]
    }
  | \tuplet 3/2 16 { ces[ aes ces aes ces aes] }
    \tuplet 3/2 16 { ces[ aes ces aes ces \afterGrace aes]\) ces8 }
  | \stemUp \tuplet 3/2 16 {
      bes32\([ bes' bes, bes' bes, bes']
      bes,32[ bes' bes, bes' bes, bes']
    }
    \break
  %20
  | \tuplet 3/2 16 {
      \stemUp
      \override Stem.details.beamed-lengths = #'(5)
      bes,[ bes'\) bes\(]
      \revert Stem.details.beamed-lengths
      \stemDown
      bes'\)[ bes\( bes'\)]
      \ottava #1
      bes\([ bes'\) bes\(]
      \ottava #0
      bes,,\)[ bes'\( bes,\)]
    }
  | \tuplet 3/2 16 {
      bes[\( bes,\) bes\(]
      \phrasingSlurUp
      \stemUp
      bes,[ bes' bes,]
      bes'[ bes, bes' bes, bes' bes,]
    }
  | \repeat unfold 2 {
      \tuplet 3/2 16 { ces[ aes ces aes ces aes] }
    }
  | \repeat unfold 2 {
      \tuplet 3/2 16 { f'[ des f des f des] }
    }
  | \tuplet 3/2 16 { e![ aes e! aes e! aes] }
    \tuplet 3/2 16 { g![ b! g! b! g! b!] }
    \break
  %25
  | \key c \major
    \tuplet 3/2 16 {
      g[ b b, b' b, b']
      b,[ b' b, b' b, b']
    }
  | \tuplet 3/2 16 {
      \stemUp
      \override Stem.details.beamed-lengths = #'(5)
      b,[ b'\) b\(]
      \revert Stem.details.beamed-lengths
      \stemDown
      b'\)[ b\( b'\)]
      \ottava #1
      b\([ b'\) b\(]
      \ottava #0
      b,,\)[ b'\( b,\)]
    }
  | \tuplet 3/2 16 {
      b[\( b,\) b\(]
      \phrasingSlurUp
      \stemUp
      b,[ b' b,]
      b'[ b, b' b, b' b,]
    }
  | \tuplet 3/2 16 { b'[ b, b' b, b' b,] }
    \tuplet 3/2 16 { b'[ b, b' b, b' bes,] }
  | \key ees \major
    \stemUp \tuplet 6/4 8 {
      ces[ aes ces aes ces aes]
      ces[ aes ces aes ces aes]
    }
  %30
  | \stemUp \tuplet 6/4 8 {
      ces[ aes ces aes ces aes]
      ces[ aes ces aes ces \afterGrace aes]\) ces8
    }
  | \tuplet 3/2 16 { bes32\([ bes' bes, bes' bes, bes'] }
    \tuplet 3/2 16 { bes,[ bes' bes, bes' bes, bes'] }
  | \tuplet 3/2 16 {
      \stemUp
      \override Stem.details.beamed-lengths = #'(5)
      bes,[ bes'\) bes\(]
      \revert Stem.details.beamed-lengths
      \stemDown
      bes'\)[ bes\( bes'\)]
      \ottava #1
      bes\([ bes'\) bes\(]
      \ottava #0
      bes,,\)[ bes'\( bes,\)]
    }
  | \tuplet 3/2 16 {
      bes[\( bes,\) bes]\(
      \phrasingSlurUp
      \stemUp
      bes,[ bes' bes,]
      bes'[ bes, bes' bes, bes' bes,]
    }
  | \stemUp \tuplet 6/4 8 {
      bes'[ bes, bes' bes, bes' bes,]
      bes'[ bes, bes' bes, bes' bes,]
    }
  %35
  | \stemUp \tuplet 6/4 8 {
      ces[ aes ces aes ces aes]
      ces[ aes ces aes ces aes]
    }
  | \stemUp \tuplet 6/4 8 {
      ces[ aes ces aes ces aes]
      ces[ aes ces aes ces aes]\)
    }
  | r4
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

centeredDynamics = {
  | s8\ppp s8
  | \tuplet 3/2 16 { s32 s32\< s32 }
    \tuplet 3/2 16 { s16. }
    \tuplet 3/2 16 { s32\! s32\ff s32\> }
    \tuplet 3/2 16 { s16. }
  | \tuplet 3/2 16 { s32 s32\! s32 }
    \tuplet 3/2 16 { s32 s32\ppp s32 }
    \tuplet 3/2 16 { s16.\< }
    \tuplet 3/2 16 { s16. }
  | \tuplet 3/2 16 { s16. s16. s16. s16. }
  %5
  | \tuplet 3/2 16 { s32\!\sff s64 s64\p s32 }
    \tuplet 3/2 16 { s16. s16.\> s16. }
  | \tuplet 3/2 16 { s16. s16. s16. s16. }
  | \tuplet 3/2 16 { s64\! s64\ppp s32 s32 s16. s16. s16. }
  | \tuplet 3/2 16 { s16. s16. s16. s16. }
  | \tuplet 3/2 16 { s32\pppp s16 s16. s16. s16. }
  %10
  | \tuplet 3/2 16 { s16.\< s16. s32\!\ff\> s16 s16. }
  | \tuplet 3/2 16 { s32 s16\! s32 s32\ppp s32 s16.\< s16. }
  | \tuplet 3/2 16 { s16. s16. s16. s16. }
  | \tuplet 3/2 16 { s64\!\sff s64 s64 s64\p s32 s16. s16.\> s16. }
  | \tuplet 3/2 16 { s16. s16. s16. s32 s32 s32\! }
  %15
  | \tuplet 3/2 16 { s32 s32\ppp s32 s16. s16. s16. }
  | \tuplet 3/2 16 { s32 s32\< s32 }
    \tuplet 3/2 16 { s16. }
    \tuplet 3/2 16 { s32\! s32\ff s32\> }
    \tuplet 3/2 16 { s16. }
  | \tuplet 3/2 16 { s32 s32\! s32 }
    \tuplet 3/2 16 { s32\pp s32\< s32 s16. s16. }
  | \tuplet 3/2 16 { s32\!\fp s32\p s32 s16. s16. s16. }
  | s32\ppp s16. s8
  % 20
  | \tuplet 3/2 16 { s16.\< s16. s32\!\ff\> s16 s16. }
  | \tuplet 3/2 16 { s32 s16\! s32\pp s32\< s32 s16. s16 s32\! }
  | \tuplet 3/2 16 { s32\!\sf s64 s64\p s32 s16. s16. s16. }
  | s64 s64\ppp s16. s8
  | s4
  % 25
  | s32\pppp s16. s8
  | \tuplet 3/2 16 { s16.\< s16. s32\!\ff\> s16 s16. }
  | \tuplet 3/2 16 { s32 s16\! s32 s32\ppp s32 s16.\< s16 s32 }
  | s8 s8
  | \tuplet 3/2 16 { s32\!\sf s64 s64\p s32 }
    \tuplet 3/2 16 { s16. s16.\> s16. }
  % 30
  | \tuplet 3/2 16 { s16. s16. s16. s16 s32\! }
  | \tuplet 3/2 16 { s32\ppp s16 s16. s16. s16. }
  | \tuplet 3/2 16 { s16.\< s16. s32\!\ff\> s16 s16. }
  | \tuplet 3/2 16 { s32 s16\! s32 s32\ppp s32 s16.\< s16. }
  | s4
  % 35
  | \tuplet 3/2 16 { s32\!\sf s64 s64\p s32 s16. s16. s16. }
  | s32\pp s16. s32\ppp s16.
  | s4
}

Lower = \relative c' {
  \clef bass
  %1
  | \override TupletBracket.bracket-visibility = ##f
    \stemDown \tuplet 3/2 16 {
      ces32\([ a! ces a! ces a!]
      ces32[ a! ces a! ces a!]
    }
  | \tuplet 3/2 16 {
      ces[ a!\) bes\(]
      \stemUp
      bes,\)[ bes\( bes,\)]
      bes\([ bes,\) bes\(]
      bes'\)[ bes\( bes'\)]
    }
  | \omit TupletNumber
    \stemDown
    \tuplet 3/2 16 {
      bes\([ ces'\) \phrasingSlurDown a!\(]
      ces[ a! ces]
      a![ ces a ces a! ces]
    }
  %4-6
  | \repeat unfold 6 { \tuplet 6/4 8 { a![ ces a ces a! ces] } }
  | \repeat unfold 2 { \tuplet 6/4 8 { a![ gis a gis a! gis] } }
  | \tuplet 6/4 8 { c[ b! c b! c b!] }
    \tuplet 6/4 8 { ees[ d ees d ees d] }
  | \key c \major
    \tuplet 6/4 8 { cis[ d cis ais cis ais] }
    \tuplet 6/4 8 { cis[ ais cis ais cis ais] }
  %10
  | \tuplet 3/2 16 {
      cis[ ais\) b\(]
      \stemUp
      b,\)[ b\( b,\)]
      b\([ b,\) b\(]
      b'\)[ b\( b'\)]
    }
  | \omit TupletNumber
    \stemDown
    \tuplet 3/2 16 {
      b\([ cis'\) \phrasingSlurDown ais\(]
      cis\)[ ais\( cis]
      ais[ cis ais cis ais cis]
    }
  | \repeat unfold 2 { \tuplet 6/4 8 { a![ c! a! c! a! c!] } }
  | \key ees \major
    \repeat unfold 2 { \tuplet 6/4 8 { a![ c! a! c! a! c!] } }
  | \tuplet 6/4 8 {
      a![ c! a! c! a! c!]
      a![ c! a! c! a! \afterGrace c!\)] a!8
    }
  %15
  | \tuplet 6/4 8 {
      ces32\([ a! ces a! ces a!]
      ces[ a! ces a! ces a!]
    }
  | \tuplet 3/2 16 {
      ces[ a!\) bes\(]
      \stemUp
      bes,\)[ bes\( bes,\)]
      bes\([ bes,\) bes\(]
      bes'\)[ bes\( bes'\)]
    }
  | \stemDown
    \tuplet 3/2 16 {
      bes\([ ces'\) \phrasingSlurDown a!\(]
      ces\)[ a!\( ces]
      a![ ces a! ces a! ces]
    }
  | \tuplet 6/4 8 {
      a![ c! a! c! a! c!]
      a![ c! a! c! a! \afterGrace c!]\) a!8
    }
  | \override TupletBracket.bracket-visibility = ##f
    \stemDown \tuplet 3/2 16 {
      ces32\([ a! ces a! ces a!]
      ces32[ a! ces a! ces a!]
    }
  %20
  | \tuplet 3/2 16 {
      ces[ a!\) bes\(]
      \stemUp
      bes,\)[ bes\( bes,\)]
      bes\([ bes,\) bes\(]
      bes'\)[ bes\( bes'\)]
    }
  | \omit TupletNumber
    \stemDown
    \tuplet 3/2 16 {
      bes\([ ces'\) \phrasingSlurDown a!\(]
      ces[ a! ces]
      a![ ces a ces a! ces]
    }
  | \repeat unfold 2 { \tuplet 3/2 16 { a![ c! a! c! a! c!] } }
  | \repeat unfold 2 { \tuplet 3/2 16 { a![ gis a! gis a! gis] } }
  | \tuplet 3/2 16 { c[ b! c b! c b!] }
    \tuplet 3/2 16 { ees[ d ees d ees d] }
  %25
  | \key c \major
    \tuplet 3/2 16 { cis[ d cis ais cis ais] }
    \tuplet 3/2 16 { cis[ ais cis ais cis ais] }
  | \tuplet 3/2 16 {
      cis[ ais\) b\(]
      \stemUp
      b,\)[ b\( b,\)]
      b\([ b,\) b\(]
      b'\)[ b\( b'\)]
    }
  | \stemDown
    \tuplet 3/2 16 {
      b\([ cis'\) \phrasingSlurDown ais\(]
      cis[ ais cis]
      ais[ cis ais cis ais cis]
    }
  | \repeat unfold 2 { \tuplet 6/4 8 { ais[ cis ais cis ais cis] } }
  | \key ees \major
  | \repeat unfold 2 { \tuplet 3/2 16 { a![ c! a! c! a! c!] } }
  %30
  | \tuplet 6/4 8 {
      a![ c! a! c! a! c!]
      a![ c! a! c! a! \afterGrace c!]\) a!8
    }
  | \tuplet 6/4 8 {
      ces32\([ a! ces a! ces a!]
      ces[ a! ces a! ces a!]
    }
  | \tuplet 3/2 16 {
      ces[ a!\) bes\(]
      \stemUp
      bes,\)[ bes\( bes,\)]
      bes\([ bes,\) bes\(]
      bes'\)[ bes\( bes'\)]
    }
  | \stemDown
    \tuplet 3/2 16 {
      bes\([ ces'\) \phrasingSlurDown a!\(]
      ces[ a! ces]
      a![ ces a! ces a! ces]
    }
  | \tuplet 6/4 8 {
      a![ ces a! ces a! ces]
      a![ ces a! ces a! ces]
  }
  %35
  | \tuplet 6/4 8 {
      a![ c! a! c! a! c!]
      a![ c! a! c! a! c!]
  }
  | \tuplet 6/4 8 {
      a![ c! a! c! a! c!]
      a![ c! a! c! a!]\) r32
  }
  | \clef treble
    <d' f>8-.\pp r8
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
    \new Dynamics { \Global \centeredDynamics }
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
    subtitle = "Libellula depressa"
    subsubtitle = "(Dragon fly)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "V"
       %}
    }
  }
  \layout { }
  \midi {
    \tempo 8 = 70
  }
}
