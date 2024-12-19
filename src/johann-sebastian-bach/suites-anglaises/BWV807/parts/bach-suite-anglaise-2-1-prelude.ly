Global = {
  \key a \minor
  \time 3/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \label #'SuiteIIPrelude
  %1
  \tempo "Prélude"
  | r8\mark #1 e[ a, a'] g16 e f d
  | \stemUp e d c b c b c f b, e a, d
  | gis, d' b gis d' b gis b e, d' c b
  | \stemNeutral c b a gis a b c f, b e, a b
  %5
  | gis8[ e] gis[ b] gis[ e]
  | a16 g'! e cis g' e cis e a, g fis e
  | fis8[ d'] fis[ a] fis[ d]
  | g16 f d b f' d b d g, f' e d
  | e d c b a c d fis g b, c a
  %10
  | b d e f g a, bes g g' a, bes g
  | a c d e f g, a f f' g, a f
  | g e g b e f, g e e' f, g e
  | f d f a d e, f d d' e, f d
  | e d c b c gis a e' d b c a
  %15
  | b d b gis d' b gis b e, d' c b
  | c a cis e g e cis e a, g' f e
  | f a, d f a fis dis fis b, a' gis fis
  | gis e gis b d b gis b e, d' c b
  | c8[ e] a,[ a'] g!16 e f d
  %20
  | b' a gis fis gis fis gis b e, gis a c,
  | d f! c f b, f' c f b, f' a, f'
  | gis, b e e, a c e e, gis b d e,
  | \stemUp c'2 s4
  | b2 s4
  %25
  | a4 s2
  | s2.*5
  %31
  | \change Staff = "lower" \stemUp\tieUp c,,16 e a8~
    \once\override Beam.positions = #'(4.4 . 4.8)
    a gis a16 c b d
  | gis, b \change Staff = "upper" \stemDown d f d \change Staff = "lower" \stemUp b gis b
    e, \change Staff = "upper" \stemDown d' c b
  | \stemUp\tieUp c16 e a8~ a gis a16 c b d
  | \change Staff = "upper" \stemNeutral gis,16 b d f d b gis b e, d' c b
  %35
  | \stemUp\tieUp c16 e a8~ a gis a16 c b a
  | gis fis gis b a gis a c gis fis gis b
  | fis e fis a f e f b e, d e a
  | d, c d gis e d e a d, c d gis
  | c, b c fis d c d gis c, b c fis
  %40
  | b, a b e d b c a b gis! a fis
  | gis fis gis b e, dis e gis d! c d f!
  | \change Staff = "lower" \stemUp\tieUp b, a b d gis, fis gis b e,8 f\rest
  | f16\rest d c b f' d c b gis' d c b
  | b' f! e d gis f e d b' f e d
  %45
  | d' gis, fis e b' gis fis e d' b a gis
  | f'! e d c b a gis fis s4
  | \change Staff = "upper" \stemNeutral r8 e''[ a, a'] g!16 e f d
  | \stemUp e b c gis a c f d e c d b
  | c b c gis a c e c d b c a
  %50
  | b a b gis a gis a f' e c d b
  | \stemNeutral c b a gis a b c f e c d b
  | c b a gis a b c d c a b gis
  | a b c a gis a c a b gis a fis
  | gis f e d c b c a' b, a' b, gis'
  %55
  | \mark #2 a8 e e16 f e8 e8 e
  | \grace e f d d16 e d8 d d
  | \grace d e g g16 a g8 g g
  | \grace g a fis fis16 g fis8 fis fis
  | \grace fis g b e, e' d!16 b c a
  %60
  | b a g fis g fis g c fis, b e, a
  | dis, a' fis dis a' fis dis fis b, a' g fis
  | g8 b, b16 c b8 b b
  | \grace b c a a16 b a8 a a
  | \grace a b d d16 e d8 d d
  %65
  | \grace d e cis cis16 d cis8 cis cis
  | \grace cis d16 b d fis b d, fis b \stemUp d8 d
  | d16 e, gis b \stemNeutral d b gis b e, d' c b
  | \stemUp c a, c e a c, e a c8 c
  | c16 d, fis a c a fis a d, c' b a
  %70
  | \stemNeutral b fis g b d, fis g b d, fis g b
  | c fis, g c d, fis g c d, fis g c
  | d fis, g d' d, fis g d' d, fis g d'
  | e, d e d' e, d e d' e, d e d'
  | e, d e c' e, d e c' e, d e c'
  %75
  | fis, e fis c' fis, e fis c' fis, e fis c'
  | g fis g b g fis g b g fis g b
  | g fis g e' g, fis g e' g, fis g e'
  | fis, d fis a d e, f d d' e, f d
  | e c e g c d, e c c' d, e c
  %80
  | \stemUp d8 d' d16 e d8 d d
  | d c c16 d c8 c c
  | b16 a g fis g fis g c fis, b e, a
  \break
  | \stemNeutral dis, c' b a fis c' b a a c b a
  | b, a' g fis dis a' g fis fis a g fis
  %85
  | a, fis' e dis c! fis e dis dis fis e dis
  | a'16 fis e dis c' fis, e dis b' a g fis
  | g8 b e, e' d!16 b c a
  | b fis g dis e g c a b g a fis
  | g fis g dis e g b g a fis g e
  %90
  | fis e fis dis e dis e c' b g a fis
  | g fis e dis e fis g c b g a fis
  | g fis e dis e fis g a g e fis dis
  | e fis g e dis e g e fis dis e cis
  | dis c' b a g a b c fis,8.\downmordent e16
  %95
  | e8 g g16 a g8 g g
  | bes g g16 a g8 g16 bes a g
  | f8 f f16 g f8 f f
  | d' f, f16 g f8 f16 a g f
  | e b c e g, b c e g, b c e
  %100
  | f b, c f g, b c f g, b c f
  | b b, c g' g, b c g' g, b c g'
  | a, g a g' a, g a g' a, g a g'
  | a, g a f' a, g a f' a, g a f'
  | b, a b f' b, a b f' b, a b f'
  %105
  | c b c e c b c e c b c e
  | c b c ees c b c ees c b c a'
  | b, d f aes f d b g r4
  | c'4 \stemUp ees, r8 <g b>
  | c8.\mordent d16 d4.\prallprall c8
    \break
  %110
  | \stemNeutral c8\mark #1 e a, a' g16 e f d
  | \stemUp e d c b c b c f b, e a, d
  | gis, d' b gis d' b gis b e, d' c b
  | \stemNeutral c b a gis a b c f, b e, a b
  | gis8[ e] gis[ b] gis[ e]
  %115
  | a16 g'! e cis g' e cis e a, g fis e
  | fis8[ d'] fis[ a] fis[ d]
  | g16 f d b f' d b d g, f' e d
  | e d c b a c d fis g b, c a
  | b d e f g a, bes g g' a, bes g
  %120
  | a c d e f g, a f f' g, a f
  | g e g b e f, g e e' f, g e
  | f d f a d e, f d d' e, f d
  | e d c b c gis a e' d b c a
  | b d b gis d' b gis b e, d' c b
  %125
  | c a cis e g e cis e a, g' f e
  | f a, d f a fis dis fis b, a' gis fis
  | gis e gis b d b gis b e, d' c b
  | c8[ e] a,[ a'] g!16 e f d
  | b' a gis fis gis fis gis b e, gis a c,
  %130
  | d f! c f b, f' c f b, f' a, f'
  | gis, b e e, a c e e, gis b d e,
  | \stemUp c'2 s4
  | b2 s4
  | a4 s2
  | s2.*5
  %140
  | \change Staff = "lower" \stemUp\tieUp c,,16 e a8~
    \once\override Beam.positions = #'(4.4 . 4.8)
    a gis a16 c b d
  | gis, b \change Staff = "upper" \stemDown d f d \change Staff = "lower" \stemUp b gis b
    e, \change Staff = "upper" \stemDown d' c b
  | \stemUp\tieUp c16 e a8~ a gis a16 c b d
  | \change Staff = "upper" \stemNeutral gis,16 b d f d b gis b e, d' c b
  | \stemUp\tieUp c16 e a8~ a gis a16 c b a
  | gis fis gis b a gis a c gis fis gis b
  | fis e fis a f e f b e, d e a
  | d, c d gis e d e a d, c d gis
  | c, b c fis d c d gis c, b c fis
  | b, a b e d b c a b gis! a fis
  | gis fis gis b e, dis e gis d! c d f!
  | \change Staff = "lower" \stemUp\tieUp b, a b d gis, fis gis b e,8 f\rest
  | f16\rest d c b f' d c b gis' d c b
  | b' f! e d gis f e d b' f e d
  | d' gis, fis e b' gis fis e d' b a gis
  | f'! e d c b a gis fis s4
  | \change Staff = "upper" \stemNeutral r8 e''[ a, a'] g!16 e f d
  | \stemUp e b c gis a c f d e c d b
  | c b c gis a c e c d b c a
  | b a b gis a gis a f' e c d b
  | \stemNeutral c b a gis a b c f e c d b
  | c b a gis a b c d c a b gis
  | a b c a gis a c a b gis a fis
  | gis f e d c b c a' b, a' b, gis'
  | \mark #2 a2.
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s2.*22
  | f16\rest b a g! f e d e f e f c'
  | e,\rest a g f e d c d e d e bes'
  %25
  | d,\rest g f e f e f a gis b a c
  | \stemNeutral b c d b gis e f d e c d b
  | c e a gis a d, e c d b c a
  | gis e' b' a b e, f d e c d b
  | c d e b c8 d c b
  %30
  | \change Staff = "lower" \stemUp a16 b c gis a e f b e, a d, gis
  | \once\override Voice.Rest.X-offset = #1.6 r8 r16 b, \shiftOn c8[ d]
    \stemDown \override NoteColumn.force-hshift = #-0.4 e[ f]
  | \stemUp \override NoteColumn.force-hshift = #0.5 e4 s2
    \revert NoteColumn.force-hshift
  | \change Staff = "upper" \stemDown f8\rest a16\rest b c8[ d] e[ f]
  | \change Staff = "lower" \stemUp e4 s2
  %35
  | \change Staff = "upper" \stemUp \once\override Voice.Rest.X-offset = #2 a8\rest a16\rest b c8[ d]
    \stemDown \override NoteColumn.force-hshift = #-0.5 e[ f]
    \revert NoteColumn.force-hshift
  | s2.*11
  %47
  | \change Staff = "lower" \voiceThree a,,4\rest a8\rest c[ d b]
  | c4 \change Staff = "upper" \voiceTwo d8\rest a'[ a gis!]
  | a d,\rest d\rest a'[ gis! e]
  %50
  | d4 c8[ b] c[ b]
  | s2.*4
  %55
  | d8\rest c c c c c
  | c b b b b b
  | c e e e e e
  | e dis dis dis dis dis
  | e d\rest s2
  %60
  | s2.*2
  | \change Staff = "lower" \stemUp b8\rest g g g g g
  | g fis fis fis fis fis
  | g b b b b b
  %65
  | b ais ais ais ais ais
  | b16 s8. s4
    \change Staff = "upper" \stemUp g'8\rest \shiftOn b
  | b16 s8. s2
  | s2 f8\rest a
  | a16 s8. s2
  %70
  | s2.*10
  %80
  | \stemDown g,8\rest b' b b b b
  | b a a a a a
  | b16 s8. s2
  | s2.*7
  %90
  | \change Staff = "lower" \stemUp
    s4 \once\override Voice.Rest.X-offset = #1.4 e,,8\rest
    \override NoteColumn.force-hshift = #0.8 e
    \override NoteColumn.force-hshift = #0.7 e dis
    \revert NoteColumn.force-hshift
  | e8 s s2
  | s2.*2
  | \change Staff = "upper" \stemDown
    s2 dis'4
  %95
  | e8 e e e e e
  | g e e e e c\rest
  | b\rest d d d d d
  | f d d d d b\rest
  | s2.*9
  %108
  | s4 a c8\rest d
  | g4 b2
  | s2.*22
  %132
  | f16\rest b a g! f e d e f e f c'
  | e,\rest a g f e d c d e d e bes'
  | d,\rest g f e f e f a gis b a c
  %135
  | \stemNeutral b c d b gis e f d e c d b
  | c e a gis a d, e c d b c a
  | gis e' b' a b e, f d e c d b
  | c d e b c8 d c b
  | \change Staff = "lower" \stemUp a16 b c gis a e f b e, a d, gis
  %140
  | \once\override Voice.Rest.X-offset = #1.6 r8 r16 b, \shiftOn c8[ d]
    \stemDown \override NoteColumn.force-hshift = #-0.4 e[ f]
  | \stemUp \override NoteColumn.force-hshift = #0.5 e4 s2
    \revert NoteColumn.force-hshift
  | \change Staff = "upper" \stemDown f8\rest a16\rest b c8[ d] e[ f]
  | \change Staff = "lower" \stemUp e4 s2
  | \change Staff = "upper" \stemUp \once\override Voice.Rest.X-offset = #2 a8\rest a16\rest b c8[ d]
    \stemDown \override NoteColumn.force-hshift = #-0.5 e[ f]
    \revert NoteColumn.force-hshift
  | s2.*11
  %157
  | \change Staff = "lower" \voiceThree a,,4\rest a8\rest c[ d b]
  | c4 \change Staff = "upper" \voiceTwo d8\rest a'[ a gis!]
  | a d,\rest d\rest a'[ gis! e]
  | d4 c8[ b] c[ b]
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*18
  %19
  | g'16\rest d c b c b c e cis e d f
  | s2.*30
  %50
  | s4. a,8 a gis!
  | a s s2
  | s2.*2
  | s2 e4
  | s2.*11
  %66
  | \change Staff = "upper" \stemDown s2 s8 e'
  | gis16 s8. s2
  | s2 s8 e
  | fis16 s8. s2
  %70
  | \change Staff = "lower" \stemUp
    s2.*17
  %87
  | b,4\rest b8\rest g[ a fis]
  | g4 g8\rest e'[ e dis]
  | e8 e\rest e\rest e[ dis b]
  %90
  | a4 g8 fis g fis
  | s2.*5
  %96
  | \change Staff = "upper" \stemUp
    cis'8 s s2
  | s2.
  | b'8 s s2
  | s2.*9
  %108
  | s4 c, s
  | s2.*19
  %128
  | \change Staff = "lower" \stemUp
    g'16\rest d c b c b c e cis e d f
  | s2.*30
  %159
  | s4. a,8 a gis!
  | a8 s s2
  | s2.*2
  | s2 e4
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  %1
  | R1*3/4
  | \change Staff = "upper" e8\rest e[ \change Staff = "lower" \stemUp a,
    \change Staff = "upper" \stemDown a'] g16 e f d
  | e8 \change Staff = "lower" \stemUp e, \stemNeutral gis b gis e
  | a e a, a' g!16 e f d
  %5
  | e16 d b gis d' b gis b \stemNeutral e, d' c b
  | cis8 a cis e cis a
  | d16 c'! a fis c' a fis a d, c' b a
  | b8 g b d b g
  | c g c, c' b16 g a fis
  %10
  | g8 f! e d e c
  | f e d c d b
  | e d cis b cis a
  | d c! b a b g
  | c g c, c' b16 gis a fis
  %15
  | gis8 e gis b gis e
  | a a cis e cis a
  | d f16 e dis8 fis dis b
  | e, e' gis b gis e
  | \stemDown a2.
  %20
  | \stemNeutral\tieNeutral gis8 b e, e' d16 b c a
  | b8 a gis a b c
  | d d, c c' b e,
  | a, a'~ a16 g f e d c d d,
  | g8 g'~ g16 f e d c bes c c,
  %25
  | f8 a d, d'16 c b gis a fis
  | gis4 r8 b[ gis e]
  | a4 r8 c[ b a]
  | e'4 r8 e[ fis gis]
  | \stemDown a8. gis16 a e f d e c d b
  %30
  | c d e b c8 d c b
  | a8. gis16 a e b' e, c' e, d' e,
  | \once\override NoteColumn.force-hshift = #0.5 e'8 e, g4\rest g\rest
  | a'8. gis16 a e b' e, c' e, d' e,
  | e'8 e, r4 r
  %35
  | \change Staff = "upper" \stemDown
    a'8. gis16 a e b' e, c' e, d' e,
  | e'8 e, e' e, d' e,
  | c' e, d' e, c' e,
  | b' e, c' e, b' e,
  | a e b' e, a e
  %40
  | gis e \change Staff = "lower" \stemDown r8 e16 c d b c a
  | b a b d gis, fis gis b f! e f a
  | d, c d f b, a b d gis, fis gis b
  | e,4 e\rest e\rest
  | e e\rest e\rest
  %45
  | e e\rest e\rest
  | s2 e'16 d c b
  | a4 a8\rest a'[ b g!]
  | c c, r d'[ c b]
  | a4 r8 c8[ b a]
  %50
  | gis e f d e e
  | a e a, a' g!16 e f d
  | \stemNeutral e d c e a, c f d e c d b
  | c b a c e, a e' c d b c a
  | b a b gis a8 d \stemDown e e,
  %55
  | \stemNeutral a4 r16 a c e a g! f e
  | d4 r16 g, b d g f e d
  | c4 r16 c e g c b a g
  | fis4 r16 b, dis fis b a g fis
  | e dis e fis g fis g a b g a fis
  %60
  | g8 b e, e' d16 b c a
  | b8 b, dis fis dis b
  | \stemDown e e, f16\rest e g b e d c b
  | a4 g16\rest d fis a d c b a
  | g4 g16\rest g b d g fis e d
  %65
  | cis4 b16\rest fis ais cis fis e d cis
  | b4 r16 b d fis b a gis fis
  | \stemNeutral e8 e, gis b gis e
  | a4 r16 a c e a g fis e
  | d8 d, fis a fis d
  %70
  | g g' g16 a g8 g g
  | a, g' g16 a g8 g g
  | b, g' g16 a g8 g g
  | c, g' g16 a g8 g g
  | c, a' a16 b a8 a a
  %75
  | d, a' a16 b a8 a a
  | d, b' b16 c b8 b b
  | d, cis' cis16 d cis8 cis cis
  | d, d'16 c! b8 a b g
  | c, c'16 b a8 g a fis
  %80
  | b16 b, d fis b fis gis e b' fis gis e
  | a a, c e a e fis d a' e fis d
  | g8 b e, e' d16 b c a
  | b4 r r
  | b, r r
  %85
  | b r r
  | r8 b[ dis fis] dis b
  | e,4 \stemDown b'8\rest e[ fis d]
  | g g, b8\rest a'[ g fis]
  | e4 d8\rest g[ fis e]
  %90
  | dis b c a b b
  | e,[ b'' e, e'] \stemNeutral d!16 b c a
  | b a g b e, g c a b g a fis
  | g fis e g b, e b' g a fis g e
  | fis e fis dis e8 a b b,
  %95
  | e4 r16 e, g b e d! cis b
  | a4 r16 a cis e a g f e
  | d4 r16 d, f a d c! b a
  | g4 r16 g b d g f e d
  | c8 c c16 d c8 c c
  %100
  | d, c' c16 d c8 c c
  | e, c' c16 d c8 c c
  | f, c' c16 d c8 c c
  | f, d' d16 e d8 d d
  | g, d' d16 e d8 d d
  %105
  | g, e' e16 f e8 e e
  | g, fis' fis16 g fis8 fis fis
  | g,4 r f'!16 d b g
  | r4 fis r8 f!
  | e f g f g4
  %110
  | c,8 r r4 r
  | \change Staff = "upper" e''8\rest e[ \change Staff = "lower" \stemUp a,
    \change Staff = "upper" \stemDown a'] g16 e f d
  | e8 \change Staff = "lower" \stemUp e, \stemNeutral gis b gis e
  | a e a, a' g!16 e f d
  | e16 d b gis d' b gis b \stemNeutral e, d' c b
  %115
  | cis8 a cis e cis a
  | d16 c'! a fis c' a fis a d, c' b a
  | b8 g b d b g
  | c g c, c' b16 g a fis
  | g8 f! e d e c
  %120
  | f e d c d b
  | e d cis b cis a
  | d c! b a b g
  | c g c, c' b16 gis a fis
  | gis8 e gis b gis e
  %125
  | a a cis e cis a
  | d f16 e dis8 fis dis b
  | e, e' gis b gis e
  | \stemDown a2.
  | \stemNeutral\tieNeutral gis8 b e, e' d16 b c a
  %130
  | b8 a gis a b c
  | d d, c c' b e,
  | a, a'~ a16 g f e d c d d,
  | g8 g'~ g16 f e d c bes c c,
  | f8 a d, d'16 c b gis a fis
  %135
  | gis4 r8 b[ gis e]
  | a4 r8 c[ b a]
  | e'4 r8 e[ fis gis]
  | \stemDown a8. gis16 a e f d e c d b
  | c d e b c8 d c b
  %140
  | a8. gis16 a e b' e, c' e, d' e,
  | \once\override NoteColumn.force-hshift = #0.5 e'8 e, g4\rest g\rest
  | a'8. gis16 a e b' e, c' e, d' e,
  | e'8 e, r4 r
  | \change Staff = "upper" \stemDown
    a'8. gis16 a e b' e, c' e, d' e,
  %145
  | e'8 e, e' e, d' e,
  | c' e, d' e, c' e,
  | b' e, c' e, b' e,
  | a e b' e, a e
  | gis e \change Staff = "lower" \stemDown r8 e16 c d b c a
  %150
  | b a b d gis, fis gis b f! e f a
  | d, c d f b, a b d gis, fis gis b
  | e,4 e\rest e\rest
  | e e\rest e\rest
  | e e\rest e\rest
  %155
  | s2 e'16 d c b
  | a4 a8\rest a'[ b g!]
  | c c, r d'[ c b]
  | a4 r8 c8[ b a]
  | gis e f! d e e
  %160
  | a e a, a' g!16 e f d
  | \stemNeutral e d c e a, c f d e c d b
  | c b a c e, a e' c d b c a
  | b a b gis a8 d \stemDown e e,
  | a2.
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
    opus = "BWV 807"
    title = \markup {
      \fill-line {
        \center-column {
          \line \abs-fontsize #18 \caps {
            "Suite II" \abs-fontsize #14 { \caps "avec Prélude" }
          }
        }
      }
    }
    subtitle = ##f % \markup \abs-fontsize #14 { "Prélude" }
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
