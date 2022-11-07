Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

Upper = \relative c''' {
  \clef treble
  \set baseMoment = #(ly:make-moment 1/8)
  | R2.
  | R |
  | R |
  | a4~\mordent a16 g( f e d cis d) f~
  %5
  | f32 e d16 e8~ e16 g a bes~ bes cis,( d e)
  | a,32( g f16) g8~ g16 a bes cis~ cis d8 e16~
  | e g, f\prall e f bes a\prall g
    \set subdivideBeams = ##t
    a b32( cis d e f g)
    \set subdivideBeams = ##f
  | f e d e f16 d \grace { c( } bes2)~
  | \set subdivideBeams = ##t
    bes16 a32 g f g e16
    \grace { e8( } a2)^~
  %10
  | a16 b32 cis d cis b a
    \set subdivideBeams = ##f
    d16 bes a\prall g~ g32 a g fis g16. g32
  | \set subdivideBeams = ##t
    g16 e'8.~ e32 d cis d e d cis b
    \set subdivideBeams = ##f
    a16 g~ g32 bes a g
  | \set subdivideBeams = ##t
    f32 g f e f a cis,16
    \set subdivideBeams = ##f
    cis16( d) r8 r d'8~
  | d16 c bes\prall a bes g bes d g d bes'8~
  | \set subdivideBeams = ##t
    bes32 c bes a bes g a bes f16( e) r8 r c32 d e16~
  %15
  | e32 bes c d c bes a g a f g a bes c d e f e d c a'8~\mordent
    \set subdivideBeams = ##f
  | a16 d, d32\prall c d16 d g8.~ g4~
  | \set subdivideBeams = ##t
    g32 bes( a g f e d c)
    \set subdivideBeams = ##f
    c16 f8.~ f4~\upprall
  | f32 e d e f16 d c32 bes a16 bes8~\mordent bes32 c bes a bes16. bes32
  | \set subdivideBeams = ##t
    bes16 g'8.~ g32 f e f g f e d
    \set subdivideBeams = ##f
    c16 bes32 a bes16. g'32
  %20
  | \set subdivideBeams = ##t
    bes,16( c) a'8~ a32 g f g a g f e d c bes a g f e f
    \set subdivideBeams = ##f
  | f16 e~ e32 g f e bes' c bes a bes16 c~ c d8 e16~
  | \set subdivideBeams = ##t
    e32 g f e f c d e f e f g f g a g a bes a bes c a bes c
    \set subdivideBeams = ##f
  | c16 f,8 e16~
    \set subdivideBeams = ##t
    e32 d e f e g f e
    \set subdivideBeams = ##f
    d c bes a bes16. g'32
  | \set subdivideBeams = ##t
    g f e g f e d f e d c e d c bes d c bes a c bes a g bes
    \set subdivideBeams = ##f
  %25
  | bes16 c,8 e16 g bes d c~ c32 bes a g a16 c~
  | c32 g f e f16 d'
    \set subdivideBeams = ##t
    a32 bes a g a g f g
    \set subdivideBeams = ##f
    g8.\upprall f32 g
  | f4 r r
  | r f'2~\mordent
  | f16 e32 d cis16 d g,32 a bes8 bes16~
    \set subdivideBeams = ##t
    bes32 c bes a bes c bes a
    \set subdivideBeams = ##f
  %30
  | bes16 g'8 cis,16~ cis e8 g16~ g bes8 a16~
  | a32 g f e f16 d~
    \set subdivideBeams = ##t
    d32 cis d e d cis b a~ a16 d8 f16~
    \set subdivideBeams = ##f
  | f32 g f e f16 bes~ bes a8 g16
    \set subdivideBeams = ##t
    g f32 e d c bes a
    \set subdivideBeams = ##f
  | g b d f~ f16 e~ e32 d c b c16 g~ g c8 e16~
  | e32 f ees d ees16 c'~ c32 bes a16~ a32 g f16~
    \set subdivideBeams = ##t
    f32 ees d ees f ees d ees
  %35
  | f, a g f c' bes a ees' d cis d8.~ d32 d, cis d e f g a
  | bes d bes a bes d bes a g fis g8.~ g32 bes g fis g e' g, f
    \set subdivideBeams = ##f
  | g16( bes cis e~)
    \set subdivideBeams = ##t
    e32 d c d e d c b
    \set subdivideBeams = ##f
    a16 g32 f! g16. e'32
  | g,16( f) f'8~
    \set subdivideBeams = ##t
    f32 e d e f e d c!
    \set subdivideBeams = ##f
    bes16 a32 g a16. f'32
  | a,16( g) g'8~
    \set subdivideBeams = ##t
    g32 f e f g f e d
    \set subdivideBeams = ##f
    cis16 bes32 a bes16. g'32
  %40
  | bes,16( a8) cis16~ cis d8 e32 f g a bes a bes16. bes32
  | bes16 cis,8( d32 e) e16 g,8( a32 bes) bes e f g~ g16 bes,
  | a32 d e f~ f16 gis,~
    \set subdivideBeams = ##t
    gis32 b a gis a b cis d e bes a gis a g fis g
  | g4~\mordent g32 a cis e g bes a16~
    \set subdivideBeams = ##f
    a32 g f e f16 a~
  | a32 e d cis d16 bes'
    \set subdivideBeams = ##t
    f32 g f e f e d e
    \set subdivideBeams = ##f
    e8.\upprall d32 e
  %45
  | \set subdivideBeams = ##t
    d8 c32( d ees16~) ees32 d c16~ c32 bes a16~
    a32 g fis e d cis d16~
    \set subdivideBeams = ##f
  | \set subdivideBeams = ##t
    d16 e32 fis g f g a bes g bes c d a cis d e f g a bes d, cis d
    \set subdivideBeams = ##f
  | d16 g,~ g32 a g f g16 cis32 d e16 g, f32 a b cis d16 bes
  | cis16 a8 d,32 g
    \set subdivideBeams = ##t
    f16~ f64 g f e f e d e d cis d e
    \set subdivideBeams = ##f
    e8.-\upprall d32 e
  | d4 r r
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

LowerOneMvtII = \relative c' {
  | f8 r r f g a
  | bes r r a g f
  | e r r g f e
  | f r r f g a
  %5
  | bes r r a g f
  | e r r g f e
  | f r r e d cis
  | d r r f e d
  | e r r e d cis
  %10
  | d r r d cis b
  | cis r r cis d e
  | f r r f g a
  | bes r r a g f
  | e r r e f g
  %15
  | a r r g f ees
  | d r r d c bes
  | c r r c bes\prall a
  | bes r r a g f
  | e r r e f g
  %20
  | a r r f g a
  | bes r r g a bes
  | c r r c bes a
  | bes r r bes a g
  | a r r a g f
  %25
  | g r r g a e
  | f4~ f8 e16 d e8 bes'
  | a r r a b cis
  | d r r f g a
  | bes r r a g f
  %30
  | e r r g f e
  | f r r f g a
  | bes r r bes, c d
  | e r r e f g
  | a r r a, bes c
  %35
  | d r r c bes a
  | g r r f e d
  | cis r r cis d e
  | f r r d e f
  | g r r e f g
  %40
  | a r r a g f
  | g r r g f e
  | f r r f e d
  | e r r e f cis
  | d4~ d8 cis16 b cis8 g'
  %45
  | fis r r fis g a
  | bes r r a g f
  | g r r e f a
  | d,2~ d16 cis g'8~
  | g8 f d4\rest d4\rest
}
LowerTwoMvtII = \relative c' {
  | d8 d, d \clef treble d' e f
  | g \clef bass d, d \clef treble f' e d
  | cis \clef bass d, d \clef treble e' d cis
  | d \clef bass d, d \clef treble d' e f
  %5
  | g \clef bass d, d \clef treble f' e d
  | cis \clef bass d, d \clef treble e' d c
  | d \clef bass d, d g f e
  | d d, d d'' c bes
  | c e, e c' bes a
  %10
  | bes bes, bes bes' a g
  | a a, a a' b cis
  | d d, d \clef treble d' e f
  | g \clef bass g, g \clef treble f' e d
  | c \clef bass c, c \clef treble c' d e
  %15
  | f \clef bass f, f \clef treble e' d c
  | bes \clef bass bes, bes bes' a g
  | a a, a a' g f
  | g g, g f' e d
  | c c, c c' d e
  %20
  | f c, c d' e f
  | g c,, c e' f g
  | a c,, c a'' g f
  | g c,, c g'' f e
  | f c, c f' e d
  %25
  | e c, c e' f c
  | d bes c2
  | f8 f, f g' f e
  | d d, d \clef treble d'' e f
  | g \clef bass d, d \clef treble f' e d
  %30
  | cis \clef bass d, d \clef treble e' d c
  | d \clef bass d, d \clef treble d' e f
  | g \clef bass g,, g g' a bes
  | c c, c c' d e
  | f f,, f f' g a
  %35
  | bes bes, bes a' g f
  | e e, e d' cis b
  | a a, a a' b cis
  | d a, a b' cis d
  | e a,, a cis' d e
  %40
  | f a,, a f'' e d
  | e a,, a e'' d cis
  | d a, a d' cis b
  | cis a, a cis' d a
  | bes8 g a2
  %45
  | d8 d, d d' e fis
  | g d, d f' e d
  | e d, d cis' d f
  | b, bes a gis a4
  | d s s
}

Lower = \relative c' {
  \key d \minor
  \clef bass
  << \LowerOneMvtII \\ \LowerTwoMvtII >>
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
    subtitle = "Andante"
  }
  \layout { }
  \midi { }
}
