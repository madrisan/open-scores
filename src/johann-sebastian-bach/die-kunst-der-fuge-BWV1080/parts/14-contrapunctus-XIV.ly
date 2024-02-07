Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

% section  from      to         tot.bars   ratio
%
% 0.5 +
% I           1    - 114.25       114.25
% II        114.25 - 192.5         79.25   ~1.44 (114.25/79.25)          ; 79.25 = 0.75+78+0.50
% III       192.5  - 248.5 (248)   55      ~1.44 (79.25 / 1.44 ~= 55.03) ; 55 = 0.50+54+0.50
% IV        248.5  - 286.5         38      ~1.44 (55 / 1.44 ~= 38.19)    ; 38 = 0.50+37+0.50
%        ---------------------------------------------------------------
%                                 286.5

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  | \override MultiMeasureRest.staff-position = #0
    R1*15
  | d2\rest a^\markup \subject #'(0 . 0) #1
  | d2. d4
  | c1
  | d
  %20
  | e
  | a,2. b4
  | c2. d4
  | g,2 fis
  | g gis
  %25
  | a8 c4 b8 c2~
  | c4 b8 a b2
  | c4 bes! a g
  | fis2. g8 a
  | g2. a8 bes
  %30
  | c1~
  | c4 bes8 a bes2
  | a4 b8 cis d2~
  | d4 e8 d cis2
  | d4 c!2 b4
  %35
  | cis2 d~
  | d cis
  | d a^\markup \subject #'(0 . 0) #1
  | d2. d4
  | c1
  %40
  | d
  | e
  | a,4 b c2~
  | c2. b4
  | c g c2~
  %45
  | c2. a4
  | d1~
  | d4 g, c bes
  | a g a2~
  | a g4 f
  %50
  | e d ees2~
  | ees d~
  | d2. d4
  | g f e g
  | c2. c4
  %55
  | f e d c
  | b2 cis
  | d2. c8 d
  | e4 a2 d,4~
  | d g2 c,4~
  %60
  | c b2 bes4
  | a2 d\rest
  | d\rest a^\markup \subject #'(0 . 0) #1
  | d2. c4
  | bes1
  %65
  | c
  | d
  | g,2 a4 bes
  | c g c bes
  | a f bes2~
  %70
  | bes a
  | bes aes~
  | aes4 g8 f g4 a!
  | bes f bes2
  | a8 bes c d ees a, g fis
  %75
  | g2. a8 bes
  | a4 bes8 c bes2~
  | bes4 a8 bes c2~
  | c4 d8 c bes2
  | a a'^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  %80
  | d,2. e4
  | f1
  | e
  | d
  | g~
  %85
  | g2 fis
  | g4 f!8 ees d4 ees
  | f2. ees8 d
  | c4 d ees f
  | g f8 ees d4 ees8 d
  %90
  | c2. d8 ees
  | f1~
  | f4 ees8 d c4 bes
  | \once\override NoteColumn.force-hshift = #0.8 a
    a'8 g f4 ees~
  | ees d2 c8 bes
  %95
  | \once\override NoteColumn.force-hshift = #0.4 a4
    g a2
  | \shape #'((1 . -0.4) (0 . 0.3) (0 . 0.3) (0 . 0)) Tie
    \once\override NoteColumn.force-hshift = #0 bes1~
  | bes4 a8 bes c2~
  | c4 a'^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
    d,2~
  | d4 e f2~
  %100
  | f e~
  | e4 d8 cis d2~
  | d g~
  | g f~
  | f e4 d
  %105
  | cis2 d~
  | d cis
  | d4 a d c
  | bes1~
  | bes8 a e'4 a g~
  %110
  | g f8 e f4 d
  | bes'1
  | e,2 d~
  | d cis
  | d4 a~^\markup{\hspace #0 \raise #1 "XIV/b"} a g
  %115
  | f r r2
  %---
  | R1*5
  | r4 c'8^\markup \subject #'(0 . 0) #2
    d c b a gis
  | a e a b c b a c
  | b e, b' c d c16 b c8 d
  | e d c d e2~
  %125
  | e8 d16 cis d8 e f2~
  | f8 e d c b a b d
  | c a' g f e d e g
  | f e d cis d4 e
  | a,2. b4
  %130
  | c cis2 d8 e
  | f bes a g f e d c
  | bes c' bes a g f e d
  | cis4 d2 cis4
  | d e f2
  %135
  | e4 a e d~
  | d c8 d e4 f~
  | f e2~ e8 b
  | c4 r r2
  %---
  | R1*3
  | r8 a'8 g f e d e g
  | fis4 g2 f4~
  | f8 g f e d c d f
  %145
  | e4 f2 e8 d
  | e4 r r2
  | r4 f8^\markup \subject #'(0 . 0) #2
    g f e d cis
  | d a d e f e d f
  | e a, e' f g f16 e f8 g
  %150
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  | f e d c b a b d
  | c4 b8 a gis fis gis b
  %155
  | e,4 a2 gis4
  | a e'2 d4~
  | d c8 d e4 dis
  | e r r2
  | \override MultiMeasureRest.staff-position = #6
    R1*10
  | r2 f,^\markup \subject #'(0 . 0) #1
  %170
  | c'2. bes4
  | a1
  | bes
  | c
  | f,2~ f8 fis g a
  %175
  | bes2~ bes8 b c d
  | ees1~
  | ees4 a, d2~
  | d cis
  | d c!~
  %180
  | c4 bes8 a bes4 ees
  | d e!8 fis g2~
  | g4 f~ f8 ees d c
  | b a g4 d'2^\markup \subject #'(0 . 0) #1
  | g2. f4
  %185
  | ees1
  | f
  | g
  | c,~
  | c8 fis, g a bes c bes g
  %190
  | ees'1~
  | ees8 ees d c bes a bes d
  | \mergeDifferentlyDottedOn
    g,4. a8 fis4. g8
  | g2 d'\rest^\markup{\hspace #0 \raise #1 "XIV/c"}
  | \override MultiMeasureRest.staff-position = #2
    R1*7
  | r2 bes^\markup \subject #'(0 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  %205
  | d4 r r dis
  | e b e d
  | c2 cis
  | d4 a d2~
  | d4 c8 b c2~
  %210
  | c4 bes8 a bes4 g
  | a a'2 d,4~
  | d e f2
  | e~ e8 cis d e
  | a,2. g8 fis
  %215
  | g1~
  | g2 f8 e f4
  | e r bes'2^\markup \subject #'(0 . 0) #3
  | a c
  | b4. cis8 d2~
  %220
  | d4. cis16 b cis8 dis dis4\turn
  | e b e d
  | c2 cis
  | d~ d8 f ees d
  | c g' f ees d c des4~
  %225
  | des8 b c2 b4
  | c4. bes!16 a g8 e e'4~
  | e8 d16 cis d8 c16 b a4 c\rest
  | \override MultiMeasureRest.staff-position = #4
    R1
  | r2 r4 a'~
  %230
  | a8 g16 a bes4~ bes8 e, a g
  | f e16 d cis8 d e d16 e f8 e
  | d4. cis8 d8 e16 f e8 d
  | cis4 r r8 e f g
  | f e d cis d2~
  %235
  | d4 cis8 d e2~
  | e4 d8 e f g a f
  | d4 e8 fis g a bes g
  | e4 r r2
  | \once\override Score.BarNumber.stencil
       = #(lambda (grob) (grob-interpret-markup grob #{
            \markup {
              \box { "239" }
              \with-color #greyTextColor
              \concat {
                "[I.N.M.Hughes] "
                \italic " (14 = 2+3+9)"
              }
            }
         #}))
    \once\override Score.BarNumber.break-visibility = ##(#t #t #t)
    s1
    \bar "|"
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  | s1*10
  | s2 \stemUp d^\markup \subject #'(0 . 0) #1
  | a'2. g4
  | f1
  | g
  %15
  | a
  | d,~
  | \stemDown d2 e~
  | e4 c f2~
  | f4 d g2~
  %20
  | g4 e a g~
  | g f8 e f2
  | e4 d8 e f2~
  | f4 ees2 d4~
  | d8 e! f2 e8 d
  %25
  | c4 d e2
  | d2. e8 f
  | e4 d c2~
  | c4 d8 ees d2~
  | d4 e8 fis g2~
  %30
  | g4 fis8 g
    a2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | d,2. e4
  | f1
  | e
  | d
  %35
  | a'~
  | a2. g4~
  | g f8 e f2
  | r
    d_\markup \subject #'(1 . 1.5) #1
  | a'2. g4
  %40
  | f1
  | g
  | a
  | d,4 e f2~
  | f4 e8 d e2~
  %45
  | e4 c f2~
  | f4 d g f
  | e d ees2~
  | ees d4 c
  | b a bes2~
  %50
  | bes a4 g
  | fis a d c
  | bes a bes2
  | b c~
  | c4 e a2~
  %55
  | a4 g f4. e8
  | d4 e8 f g2
  | fis4 g8 a bes4 a8 bes
  | c2. bes8 a
  | bes2. a8 g
  %60
  | fis2 g~
  | g4 f!8 e f4 g8 f
  | e2. f8 g
  | a4 g f ees
  | d g8 fis g2~
  %65
  | g f!~
  | f4 g8 a g4 f
  | e c f2~
  | f4 e8 d ees2~
  | ees d
  %70
  | c1
  | f_\markup \scale #'(1 . -1) \subject #'(1 . 0) #1
  | bes,2. c4
  | d1
  | c
  %75
  | bes
  | f'2. ees8 f
  | g2. fis8 g
  | a2. g8 f
  | ees2 d~
  %80
  | d g
  | f d_\markup \subject #'(1 . 1) #1
  | a'2. g4
  | f1
  | g
  %85
  | a
  | d,2 r
  | bes'4 a8 g f4 g
  | a bes c bes8 a
  | g4 a bes2~
  %90
  | bes4 a8 g a2~
  | a4 bes8 c bes4 a
  | g fis g2_\markup \subject #'(0 . 0) #1
  | d'2. c4
  | bes1
  %95
  | c
  | \once\override NoteColumn.force-hshift = #0 d
  | g,2. fis8 g
  | a4 c8 bes a g a4~
  | a g d2_\markup \subject #'(1 . 1.5) #1
  %100
  | a'2. g4
  | f1
  | g
  | a
  | d,4 g8 f g a bes4
  %105
  | e, a2 g8 f
  | e4 d e2
  | d4 f8 e f g a4~
  | a g8 fis g4 bes
  | e,2 r4 e'~
  %110
  | e a, d2~
  | d4 e8 f e4 d
  | cis a2 g8 f
  | g4 e~ e8 f g4~
  | g f8_\markup \subject #'(0 . 0) #2 g f e d cis
  %115
  | d a d e f e d f
  | e a, e' f g f16 e f8 g
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  %120
  | f e d c b a b d
  | c b a gis a4 b
  | c4. d8 e4 fis
  | g gis2 a4~
  | a8 f e d
    \once\override Beam.positions = #'(-5 . -6)
    c b
    \change Staff = "lower"
    \stemUp
    a g
  %125
  | f
    \change Staff = "upper"
    \stemDown
    g' f e
    \change Staff = "lower"
    \stemUp
    d c b a
  | gis4 a2 gis4
  | a b
    \change Staff = "upper"
    \stemDown
    c cis
  | d a'2 g4~
  | g f8 e d4 g~
  %130
  | g8 f g a bes a16 g a8 bes
  | cis,4 d~ d8 cis f e
  | d2~ d8 a' g f
  | e4 a g bes
  | a2. gis4
  %135
  | a2 r4 e
  | e2 r4 a
  | d4. c8 b4 a8 gis
  | a4 r r \stemUp c
  | a2. gis8 a
  %140
  | b e a,2 gis4
  | a r r2
  | R1
  | r8 \stemDown d c bes a g a c
  | b4 c2 bes4~
  %145
  | bes8 g a4 bes g~
  | g8 a g f e d e g
  | f a d,4 r2
  | R1*6
  | \override MultiMeasureRest.staff-position = #-8
    R1*2
  | r4 c'8_\markup \subject #'(0 . 0) #2
    d c b a gis
  | a e a b c b a c
  | b e, b' c d c16 b c8 d
  | e d c d e2~
  %160
  | e8 d16 cis d8 e f2~
  | f8 e d c b a b d
  | \tieUp c1~
  | \stemUp c8 d c bes! a g a c
  | bes1~
  %165
  | bes8 c bes a g f g bes
  | a bes a g f e f a
  | d, e f4~ f8 e bes'4~
  | bes \stemDown a8 g f a d,4~
  | d8 g c,4  d2
  %170
  | e4 f8 g a4 \tieDown g~
  | g f8 e f2~
  | f8 ees f4~ f8 d ees g
  | c,4. d8 ees2~
  | ees4 d8 c d2~
  %175
  | d8 d e fis g2~
  | g8 d' c bes a g a c
  | fis,2. fis4
  | g8 a g f! e d e g
  | fis4 g2 fis8 a
  %180
  | d, fis g fis g4 c~
  | c bes r8 f'! ees d
  | c b c d g,2_\markup \subject #'(1 . 1.5) #1
  | d'2. c4
  | b1
  %185
  | c
  | d
  | g,4 a bes2~
  | bes4 a8 g fis e fis a
  | d,2 r
  %190
  | r8 d' c bes a g a c
  | fis,1
  | g8 f! ees4 d c~
  | c bes r2
  | \override MultiMeasureRest.staff-position = #-4
    R1
  %195
  | r2 f'_\markup \subject #'(1 . 1.5) #3
  | e g
  | fis4. gis8 a2~
  | a4. gis16 fis gis2
  | a4 e a g
  %200
  | f2 r4 fis
  | g d g f!
  | e fis8 g a2~
  | a4 g a d,
  | g4. f8 e2
  %205
  | d4 r r2
  | r r4 b'~
  | b e, a g
  | f2. g8 f
  | e2~ e8 d ees c
  %210
  | d2. e!8 d
  | cis4 e a2~
  | a8 d, g4 r2
  | r e_\markup \scale #'(1 . -1) \subject #'(1 . 1.5) #3
  | f d
  %215
  | ees4. d8 cis2~
  | cis d~
  | d4 cis d e
  | f e8 f g2~
  | g8 fis g bes! a2~
  %220
  | a g4 fis
  | e1~
  | e4 e a g~
  | g8 fis g a bes4 b
  | c2~ c4. bes8
  %225
  | a4. aes8 g2~
  | g
    \once\override Staff.TextScript.extra-offset = #'(0.5 . 0.5)
    bes_\markup \subject #'(0 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  %230
  | d8 e16 f g2 cis,4
  | d8 a bes4 a2~
  | a8 g f e d4 r
  | r8 e f_\markup \subject #'(0 . 0) #2
    g f e d cis
  | d a d e f e d f
  %235
  | e a, e' f g f16 e f8 g
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  | f4 s2.
    \bar "|"
  %250

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  \override MultiMeasureRest.staff-position = #6
  \override VoiceFollower.color = \greyTextColor
  | R1*5
  | r2 a^\markup \subject #'(0 . 0) #1
  | \change Staff = "upper"
    \stemDown
    d2. d4
  | c1
  | d
  %10
  | e
  | \change Staff = "lower"
    \stemUp
    a,2
    \change Staff = "upper"
    \stemDown\tieDown
    d~
  | d cis
  | d4 a bes2~
  | bes4
    \change Staff = "lower"
    \stemUp\tieUp
    g c2~
  %15
  | c4 a d c~
  | c bes a2~
  | a4 b8 c b2
  | a2. a4
  | bes2. b4
  %20
  | c2 cis
  | d4 a d2
  | c r
  | \override MultiMeasureRest.staff-position = #4
    R1
  | r2 d,^\markup \subject #'(0 . 0) #1
  %25
  | a'2. g4
  | f1
  | g
  | a
  | d,2. c8 d
  %30
  | e4 d8 e fis4 e8 fis
  | g4 d g2
  | f4 g8 a bes2~
  | bes a~
  | a g4 g'8 f
  %35
  | e4 d8 e f2
  | e4 d e2
  | d4 a8 g a2~
  | a4 g8 f g2~
  | g4 c, f e
  %40
  | d a' d c
  | bes a8 g c2~
  | c4 d ees8 c b a
  | \shape #'((0 . 0.3) (0 . 0.7) (0 . 0.7) (0 . 0.3)) Tie
    g1~
  | \shape #'((0 . 0.3) (0 . 0.7) (0 . 0.7) (0 . 0.3)) Tie
    g~
  %45
  | g4 f8 g a2~
  | a4 g8 a bes2~
  | bes a4 g
  | f2 r
  %--
  | R1*6
  %55
  | r2
    \once\override Staff.TextScript.extra-offset = #'(-1 . -1)
    d'^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | g,2. a4
  | bes1
  | a
  | g
  %60
  | d'2. e8 d
  | cis4 a d2~
  | d4 cis8 b cis4 d8 e
  | d2 a
  | r4 bes ees d
  %65
  | c d8 ees d4 c
  | b a bes2~
  | bes a
  | g4 bes a g
  | f2 r
  %--
  | R1*2
  | r2
    bes^\markup \scale #'(1 . -1) \subject #'(-1 . -1.5) #1
  | f2. g4
  | a1
  %75
  | g
  | f
  | c'2. d8 ees
  | d2. ees8 d
  | c4 a d c~
  %80
  | c bes8 a bes2
  | a d~
  | d4 cis8 b cis2
  | d2. cis8 d
  | ees2. d4
  %85
  | c d8 ees d4 c
  | bes a bes c
  | d c d ees
  | f ees8 d c4 d
  | ees d8 c bes4 f~
  %90
  | f8 g a bes
    c2^\markup \scale #'(1 . -1) \subject #'(2.2 . -1.5) #1
  | f,2. f4
  | g1
  | a
  | bes
  %95
  | f4 c' f2~
  | f4 ees d2
  | c2\rest a^\markup \subject #'(0 . 0) #1
  | d2. c4
  | b1
  %100
  | cis
  | d
  | g,4 a bes c8 bes
  | a4 b8 cis d4 c
  | bes!1
  %105
  | a~
  | a~
  | a4 d8 cis d2~
  | d4 bes ees d~
  | d cis8 b cis2
  %110
  | d a~
  | a4 d, g2~
  | g4 f8 e f4 d
  | e f8 g a2~
  | a4 d bes2
  %115
  | a4 r r2
  | R1*15
  | \override MultiMeasureRest.staff-position = #6
    R1*4
  %135
  | r4 c8^\markup \subject #'(0 . 0) #2
    d c b a gis
  | a e a b c b a c
  | b e, b' c d c16 b c8 d
  | e d \hideStaffSwitch c
    \change Staff = "upper"
    \stemDown\tieDown
    d \showStaffSwitch e2~
  | e8 d16 cis d8 e f2~
  %140
  | f8 e d c
    \change Staff = "lower"
    \stemUp\tieUp
    b a b d
  | c2 cis
  | d2. c!4~
  | c8 bes a g d'2~
  | d8 e d c g'4 r
  %145
  | r8 c,8 bes a g f g bes
  | a4. a8 g f e4
  | d a' bes2
  | a4 b8 cis d2~
  | d4 cis8 d e2~
  %150
  | e8 a, d4~ d8 c bes a
  | bes d ees4~ ees8 d cis d
  | cis4 d2 c4~
  | c b8 a gis fis gis b
  | a e' d c b a b d
  %155
  | c4 e d f
  | e r r2
  | r a,2^\markup \subject #'(-0.5 . -1.5) #1
  | e'2~ e4. d8
  | c1
  %160
  | d
  | e
  | a,8 \hideStaffSwitch
    \change Staff = "upper"
    \stemDown\tieDown
    a' \showStaffSwitch g f e d e g
  | f1~
  | f8 g f e d c d f
  %165
  | e4 d\rest
    \change Staff = "lower"
    \stemUp\tieUp
    c2\rest
  | R1
  | r4 a8^\markup \subject #'(0 . 0) #2
    bes a g f e
  | f c f g a g f a
  | g c, g' a bes a16 g a8 bes
  %170
  | c bes a bes c2~
  | c8 bes16 a bes8 c d2~
  | d8 c bes a g f g bes
  | a1~
  | a8 f g a bes2~
  %175
  | bes8 c bes a g2~
  | g4 g c2~
  | c8 ees d c bes a bes d
  | g,4 bes8 a g f e4
  | d8 d' c bes a g a c
  %180
  | bes ees d2 r4
  | R1
  | r2 r4 f,4~
  | f8 ees d ees f g aes f
  | g2~ g8 g b d
  %185
  | \change Staff = "upper"
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0 g
    bes aes g fis4. g8
  | \once\override NoteColumn.force-hshift = #0 aes \hideStaffSwitch
    \change Staff = "lower"
    \stemUp\tieUp
    g, \unHideNotes f ees d c d f
  | e!1
  | fis4 r r2
  | r8 d e fis g2~
  %190
  | g8 g a bes c d c bes
  | a4 r r2
  | r4 bes a8 g a4
  | g2 bes_\markup \italic\tiny \with-color #greyTextColor { "B" }^\markup \subject #'(0 . 0) #3
  | a_\markup \italic\tiny \with-color #greyTextColor { "A" }
    c_\markup \italic\tiny \with-color #greyTextColor { "C" }
  %195
  | b4._\markup \italic\tiny \with-color #greyTextColor { "H" } cis8 d2~
  | d4. cis16 b cis2\prall
  | d r4 dis
  | e b e d
  | c2 r4 cis
  %200
  | d a d c!
  | bes4. a8 g a bes g
  | c bes a g fis e fis d
  | g4 e f! g8 a
  | bes a g a bes e, a4~
  %205
  | a d2 c4
  | b e2.~
  | e4 e\rest r2
  %---
  | R1*2
  %210
  | r2 bes^\markup \subject #'(-0.5 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  | d4. c!8 b4 a
  %215
  | bes!2~ bes8 a bes g
  | a2~ a8 bes a gis
  | a4 r r bes
  | c d e f8 e
  | d2~ d8 cis d f
  %220
  | e d e2 b4
  | b1
  | a4. g16 f e4. d16 e
  | d4 e8 fis g4 f
  | ees8 d c4 d ees~
  %225
  | ees8 d ees4~ ees8 d f4~^\markup \subject #'(0 . 0) #3
  | f e!~ e g~
  | g fis~ fis8 gis a4~
  | a2~ a8 gis16 fis gis4~
  | gis a8 e a bes16 a g!8 a
  %230
  | bes d g, a bes g e f16 g
  | a4 g2 f4~
  | f8 e16 d a'4~ a g
  | a r r2
  | R1
  %235
  | r2 bes^\markup \subject #'(0 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  | d8 e d c! b a b d
    \bar "|"
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \mergeDifferentlyDottedOn
  %1
  | d2\rest d_\markup \subject #'(0 . 0) #1
  | a'2. g4
  | f1
  | g
  %5
  | a
  | d,2 f~
  | f4 b, e2
  | a,4 e' a g
  | f d bes' a
  %10
  | g e cis d8 e
  | f4 d c bes
  | a g a2
  | d,2. d'4
  | e2. d8 e
  %15
  | f2 fis
  | g2. fis8 e
  | fis2 gis
  | a b,\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  | r2 d_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | a2. b4
  | c1
  | bes!
  %25
  | a
  | d
  | c4 d ees2~
  | ees4 a, d c
  | b2 bes~
  %30
  | bes a
  | g r4 g
  | d'2. e8 f
  | g2. fis8 e
  | fis4 d g2~
  %35
  | g f4 g
  | a2 a,
  | d2. c4
  | bes a bes2
  | a1
  %40
  | bes4 f' bes a
  | g f e d8 c
  | f2 fis
  | g g,_\markup \subject #'(0 . 0) #1
  | c2. bes4
  %45
  | a1
  | bes
  | c
  | f,2 fis
  | g4 f! e d
  %50
  | c g' c bes
  | a g fis d
  | g d' g f
  | e d c bes!
  | a c f e
  %55
  | d e f2~
  | f4 e2 ees4
  | d4 e8 fis g2~
  | g4 c, f2~
  | f4 ees8 d ees2
  %60
  | d r
  | r d_\markup \subject #'(0 . 0) #1
  | a'2. g4
  | f1
  | g
  %65
  | a
  | d,
  | c~
  | c
  | d2. ees4
  %70
  | f c f ees
  | d c8 bes c4 d
  | ees bes ees2~
  | ees4 d8 c d4 e!
  | f2 c4 d
  %75
  | ees bes ees2~
  | ees4 d2 c8 d
  | e!4 fis8 g a4 g
  | fis d g2~
  | g fis
  %80
  | g2. cis,4
  | d e f g
  | a2. bes8 a
  | bes4 f bes2~
  | bes4 g c bes
  %85
  | a g a2
  | g b,\rest
  | R1*2
  | r2 bes_\markup \subject #'(0 . 0) #1
  %90
  | f'2. ees4
  | d1
  | ees
  | f
  | bes,4 c8 d ees2~
  %95
  | ees4 f8 g f4 ees!
  | d ees8 f g4 f
  | e! fis8 g a4 g
  | fis e fis2
  | g2. gis4
  %100
  | a bes8 a g!4 a
  | bes f bes d,
  | ees2 e
  | f2. e8 f
  | g1~
  %105
  | g4 f8 e f4 d_\markup \subject #'(0 . 0) #1
  | a'2. g4
  | f1
  | g
  | a
  %110
  | d,2~ d8 c bes a
  | g2~ g8 a bes g
  | a1~
  | a
  | d~_\markup \italic \tiny \with-color #greyTextColor {
      \ieyeglasses
      "The second subject consists of 41 notes"
    }
  %115
  | d4 r r2
  %---
  | R1*12
  | d4\rest f8_\markup \subject #'(0 . 0) #2
    g f e d cis
  | d a d e f e d f
  %130
  | e a e f g f16 e f8 g
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  | f e d c b a b d
  %135
  | c2 r4 e
  | a,2 r4 a'~
  | a gis2 a4~
  | a8 f e d c b a g
  | f g' f e d c b a
  %140
  | gis4 a e' e,
  | a8 a' g f e d e g
  | f4 g a2
  | d, r4 d
  | g2 r4 g
  %145
  | c,2 r4 c
  | cis d2 cis4
  | d2. e4
  | f2 d_\markup \subject #'(0 . 0) #1
  | a'2. g4
  %150
  | f1
  | g
  | a
  | d,2 e
  | a,4 r r2
  %155
  | r8 e' d c b a b d
  | c b a gis a4 b
  | c f2 fis4
  | g gis2 a4~
  | a8 e a b c b a g
  %160
  | fis a b cis d c b! a
  | gis4 a2 gis4
  | a b c a
  | d, e f d
  | g a bes g
  %165
  | c, d e c
  | f g a f
  | bes,2 c
  | f, r4 f'
  | e ees d2
  %170
  | a'~ a8 g f e
  | f2~ f8 d e f
  | g4 d ees2~
  | ees8 f ees d c bes c ees
  | d2~ d8 d e fis
  %175
  | g2~ g8 f! ees d
  | c2 r4 c
  | d2 r4 d
  | ees e2 a,4
  | d r r2
  %180
  | r4 bes8_\markup \subject #'(0 . 0) #2
    c bes a g fis
  | g d g a bes a g bes
  | a d, a' b c b16 a b8 c
  | d c b c d2~
  | d8 c16 b c8 d ees2~
  %185
  | ees8 d c bes! a g a c
  | b4 c2 bes4~
  | bes8 c bes a g fis g bes
  | a d c bes a g a c
  | bes2 r4 g
  %190
  | c2 r4 c~
  | c8 a bes c d ees d bes
  | ees4 c d2
  | g, r
  %---
  | R1*9
  | r2 f'_\markup \subject #'(0 . 0) #3
  | e g
  %205
  | fis4. gis8 a2~
  | a4. gis16 fis gis2
  | a r4 a
  | bes f bes a
  | gis e a g
  %210
  | fis d g2~
  | g fis
  | g r4 gis
  | a e a g!
  | f d g2~
  %215
  | g8 a g f e2
  | f8 g f e d2
  | a4 a'2 g4
  | f2_\markup \subject #'(0 . 0) #3
    e
  | g fis4. gis8
  %220
  | a1~
  | a4. gis16 fis gis2
  | a4 r a,2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #3
  | bes g
  | aes4. g8 fis2~
  %225
  | fis g
  | c r4 cis
  | d2 r4 dis
  | e8 d!16 e f4~ f8 b, e d
  | cis b a4 r a
  %230
  | d1~
  | d8 e16 f e8 d cis a d c
  | bes4 a bes2
  | a4 r r2
  | r d_\markup \subject #'(0 . 0) #1
  %235
  | a'2. g4
  | f1
  | g
  | \once \override TextScript.padding = #1
  | \once\override Staff.TextScript.extra-offset = #'(8 . 0)
    a_\markup {
      \column {
        \line { \italic\small { Über dieser Fuge, wo der Nahme B A C H } }
        \line { \italic\small { im Contrasubject angebracht worden ist } }
        \line { \italic\small { der Verfasser gestorben } }
        \line {
          \tiny {
            \char ##x2014 in the autograph, in the hand of (?) C.P.E. Bach
            { \with-color #middleGrey (*) }
          }
        }
      }
    }
  | d,4 s2.
  \bar "|"
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 19"
    subtitle = ""
    title = \markup {
      [Contrapunctus XIV]
    }
  }
  \layout { }
  \midi { \tempo 4 = 120 }
}

