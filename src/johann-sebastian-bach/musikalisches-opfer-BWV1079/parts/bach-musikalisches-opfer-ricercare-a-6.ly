Global = {
  \key c \minor
  \time 2/2
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp }
staffUpper = { \change Staff = "upper" \stemDown }

hshift = #(define-music-function (xoffset) (number?) #{
  \once\override NoteColumn.force-hshift = #xoffset
#})
hshiftRest = #(define-music-function (xoffset) (number?) #{
  \once\override Voice.Rest.X-offset = #xoffset
#})

i = \markup { \teeny "i" }
ii = \markup { \teeny "ii" }
iii = \markup { \teeny "iii" }
iv = \markup { \teeny "iv" }
v = \markup { \teeny "v" }
vi = \markup { \teeny "vi" }

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | s1*36
  | \hshift #0 c2^\i ees
  | g aes
  | \hshift #0.3 b,
    \hshiftRest #-0.2 b'4\rest \hshift #-0.2 \once\override Stem.length = #3 g
  %40
  | fis2 f
  | e ees2~
  | ees4 d des c
  | b g c f
  | ees2 d
  %45
  | c2. bes8 c
  | d4 c8 d ees4 d
  | c d8 ees d c b c
  | b d g2 f8 ees
  | \once\shape #'(((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5))) Tie
    d1~
  %50
  | d2 \once\shape #'(((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5))) Tie c~
  | c \once\shape #'(((0 . 0.7) (0 . 1.3) (0 . 1.3) (0 . 0.7))) Tie bes~
  | bes \once\shape #'(((0 . 0.3) (0 . 0.6) (0 . 0.6) (0 . 0.3))) Tie a~
  | a4 g8 fis g4 a8 bes
  | \once\shape #'(((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5))) Tie
    c1~
  %55
  | c4 d8 c bes4 a
  | bes2 c~
  | c4 bes g'2~
  | g f4 ees
  | d1~
  %60
  | d4 des c2~
  | c bes4 aes
  | g2. a8 bes
  | c4 bes8 c d4 c8 d
  | ees1
  %65
  | f
  | ees~
  | ees2 d~
  | d c4 bes
  | \hshift #0.7 aes2 aes'~
  %70
  | aes g~
  | g f4 ees
  | d c8 d ees2~
  | ees4 f8 g aes2
  | aes g
  %75
  | c1
  | f,4 bes2 aes8 g
  | f4 g aes2~
  | aes4 g f2\rest
  | \override MultiMeasureRest.staff-position = #2 R1
  %80
  | \override MultiMeasureRest.staff-position = #4 R1
  | \hshiftRest #1.5 f2\rest bes2~^\i
  | bes4 aes aes2~
  | aes4 g ges2
  | f2. bes4
  %85
  | e,2 f
  | g a
  | \once\shape #'(((0 . 0.5) (0 . 1.2) (0 . 1) (0 . 0.5))) Tie bes1~
  | bes2 a
  | bes4 f bes2~
  %90
  | bes4 aes!2 bes8 aes
  | g2 \hshiftRest #1.6 f\rest
  | \override MultiMeasureRest.staff-position = #6 R1
  | R1
  | c'4\rest g^\i c2~
  %95
  | c4 bes2 c8 bes
  | a4 aes2 g4
  | a bes8 a g2~
  | g4 a8 g fis4 a
  | d,2. cis8 d
  %100
  | e2. fis8 g
  | a4 g8 fis g2~
  | g fis
  | g g
  | fis f~
  %105
  | f4 e8 d e g aes!4~
  | aes8 g f e f4 g
  | c, f8 ees! des c bes a
  | bes c des2 c4
  | \hshift #0 f, e'4\rest f2\rest
  %110
  | R1
  | \hshiftRest #-1.2 f2\rest ees
  | f2. g4
  | aes ees c'2
  | b bes2~
  %115
  | bes4 aes~ aes8 g f e
  | f1
  | b2\rest bes4\rest \hshift #-0.3 \once\override Stem.length = #3 aes~
  | \hshift #0 aes8 g f e f4 g
  | \once\shape #'(((0 . 0.5) (0 . 1.5) (0 . 1.5) (0 . 0.5))) Tie
    \hshift #0.3
    c,1~
  %120
  | \hshift #0 c4 bes8 c bes aes g aes
  | \hshift #0.5 g2 \hshiftRest #-1 c4\rest g'~
  | g f2 e4
  | f2 f
  | d! bes
  %125
  | f'\rest ees
  | c aes
  | R1*3
  | \override MultiMeasureRest.staff-position = #8 R1
  %131
  | ees'2^\i g
  | aes c
  | d,! d'4\rest bes
  | a2 aes
  %135
  | g ges2~
  | ges4 f fes ees
  | d bes ees aes
  | g2 f
  | ees4 g bes ees,
  %140
  | aes f des ees8 f
  | ges4 ees
    \once\shape #'(((0 . 0) (0 . 0) (0 . -0.4) (-0.8 . -0.8))) Tie
    c2~
  | c8 ees des c bes2~
  | bes4 ees8 des c4 bes
  | a8 g a bes c des ees c
  %145
  | des ees des c bes c des bes
    \noBreak
  | \hshift #0 c2. bes4
    \noBreak
  | c8 ges' f ees
    \once\shape #'(((0 . 1.8) (0 . 2) (0 . 2) (0 . 1.8))) Tie
    des2~
  | des8 ees des c \hshift #0.3 des bes f'4~
  | f8 ees d! c bes2~
  %150
  | bes f'8\rest ees f ges
  | c, ees des c bes4 \once\override Stem.length = #4 \hshift #-0.2 a
  | bes2 g'\rest
  | \override MultiMeasureRest.staff-position = #4 R1*3
  %156
  | d8\rest d^\i e f g aes bes g
  | \once\shape #'(((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5))) Tie aes1~
  | aes4 aes g2~
  | g f4 es
  %160
  | \once\shape #'(((0 . 0) (0 . 0.3) (0 . 0.3) (0 . 0))) Tie
    \hshift #0.7 des1~
  | des2 c
  | f g
  | aes1~
  | aes2 g
  %165
  | aes4 b4\rest b2\rest
  | b4\rest g2 f8 ees
  | d2 \hshift #0.5 e
  | f8 g aes f d aes' g f
  | ees2~ ees8 d c b
  %170
  | c bes! aes g aes2
  | g2 f'\rest
  | a4\rest c,_~ \hshift #0.3 c8 bes a g
  | d'2~ d8 c bes a
  | \hshift #0.9 g4 f'\rest a2\rest
  %175
  | R1*2
  | f8\rest ees^\i d c bes a g fis
  | g4 g'2 fis4
  | g a\rest a2\rest
  %180
  | \override MultiMeasureRest.staff-position = #6 R1*3
  | g4\rest f d g
  | c, d8 e f2~
  %185
  | f4 ees!8 f bes,4 c8 d
  | ees4( f16 ees d ees f4 g16 f ees f)
  | g4 b\rest b2\rest
  | R1
  | b2\rest b4\rest des,~^\i
  %190
  | des c8 bes a4 f'~
  | f d! bes ees
  | a, b8 c d4
    \once\shape #'(((0 . 0.8) (0 . 1) (0 . 1) (0 . 0.5))) Tie
    des~
  | des c2 bes!4~
  | bes \hshift #0.3 aes8 g aes4 f'
  %195
  | \hshift #0 d g c, d8 e
  | \hshift #0 f2. \hshift #0 ees!8 \hshift #0 d
  | \hshift #0 ees4 b c c'\rest
  | e,\rest ees c f~
  | f g8 f ees2~
  %200
  | ees4 ees d2_~
  | d4 des c2~
  | c4 c b c
  | d! b c2~
  | c b
  %205
  | c\breve*1/2\fermata
  \fine
}

