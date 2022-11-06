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
  >>
  | r16 d'( cis d) bes'8 d,~
  | d16 cis( b cis) a'8 c,~
  | c16 b( a b) g'8 bes,
  | bes8\prall a r4
  %65
  | r16 d bes g a d g, e
  | f d' g, e f d' e, cis
  | d\p d' bes32 a g16 a d g,32 f e16
  | f d' g,32 f e16 f d' e,32 d cis16
  <<
    {
  |   r8 a''\f[ bes a]
  %70.1
      r8 g[ a g]
      r f[ g f]
      r f[ g f~]
    }
    \\
    {
  |   d,8 f'[ g f]
  %70.2
      e,[ e' f e]
      f,[ d' e d]
      f,[ d' e d]
    }
  >>
  | f16 e32 d e8~ e16 d32 cis d8~
  | d16 cis32 b cis8~ cis16 e cis a
  %75
  | g-. e'( cis a) g-. e'( cis a)
  | g-. e'( cis a) g-. e'( cis a)
  | f-. f'( d bes) a-. f'( d bes)
  | a-. f'( d bes) a-. f'( d c)
  | b-. gis'( f d) b-. gis'( f d)
  %80
  | b-. gis'( f d) b-. gis'( f d)
  | cis a' e cis a cis b d
  | cis e cis a e g f a
  | g bes g e cis e d f
  | e g e cis a g' f e
  %85
  | f d e f g a b cis
  | d cis b a
  <<
    {
      a'8 d,
  |   <d f>4 <cis e>~
  |   e16 d8. r4
  |   r16 a d8^~ d <a cis>
  %90.1
  |   <f a d>4
    }
    \\
    {
      r8 a
  |   a4 g
  |   f s
  |   s4 a8\rest g
  %90.2
  |   s4
    }
    \\
    {
      \voiceFour
      s4
  |   s2
  |   cis16 d gis,8~ gis16 bes a g
  |   f8. f16 e4
  %90.3
  |   d
    }
  >>
    r8 a'\f
  | a16\prall gis a8 a16\prall gis a8~
  | a16 b cis d e8 a,
  | a16\prall gis a8 a16\prall gis a8~
  | a16 cis d e f8 a,
  %95
  | a16\prall gis a8 a16\prall gis a8~
  | a16 cis e f g8 a,~
  | a16 g' f e32 d bes'8 g,~
  | g16 f' e d32 c a'8 f,~
  | f16 es' d c32 bes g'16 d c bes32 a
  %100
  | f'16 c bes a32 g es'16 bes a g32 f
  | d'16 a bes d es, d' c bes
  | a g a c f, es' d c
  <<
    {
  |   d8 bes' d, es
  |   f4 g
  %105.1
  |   f8 bes4 as16 g
  |   <es g>8 <d f> r8 <d f>
  |   <d f> <c es> r <c es>
  |   <c es> <bes d> r <bes d>
  |   <bes d> <a c> r <a c>
  %110.1
  |   <a c> <g bes> bes'4^~
  |   bes8 a16 g a fis g a
    }
    \\
    {
  |   r4 bes,8 c
  |   d4 es
  %105.2
  |   bes2_~
  |   bes4 g_~
  |   g f_~
  |   f es_~
  |   es d_~
  %110.2
  |   d r16 d' g f
  |   es4 s4
    }
    \\
    {
  |   s2
  |   s2
  %105.3
  |   d4 es
  |   s2
  |   s2
  |   s2
  |   s2
  %110.3
  |   s2
  |   s2
    }
  >>
  | d2~\startTrillSpan
  | d~
  | d~
  %115
  | d8\stopTrillSpan g, bes d
  | c2~\startTrillSpan
  | c~
  | c~
  | c8 \stopTrillSpan f, a c
  %120
  | f f,
  <<
    {
      bes4^~
  |   bes a^~
  |   a^~ a16 a g f
  |   e g e d c4
    }
    \\
    {
      r8 d
  |   e16 g e c r8 c
  |   d16 f d c bes4~
  |   bes_~ bes16 bes a g
    }
  >>
  | a c f e d c bes a
  %125
  | bes e g f e d c bes
  | c f a g f e d c
  | d f bes a g f e d
  | e c e g bes c e g
  | a8 d, e16 d cis d~
  %130
  | d g d b c b c e
  | f8 bes, c16 bes a bes~
  | bes es bes g a g a c
  | d8 g, a16 g fis g~
  | g c g e f e f a
  %135
  | bes2~\startTrillSpan
  | bes16 \stopTrillSpan g' e c bes g' e c
  | bes2~\startTrillSpan
  | bes16 \stopTrillSpan g' e c bes g' e c
  <<
    {
  |   a8 f' a, bes
  %140.1
  |   c4 d~
  |   d8 c16 d-. es8 d16 c
  |   d4 r
  |   r8 g b, c
  |   d4 e~
  %145.1
  |   e8 d16 e f8 e16 d
  |   e4
    }
    \\
    {
  |   r4 f,8 g
  %140.2
  |   a4 bes
  |   bes8 a4.
  |   bes4 r
  |   r g8 a
  |   b4 c
  %145.2
  |   c8 b4.
  |   c4
    }
  >>
    r8 c\f
  | c16\prall b c8 c16\prall b c8~
  | c16 d e f g8 c,-.
  | c16\prall b c8 c16\prall b c8~
  %150
  | c16 e f g a8 c,
  | c16\prall b c8 c16\prall b c8~
  | c16 e g a bes8 c,-~
  | c16 bes' a g32 f c'8 es,~
  | es16 d32 c d16 c32 bes g'8 bes,~
  %155
  | bes16 a32 g a16 g32 f d'8 f,
  | f8\prall e r bes''
  | a16 bes c f, a g f e
  | f c d f bes, a bes d
  | f bes, c f a, g a c
  %160
  | f a, b f' g, f g f'
  | e f g f e d c bes
  | a bes c f, a g f e
  <<
    {
  |   f8[\f f' a, bes]
  |   c4 d
  %165.1
  |   c8 f4 es16 d
  |   <bes d>8 <a c> r4
    }
    \\
    {
  |   s4 f8 g
  |   a4 bes
  %165.2
  |   f2
  |   f4 r
    }
    \\
    {
  |   s2
  |   s2
  %165.3
  |   a4 bes
  |   s2
    }
  >>
  <<
    {
  |   r8 c'[ e, f]
  |   g4 a
  |   g8 c4 bes16 a
  %170.1
  |   <f a>8 <e g>
    }
    \\
    {
  |   r4 c8 d
  |   e4 f
  |   c2
  %170.2
  |   c4
    }
    \\
    {
      s2
      s2
      e4 f
  %170.3
      s4
    }
  >>
    r16 c16 bes a
  | bes8 g'~ g16 bes,16 a g
  | a g f g a bes c d
  | es8 c'~ c16 es, d c
  | d c bes c d e f g
  %175
  | as16 g32 f g8~ g16 f32 e f8~
  | f16 e32 d e8~ e16 g e c
  | bes-. g'( e c) bes-. g'( e c)
  | bes-. g'( e c) bes-. g'( e bes)
  | a-. a'( f des) c-. a'( f des)
  %180
  | c-. a'( f des) c-. a'( f es)
  | d-. b'( as f) d-. b'( as f)
  | d-. b'( as f) d-. b'( as f)
  | e c' g e c e d f
  | e g e c g bes a c
  %185
  | bes d bes g e g f a
  | g bes g e c bes' a g
  | a f g a bes c d e
  | f e d c
  <<
    {
      c'8 f,
  %190.1
  |   <c f>4 <c e>~
  |   e16 f8. r4
  |   r16 c f8~ f <c e>
  |   <a c f>2\fermata
    }
    \\
    {
      r8 <a c>
  %190.2
  |   a4 g
  |   f s
  |   s4 bes8\rest bes
  |   s2
    }
    \\
    {
      \voiceFour
      s4
  %190.3
  |   s2
  |   c8 b~ b16 d c bes
  |   a8. a16 g4
  |   f2
    }
  >>
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
  | bes8 g'~ g16 bes, a g
  | a8 f'~ f16 a, g f
  | g8 e'~ e16 d cis d
  | g, d' cis e a, g f e
  %65
  | f8 g f e
  | d bes' a g
  | f g f e
  | d bes' a g
  | f16 cis'([ d e] d cis d) f,-.
  %70
  | g-. cis( d e d cis d) g,-.
  | a-. cis( d e d cis d) a-.
  | \clef treble
    bes-. cis( d e d cis d) f
  <<
    {
      \voiceThree
  |   <d gis>4 <b e>
      \voiceOne
  |   \clef bass
      <gis b> <e a>
    }
    \\
    {
  |   b'4 gis
  |   e a,
    }
  >>
  %75
  | r8 a'16 b cis8 e
  | cis a a,4
  | r16 a'16 b cis d8 f
  | d a a,4
  | r8 b'16 cis d8 b16 cis
  %80
  | d8 b e, gis
  | a8 a,16 b cis8 e
  | a a,16 b cis8 d
  | e a,16 cis e8 f
  | g a,16 b cis8 a
  %85
  | d16 f e d cis b a g
  | f a b cis d e f g
  | a4 a,
  | bes r8 cis
  | d f, g a
  %90
  <<
    {
  |   d,8 s s4
  |   e''8 r f r
  |   e r r4
  |   f8 r e r
  |   f16 g f e d e f d
  %95.1
  |   g8 r f r
  |   e s
    }
    \\
    {
  |   s8 d,16 e f= g a b
  |   cis8[ a d a]
  |   cis a16 b cis d e cis
  |   d8[ a cis a]
  |   d e,8\rest r4
  %95.2
  |   e'8[ a, d=' a]
  |   cis16 d cis b
    }
  >>
    a g f e
  | d d' e f g, f' e d
  | c, c' d e f, es' d c
  | bes, bes' c d es,8 a
  %100
  | d, g c, f
  | bes, d g es
  | f c a f
  | bes bes, r4 \clef treble
  | r8 bes''' g es \clef bass
  %105
  | r bes g es
  | bes'16 c d c bes a bes g
  | c, g' c bes a g a f
  | bes, f' bes a g f g es
  | a, es' a g fis e fis d
  %110
  | g, d' g a g f es d
  | c g' c d c bes a g
  | fis d' cis d d, fis e g
  | fis a d, fis g bes d, g
  | a c a fis d c' bes a
  %115
  | bes d bes g d f e d
  | e c' b c c, e d f
  | e g c, e f a c, f
  | g bes g e c bes' a g
  | a c a f c es d c
  %120
  | d f d bes g bes a g
  | c e c a f a g f
  | bes8 c d bes
  | c d e c
  | c, a' bes d
  %125
  | c, bes' c e
  | c, c' d f
  | c, d' e g
  | c,,4 r \clef treble
  <<
    {
  |   r8 a''' a a
  %130.1
  |   g[ g g g]
  |   r f[ f f]
  |   es[ es es es]
  |   \clef bass
      r d[ d d]
  |   c[ c c c]
    }
    \\
    {
  |   r f[ f f]
  %130.2
  |   e[ e e e]
  |   r d[ d d]
  |   c[ c c c]
  |   r bes[ bes bes]
  |   a[ a a a]
    }
  >>
  %135
  | r16 d e f g, e' f, d'
  | e, g c8 r4
  | r16 g f e c' e, d' d,
  | e'8 c, r4
  | r16 f' e d c bes a g
  %140
  | f f es d c bes a g
  | f f' c a f f' es f
  | bes, d f a \clef treble bes d f a
  | g g f e \clef bass d c b a
  | g g f e d c b a
  %145
  | g g' d b g g' f g
  | c, g'[ a b] c[ g c d] \clef treble
  <<
    {
  |   g8 r a r
  |   g r r4
  |   a8 r g r
  %150.1
  |   a16 bes a g f g a f
  |   bes8 r a r
  |   g16 f e d c
    }
    \\
    {
  |   e8 c f c
  |   e c16 d e f g e
  |   f8 c e c
  %150.2
  |   f r r4
  |   g8 c, f c
  |   e r r16
    }
  >> \clef bass bes16 a g
  | f g f es d c bes a
  | bes f' bes8~ bes16 g f e
  %155
  | f a c8~ c16 b a b
  | c g c d e c d e
  | f8[ a, bes c]
  | d[ bes f d']
  | c[ a f c']
  %160
  | b[ d b g]
  | c[ c, d e]
  | f[ a, bes c]
  | << <a c f>4 \\ f4 >> r4
  | r8 f''[ d bes]
  %165
  | r8 f[ d bes]
  | << f'4 \\ { f8 f, } >> r4
  | << { <e' g c>4 r } \\ { c4 r } >>
  | \clef treble r8 c''[ a f]
  | \clef bass r8 c[ a f]
  %170
  | << c'4 \\ { c8 c, } >> r4
  <<
    {
  |   <g' c>4 <e g c~>
  |   c'8 a c f
    }
    \\
    {
  |   e,4 c
  |   f r
    }
  >>
  \clef treble
  <<
    {
  |   <c' f>4 <a c f>~
  |   f'8 d f bes
  %175.1
  |   <f b>4 <d g>
  |   \clef bass
      <b d> <g c>
    }
    \\
    {
  |   a4 f
  |   bes r
  %175.2
  |   d b
  |   g c,
    }
  >>
  | \clef treble r8 c'16 d e8 g
  | e c \clef bass c,4
  | \clef treble r16 c'16 d e f8 a
  %180
  | f c \clef bass c,4
  | r8 d'16 e f8 d16 e
  | f8[ d g, b]
  | c c,16 d e8 g
  | c c,16 d e8 f
  %185
  | g c,16 e g8 a
  | bes c,16 d e8 c
  | f16 a g f e d c bes
  | a c d e f g a bes
  | c4 c,
  %190
  | d r8 e
  | f[ a, bes c]
  | f,2\fermata
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
  \layout { }
  \midi { }
}