\markup {
  \column {
    \pad-around #4
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      (*) This line has generated romantic images of Bach dictating these last notes shortly before
      his death, but calligraphic research has shown that this is false.
      The handwriting on the last page of Contrapunctus XIV is definitely Bach’s, and it is in a clear,
      steady hand as opposed to the erratic handwriting of Bach’s final years.
      The final page of Contrapunctus XIV was definitely written several years before Bach’s death.
    }
  }
}

\pageBreak

\markup \fill-line {
  \center-column \abs-fontsize #14 \bold \with-color #middleGrey {
    \null
    "Brief notes on the completion of Contrapunctus XIV"
    \null
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Ruth Tatlow states that the Art of Fugue is
      “the most developed thesis of Bach as a mathematician”
      \abs-fontsize #8 {
        [Bach and the riddle of the number alphabet – 1991, Cambridge University Press].
      }
      We will see some examples in these notes, where \italic { “mathematician” } is to be understood
      primarily in the geometric-algebraic sense of the proportions of the composition and the relationships
      between musical voices.
      Most of the material that follows is based on Indra Nicholas Martindale Hughes'
      \with-url #"https://researchspace.auckland.ac.nz/handle/2292/392" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "doctoral thesis" }
      }
      \italic {
        “Accident or Design? New Theories on the Unfinished Contrapunctus 14 in J. S. Bach’s
        The Art of Fugue BWV 1080”
      } — 2006, University of Auckland.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \musicglyph "one" "XIV and no further"
  }
}