VoiceTwo = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  \slurUp\stemUp\tieUp
  %1
  | s1*8
  | g2^\ii bes
  %10
  | c ees
  | fis, f'4\rest d
  | cis2 c
  | b bes~
    \noBreak
  | bes4 a aes g
  %15
  | fis d g c
  | bes2 a
  | g4 aes!8( g16 f) g4 c
  | bes ees c f~
  | f ees8 d \stemNeutral ees2~
  %20
  | ees4 d a b
  | \stemUp c g e'\rest c8 bes!
  | a g f4 d'\rest aes
  | g4. f8 ees d c b
  | c4 c' f,2~
  %25
  | f4 ees d'\rest bes
  | ees d8 c b4 c
  | d2. e8 f
  | e4 fis g a
  | d,2. ees!8 d
  %30
  | c1~
  | c4 fis, g a
  | bes8 a g2 fis4
  | g2 d'\rest
  | d4\rest f, f'2~
  %35
  | f4 ees2 d8 c
  | d2. ees8 d
  | \once\stemDown \hshift #0 c2 a8\rest c bes aes
  | \once\override Stem.length = #5 g4 c2 d4~
  | d g8 f ees d c bes!
  %40
  | \hshift #0.3 a4 b8 c
    \once\shape #'(((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0))) Tie
    \hshift #0.3 d2_~
  | \hshift #0.7 d4 c8 b
    \once\shape #'(((0 . 0) (0 . -0.2) (0 . -0.2) (-0.8 . -0.5))) Tie
    \hshift #0.4 c2~
  | \hshift #0.2 c8 bes! \hshift #0.3 aes!2 \hshift #0.3 f4
  | g \hshiftRest #-1.2 f\rest
    \hshiftRest #1.4 g\rest
    \hshift #0.3 c8 b!
  | \hshift #0.3 c2. bes!8 aes
  %45
  | \hshift #0.3 g4 f8 g aes4 \hshift #0.3 g8 \hshift #0.3 aes
  | bes1
  | aes
  | \tieDown \hshift #0.3 g4. b!8
    \once\shape #'(((0.5 . 0.8) (0 . 0.5) (0 . 0.5) (-0.8 . 0.8))) Tie c2~
  | \hshift #1.2 c
     \once\shape #'(((0 . 0) (0 . 0) (0 . 0) (-0.8 . -0.5))) Tie
     bes!^~
  %50
  | \hshift #0.3 bes2. a8 g
  | \hshift #0.3 a2. g8 fis
  | \hshift #0.5 g2. fis8 e
  | \hshift #0.4 fis4 \hshift #0.4 d
    \once\stemDown
    \once\shape #'(((0 . 0.1) (0 . 0.4) (0 . 1) (-0.8 . 0.8))) Tie
    g2~
  | \hshift #0.6 g4 a8 g fis4 g
  %55
  | \once\shape #'(((0.5 . 0.5) (0 . 0.4) (0 . 0.4) (-0.4 . 0.4))) Tie
    \hshift #0.3 a2~
    \hshift #0.8 a8 g4 fis8
  | \hshift #0.3 g2 \hshift #0.3 a
  | \once\override Stem.length = #4 d, \hshiftRest #0.4 d'\rest
  | \hshiftRest #0.4 d\rest
    \once\shape #'(((0.5 . 0.2) (0 . 0.4) (0 . 0.4) (-0.8 . 0.6))) Tie
    \hshift #0.3 c~
  | \hshift #1 c
    \once\shape #'(((0 . -0.2) (0 . -0.6) (0 . -0.6) (-0.8 . -0.5))) Tie bes2^~
  %60
  | \hshift #0.3 bes \hshift #0.3 aes4 g
  | \once\shape #'(((0 . 0.7) (0 . 1) (0 . 0.8) (-0.6 . 0.3))) Tie f1~
  | \hshift #0.9 f2 ees4 \hshift #0.3 f8 \hshift #0.3 g
  | \hshift #0.3 f2
    \once\shape #'(((0.3 . 0.2) (0 . 0) (0 . 0) (-0.8 . 0.3))) Tie
    \hshift #0.3 bes~
  | \hshift #0.7 bes4 b c2
  %65
  | \once\shape #'(((0.8 . 0.5) (0 . 0.4) (0 . 0.4) (-0.8 . 0.5))) Tie
    d1~
  | \hshift #1.3 d2
    \once\shape #'(((0 . -0.8) (0 . -0.6) (0 . -0.6) (-1 . -0.8))) Tie
    c^~
  | \hshift #0.2 c \hshift #0.3 bes!4 aes!
  | \once\shape #'(((0 . 0) (0 . -0.8) (0 . -0.8) (0 . 0))) Tie
    g1~
  | \hshift #-0.4 g4 f \hshift #0.4 f'2~
  %70
  | \hshift #0.4 f \hshift #0.4 ees4 des
  | c1
  | bes
  | \hshift #0.3 c2. d8 ees
  | \hshift #0.4 f2 \hshift #0.4 ees^~
  %75
  | \hshift #0.8 ees4 f8 g f4 ees
  | \hshift #0.3 d2
    \once\shape #'(((0.8 . 0.8) (0 . 0.7) (0 . 0.7) (-0.8 . 0.8))) Tie
    ees~
  | \hshift #0.8 ees \hshift #0.3 d
  | \hshift #0.3 ees d\rest
  | \override MultiMeasureRest.staff-position = #0
    R1
  %80
  | \tieUp b2\rest ees~^\ii
  | ees4 d
    \override Stem.length = #4
    \hshift #0.3 des2~
  | \hshift #0.3 des4 \hshift #0.3 c \hshift #0.3 ces2
  | \hshift #0.3 bes2. ees4_~
  | \hshift #0.8 ees d8 c bes2
  %85
  | \hshift #0.3 c2. bes8 c
  | \hshift #0.5 des2 \hshift #0.3 c4 d8 ees
  | \hshift #0.7 f2. ees8 f
  | \hshift #0.3 ges2 \hshift #0.3
    \once\shape #'(((0 . 0) (0 . -0.3) (0 . -0.5) (-0.5 . -0.3))) Tie
    f2~
  | \hshift #0.4 f2. ees8 d
  %90
  | \hshift #0.3 c2 d\rest
  | \hshift #0.3 c ees
  | g4 d g2~
  | g4 f2 g8 f
  | ees4 \hshift #0.3 ees2 f8 ees
  %95
  | \override Stem.length = #5
    \stemDown\tieDown d4 g4. f8 ees d
  | c4 f bes, c~
  | c d8 c bes4 g
  | e'2 g,4\rest a~
  | a \stemUp g8 fis g4 e\rest
  %100
  | \override MultiMeasureRest.staff-position = #2
    R1
  | \override Stem.length = #4
    \hshiftRest #0.5 f4\rest a \hshift #0.3 bes g8 a
    \revert Stem.length
  | \hshift #0.4 bes c
    \once\shape #'(((0 . 0.5) (0 . 1.5) (0 . 0.5) (-1 . -0.4))) Tie
    d2.^~
  | \hshift #0.8 d4 g, \hshift #0.3 ees'2~
  | \stemDown ees8 d c b c4 d
  %105
  | g,4. bes!8 aes! g f e
  | f g aes2 g4
  | f g\rest \hshiftRest #1.4 g2\rest
  | \override MultiMeasureRest.staff-position = #-2 R1
  | \hshiftRest #-0.5 b2\rest a4\rest \stemUp bes^\ii
  %110
  | c2. d4
  | \hshift #0.2 ees bes \once \stemDown ees2
  | \hshift #0.3 d!
    \once\shape #'(((0.1 . -0.5) (0 . -0.8) (0 . -0.8) (-0.8 . -0.5))) Tie
    des^~
  | \hshift #0.3 des4 \hshift #0.3 c8 des \stemDown ees g aes4~
  | aes8 g f e f4 g
  %115
  | c,2 d\rest
  | \stemUp \hshiftRest #2.2 f4\rest c2 bes8 aes
  | g aes bes4~ bes8 g' f e
  | \stemDown \hshift #1.2 f g aes2 g4^~
  | \once\override Stem.length = #4 \hshift #0 g
    f4.
    \once\override Beam.positions = #'(-1 . -1.6)
    ees!8 des c
  %120
  | \hshift #0.8 des1
  | \once\shape #'(((0.8 . -0.8) (0 . -0.5) (0 . -0.5) (-0.8 . -0.8))) Tie
    \hshift #0 c^~
  | \stemUp \hshift #0.3 c4 \hshift #0.3 des2 \hshift #0.3 c4~
  | \hshift #0.3 c c \hshift #0.3 aes f
  | \hshift #0.3 aes2 \hshiftRest #1.2 g\rest
  %125
  | b4\rest bes \hshift #0.3 g ees
  | \tieUp \hshift #0.3 ges2 \hshift #0.6 ees~
  | ees e'4\rest c~
  | c8 f, g a bes c des bes
  | ees1~
  %130
  | ees8 aes, bes c des ees f des
  | \hshift #0.4 bes4. c8 \hshift #0.4 des c bes4
  | \hshift #0.3 aes ees'8 des \hshift #0.5 ees4 aes~
  | \stemDown aes8 c bes aes g f ees d!
  | c ges' f ees d c bes c
  %135
  | des fes ees des c bes aes bes
  | ces des ces bes aes ges f ges
  | aes ces bes aes g! f ees d!
  | ees4 ees'2 d8 c!
  | des2. c8 bes
  %140
  | ces2. bes8 a
  | bes2. a4
  | f'2. aes,!4
  | ges2. ees'4~
  | \tieDown ees c f,2~
  %145
  | f4 f'2 e4
  | \hshift #1.2 ees! \hshift #0 d des2
  | c~ \stemUp \hshift #0.8 c8 c bes a
  | \hshiftRest #0.2 bes2 \hshiftRest #-0.4 a4\rest b8\rest c
  | \once\override Stem.length = #4
    \once\shape #'(((0 . -1) (0 . -0.9) (0 . -1.2) (-0.8 . -1))) Tie
    f,2^~
    \hshift #0.3 f8 e4 f8
  %150
  | \hshift #0.3 g f e f ges2
  | \mergeDifferentlyHeadedOn
    \hshift #0.3 f~ \hshift #0.3 f8 f \hshift #0 ees! f
  | \hshift #0.3 ges aes ges f ees f ges ees
  | f4 f'\rest \hshiftRest #-0.4 d2\rest
  | c,8\rest c_\ii des ees f aes g f
  %155
  | c'1
  | R1
  | c8\rest c d e
    \once\shape #'(((0 . 0) (0 . 0) (0 . -0.3) (-0.8 . -0.8))) Tie
    f2^~
  | \hshift #0.4 f \hshift #0.3 ees!4 des
  | \once\shape #'(((0 . 0) (0 . 1.5) (0 . 1.5) (0 . 0))) Tie
    c1^~
  %160
  | c4 c
    \once\shape #'(((0 . 0) (0 . 0) (0 . -0.5) (-0.8 . -0.8))) Tie
    bes2^~
  | \hshift #0.3 bes \hshift #0.3 aes
  | des!1
  | \hshift #0.4 ees2. d!4
  | \once\shape #'(((0 . 0.3) (0 . 1.3) (0 . 1.3) (0 . 0))) Tie
    ees1^~
  %165
  | \hshift #0.4 ees4 ees2 des!8 c
  | bes4 \hshiftRest #1.6 d\rest b2\rest
  | \override MultiMeasureRest.X-offset = #-1
    R1
  | \override MultiMeasureRest.X-offset = #-1.8
    R1
  | \revert MultiMeasureRest.X-offset
    R1
  %170
  | \override MultiMeasureRest.staff-position = #-8
    R1
  | g2 \hshift #0.2 b
  | c ees
  | \hshift #0.3 fis,
    \hshiftRest #1.6 d'4\rest
    \hshift #-0.3 \once\override Stem.length = #4 d
  | cis2 \once\override Stem.length = #4 c
  %175
  | b bes2^~
  | bes4 a aes g
  | \override Stem.length = #4
    fis d \stemDown g \revert Stem.length c
  | bes2 a
  | g4 \stemUp d' \once\override Stem.length = #5 bes ees
  %180
  | a, b8 c d2
  | g,4 a8 b c2
  | b bes
  | a \hshift #0.3 aes4 \once\override Stem.length = #5 g
  | \hshift #0.3 g2 \hshift #0.3 \once\override Stem.length = #5 f4 g8 a
  %185
  | \hshift #0.3 bes2 \hshift #0.3 f
  | \hshift #0.3 c'
    \hshiftRest #1.6 g4\rest \hshift #0.3 bes~
  | \hshift #0.3 bes aes!8 bes \once\override Stem.length = #5 c4 des8 c
  | bes2. f4
  | e c'2 \hshift #0.3 bes8 aes!
  %190
  | \stemDown g4 c f, g8 a
  | bes2 \hshiftRest #-1.6 g\rest
  | \hshiftRest #1.3 f4\rest d2 \stemUp \hshift #0.3 g8 aes!  % to be checked ???
  | \hshift #0.3 bes4 \hshift #0.3 aes2 \hshift #0.3 g4~
  | \hshift #0.3 g c2 \stemDown d8 c
  %195
  | \once\stemUp \hshift #0.3 b4 c e,\rest \hshift #1 aes8 \hshift #1 bes
  | \hshift #1 c2~ c8 d \hshift #1 c \hshift #1 b
  | \stemUp \hshift #0.3 c4 \hshift #0.3 f, \hshift #0.3 g
    \hshiftRest #1 f'\rest
  | g,2\rest \hshiftRest #0.3 c,4\rest \stemUp \hshift #0.3
    \override Stem.length = #5
    aes'
  | \hshift #0 g \hshift #0.3 d'2 \stemDown c8 b
  %200
  | c2. f4
  | g bes,!2 bes4
  | \stemUp \hshift #0.3 a \hshift #0.3 aes2 \hshift #0.3 aes4
  | \hshift #0.3 g2. aes4
  | g2 \hshift #0.3 g
  %205
  | g\breve*1/2
  \fine
}

