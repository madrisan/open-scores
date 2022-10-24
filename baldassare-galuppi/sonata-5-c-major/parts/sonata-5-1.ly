\version "2.23.13"

Global = {
  \key c \major
  \clef treble
  \time 4/4
  \override Score.Footnote.annotation-line = ##f
  % Draw a box round the following bar number(s)
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \set Staff.pedalSustainStyle = #'mixed
}

cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc. " } }

Upper = \relative c'' {
  \repeat volta 2 {
  %1
  | g'4  a32( b c16) b16.\prall a32(  g4)  f32( g a16) g16.\prall f32(
  | e4)  d32( e f16) e16.\prall d32(  g8.) c,16(  f16 d) \acciaccatura d8 c16( b)
  | \grace { b8.[( d16] } c2)  g'4  a32( b c16) b16.\prall a32(
  | g4)  f32( g a16)  g16.\prall f32( e4)  d32( e f16) e16.\prall d32(
  %5
  | g8.) c,16(  f16 d) \acciaccatura d8 c16( b)  \grace { b8.[( d16] } c2)
  | e32[( f g8.])  f16.\prall[ e32 d16.\prall c32]  d8( g)  g4
  | e32[( f g8.])  f16.[ e32 d16. c32]  d8( g)  g4
  | dis16\tenuto( e) r8  gis16\tenuto( a) r8  cis,16\tenuto( d) r8  fis16\tenuto( g) r8
  | c,16.[\trill b64 c a'16. c,32]  b16.[\trill a64 b g'16. b,32]  \grace { <g b>4( } <fis a >2)
  %10
  | d'4  e32( fis g16) fis16.\prall e32(  d4)  c32( d e16) d16.\prall c32(
  | b4)  a32( b c16) b16.\prall a32(  d8.) g,16(
    \stemDown c16 a) \acciaccatura a8 g16( fis)
  | \stemUp \grace { fis8.[( a16] } g2)
    \stemDown g'32( a bes16) a16.\trill g32
    g8-.( g8-.)
  | g16( fis ees d  cis d ees d)
    \stemDown g32( a bes16) a16.\trill g32
    g8( g8)
  | g16( fis ees d  cis d ees d)
    \stemDown c32( d ees16) d16.\trill c32
    c8-.( c8-.)
  | ais16( b) r16 g'-.  dis( e) r16 g-. cis,( d) r16 g-.  b,16( c) r16 c-.
  | ais16( b) r16 g'-.  dis( e) r16 g-. cis,( d) r16 g-.  b,16( c) r16 c-.
  | ais16( b) r16 g'-.  fis( e c' a  g  fis e d)
    \acciaccatura d8 c16( b) \acciaccatura b8 a16( g)
  | fis16( e c' a)  \stemUp \acciaccatura g8 fis4  \acciaccatura fis8 g4  r4
  }
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

centeredDynamics = {
  | s8\p s8  s2.
  | s1
  | s2 s8\pp s4.
  | s1
  %5
  | s1
  | s8\p s8  s2.
  | s8\pp s8  s2.
  | s8\p \cresc s8\startTextSpan  s2 s8. s16\stopTextSpan
  | s8\mf s8  s2.
  %10
  | s8^\markup{\dynamic p\italic, ben cantato }  s8  s2.
  | s1
  | s1
  | s2 s2\pp
  | s2 s2\p
  %15
  | s1
  | s8. s16\pp s2.
  | s4 s2.\mf
  | s8. s16\> s4 s4.\! s8

}

Lower = \relative c' {
  \repeat volta 2 {
  %1
  | c16\sustainOn g' e g
    c,16\sustainOff\sustainOn a' f a
    c,16\sustainOff\sustainOn g' e g
    c,16\sustainOff\sustainOn a' f a
  | c,16\sustainOff g' e g  f, d' b d  e, e' c e  g, d' b d
  | c16\sustainOn g' e g  c,16 g' e g
    c,16\sustainOff\sustainOn g' e g
    c,16\sustainOff\sustainOn a' f a
  | c,16\sustainOff g' e g  c,16 a' f a  c,16 g' e g  f,16 d' b d
  %5
  | e, e' c e  g, d' b d  c16 g' e g  c,16 g' e g
  | c,16 g' e g  c,16 g' e g  b,16 g' d g  b,16 g' d g
  | c,16 g' e g  c,16 g' e g  b,16 g' d g  b,16 g' d g
  | c,16 g' e g  c,16 a' e a  b, a' d, a'  b, g' d g
  | \clef bass
    a,8[ fis]  g[ cis,]  d2
  %10
  | g16 d' b d  g,16 e' c e  g,16 d' b d  fis, c' a c
  | g d' b d  c, a' fis a  b, b' g b  d, a' fis! a
  | g d' b d
    \clef treble
    b g' d g  cis, bes' g bes  cis, bes' g bes
  | d,16 a' fis a  d, a' fis a
    cis, bes' g bes  cis, bes' g bes
  | d,16 a' fis a  d, a' fis a
    \clef bass
    fis, ees' c ees  fis, ees' c ees
  | g, d' b! d  g, e' c e  g, d' b d  d, a' fis a
  | g d' b d  g, e' c e  g, d' b d  d, a' fis a
  | g d' b d  c8[ c,8]  d[ fis]  g[ b,]
  | << { r8 c'  a4  g4  } \\ { c,4  d4  g,4 } >>  r4
  }
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
    \new Dynamics { \Global \centeredDynamics }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    %composer = "Baldassare Galuppi"
    opus = \markup {
             \column {
               \line { " " }
             }
           }
    %subtitle = ""
    title = \markup {
       "Andante"
    }
  }
  \layout {
  }
  \midi {
    \tempo 4 = 50
  }
}