\markup {
  \column {
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #9 \italic \with-color #middleGrey {
      “Seine letzte Kranckheit, hat ihn verhindert, seinem Entwurfe nach, die vorletze
      Fuge völlig zu Ende zu bringen, und die letzte, welche 4 Themata enthalten, und
      nachgehends in allen 4 Stimmen Note für Note umgekehret werden sollte, auszuarbeiten.”
      — \italic { from Bach's Obituary, 1754 }
    }
    \pad-around #1
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \wordwrap \abs-fontsize #9 \with-color #middleGrey {
      [His last illness prevented him from completing the penultimate fugue according to his
      draft, and from working out the last one, which was to contain 4 themes and subsequently
      be reversed note for note in all 4 voices. This work only came to light after the blessed
      author's death.]
    }
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The Bach's Obituary was written in the latter half of 1750, within months of Bach’s death, and
      published in 1754 in Lorenz Christoph Mizler's \italic { Musikalische Bibliothek, }
      the organ of Mizler's Musical Society of which Bach had been a member from 1747
      (the 14th member admitted to the society, see below).
      Although no author is indicated in the article, its authors are known to be Carl Philipp Emanuel,
      Bach's son, and Johann Friedrich Agricola, one of Bach's pupils.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Huges believes that the words \italic { “penultimate” } and \italic { “last” } in the obituary excerpt
      above should be interpreted as the third (incomplete) and fourth (missing) parts of Contrapunctus XIV,
      and that a Contrapunctus XV was never planned by Bach.
      The Contrapunctus XIV was presumably meant by Bach as a \italic { quadruple fugue } – a fugue with four
      subjects.
      Only three subjects are present in the extant portion of the fugue, but a fourth one is visibly
      missing.
      The Art of Fugue is in fact an in-depth exploration of the contrapuntal possibilities
      inherent in a single musical subject and this subject cannot fail to appear in every fugue.
      However, it was not until 1881 that Gustave Nottebohm discovered that this main Art of
      Fugue subject is able to be combined with the first three subjects, and that it
      must therefore have been the fourth subject of this quadruple fugue
      \abs-fontsize #8 {
        [Nottebohm, G. (1881) “J. S. Bachʹs letzte Fuge” Music‐Welt: 234].
      }
      The combination of the four subjects as given by Nottebohm and Christoph Wolff follows.
    }
  }
}

