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
  | d2\rest \highlightSubjectFirst { a^\markup \subject #'(-0.8 . 0) #1
  | d2. d4
  | c1
  | d
  %20
  | e
  | a,2. } b4
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
  | d \highlightSubjectFirst { a^\markup \subject #'(-0.8 . 0) #1
  | d2. d4
  | c1
  %40
  | d
  | e
  | a,4 } b c2~
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
  | d\rest \highlightSubjectFirst { a^\markup \subject #'(-0.8 . 0) #1
  | d2. c4
  | bes1
  %65
  | c
  | d
  | g,2 } a4 bes
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
  | a \highlightSubjectFirstInv { a'^\markup \scale #'(1 . -1) \subject #'(-1 . 0) #1
  %80
  | d,2. e4
  | f1
  | e
  | d
  | \unHighlightSubject g~ }
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
  | c4 \highlightSubjectFirstInv { a'^\markup \scale #'(1 . -1) \subject #'(-0.5 . 0) #1
    d,2~
  | d4 e f2~
  %100
  | f e~
  | e4 d8 cis d2~
  | d \unHighlightSubject g~ }
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
    \break
  | d4 a~^\markup{\hspace #0 \raise #1 "XIV/b"} a g
  %115
  | f r r2
  %---
  | R1*5
  | r4 \highlightSubjectSecond { c'8^\markup \subject #'(0 . 0) #2
    d c b a gis
  | a e a b c b a c
  | b e, b' c d c16 b c8 d
  | e d c d e2~
  %125
  | e8 d16 cis d8 e f2~
  | f8 e d c b a b d
  | \unHighlightSubject c } a' g f e d e g
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
  | r4 \highlightSubjectSecond { f8^\markup \subject #'(0 . 0) #2
    g f e d cis
  | d a d e f e d f
  | e a, e' f g f16 e f8 g
  %150
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  | \unHighlightSubject f } e d c b a b d
  | c4 b8 a gis fis gis b
  %155
  | e,4 a2 gis4
  | a e'2 d4~
  | d c8 d e4 dis
  | e r r2
  | \override MultiMeasureRest.staff-position = #6
    R1*10
  | r2 \highlightSubjectFirst { f,^\markup \subject #'(0 . 0) #1
  %170
  | c'2. bes4
  | a1
  | bes
  | c
  | \unHighlightSubject f,2~ } f8 fis g a
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
  | b a g4 \highlightSubjectFirst { d'2^\markup \subject #'(-0.8 . 0) #1
  | g2. f4
  %185
  | ees1
  | f
  | g
  | \unHighlightSubject c,~ }
  | c8 fis, g a bes c bes g
  %190
  | ees'1~
  | ees8 ees d c bes a bes d
  | \mergeDifferentlyDottedOn
    g,4. a8 fis4. g8
    \break
  | g2 d'\rest^\markup{\hspace #0 \raise #1 "XIV/c"}
  | \override MultiMeasureRest.staff-position = #2
    R1*7
  | r2 \highlightSubjectThird { bes^\markup \subject #'(0 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  %205
  | d4 } r r dis
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
  | e r \highlightSubjectThird { bes'2^\markup \subject #'(-0.8 . 0) #3
  | a c
  | b4. cis8 d2~
  %220
  | d4. cis16 b cis8 dis dis4\turn }
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
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  | s1*10
  | s2 \stemUp \highlightSubjectFirst { d^\markup \subject #'(0 . 0) #1
  | a'2. g4
  | f1
  | g
  %15
  | a
  | \unHighlightSubject d,~ }
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
    \highlightSubjectFirstInv { a2_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #1
  | d,2. e4
  | f1
  | e
  | d
  %35
  | \unHighlightSubject a'~ }
  | a2. g4~
  | g f8 e f2
  | r
    \highlightSubjectFirst { d_\markup \subject #'(1.2 . 0) #1
  | a'2. g4
  %40
  | f1
  | g
  | a
  | d,4 } e f2~
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
  | \highlightSubjectFirstInv { f_\markup \scale #'(1 . -1) \subject #'(1 . 0) #1
  | bes,2. c4
  | d1
  | c
  %75
  | bes
  | f'2. } ees8 f
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
  | g fis \highlightSubjectFirst { g2_\markup \subject #'(1.2 . 0) #1
  | d'2. c4
  | bes1
  %95
  | c
  | \once\override NoteColumn.force-hshift = #0 d
  | g,2. } fis8 g
  | a4 c8 bes a g a4~
  | a g \highlightSubjectFirst { d2_\markup \subject #'(1.2 . 0) #1
  %100
  | a'2. g4
  | f1
  | g
  | a
  | d,4 } g8 f g a bes4
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
  | g \highlightSubjectSecond { f8_\markup \subject #'(0 . 0) #2 g f e d cis
  %115
  | d a d e f e d f
  | e a, e' f g f16 e f8 g
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  %120
  | \unHighlightSubject f } e d c b a b d
  | c b a gis a4 b
  | c4. d8 e4 fis
  | g gis2 a4~
  | a8 f e d
    \once\override Beam.positions = #'(-5 . -6)
    \hideStaffSwitch c b
    \staffLower\stemUp
    a g
  %125
  | f
    \staffUpper\stemDown
    g' f \showStaffSwitch e
    \staffLower\stemUp
    d c b a
  | gis4 a2 gis4
  | a b
    \staffUpper\stemDown
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
  | r4 \highlightSubjectSecond { c'8_\markup \subject #'(0 . 0) #2
    d c b a gis
  | a e a b c b a c
  | b e, b' c d c16 b c8 d
  | e d c d e2~
  %160
  | e8 d16 cis d8 e f2~
  | f8 e d c b a b d
  | \tieUp \unHighlightSubject c1~ }
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
  | c b c d \highlightSubjectFirst { g,2_\markup \subject #'(1.5 . 0) #1
  | d'2. c4
  | b1
  %185
  | c
  | d
  | g,4 } a bes2~
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
  | r2 \highlightSubjectThird { f'_\markup \subject #'(1 . 1.5) #3
  | e g
  | fis4. gis8 a2~
  | a4. gis16 fis gis2
  | a4 } e a g
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
  | r \highlightSubjectThirdInv { e_\markup \scale #'(1 . -1) \subject #'(1.3 . 0) #3
  | f d
  %215
  | ees4. d8 cis2~
  | cis \unHighlightSubject d~ }
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
    \highlightSubjectThird { bes_\markup \subject #'(0 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  %230
  | \unHighlightSubject d8 } e16 f g2 cis,4
  | d8 a bes4 a2~
  | a8 g f e d4 r
  | r8 \highlightSubjectSecond { e_\markup \subject #'(-2 . 0) #2 f
    g f e d cis
  | d a d e f e d f
  %235
  | e a, e' f g f16 e f8 g
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  | f4 } s2.
    \bar "|"
  %250

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  \override MultiMeasureRest.staff-position = #6
  \override VoiceFollower.color = \greyTextColor
  | R1*5
  | r2 \highlightSubjectFirst { a^\markup \subject #'(0 . 0) #1
  | \staffUpper\stemDown
    d2. d4
  | c1
  | d
  %10
  | e
  | \staffLower\stemUp
    a,2 }
    \staffUpper\stemDown\tieDown
    d~
  | d cis
  | d4 a bes2~
  | bes4
    \staffLower\stemUp\tieUp
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
  | r2 \highlightSubjectFirst { d,^\markup \subject #'(0 . 0) #1
  %25
  | a'2. g4
  | f1
  | g
  | a
  | d,2. } c8 d
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
    \highlightSubjectFirstInv { d'^\markup \scale #'(1 . -1) \subject #'(-0.3 . 0) #1
  | g,2. a4
  | bes1
  | a
  | g
  %60
  | d'2. } e8 d
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
    \highlightSubjectFirstInv { bes^\markup \scale #'(1 . -1) \subject #'(-1 . 0) #1
  | f2. g4
  | a1
  %75
  | g
  | f
  | c'2. } d8 ees
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
  | f8 g a bes c2
  | f,2. f4
  | g1
  | a
  | bes
  %95
  | f4 c' f2~
  | f4 ees d2
  | c2\rest \highlightSubjectFirst { a^\markup \subject #'(-0.8 . 0) #1
  | d2. c4
  | b1
  %100
  | cis
  | d
  | g,4 } a bes c8 bes
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
  | r4 \highlightSubjectSecond { c8^\markup \subject #'(0 . 0) #2
    d c b a gis
  | a e a b c b a c
  | b e, b' c d c16 b c8 d
  | e d \hideStaffSwitch c
    \staffUpper
    \stemDown\tieDown
    d \showStaffSwitch e2~
  | e8 d16 cis d8 e f2~
  %140
  | f8 e d c
    \staffLower
    \stemUp\tieUp
    b a b d
  | c2 } cis
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
  | r \highlightSubjectFirst { a,2^\markup \subject #'(-0.5 . -1.5) #1
  | e'2~ e4. d8
  | c1
  %160
  | d
  | e
  | \unHighlightSubject a,8 } \hideStaffSwitch
    \staffUpper\stemDown\tieDown
    a' \showStaffSwitch g f e d e g
  | f1~
  | f8 g f e d c d f
  %165
  | e4 d\rest
    \staffLower\stemUp\tieUp
    c2\rest
  | R1
  | r4 \highlightSubjectSecond { a8^\markup \subject #'(0 . 0) #2
    bes a g f e
  | f c f g a g f a
  | g c, g' a bes a16 g a8 bes
  %170
  | c bes a bes c2~
  | c8 bes16 a bes8 c d2~
  | d8 c bes a g f g bes
  | \unHighlightSubject a1~ }
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
  | \staffUpper\stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0 g
    bes aes g fis4. g8
  | \once\override NoteColumn.force-hshift = #0 aes \hideStaffSwitch
    \staffLower
    \stemUp\tieUp
    g, \unHideNotes f ees d c d f
  | e!1
  | fis4 r r2
  | r8 d e fis g2~
  %190
  | g8 g a bes c d c bes
  | a4 r r2
  | r4 bes a8 g a4
  | g2 \highlightSubjectThird {
    bes_\markup \italic\tiny \with-color #greyTextColor { "B" }^\markup \subject #'(-0.8 . 0) #3
  | a_\markup \italic\tiny \with-color #greyTextColor { "A" }
    c_\markup \italic\tiny \with-color #greyTextColor { "C" }
  %195
  | b4._\markup \italic\tiny \with-color #greyTextColor { "H" } cis8 d2~
  | d4. cis16 b cis2\prall
  | d } r4 dis
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
  | r2 \highlightSubjectThird { bes^\markup \subject #'(-0.8 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  | d4. } c!8 b4 a
  %215
  | bes!2~ bes8 a bes g
  | a2~ a8 bes a gis
  | a4 r r bes
  | c d e f8 e
  | d2~ d8 cis d f
  %220
  | e d e2 b4
  | b1
  | \highlightSubjectThird { \unHighlightSubject a4. } g16 f e4. d16 e
  | d4 e8 fis g4 f
  | ees8 d c4 d ees~
  %225
  | ees8 d ees4~ ees8 d \highlightSubjectThird { f4~^\markup \subject #'(0 . 0) #3
  | f e!~ e g~
  | g fis~ fis8 gis a4~
  | a2~ a8 gis16 fis gis4~
  | gis \unHighlightSubject a8 } e a bes16 a g!8 a
  %230
  | bes d g, a bes g e f16 g
  | a4 g2 f4~
  | f8 e16 d a'4~ a g
  | a r r2
  | R1
  %235
  | r2 \highlightSubjectThird { bes^\markup \subject #'(-0.8 . 0) #3
  | a c
  | b4. cis8 d2~
  | d4. cis16 b cis2
  | \unHighlightSubject d8 } e d c! b a b d
    \bar "|"
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \mergeDifferentlyDottedOn
  %1
  | d2\rest \highlightSubjectFirst { d_\markup \subject #'(1.2 . 0) #1
  | a'2. g4
  | f1
  | g
  %5
  | a
  | d,2 } f~
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
  | r2 \highlightSubjectFirstInv { d_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | a2. b4
  | c1
  | bes!
  %25
  | a
  | d }
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
  | g \highlightSubjectFirst { g,_\markup \subject #'(1.2 . 0) #1
  | c2. bes4
  %45
  | a1
  | bes
  | c
  | f,2 } fis
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
  | r \highlightSubjectFirst { d_\markup \subject #'(1.2 . 0) #1
  | a'2. g4
  | f1
  | g
  %65
  | a
  | d, }
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
  | r2 \highlightSubjectFirst { bes_\markup \subject #'(1.2 . 0) #1
  %90
  | f'2. ees4
  | d1
  | ees
  | f
  | bes,4 } c8 d ees2~
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
  | g4 f8 e f4 \highlightSubjectFirst { d_\markup \subject #'(-1.8 . 0) #1
  | a'2. g4
  | f1
  | g
  | a
  %110
  | \unHighlightSubject d,2~ } d8 c bes a
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
  | d4\rest \highlightSubjectSecond { f8_\markup \subject #'(0 . 0) #2
    g f e d cis
  | d a d e f e d f
  %130
  | e a e f g f16 e f8 g
  | a g f g a2~
  | a8 g16 fis g8 a bes2~
  | bes8 a g f e d e g
  | \unHighlightSubject f } e d c b a b d
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
  | f2 \highlightSubjectFirst { d_\markup \subject #'(0 . 0) #1
  | a'2. g4
  %150
  | f1
  | g
  | a
  | d,2 } e
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
  | r4 \highlightSubjectSecond { bes8_\markup \subject #'(-2 . 0) #2
    c bes a g fis
  | g d g a bes a g bes
  | a d, a' b c b16 a b8 c
  | d c b c d2~
  | d8 c16 b c8 d ees2~
  %185
  | ees8 d c bes! a g a c
  | b4 } c2 bes4~
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
  | r2 \highlightSubjectThird { f'_\markup \subject #'(0 . 0) #3
  | e g
  %205
  | fis4. gis8 a2~
  | a4. gis16 fis gis2
  | a } r4 a
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
  | \highlightSubjectThird { f2_\markup \subject #'(0.8 . 0) #3
    e
  | g fis4. gis8
  %220
  | a1~
  | a4. gis16 fis gis2
  | a4 } r \highlightSubjectThirdInv { a,2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #3
  | bes g
  | aes4. g8 fis2~
  %225
  | fis g
  | c } r4 cis
  | d2 r4 dis
  | e8 d!16 e f4~ f8 b, e d
  | cis b a4 r a
  %230
  | d1~
  | d8 e16 f e8 d cis a d c
  | bes4 a bes2
  | a4 r r2
  | r \highlightSubjectFirst { d_\markup \subject #'(1.2 . 0) #1
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
  | d,4 } s2.
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
    subsubtitle = \markup {
      \center-column {
        \line \normal-text \tiny \with-color \white {
          \on-color \expositionColor \pad-markup #0.8 "Exposition 1 B1 A1 T1 S1"  % bars 1-21
          \on-color \subjectStrettoColor \pad-markup #0.8 "Stretto B1 T1"         % bars 21-29
          \on-color \subjectPresentationColor \pad-markup #0.8 "A1"               % bars 30-35
          \on-color \subjectStrettoColor \pad-markup #0.8 "S1 A1"                 % bars 37-43
          \on-color \subjectPresentationColor \pad-markup #0.8 "B1"               % bars 43-48
          \on-color \episodeColor \pad-markup #1 "1"
          \on-color \subjectPresentationColor \pad-markup #0.8 "T1"               % bars 55-60
          \on-color \subjectStrettoColor \pad-markup #0.8 "B1 S1"                 % bars 61-67
          \on-color \episodeColor \pad-markup #1 "2"
          \on-color \subjectStrettoColor \pad-markup #0.8 "A1 T1"                 % bars 71-77
          \on-color \subjectPresentationColor \pad-markup #0.8 "S1"               % bars 79-84
          \on-color \episodeColor \pad-markup #1 "3"
          \on-color \subjectPresentationColor \pad-markup #0.8 "B1 A1 T1 S1 A1"   % bars 89-104
          \on-color \subjectPresentationColor \pad-markup #0.8 "B1"               % bars 105-110
          \on-color \episodeColor \pad-markup #1 "4"
        }
        \line \normal-text \tiny \with-color \white {
          \on-color \expositionColor \pad-markup #0.8 "Exposition 2 A2 S2 B2 T2"  % bars 114-141
          \on-color \episodeColor \pad-markup #1 "5"                              % bars 141-147
          \on-color \subjectPresentationColor \pad-markup #0.8 "S2 B1"            % bars 147-153
          \on-color \episodeColor \pad-markup #1 "6"
          \on-color \subjectPresentationColor \pad-markup #0.8 "A2 T1"            % bars 156-161
          \on-color \episodeColor \pad-markup #1 "7"
          \on-color \subjectPresentationColor \pad-markup #0.8 "T2 S1"            % bars 167-174
          \on-color \episodeColor \pad-markup #1 "8"
          \on-color \subjectPresentationColor \pad-markup #0.8 "B2 A1 S1"         % bars 180-188
          \on-color \episodeColor \pad-markup #1 "9"
        }
        \line \normal-text \tiny \with-color \white {
          \on-color \expositionColor \pad-markup #0.8 "Exposition 3/a T3 A3 S3 B3"   % bars 193-207
          \on-color \episodeColor \pad-markup #1 "10"
          \on-color \expositionColor \pad-markup #0.8 "Exposition 3/b T3 A3 S3 B3"   % bars 210-222
          \on-color \subjectPresentationColor \pad-markup #0.8 "B3 T3 A3"            % bars 222-229
          \on-color \episodeColor \pad-markup #1 "11"
          \on-color \subjectPresentationColor \pad-markup #0.8 "A2 B1 T3"            % bars 233-239
          \on-color \episodeColor \pad-markup #1 "?"
        }
      }
    }
  }
  \layout { }
  \midi { \tempo 4 = 120 }
}

\markup {
  \column {
    \pad-around #4
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      (*) This line
      (“At the point where the composer introduces the name B A C H in the countersubject to this fugue,
      the composer died.”)
      has generated romantic images of Bach dictating these last notes shortly before
      his death, but calligraphic research has shown that this is false.
      The handwriting on the last page of Contrapunctus XIV is definitely Bach’s, and it is in a clear,
      steady hand as opposed to the erratic handwriting of Bach’s final years.
      The final page of Contrapunctus XIV was definitely written several years before Bach’s death.
    }
  }
}