VoiceThree = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  \tieDown
  %1
  | c2_\iii ees
  | g aes
  | b, g'4\rest g
  | fis2 f
  %5
  | e ees~
  | ees4 d des c
  | b g c f
    \noBreak
  | ees2 d
  | \stemDown c4 ees8 d16 c d4 g
  %10
  | ees aes g c^~
  | c4 bes8 a bes2~
  | bes4 a e fis
  | g d d\rest g8 f!
  | ees! d c4 c\rest ees
  %15
  | d4. c8 \staffLower bes4 a
  | g \staffUpper g' c, d
  | ees2 b4\rest ees
  | d g ees aes
  | g \staffLower g, c bes
  %20
  | a2 d
  | g,4 \staffUpper g'8 aes g f ees d
  | c4 d8 e f2~
  | f4 b, c \staffLower aes
  | g2 a4 \staffUpper b
  %25
  | c c' f,8 ees d4
  | g fis g2
  | a4 g8 fis g2~
  | g4 a bes a~
  | a g8 fis g2~
  %30
  | g4 a8 g fis4 g
  | a2 d,4 e8 fis!
  | g[ f!] ees! d ees4 d8 c
  | bes4 g g'2~
  | g4 f8 g aes!2
  %35
  | g2. f8 ees
  | f2. g8 f
  | \hshift #0.3 ees4 f8( ees16 d) \staffLower c4 \staffUpper b\rest
  | b\rest g'2 \staffLower f8 \staffUpper ees
  | d4 \staffLower \once\stemDown b \staffUpper g' c,\rest
  %40
  | c2\rest c4\rest g'~
  | g g2 f8 g
  | aes g f2 aes4
  | d, c8 b c2
  | g'4. fis8 g2
  %45
  | c,1
  | bes2 c\rest
  | c\rest f4. ees8
  | d2 g~
  | g4 d g f
  %50
  | ees2 e\rest
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  | \hshiftRest #-1.3 c4\rest \hshift #-0.5 d2 c8 d
  | ees1
  %55
  | d2. c4
  | d c8 d ees4 d8 c
  | g'2 bes2~
  | bes a~
  | \hshift #1 a g4 f
  %60
  | ees1~
  | ees2 d~
  | d c~
  | c f
  | \hshift #0.7 g4. f8 ees4 f8 g
  %65
  | aes2 g~
  | g2. aes8 g
  | f1~
  | f2 ees~
  | \hshift #0.7 ees d
  %70
  | bes'1~
  | bes2 aes4 g
  | f2 g4 f8 g
  | aes1
  | g4\rest bes2 c8 des
  %75
  | c1
  | bes~
  | bes~
  | bes2 b\rest
  | \stemUp f2.^\iii bes4
  %80
  | \hshift #1 ees,2. \stemDown aes4
  | g4 f8 ees f4 g
  | ees f8 ges f4 ees
  | d2 ees
  | f2. e8 f
  %85
  | g4 f8 g aes2
  | bes e,\rest
  | g4\rest bes2 c8 des
  | ees2. d!8 c
  | d2 g,\rest
  %90
  | R1
  | e4\rest g c2~
  | c4 bes2 c8 bes
  | aes4. g8 aes4 bes8 aes
  | \hshift #-0.2 g4 \hshiftRest #-0.2 g\rest g2\rest
  %95
  | \override MultiMeasureRest.staff-position = #-8
    R1*4
  | \hshiftRest #0.4 c,4\rest d
    \once\shape #'(((0 . -0.4) (0 . -1) (0 . -1) (0 . -0.4))) Tie
    g2~
  %100
  | g4 a8 bes c4 d8 ees!
  | d2. ees4
  | d4 g, a8 bes c4~
  | c bes e,2\rest
  | \override MultiMeasureRest.staff-position = #-9
    R1
  %105
  | \hshiftRest #1 b2\rest
    \staffLower g'4\rest c,^\iii
  | d2. e4
  | \hshift #-0.3 f \hshift #-0.4 c \staffUpper f2
  | e ees~
  | \hshift #0.8 ees4 d8 c d f ges4~
  %110
  | ges8 f ees d ees4 f
  | bes, ees'8 des \hshift #0.3 ces bes aes g
  | aes bes ces2 bes4
  | aes e\rest c2\rest
  | R1
  %115
  | \hshift #0.3 f2 aes
  | c des
  | e, d4\rest c'
  | \hshift #0 b2 bes
  | \hshift #0 a aes~
  %120
  | \hshift #0 aes4 g ges f
  | \hshift #0 e \stemUp c f bes
  | \stemDown aes2 g
  | f2 c\rest
  | c4\rest
    \override Stem.length = #4
    f4 d bes
  %125
  | des2 c\rest
  | b4\rest ees c aes
  | c2 g'\rest
  | \override MultiMeasureRest.staff-position = #-7
    R1
  | a8\rest \stemUp ees f g \stemDown aes bes c aes
  %130
  | f1
  | ees4 g bes des
  | ees aes, g2\rest
  | \override MultiMeasureRest.staff-position = #-9
    R1*3
  | \override MultiMeasureRest.staff-position = #-11
    R1*2
  | \override MultiMeasureRest.staff-position = #-7
    R1*8
  | \override MultiMeasureRest.staff-position = #-9
    R1
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  | \override MultiMeasureRest.staff-position = #-10
    R1*4
  %153
  | c8\rest c bes aes \stemUp g aes bes g
  | aes2 b,\rest
  | e8\rest \stemDown c' bes aes g f e g
  | c,4 e\rest e2\rest
  | e\rest b'8\rest ees des c
  | bes1~
  | bes4 bes aes2~
  %160
  | aes g4 f
  | ees2. f8 ges
  | \stemDown \revert Stem.length
    f4 g!8 aes bes2
  | c4 bes aes4. bes8
  | ces4 des2 c8 bes
  %165
  | c4 c2 bes8 aes
  | g4 bes2 aes8 g
  | f2 \hshift #0.5 g
  | c,4 c' b2
  | c8 bes! aes g f4 \stemUp \once\override Stem.length = #5 aes
  %170
  | g2~ g8 g f ees
  | d c b a
    \once\override Stem.length = #6
    \hshift #0 g4
    d'
  | c ees g c,\rest
  | a\rest \stemDown d g2~
  | g8 bes a g a2~
  %175
  | a4 g8 fis g4. f8
  | ees d ees4 c b\rest
  | R1
  | \hshiftRest #0.4 b4\rest d' ees d8 c
  | bes4 f\rest g2
  %180
  | fis f
  | e d4\rest ees
  | d g c, d8 e
  | f4 c d8 c d4
  | \staffLower \hshift #0.2 g,2 a4 \hshift #0.2 f
  %185
  | \staffUpper f'2 b,\rest
  | e4\rest a f \hshift #0.3 bes
  | ees, f8 g aes2~
  | aes4 g8 f g2~
  | g4 f8 e f4 d\rest
  %190
  | \override MultiMeasureRest.staff-position = #-7
    \override MultiMeasureRest.X-offset = #-0.4
    R1
  | \hshiftRest #0.4 c4\rest f d g
  | c, \hshift #0.9 d8 ees f4 e8 f
  | g4 \hshift #0.3 c, f2
  | e4 f8 g f2
  %195
  | \hshift #0 g2. \hshift #0 f8 \hshift #0 g
  | \hshift #0 aes2. \hshift #0 g8 \hshift #0 f
  | \hshift #0 g4 d c b'\rest
  | \override MultiMeasureRest.staff-position = #-6
    R1
  | \override MultiMeasureRest.staff-position = #-2
    R1*2
  %201
  | e,2\rest e4\rest \hshift #0.3 ees
  | c f2 ees4
  | d2 ees4 f
  | ees2 d
  %205
  | c\breve*1/2\fermata
    \fine
}

