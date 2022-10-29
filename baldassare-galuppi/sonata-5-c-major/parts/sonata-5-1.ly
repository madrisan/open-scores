\version "2.23.13"

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
  %15
  | ais16( b) r16 g'-.  dis( e) r16 g-. cis,( d) r16 g-.  b,16( c) r16 c-.
  | ais16( b) r16 g'-.  dis( e) r16 g-. cis,( d) r16 g-.  b,16( c) r16 c-.
  | ais16( b) r16 g'-.  fis( e c' a  g  fis e d)
    \acciaccatura d8 c16( b) \acciaccatura b8 a16( g)
  | fis16( e c' a)  \stemUp \acciaccatura g8 fis4  \acciaccatura fis8 g4  r4
  }
  \repeat volta 2 {
  | \stemDown
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    cis16[( d) d( fis)]  fis[( g) g( bes)]  d,[( cis) cis( e)]  e[( fis) fis( g)]
  %20
  | g16[( fis) fis( a)]  a[( b!) b( c)]  e,[(dis) dis( fis)]  fis[(gis) gis( a)]
    \set subdivideBeams = ##f
  | gis16 b( d,!8  cis16) e( g!8  fis16) a( c,!8  b16) d( f!8
  | e16) g( bes,8  a16) f'\( a8~  a16 g\) f( e)  e( d) a'( c,)
  | b!8. a16(  \stemUp g4)  \stemDown g'4  a32( b c16) b16.\prall a32(
  | g4)  f!32( g a16) g16.\prall f32(
    e4)  d32( e f16) e16.\prall d32(
  %25
  | g8.) c,16(  f16 d) \acciaccatura d8 c16( b)
    \grace { b8.[( d16] } c2)
  | g'4  a32( b c16) b16.\prall a32(
    g4)  f32( g a16) g16.\prall f32(
  | e4)  d32( e f16) e16.\prall d32  g8.\trill fis32 g  a16 e \acciaccatura e8 d16 c
  | b8.\trill a16  g8 r8  dis'16\tenuto( e) r8 fis16\tenuto( g) r8
  | cis,16( d!) d8  r4  dis16\tenuto( e) r8  fis16\tenuto( g) r8
  %30
  | cis,16( d!) d8  r4  f8.\trill e32 f
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    a16( f) f( d)
    \set subdivideBeams = ##f
  | e8.\trill d32 e  g16( e) \acciaccatura e8 d16( c)  b( a) f'( d)  \appoggiatura c8 b4
  | \appoggiatura d4 c2  dis16( e) r8  fis16( g) r8
  | cis,16 d! d8  r4
    dis16( e) r8  fis16( g) r8
  | cis,16 d! d8  r4
    f8.\trill e32 f
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    a16( f) f( d)
    \set subdivideBeams = ##f
  | e8.\trill d32 e  g16( e) \acciaccatura e8 d16( c)  b( a) f'( d)  \appoggiatura c8 b4
  %35
  | \appoggiatura d4 c2  a'8. b16(  c16.) c32( b16.) a32(
  | g4)(  c,4)
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    b16( d) d( f)  f( d) a'( f)
    \set subdivideBeams = ##f
  | f4\prall  e  a8. b16( c16.) c32( b16.) a32(
  | g4)(  c,4)
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    b16( d) d( f)  f( d) a'( f)
    \set subdivideBeams = ##f
  | dis16( e) r16 c'-.  gis( a) r16 c-.
    fis,16( g!) r16 c-.  e,( f!) r16 f!-.
  %40
  | dis16( e) r16 c'-.  gis( a) r16 c-.
    fis,16( g!) r16 c-.  e,( f!) r16 f-.
  | e16.\prall c'32 b16.\prall a32  g16.\prall f32 e16.\prall d32
    e16 c a' f \appoggiatura e8 d4\trill
  | e16.\prall c32 b16.\prall a32
    \stemUp
    g16.\prall f32 e16.\prall d32
    e16 c a' f \appoggiatura e8 d4\trill
  | c4 r4 r2
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
  | s8\mp s8  s2.
  %20
  | s8\cresc s8\startTextSpan  s2 s8. s16\stopTextSpan
  | s8\mf s8 s4 s8\mp s8 s4
  | s8\< s4 s8\! s4^\markup { \italic "rit.," } s4
  | s8\> s8 s4\! s2^\markup{\dynamic p\italic, come prima }
  | s1
  %25
  | s1
  | s32 s32\pp s16 s8 s2.
  | s1
  | s2 s2\mf
  | s2 s2\p
  %30
  | s2 s2\mf
  | s1
  | s4 s8 s8\p s4 s4
  | s4 s4\pp s2
  | s4 s4\p s2
  %35
  | s1
  | s4 s4\mf s2
  | s1
  | s1
  | s1
  %40
  | s1
  | s1
  | s1
  | s8 s16 s64 s64\p s32 s2.
}

