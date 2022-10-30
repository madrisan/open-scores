Global = {
  \key c \major
  \clef treble
  \time 3/8
  \include "../global.ly"
}

rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. " } }


Upper = \relative c' {
  \repeat volta 2 {
  %1
  | <c e g c>4  d'16\prall( c32 d
  | \stemDown e16) c-. g-. e-. g-. c-.
  | e4  f16\prall( e32 f
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
  | e64([ fis g16.)]  c,64([ d e16.)]  a,64([ b c16.)]
  | \stemUp e,16-. g-. fis-. a-. g-. d'-.
  | e,16( c') \appoggiatura b8 a4
  | g4( \stemDown g'8)
  | fis16( e) e8.( g16)
  %30
  | e16( d) d8.( g16)
  | \stemUp a,16.( b64 c) b8-.[ a-.]
  | \acciaccatura a8 b4 r16 \stemDown g'16
  | fis32[( e16.)] d32[( c16.)] b32[( a16.)]
  | \stemUp
    g32[( fis16.)] e32[( d16.)] c32[( b16.)]
  %35
  | e16.( a32) \appoggiatura g8 fis4
  | g4.
  \repeat volta 2 {
  | s4
  }
  }
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

centeredDynamics = {
  %1
  | s8^\markup{\dynamic f \italic ( la 2a volta {\dynamic p})} s4
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
  | s4.
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
  | s32-\markup{\dynamic p \italic a tempo} s32 s16 s4
  | s4.
  | s4.
  | s4 s16\mf s16
  | s4.
  | s4.
  | s4.
  | s4 s16 s32 s32\p
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
  | ees4.(
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
  | s4
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
    \tempo 4 = 50
  }
}
