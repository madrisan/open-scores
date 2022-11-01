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
  | s2
  }
  \repeat volta 2 {
  | s2
  | s2
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
  | s2
  }
  \repeat volta 2 {
  | s2
  | s2
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
    \tempo 4 = 50
  }
}
