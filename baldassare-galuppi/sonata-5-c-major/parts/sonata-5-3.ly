Global = {
  \key c \major
  \clef treble
  \time 2/4
  \include "../global.ly"
}

rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. " } }

Upper = \relative c'' {
  \repeat volta 2 {
  %1
  | g'8.\trill[ fis32 g]  c16[ g f! e]
  | \appoggiatura e8 f2
  | f8.\trill[ e32 f]  << { \stemDown b16[ f e d] } \\ { \stemUp d'8 } >>
  | \appoggiatura f,8 e2
  %5
  | c8.\trill[ b32 c]  g'16[ e d c]
  | b16[ a e' d] a'[ f e d]
  | e16[ g e c] d[ f d b]
  | c4 r4
  | g'8.\trill[ fis32 g]  c16[ g f! e]
  %10
  | \appoggiatura e8 f2
  | f8.\trill[ e32 f]  << { \stemDown b16[ f e d] } \\ { \stemUp d'8 } >>
  | \appoggiatura f,8 e2
  | c8.\trill[ b32 c]  g'16[ e d c]
  | b16[ a e' d] a'[ f e d]
  %15
  | e16[ g e c] d[ f d b]
  | c4 r4
  | dis8( e) r8 g8-.
  | cis,8( d) r8 g8-.
  | b,8( c!) r8 g'8-.
  %20
  | ais,8( b) r8 d8-.
  | fis,8( g) r8 d'8-.
  | e,16[ g c g] c[ g e' c]
  | e[ d c b] a[ g fis g]
  | fis8[ e16 fis] d[ fis a d]
  %25
  | cis16[ g g' cis,] bes'[ bes, a g]
  | fis8[ e16 fis] d[ fis a d]
  | cis16[ g g' cis,] bes'[ bes, a g]
  | fis16[ a d a] fis4
  | r2
  %30
  | << { b4 c8.\trill b32 c } \\ { r8 d,[ e fis] } >>
  | << { b16[ d g d] g[ d b g] } \\ { g4 r4 } >>
  | << { b4 c8.\trill b32 c } \\ { r8 d,[ e fis] } >>
  | << { b16[ d g d] g[ d b g] } \\ { g4 r4 } >>
  | << { b4 c8.\trill b32 c } \\ { r8 d,[ e fis] } >>
  %35
  | << { b16[ d g d] e[ g, c a] } \\ { g4 s4 } >>
  | b16[ d b g] a[ c a fis]
  | g4 r4
  | << { b4 c8.\trill b32 c } \\ { r8 d,[ e fis] } >>
  | << { b16[ d g d] g[ d b g] } \\ { g4 r4 } >>
  %40
  | << { b4 c8.\trill b32 c } \\ { r8 d,[ e fis] } >>
  | << { b16[ d g d] g[ d b g] } \\ { g4 r4 } >>
  | << { b4 c8.\trill b32 c } \\ { r8 d,[ e fis] } >>
  | << { b16[ d g d] \stemDown e[ a c a] } \\ { g,4 s4 } >>
  | b'16[ g d b'] a16[ fis c a']
  %45
  | g16[ d b d] d16[ c a e']
  | d16[ b g d']  c16[ a fis a]
  | g4 r4
  }
  \repeat volta 2 {
  | g8[( bes)] r8 d-.
  | cis8[( d)] r8 e-.
  %50
  | f8[( a)] r8 c,!-.
  | b8[( c)] r8 d-.
  | e8[( g)] r8 b,-.
  | ais8[( b)] r8 cis-.
  | e8[( f!)] r8 a,
  %55
  | gis8[( a)] r8 b-.
  | c8[( e)] r8 g,!-.
  | fis8[( g)] r8 f'!-.
  | e8-.[ f16( g] f16[ e d c]
  | b4) r4
  %60
  | g'8.[\prall fis32 g] c16[ g f! e]
  | \appoggiatura e8 f2
  | f8.[\prall e32 f] << { \stemDown b16[ f e d] } \\ { \stemUp d'16 s8. } >>
  | \appoggiatura f,8 e2
  | c8.[\prall b32 c] g'16[ e d c]
  %65
  | b16[ a c b] d[ c e d]
  | a'16[ g f e] d16[ c b c]
  | b8[ a16 b] g[ b d g]
  | fis[ c fis c] c'[ ees, d c]
  | b16[ g d b]
    \change Staff = "lower" {
      \stemUp g16[ b
    }
    \change Staff = "upper" {
      \stemUp d g]
    }
  %70
  | fis16[ c c' fis,] ees'[ ees, d c]
  | b16[ d g d] b4
  | \stemDown
    e'!4 f!8.[\trill e32 f]
  | e16[ g c g]  c[ g e c]
  | e4 f8.[\trill e32 f]
  %75
  | e16[ g c g]  c[ g e c]
  | e4 f!8.[\trill e32 f]
  | e16[ g c g]  a[ c, f d]
  | e16[ g e c]  d[ f d b]
  | c4 r4
  %80
  | \stemUp
    e,4 f8.[\trill e32 f]
  | e16[ g c g] c[ g e c]
  | e4 f8.[\trill e32 f]
  | e16[ g c g] c[ g e c]
  | e4 f8.[\trill e32 f]
  %85
  | e16[ g c g] \stemDown a[ d f d]
  | e16[ g e c] d[ f d b]
  | c16[ g e g] \stemUp a[ f d a']
  | g16[ e c g'] f[ d b d]
  | c16[ e g c] c,8 r8
  %90
  | r2
  }
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

centeredDynamics = {
  %1
  | s32\mf s16. s4.
  | s2
  | s2
  | s2
  %5
  | s2
  | s2
  | s2
  | s2
  | s2
  %10
  | s32\p s16. s4.
  | s2
  | s2
  | s2
  | s2
  %15
  | s2
  | s2
  | s32\mf s16. s4.
  | s2
  | s2
  %20
  | s2
  | s2
  | s2
  | s2
  | s2
  %25
  | s32\< s32 s8. s8\! s16\> s16
  | s8 s8\! s4\p
  | s64\rit s64\startTextSpan s16. s4.
  | s8 s8\stopTextSpan s4
  | s2
  %30
}

Lower = \relative c' {
  \repeat volta 2 {
  %1
  | << { c4( e) } \\ c2 >>
  | << { c4( d) } \\ c2 >>
  | << { b4( d) } \\ b2 >>
  | << { b4( c) } \\ b2 >>
  %5
  | << { a4-. e-. } \\ { }>>
  | << { f4\( d' } \\ f,2 >>
  | << { c'4 b } \\ g2 >>
  | << { c16\)(
         \override Slur.direction = #DOWN
	 g' f g e g d g } \\ { }>>
  | << { c,4)( \revert Slur.direction e) } \\ c2 >>
  %10
  | << { c4( d) } \\ c2 >>
  | << { b4( d) } \\ b2 >>
  | << { b4( c) } \\ b2 >>
  | << { a4-. e-. } \\ { }>>
  | << { f4 d'( } \\ f,2 >>
  %15
  | << { c'4 b } \\ g2 >>
  | \clef bass
    << { c16) g f g e g d g } \\ { } >>
  | << { \stemDown c,4 c4\rest } \\ { c'4 \stemUp g'^. } >>
  | << { b,4 g'^. } \\ b,2 >>
  | << { a4 g'^. } \\ a,2 >>
  %20
  | << { g4 g'^. } \\ g,2 >>
  | << { b,4 g'^. } \\ b,2 >>
  | c4 r4
  | c4( cis4
  | d2)
  %25
  | ees2(
  | d2)
  | ees2(
  | d8) r8 d16[ fis a d]
  | d,4 r4
  %30
  | g2~
  | g2
  | g2~
  | g2
  | g2~
  %35
  | g4 c4
  | d4 d,4
  | g16[ d' c d] b[ d a d]
  | g,2~
  | g2
  %40
  | g2~
  | g2
  | g2~
  | g4 c4-.
  | d4-. d,4-.
  %45
  | g4-. c,4-.
  | d4-. d,4-.
  | g4 r4
  }
  \repeat volta 2 {
  | \clef treble
    << { g''4( bes) } \\ g2 >>
  | << { g4( a) } \\ g2 >>
  %50
  | << { f4( a) } \\ f2 >>
  | << { f4( g) } \\ f2 >>
  | << { e4( g) } \\ e2 >>
  | << { e4( fis) } \\ e2 >>
  | << { d4( f!) } \\ d2 >>
  %55
  | << { d4( e) } \\ d2 >>
  | << { c4( e) } \\ c2 >>
  | << { \stemDown c4( b) } \\ { \stemUp d2 } >>
  | << { r8 g4( fis8) } \\ { c4( a } >>
  | << { g16[ g' f! g] e[ g d g] } \\ { g,4) s4 } >>
  %60
  | << { c4( e) } \\ c2 >>
  | << { c4( d) } \\ c2 >>
  | << { b4( d) } \\ b2 >>
  | << { b4( c) } \\ b2 >>
  | a4 e
  %65
  | f2
  | f4 fis
  | g2
  | \clef bass
    aes2(
  | g4) r4
  %70
  | <aes aes,>2(
  | <g, g'>8) r8 \stemDown g16[ b d g]
  | \clef treble
    << { c'8\rest g([ a! b] } \\ c,2~ >>
  | << { c'4) b4\rest } \\ c,2 >>
  | << { c'8\rest g([ a b] } \\ c,2~ >>
  %75
  | << { c'4) b4\rest } \\ c,2 >>
  | << { c'8\rest g([ a b] } \\ c,2~ >>
  | << { c'4) s4 } \\ { c,4 f } >>
  | g4 \clef bass g,
  | r16 g[( f g] e[ g d g])
  %80
  | << { c8\rest g([ a b] } \\ c,2~ >>
  | << { c'4) b4\rest } \\ c,2 >>
  | << { c'8\rest g([ a b] } \\ c,2~ >>
  | << { c'4) b4\rest } \\ c,2 >>
  | << { c'8\rest g([ a b] } \\ c,2~ >>
  %85
  | << { c'4) \stemDown f,-.( } \\ { c4 s4 } >>
  | << { \stemDown g'4-. g,4-. } \\ { } >>
  | << { \stemDown c4-.) f-.( } \\ { } >>
  | << { \stemDown g4-. g,4-. } \\ { } >>
  | << { \stemDown c8) r8 c16[ e g c] } \\ { } >>
  %90
  | \stemUp c,4-> r4
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
       "Allegro assai"
    }
  }
  \layout {
  }
  \midi {
    \tempo 4 = 160
  }
}
