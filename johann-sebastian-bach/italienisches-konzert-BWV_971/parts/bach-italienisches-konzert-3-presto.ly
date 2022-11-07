Global = {
  \key f \major
  \time 4/4
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  | f4 f,2 g8 a
  | bes c d e f g a bes
    << {
  |   c4 <c a> <c g> <bes g>
  |   <a f>2 <g e>
  %5.1
  |   a r8 g e c
  |   f2 r8 ees c a
  |   d2 r8 c a f
  |   bes2 r8 bes g e
    } \\ {
  |   r4 f' e c
  |   c2 c
  %5.2
  |   r8 f e d c2
  |   r8 d c bes a2
  |   r8 bes a g f2~
  |   f8 f e d e2
    } >>
  | c8( d e) bes'-. a( bes c) f-.
  %10
  | e( f g) bes-. a( bes c) ees,-.
  | d( e f) c'-. bes a g f
  | e f g e c2
  | f4 f,2 g8 a
  | bes c d e f g a bes
    << {
  %15.1
  |   c4 <c a> <c g> <bes g>
  |   <a f>2 <g e>
  |   bes2 bes4 a
  |   g2 g4 a
  |   bes2 bes4 a
  %20.1
  |   g2 g4 a
  |   bes a g2
  |   c,4 bes a2
  |   r4 <c f,> <a f> g8 f
  |   f2
    } \\ {
  |   r4 f' e c
  |   c2 c
      \repeat unfold 4 {
  |     r8 f e f r f4 f8
      }
  |   r8 f4 f8 r f e d
  |   r8 g,4 f8 r g f e
  |   f4 c c <bes e>
  |   <a c>2
    }
  >> r2
  %25
  | r8 a'(^\p bes c bes a g f)
  | ees' c d4~ d8 bes a bes
  | e bes f' bes, g' bes, a g
  | a c bes a bes a g a
  | f4 a^\f c a
  %30
  | f bes8 c d4 f,
  | g bes e c
  | f8 e f4~ f8 c[^\p bes c]
  | a' bes a g f e d c
  | b g' b, a g d' e f
  %35
  | g a g f e d c b
  | a f' a, g f c' d e
  | f g f e d c b a
  | g f' g, f g f' a, f'
  | b, f' b, a b f' c f
  %40
  | d f d c d f c f
  | b, f' b, a b f' a, f'
  | g, f' g, f g f' a, f'
  | b, f' b, a b f' c f
  | d f d c b a g f
  %45
  | e g f e f e d c
  | bes' g a4~ a8 f e f
  | b f c' f, d' f, e d
  | e g f e f e d e
  | c4 e^\f g e
  %50
  | c f8 g a4 c,
  | d f b g
  | c g g' f
    << {
  |   e1~
  |   e8 g f e g f e f
  %55.1
  |   d1~
  |   d8 f e d f e d e
  |   c1~
  |   c8 e d c e d c d
  |   b2~ b4 b
  %60.1
  |   c2 r4 e
  |   f2. d4
  |   e2. fis4
  |   g1
    } \\ {
  |   r8 c, bes a bes a g a
  |   f4 r r2
  %55.2
  |   r8 a g f a g f g
  |   e4 r r2
  |   r8 g f e g f e f
  |   d4 r r2
  |   r4 d g2
  %60.2
  |   r4 g c2~
  |   c4 b8 a b2~
  |   b4 a8 g a4 c~
  |   c8 e d c d c b a
    } >>
  | g a b c d e f d
  %65
  | e4 c,2 d8 e
  | f g a b c d e f
    << {
  |   g4 <g e> <g d> <f d>
  |   <e c>2 <d b>
  |   f f4 e
  %70.1
  |   d2 d4 e
  |   f2 f4 e
  |   d2 d4 e
  |   f e d2
  |   r8 d4 d8 r d c b
  %75.1
  |   c4 <c g'> <c e> d8 c
  |   <c g>2
    } \\ {
  |   r4 c b g
  |   g2 g
      \repeat unfold 4 {
  |     r8 c b c r c4 r8
      }
  |   r8 c4 c8 r c b a
  |   g4 f e2~
  |   e4 g g f
  |   e2
    } >> r2
  | g8^\p e c e g e bes' e,
  | a f c f a f c' f,
  | g8 e c e g e bes' e,
  %80
  | a f c f a f bes f
  | c' a f a c a ees' a,
  | d bes f bes d bes f' bes,
  | c a f a c a ees' a,
  | d bes f bes d bes f' bes,
  %85
  | g' cis, bes cis g' cis, g' d
  | g e a, e' g e g d
  | g cis, bes cis g' cis, g' d
  | g e a, e' g e g d
  | g cis, bes cis g' cis, g' d
  %90
  | g f g e f e d e
  | f g a4 a, cis
  | d8 d[^\f c bes] a g f e
  | d e f g a b cis d
  | e f g e f e d e
  %95
  | f d cis b cis d e cis
  | d a g f g a bes a
    << {
      \repeat unfold 2
      {
  |     r4 <d f> <cis e> <d f>
  |     r4 <d f> <cis g'> <d f>
      }
  |   <cis e> d cis8 d e f
  |   g2~ g8 g f e
  |   f4 <d a'> <d f> e8 d
  |   d2 r
    } \\ {
  |   bes1
  |   a
  |   bes
  %100.2
  |   a
  |   bes4 a g r
  |   r e' a,2~
  |   a4 a~ a <g~ cis>
  |   g8 a g f g f e f
    } >>
  %105
  | r8 d' c bes c bes a c
  | bes2 b\upprall
    << {
  |   r8 g' f e f e d f
  |   e4 f g2~
  |   g8 c bes a bes a g bes
  %110.1
  |   a4 <g bes> <a c>2~
  |   <a c>8 f ees d ees d c ees
  |   d2 c
  |   bes4
    } \\ {
  |   c2~ c4 b
  |   c d e2~
  |   e4 f2 e4
  %110.2
  |   f2~ f~
  |   f8 r
      \change Staff=lower \stemUp bes,2 a4^~
  |   a8
      \change Staff=upper \stemDown bes a g a g fis a
  |   g4
    } >>
    bes,2 c8 d
  | ees f g a bes c d ees
    << {
  %115.1
  |   f4 <f d> <f c> <ees c>
    } \\ {
  %115.2
  |   r4 bes a f
    }
  >>
  | <d' bes f>2 <c a~ f>
    << {
      \voiceTwo a4
    }
    \new Voice {
  |   \voiceOne r8 d c bes c bes a c
    }
    >> \oneVoice
    <<
    \new Voice
    {
      \voiceOne
  |   bes4 <e g~> <cis g'> <d f~>
  |   f8 f e d e d cis e
  |   a,1~
  |   a8 a g f g f e g
  |   cis,2 r
    }
    {
      \voiceTwo
  |   g'2 a
  |   g1~
  %120.2
  |   g8 g f e f e d f
  |   bes,1~
  |   bes8 bes \stemDown a g \clef bass a g f e
  |   f g a b \clef treble cis d e f
    } >>
  | g a b cis d e f g
  << {
  %125.1
  | a4 <a f> <a e> <g e>
  | <f d>2 e
  } \\ {
  %125.2
  | r4 d cis a
  | a2 cis
  } >>
  | f8^\p g f e d c b a
  | g f' g, f g b c d
  | e f e d c b a g
  %130
  | f e' f, e f a b c
  | d e d c b a gis fis
    << {
  |   r4 gis8 fis gis4 a
  |   b1~
  |   b4 d8 c d4 f~
  %135.1
  |   f e8 d e4 a~
  |   a4 gis8 fis gis4 a
  |   b b8 a b4 a
  |   d,1~
  |   d2~ d4
    } \\ {
  |   e,1~
  |   e4 e8 d e4 fis
  |   gis2~ gis4 a
  %135.2
  |   b2 r4 a
  |   b e2 d8 c
  |   b4 r r2
  |   r4 gis8 fis gis4 b
  |   e,2~ e4
    } >> r4
  %140
  | r8 e fis gis a b c d
  | << {
      e4 <e c> <e b> <d b>
    } \\ {
      r4 a gis e
    } >>
  | <c' a e>2 <b gis e>
    << {
  |   d2 d4 c
  |   b2 b4 c
  %145.1
  |   r a' gis a
  |   e2. e4
  |   d4 c b2
  |   r8 b4 b8~ b b a gis
  |   a4 <a c e> <a c> b8 a
  %150.1
  |   <a e>4
    } \\ {
      \repeat unfold 2 {
  |     r8 a gis a r a4 a8
      }
  |   d4 c b a
  |   gis2. a4
  |   r8 a4 a8 r a gis fis
  |   e4 d c2~
  |   c4 e e d
  |   c
    } >> r4 r2
  | r2
    <<
    \new Voice
    {
      \voiceOne
      r8 f g a |
      r c d e f g a bes |
      c4 <c a> <c g> <bes g> |
      <a f>2 <g e> |
    }
    {
      \voiceTwo
      e,2~ |
      e1 |
      r4 f' e c |
      c2 c~ |
    }
    \new Voice
    {
      \voiceFour
      s2 bes2
    }
    >> \oneVoice
  %155
  | c8 a^\p f a c a ees' a,
  | d bes f bes d bes f' bes,
  | c a f a c a ees' a,
  | d bes f bes d2~
  | d8 b g b d b f' b,
  %160
  | e c g c e c g' c,
  | d b g b d b f' b,
  | e c g c e c f c
  | g' e c e g e bes' e,
  | a f c f a f c' f,
  %165
  | g e c e g e bes' e,
  | a f c a f2~
  | f8 a( bes c bes a g f)
  | ees' c d4~ d8 bes a bes
  | e bes f' bes, g' bes, a g
  %170
  | a c bes a bes a g a
  | f4 a^\f c a
  | f bes8 c d4 f,
  | g bes  e c
  | f8 a, g f d' c bes c
    << {
  %175.1
  |   a1~
  |   a8 c bes a c bes a bes
  |   g1~
  |   g8 bes a g bes a g a
  |   f1~
  %180.1
  |   f8 a g f a g f g
  |   e2. e4
  |   f2 r4 a
  |   bes2. g4
  |   a2. b4
  %185.1
  |   c1
    } \\ {
  %175.2
  |   r8 f, ees d ees d c d
  |   bes4 r r2
  |   r8 d c bes d c bes c
  |   a4 r r2
  |   r8 c bes a c bes a bes
  %180.2
  |   g4 r r2
  |   r4 g c bes
  |   a c f2~
  |   f4 e8 d e2~
  |   e4 d8 c d4 f~
  %185.2
  |   f8 a g f g f e d
    }
  >>
  | c8 d e f g a bes g
  | a c f,4~ f8 f g a
  | bes c d e f g a bes
    << {
  |   c4 <c a> <c g> <bes g>
  %190.1
  |   <a f>2 <g e>
  |   a2 r8 g e c
  |   f2 r8 ees c a
  |   d2 r8 c a f
  |   bes2 r8 bes g e
    } \\ {
  |   r4 f' e c
  %190.2
  |   c2 c
  |   f8 f e d c2
  |   r8 d c bes a2
  |   r8 bes a g f2~
  |   f8 f e d e2
    } >>
  %195
  | c8( d e) bes'-. a( bes c) f-.
  | e( f g) bes-. a( bes c) ees,-.
  | d( e f) c'-. bes a g f
  | e f g e c2
  | f4 f,2 g8 a
  %200
  | bes c d e f g a bes
    << {
  |   c4 <c a> <c g> <bes g>
  |   <a f>2 <g e>
  |   bes bes4 a
  |   g2 g4 a
  %205
  |   bes2 bes4 a
  |   g2 g4 a
  |   bes a g2
  |   c,4 bes a2
  |   r4 <c a f> <a f> g8 f
    } \\ {
  |   r4 f' e c
  |   c2 c
      \repeat unfold 4 {
  |	r8 f e f r f4 f8
      }
  |   r8 f4 f8 r f e d |
  |   r8 g,4 g8 r g f e |
  |   f4 c c <bes e> |
    }
  >>
  %210
  |  <a c f>1\fermata
  \fine
}