\score {
  \new PianoStaff
  <<
    \applyContext #(override-color-for-all-grobs middleGrey)
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \omit Staff.TimeSignature
      \context Voice = "one" \relative c'' {
        \voiceOne
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        %1
        | \stemUp
          d2^\markup \subject #'(0 . 0) #1 a'
        | f d
        | cis d4 e
        | f2~ f8 g f e
        %5
        | d8 s s2.
        | s1
        | s1
          \bar ""
      }
      \context Voice = "two" \relative c' {
        \voiceTwo
        \override MultiMeasureRest.staff-position = #-10
        %1
        | \stemDown
          r4 f8_\markup \subject #'(0 . 0) #2 g f e d cis
        | d a d e f e d f
        | e a, e' f g f16 e f8 g
        | a g f g a2~
        %5
        | a8[ g16 fis g8 a] bes2~
        | bes8 a g f e d e g
        | \once\omit Stem f4 s2.
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \omit Staff.TimeSignature
      \context Voice = "tenor" \relative c' {
        %1
        | \stemUp\tieUp
          s1
        | s1
        | r2 bes^\markup \subject #'(-1 . 0) #3
        | a c
        %5
        | b4. cis8 d2~
        | d4. cis16 b cis2
        | \once\omit Stem d4 s2.
      }
      \context Voice = "bass" \relative c {
        \voiceFour
        %1
        | \stemDown s1
        | d2\rest d_\markup \subject #'(0 . 0) #4
        | a'2. g4
        | f1
        %5
        | g1
        | a1
        | \once\omit Stem d,4 s2.
          \bar ""
      }
    >>
  >>
  \header { }
  \layout {
    indent = 0
    ragged-right = ##f
    %system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
    #(layout-set-staff-size 17)
  }
  \midi { }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Thus, according to the obituary, the fourth and final section of Contrapunctus XIV is to include at
      least two episodes in which the four subjects appear together in a recto and inversus combination.
      Here is an alternative solution to the quadruple subjets combination, as proposed by
      Hughes.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey { " " }
  }
}

