Global = {
  \key c \major
  \clef treble
  \time 3/8
  \include "../global.ly"
}

Upper = \relative c' {
  \repeat volta 2 {
  %1
  | <c e g c>4\arpeggio  d'16\prall( c32 d
  | \stemDown e16) c-. g-. e-. g-. c-.
  | <e, g c e>4\arpeggio  f'16\prall( e32 f
  | g16) e-. c-. g-. c-. e-.
  %5
  | g16( e) g,-. g'-. f-. d-.
  | g16( e) g,-. g'-. f-. d-.
  | g16( e) c-. f-. d-. b-.
  | c4-. r8
  }
  \repeat volta 2 {
  | \stemUp e,8-. \stemDown e'32[( f g16]) c,32[( d e16])
  %10
  | \acciaccatura e8 d8 c16 b a g
  | \stemUp e8-. \stemDown e'32[( f g16]) c,32[( d e16])
  | \acciaccatura e8 d8 c16 b a g
  | c8-. a'16\prall([ g32 a] c,8)
  | b8-. g'16\prall([ a32 g] d8)
  %15
  | e16[( d) \acciaccatura e8 c16( b) \acciaccatura b8 a16( g)]
  | d'4.
  | a8-. \acciaccatura c8 b32( a b16) c8-.
  | b16[ g'( fis a g b)]
  | a,8-. \acciaccatura c8 b32( a b16) c8-.
  %20
  | b16[ g'( fis a g b)]
  | a,8-. \acciaccatura c8 bes32( a bes16) c8-.
  | d8-. \acciaccatura g8 fis32( e fis16) g8-.
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
  | bes16( g) g( ees) d( cis)
    \set subdivideBeams = ##f
  | \appoggiatura e!8 d4.
  %25
  | e64([ fis g16.->)]  c,64([ d e16.->)]  a,64([ b c16.->)]
  | \stemUp e,16-. g-. fis-. a-. g-. d'-.
  | e,16( c') \appoggiatura b8 a4
  | g4( \stemDown g'8)
  | fis16( e) e8.( g16)
  %30
  | e16( d) d8.( g16)
  | \stemUp a,16.( b64 c) b8-.[ a-.]
  | \acciaccatura c8 b4 r16 \stemDown g'16
  | fis32[( e16.)] d32[( c16.)] b32[( a16.)]
  | \stemUp
    g32[( fis16.)] e32[( d16.)] c32[( b16.)]
  %35
  | e16.( a32) \appoggiatura g8 fis4
  | <b, d g>4.\arpeggio
  }
  \repeat volta 2 {
  | <g' d b>4\arpeggio  a16\prall( g32 a
  | b16[) g d-. b-. d-. g-.]
  | \stemDown <d g b>4\arpeggio  c'16\prall( b32 c
  %40
  | d16[) b g-. d-. g-. b-.]
  | d16[( b) d, b' d b]
  | d16[( b) e,-. b'-. d-. b-.]
  | b'16-.[ a-. gis-. f!-. e-. d-.]
  | c16[( a) e] r16 r8
  %45
  | \stemUp
    <c e a>4\arpeggio  b'16\prall( a32 b
  | c16[) a e-. c-. e-. a-.]
  | \stemDown
    <e a c>4\arpeggio d'16\prall( c32 d
  | e16[) c g-. e-. g-. c-.]
  | <g c e>4\arpeggio fis'16\prall( e32 fis
  %50
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    g16)( fis) \acciaccatura g8 fis16( e) e( fis)
  | g16( fis) e( g) \acciaccatura g8 fis16( e)
  | dis16( b') b,( cis) cis( d!)
    \set subdivideBeams = ##f
  | d16[( gis b) b,( cis d]
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    cis a') a,( b) b( c!)
    \set subdivideBeams = ##f
  %55
  | c16[( fis a) a,( b c]
  | b16[ d g,) d'( e f!]
  | e16[ g) \acciaccatura g8 f16( e) \acciaccatura e8 d16( c)]
  | b16[ a] g4
  | \stemUp
    <c, e g c>4\arpeggio
    \stemDown
    d'16\prall( c32 d
  %60
  | \stemDown e16) c-. g-. e-. g-. c-.
  | <e, g c e>4\arpeggio  f'16\prall( e32 f
  | g16) e-. c-. g-. c-. e-.
  | g16( e) g,-. g'-. f-. d-.
  | g16( e) g,-. g'-. f-. d-.
  %65
  | g8 f16( e d c
  | \stemUp
    b16[ a] g4)
  | \stemDown
    d'8-.[ \acciaccatura f8 e32( d e16) f8-.]
  | e8-.[ \acciaccatura g8 f32( e f16) g8-.]
  | d8-.[ \acciaccatura f8 e32( d e16) f8-.]
  %70
  | e8-.[ \acciaccatura g8 f32( e f16) g8-.]
  | d8-.[ \acciaccatura f8 ees32( d ees16) f8-.]
  | g8[ \acciaccatura c8 b32( a b16) c8->(\(]
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    c16) aes\) aes( g) g( fis)
    \set subdivideBeams = ##f
  | \appoggiatura fis8 g4.
  %75
  | a!64[( b! c16.)] f,!64[( g a16.)] d,64[( e f16.)]
  | a,16[( c) b( d) c( g')]
  | a,16( f') \appoggiatura e8 d4
  | c4( c'8)
  | b16( a) a8.( c16)
  %80
  | a16( g) g8.( c16)
  | d,16( e32 f) e8-. d-.
  | \appoggiatura f8 e4 c'8
  | b16( a) a8.( c16)
  | a16( g) g8.( c16)
  %85
  | d,16( e32 f e8.) d16
  | \appoggiatura d8^\tenuto e4 r16 c'16
  | b32([ a16.)] g32([ f16.)] e32([ d16.)]
  | c32([ b16.)] a32([ g16.)] \stemUp f32([ e16.)]
  | d32([ f16.)] \appoggiatura e8 d4
  %90
  | \appoggiatura d8 e4 r16 \stemUp c'16
  | \override Slur.direction = #UP
    b32([ a16.)] g32([ f16.)] e32([ d16.)]
  | \change Staff = "lower" {
      c32([ b16.)] a32([ g16.)] f32([ e16.)]
  | d32([ f16.)] e8^. d^.
  | c4^. e8\rest
    }
    \revert Slur.direction
    \change Staff = "upper" {
    }
  }
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

centeredDynamics = {
  %1
  | s8^\markup{\dynamic f \italic ", la 2ª volta" {\dynamic p}} s4
  | s4.
  | s4.
  | s4.
  %5
  | s4.
  | s4.
  | s4.
  | s4.
  | s32\f s32 s16 s4
  %10
  | s4.
  | s32\p s32 s16 s4
  | s4.
  | s32\mf s32 s16 s4
  | s4.
  %15
  | s4.
  | s4.
  | s4.
  | s16\< s16 s8 s16 s16\!
  | s32\p s32 s16 s4
  %20
  | s16\< s16 s8 s16 s16\!
  | s32\f s32 s16 s4
  | s4.
  | s64\rit s64\startTextSpan s32 s8. s16. s32\stopTextSpan
  | s16\> s16 s8 s16 s16\!
  %25
  | s32-\markup{\dynamic mf \italic\small "rit. e dim."} s32 s16 s4
  | s32-\markup{\italic\small "a tempo"} s16. s4
  | s4.
  | s4 s16\f s16
  | s4.
  %30
  | s4.
  | s4.
  | s4 s16 s32 s32\p
  | s4.
  | s4.
  %35
  | s32-\markup{\italic\small "rit. e dim."} s32 s16 s4
  | s4.
  | s32\f s32 s16 s4
  | s4.
  | s4.
  %40
  | s4.
  | s32\mf s32 s16 s4
  | s4.
  | s4.
  | s4.
  %45
  | s32\f s32 s16 s4
  | s4.
  | s4.
  | s4.
  | s4.
  %50
  | s4.
  | s4.
  | s32\p s32 s16 s4
  | s4.
  | s4.
  %55
  | s4.
  | s4.
  | s4.
  | s4.
  | s32\f s32 s16 s4
  %60
  | s4.
  | s4.
  | s4.
  | s4.
  | s4.
  %65
  | s4.
  | s4.
  | s4.
  | s4.
  | s32\p s32 s16 s4
  %70
  | s4.
  | s32\f s32 s16 s4
  | s4.
  | s64\rit s64\startTextSpan s32 s8. s16. s32\stopTextSpan
  | s16\> s16 s8 s16 s16\!
  %75
  | s32-\markup{\dynamic mf \italic\small "rit. e dim."} s32 s16 s4
  | s32-\markup{\italic\small "a tempo"} s16. s4
  | s4.
  | s4 s16\f s16
  | s4.
  %80
  | s4.
  | s4.
  | s4 s16\p s16
  | s4.
  | s4.
  %85
  | s4.
  | s4 s16 s32\f s32
  | s4.
  | s4.
  | s4.
  %90
  | s4 s16 s32\p s32
  | s4.
  | s4.
  | s64\rit s64\startTextSpan s32 s8. s16. s32\stopTextSpan
  | s4.
}

Lower = \relative c' {
  \clef bass
  \repeat volta 2 {
  %1
  | c16[( g) e-. c-.] b'-.[ g-.]
  | c4-. r8
  | c16[( g) e-. c-.] d'-.[ b-.]
  | e4-. r8
  %5
  | c,8-.[<c' e>( <g d'>)]
  | c,8-.[<c' e>( <g d'>)]
  | e8-.[ f-. g-.]
  | r16 c,-. e-. c-. g'-. e-.
  }
  \repeat volta 2 {
  | c16[( g') c,16( g') c,16( g')]
  %10
  | b,16[( g') b,16( g') b,16( g')]
  | c,16[( g') c,16( g') c,16( g')]
  | b,16[( g') b,16( g') b,16( g')]
  | a,16-. a'-. fis-. a-. d,-. fis-.
  | \stemDown g,16-. g'-. d-. g-. b,-. g'-.
  %15
  | c,8-.[ e-. cis-.]
  | d16-.[ d'( a) d( g,) d'](
  | fis,16)([ d) g( d) a'( d,)]
  | g16([ d) a'( d,) b'( d,)]
  | fis16([ d) g( d) a'( d,)]
  %20
  | g16([ d) a'( d,) b'( d,)]
  | fis16([ d) g( d) a'( d,)]
  | bes'16([ d,) a'( d,) g( d)]
  | ees4.(->
  | d16) a'( fis a d,8)
  %25
  | r4.
  | c'8[-. a-. b-.]
  | c8[-. d-. d,-.]
  | g16-.[ d'( b d g, d')]
  | g,16-.[ e'( c e g, e')]
  %30
  | g,16-.[ d'( b d g, d')]
  | c,16( a') d,( g) d( fis)
  | g16-.[ d'( b d g, b)]
  | <c c,>8 r8 r8
  | d,8 r8 g8
  %35
  | c,8[ d d,]
  | \stemUp g4.
  }
  \repeat volta 2 {
  | \stemDown
    g'16[( d) b g] fis'[ d]
  | g4 r8
    g16[ d b g] a'[ fis]
  %40
  | b4 r8
  | b,8[-. b'( a)]
  | r8 gis( f!)
  | e4 gis8(
  | a8) r16 d16[c b]
  %45
  | a16[( e) c a]  gis'[ e]
  | a4 r8
  | a16[ e c a]  b'[ g!]
  | c4 r8
  | c16[ g e c]  dis'[ b]
  %50
  | e4 d!8
  | c8-.[ g-. a-.]
  | b4 r8
  | \stemUp
    << { e,8.\sustainOn gis16(\sustainOff a b } \\ e,4. >>
  | << a8) \\ a8 >> r8 r8
  %55
  | << { d,8.\sustainOn fis16(\sustainOff g a } \\ d,4. >>
  | << { g8.) b16( c d } \\ g,4. >>
  | \stemDown
    << { c8[) a-. fis-.] } \\ { } >>
  | g16( f!) e-. d-. c-. b-.
  | c'16[( g) e c] b'[ g]
  %60
  | c4-. r8
  | c16[( g) e c] d'[ b]
  | e4 r8
  | c,8-.[<c' e>( <g d'>)]
  | c,8-.[<c' e>( <g d'>)]
  %65
  | e8[ a fis]
  | g16[ g' d g c, g']
  | b,16[( g) c( g) d'( g,)]
  | c16[( g) d'( g,) e'( g,)]
  | b16[( g) c( g) d'( g,)]
  %70
  | c16[( g) d'( g,) e'( g,)]
  | b16[( g) c( g) d'( g,)]
  | ees'16[( g,) d'( g,) ees'( g,)]
  | aes4.->(
  | g16)[ d'( b d g,8)]
  %75
  | r4.
  | f8-. d-. e-.
  | f16[( d') g,( c) g( b)]
  | \clef treble
    c16-.[ g'( e g c, g')]
  | c,16-.[ a'( f a c, a')]
  %80
  | \stemUp
    c,16-.[ g'( e g c, e)]
  | f,16[( d') g,( c) g( b)]
  | c16-.[ g'( e g c, g')]
  | c,16-.[ a'( f a c, a')]
  | c,16-.[ g'( e g c, e)]
  %85
  | \override Slur.direction = #DOWN
    f,16[( d') g,( c) g( b)]
    \revert Slur.direction
  | \clef bass
    \stemUp
    c,4 r8
  | r4.
  | \stemDown
    g'8 r8 c8
  | f,8-.[ g-. g,-.]
  %90
  | c4-. r8
  | r4.
  | g8_. r8 c8_.
  | f,8_.[ g_. g,_.]
  | c4_.  c8\rest
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
       "Allegro"
    }
  }
  \layout {
  }
  \midi {
    \tempo 4 = 80
  }
}
