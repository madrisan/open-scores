Global = {
  \key e \minor
  \time 6/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \label #'SuiteVPrelude
  %1
  | R1*6/8*2
  | f8\rest e8. e16 b8 g'16 fis g e
  | ais,8 cis8. cis16 fis,8 fis'16 e fis cis
  %5
  | d cis d e d c b8 e8. d16
  | c b c d c b a8 a'8. a16
  | a g a c b a g fis g b a g
  | \stemNeutral fis e fis g fis e dis cis dis e cis dis
  | e dis e fis g e cis d cis b a cis
  %10
  | d cis d e fis d b c b a g b
  | cis b cis d e cis ais b ais gis fis ais
  | \stemUp b ais b cis d b g8 f'\rest f\rest
  | d\rest e,8. e16 <cis e>8 d'\rest d\rest
  | f16\rest fis, b8 f'8\rest f16\rest ais,32 b cis8 f8\rest
  %15
  | f16\rest b,32 cis d8 f8\rest f16\rest cis32 d e8 g8\rest
  | g16\rest cis, e g fis e d4.~
  | d16 b d f e d c4.~
  | c16 a c e d c b4.~
  | b16 g b d c b a4.~
  %20
  | a8 b'8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16  b,8 b'16 a b fis
  | \stemNeutral g a g fis e g a g a b c a
  | fis g fis e d fis g fis g a b g
  | e fis e d c e fis e fis g a fis
  %25
  | \stemUp dis8 dis8. dis16 <b e>8 a'\rest a\rest
  | f\rest a,8. a16 <fis a>8 g'\rest g\rest
  | g16\rest b, e8 g\rest g16\rest dis32 e fis8 g8\rest
  | a16\rest e32 fis g8 a\rest b16\rest fis32 g a8 c\rest
  | c16\rest fis, a c b a g fis e dis! e b
  %30
  | c4.~ c16 e d c d a
  | b4.~ b16 d c b c g
  | a4.~ a16 c b a b fis
  | g4.~ g16 g fis e fis cis!
  | dis4.~ dis16 b e fis g8~
  %35
  | <e g>4.~ q8 cis16 e g ais
  | b b, cis dis e fis g e fis g a b
  | c4.~ c16 fis, a c dis,! fis
  | e g b e e, d' b'\rest e, a c fis, a
  | dis, fis b, dis e8~ e16 fis fis8.[\prall e16]
  %40
  | e dis e g b g \stemNeutral e b' g e b c
  | d c d f b f d b' f d b d
  | \stemUp c8 r r r a <gis b>
  | <a cis> r r r <cis e> <a cis>
  | \stemNeutral d16 cis d fis a fis d a' fis d a b
  %45
  | c b c ees a ees c a' ees c a c
  | \stemUp b8 r r r g <fis a>
  | <g b> r r r <b d> <g b>
  | c16 e g, b c e \stemNeutral c e g, b c e
  | c fis! a, b c fis c fis a, b c fis
  %50
  | d g b, c d g d g b, c d g
  | e g cis, d e g e g cis, d e g
  | \stemUp fis8 d8. d16 g,8 e'16 d e c
  | fis,8 <fis a>8. q16 d8 d'16 c d a
  | \stemNeutral b a g a b cis d e fis a g fis
  %55
  | e d cis b a b cis d e g fis e
  | a fis d a c8~ c16 e d c b a
  | b8 r16 g a b c b c d e f
  | g e c g bes8~ bes16 a g bes a g
  | fis e d e fis g a b c d e fis
  %60
  | \stemUp g8 b, g' g c, g'
  | g d g g e g
  | a16 c a g fis e d8 g b
  | c, g' b c, fis a
  | b, fis' a b, e g
  %65
  | a, e' g a, d fis
  | g8. fis16 g a b4.
  | a16 g fis8. a16 g4.
  | fis16 e d8. f16 e4.
  | d16 c b8. d16 c4.~
  %70
  | c16 c b a g fis g a a8.\prall g32 a
  | b4~ b16 ais b cis cis8.\prall b32 cis
  | d4~ d16 cis d e e8.\prall d32 e
  | fis4~ fis16 d cis d e4~
  | e16 cis32 d e8 a8\rest b16\rest d,32 e fis8 a8\rest
  %75
  | b16\rest e, ais8 a8\rest b16\rest fis b8 d\rest
  | s1*6/8
  | d16\rest fis, a c! b a g4.~
  | g16 e g b a g fis4.~
  | fis16 d fis a g fis e4.~
  %80
  | e8 g e cis e cis
  | ais r r r <g cis> <fis ais>
  | \stemNeutral b16 ais b d fis d b fis' d b fis g
  | a g a c fis c a fis' c a fis a
  | g8 r r r e <dis fis>
  %85
  | <e gis> r r r <f b> <e gis>
  | a16 gis a cis e cis a e' cis a e fis
  | g fis g bes e bes g e' bes g e g
  | fis a d, e fis a fis a d, e fis a
  | fis a dis, e fis a fis a dis, e fis a
  %90
  | g b e, fis g b g b e, fis g b
  | gis b e, fis! gis b gis b e, fis gis b
  | \stemUp \once\override Beam.damping = #+inf.0 a8 <c e>8. e16 a,8 f'16 e f d
  | \stemNeutral\tieNeutral gis,8 b8. b16 e,8 e'16 d e b
  | c e a, b c e c e fis, g a c
  %95
  | a c dis, e fis a fis a dis, fis g a
  | b gis e b d8~ d16 f e d c b
  | c8 r16 c b a fis'8 r16 fis e dis
  | b'8 r16 a g fis e g b e ais,8~
  | ais16 fis gis ais b cis dis b cis dis e fis
  %100
  | g e fis g a b \stemUp\tieUp c4.
  | b16 a g8. b16 a4.
  | g16 fis e8. g16 fis4.
  | e16 d cis8. e16 dis8 d4~
  | d16 d c b a gis a b b8.\prall a32 b
  %105
  | c4 f16\rest cis d e e8.\prall d32 e
  | fis4 b16\rest fis g a a8.\prall g32 a
  | \stemNeutral b16 fis g dis e g a, c! dis! e fis g
  | a8 b, a' g b, g'
  | fis a, fis' e g, e'
  %110
  | \stemUp fis,16 ais cis e dis cis b dis fis a g fis
  | b a g fis e d c b a g fis e
  | \stemNeutral dis fis b, cis dis fis dis fis b, cis dis fis
  | e g b, dis e g e g b, dis e g
  | fis a dis, e fis a fis a dis, e fis a
  %115
  | g b e, fis g b g b e, fis g b
  | g! ais e fis g ais g ais e fis g ais
  | \stemUp b8 b8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | f'8\rest e8. e16 b8 g'16 fis g e
  %120
  | ais,8 cis8. cis16 fis,8 fis'16 e fis cis
  | d cis d e d c b8 e8. d16
  | c b c d c b \once\override Beam.damping = #+inf.0 a8 a'8. a16
  | a g a c b a g fis g b a g
  | \stemNeutral fis e fis g fis e dis cis dis e cis dis
  %125
  | e dis e fis g e cis d cis b a cis
  | d cis d e fis d b c b a g b
  | cis b cis d e cis ais b ais gis fis ais
  | \stemUp b ais b cis d b g8 f'\rest f\rest
  | d\rest e,8. e16 <cis e>8 f'\rest f\rest
  %130
  | f16\rest fis, b8 f'8\rest f16\rest ais,32 b cis8 f8\rest
  | f16\rest b,32 cis d8 g8\rest g16\rest cis,32 d e8 g8\rest
  | g16\rest cis, e g fis e d4.~
  | d16 b d f e d c4.~
  | c16 a c e d c b4.~
  %135
  | b16 g b d c b a4.~
  | \once\override Beam.damping = #+inf.0 a8 b'8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | \stemNeutral g a g fis e g a g a b c a
  | fis g fis e d fis g fis g a b g
  %140
  | e fis e d c e fis e fis g a fis
  | \stemUp dis8 dis8. dis16 <b e>8 g'\rest g\rest
  | f\rest a,8. a16 <fis a>8 f'\rest f\rest
  | f16\rest b, e8 f8\rest g16\rest dis32 e fis8 g\rest
  | a16\rest e32 fis g8 a\rest b16\rest fis32 g a8 c\rest
  %145
  | d16\rest fis, a c b a g fis e dis! e b
  | c4.~ c16 e d c d a
  | b4.~ b16 d c b c g
  | a4.~ a16 c b a b fis
  | g4.~ g16 g fis e fis cis!
  %150
  | dis4.~ dis16 b e fis g8~
  | <e g>4.~ q8 cis16 e g ais
  | b b, cis dis! e fis g e fis g a b
  | c4.~ c16 fis, a c dis,! fis
  | e g b e e, d' b'\rest e, a c fis, a
  %155
  | dis, fis b, dis e8~ e16 fis fis8.[\prall e16]
  | \stemNeutral e2.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | g8\rest b8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | g fis g a g fis e d e fis e d
  | cis b cis d cis b ais gis ais b gis ais
  %5
  | b8 b'8. a16 g fis g a g fis
  | e8 a8. g16 fis e fis g fis e
  | dis8 dis8. dis16 e8 e\rest e\rest
  | \change Staff = "lower" \stemUp c8\rest a8. a16 <fis a>8 f'\rest f\rest
  | \change Staff = "upper" \stemDown s1*6/8*3
  %12
  | c8\rest fis8. fis16 b,8 g'16 fis g e
  | ais,8 cis8. cis16 fis,8 fis'16 e fis cis
  | d8. fis16 e d e8. g16 fis e
  %15
  | fis8. a!16 g fis g8. d'16 cis! b
  | ais8 e\rest e\rest g16\rest cis! b ais b fis
  | gis8 e\rest e\rest e16\rest b' a gis a e
  | fis8 d\rest d\rest e16\rest a g fis g dis
  | e8 d\rest d\rest d16\rest g fis e fis cis
  %20
  | dis8 <dis' fis> g,\rest b <e a> g,\rest
  | e\rest <a c> e\rest e\rest <b' fis'> e,\rest
  | s1*6/8*3
  %25
  | e8\rest b'8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | g8. b16 a g a8. c16 b a
  | b8. d16 c b c8. g'16 fis e
  | dis4 e,8\rest e4.\rest
  %30
  | e16\rest e g b a g fis4.~
  | fis16 d f a g f e4.~
  | e16 dis e g fis e dis8 d\rest d\rest
  | c16\rest fis e dis e cis ais8 a\rest a\rest
  | g16\rest c b a b \change Staff = "lower" \stemUp fis
    \change Staff = "upper" \stemDown s4 g'16 cis,
  %35
  | e ais,~ <ais cis>4~ <ais cis>8 cis4*1/4 \autoBeamOff e8.*1/3 g8 \autoBeamOn
  | <dis fis>16 s8. s2
  | e16\rest b' a g fis e dis8 b\rest g\rest
  | g4.\rest c'4 g8\rest
  | e\rest e\rest e16\rest a g e' dis4
  %40
  | e8 g,\rest g\rest s4.
  | s1*6/8
  | a8 s4. e8 e
  | e s4. <e g>8 q
  | s1*6/8*2
  %46
  | g8 s4. d8 d
  | d s4. <d f>8 q
  | s1*6/8*4
  %52
  | d'8 <fis, a>8. q16 d8 <g c> e\rest
  | b\rest c8. c16 c8 c\rest c\rest
  | s1*6/8*12
  %66
  | g'16\rest b a8 g8\rest g16\rest a'16 g fis g e~
  | e8. e16 d8~ d16 fis e d e c~
  | c8. c16 b8~ b16 d c b c a~
  | a8. a16 g8~ g16 b a g a fis
  %70
  | d4.~ d8 fis4
  | e16\rest fis g dis e8 e\rest ais!4
  | g16\rest ais b fis g8 g\rest cis!4~
  | cis16 cis d ais b8~ b8. d16 cis b
  | ais8. cis!16 b ais b8. d16 cis b
  %75
  | cis8. e16 d cis d8. a'16 gis fis
  | eis gis b, d cis b ais cis e g fis e
  | d4.~ d16 fis e d e b
  | cis4.~ cis16 e d cis d ais
  | b4.~ b16 d cis b ais b
  %80
  | ais8 e' cis ais cis ais
  | fis s4. <cis e>8 q
  | s1*6/8*2
  | e8 s4. b8 b
  %85
  | b8 s4. <b d>8 q
  | s1*6/8*6
  %92
  | s8 <e a>8. s16 s4.
  | s1*6/8*7
  %100
  | s4. g16\rest b' a g a fis~
  | fis8. fis16 e8~ e16 g fis e fis d~
  | d8. d16 c8~ c16 e d c d b~
  | b8. b16 a8~ a16 c b a b gis
  | e4.~ e8 gis!4
  %105
  | e16\rest gis a e g8 g\rest cis!4
  | g16\rest cis d a c8 g8\rest fis'4
  | s1*6/8*10
  %117
  | s8 <dis, fis> s2
  | s1*6/8
  | g16 fis g a g fis e d e fis e d
  %120
  | cis b cis d cis b ais gis ais b gis ais
  | b8 b'8. a16 g fis g a g fis
  | e8 a8. g16 fis e fis g fis e
  | dis8 dis8. dis16 e8 e\rest e\rest
  | s1*6/8*4
  %128
  | b8\rest fis'8. fis16 b,8 g'16 fis g e
  | ais,8 cis8. cis16 fis,8 fis'16 e fis cis
  | d8. fis16 e d e8. g16 fis e
  | fis8. a16 g fis g8. d'16 cis! b
  | ais8 g\rest g\rest g16\rest cis! b ais b fis
  | gis8 e\rest e\rest e16\rest b' a gis a e
  | fis8 e\rest e\rest e16\rest a g fis g dis
  %135
  | e8 d\rest d\rest d16\rest g fis e fis cis
  | dis8 <dis' fis> g,\rest b <e a> g,\rest
  | s1*6/8*4
  %141
  | e8\rest  b'8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | g8. b16 a g a8. c16 b a
  | b8. d16 c b c8. g'16 fis e
  %145
  | dis4 g,8\rest g4.\rest
  | e16\rest e g b a g fis4.~
  | fis16 d f a g f e4.~
  | e16 dis e g fis e dis8 d\rest d\rest
  | c16\rest fis e dis e cis ais8 a\rest a\rest
  %150
  | s4. s4 g'16 cis,
  | e ais,~ <ais cis>4~ q8 cis!4*1/4 \autoBeamOff e8.*1/3 g8 \autoBeamOn
  | <dis fis>16 s8. s2
  | e16\rest b' a g fis e dis8 a\rest g\rest
  | g4.\rest c'4 e,8\rest
  %155
  | e\rest e\rest e16\rest a g e' dis!4

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*6/8*33
  | s4. g'~
  %35
  | g8. e16 g cis,
    \once\override NoteColumn.force-hshift = #0
    << {
      \mergeDifferentlyDottedOn
      e g~ g4
    } \\ {
      e4.
    } >>
  | fis16 s8. s2
  | s1*6/8*3
  %40
  | s2 g8 a
  | b s4. b8 gis!
  | s1*6/8*2
  | <a d>8 s4. fis8 g
  %45
  | a s4. a8 fis
  | s1*6/8*36
  %82
  | <fis b>8 s4. d8 e
  | fis s4. fis8 dis!
  | s1*6/8*2
  %86
  | <e a>8 s4. cis8 d
  | s1*6/8*37
  %124
  | c'8\rest a8. a16 <fis a>8 f'\rest f\rest
  | s1*6/8*25
  %150
  | \change Staff = "upper" \stemDown g,16\rest c b a b \change Staff = "lower" \stemUp fis g4.~
  | g8. e16 g cis,
    << {
      \once\override NoteColumn.force-hshift = #0 e
      g~ g4
    } \\ {
      \once\override NoteColumn.force-hshift = #0 e4.
    } >>
  | fis16 s8. s2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*6/8*6
  | r8 b8. b16 e,8 c'16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | \stemNeutral g a g fis e g a gis a b cis a
  %10
  | fis g fis e d fis g fis g a b g
  | e fis e d cis e fis g fis e d cis
  | d e d cis b d e d e fis e d
  | cis b cis d cis b ais gis ais b gis ais
  | b8 b' b, b b' b,
  %15
  | b8 b' b, b b' b,
  | b8 b' b, b'16 ais b cis d b
  | e f e d c b a gis a b c a
  | d e d c b a g fis g a b g
  | c d c b a g fis e fis g a fis
  %20
  | b fis a c b a g fis g b a g
  | fis e fis g fis e dis cis dis e cis dis
  | e b e fis g e c d c b a c
  | d a d e fis d b c b a g b
  | c g c d e c a b a g fis a
  %25
  | b fis a c b a g fis g b a g
  | fis e fis g fis e dis cis dis e cis dis
  | e8 e' e, e e' e,
  | e8 e' e, e e' e,
  | e8 e' e, e'16 dis e fis g e
  %30
  | a b a g fis e d c d e fis d
  | g a g f e d c b c d e c
  | fis g fis e dis cis b8 b' b,
  | b b' b, b ais' b,
  | \stemDown b4.~ b~
  %35
  | b~ \once\override NoteColumn.force-hshift = #0.2 b~
  | b8 b'8. b16 e,8 c'!16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | g8 gis8.^\prall gis16 a8 c8. c16
  | b c b a g fis e a b8[ b,]
  %40
  | \once\stemUp e,8 r r r e' fis
  | gis r r r gis e
  | a16 gis a c e c a e' c a e fis
  | g fis g bes e bes g e' bes g e g
  | fis8 r r r d e
  %45
  | fis r r r fis d
  | g16 fis g b d b g d' b g d e
  | f e f aes d aes f d' aes f d f
  | e8 r r r e e
  | ees8 r r r ees ees
  %50
  | d8 r r r d d
  | cis8 r r r cis <a cis>
  | d16 cis d e d c \stemNeutral\tieNeutral b a b d c b
  | a g a b a g fis e fis g e fis
  | g8 g'8. g16 d8 b'16 a b g
  %55
  | cis,8 e8. e16 a,8 a'16 g a e
  | fis8 r16 d e fis g fis g a b c
  | d b g d f8~ f16 a g f e d
  | e8 r16 f e d cis d e fis g a
  | d, a' fis d c'8~ c16 e d c b a
  %60
  | b \change Staff = "upper" \stemDown d g d c b c e a e d c
  | d f b f e d e g c b a g
  | fis a c e d c b c b a g fis
  | e g b d c b a b a g fis e
  | d fis a c b a g a g fis e d
  %65
  | c e g b a g fis g fis e d \change Staff = "lower" \stemUp c
  | \stemNeutral b c d8. d16 g,8 e'16 d e c
  | fis,8 b8.^\mordent b16 e,8 c'16 b c a
  | d,8 g8. g16 c,8 a'16 g a fis
  | b,8 e8. e16 a,8 fis'16 e fis d
  %70
  | g,8. a16 b8. c16[ d c d d,]
  | g8 g'8. fis16 g e fis e fis fis,
  | b8 b'8. a!16 b g a g a a,
  | d8 d'8. b16 g'8. g16 e cis
  | fis8 fis, fis' fis fis, fis'
  %75
  | fis fis, fis' fis fis, fis'
  | fis fis, fis' fis16 g! fis e d cis
  | b cis b a g fis e d e fis g e
  | a b a g fis e d cis d e fis d
  | g a g fis e d cis b cis d e cis
  %80
  | fis e fis ais cis ais fis cis' ais fis cis d
  | e d e g cis g e cis' g e cis e
  | \stemDown d8 r r r b cis
  | dis r r r dis b
  | e16 dis e g b g e b' g e b c!
  %85
  | d cis d f b f d b' f d b d
  | cis8 r r r a b
  | cis r r r cis a
  | \stemNeutral d16 fis a, cis d fis d fis a, cis d fis
  | dis16 fis b, cis dis fis dis fis b, cis dis fis
  %90
  | e g b, dis e g e g b, dis e g
  | d f gis, a b d b d gis, a b d
  | c e a, b c e c f a, b c f
  | d f b, c d f gis b e, fis gis e
  | a,8 a'8. a16 e8 c'16 b c a
  %95
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | gis8 r16 a gis fis e d c b a gis
  | a c e a dis,8~ dis16 b cis dis e fis
  | g e fis g a b c8 r16 cis d e
  | fis,8 r16 fis gis ais b,8 r16 b cis dis
  %100
  | \once\stemUp e,8 e''8. e16 a,8 fis'16 e fis d
  | g,8 c8. c16 fis,8 d'16 c d b
  | e,8 a8. a16 d,8 b'16 a b g
  | cis,8 fis8. fis16 b,8 gis'16 fis gis e
  | a,8. b16 c8. d16[ e d e e,]
  %105
  | a8 a'8. g!16 fis g a g a a,
  | d8 d'8. c!16 b c d c d d,
  | g a b fis g e c'8. c16 a fis
  | dis fis b fis e dis e g cis g fis e
  | fis a dis a g fis g b e d cis b
  %110
  | ais \change Staff = "upper" \stemDown cis e g fis e dis fis a c b a
  | g fis e d c b  \change Staff = "lower" \stemNeutral a g fis e dis cis
  | b8 dis fis a fis dis
  | b e g b g e
  | a fis dis b a' fis
  %115
  | b g e b g' e
  | ais16 e g fis e d cis g' fis e dis cis
  | dis fis a c b a g b a g fis e
  | c' b a g fis e dis cis b8 r
  | R1*6/8*4
  %123
  | r8 b'8. b16 e,8 c'16 b c a
  | \stemDown dis,8 fis8. fis16 b,8 b'16 a b fis
  | \stemNeutral g a g fis e g a gis a b cis a
  | fis g fis e d fis g fis g a b g
  | e fis e d cis e fis g fis e d cis
  | d e d cis b d e d e fis e d
  | cis b cis d cis b ais gis ais b gis ais
  %130
  | b8 b' b, b b' b,
  | b b' b, b b' b,
  | b b' b, b'16 ais b cis d b
  | e f e d c b a gis a b c a
  | d e d c b a g fis g a b g
  %135
  | c d c b a g fis e fis g a fis
  | b fis a c b a g fis g b a g
  | fis e fis g fis e dis cis dis e cis dis
  | e b e fis g e c d c b a c
  | d a d e fis d b c b a g b
  %140
  | c g c d e c a b a g fis a
  | b fis a c b a g fis g b a g
  | fis e fis g fis e dis cis dis e cis dis
  | e8 e' e, e e' e,
  | e e' e, e e' e,
  %145
  | e e' e, e'16 dis e fis g e
  | a b a g fis e d c d e fis d
  | g a g f e d c b c d e c
  | fis g fis e dis cis b8 b' b,
  | b b' b, b ais' b,
  %150
  | \stemDown\tieDown b4.~ b~
  | b~ \once\override NoteColumn.force-hshift = #0.2 b~
  | b8 b'8. b16 e,8 c'!16 b c a
  | dis,8 fis8. fis16 b,8 b'16 a b fis
  | g8 gis8.^\prall gis16 a8 c8. c16
  %155
  | b c b a g fis e a b8 b,
  | \stemNeutral e,2.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 810"
    title = \markup { "Prélude" }
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
    \tempo 4. = 70
  }
}