Lower = \relative c' {
  \clef bass
    << {
  |   a2 c
  |   f,4 bes a g
  |   f8 r r4 r2
    } \\ {
  |   f2 e
  |   d c4 bes
  |   a8 f g a bes c d e
    }
  >>
  | f g a bes c d e c
  %5
  | f4 f, e a
  | d d, c f
  | bes bes, a d
  | g, g'8 a g4 f
  | e g f a
  %10
  | g c, f a,
  | bes d g, bes
  | c8 d e f g a bes g
    << {
  |   a2 c
  |   f,4 bes a g
  %15.1
  |   f8 r r4 r2
    } \\ {
  |   f2 e
  |   d c4 bes
  %15.2
  |   a8 f g a bes c d e
    } >>
  | f8 g a bes c d e c
  | d4 d, d' c
  | bes bes, bes' c
  | d d, d' c
  %20
  | bes bes, bes' c
  | d c bes g
  | e c f c
  | a8 g a bes c4 c,
  | f4 g8 a bes c d e
  %25
  | f4^\f a c a
  | f bes8 c d4 f,
  | g bes e c
  | f c a c
  | f,8 a8[^\p bes c] bes a g f
  %30
  | ees' c d4~ d8 bes a bes
  | e bes f' bes, g' bes, a g
  | a c bes a bes a g a
  | f4^\f a c f~
  | f8 e d c b a g f
  %35
  | e4 g c e~
  | e8 d c b a g f e
  | d4 f a c~
  | c b8 a b4 c
  | d g,8 f g4 a
  %40
  | b4 b8 a b4 c
  | d g,8 f g4 a
  | b4 b8 a b4 c
  | d4 g,8 f g4 a
  | b8 d b a g f e d
  %45
  | c4 e g e
  | c f8 g a4 c,
  | d f b g
  | c g e g
  | c,8 e[^\p f g] f e d c
  %50
  | bes'8 g a4~ a8 f e f
  | b f c' f, d' f, e d
  | e g f e f e d e
  | c4^\f e g bes
  | a c a f
  %55
  | b, d f a
  | g b g e
  | a, c e g
  | f a f d
  | g,8-. g'( f e f e d e)
  %60
  | g,-. f'( e d e d c d)
  | g,-. e'( d c d c b c)
  | g-. d'( c b c b a b)
  | g-. c( b a b a g a)
  | b c d e f g a b
  %65
  | c4 r b r
    << {
  |   r4 f' e d
  |   c8 r r4 r2
    } \\ {
  |   a2 g4 f
  |   e8 c, d e f g a b
    } >>
  | c d e f g a b g
  | a4 a, a' g
  %70
  | f f, f' g
  | a a, a' g
  | f f, f' g
  | a g f d
  | b g c8 d e f
  %75
  | g f e f g4 g,
  | c,8 c'[^\p d e] f g a b
  | c4 g e c
  | c' a f c
  | c' g e c
  %80
  | f8 c a c f,4 r
  | f' c a f
  | f' d bes f
  | f' c a f
  | bes8 f d f bes,4 r
  %85
  \repeat unfold 2
  {
  |  e'4 g8 f e4 d
  | cis8 d cis b a b cis d
  }
  e8 f g a bes4 d,
  %90
  | cis8 a b cis d e f g
  | a g f g a4 a,
  | d,8 d'[^\p e f] g a b cis
  | d4 d,,2 e8 f
  | g a b cis d e f g
  %95
  | a4-. a-. a-. g-.
  | f2\upprall e
  \repeat unfold 2
  {
  | g8 d cis d g d f d
  | e d cis d e d f d
  }
  %101
  | g d f d e d cis b
  | a e' g, e' f, e' d cis
  | d a f d a'4 a,
  | d \clef treble d''2 c!4
  %105
    << {
  |   d4 g2 fis4
  |   \clef bass
      r8
      \change Staff=upper
      \stemDown g
      \change Staff=lower
      \stemUp f e f e d f
  |   e2 d
  |   c8 r r4 r2
    } \\ {
  |   bes!2 a
  |   g1~
  |   g
  |   r8 c, bes a bes a g bes
    } >>
  | a4 d g, c
  %110
  | f,8 \clef treble f'' ees d ees d c ees
  | \stemDown d2 c
  | bes4 \clef bass ees a, d~
    << {
  |   \voiceOne
      d8 r r4 r2
  |   r4 ees d c
  %115.1
  |   bes8 r r4 r2
    }
    \new Voice
    {
      \voiceTwo
  |   g8 bes aes g aes g f aes
  |   g2 f4 ees
  %115.2
  |   d8 bes c d ees f g a
    }
    >> \oneVoice
  %116
  | bes8 c d ees f ees d f
  | << { r4 g2 fis4 } \\ { bes,2 a } >>
  | r8 g f e f e d f
  | bes,4 d g e
  %120
  | cis a d f,
  | g bes e, g
  | \voiceTwo
    \stemUp a e cis a
  | d r \oneVoice r2 \stemNeutral
  | r8 f g a b cis d e
  %125
  | f d e f g a b cis
  | \clef treble
    d e f g a f g a
  | d,4 a' f d
  | b d b g
  | c4 g' e c
    \clef bass
  %130
  | a c a f
  | b f' d b
  | gis8 d' e, d e d' fis, d'
  | gis, d' gis, fis gis d' a d
  | b d b a b d a d
  %135
  | gis, d' gis, fis gis d' f, d'
  | e, d' e, d e d' fis, d'
  | gis, d' gis, fis gis d' a d
  | b d b a b d a d
  | gis, d' e, fis g a b c
  %140
  | d c b a gis fis e d
  | c a b c d e fis gis
  | a b c d e b gis e
  | f f' e f f, f' e, e'
  | d, f e f d d' e, e'
  %145
  <<
    {
  |   r8 a, gis a d a c a
  |   b a gis a b a c a
  |   d4 r r2
    }
    \\
    {
  |   f,2~ f4 e
  |   d2. c4
  |   f e d b
    }
  >>
  | gis4 e a8 b c d
  | e d c d e4 e,
  %150
  | a,8 a' b c d e f g
    <<
    \new Voice {
      \voiceOne
  |   r8 b c d s2
  |   s2 bes
  |   a8 r r4 r2
    }
    \new Voice {
      \voiceTwo
  |   a1
  |   g
  |   f8 f, g a bes c d e
    }
    \new Voice {
  |   s4 \voiceFour c'~ \voiceOne c2~
  |   c
    }
    >>
  | f,8 g a bes c d e c
  %155
  | f4 c a f
  | f' d bes f
  | f' c a f
  | bes2~ bes8 c bes a
  | g4 d b g
  %160
  | g' e c g
  | g' d b g
  | c8 c' b a g f e d
  | c4 g e c
  | c' a f c
  %165
  | c' g e c
  | f2~ f8 f g a
  | bes c d e f g a bes
  | c a f a bes d c d
  | g,4 bes e c
  %170
  | f c a c
  | f,8 a,[^\p bes c] bes a g f
  | ees' c d4~ d8 bes a bes
  | e bes f' bes, g' bes, a g
  | a c bes a bes a g a
  %175
  | f4^\f a c ees
  | d f d bes
  | e, g bes d
  | c e c a
  | d, f a c
  %180
  | bes d bes g
  | c,8-. c'( bes a bes a g a)
  | c,-. bes'( a g a g f g)
  | c,-. a'( g f g f e f)
  | c-. g'( f e f e d e)
  %185
  | c-. f( e d e d c d)
  | e f g a bes c d e
    <<
    \new Voice {
      \voiceOne
  |   r8 g a bes s2
  |   f4 bes a g
  |   f8 r r4 r2
    }
    \new Voice {
  |   s4 \voiceFour a~ \voiceOne <a c>2
    }
    \new Voice {
      \voiceTwo
  |   f2~ f4 e
  |   d2 c4 bes
  |   a8 f g a bes c d e
    }
  >>
  %190
  | f8 g a bes c d e c
  | f4 f, e a
  | d d, c f
  | bes bes, a d
  | g g,8 a g4 f
  %195
  | e g f a
  | g e' f a,
  | bes d g, bes
  | c8 d e f g a bes g
    << {
  | a2 c
  %200.1
  | f,4 bes a g
  | f8 r r4 r2
    } \\ {
  | f2 e
  %200.2
  | d c4 bes
  | a8 f g a bes c d e
    } >>
  | f g a bes c d e c
  | d4 d, d' c
  | bes bes, bes' c
  %125
  | d d, d' c
  | bes bes, bes' c
  | d c bes g
  | e c f c
  | bes8 a g f << c'2 \\ { r4 c, } >>
  %130
  | <f c'>1\fermata
  \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" {
      \Global
      \Upper
      \pageBreak
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    subtitle = "Presto"
  }
  \layout { }
  \midi {
    \tempo 4 = 300
 }
}