\score {
  \new PianoStaff
  <<
    \applyContext #(override-color-for-all-grobs middleGrey)
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \omit Staff.TimeSignature
      \context Voice = "one" \relative c' {
        \voiceOne
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        %1
        | \stemUp
          f4\rest f8^\markup \subject #'(0 . 0) #2 g f e d cis
        | d a d e f e d f
        | e a, e' f g[ f16 e f8 g]
        | a g f g a2~
        %5
        | a8[ g16 fis g8 a] bes2~
        | bes8 a g f e d e g
        | \once\omit Stem f4 s2.
          \bar ""
      }
      \context Voice = "two" \relative c' {
        \voiceTwo
        \override MultiMeasureRest.staff-position = #-10
        %1
        | \stemDown
          R1
        | R
        | \once\override Voice.Rest.X-offset = #-0.8
          r2 bes_\markup \subject #'(1 . 0) #3
        | a c
        %5
        | b4. cis8 d2~
        | d4. cis16 b cis2
        | \once\omit Stem d4 s2.
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \omit Staff.TimeSignature
      \context Voice = "tenor" \relative c {
        %1
        | \stemUp\tieUp
          d2_\markup \subject #'(0 . 0) #1 a'4. g8
        | f4. e8 d2
        | cis d4. e8
        | f2~ f8 g f e
        %5
        | d r r4 r2
        | R1
        | s
      }
      \context Voice = "bass" \relative c {
        \voiceFour
        %1
        | \stemDown
          R1
        | r2 d,_\markup \subject #'(1 . 0) #4
        | a'2. g4
        | f1
        %5
        | g1
        | a1
        | \once\omit Stem d,4 s2.
          \bar ""
      }
    >>
  >>
  \header { }
  \layout {
    indent = 0
    ragged-right = ##f
    #(layout-set-staff-size 17)
  }
  \midi { }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      And his solution to the arduous problem of the quadruple inversus combination,
      using the 14‐note form of \circle\musicglyph "four".
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey { " " }
  }
}

