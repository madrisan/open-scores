\version "2.23.7"

Global = {
   \key f \major
   \time 4/4
}

% la si do re mi fa sol
%  a b  c  d  e  f  g

VoiceI = \relative c' {
   \tempo \markup { \italic Vitement }
   | r16 c-. d-. e-.  f-. g-. a-. f-.  bes-. c-. bes-. a-.  g-. c-. bes-. c-.
   | a8[f]  f'8.[f16]  f8.\mordent[g16]  e8.\prall[f16]
   | f16[g f e]  d([e f a])  b,([c d g])  c,([d e g])
   | a,16 b c f  b, c d f  g, a b e  a, b c e
   | f,8[a]  d8.[d16]  d16 g, a b  c d e c
   | f16 g f e  d g f g  e8 c  c'8. c16
   | c8~[c32 b c a]  b8.b16  b8 e,  a8. a16
   | a8.[g32 f]  g8.g16  g8 c,  f8.f16
   | f16 a g f  e f g e  f g f e  d g f g
   | e c d e  f g a f  bes c bes a  g c bes c
   | a bes a g  f e d c  b g a b  c d e f
   | g8.\turn[a16]  d,8.\prall[c16]  c16 g a b  c d e c
   | f g f e  d g f g  e8 c  f8.\mordent[f16]
   | f8.g16  ees8.ees16  ees f, g a  bes c d bes
   | ees f ees d  c f ees f  d8 bes  <d g bes>8.<d g bes>16
   | <e g bes>8.<e g c>16  <e f a>8.<e f a>16  <d f a>8<d>8  <d g>8.<d g>16
   | <c g'>8.<c a'>16  <c f>8.<c f>16  <bes f'>8.<bes g'>16  <bes e>8.<bes f'>16
   | <a f'>8 d,16 e  f g a f  bes c bes a  g c bes a
   | a8 c,  f8.<f c a>16
     <<
       \relative { f'4 }
       \\
       \relative { d'16 c bes a }
     >>
     <<
       \relative { e'8.e16 }
       \\
       \relative { g16 c bes c }
     >>
   |
     <<
     f4\fermata
     \\
     a,4
   >>
}

% la si do re mi fa sol
%  a b  c  d  e  f  g

VoiceII = \relative c {
   | r1
   | r16 c d e  f g a f  bes c bes a  g c bes c
   | a8 f  f'8.[f16]  f8.[g16]  e8.\prall[e16]
   | e8 a,  d8.[d16]  d8.[e16]  c8.\prall[c16]
   | c16 e d c  b a g f  e4~  e16 d c b
   | a g a f  g8 g'  c,16 g' a b  c d e c
   | f16 g f e  d g f g  c, d e g  f, g a c
   | b c d f  e, f g b  a b c e  d, e f a
   | g8 c,  c'8.c16  c8.d16  bes8.\prall[bes16]
   | bes8 c16 bes  a g f e  d c d b  c8 c,
   | f4  r8 f'  g16 c b a  g f e d
   | c8 f  g g,  c,4  c''8.c16
   | c8.d16  bes8.\prall[bes16]  bes16 c, d e  f g a f
   | bes c bes a  g c bes c  a8 f  bes8.bes16
   | bes8.c16  a8.\prall[bes16]  bes16 d, e f  g a bes g
   | c c, d e  f g a f  bes a g f  e d c bes
   | a bes c e  d e f a  g g, a bes  c a bes c
   | d,4  r8 d'8  g16 a g f  e c d e
   | f g f e  d c bes a  bes8[g]  c[c,]
   | f8\fermata f16 e
}


\bookpart {
  \header {
    maintainer         = "Davide Madrisan"
    maintainerEmail    = "davide.madrisan@gmail.com"
  }
  \include "../header.ily"
  \header { title = "Suite IV" }

  \score {
    \new PianoStaff \with { instrumentName = "Prélude" }
    <<
      \accidentalStyle Score.piano-cautionary
      \new Staff {
        \Global
        \VoiceI
      }
      \new Staff {
        \Global
        \clef bass
        \VoiceII
      }
    >>
    \layout { }
    \midi {
      \tempo 4 = 100
    }
  }
}