VoiceFour = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | s1*24
  %25
  | \stemUp\tieUp g2^\iv bes
  | c ees
  | fis, f'4\rest d
  | cis2 c
  | b bes2~
  %30
  | bes4 a aes g
  | fis d g c
  | bes2 a
  | g4 c2 bes4
  | a d2 c4
  %35
  | b c8 d c2~
  | c4 b8 a b2
  | c4 d8 c16 b \hshift #1 c2~
  | c4 ees c \once\stemDown f~
  | f ees8 d ees2~
  %40
  | ees4 d a b
  | c g c2~
  | c4 d8 ees f4 aes,
  | g2. f4
  | g c d e8 f
  %45
  | e4 d8 e f2~
  | f4 ees!8 f g4. f8
  | ees c b c d2
  | g,1~
  | g~
  %50
  | g4 a8 bes c4 \staffUpper ees
  | d1
  | e4 ees2 d8 c
  | d4 \staffLower b
    \once\shape #'(((0 . 0.5) (0 . 1.2) (0 . 1) (0 . 0.5))) Tie g2~
  | g4 fis a2\rest
  %55
  | a\rest b4\rest a~
  | a g2 fis4
  | g d ees2~
  | ees4 e f2~
  | f4 fis g2~
  %60
  | g4 g aes2~
  | aes4 a bes2~
  | bes4 b c bes
  | a2 bes4 aes
  | g2 aes4 g
  %65
  | \hshift #0 f ees8 f
    \once\shape #'(((0 . 0.5) (0 . 1.2) (0 . 1) (0 . 0.5))) Tie
    g2~
  | g4 g
    \once\shape #'(((0 . 0.1) (0 . 0.3) (0 . 0.3) (0 . 0.1))) Tie
    aes2~
  | aes4 a
    \once\shape #'(((0 . 0.3) (0 . 0.6) (0 . 0.6) (0 . 0.3))) Tie
    bes2~
  | bes4 b
    \once\shape #'(((0 . 0.3) (0 . 0.3) (0 . 0.5) (0 . 0.5))) Tie
    c2~
  | c4 c
    \once\shape #'(((0 . 0.3) (0 . 0.6) (0 . 0.6) (0 . 0.3))) Tie
    d2~
  %70
  | d4 d
    \once\shape #'(((0 . 0.3) (0 . 0.6) (0 . 0.6) (0 . 0.3))) Tie
    ees2~
  | ees4 ees f2~
  | f ees4 d
  | c1
  | bes
  %75
  | aes~
  | aes2 g4 aes
  | bes1
  | c2\rest \staffUpper ees_~_\iv
  | ees4 d des2_~
  %80
  | \hshift #0 des4 c \staffLower ces2
  | bes2. ees4
  | aes,2. f4
  | bes1~
  | bes4 c des2
  %85
  | c2. des8 c
  | bes2 c
  | bes1
  | c
  | bes2 c\rest
  %90
  | c4\rest c f2~
  | f4 ees2 d8 c
  | d2. ees8 des
  | c4. b8 c4 d!
  | \staffUpper \hshift #0.2 ees4 b\rest b2\rest
  %95
  | \staffLower bes d
  | ees4 d\rest \hshiftRest #1.7 a\rest g
  | d' a bes2_~
  | bes a4 g8 fis
  | g2_~ g8 fis g bes
  %100
  | \hshift #0.3 e,2 \hshiftRest #1.2 d\rest
  | c'4\rest a d, g_~
  | g8 a bes g d'2
  | c\rest d4\rest g,^\iv
  | \stemDown a2. b4
  %105
  | c g c2
  | b bes_~
  | \stemUp bes4 a8 g a c des4~
  | des8 c bes a bes4 c~
  | c bes8 aes! ges f ees d
  %110
  | ees f ges2 f4
  | \once\shape #'(((0.5 . 0.4) (0 . 0.5) (0 . 0.5) (-1 . 1))) Tie
    ees1_~
  | ees2. bes4
  | c aes aes' c\rest
  | f2\rest d4\rest c~
  %115
  | \hshift #-0.6 c8 bes c des c bes aes g
  | aes2. g8 f
  | c'2.
    \hshift #0 \omit Beam f,8 g \undo\omit Beam
  | aes4 c\rest b\rest \hshiftRest #-1.2 a8\rest g
  | \hshift #1 \stemDown a bes c4~ \once\omit Stem \hshift #0 c \stemUp f~
  %120
  | \hshift #0 f \hshift #0.3 bes, f2\rest
  | g'4\rest \staffUpper g aes g
  | \staffLower c,4. bes16 aes bes2~
  | bes4 aes aes2\rest
  | s1*3
  %127
  | c8\rest g a bes \staffUpper c des ees c
  | des1_~
  | des4 \staffLower c8 bes aes4 f'\rest
  %130
  | \override MultiMeasureRest.staff-position = #10 R1
  | \override MultiMeasureRest.staff-position = #4 R1*2
    s1*12
  %145
  | \hshift #-0.7 bes,2^\iv \hshift #-0.4 des \staffUpper
  | \hshift #0 f \hshift #0.3 ges
  | \staffLower \hshift #0.3 a, \staffUpper\tieDown a4\rest f'
  | e2 ees
  | d des2~
  %150
  | des4 c ces \staffLower bes
  | a f bes \staffUpper ees
  | des2 c
  | \staffLower\tieUp \hshift #1 bes c^~
  | c2. bes4
  %155
  | aes g8 f
    \once\shape #'(((0.3 . 0.2) (0 . 0.8) (0 . 0.8) (0 . 0))) Tie
    g2~
  | g4 f2 e4
  | f8 c bes c
    \once\shape #'(((0 . 0.3) (0 . 0.8) (0 . 0.8) (0 . 0.3))) Tie
    des2~
  | des8 d c d \hshift #-0.3
    \once\shape #'(((0 . 0.8) (0 . 0.8) (0 . 0.8) (0 . 0.3))) Tie
    ees2~
  | ees8 e d e \hshift #-0.3
    \once\shape #'(((0 . 0.8) (0 . 0.8) (0 . 0.8) (0 . 0.3))) Tie
    f2~
  %160
  | f8 f e f \hshift #-0.3
    \once\shape #'(((0 . 1.4) (0 . 1) (0 . 1) (0 . 0.3))) Tie
    g2~
  | g8 g f g aes2~
  | aes g4 aes8 bes
  | ees,2 \hshift #0.4 aes,
  | ees'1~
  %165
  | ees2 \hshiftRest #-0.3 a\rest
  | ees^\iv g
  | bes8 c d bes \hshift #0.5 g des' c bes
  | c4 f2 ees8 d!
  | c4. bes8 aes4 \staffUpper f'
  %170
  | \staffLower c2~ c8 \hideStaffSwitch \staffUpper ees! d c
  | b c d ees \hshift #1.3 f g aes! f
  | g4 \hshiftRest #-0.3 e\rest \hshiftRest #-1 e2\rest
  | \override MultiMeasureRest.staff-position = #-2 R1
  | \staffLower a,2\rest c8\rest g' fis e
    \showStaffSwitch
  %175
  | d c b a g4 bes
  | c2~ c8 fis, g a
  | bes4 a g a
  | bes a\rest f'\rest d
  | d e\rest e\rest bes
  %180
  | c d8 ees d c d4~
  | d c c2\rest
  | c\rest c4\rest g
  | a2 b
  | c2. bes!8 c
  %185
  | f,4 g8 a bes2
  | a aes
  | g4 a\rest a2\rest
  | s1
  | e'4\rest c \hshift #-0.2 aes des
  %190
  | \hshift #0.2 g, aes8 bes c2
  | bes2. c8 d!
  | ees4 d e\rest bes~
  | bes \staffUpper f' \hshiftRest #0.4 a,\rest des
  | \staffLower c2 a'4\rest d,!~
  %195
  | \hshift #0 d c8 b c2~
  | c \hshiftRest #1.5 a\rest
  | a\rest \staffUpper
    \hshiftRest #0.3 e4\rest ees'
  | d g2 f4
  | g e\rest e2\rest
  %200
  | \staffLower f4\rest c d \hshift #0.3 a
  | b g2 c4
  | f, aes!2 ees4
  | g f \hshift #0 ees d
  | ees8 f g2.
  %205
  | g\breve*1/2\fermata
  \fine
}

