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
  |   r16 c f8~ f <c e>
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
    r8 c'
  %31
  | s2



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
  | f16 a g f e d c bes
  %25
  | a c d e f g a bes
  | c4 c,
  | d r8 e
  | f[ a, bes c]
  | f, \clef treble
    s4.
  %30
  | s2
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
