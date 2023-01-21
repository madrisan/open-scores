Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  | \override MultiMeasureRest.staff-position = #0
    R1*10
  | r2 d
  | c4 f b, bes
  | a d g,2%\prallmordent
  | f4 g a8 g a4
  %15
  | d, d'( c bes)
  | a f'( e d)
  | cis2 r4 cis8( d16 e)
  | a,8 d c! bes c a bes g
  | a1~
  %20
  | a8 a g f g e f d'
  | f,4\prall e r8 cis' d4~
  | d8 b a g a c b4~
  | b8 gis fis e fis a gis b
  | a c b d c2~
  %25
  | c8 ees d c d bes c a
  | bes1~
  | bes8 d c bes c a bes g
  | a4 d gis, g
  | f bes e, ees
  %30
  | d g cis, c~
  | c8 c bes a bes d c ees
  | d a' g fis g bes a c
  | bes2~ bes8 g a f
  | g2 c4\rest cis
  %35
  | d8 g, f e f a g bes
  | a e d cis d f e g
  | f c b a b d cis e
  | d f e g f e d cis
  | \appoggiatura cis8 d2 d'
  %40
  | c4 f b, bes
  | a d g,2\prallmordent
  | f4 g a8 g a4
  | d,2 r4 ees'~
  | ees8 cis d d d b c c
  %45
  | c a bes! bes bes a g fis
  | g2. f!4~
  | f8 g f ees d ees c d
  | e! c' bes a g a f g
  | a g f e d e c d
  %50
  | b4 g' a bes!
  | gis e' r2
  | r8 e d c b c a b
  | cis4 d e8 d e4
  | a, bes8 a g f g4~
  %55
  | g8 c, d e f e g f
  | e2 a4\rest a~
  | a8 d, e f g f a g
  | f2 r4 d'~
  | d c2 bes4~
  %60
  | bes a g2
  | f8 c' d e f2
  | e4 a d, des
  | c f bes,2%\prallmordent
  | a4 bes c8 bes c4
  %65
  | f, r r bes~
  | bes8 a b c d c d4
  | g,8 b c d e f g g
  | g e f f f d ees ees
  | ees cis d d d c bes a
  %70
  | bes f bes2 a4
  | bes8 f' ees d c d bes c
  | d4 g2 fis4
  | g8 d c bes a bes g a
  | bes2 a
  %75
  | d4 g, f2
  | ees d4 ees
  | cis d g2~
  | g8 e f f e4 a
  | d4. e8 cis4 d
  %80
  | b c! r bes
  | gis a r d
  | c f b, bes
  | a d g,2\prallmordent
  | fis4 g a8 g a4
  %85
  | d,8 e fis g a g bes a
  | c b d cis e d f e
  | g d cis e a,4 g'
  | f a d,8 e f f
  | f dis e e e cis d d
  %90
  | d b c! c c a bes bes
  | bes g cis cis cis g e'e
  | e cis d4 r16 c[ bes a] g f' e d
  | cis2 r8 a b cis
  | d cis e d f4 bes,~
  %95
  | bes8 a d c ees d fis, c'
  | bes d ees g f d e cis
  | cis d d,4 d' e
  | cis d g2~
  | g8 e f f f2~
  %100
  | f8 e a a a4 gis
  | a d,8 b c4 b
  | a r r2
  | r4 c'8 a b gis a fis
  | gis e r4 r2
  %105
  | r4 e a, b
  | r c d e
  | r f e d
  | r c8 b c4 d
  | e1~
  %110
  | e8 a,8 c ees d bes c a
  | bes4 r8 g' fis4 f
  | r8 ees d c d4 ees~
  | ees8 d cis d e fis g g
  | g e f! f f d ees ees
  %115
  | ees cis d d d b c c
  | c a bes! bes bes g aes aes
  | aes fis g2 fis4
  | g2 fis8 g a4~
  | a g8 g g e f f
  %120
  | ees4 a8 a a g bes bes
  | a4 d8 d d b c c
  | b4 e fis gis
  | a b e, gis
  | a2 r
  %125
  | r4 a8 a a f g g
  | g e f f f e d cis
  | d f e d cis d b cis
  | d a bes! g e4 g~
  | g8 g f e fis d' gis, b~
  %130
  | b b a gis a f' b, d~
  | d d c b cis a' d, f
  | b,4 e a a,
  | g c f f,
  | e8 e' d c b c a b
  %135
  | c e d f e4 d~
  | d c b cis
  | d8 a g f e d e4
  | d8 e f g a g bes a
  | bes2 b4.\trill a16[ b]
  %140
  | c2 r
  | r8 f e d c d bes c
  | a c bes a g a f g
  | a2 g
  | f e
  %145
  | d4 r r2
  | \override MultiMeasureRest.staff-position = #2
    R1
  | r2 f'
  | e4 a dis, d
  | c f bes,2%\prallmordent
  %150
  | a4 bes c8 bes c4
  | f, f'~ f8 e d f
  | e4 a8 gis a4 dis,
  | e g cis, d
  | r e f g
  %155
  | r a g f
  | r e8 d e4 fis
  | g8 d e fis g fis a g
  | bes a g f ees d ees ees
  | ees cis d d d b c c
  %160
  | c a bes! bes bes a g fis
  | g bes a g fis g e fis
  | g d g4~ g8 bes a c
  | bes1~
  | bes4 a8 g a4 d~
  %165
  | d8 c b d cis d e4~
  | e8 d cis e d e f4~
  | f8 e d f e d cis b
  | cis4 f b,8 d cis e
  | a,4 a'8 a a fis g g
  %170
  | g e f! f f d e e
  | e4 a, d, e
  | b'\rest f g a
  | b\rest bes a g
  | b\rest f8 e f4 g
  %175
  | a8 g fis a d,4 d'~
  | d8 c bes d g,4 c~
  | c8 bes a c bes4 bes~
  | bes16[ c bes a] g bes c d ees[ f ees d] cis d e f
  | g[ a g f] e f g a bes8[ a16 g] f e d cis
  %180
  | d2. cis4
  | d c! b8 g' g fis
  | fis a a g g f ees d
  | cis4 f b, bes
  | a d g,2%\prallmordent
  %185
  | f4 g a8 g a4
  | d,1~
  | d16[ b cis d] e f g e cis4.\trill d8
  | d2\fermata b'\rest
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  %1
  | \change Staff = "lower"
    \stemUp
    a2\rest d
  | c4 f b, bes
  | a d g,2^\prallmordent
  | f4 g a8 g a4
  %5
  | d, d'^( c b)
  | c f^( e dis)
  | e2 e8\rest d! c b
  | c2 c8\rest b a gis
  | a c b d gis,
    \change Staff = "upper"
    \stemDown
    f' e d
  %10
  | c b c e a d, cis e
  | d f e g f c b f'
  | e4 c d g
  | \change Staff = "lower"
    \stemUp\tieUp
    c, a b e
  | a,8 c bes! d c2~
  %15
  | c8 bes a g a f g e
  | f
    \change Staff = "upper"
    \stemDown
    c'' bes a bes g a f
  | e4 bes' a g
  | f
    \change Staff = "lower"
    \stemUp\tieUp
    e, fis g~
  | g8
    \change Staff = "upper"
    \stemDown\tieDown
    g' f e f d e cis
  %20
  | d1~
  | d4 cis a'2
  | g4 c fis, f
  | e a d,2%\prallmordent
  | c4 d e8 d e4
  %25
  | \change Staff = "lower"
    \stemUp\tieUp
    a, fis g a~
  | a8
    \change Staff = "upper"
    \stemDown\tieDown
    a' g fis g e f d
  | e4 f g e
  | f a r8 b, cis e
  | a,4 f' r8 g, a c
  %30
  | \change Staff = "lower"
    \stemUp\tieUp
    f,4 d' d8\rest e, fis a
  | d,4 fis g a
  | bes a bes c
  | \change Staff = "upper"
    \stemDown\tieDown
    d8 f e d cis4 d
  | e8 d cis b cis4 e
  %35
  | a
    \change Staff = "lower"
    \stemUp\tieUp
    cis,, d bes'
  | e, a2 g4
  | c, f2 e4
  | a g\rest g\rest g
  | \appoggiatura g8 f2
    \change Staff = "upper"
    \stemDown\tieDown
    r4 bes'~
  %40
  | bes8 gis a a a fis g g
  | g e f! f f e d cis
  | d2. c!4~
  | c8 c bes a
    \change Staff = "lower"
    \stemUp\tieUp
    bes d c bes
  | a4
    \change Staff = "upper"
    \stemDown\tieDown
    r g'2
  %45
  | f4 d ees2~
  | ees8 d c bes a bes g a
  | b4 c2
    \change Staff = "lower"
    \stemUp\tieUp
    bes4~
  | bes8 a g f e f d e
  | f4 f\rest
    \change Staff = "upper"
    \stemDown\tieDown
    a'2
  %50
  | g4 c fis, f
  | e a d,2\prallmordent
  | c4 d e8 d e4
  | \change Staff = "lower"
    \stemUp\tieUp
    a,2 a4\rest g~
  | g8 f g a bes a c bes
  %55
  | \change Staff = "upper"
    \stemDown\tieDown
    a2 r4 d~
  | d8 g, a bes c bes d c
  | bes2 r4 e~
  | e8 cis d e f e g f
  | e2 d
  %60
  | c4 f2 e4
  | f2 r4 d'~
  | d8 b c c c a bes bes
  | bes gis a a a g! f e
  | f2. ees4~
  %65
  | ees8 d e! f g f g4
  | c, d8 e f e f4
  | e r r d
  | c a' bes
    \change Staff = "lower"
    \stemUp\tieUp
    bes,
  | a
    \change Staff = "upper"
    \stemDown\tieDown
    f' g
    \change Staff = "lower"
    \stemUp\tieUp
    g,
  %70
  | f8
    \change Staff = "upper"
    \stemDown\tieDown
    f' ees d c d bes c
  | d4 r r2
  | r4 bes' a2
  | d,4 g2 fis4
  | g8 d g g g e! f! f
  %75
  | f d ees ees ees cis d d
  | d b c! c c bes a g
  | a2 b4 cis
  | d8 a d4~ d8 b c! c
  | \change Staff = "lower"
    \stemUp\tieUp
    c a bes! bes a4
    \change Staff = "upper"
    \stemDown\tieDown
    a'
  %80
  | g c fis, f
  | e a d, b'~
  | b8 gis a a a fis g g
  | g e f! f f ees d c
  | d2 r4 c~
  %85
  | c bes c d
  | \change Staff = "lower"
    \stemUp\tieUp
    g, b cis d
  | a
    \change Staff = "upper"
    \stemDown\tieDown
    c\rest c\rest cis'
  | d r r c!
  | bes8 bes bes g a a a f
  %90
  | g g g e f4 d8 g
  | e4 r r g8 g
  | g e f4 r g
  | a2 r
  | r4 a d, e
  %95
  | r f g a
  | r bes a g
  | r f8 e f4 g
  | a2 b4 cis!
  | d a~ a8 f g g
  %100
  | g4
    \change Staff = "lower"
    \stemUp\tieUp
    e r8
    \change Staff = "upper"
    \stemDown\tieDown
    f' e d
  | c b a4~ a8 a4 gis8
  | a e a gis a c b d
  | c e a,4 d c
  | b d8 b c a b gis
  %105
  | a4. g!8 fis4 f~
  | f8 d e4 r a~
  | a8 gis d' gis, a c b f
  | e dis e4 r2
  | r8 e gis b a fis g e
  %110
  | f!4 fis g4. fis8
  | g4 r8 d' c a d aes
  | g4 aes~ aes8 g fis g
  | a!4 bes r bes
  | a d gis, g
  %115
  | f bes e, ees
  | d g cis, c
  | b bes a2%\prallmordent
  | g4 d'8 d d bes c c
  | c a bes bes a4 d8 d
  %120
  | d b c c bes4 g'8 g
  | g e f f e4 a8 a
  | a gis b a c b d c
  | e d f e d c b c
  | a2 r
  %125
  | r
    \change Staff = "lower"
    \stemUp\tieUp
    d,2
  | c4 f b, bes
  | a d g,2^\prallmordent
  | f4 g a8 g a4
  | d, d' c b
  %130
  | c
    \change Staff = "upper"
    \stemDown\tieDown
    f e d
  | e a g f~
  | f8
    \change Staff = "lower"
    \stemUp\tieUp
    dis e e e cis d d
  | d b c! c c b a gis
  | a2. gis4
  %135
  | a8 c b a gis a fis gis
  | a
    \change Staff = "upper"
    \stemDown\tieDown
    e' a2 g4~
  | g8 f e d cis d b cis
  | d4 r
    \change Staff = "lower"
    \stemUp\tieUp
    d\rest fis,
  | g8 a bes c d c e d
  %140
  | \change Staff = "upper"
    \stemDown\tieDown
    e f g a bes a c bes
  | c4 r r2
  | r8 a g f e f d e
  | f c f2 e4~
  | e d~ d8 b cis e
  %145
  | a, b cis d e d f e
  | g fis gis a b a c b
  | d c b a b c b d
  | d b c c c ais b b
  | b gis a a a g f e
  %150
  | f a g f e f d e
  | f a c bes c4 r
  | r2 c
  | b4 e ais, a
  | g c
    \change Staff = "lower"
    \stemUp\tieUp
    f,2%\prallmordent
  %155
  | e4 f g8 f g4
  | c,
    \change Staff = "upper"
    \stemDown\tieDown
    c'~ c8 bes! a c
  | bes4
    \change Staff = "lower"
    \stemUp\tieUp
    a g fis
  | g8 f! ees d c4 e\rest
  | e\rest d g, a
  %160
  | c\rest bes c d
  | d\rest
    \change Staff = "upper"
    \stemDown\tieDown
    ees d c
  | \change Staff = "lower"
    \stemUp\tieUp
    b\rest bes8 a bes4 c
  | \change Staff = "upper"
    \stemDown\tieDown
    d8 ees d cis d f e g
  | f e f4~ f8 e d f
  %165
  | e fis g4~ g8 f e g
  | f g a4~ a8 g f a
  | gis a b2 a8 gis
  | a e a a a fis g g
  | g e f!
    \change Staff = "lower"
    \stemUp\tieUp
    d b d cis e
  %170
  | a,4 d8 c! b4 bes~
  | bes8 gis a a a fis g g
  | g e f! f f ees d cis
  | d f e! d cis d b cis
  | d e f g a4 d
  %175
  | fis, a
    \change Staff = "upper"
    \stemDown\tieDown
    d fis
  | g4. f!8 e4 ees~
  | ees8 d c ees d4 d~
  | d
    \change Staff = "lower"
    \stemUp\tieUp
    bes8 bes bes4 g8 g
  | g4 bes8 bes e,4 a\rest
  %180
  | \change Staff = "upper"
    \stemDown\tieDown
    r8 f' f e e g g fis
  | fis a a g g4 bes!
  | a c bes8 a bes4~
  | bes8 gis a a a fis g g
  | g e f! f f ees d cis
  %185
  | d f e! d cis d b cis
  | d bes! a g a[ d16 c] bes a g8
  | \change Staff = "lower"
    \stemUp\tieUp
    f4 e8 d e f g4~
  | g fis^\fermata f2\rest
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | \override MultiMeasureRest.staff-position = #-4
    R1*5
  | b2\rest a'
  | g4 c fis, f
  | e a d,2\prallmordent
  | c4 d e8 d e4
  %10
  | a, g'^( f e)
  | f bes^( a gis)
  | a2 d,8\rest g! f e
  | f2 r8 e d cis
  | d2 r8 c! bes a
  %15
  | bes2 c
  | f,8 a g f g e f d
  | a' g' f e f d e cis
  | d1
  | cis4 a' d, f
  %20
  | \stemUp bes, a bes g
  | \stemNeutral a8 a' g f g e f d
  | e2 d4 g
  | cis, c b e
  | a,2 r4 a'8 g
  %25
  | fis4 d e fis
  | \once\stemDown g, a bes g
  | c d e c
  | f,8 g' f e f d e cis
  | d ees d c! d bes c a
  %30
  | \stemDown bes c bes a bes g a fis
  | g1~
  | g~
  | \stemNeutral g8 a g f g e f d
  | cis bes' a g a f g e
  %35
  | f4 \stemDown a d2
  | c4 f b, bes
  | a d g,2%\prallmordent
  | f4 g a8 g a4
  | d,2 r
  | R1*2
  %42
  | d'8\rest bes' a g fis g e fis
  | g4 d g2
  | f4 bes e, ees
  %45
  | d g \stemNeutral c,2^\prallmordent
  | bes4 c d8 c d4
  | g,2 r4 g'
  | \stemDown c,2 r4 c
  | f,2 r4 f'~
  %50
  | f8 dis e e e cis d d
  | d b c! c c b a gis
  | a2 r4 g'~
  | g8 f e d cis d b cis
  | d2 r4 e
  %55
  | f \stemNeutral f,8 g a4 b
  | c bes a fis'
  | g,8 f'! e d cis d b cis
  | d e f g a g bes a
  | g f a g f e g f
  %60
  | e f g a bes a c bes
  | a g f e d a' c, b
  | c1~
  | c2 r4 cis
  | d8 d' c! bes a bes g a
  %65
  | bes a g f e f d e
  | f e d c b c a b
  | c d e f g a bes! g
  | a4 d g, ges
  | f bes ees,2\prallmordent
  %70
  | d4 ees f8 ees f4
  | bes, bes'2 a4
  | bes8 g a bes c bes d c
  | bes4 ees c d
  | g, ees cis d
  %75
  | b c a bes
  | g aes fis g~
  | g8 e f! f f d e e
  | d4 d'\rest d2\rest
  | d4\rest g~ g8 e f f
  %80
  | f dis e e e cis d d
  | d b c! c c b a gis
  | a2 r4 d
  | cis c b c~
  | c8 bes! a g fis g e fis
  %85
  | g4 g'2 fis4
  | g f! e d
  | cis8 bes' a g f g e f
  | d e c d bes c a bes
  | g4 c fis, f
  %90
  | e a d, g'16 f e d
  | cis[ d e f] e d cis b a[ b cis d] cis b a g
  | f4 r16 d e32 f g a bes2\downmordent
  | a8 a' g f e f d e
  | f2 r8 e d cis
  %95
  | d2 r8 c! bes a
  | g4 g' a a,
  | bes2 r8 bes' a g
  | g e f f f d e e
  | d4 d' a b
  %100
  | a\rest c d e
  | r f e d
  | r c8 b c4 d
  | e1^~
  | e4 gis,8 f' a, e' b d
  %105
  | c b c4~ c8 b a gis
  | a4. g!8 f e d c
  | b4 e, fis gis
  | a4. gis8 a c b d
  | c2 c4\rest cis
  %110
  | d a bes! d
  | g,8 d' g bes a c b d
  | ees, g f aes b, d c ees
  | fis, a g bes cis,2
  | d1~
  %115
  | d~
  | d~
  | d4 d'8 d d b c c
  | c a bes! g d'4 d,
  | g~ g16 a bes c d4 c16( b a g)
  %120
  | c4 g16( fis e d) g4 g'16( f! e d)
  | cis4 d16( c b a) gis4 a16( g f e)
  | d4 c d e
  | f d e e'
  | a,8 e' a a a f g g
  %125
  | g e f f f d bes'4
  | a d gis, g
  | f bes e,2~
  | e4 d2~ \stemDown d8 cis
  | d4 r r2
  %130
  | R1
  | r2 a'
  | g4 c fis, f
  | e a d,2%\prallmordent
  | c4 d e8 d e4
  %135
  | a, r r b
  | c8 b c d e d f e
  | f d g2 f8 e
  | f4 a fis d
  | g2 r4 g
  %140
  | c,8 c' bes a g a f g
  | a bes c d e d f e
  | f4 bes, c c,
  | f8 g a bes c b d cis
  | d b, cis d e d f e
  %145
  | g f e d \stemNeutral cis d b cis
  | d c! b a gis a fis gis
  | a4 a'2 gis4
  | a c fis, gis
  | d\rest a' bes! c
  %150
  | d,\rest d' c bes
  | d,\rest a'8 g a4 b
  | \clef treble c8 d c b a c fis a
  | a fis g g g e f f
  | f dis e e \stemDown e d c b
  %155
  | c e d c b c a b
  | c d c bes! a4 d
  | g c, bes a
  | g2 \clef bass r8 bes a g
  | f4 bes e,! ees
  %160
  | d g c,2
  | bes4 c d8 c d4
  | g,2 r
  | r4 g'8 a g4 cis,
  | d d'~ d8 c bes a
  %165
  | g4. f8 e d cis bes'
  | a4. g8 f e d c'
  | b4. a8 gis b e,4
  | a1^~
  | a
  %170
  | r2 d,
  | c4 f b, bes
  | a d g,2%\prallmordent
  | f4 g a8 g a4
  | d, d'~ d8 c bes d
  %175
  | c4 c'~ c8 bes a c
  | bes4 bes,~ bes8 a g bes
  | a4 a'~ a8 g fis a
  | g4 g8 g g4 e8 e
  | e4 cis8 cis cis4 a\rest
  %180
  | \stemNeutral a\rest gis' a a,
  | d1^~
  | d2 d2\rest
  | d4\rest a d, e
  | c'\rest f, g a
  %185
  | c\rest bes a g
  | c\rest f,8 e f4 g
  | a1
  | \stemDown d,2\fermata r
  | \bar "|."
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 8"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus VIII" }
    subsubtitle = ""
  }
  \layout { }
  \midi { \tempo 4=140 }
}