\score {
  \new PianoStaff
  <<
    \applyContext #(override-color-for-all-grobs middleGrey)
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \omit Staff.TimeSignature
      \context Voice = "one" \relative c'' {
        \voiceOne
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        %1
        | \stemUp
          f2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #4 bes,4. c8
        | d4. ees8 f2
        | g2 f4. ees8
        | d2~ d8 c d e
        %5
        | f4 aes,8 bes c ees des c
        | des c bes4 c8 bes a4
        | \once\omit Stem aes s2.
          \bar ""
      }
      \context Voice = "two" \relative c' {
        \voiceTwo
        %1
        | \stemDown
          R1  % b8\rest c d ees f c d ees
        | R1  % d4. c8 bes2~
        | r2  % bes4 r
          a'2_\markup \scale #'(1 . -1) \subject #'(1 . 0) #3
        | bes g
        %5
        | aes4. ges8 f2~
        | f4. ges16 aes ges2
        | \once\omit Stem f4 s2.
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \omit Staff.TimeSignature
      \context Voice = "tenor" \relative c {
        %1
        | \stemUp\tieUp
          r4 d8^\markup \scale #'(1 . -1) \subject #'(0 . 0) #2 c d ees f g
        | f bes f ees d ees f d
        | ees bes' ees, d c d16 ees d8 c
        | bes c d c bes2~
        %5
        | bes8 c16 des c8 bes a2~
        | a8 bes c d ees f ees c
        | \once\omit Stem d4 s2.
      }
      \context Voice = "bass" \relative c {
        \voiceFour
        %1
        | \stemDown
          R1
        | r2 bes2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
        | ees,2. f4
        | g1
        %5
        | f
        | ees
        | \once\omit Stem bes'4 s2.
          \bar ""
      }
    >>
  >>
  \header { }
  \layout {
    indent = 0
    ragged-right = ##f
    #(layout-set-staff-size 17)
  }
  \midi { }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \musicglyph "two" "Symbology of the number 14"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The Art of Fugue is rich in symbolism related to the number 14,
      which is a transposition of the name Bach
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \pad-around #2
    \column {
      \line { "B + A + C + H = 2 + 1 + 3 + 8 = 14" }
    }
  }
}
\markup {
  \pad-around #1
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      according to number alphabet designated by Tatlow as
      “Latin natural-order: variant 1” \abs-fontsize #8 { [op. cit.] }
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 2)
    \pad-around #2
    \center-column {
      \line {
        "A(1)" "B(2)" "C (3)" "D (4)" "E (5)" "F(6)" "G(7)" "H(8)" "I/J(9)"
        "K(10)" "L(11)" "M(12)" "N(13)"
      }
      \line {
         "O(14)" "P(15)" "Q(16)" "R(17)" "S(18)" "T(19)" "U/V(20)" "W(21)" "X(22)"
         "Y(23)" "Z(24)"
      }
    }
  }
}