VoiceFive = \context Voice = "five" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  \stemNeutral
  %1
  | s1*16
  | c2^\v \stemDown ees
  | g aes
  | b, c4\rest g'
  %20
  | fis2 f
  | e ees2^~
  | \stemNeutral ees4 d des c
  | b g c f
  | ees2 d
  %25
  | \stemDown c4 ees8( d16 c) d4 g
  | ees aes g c^~
  | c bes8 a bes2~
  | bes4 a e fis
  | g d b\rest g'8 f!
  %30
  | ees d c4 r ees
  | d4. c8 bes4 a
  | g g' c, d
  | ees2 e
  | f2. ees!8 d
  %35
  | g1~
  | g
  | aes2. g8 f
  | ees2 f
  | g c4 a
  %40
  | d d,2 g4
  | c c,2 d8 ees
  | f1~
  | f4 ees8 d ees4 aes
  | g4 bes8 a bes2~
  %45
  | bes aes~
  | aes g~
  | g f~
  | f ees4 d8 c
  | d1
  %50
  | \stemUp \hshift #0.2 ees2 \hshift #0.3 g
  | d4 e8 fis g2^~
  | g4 fis8 g a2
  | d,2. ees8 d
  | \hshift #0.5 c2 d\rest
  %55
  | d4\rest d2 \hshift #0.2 ees4
  | \hshift #0.5 d \hshift #0.4 ees8 d c2
  | \hshift #0.3 d g,4\rest bes
  | c1
  | d
  %60
  | ees
  | f
  | \hshift #0.1 g2. \hshift #0.2 \once\override Stem.length = #4 c,4
  | f1
  | ees
  %65
  | \hshift #1 d2. c8 d
  | \hshift #0.3 ees2. d8 ees
  | \hshift #0.3 f2. ees8 f
  | \hshift #0.3 g2. f8 g
  | \hshift #0.3 aes2. g8 aes
  %70
  | \hshift #0.3 bes2. aes8 bes
  | \hshift #0.5 c2 \once\override Stem.length = #3 f,
  | bes1
  | \hshift #0.6 aes2. g4
  | \hshift #0.8 f ees8 f g2~
  %75
  | \hshift #0.9 g4 c, f2~
  | \hshift #0.3 f \hshift #0.3 ees
  | f1
  | \once\override Stem.length = #4 ees2 f\rest
  | R1*5
  %84
  | d2\rest \stemDown bes'~_\v
  | bes4 \stemUp a aes2
  | \hshift #-0.3 g \hshift #0.3 ges
  | f1
  | \once\override Stem.length = #3.5 \hshift #0.4 ees4 d8 ees f2~
  | \hshift #0.2 f f\rest
  %90
  | f \hshift #0.4 aes
  | \stemDown c4. bes8 aes g aes4
  | g4. f8 ees2
  | f8 g aes2 f4
  | \stemUp g2 bes
  %95
  | g bes
  | \hshift #0.4 c ees
  | \hshift #0.3 fis, d4\rest \stemDown d'
  | cis2 c
  | b bes^~
  %100
  | bes4 a \hshift #-0.3 aes g
  | fis d g c
  | bes2 a!
  | \once\override Stem.length = #5 g f\rest
  | s1*3
  %107
  | d2\rest f
  | g2. a4
  | bes f bes2
  %110
  | a aes^~
  | aes4 g8 f g bes ces4^~
  | ces8 bes aes g aes4 bes
  | ees, \hshift #1.3 aes8 bes aes g f e
  | \stemUp f g aes2 \hshift #0.3 g4
  %115
  | f2 f\rest
  | s1
  | c4\rest bes'8 aes g4 aes8 g
  | \hshift #0.3 f e f2 c'4^~
  | c8 des c bes c4 \hshift #0.4 aes
  %120
  | \hshift #1 bes8 c des ees des4 bes
  | c1^~
  | c4 f, \hshift #0.3 g c~
  | \hshift #1 c e\rest e2\rest
  | g,8\rest c,^\v d ees f g aes f
  %125
  | g4 d'\rest a2\rest
  | f8\rest bes, c des ees f ges ees
  | f1~
  | f2 g!~
  | g4 \hshift #-0.3 ees2 aes4^~
  %130
  | aes8 f g aes bes c des bes
  | g4 ees f2\rest
  | R1
  | s1*11
  %144
  | f2^\v 	 a
  | \hshift #0 bes4 aes! g2
  | a8 f g a bes c des bes
  | \hshift #0 f'4 c f8 ees des c
  | bes c bes a bes4 c~
  | c f, bes aes!
  %150
  | g2 b4\rest \once\stemDown \once\override Stem.length = #6 bes
  | \once\stemDown \once\override Stem.length = #5 \hshift #-0.4 c
    e\rest f,2\rest
  | a4\rest bes2 aes!4~
  | aes g8 f \hshift #0.2 g2^~
  | g
    \once\shape #'(((0.6 . 0.3) (0 . 0.2) (0 . 0.2) (-0.6 . 0.3))) Tie
    f~
  %155
  | \hshift #0.2 f \hshift #0.3 e4 g\rest
  | \override MultiMeasureRest.staff-position = #-2
    R1
  | b,2\rest f8\rest aes g aes
  | \hshift #0.2 bes2~ bes8 bes aes bes
  | \hshift #0.2 c2~ c8 c bes c
  %160
  | \hshift #0.2 des2~ des8 des c des
  | ees1
  | des
  | \stemDown c2 ces^~
  | ces4 bes8 aes bes2
  %165
  | aes \stemUp c
  | \once\stemDown ees d\rest
  | d4\rest \stemDown bes'2_\v aes8 g
  | aes4 f g2
  | aes8 g f2 ees8 d
  %170
  | ees4 e f f'^~
  | \stemUp f8 ees d c d4 c\rest
  | c\rest g2 a8 bes!
  | a2 d,4 e\rest
  | s1
  %175
  | \hshiftRest #1.4 f2\rest
    d8\rest \stemDown f ees d
  | \stemUp \once\override Stem.length = #5 c4. d8 \hshift #0.4 ees2
  | d4 \hshift #0.2 fis \once\stemDown g c,\rest
  | \hshiftRest #1.3 f2\rest
    g4\rest \hshift #0.2 a
  | \hshift #0.2 bes f\rest f\rest \stemDown g_\v
  %180
  | a2 b
  | c4 c,8 d ees! c aes'!4~
  | aes g8 f e4 c
  | f a,\rest f'2
  | e ees
  %185
  | d4 c d bes
  | c d8 ees d c d4
  | \stemUp \hshift #0.2 ees2. aes4
  | f bes ees, f8 g
  | aes4 \hshift #0.3 g \hshift #0 f \hshift #0.2 aes
  %190
  | bes \stemDown c8 des c4 a
  | \hshift #-0.3 f g8 a \hshift #-0.2 bes4 a!8 bes
  | c4 a aes bes8 aes
  | g4 aes f bes
  | \hshift #0.3 \once\stemUp g2 c4\rest aes
  %195
  | \hshift #0 \once\stemUp \hshift #1 g2
    \hshiftRest #1.5 a2\rest
  | \override MultiMeasureRest.staff-position = #7
    R1
  | f'4\rest \stemUp aes, g c^~
  | c b c2
  | b4\rest b c g
  %200
  | a2. d4
  | \stemDown g, bes! c g
  | a f2 aes4
  | d,2 \stemUp
    \once\shape #'(((0 . 0.6) (0 . 0.5) (0 . 0.5) (0 . 0.6))) Tie
    \hshift #1 c~
  | \hshift #0.2 c4 \hshift #0.2 c d8 ees f4
  %205
  | e\breve*1/2
  \fine
}

