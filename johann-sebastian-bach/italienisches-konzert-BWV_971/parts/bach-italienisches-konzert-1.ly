Global = {
  \key f \major
  \time 2/4
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  %1
  <<
    {
  |   r8 f[ a, bes]
  |   c4 d
  |   c8 f4 es16 d
  |   <bes d>8 <a c> r4
    }
    \\
    {
  |   r4 f8 g
  |   a4 bes
  |   f2
  |   f4 r
    }
    \\
    {
  |   s2
  |   s2
  |   a4 bes
  |   s2
    }
  >>
  %5
  <<
    {
  |   r8 c'[ e,! f]
  |   g4 a
  |   g8 c4 bes16 a
  |   <f a>8 <e g>
    }
    \\
    {
  |   r4 c8 d
  |   e4 f
  |   c2
  |   c4
    }
    \\
    {
  |   s2
  |   s2
  |   e4 f
  |   s4
    }
  >>
      r16 c16 bes a
  | bes8 g'~ g16 bes,16 a g
  %10
  | a g f g a bes c d
  | es8 c'~ c16 es, d c
  | d c bes c d e f g
  | as16 g32 f g8~ g16 f32 e f8~
  | f16 e32 d e8~ e16 g e c
  %15
  | bes!-. g'( e c) bes-. g'( e c)
  | bes-. g'( e c) bes-. g'( e bes)
  | a-. a'( f des) c-. a'( f des)
  | c-. a'( f des) c-. a'( f es)
  | d-. b'( as f) d-. b'( as f)
  %20
  | d-. b'( as f) d-. b'( as f)
  | e c' g e c e d f
  | e g e c g bes! a c
  | bes d bes g e g f a
  | g bes g e c bes' a g
  %25
  | a f g a bes c d e
  | f e d c
  <<
    {
      c'8 f,
  |   <c f>4 <c e>~
  |   e16 f8. r4
  |   r16 c f8^~ f <c e>
  |   <a c f>4
    }
    \\
    {
      r8 <a c>
  |   a4 g
  |   f s
  |   s4 s8 bes
  |   s4
    }
    \\
    {
      \voiceFour
      s4
 |    s2
 |    c8 b~b16 d c bes
 |    a8. a16 g4
 |    f
    }
  >>
    r8 c'\f
  %31
  | d16 c d8~d16 f es d
  | c e f8~f16 e d c
  | bes a bes d g8 bes,
  | bes\prall a r a
  %35
  | g16( bes) bes( a) a( f') f( e)
  | e( d) d( c) c( bes) bes( a)
  | g bes c32( bes a16) a( f') g32( f e16)
  | f32( e d16) e32( d c16) d32( c bes16) c32( bes a16)
  | bes32( a g16) a8~ a16 c16 bes a
  %40
  | g b c8~ c16 b a g
  | f e f a d8 f,
  | f\prall e r16 c' d e
  | a, e( f a d) d e f
  | b, fis( g b e) e f g
  %45
  | c, gis( a c fis) fis g a
  | g\prall fis g8~ g16 g, b d
  | f\prall e f8~ f16 g,  b d
  | e\prall d e8~ e16 g, c d
  | es-. c( b c) fis c a' c,
  %50
  | b-. f( e f) b f d' f,
  | e g c g' f e d c
  | c4 r4
  <<
    {
  |   r8 c\f e, f
  |   g4 a
  %55.1
  |   g16 a bes4 a16 g
  |   a4 r
  |   r8 f' a, bes
  |   c4 d
  |   c16 d es4 d16 c
  %60.1
  |   d4 r
    }
    \\
    {
  |   s4 c,8 d
  |   e4 f
  %55.2
  |   e2
  |   r16 f e d c s16 s8
  |   r4 f8 g
  |   a4 bes
  |   a2
  %60.2
  |   r16 bes a g f s16 s8
    }
  >> |


  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  <<
    <a c f>4
    \\
    f4
  >>
    r4
  | r8 f'' d bes
  | r8 f d bes
  |
  <<
    f'4
    \\
    { f8 f, }
  >>
    r4
  %5
  |
  <<
    <e' g c>4
    \\
    c4
  >>
    r4 \clef treble
  | r8 c''[ a f] \clef bass
  | r8 c[ a f]
  |
  <<
    c'4
    \\
    { c8 c, }
  >>
    r4
  |
  <<
    {
      <g' c>4 <e g c>~
  |   c'8 a c f
    }
    \\
    {
      e,4 c
  |   f r
    }
  >> \clef treble
  %11
  <<
    {
      <c' f>4 <a c f>~
  |   f'8 d f bes
  |   <f b>4 <d g>
  |   \clef bass <b d> <g c>
    }
    \\
    {
      a4 f
  |   bes r
  |   d b
  |   g c,
    }
  >>
  %15
    \clef treble
    r8 c'16 d e8 g
  | e c \clef bass c,4
  | \clef treble r16 c'16 d e f8 a
  | f c \clef bass c,4
  | r8 d'16 e f8 d16 e
  %20
  | f8 d g, b
  | c c,16 d e8 g
  | c c,16 d e8 f
  | g c,16 e g8 a
  | bes c,16 d e8 c
  %25
  | f16 a g f e d c bes
  | a c d e f g a bes
  | c4 c,
  | d r8 e
  | f[ a, bes c]
  %30
  | f, \clef treble
  <<
    {
      a''\p[ a a]
  |   bes[ bes bes bes]
  |   bes[ bes a a]
  |   g[ g g g]
  |   g f r f
  %35.1
  |   f[ e f a]
  |   g[ f e f]
  |   f[ e f a]
  |   g[ f e g]
  |   f[ f f f]
  %40.1
  |   f[ f e e]
  |   d[ d d d]
    }
    \\
    {
      f[ f f]
  |   f[ f f f]
  |   f[ f f f]
  |   f[ f e e]
  |   f f,16 g a8 f
  %35.2
  |   c'[ c c c]
  |   c[ c c c]
  |   c[ c c c]
  |   c[ c c c]
  |   c[ c c c]
  %40.2
  |   c[ c c c]
  |   c[ c b b]
    }
  >>
  | \clef bass
  <<
    {
      d8 c r4
  |   r16 g a c f8 r8
  |   r16 a, b d g8 r8
  %45.1
  |   r16 b, c e a8 c,8
  |   d b d f
  |   d b d f
  |   g16 f e d c8 s8
  |   s2
  %50.1
  |   r8 d, g4^~
  |   g8 c,4 b8
  |   c16 c'^\f[ b a] g f e d
  |   c s16 s8 s4
  |   r8 c' a f
  %55.1
  |   c2^~
  |   c8 r r16 bes'16 a g
  |   f s16 s8 s4
  |   r8 f' d bes
  |   f2^~
  %60.1
  |   f8 r8 s16
    }
    \\
    {
      c'8 c,16 d e8 c
  |   f4 r8 d
  |   g s r e
  %45.2
  |   a4 r8 a
  |   b g b d
  |   b g b d
  |   c4_~c16 b a g
  |   fis e d c b a g fis
  %50.2
  |   g4 r8 b
  |   c e, f g
  |   g16 r16 r8 r4
  |   r16 c b a g f e d
  |   c8 r r4
  %55.2
  |   r8 g' e c
  |   f r r4
  |   r16 f'16 e d c bes a g
  |   f8 s8 s4
  |   r8 c' a f
  %60.2
  |   bes r8 r16
    }
  >>
    es' d c
  |


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
    composer = "Johann Sebastian Bach"
    opus = "BWV 971"
    %subtitle = ""
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "CONCERTO"
      %}
    }
  }
  \layout {
    \context {
      \Voice
      \remove Tie_engraver
    }
    \context {
      \Staff
      \consists Tie_engraver
    }
  }
  \midi { }
}