\pageBreak

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The number 41, the retrograde of 14, is also present in the Art of Fugue, where:
    }
  }
}

\markup \fill-line {
  \pad-around #1
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \column {
      \line { "J + S + B + A + C + H = 9 + 18 + 2 + 1 + 3 + 8 = 41" }
    }
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      "Occurrences of the number 14 and 41 in the Art of Fugue:"
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      " • In The Art of Fugue" "there are 14 Contrapuncti"
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 2)
  \table
    #'(-1 -1)
    {
      " • Contrapunctus I"
          \concat {
            "the first two notes are D and A: 4 and 1 "
            \abs-fontsize #8 { "[Kellner, H. A. (May 1999) The Diapason]" }
          }
      " • Contrapunctus II"             "there are 14 entries of the subject"
      " • Contrapunctus V and onwards"  "the subject with and addition of passing notes arrives at a total of 14 notes"
      " • Contrapunctus V"              "appearance of the BACH motive at bar 41"
      " • Contrapunctus VI"             "there are 14 entries of the subject rectus and 14 entries inversus"
      " • Contrapunctus XIV"            "the second subject consists of 41 notes"
      " • Contrapunctus XIV"            "the BACH motive makes its most prominent appearance as the third subject"
      " • Contrapunctus XIV"            "the last (incomplete) bar has number 239, and 2 + 3 + 9 = 14"
    }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      This should reinforce Huges' theory of the non-existence of an additional
      Contrapunctus XV designed by Bach at the close of the Art of Fugue cycle:
      ending the cycle with Fugue XIV would better adhere to this symbolism.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \musicglyph "three" "Subjects exposition and 4-chars permutations"
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The order of voices in which each subject enters at its exposition in Contrapunctus XIV is
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 6)
    \column {
      \line { "Section 1" "B T A S" }
      \line { "Section 2" "A S B T" }
      \line { "Section 3" "T A S B" }
      \line { "Section 4" "?" }
    }
  }
}
\markup {
  \pad-around #3
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      One permutation is missing, and given Bach's love of algebraic games
      (or simply to vary the order of items in the expositions as much as possible)
      the likely order of appearance of the subjects in the fourth section should be reasonably:
      S B T A.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \musicglyph "four" "Ratio of section lengths in Contrapunctus XIV"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Some of Bach's compositions show a constant proportional ratio in the number of bars of
      the different sections that make them up.
      This principle also seems to be present in Contrapunctus XIV according to Gregory Butler.
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      “If we examine the relative proportions of the three extant sections of this fugue,
      we notice a consistent diminution in the lengths of successive sections.
      Moreover, section 2 (78 measures) is almost exactly two-thirds the length of section 1
      (115 measures), and section 3, not quite complete, occupies forty-six measures and
      conceivably in its complete state would have occupied approximately two-thirds the
      length of section 2 (52 measures). Adhering to the same proportions, section 4 may
      well have occupied approximately two-thirds the length of section 3, that is,
      approximately thirty-four measures.”
      \abs-fontsize #8 \normal-text {
        [Butler, G.: Ordering Problems in J S Bach's 'Art of Fugue' Resolved]
      }
    }
  }
}
\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      This theory was refined by Hughes as follows.
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 4)
    \column {
      \line {
        "Section 1" "bars 1 – 114.25"
      }
      \line {
        "Section 2" "bars 114.25 – 192.50   →   79.25 bars (1.4(4) = ratio 2·1)"
      }
      \line {
        "Section 3"
        \concat {
          "bars 192.50 – 248.50   ←   "
          \bold { "55 bars" } " to achieve a ratio 3·2 of 1.4, "
          \bold { "9 bars" } " missing (up to bar 248)"
        }
      }
      \line {
        "Section 4"
        \concat {
          "bars 248.50 – 286.50   ←   "
          \bold { "38 bars" } " to achieve a ratio 4·3 of 1.4 (up to bar 286)"
        }
      }
    }
  }
}

%\score {
%  \new PianoStaff
%  <<
%    \accidentalStyle Score.piano
%    \context Staff = "upper" <<
%      \set Staff.midiInstrument = #"acoustic grand"
%      \Global
%      \clef treble
%      \context Voice = "one" {
%        | \set Score.currentBarNumber = #239
%          \omit Staff.TimeSignature
%          \stemDown f'4 s2.
%        | \override Score.BarNumber.break-visibility = ##(#t #t #t)
%          \override Score.BarNumber.color = #lightGrey
%          \set Score.barNumberVisibility = #all-bar-numbers-visible
%          \set Score.currentBarNumber = #240
%          s4_\markup \tiny\italic \with-color #lightGrey {
%            \column \italic { "9 bars missing" }
%          }
%          s2.
%          \applyContext #(override-color-for-all-grobs lightGrey)
%        | \set Score.currentBarNumber = #249
%          \override Score.BarLine.color = #lightGrey
%          \override Score.SpanBar.color = #lightGrey
%          s4^\markup {
%            \hspace #0 \raise #1 "XIV/d"
%          }_\markup \tiny\italic {
%               \column \italic {
%                 "38 bars missing,"
%                 "up to bar 286"
%               }
%          }
%          \revert Score.BarNumber.break-visibility
%          s2.
%         \fine
%      }
%    >>
%    \context Staff = "lower" <<
%      \set Staff.midiInstrument = #"acoustic grand"
%      \Global
%      \clef bass
%      \context Voice = "two" {
%        | \omit Staff.TimeSignature
%          << { d'8 e' d' c'! b a b d' }
%          \\ { d4 s2. } >>
%          \applyContext #(override-color-for-all-grobs lightGrey)
%        | s1
%        | s1
%          \fine
%      }
%    >>
%  >>
%  \header { }
%  \layout {
%    indent = 0
%    ragged-right = ##f
%  }
%  \midi { }
%}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      This extrapolation may seem really far-fetched, but it becomes less so when one takes into
      account that the ratio 1.4 also appears among the Kyrie sections
      in the \italic { Mass in B minor, } where the three movements of the Kyrie
      (Kyrie I – Christe – Kyrie II) sit in a diminishing proportional relationship to one another,
      a ratio of 1.4 existing between the relative lengths of each movement 122 : 84.75 : 59.
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Finally, note that 55 = 14 + 41.
      Another number frequently seen in Bach's music.
    }
  }
}