VoiceSix = \context Voice = "six" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | R1*16
  | s1*32
  | g2_\vi bes
  %50
  | \hshift #0.2 c ees
  | fis, b4\rest d
  | cis2 c
  | b bes2~
  | \hshift #-0.5 bes4 a aes g
  %55
  | fis d g c
  | bes2 a
  | g1
  | a
  | bes
  %60
  | c
  | d
  | ees~
  | ees2 d~
  | d c~
  %65
  | \hshift #0 c b
  | c1
  | d
  | ees
  | f
  %70
  | g
  | \once\shape #'(((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0))) Tie
    aes~
  | aes2 g~
  | \hshift #-0.4 g f4 ees
  | d2 ees
  %75
  | aes,1
  | bes~
  | bes
  | ees,2 g\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1*6
  %85
  | \hshiftRest #-0.2 b2\rest f'~_\vi
  | \hshift #0.6 f4 e ees2~
  | ees4 d des2
  | c f
  | bes, d
  %90
  | f d\rest
  | \override MultiMeasureRest.staff-position = #-6
    R1
  | s1*2
  | c2_\vi ees
  %95
  | g1~
  | g4 f ees2
  | d1~
  | d
  | d2. e8 d
  %100
  | cis2 c~
  | \hshift #0.2 c \hshift #0.2 bes4 \hshift #0.2 c
  | \hshift #0.2 d1
  | g,2 b\rest
  | s1*9
  %113
  | \hshiftRest #0.4 g2\rest
    \once\override Stem.length = #4 \hshift #0.3 c_\vi
  | d2. e4
  | f1~
  | f8 ees! des c bes4 bes'~
  | bes8 aes g f e4 f
  | d!2. e4
  | f4. g8 aes4 f
  %120
  | \once\shape #'(((-0.5 . -0.5) (0 . -0.8) (0 . -0.8) (0 . -0.5))) Tie
    \hshift #0 bes1~
  | bes8 g c bes aes g f e
  | f ees! des c bes4 c
  | f8 g aes g f ees d! c
  | bes1
  %125
  | c8\rest aes' g f ees des c bes
  | aes1
  | a4 c a f
  | bes des bes g
  | c \hshift #0.6 ees c aes!
  %130
  | des1~
  | des8 ees des c bes aes g bes
  | c des c bes aes g f aes
  | \stemNeutral\tieNeutral bes, bes' c d ees f g4~
  | g8 c, d ees f ees d f
  %135
  | bes,4 c8 des ees des c ees
  | aes,4 aes'8 g aes4 ces
  | bes1~
  | bes8 ees, f g aes c! bes aes
  | g f ees f g bes aes ges
  %140
  | f ees des ees f aes ges f
  | ees des c des ees ges f ees
  | des c bes c des ees f d
  | ees des c des ees f ges ees
  | \stemDown\tieDown f1~
  %145
  | f~
  | f~
  | f2 d4\rest f
  | g!2. a4
  | bes aes! g f
  %150
  | e2 ees~
  | ees4 f8 ees des4 c
  | bes2 c
  | d!4 ees2 e4
  | f ees! des2
  %155
  | c2. bes4
  | aes2 g
  | f1
  | g
  | aes
  %160
  | bes
  | c~
  | c2 bes
  | \hshift #0.3 aes4 g f2
  | \hshift #0.2 ees1
  %165
  | aes2 g\rest
  | R1
  | s1*4
  %171
  | d'4\rest g~ g8 f ees d
  | ees d c b c2~
  | c8 ees d c bes! a g f
  | e4 e' fis d
  %175
  | g2 g,
  | a8 bes c2 bes8 c
  | d2 \hshift #0.3 ees~
  | ees8 d c bes c4 d
  | g g,\rest g2\rest
  %180
  | s1*7
  | g2\rest ees'_\vi
  | d des
  | c \hshift #0.9 f
  %190
  | e ees
  | d g
  | \hshift #0.2 fis \hshift #0.2 f
  | \hshift #0.2 e4 f d g
  | c, d8 e f2~
  %195
  | \hshift #0 f4 ees! aes2~
  | aes4 g8 f c'2
  | c, ees
  | g aes
  | b, d4\rest g
  %200
  | fis2 f
  | \hshift #0.2 e \hshift #0.2 ees2~
  | ees4 \hshift #0.2 d des \hshift #0.2 c
  | \hshift #0.3 b g \hshift #0 c f,
  | g2 g
  %205
  | c\breve*1/2
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
      \VoiceOne
      \VoiceTwo
      \VoiceThree
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \VoiceFour
      \VoiceFive
      \VoiceSix
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 1079"
    title = ##f
    subtitle = \markup \abs-fontsize #22 \smallCaps { "Ricercar a 6" }
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
