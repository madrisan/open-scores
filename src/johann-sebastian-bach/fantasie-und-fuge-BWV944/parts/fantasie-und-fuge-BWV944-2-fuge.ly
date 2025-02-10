Global = {
  \key a \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  \tempo \markup { \abs-fontsize #14 \italic "Fuga." }
  | a16 c b c e b c d e, d' c b
  | c d c b a e' f g a g f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  %5
  | d c b c d c b a gis b a gis
  | a e a c e a, c e a g a fis
  | g e fis g dis4.\prallmordent dis8
  | e4 r8 b' g b
  | a c fis, c' d, c'
  %10
  | g b e, b' c, b'
  | fis a dis, a' b, a'
  | g4 r4 g~
  | g16 e f g a,8 g' cis,! g'
  | f4 r f~
  %15
  | f16 d e f g,8 f' b, f'
  | e16 f e d c b a g fis a b c
  | d e d c b a gis fis e gis a b
  | c4 b4. b8
  | a4 g'4\rest a8\rest c
  %20
  | c4 b\rest b8\rest b
  | b4 b\rest b8\rest a
  | a4 a8\rest f e d
  | c2 d8\rest c
  | b2 d8\rest bes
  %25
  | a2 d4~
  | d16 e, gis b e b e gis b f e d
  | c4 c r
  | r c r
  | r c r
  %30
  | r16 c b a f' e d c b d c b
  | e4 r r16 d c b
  | c4 r16 c b a gis4
  | a4 r r
  | R1*3/4*15
  | \override MultiMeasureRest.staff-position = #4
    R1*3/4
  | \override MultiMeasureRest.staff-position = #6
    R1*3/4
  | \override MultiMeasureRest.staff-position = #2
    R1*3/4*2
  | \override MultiMeasureRest.staff-position = #0
    R1*3/4
  %54
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e cis
  %60
  | d2.~
  | d~
  | d4 c~ c16 bes c a
  | ees'2.~
  | ees4 d~ d16 c d b
  %65
  | f'2.~
  | f4 ees~ ees16 d e cis
  | g'2.~
  | g4 f~ f16 e f d
  | bes'4~ bes16 a g f e g f e
  %70
  | f4~ f16 e d c b d c b
  | cis4~ cis16 d cis d e4~
  | e8 d4 d cis8
  | d4 r r8 f
  | f4 r r8 e
  %75
  | e4 r r8 d
  | d4 r8 bes a g
  | f4 f d'8\rest a
  | d4 d r8 d
  | cis8\prall d e2~
  %80
  | e8 a, d4. cis8
  | d4 r f~
  | f16 d e f g,8 f' bes, f'
  | e4 r ees~
  | ees16 c d ees f,8 ees' a, ees'
  %85
  | d16 ees d c bes8 r r4
  | e16 f e d cis8 r r4
  | \stemNeutral a'16 f e d g e f g a, g' f e
  | f g d e d4~ d16 d e f
  | g e d c f d e f g, f' e d
  %90
  | e f e d c4~ c16 c d e
  | f d c b e c d e \stemUp a, e' d c
  | b c b a g4 r
  | c2 b4
  | c r e
  %95
  | e d r
  | d c r
  | a g2~
  | g4 r r
  | r16 c, f a c f, a c f e f c
  %100
  | d4 r r
  | r16 d, g b d g, b d g f g d
  | e4 e r
  | r e r
  | r e r
  %105
  | r16 e d c a' g f e d f e d
  | g4 r r16 f e d
  | e4 r16 e d c b4
  | r8 c4 c8~ c16 b c b
  | \once\stemNeutral c2.
  %110
  | bes4 a2~
  | a16 c b! a d b c d e, d' c b
  | c4 b2~
  | b16 d cis b e cis d e fis, e' dis cis
  | dis2.
  %115
  | e16 g fis e a2~
  | a8 g4 g8~ g16 g fis e
  | dis fis dis e fis dis e fis a,! c b a
  | g b g a g b a b e, g fis e
  | dis fis dis e fis dis e fis fis4
  | s2.*17
  %137
  | R1*3/4
  | a16 c b a e' b c d e, d' c b
  | c d c b \stemNeutral a e' f g a g f e
  %140
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b a gis b a gis
  | a
    \change Staff = "lower"
    e, a
    \change Staff = "upper"
    c e a, c e a g a fis
  | \stemUp g2.~
  %145
  | g~
  | g4 f~ f16 ees f d
  | aes'2.~
  | aes4 g~ g16 f g e!
  | bes'2.~
  %150
  | bes4 aes~ aes16 g a fis
  | c'2.~
  | c4 bes~ bes16 a bes g
  | ees'4~ ees16 d c bes a c bes a
  | bes4~ bes16 a g f e g fis e
  %155
  | fis4~ fis16 g fis g a4~
  | a8 g4 g fis8
  | g2.
  | f4 e2~
  | e16 g fis e a fis g a b, a' g fis
  %160
  | g4 fis2~
  | fis16 a gis fis b gis a b cis,! b' a gis
  | a4 ais d\rest
  | b16 d cis b e cis d e fis, e' d cis
  | d4 dis r
  %165
  | e16 g fis e a fis g a b, a' g fis
  | g4 gis r
  | a16 c, b a d b c d e, d' c b
  | c2~ c16 c b a
  | gis2.
  %170
  | a16 c b a d2~
  | d8 c4 c8~ c16 c b a
  | gis b gis a b gis a b d, f! e d
  | c e c d e c d e a, c b a
  | R1*3/4*3
  %177
  | \stemNeutral a'16 c b a e' c d e a, g' f e
  | f e d e f e d c b c d c
  | b a gis a b a gis fis e d c b
  %180
  | \clef bass
    c b a b c b a g fis g a g
  | fis e dis e fis e dis cis b a gis fis
  | e b' gis a b gis a b e, d' c b
  | c e c d e c d e a, g' fis e
  | r16 a fis g a fis g a dis, c' b a
  %185
  | gis b gis a b gis a b e, d' c b
  | \clef treble
    c e c d e c d e a, g' fis e
  | dis a' fis g a fis g a dis, c' b a
  | gis b gis a b gis a b e, d' c b
  | c e c d e c d e a, g' fis e
  %190
  | dis a' fis g a fis g a dis, c' b a
  | gis r r8 r4 r
  | r16 g f e a e f g a, g' f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  %195
  | d c b c d c b a gis b a gis
  | c b\rest b8\rest b4\rest r4
  | r8 a a4( gis8.)\prallmordent a16
  | a4 d\rest d\rest
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | R1*3/4*6
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  %10
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e b
  | cis4 d,16\rest d' cis b a g f e
  | d a d f a d, f a d c d a
  %15
  | b4 c,16\rest c' b a g f e d
  | c4 d\rest b16\rest e d c
  | b4 c\rest a16\rest d c b
  | a8 a'~ a[ a] gis4
  | a r8 e' c e
  %20
  | d f b, f' e, f'
  | c e a, e' f, e'
  | b d gis, d' e, b'
  | b4 a f8\rest a~
  | a4 g e8\rest g~
  %25
  | g4 f2
  | \change Staff = "lower" \voiceThree
    b,4 b\rest
    \change Staff = "upper" \voiceTwo
    e~
  | e16 b' a gis a4 f\rest
  | r16 b a gis a4 r
  | r16 b a gis a4 r
  %30
  | R1*3/4
  | r16 gis fis e a b c d e,4~
  | e r c16\rest f e d
  | c4~ c16 d e f gis,8. gis16
  | a c b a e' b c d
    \change Staff = "lower" \voiceThree
    e,
    \change Staff = "upper" \voiceTwo
    d' c b
  %35
  | c d c b a e' f g a g f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b
    \change Staff = "lower" \voiceThree
    a gis b a gis
  | a e a c
    \change Staff = "upper" \voiceTwo
    e a, c e a g a e
  %40
  | fis4 r16 g fis e d c b
    a
  | \change Staff = "lower" \voiceThree
    g d g b d g, b d
    \change Staff = "upper" \voiceTwo
    g fis g dis
  | e4 r16 fis e d c b a g
  | fis8. e'16 dis e dis e a, c b a
  | g' dis e fis dis4.\prallmordent dis8
  %45
  | e4 r16 a g fis g b a g
  | a b c b a g fis e d c' b a
  | g a b a g fis e d c b' a g
  | fis g a g fis e dis cis b a' g fis
  | g4 r16 e' b g
    \change Staff = "lower" \voiceThree
    \once\override Beam.damping = #+inf.0
    e
    \change Staff = "upper" \voiceTwo
    g a b
  %50
  | c e, a c e a, c e a g fis e
  | dis e fis e dis cis b a g fis e dis
  | e fis g fis e d c b
    \change Staff = "lower" \voiceThree
    a g fis! e
  | c' b a g fis g a b dis,8. dis16
  | e4. e8 dis4
  %55
  | e4 b'8\rest b g b
  | a c fis, c' d, c'
  | g b e, b' c, b'
  | fis a dis, a' b, fis'
  | g4 g\rest g\rest
  %60
  | b16\rest fis b
    \change Staff = "upper" \voiceTwo
    d fis b, d fis b a b fis
  | gis2.~
  | gis16 fis gis e a4~ a8. a16~
  | a2.~
  | a16 g a f bes4~ bes8. b16~
  %65
  | b2.~
  | b16 a b g c4~ c8. cis16~
  | cis2.~
  | cis16 b cis a d4~ d8. d16~
  | d8 g cis,4 g\rest
  %70
  | g8\rest d' gis,4 d\rest
  | r16 a' g f e4~ e16 g f e
  | f4 e e
  | d r8 a' f a
  | g bes e, bes' c, bes'
  %75
  | f a d, a' bes, a'
  | e g cis, g' a, e'
  | e4 d r8 f
  | f4 f r8 f
  | bes4. bes8 a\prall g
  %80
  | f4. bes8 e, a
  | f4 r r
  | r r bes~
  | bes r r
  | r r a~
  %85
  | a4 r16 a g f e! d cis b
  | cis4 r16 bes' a g f e d cis
  | \change Staff = "lower" \voiceThree
    d8 d4 d cis8
  | r8 d~ d16 e d c b8 r
  | r8 c4 c b8
  %90
  | c8\rest c~ c16 d c b a8 r
  | r8 c4 c
    \change Staff = "upper" \voiceTwo
    f8~
  | f4~ f16 f e d c b a g
  | c e d c g' d e f g, f' e d
  | e f e d c g' a bes c bes a g
  %95
  | a g f g a g f e d f e d
  | g f e f g f e d c e d c
  | f e d e f e d c b d c b
  | c g c e g c, e g c bes c g
  | a4 r r
  %100
  | r16 a, d fis a d, fis a d c d a
  | b4 r r
  | \repeat unfold 3 { r16 d c b c4 r }
  %105
  | R1*3/4
  | r16 b a g c d e f g,4~
  | g r r16 a g f
  | e4 d d
  | \change Staff = "lower" \voiceThree
    g,16 b a g d' a b c d, c' b a
  %110
  | g
    \change Staff = "upper" \voiceTwo
    f' e d g e f g a, g' f e
  | f4 e2~
  | e16 g fis e a fis g a b, a' g fis
  | g4 fis2~
  | fis4 a c!
  %115
  | b4 c8 a dis4\downmordent
  | e cis ais
  | b8 r r4 r
  | s2.
  | s2
    \change Staff = "lower" \voiceThree
    a,16 c b a
  %120
  | g b g a b g a b e, g fis e
  | dis fis dis e fis dis e fis r4
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  %125
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e b
  | c e, a c
    \change Staff = "upper" \voiceTwo \stemNeutral
    e a, c e a g! a e
  | f a, d f a d, f a d c! b a
  %130
  | \override Rest.staff-position = #0
    gis4 r g~
  | g16 e f g a,8 g' cis, g'
  | fis4 r f~
  | f16 d e f g,8 f' b, f'
  | e16 f e d c8 r r16 a b c
  %135
  | d e d c b8 r r16 gis a b
  | c d e f
    \change Staff = "lower" \voiceThree
    gis,4.\prall gis8
  | a16 c b a e' b c d e, d' c b
  | c4 b4. e8~
  | e16 f e d c d c b a b c a
  %140
  | \stemNeutral d e f e d c b a g f' e d
  | c d e d c b a g f e' d c
  | b c d c b a gis fis e d' c b
  | s2.
  | \stemUp e16 b, e g b e, g b
    \change Staff = "upper" \voiceTwo
    e d e b
  %145
  | cis2.~
  | cis16 b cis a d4~ d8. d16~
  | d2.~
  | d16 c d bes ees4~ ees8. e16~
  | e2.~
  %150
  | e16 d e c f4~ f8. fis16~
  | fis2.~
  | fis16 e fis d g4~ g8. g16~
  | g8 c fis,4 c\rest
  | e8\rest g cis,4 g\rest
  %155
  | b16\rest d c bes a4~ a16 c bes a
  | bes4 a a
  | bes16
    \change Staff = "lower" \voiceThree
    f e d a' e f g a, g' f e
  | d
    \change Staff = "upper" \voiceTwo
    c' b a d b c d
    \change Staff = "lower" \voiceThree
    e,
    \change Staff = "upper" \voiceTwo
    d' c b
  | c4
    \change Staff = "lower" \voiceThree
    b2~
  %160
  | b16
    \change Staff = "upper" \voiceTwo
    d cis b e cis d e
    \change Staff = "lower" \voiceThree
    fis,
    \change Staff = "upper" \voiceTwo
    e' d cis
  | d4 cis2~
  | cis16 fis e d g! e fis g cis, e d cis
  | b4 ais f\rest
  | b16 b' a g c a b c fis, a g fis
  %165
  | e4 dis c\rest
  | e16 e' d c f d e f b, d c b
  | a4 gis g,\rest
  | a'8 g! fis e dis4
  | b d f
  %170
  | e f8 d gis4\prallmordent
  | a fis dis
  | e8 b\rest b4\rest g\rest
  | \override MultiMeasureRest.staff-position = #-10
    R1*3/4
  | \change Staff = "lower" \voiceThree
    gis16 b gis a b gis a b d, f e d
  %175
  | c e c d e c d e a, c b a
  | gis b gis a b gis a b f'4\rest
  | a\rest <e a> a\rest
  | a a\rest a\rest
  | <b, e> f'\rest f\rest
  %180
  | e f\rest f\rest
  | b, f'\rest f\rest
  | e, f'\rest f\rest
  | a, f'\rest f\rest
  | <fis, a dis> f'\rest f\rest
  %185
  \repeat unfold 2 {
  | <gis, b e> f'\rest f\rest
  | <a, c e> f'\rest f\rest
  | <fis, a dis> f'\rest f\rest
  }
  %191
  | \stemNeutral r16 e, gis b d f! gis b
    \change Staff = "upper" \voiceTwo
    d f gis b
  | \change Staff = "lower" \voiceThree
    <e,, a>4 a\rest \stemNeutral r16 a b cis
  | d e f e d c! b a gis b e, gis
  | c, d e d c b a b c d e f
  %195
  | gis,8 d' b d e, d'
  | r16 a c e a
    \change Staff = "upper" \voiceTwo
    c dis fis a c dis fis
  | e,8\rest <c e> <b d>2
  | <a cis>4 c\rest c\rest


}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3/4*17
  | a16 c b a e' b c d e, d' c b
  | c d c b a e' f g a g f e
  %20
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b a gis b a gis
  | a e a c e a, c e a g a fis
  | g d, g b d g, b d g f g e
  %25
  | f f, a c f e d c b c b a
  | gis4 a,\rest gis'
  | \stemNeutral\tieNeutral a~ a16 gis a b c d e f
  | f,4~ f16 e f g a b c d
  | c,4~ c16 b a b c d e f
  %30
  | d,8 d' a d f, d'
  | d, d' c16 c' b a gis8 e
  | a16 f e d c8 d e e,
  | \stemDown\tieDown a16 c b a e' b c d e, d' c b
  | c4~ c16 d e f gis,8.\prallmordent gis16
  %35
  | a4 r8 e' c e
  | \stemNeutral d f b, f' g, f'
  | c e a, e' f, e'
  | \stemDown b d gis, d' e, d'
  | c4 r \stemNeutral c~
  %40
  | c16 a b c d,8 c' fis, c'
  | \stemDown b4 r \stemNeutral b~
  | b16 g a b c,8 b' e, b'
  | \stemDown a16 b c b a g fis e dis8 dis'
  | e16 g fis e b' fis g a b, a' g fis
  %45
  | g a g fis e b' cis dis e d c b
  | c b a b c b a g fis a g fis
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d c b
  %50
  | a4 r16 a e c a c e a
  | b,8 a' fis a dis, a'
  | g16 a b a g fis e d c b a g
  | a b c b a g fis e b' c b a
  | g8 a b4. b8
  %55
  | e,4 a\rest g'~
  | g g,\rest fis'!~
  | fis g,\rest e'~
  | e g,8\rest c b a
  | g fis e fis g e
  %60
  | b'4. cis8 d b
  | e16 b e gis b e, gis b e d e b
  | \tieNeutral c4~ c16 b c a f'!4
  | r16 c, f a c f, a c f ees f c
  | d4~ d16 c d bes g'4
  %65
  | r16 d, g b d g, b d g f g d
  | ees4~ ees16 d ees c a'4
  | r16 e, a cis e a, cis e \clef treble \stemNeutral a g a e
  | f4~ f16 e f d bes' c! bes a
  | g a bes a g f e d cis e d cis
  %70
  | d e f e \clef bass d c! b a gis b a gis
  | a g! bes a g f e d cis e d cis
  | d f e d a' e f g a, g' f e
  | f g f e d a' b cis d c bes a
  | bes a g a bes a g f e g f e
  %75
  | a g f g a g f e d f e d
  | g f e f g f e d cis e d cis
  | d a d f a d, f a d c d a
  | bes f, bes d f bes, d f bes a bes f
  | g a bes a g f e d cis e d cis
  %80
  | d e d c bes a bes g a a' g a
  | d, a d f a d, f a d c d a
  | bes4 r16 c bes a g f e d
  | c g c e g c, e g c bes c g
  | a4 r16 bes a g f ees d c
  %85
  | bes4 r r
  | g' r r
  | \stemDown f e a
  | d, r r16 a' g f
  | e4 d g
  %90
  | c,4 r r16 g' f e
  | a4 g f
  | g~ g16 a g f e d c b
  | e8 f g f g g,
  | \stemNeutral c d e d e16 c d e
  %95
  | f8 a d, a' b, a'
  | e g c, g' a, g'
  | d f b, f' g, f'
  | e d c d e c
  | f g a bes a g
  %100
  | fis e d e fis d
  | g a b a b g
  | \clef treble c4~ c16 b c d e f g a
  | a,4~ a16 g a b c d e f
  | \clef bass e,4~ e16 d c d e f g a
  %105
  | f,8 f' c f a, f'
  | f, f' e16 e' d c b8 g
  | c16 a g f e8 f g g,
  | c16 e d c g' d e f g, f' e d
  | \stemDown e4 fis f,\rest
  %110
  | g' \stemNeutral cis, r
  | d gis r
  | a dis, r
  | e ais r
  | b16 dis cis b fis' dis e fis a, c b a
  %115
  | g b a g dis' a b c fis, a g fis
  | e g fis e ais e fis g cis, e dis cis
  | b2.~
  | b~
  | b~
  %120
  | \stemDown\tieDown b~
  | b2 a16 c b a
  | g4~ g16 a b c dis, fis b dis,
  | e4 f\rest r16 e' fis! g
  | a8 a, r16 a b c d c b a
  %125
  | g4 g16\rest g a b c b a g
  | fis4 f16\rest fis g a b a g fis
  | g4 g16\rest a g fis e fis gis e
  | a gis a b c d c b a b cis a
  | d cis d e f g f e d e f d
  %130
  | e b e gis b e, gis b e d e b
  | \stemNeutral\tieNeutral cis4 r16 d cis b a g fis e
  | d a d fis a d, fis a d c c a
  | b4 r16 c b a g f e d
  | c4 r16 b' a g fis e d c
  %135
  | b4 r16 a' gis fis e d c b
  | \stemDown\tieDown a c b a e' b c d e, d' c b
  | c8 d e fis gis e
  | a2 gis4
  | a s b,\rest
  %140
  | s2.*3
  | c'4 r8 a c a
  | f,4\rest f8\rest e' g e
  %145
  | a16 e, a cis e a, cis e a g a e
  | f4^~ f16 e f d bes'4
  | \stemNeutral\tieNeutral r16 f, bes d f bes, d f bes aes bes f
  | g4~ g16 f g ees c'4
  | r16 g, c e! g c, e g c bes c g
  %150
  | aes4~ aes16 g aes f d'4
  | r16 a, d fis a d, fis a d c d a
  | bes4~ bes16 a bes g ees' f! ees d
  | c d ees d c bes a g fis a g fis
  | g a bes a g f! e d cis e d cis
  %155
  | d c ees d c bes a g fis a g fis
  | g bes a g d' a bes c d, c' bes a
  | \stemDown g4 cis c,\rest
  | d' gis, e\rest
  | a dis b\rest
  %160
  | e ais, f\rest
  | \stemNeutral b eis r
  | fis e r
  | d cis r
  | b a' r
  %165
  | g fis r
  | e d' r
  | c b r
  | a16 c b a dis a b c fis, a gis fis
  | e gis fis e b' gis a b d, f e d
  %170
  | c e d c gis' d e f b, d c b
  | a c b a dis a b c fis, a gis fis
  | e2.~
  | e2.~
  | \stemDown \tieDown e2.~
  %175
  | e2.~
  | e2 d16 f e d
  | c4 c' g\rest
  | d' g,\rest g\rest
  | gis g\rest g\rest
  %180
  | a g\rest g\rest
  | dis f\rest f\rest
  \repeat unfold 9 {
  | e f\rest f\rest
  }
  | s2.
  %192
  | cis'4 g\rest s
  | s2.*4
  << {
  | e2.
  | a4 f\rest f\rest
  }
  \new Voice {
  | \voiceThree f'4\rest e2~
  | e4 f\rest f\rest
  }
  >>
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 944"
    title = ##f % \markup { "Fuga" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