\markup \fill-line {
  \pad-around #3
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \musicglyph "five" "Multi-level proportions"
  }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The Art of Fugue shows remarkable symmetries on multiple levels.
    }
  }
}
\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      At the macroscopic level, as Yasuhiko Nakajima points out on his website
      \with-url #"https://www.lcv.ne.jp/~nakgie/English/" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "The Art of Fugue Laboratory" }
      }
      one can see a symmetry by total number of bars per section.
    }
  }
}

\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 4)
  \table
    #'(0 -1 -1 1 1)
    {
      " " "" "" "" ""
      " " \italic { Style "G. Butler's reconstruction"       "Bar number"  "Tot. bars" }
      "" " "             ""                                    ""            ""
      "" "Simple"        "Contrapunctus I"                      78   ""
      "" ""              "Contrapunctus II"                     84   ""
      "" ""              "Contrapunctus III"                    72   372
      "" ""              "Contrapunctus IV"                    138   ""
      "" " "             ""                                    ""    ""
      "" "Inversion"     "Contrapunctus V"                      90   ""
      "" ""              "Contrapunctus VI"                     79   230
      "" ""              "Contrapunctus VII"                    61   ""
      "" " "             ""                                    ""    ""
      "" "Three themes"  "Contrapunctus VIII"                  188   ""
      "" "Two themes"    "Contrapunctus IX"                    130   438
      "" ""              "Contrapunctus X"                     120   ""
      "" " "             ""                                     ""   ""
      "" "Three themes"  "Contrapunctus XI"                    184   ""
      "" "Mirror"        "Contrapunctus XII rectus/inversus"   112   438
      "" ""              "Contrapunctus XIII recus/inversus"   142   ""
      "" " "             ""                                    ""    ""
      "" "Four themes"   "Contrapunctus XIV"                   239   \bold { 239 }
      "" " "             ""                                    ""    ""
      "" "Canons"        "Canon I"                             103   ""
      "" ""              "Canon II"                             82   ""
      "" ""              "Canon III"                            78   372
      "" ""              "Canon IV"                            109   ""
    }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Counterpoint XIV breaks the symmetry, by not having 230 bars.
    }
  }
}

\pageBreak

\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      A deeper
      \with-url #"https://www.jstor.org/stable/43030058?seq=1" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "mathematical analysis" }
      }
      of The Art of Fugue’s structure made by Loïc Sylvestre and Marco Costa
      \abs-fontsize #8 {
        [The Mathematical Architecture of Bachʹs The Art of Fugue - Il Saggiatore Musicale, 2010]
      }
      shows an amazing adherence to the \italic { Fibonacci sequence }
    }
  }
}
\markup \fill-line {
  \pad-around #1
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    "1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, ..."
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Fibonacci numbers are intimately linked to the irrational number called the \italic { golden ratio }
    }
  }
}
\markup \fill-line {
  \pad-around #1
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \concat { \char ##x1D6DF " " = " " (1 + \char ##x221A 5) " " / " " 2 " " \char ##x2248 " " 1.618 }
  }
}


\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      because if F(n) describes the nth Fibonacci number, the quotient of the adjacent terms F(n+1) / F(n)
      will approach the limit \char ##x1D6DF .
      The golden ratio, in its geometric manifestation, was already known to ancient Greek mathematicians
      and was also very popular among artists even in times before Bach's.
      Euclid's Elements provides the first known written definition:
      \italic { “A straight line is said to have been cut into the extreme and golden ratio when,
      as the whole line stands to the greater segment, so the greater stands to the lesser.” }
    }
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      We will focus on the ratios in the number of bars of the Art of Fugue, using the following rationale.
      Since in the manuscript the \italic { rectus } and \italic { inversus } of Contrapuncti XII and XIII
      are not written separately, but aligned, one below the other as a unit, we consider here their number
      of bars only once instead of summing rectus and inversus.
      Some examples of golden ratios follows. (Here \char ##x2211 means ‘sum of bars’.)
    }
  }
}

\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1 0 0)
    {
      \abs-fontsize #8 { "(1)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,5,6,7" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4" }
      "=" "602 / 372"
      "=" "1.618" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(2)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 5,6,7" }
      "=" "372 / 230"
      "=" "1.617" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(3)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,...,12,13,14" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 8,9,10,11,12,13,14" }
      "=" "1590 / 988"
      "=" "1.609" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(4)" }
      \concat { \char ##x2211 "Contrapuncti 8,9,10,11,12,13,14" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,5,6,7" }
      "=" "988 / 602"
      "=" "1.641" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(5)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,5,6,7" }
      "/"
      \concat { \char ##x2211 "Canons 1,2,3,4" }
      "=" "602 / 230"
      "=" "1.618" \char ##x2248 \char ##x1D6DF
    }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      These examples also show a beautiful fractal phenomenon of \italic { self-similarity. }
      It can also be observed that the ratio (3) would be 1.614 with a 230 bar long Contrapunctus XIV.
      Likewise the ratio (4) would be 1.626.
      Both better approximations of the \char ##x1D6DF value.
    }
  }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Other symmetries are present within the Contrapuncti.
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1)
    {
      "   "
      \concat { "Contrapunctus I" } "/" \concat { "Contrapunctus III" } "=" "78 / 72" "=" "1.083"
      "   "
      \concat { "Contrapunctus IX" } "/" \concat { "Contrapunctus X" } "=" "130 / 120" "=" "1.083"
    }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      And also within the four Canons, which can be divided into two pairs that share nearly the same ratio.
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1)
    {
      "   "
      \concat { "Canon alla ottava" } "/" \concat { "Canon alla duodecima" }
      "=" "103 / 78" "=" "1.320"

      "   "
      \concat { "Canon per augmentationem in contrario motu" } "/" \concat { "Canon alla decima" }
      "=" "109 / 82" "=" "1.329"
    }
}

\markup {
  \pad-around #2
  \center-column \fontsize #5 \with-color #middleGrey {
    \hspace #100
    \concat {
      \arrow-head #X #RIGHT ##f
      " "
      \arrow-head #X #LEFT ##f
    }
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The completion of the Contrapunctus XIV remains an interesting and challenging problem in itself,
      but in light of the above considerations, Nakajima's words seem agreeable.
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      Considering its structure without the common theme and with this asymmetry for the cycle of the art
      of fugue, the unfinished fugue might not be the member of the cycle.
      This is just my presumption but Bach was discouraged from completing it because of this excessive bar
      number. It is believed that composing, publication, and extension of pieces and addition of new pieces,
      all these were simultaneously ongoing at that time, then halfway built unfinished fugue could not
      match with the finally created symmetric structure.
    }
  }
}
