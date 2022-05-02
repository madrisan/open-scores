\version "2.23.7"

Global = {
   \key f \major
   \time 4/4
}

VoiceI = \relative c' {
   \tempo \markup { \italic Vitement }
   | r16 c-. d-. e-.  f-. g-. a-. f-.  bes-. c-. bes-. a-.  g-. c-. bes-. c-.
   | a8[f]  f'8.[f16]  f8.\mordent[g16]  e8.\prall[f16]
   | f16[g f e]  d([e f a])  b,([c d g])  c,([d e g])
   | a,16 b c f  b, c d f  g, a b e  a, b c e
   %5
   | f,8[a]  d8.[d16]  d16 g, a b  c d e c
   | f16 g f e  d g f g  e8 c  c'8. c16
   | c8~[c32 b c a]  b8.b16  b8 e,  a8. a16
   | a8.[g32 f]  g8.g16  g8 c,  f8.f16
   | f16 a g f  e f g e  f g f e  d g f g
   %10
   | e c d e  f g a f  bes c bes a  g c bes c
   | a bes a g  f e d c  b g a b  c d e f
   | g8.\turn[a16]  d,8.\prall[c16]  c16 g a b  c d e c
   | f g f e  d g f g  e8 c  f8.\mordent[f16]
   | f8.g16  ees8.ees16  ees f, g a  bes c d bes
   %15
   | ees f ees d  c f ees f  d8 bes  <d g bes>8.<d g bes>16
   | <e g bes>8.<e g c>16  <e f a>8.<e f a>16  <d f a>8<d>8 << { g8. g16 } \\ { d8. d16 } >>
   | << { g8. a16 } \\ { c,8. c16 } >>  << { f8. f16 } \\ { c8. c16 } >>  << { f8. g16 } \\ { bes,8. bes16 } >>  << { e8. f16  } \\ {{ bes,8. bes16 }} >>
   | << { f'8 d,16 e } \\ a8 >>  f16 g a f  bes c bes a  g c bes a
   | a8 c,  << { f8. f16 } \\ { r8 r16 <c a> } >>  << f4 \\ { d16 c bes a } \\ g8 >>  << { e'8.e16 } \\ { g,16-4 c bes c } >>
   %20
   | << f4\fermata \\ a,4 >>  r16 f'' e f  c f d f  c f bes, f'
   | a, f' bes, f'  a, f' g, f'  f, f' g, f'  a, f' b, f'
   | << { e16 g, a b  c d d\prall c32d } \\ c16 >>  e8 f e d
   | << { r8 a' g f  e8 f g a } \\ { c,2~  c8 c b a } >>
   | << { d16 g, b d } \\ b16>>  << { b g b d } \\ r4 >>  << { f8 f  f f } \\ { r16 d, f a  f d f a } >>
   %25
   | << { f'8 f f f } \\ { b, d d d } >>  << { e e e e } \\ { g, g g g } \\ { d' d c c } >>
   | << { e e e e } \\ { f, f f f } \\ { c' c c c } >>  << { d d d d } \\ { f, f f f } \\ { g g g g } >>
   | << { d' c c b } \\ { f e d d } \\ { g g g g } >>  << { c16 g, a b } \\ { g' } \\ { e } >>  c16 d e c
   | f g f e  d g f g  e8 c  << { c' c } \\ { r8 e, } >>
   | << { c'8 b16 c } \\ d,4 >>  << { d'8 d } \\ { r8 b } >>  << { d8 c16 d } \\ g,4 >>  << { e'8 e } \\ { r8 c } >>
   %30
   | << { e8 d16 e } \\ a,4 >>  << { f'8 f } \\ { r8 a, } >>  << { f'8 e16 f } \\ b,4 >>  << { g'8 g } \\ { r8 b, } >>
   | << { g'16 b a g  fis g e fis } \\ c2~ >>  << { g'8 d } \\ { c16 c b a } >>  << { g'8. g16  } \\ { b,8. b16 } >>
   | << { g'8. a16 } \\ a,4 >>  << { f'8. f16 } \\ { a,8. a16 } >>  << { f'8. e32 d } \\ b!4 >>  << { e8. e16 } \\ { c8. c16 } >>
   | << { e16 g f e } \\ a,4 >>  d16 c b a  b8 g  << { c8. c16 } \\ { r8 r16 e, } >>
   | << { c'8. d16 } \\ { e,8. f16 } >>  << { b8. c16 } \\ { d,8. e16 } >>  << c'4 \\ e,4 >>  r16 c' b c
   %35
   | g16 c a c  g c f, c'  e, c' f, c'  e, c' d, c'
   | c,16 c' d, c'  e, c' fis, c'  << { b d, e fis } \\ g16 >>  g a a\prall g32 a
   | b8 c  b a  << { r8 ees' d c } \\ g2~ >>
   | << { bes8 c  d e! } \\ { g, g  f e } >>  << { a8 a } \\ { d,8 d16 e } >>  << { d'8. d16 } \\ { f,8. f16 } >>
   | << { d'8. e16 } \\ e,4 >>  << { cis'8. d16 } \\ r4 >>  << { d16 a b! cis  d e f d } \\ { r8 a,  d d } >>
   %40
   | << { g'16 a g f  e a g a  f g f e  d f g a } \\ { d,,8 cis16 d  e8 e  e d16 e  f8 f } >>
   | << { bes'16 c bes a  g c bes c  a bes a g  f e d cis } \\ { f,8 e16 f  g8 g  g f16 g  a8 a } >>
   | << d2~ \\ { a16 c! b! a  gis a fis gis } >>  << { d'16 d c b!  c b! c a } \\ a2~ >>
   | << bes4~ \\ { a8. a16 } >>  << { bes8. bes16 } \\ g4~ >>  << a4~ \\ { g8. g16 } >>  << { a8. a16 } \\ { f8. f16~ } >>
   | << { a16 c bes a } \\ { f16 e d c } >>  g' f e d  cis8 a  << { a'8. e16 } \\ d8 >>
   %45
   | << { f8. g16 } \\ d4 >>  e8. d16  d e f a  f g a d
   | g,16 a b! d  b c d g  c,,d e g  e f g c
   | f, g a c  a b! c f  b,,! c d f  d e f b!
   | e, fis gis b!  gis a b e  a, b! c e  g,! a bes e
   | fis, g a e'  f,! g a d  e, fis gis d'  e, gis a c
   %50
   | dis, e fis c'  d,! e f b!  cis, d e b'!  c,! d e a
   | b,! c d a'  b,! c d gis  << a4 \\ c, >>  r4
   | r2  r16 f' e d  c b! a c
   | f,16 e' d c  b! a gis b!  e, d' c b!  a g! f a
   | << { r8 gis16 a } \\ d,4 >>  << { b'!8 b } \\ { r8 gis } >>  << { b8 a16 b } \\ { gis8 a } >>  << { c8 c } \\ { r a } >>
   %55
   | << { c8 b!16 c  d8 d  d c16 b!  b8. a16 } \\ { a8 gis16 a  b!8 b  b a  gis4 } >>
   | << { a16 a c e  c a c e  a8 a  a a } \\ { a,16 r16 r8  r4  r16 f a c  a f a c } >>
   | << { a'8 a  a a  } \\ { d,8 f  f f } >>  << { g g  g g } { f e  e e } \\ { g,8 bes  bes bes } >>
   | << { g' g  g g  g f  f f } \\ { \stemUp \override NoteColumn.force-hshift = 0.2 e e  e e  e d  d d } \\ { \stemDown a8 a  a a  a a  a a } >>
   | << { f'16 g, bes d } \\ \once \override NoteColumn.force-hshift = #0.2 \stemUp d16 \\ { \once \stemDown g,16 } >>
     bes16 g bes d
     << { e8 d  d cis } \\ { d,8\rest \stemUp \override NoteColumn.force-hshift = 0.2 a'  a a } \\ { g8\rest \stemDown f e \override NoteColumn.force-hshift = 0.8 <e g> } >>
   %60
   | << { d'16 a, b cis } \\ { \stemUp a'16 } \\ \once \override NoteColumn.force-hshift = 0 \stemDown f16 >>

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

VoiceII = \relative c {
   | r1
   | r16 c d e  f g a f  bes c bes a  g c bes c
   | a8 f  f'8.[f16]  f8.[g16]  e8.\prall[e16]
   | e8 a,  d8.[d16]  d8.[e16]  c8.\prall[c16]
   %5
   | c16 e d c  b-1 a g-1 f  e4~  e16 d c_1 b
   | a g a f  g8 g'  c,16 g' a b  c d e c-5
   | f16 g f e  d g f g  c, d e g  f, g a c
   | b c d f  e, f g b  a b c e  d, e f a
   | g8 c,  c'8.c16  c8.d16  bes8.\prall[bes16]
   %10
   | bes8 c16 bes  a g f e  d c d bes  c8 c,
   | f4  r8 f'  g16 c b a  g f e d
   | c8 f  g g,  c,4  c''8.c16
   | c8.d16  bes8.\prall[bes16]  bes16 c, d e  f g a f
   | bes c bes a  g c bes c  a8 f  bes8.bes16
   %15
   | bes8.c16  a8.\prall[bes16]  bes16 d, e f  g a bes-2 g
   | c c, d e  f g a-3 f  bes-2 a-1 g f  e_1 d c bes
   | a bes c e  d e f a-2  g-1 g, a bes  c a bes-2 c-1
   | d,4  r8 d'8  g16-2 a g f-1  e-3 c d e
   | f g f e  d c bes a  bes8[g]  c[c,]
   %20
   | f8\fermata f'16 e  f8 g  a bes  a g
   | << { r8 d' c bes  a bes c d } \\ { f,2~  f8 f e d } >>
   | << g4 \\ c, >>  r16 c' b c  g c a c  g c f, c'
   | e, c' f, c'  e, c' d, c'  c, c' d, c'  e, c' f, c'
   | << { b8 r } \\ { g g, } >>  r8 g'  d r  r4
   %25
   | r16 g b d  b g b d  r c, e g  e c e g
   | a f, a c  a f a c  b g b d  b g b d
   | e,8 e'16 f  g8 g,  c,4  c'8. c16
   | c8. d16  b8. c16  c g a b  c d e c
   | f g f e  d g f g  e g a b  c d e c
   %30
   | \clef "violin" f g f e  d e f d  g a g f  e f g e
   | a8 g  a d,  g4~  g16 f! e d
   | cis a bes cis  d e f d  g a g f  e a g a
   | f4  r8 \clef "bass" f,~  f16 a g f  e d c b
   | a g a f  << { r8 g' } \\ g,4 >> c,8 c'16 b  c8 d
   %35
   | e8 f  e d  << { r8 a' g f } \\ c2~ >>
   | << { e8 fis g a } \\ { c, c bes a } >>  << d4 \\ g, >>  r16 g' fis g
   | d g ees g  d g c, g'  b, g' c, g'  b, g' a, g'
   | g,16 g' a, g'  b, g' cis, g'  f g f e  d e f d
   | g16 a g f  e a g a  f4  r8 b
   %40
   | e,4  r8 << cis'8 \\ a >>  << a4 \\ d, >>  r8 << d'8 \\ d >>
   | << d4 \\ g, >>  r8 << e'8 \\ c >>  << c4 \\ f, >>  r8 f'
   | b,!8 c16 d  e8 e,  a4~  a16 g f e
   | d16 bes c d  ees f g ees  cis d cis b!  a d c! d
   | g,8 r8  << { bes'16 a g f } \\ r4 >>  << e4 \\ { r16 bes a g } >>  << { a'8. a16 } \\ { f,16 e d cis } >>
   %45
   | << { a''8 b  cis4 } \\ { d,,8 g a a } >>  d,4  r8 d''8
   | b!8 g  r g  e c  r c'
   | a8 f  r f  d b!  r b'!
   | gis e  r e  c a  r cis
   | d d,  r f'  gis, e'  r a
   %50
   | b! a  b! gis  a g!  f! c
   | d b!  e e,  a16 e' fis gis  a b! c a
   | d e d c  b! e d e  c8 e,  a a
   | a8 gis16 a  b!8 b  b a16 b  c8 c~
   | c16 c b! a  << { r8 d } \\ { gis,16 fis e gis } >>  << { e'8 r } \\ { c,16 f! e d } >>  << { r8 e' } \\ { c,16 b! a c } >>
   %55
   | << { d'4  r8 f  e4 } \\ { fis,,16 e' d c  b! a gis b!  c,8 c'16 d  e8 e, } >>
   | a8 a'  a g  f r8  r4
   | r16 bes d f  d bes d f  r16 e, g bes  g e g bes
   | cis16 a, cis e  cis a cis e  f d, f a  f d f a
   | bes4  r8 bes'  cis, d  a' a,
   %60
   | d,4

% la si do re mi fa sol
%  a b  c  d  e  f  g
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
