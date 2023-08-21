Global = {
  \key c \minor
  \time 2/2
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = \change Staff = "lower"
staffUpper = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \stemNeutral\slurNeutral\tieNeutral
  %1
  | c2 ees
  | g aes
  | b, r4 g'
  | fis2 f
  %5
  | e ees~
  | ees4 d des c
  | b a8 g c4 f
  | ees2 d\downprall
  | c4 c'-. fis,-. a-.
  %10
  | \stemUp\tieUp bes,-. d'-. g,-. bes-.
  | ees,-. g-. c, c'~
  | c bes8 a bes a g f!
  | e d e2 fis4
  | g8 d g a g f! ees! d
  % 15
  | c2~ c8 d ees c
  | d4 c' bes a
  | d g,~ g fis
  | g-. bes-. e,-. g-.
  | c, d8 e f2~
  % 20
  | f4 aes d, f
  | bes, c8 d ees2~
  | ees4 d8 c d c b a
  | g4 a8 b c b c4~
  | c bes!2 aes4
  % 25
  | g2 d'2\rest
  | bes8\rest \stemNeutral ees8 d c d f ees d
  | g2~ g8 des c bes
  | a g a c f2~
  | \stemUp f4 b, d8\rest c4 b8
  % 30
  | c8 bes! aes g f aes g f
  | ees4 ees' d des
  | c bes2 a4
  | d des c ces
  | bes aes2 g4
  % 35
  | c ces bes2
  | a4 aes g2~
  | g8 f ees d c ees d c
  | b4 bes'4\rest bes2\rest
  | \tuplet 3/2 { r8 g[ c] } \tuplet 3/2 { ees[ c ees] }
    \tuplet 3/2 { g[ des c]} \tuplet 3/2 { bes[ aes g] }
  % 40
  | aes4 aes4\rest r2
  | \tuplet 3/2 { r8 f[ bes] } \tuplet 3/2 { des[ bes des ]}
    \tuplet 3/2 { f[ ces bes] } \tuplet 3/2 { aes[ ges f] }
  | ges8 ees'4 d!8 ees bes c!4~
  | c8 bes4 a8 bes f g4
  | aes8 f'4 e8 f c d!4~
  % 45
  | d8 c4 b8 c g a4
  | \tuplet 3/2 { bes!8[ g bes] } \tuplet 3/2 { d[ bes d] } g2~
  | \tuplet 3/2 { g8[ fis e] } \tuplet 3/2 { fis[ a d] } c2~
  | c2~ c8 a bes4~
  | bes8 a bes g a2~
  % 50
  | a8 g aes fis g4. f8
  | e2~ e8 d ees c
  | d1~
  | d8 e fis g \stemNeutral fis e d c
  | bes g a bes a g fis e
  % 55
  | d4 aes'\rest b2\rest
  | d8\rest d ees f ees d c bes
  | a b c d \stemUp g,4 f'~
  | f8 d ees f b,4 aes'!~
  | aes8 f g aes g f ees d
  % 60
  | c ees f g f ees d c
  | g'4 g, c8 d ees4~
  | ees a, b8 c d4~
  | d g, a8 bes! c4~
  | c8 a bes c bes a! g fis
  % 65
  | g1~
  | g4 c2 bes4~
  | bes aes8 g aes2~
  | aes4. fis8 g2~
  | g4. e8 f aes bes c
  % 70
  | \stemNeutral bes aes g f g bes c des
  | c bes aes g aes c d! e
  | f2 aes
  | c des
  | e, f4\rest c'
  % 75
  | b2 bes
  | \stemUp\slurUp a aes~
  | aes4 g ges f
  | e d!8 c f4 bes
  | aes2 g
  % 80
  | fis4 ees!8 d g4 c
  | b bes a aes
  | g2~ g8 g a bes!
  | a g f4~ f8 f g aes
  | g f ees4~ ees8 c d ees
  % 85
  | d c f4~ f8 d ees f
  | ees d g4~ g8 ees f d
  | ees4 c'\rest c2\rest
  | \tuplet 3/2 { f,8\rest c[ f] } \tuplet 3/2 { aes[ f aes] }
    \tuplet 3/2 { c[ ges f] } \tuplet 3/2 { ees![ des c] }
  | des4 bes'\rest bes2\rest
  % 90
  | \tuplet 3/2 { f8\rest bes,[ ees] } \tuplet 3/2 { ges[ ees ges] }
    \tuplet 3/2 { bes[ fes ees] } \tuplet 3/2 { des[ ces bes] }
  | ces4 f\rest f\rest f8\rest aes,
  | g4 d'\rest d\rest d8\rest ges,
  | f4 f'\rest f\rest f8\rest bes,
  | a4 d\rest d\rest d8\rest aes
  % 95
  | g4 g'\rest g8\rest g f ees
  | d4 aes'\rest c8\rest ees, d c
  | d g, aes f g4 b'8\rest g
  | a b c4~ c8 a b d
  | g,2~ g8 fis g4~
  % 100
  | g8 c, f e f2~
  | f8 d ees! f ees d c b
  | c b c d c bes a g
  | a2. bes'!4
  | a d,2 c4~
  % 105
  | c8 a bes g e bes' a! ees
  | d4 d' cis c
  | b8 a bes4~ bes8 a ees'4~
  | ees8 d g4 a\rest a8 c,!
  | c( bes) f'4\rest f8\rest des c bes
  % 110
  | f'\rest bes, aes g bes\rest g f e
  | e_( f) f'\rest d! f\rest f f\rest d
  | a'8\rest c! bes aes a\rest aes g f
  | f( g) f\rest c c( b) f'4~
  | f ees8 aes, aes( g) des'4~
  % 115
  | des c8 ees d des c ces
  | ces( bes) f'4\rest f\rest f8\rest ees
  | ees( d) d\rest aes g! ges f fes
  | fes_( ees) aes\rest ees fes! f ges g
  | aes g ges f bes2~
  % 120
  | bes8 g! aes f ges g aes a
  | bes a aes g c2~
  | c8 a bes4 d2\rest
  | d4\rest g, fis f~
  | f ees8 d \tuplet 3/2 { ees[ f g]} \tuplet 3/2 { aes[ g f]}
  % 125
  | ees4 c' b bes
  | a aes2 g8 f
  | e[ d16 c] f8[ bes] aes4 g
  | \tuplet 3/2 { f8[ g aes] } \tuplet 3/2 { bes[ aes g] }
    \tuplet 3/2 { aes[ bes c] } \tuplet 3/2 { des[ c bes] }
  | c4 f2 ees4~
  % 130
  | ees8 des c bes aes ces bes aes
  | bes4 ees2 des4~
  | des8 c bes aes ges beses aes ges
  | aes4 des2 c4~
  | c bes2 aes8 g
  % 135
  | f2 bes4\rest bes~
  | bes8 aes g f e des' c bes
  | aes g f g aes2~
  | aes8 c bes aes g f' ees des
  | c bes aes bes c2~
  % 140
  | c4 b d2\rest
  | c ees
  | g aes
  | b, b'4\rest g
  | fis2 f
  % 145
  | e ees~
  | ees4 d des c
  | b4 a8 g c4 f
  | ees2 d4 des
  | c8 g' aes bes aes g fis g
  % 150
  | fis2~ fis8 fis g a
  | g f! ees d ees c d ees
  | d2~ d8 c bes a!
  | bes d g4 d8 g bes4~
  | bes8 g a bes~ bes[ a!16 g] fis[ g a8]
  % 155
  | d,4 d' g,8 a bes4~
  | bes e, fis8 g a4~
  | a d, e8 f! g4~
  | g8 e f g f e! d cis
  | d1~
  % 160
  | d4 g2 fis4
  | g d'-. g,-. bes-.
  | e,8 f g e c4 bes'~
  | bes aes!8 g aes g f ees!
  | d ees f g aes g aes4~
  % 165
  | aes g8 f g f ees d
  | c4 d8 ees f2~
  | \stemNeutral\tieNeutral f4 ees8 d ees d c bes!
  | a4 aes g f~
  | f2~ f4. ees8
  % 170
  | \stemUp\tieUp d4 g2 fis4
  | g8 d' ees f ees d c bes!
  | a c d ees d c b a!
  | g b c d c bes a g
  | fis2 bes4\rest \once\stemDown ees
  % 175
  | f,!8 d ees f ees d c b
  | c f g aes g f ees d
  | ees2_~ ees8 bes' aes g
  | \stemNeutral\tieNeutral fis ees' d4~ d8 aes'! g f!
  | e des' c4~ c f,~
  % 180
  | f8 d ees! c a ees' d aes
  | g fis g4 fis f
  | e8 d ees4~ ees8 d aes'4~
  | aes8 g c4 f\rest d8 f,!
  | \stemUp f ees b'\rest c b\rest c b\rest b
  % 185
  | \grace { \slurUp b4(} c2) d\rest
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \omit TupletBracket
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | s1*9
  %10
  | g2 bes
  | c \once\override NoteColumn.force-hshift = #1.3 ees
  | fis, g4\rest d'
  | cis2 c
  | b bes~
  % 15
  | bes4 a aes g
  | fis e8 d g4 c
  | bes2 a
  | g f4\rest \tieDown bes~
  | bes aes!8 g aes g f ees!
  % 20
  | d ees f g aes g aes4~
  | aes g8 f g f ees d
  | c4 d8 ees f ees f4~
  | f2~ f4. ees8
  | d4-. g-. c,-. f~
  % 25
  | f ees8 d ees d c bes!
  | \staffLower\stemUp\tieUp a8 g a2 b4
  | c8 g c d c bes! aes! g
  | f2~ f8 g aes! f
  | g4 \staffUpper\stemDown f'4 ees d
  % 30
  | g \staffLower\stemUp c,2 b4
  | c \staffUpper\stemDown\tieDown c'2 bes4~
  | bes8 aes g f ees ges f ees
  | f4 bes2 aes!4~
  | aes8 g f ees des fes ees des
  % 35
  | ees4 aes2 g4~
  | g f2 ees8 d
  | c4 \staffLower\stemUp c, f fis
  | \tupletUp\tuplet 3/2 { g8[ d g] } \tuplet 3/2{ b[ g b] }
    \tuplet 3/2 { d[ aes! g] } \tuplet 3/2 { f[ ees d] }
  | ees4 c'4\rest c2\rest
  % 40
  | \tuplet 3/2 { f,8\rest c[ f] } \tuplet 3/2 { aes[ f aes] }
    \tuplet 3/2 { c[ ges f] } \tuplet 3/2 { ees[ des c] }
  | des4 a'4\rest a2\rest
  | \staffUpper\stemDown b2\rest b4\rest b8\rest ees
  | d b\rest b4\rest b\rest b8\rest des
  | c b\rest b4\rest b\rest b8\rest f'
  % 45
  | e b8\rest b4\rest b\rest b8\rest ees
  | d b\rest b4\rest g'8\rest d' c bes
  | a ees\rest ees4\rest bes'8\rest bes' a! g
  | a d, ees c d4 bes16\rest a'! g fis
  | g2~ g8 e fis a!
  % 50
  | d,2~ d8 cis d4
  | g,8\rest g c b c2~
  | c8 a bes! c bes a g fis
  | g4 \staffLower\stemUp d, aes'\rest fis
  | g c\rest c2\rest
  % 55
  | c8\rest bes c d c bes a! g
  | f!4 f'\rest g\rest g,
  | f c'\rest c\rest \staffUpper\stemDown d'4
  | g, ees\rest ees2\rest
  | c ees
  % 60
  | g aes
  | \staffLower\stemUp b, d4\rest \staffUpper\stemDown g
  | fis2 f
  | e ees~
  | ees4 d des c
  % 65
  | \staffLower\stemUp b a8 g c4 \staffUpper\stemDown f
  | ees2 d
  | c~ c8 c d ees!
  | d c bes4~ bes8 bes c des
  | c bes \staffLower\stemUp\tieUp aes4~ aes8 f g aes
  % 70
  | g f bes4~ bes8 g aes bes
  | aes g c4~ c8 aes bes g
  | aes c d e f2~
  | f8 ees! des c bes2~
  | bes8 des c bes aes2~
  % 75
  | aes8 aes g f g2
  | \once\override Beam.positions = #'(4.5 . 5)
    \hideStaffSwitch f8 c' \staffUpper\stemDown\tieDown d e f2~ \showStaffSwitch
  | f8 f g aes bes c des bes
  | c1~
  | c4 b c8 d ees!4~
  % 80
  | ees8 c fis,4 g\rest ees'
  | d g2 f!4~
  | f ees8 d ees2~
  | ees4. cis8 d2~
  | d4. \staffLower\stemUp b,8
    \hideStaffSwitch c \staffUpper\stemDown ees f g \showStaffSwitch
  % 85
  | f ees d c d f g aes!
  | g f ees d ees g a b
  | \tupletDown\tuplet 3/2 { c[ g c] } \tuplet 3/2 { ees[ c ees] }
    \tuplet 3/2 { g[ des c] } \tuplet 3/2 { bes![ aes! g] }
  | aes4 ees\rest ees2\rest
  | \tuplet 3/2 { ees8\rest f[ bes] } \tuplet 3/2 { des![ bes des] }
    \tuplet 3/2 { f[ ces bes] } \tuplet 3/2 { aes![ ges f] }
  % 90
  | ges4 ees\rest ees2\rest
  | ees8\rest aes4 g8 aes ees f4~
  | f8 ees4 d8 ees bes c4
  | des8 bes'4 a8 bes f g!4~
  | g8 f4 e8 f c d4
  % 95
  | \tuplet 3/2 { ees!8[ c ees] } \tuplet 3/2 { g[ ees g] } c2~
  | \tuplet 3/2 { c8[ b a] } \tuplet 3/2 { b[ d g] }
    \once\shape #'(((0 . -0.5) (0 . -0.8) (0 . -1.6) (0 . -0.2))) Tie
    f2~
  | \once\shape #'(((0.5 . 0.8) (0 . 0.4) (0 . 0.4) (0 . 0.4))) Tie
    f2~ f8 d \tieDown ees4~
  | ees8 d ees c d2~
  | d8 c des b c4. bes8
  % 100
  | a2~ a8 g aes f
  | g1~
  | g4 fis'2 g4~
  | g8 e f! g f e d cis
  | d c! bes a g bes aes g
  % 105
  | fis4 d cis c
  | \hideStaffSwitch
    \staffLower\stemUp b8 a bes \staffUpper\stemDown g'8
    \staffLower\stemUp a, \staffUpper\stemDown g' fis \staffLower\stemUp a,
    \showStaffSwitch
  | \staffLower\stemUp g4. fis8 g4. \staffUpper\stemDown fis'8
  | g4. ees'8 d( cis) ees,\rest a
  | a( g) ees4\rest ees8\rest bes' aes g
  % 110
  | ees\rest des c bes \staffLower\stemUp c\rest bes aes g
  | \slurUp g( aes) \staffUpper\stemDown g'\rest ces g\rest ces g\rest ces
  | b8\rest aes' g f b,\rest f' ees d
  | \slurDown d( ees) ees,4\rest ees\rest ees8\rest aes
  | aes( g) c,4\rest c\rest c8\rest bes'
  % 115
  | bes ees, aes4 c,\rest ees8\rest d!
  | d( ees) c\rest bes' a aes g ges
  | ges( f) c\rest c \staffLower\stemUp b bes a aes
  | \slurUp aes( g!) g4 aes bes
  | ees, c'8\rest \staffUpper\stemDown c des d ees e
  % 120
  | f e f \staffLower\stemUp aes, bes4 c
  | f, d'8\rest \staffUpper\stemDown d ees e f fis
  | g fis g4 ees\rest ees8\rest d
  | cis c b bes a bes b c
  | d4 c2 b4
  % 125
  | c \staffUpper ees8\rest aes~ aes g16 f g4~
  | g8[ f16 ees] d8 c b4 bes~
  | bes \staffLower\stemUp aes8 g f4 e
  | f \staffUpper\stemDown c'8\rest e f4 ees8\rest g
  | aes4 ees8\rest aes g4 ges
  % 130
  | f ees2 d!4
  | g ees8\rest ges f4 fes
  | ees des2 c4
  | f ees8\rest fes ees2
  | d!4 des \tieDown c2~
  % 135
  | c8 c bes aes \staffLower\stemUp ges f e f
  | e2 f\rest
  | c'4\rest \staffUpper\stemDown f~ f8 e ees d
  | des4 \staffLower\stemUp g, bes b\rest
  | b\rest b8\rest \staffUpper\stemDown bes'~ bes aes g fis
  % 140
  | f! aes g f ees d c b
  | c ees\rest ees4\rest ees8\rest b' c d
  | es4 c2 f4~
  | f8 d ees f ees d c bes!
  | a c d ees d c b a!
  % 145
  | g b c d c bes a g
  | fis4 g2 aes!4~
  | aes8 d, ees f ees d c b
  | c f g aes~ aes aes g f
  | e2 ees
  % 150
  | d8 c' d ees d c bes a
  | bes g a bes aes g fis g
  | fis4 g8 a d,4 c\rest
  | g'2 bes
  | c ees
  % 155
  | fis, g4\rest d'
  | cis2 c
  | b bes~
  | bes4 a aes g
  | fis e8 d g4 c
  % 160
  | bes2 a
  | g4 g\rest g\rest des'
  | g, bes e,8 f g e
  | c4 d8 e f2~
  | f4 aes d,8 ees f d
  % 165
  | bes4 c8 d ees2~
  | ees4 d8 c d c \staffLower\stemUp b a
  | g4 a8 b \tieUp c2~
  | c4 b c d
  | g, a8 b c b c4~
  % 170
  | c8 b a b \staffUpper\stemDown c ees d c
  | d4 \staffLower\stemUp g, c8 d \staffUpper\stemDown\tieDown ees4~
  | ees \staffLower\stemUp\tieUp a, b8 c d4~
  | d g, a8 bes! c4~
  | c8 a bes c bes a! g fis
  % 175
  | g1~
  | g4 c2 b4
  | c8 g aes bes aes g f ees
  | d fis g a g f e d
  | c e f g f ees d! c
  % 180
  | b4 g' fis f
  | e8 d ees c' d, c' b d,
  | c4. b8 c4. b'!8
  | c4. \staffUpper\stemDown aes'8 g fis ees\rest d
  | d c c\rest ees c\rest d c\rest f
  % 185
  | \grace { f4_( } e2) e\rest
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | R1*22
  % 23
  | c2 ees
  | g aes
  % 25
  | b, r4 g'
  | \stemDown\tieDown fis2 f
  | e ees~
  | ees4 d des c
  | b a8 g c4 f
  % 30
  | ees2 d
  | c8 d ees f g ees f g
  | \stemNeutral aes4 bes c8 bes c4
  | bes8 c, des ees f d ees f
  | g4 aes bes8 aes bes4
  % 35
  | aes8 bes, ces des ees c d e
  | f ees! des c b d c bes
  | \stemDown a2 aes
  | g b
  | c e
  % 40
  | f,2 a
  | bes d!
  | \stemNeutral ees,4 f g! a
  | bes c des e,
  | f g a b
  % 45
  | c d ees! fis,
  | g2 bes
  | d ees
  | fis, d'4\rest d
  | cis2 c
  % 50
  | b bes~
  | bes4 a aes g
  | fis e8 d g4 c
  | \stemDown bes2 a
  | g4 e' fis a,
  % 55
  | bes g' a c,
  | d bes' c ees,~
  | ees8 d ees f ees d c b
  | c f g aes g f ees d
  | ees4 c c' g
  % 60
  | ees' c d,\rest f~
  | f8 d ees f ees d c bes!
  | \stemNeutral a c d ees d c b a!
  | g b c d c bes a g
  | fis4 r r ees'
  % 65
  | \stemDown f,!8 d' ees f ees d c b
  | \stemNeutral c d ees f g aes! g f
  | e c d e f4 f,
  | bes d ees! ees,
  | \stemDown aes c des2~
  % 70
  | des4 d ees2~
  | ees4 e f2~
  | f4 bes,\rest bes8\rest des' c bes
  | aes2~ aes8 aes g f
  | g2~ g8 g f ees!
  % 75
  | d!2 bes8\rest e d c
  | f2~ f8 f g aes
  | \tieUp bes1~
  | bes8 \tieDown g aes bes aes g f e
  | \stemNeutral f e f g f ees d c
  % 80
  | d a' bes c bes a g fis
  | g a bes c d ees d c
  | b g a b c4 c,
  | f a bes bes,
  | ees g aes!2~
  % 85
  | aes4 a bes2~
  | bes4 b c d,\rest
  | c2 e
  | f a
  | bes, d!
  % 90
  | ees g!
  | aes,4 bes c! d!
  | ees f ges a,
  | bes c d! e
  | f g aes! b,
  % 95
  | c2 ees
  | g aes
  | b, d4\rest g
  | fis2 f
  | e \tieUp ees~
  % 100
  | ees4 \tieDown d des c
  | b a8 g c4 f
  | ees2^\trill d^\trill
  | cis4 b8 a d4 g
  | fis f e ees
  % 105
  | d1~
  | d~
  | \stemDown d4 d cis c
  | \stemNeutral b8 a bes g' a, g' d fis
  | g,4 bes' e, g
  % 110
  | c, \stemDown d8 e f e f4~
  | f aes d, f
  | \stemNeutral bes,4 c8 d ees! d ees4^~
  | ees8 d ees f ees d c b
  | c b c des c bes aes g
  % 115
  | aes4 c ees f
  | g, bes d ees
  | f, aes \stemDown c d
  | ees, ees' d des
  | c aes g ges
  % 120
  | f f' e ees
  | d bes \stemNeutral a aes
  | g g' fis f
  | e ees2 d8 c
  | b[ a16 g] c8 f ees4 d
  % 125
  |  c8 d ees c des d ees e
  | f c f ees! d c des bes
  | \stemDown c2~ \tuplet 3/2 { c8[ bes c] } \tuplet 3/2 { des[ c bes] }
  | aes4 c f,2~
  | \stemNeutral f8 g aes bes c aes bes c
  % 130
  | des4 ees f8 ees f4
  | ees8 f, ges aes bes g aes bes
  | c4 des ees8 des! ees4
  | des8 ees, fes ges aes f g a
  | bes aes! ges f e g f ees
  % 135
  | \stemDown des4 f bes des
  | g, c4. bes8 aes g
  | f4 aes des f
  | bes, ees4. des8 c bes
  | aes4 c f aes
  % 140
  | d,! g4. f8 ees d
  | \stemNeutral ees c bes aes g f ees d
  | c c' d ees f g aes f
  | g4 g, c8 d \tieUp ees4~
  | ees \tieDown a, b8 c d4~
  % 145
  | d g, a8 bes! c4~
  | c8 a bes c bes aes g fis
  | g4 d'\rest d\rest g
  | aes! f \tieUp bes2~
  | bes4 g c2~
  % 150
  | c4 a d2~
  | d c~
  | c8 a bes c bes a g fis
  | g fis g a g f ees d
  | ees4 c \clef treble c''2~
  % 155
  | c8 \tieDown a bes c bes a g f!
  | e g a bes a g fis e!
  | d fis g a g f e d
  | cis4 cis\rest cis\rest bes'
  | \clef bass c,!8 a bes c bes a g fis
  % 160
  | g f! ees d c bes c d
  | g, g' fis g bes d g, bes
  | c2 d,4\rest c'
  | aes! c f, g8 aes
  | bes2 d,4\rest bes'
  % 165
  | g bes ees, f8 g
  | aes2 d,4\rest \stemDown d
  | ees g c, d8 e
  | f ees! d f ees d c b
  | c2 ees
  % 170
  | g aes!
  | b, b4\rest g'
  | fis2 f
  | e \tieDown ees~
  | ees4 d des c
  % 175
  | b a8 g c4 f
  | ees2 d
  | c1~
  | c2 bes!~
  | bes aes
  % 180
  | g1~
  | g~
  | g4 g fis f
  | e8 d ees c' \stemNeutral d, c' g b
  | c4 aes f g
  % 185
  | c,2 r
  \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 1079"
    title = \markup \abs-fontsize #14 \italic {
              \fill-line {
                \center-column {
                  \fill-line { "Regis Iussu Cantio Et Reliqua Canonica Arte Resoluta" }
                  \null
                }
              }
    }
    subtitle = \markup \abs-fontsize #22 { \smallCaps "Ricercar a 3" }
    subsubtitle = " "
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
    }
  }
  \midi { \tempo 2=54 }
}