Lower = \relative c' {
  \repeat volta 2 {
  %1
  | c16\sustainOn g' e g
    c,16\sustainOff\sustainOn a' f\sustainOff\sustainOn a
    c,16\sustainOff\sustainOn g' e g
    c,16\sustainOff\sustainOn a' f\sustainOff\sustainOn a
  | c,16\sustainOff g' e g  f, d' b d  e, e' c e  g, d' b d
  | c16\sustainOn g' e g  c,16 g' e g
    c,16\sustainOff\sustainOn g' e g
    c,16\sustainOff\sustainOn a' f\sustainOff\sustainOn a
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
  %15
  | g, d' b! d  g, e' c e  g, d' b d  d, a' fis a
  | g d' b d  g, e' c e  g, d' b d  d, a' fis a
  | g d' b d  c8[ c,8]  d[ fis]  g[ b,]
  | << { r8 c'  a4  g4  } \\ { c,4  d4  g,4 } >>  r4
  }
  \repeat volta 2 {
  | <bes' bes,>4\tenuto  r4  <a a,>4\tenuto  r4
  %20
  | <d d,>8\tenuto r8  <c! c,!>8\tenuto r8  <b! b,!>4\tenuto  r4
  | e,8.\tenuto gis16(  a8.) cis,16(  d8.) fis16(  g!8.) b,16(
  | c!8.) e16  f!8. c16(  f,4)  f'8 fis
  | g4  r4  \clef treble c16 g' e g  c,16 a' f! a
  | c,16 g' e g  c,16 a' f a  c,16 g' e g  f, d' b d
  %25
  | e, e' c e    g, d' b d    c16 g' e g   c,16 g' e g
  | c,16 g' e g  c,16 a' f a  c,16 g' e g  c,16 a' f a
  | c,16 g' e g  f,16 d' b d  e,16 e' c e  fis,16 d' c d
  | g,16 d' b d  g,16 d' b d  g,16 e' c e  g,16 e' c e
  | g,16 d' b d  g,16 d' b d  g,16 e' c e  g,16 e' c e
  %30
  | g,16 d' b d  g,16 d' b d  a16 f' c f   b,16 f' d f
  | c16 g' e g   e,16 e' c e  f,16 f' d f  g,16 d' b d
  | c16 g' e g   c,16 g' e g  c,16 g' e g  c,16 g' e g
  | g,16 d' b d  g,16 d' b d  g,16 e' c e  g,16 e' c e
  | g,16 d' b d  g,16 d' b d  a16 f' c f   b,16 f' d f
  %35
  | c16 g' e g   e,16 e' c e  f,16 f' d f  g,16 d' b d
  | c16 g' e g   c,16 g' e g  c,16 a' f a  c,16 a' f a
  | c,16 g' e g  c,16 g' e g  g,16 d' b d  g,16 d' b d
  | c16 g' e g   c,16 g' e g  c,16 a' f a  c,16 a' f a
  | c,16 g' e g  c,16 g' e g  g,16 d' b d  g,16 d' b d
  %40
  | c16 g' e g   c,16 a' f a  c,16 g' e g  g,16 d' b d
  | c16 g' e g   c,16 a' f a  c,16 g' e g  g,16 d' b d
  | c4
    \clef bass
    r8 b8  c[ f,]  \stemDown g[ g,]
  | \stemUp c4  r8 b  \stemDown c[ f]  g[ g,]
  | c4  r4  r2
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
