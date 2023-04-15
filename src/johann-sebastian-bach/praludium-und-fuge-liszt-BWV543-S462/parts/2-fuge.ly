Global = {
  \key c \major
  \time 6/8
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \stemUp
  %1
  | a8[ c16 b c a] b8[ e,16 b' e b]
  | c8[ a e'] f16[ e f d f c]
  | f[ d f b, f' g,] e'[ d e c e b]
  | e[ c e a, e' f,] d'[ c d b d a]
  %5
  | d[ b d gis, d' e,] c'[ a c e a fis]
  | g8 e4~ e16[ dis e cis dis fis]
  | b4.~ b8[ a16 g fis e]
  | a4.~ a8[ g16 fis e d]
  | g4.~ g8[ fis16 e dis e]
  %10
  | fis4.~ fis8[ e16 fis g8~]
  | g16[ g fis e fis d] e8 a4~
  | a16[ a gis fis gis e] c'4.~
  | c16[ c b a g! fis] e4.~
  | e16[ e d c b a] gis[ a b c d b]
  %15
  | c[ d e d e f] d4.~
  | d16[ d] e4~ e8[ d16 c b a]
  | a'8[ g16 f e d] g4.~
  | g8[ f16 e d c] f4.~
  | f8[ e16 d c d] e4.
  %20
  | a16\rest e[ a g fis e] d4.
  | g8\rest e16[ fis g8~] g4.~
  | g16[ cis, d8 e] f4.
  | e4. d4.
  | c4.~ c16[ c b a b d]
  %25
  | gis,8 a4~ a16[ a g! fis! g! e]
  | c'8.[ c16 b a] g4 d'16\rest g,
  | g'4\rest fis8 b4.~
  | b8[ a16 g fis e] \once\override NoteColumn.force-hshift = #-1 a4.~
  | a8[ g16 fis e d] g4.~
  %30
  | g8[ fis16 e d c] fis4.~
  | fis8 e16[ fis g8~] g[ a, cis]
  | d16[ cis d e f!8~] f[ g, b]
  | c16[ b c d e8~] e16[ b c d e c]
  | f[ g f e d c] b[ a b c d b]
  %35
  | c[ b a c b c] d[ c d e c d]
  | b[ a g b a b] c[ b c d b c]
  | a[ gis a b gis a] b[ a b c a b]
  | gis[ a b c d b] e4.~
  | e8 d4~ d8 c4~
  %40
  | c8 b4~ b8 a4~
  | a16[ gis] a4~ a16[ gis] a4~
  | a16[ gis] a4~ a16[ gis] a4~
  | a16[ gis a8 b] e,16[ a] gis8.\prall[ a16]
  | a8[ c16 b c a] b8[ e,16 b' e b]
  %45
  | c8[ a e'] f16[ e f d f c]
  | f[ d f b, f' g,] e'[ d e c e b]
  | e[ c e a, e' f,] d'[ c d b d a]
  | d[ b d gis, d' e,] c'[ a c e a fis]
  | g[ fis g b c a] b8.[ fis16 g dis]
  %50
  | e[ fis] dis8.\prall[ e16] e[ b c a b fis!]
  | g4 r8 g[ b e~]
  | e8[ dis16 e fis8~] fis16[ dis e fis g8~]
  | g16[ g a8 a] a[ a a~]
  | a16[ fis g8 g] g[ g g~]
  %55
  | g16[ e fis8 fis] fis[ fis fis~]
  | fis[ e d!] c4.~
  | c8[ a d] b4.~
  | b8[ e16 d c b] a4.~
  | a16[ c b a g fis] g[ fis g a b s]
  %60
  | c[ b c d e c] f!4.~
  | f4. e16[ d c b c8~]
  | c8[ b8.\prallprall a32 b] c16[ b c d e8~]
  | e4. d~
  | d c~
  %65
  | c b~
  | b8.[ g16 c b] c4.~
  | c8.[ a16 d c] d4.~
  | d8.[ b16 e d] e4.~
  | e8.[ 16 d c] b[ a] b4~
  %70
  | b8.[ 16 a g] fis[ e] fis4
  | g16[ a b a b g] a[ d, fis a d c]
  | b[ g b d g f!] e[ d e c e b]
  | e[ c e a, e' fis,] d'[ c d b d a]
  | d[ b d g, d' e,] c'[ b c a c g]
  %75
  | c[ a c fis, c' d,] b'[ a b g b d,]
  | a'[ g a fis a d,] b'[ a b g b d,]
  | c'[ a c fis, c' d,] d'[ b d g, d' d,]
  | e'[ cis e b e a,] f'![ e d cis d f]
  | g[ f e d e g] a[ g f e f a]
  %80
  | d,8[ e f\mordent] g4.
  | cis,8[ d e\mordent] f4.~
  | f8[ e16 d cis d] e[ g bes g e cis]
  | d[ f a f d c] bes[ d g d bes g]
  | c[ e g e c bes] a[ c f c a f]
  %85
  | bes[ d f d bes a] gis[ b! e c a g!]
  | fis[ a d b g f!] e[ g c a f e]
  | d[ b' d, b' d, b'] c,[ a' d, a' e a]
  | f[ a f b f c'] d,[ d' e, d' f, d']
  | g,[ b g c g d'] e,[ e' f, e' g, e']
  %90
  | a,[ c a d a e'] f4 r8
  | b,8[ c d] e4 e8\rest
  | a,8[ b cis] d[ cis d~]
  | d8[ c!16 b a gis] e'8[ a, b]
  | c16[ d d8.\prallprall c32 d] e4.~
  %65
  | e4. e4.~
  | e4. <e, e'>4.
  | <e e'>4. <e e'>4 <a e'>8
  | q4. d
  | <g, d'> c
  %100
  | <f, c'> b
  | <e, b'>8[ a gis] a16[ gis a c b d]
  | c[ b c a d b] c[ b c a d gis,]
  | a[ gis a e b' e,] c'[ b c e, d' e,]
  | e'[ f e d c b] c[ d c b c a]
  %105
  | f'[ g f e d c] b[ c b a b g]
  | g'[ a g f e d] e[ f e d c b]
  | c[ d c b a gis] a[ b a g! fis e]
  | dis16[ fis] b4~ 16[ e,] e'4~
  | e16[ a, a' g fis e] dis4.~
  %110
  | dis8[ e d!~] d[ c b~]
  | b[ a g~] g[ f! e]
  | \set tieWaitForNote = ##t
    d16[ fis a c b~ s] b[ a g8 fis]
    \set tieWaitForNote = ##f
  | e[ b' e~] e[ dis16 cis dis8]
  | e16[ fis g fis g e] fis[ b, dis fis a fis]
  %115
  | g4 b8 a fis4
  | \mergeDifferentlyDottedOn e4.*2/3 \once\omit Flag \once\omit Stem e8~ e4.
  | d~ d
  | c~ c
  | b~ b8[ <b, e g> <g' b e>]
  %120
  | <e a cis>[ <cis e a> <e a cis>] <f! a d>[ <d f a> <f a d>]
  | <d g b>[ <b d g> <d g b>] <e g c>[ <g c e> <e g c>]
  | <c f a>[ <a c f> <c f a>] <d f b>[ <f b d> <d f b>]
  | <b e gis>[ <gis b e> \once\override NoteColumn.force-hshift = #0 <b e gis>] <c a'> s4
  | \stemUp a'16[ b c d e f!] gis,[ a b c d e]
  %125
  | f[ e d f e d] c[ e d c b a]
  | gis4.\mordent a\mordent
  | b\mordent c\mordent
  | d~ d
  | \once\omit Stem c~ c
  %130
  | b b8[ c d]
  | c[ d e] f[ e d]
  | c4. <a c>8[ a' <a, c>]
  | <g b>4. <g bes>8[ g' <g, bes>]
  | <f a>4. q8[ f' q]
  %135
  | <e, gis>[ e' <e, gis>] a[ e' a,]
  | <gis b>[ e' b] c[ fis c]
  | d![ f! e] c[ e c]
  | b[ d b] a[ c a]
  | gis4 r8 <b, d e b'>4 r8
  %140
  | \stemNeutral <d gis b d>4 r8 <f! gis! b d f!>4 r8
  | <e a c e>4 r8 r4 r8
  | s1*6/8*4
  %146
  | \stemNeutral r32 a'[ b c b a gis a]
    \bottom \clef treble fis[ \top a b c]
    \bottom dis,[ \top a' b c b a gis a] \bottom dis,[ \top fis gis a]
  | \bottom c,![ \top a' b c b a gis a] \bottom c,[ \top dis e fis]
    \bottom a,[ \top a' b c b a gis a] \bottom fis[ \top a b c]
  | \bottom dis,[ \top fis g! a] \bottom c,![ \top dis e fis] a,[ c b a]
    gis[ b c d!] c[ b a b] gis[ b c d]
  | f,![ b c d c b a b] r b[ c d] r b[ c d c b a b] r b[ c d]
  %150
  | r b[ c d c b a b] r b[ c d]
    \override TupletBracket.tuplet-slur = ##t
    \override TupletBracket.bracket-visibility = ##t
    \override Beam.positions = #'(7.5 . 7.5)
    \tupletUp \tuplet 6/4 { \bottom gis,,[ b e \top dis b' f!] }
    \tuplet 6/4 { \bottom gis,[ b e \top dis b' f!] }
    \tuplet 6/4 { \bottom gis,[ b e \top dis b' f!] }
    \revert Beam.positions
  | \stemUp r8 <c e a>[ <b d! e gis>] <c e a>4\fermata r8
  \fine
}

Alto = \context Voice = "Two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \stemDown
  %1
  | s1*6/8*14
  %15
  | a4.~ a16[ gis a fis gis b]
  | e,8 c'16[ b a gis] a4.
  | d4.~ d8[ c16 b a g]
  | c4.~ c8[ b16 a gis a]
  | b4.~ b8[ a16 b c a]
  %20
  | c4.~ c16[ c b a b8]
  | b16\rest \autoBeamOff b8. b8 \autoBeamOn a16[ cis e d cis b]
  | a8[ b cis~] cis16[ a b cis d a]
  | gis[ e a b c! a] fis8[ gis8. b16~]
  | b[ b a gis a e] f!4.
  %25
  | e4 fis8 dis e4~
  | e16[ e] dis4 e8 s4
  | \stemUp a16[ g] a4~ \stemDown a8[ g16 fis g b]
  | \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.5)) Tie
    e4.~ \once\override NoteColumn.force-hshift = #0.1 e8[ d16 c b a]
  | \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.5)) Tie
    d4.~ \once\override NoteColumn.force-hshift = #1 d8[ c16 b a g]
  %30
  | c4.~ c8[ b16 a g fis]
  | b4. <e, a>8[ <e g> q]
  | a4. <d, g>8[ <d f> q]
  | g4 c8 <c, f>4.
  | f4.~ f8 e4
  %35
  | e16[ d c e d e] f[ e f g e f]
  | d[ c b d c d] e[ d e f d e]
  | c[ b c d b c] d[ c d e c d]
  | b4. \bottom a16[ b c d e c]
  | \top
  %40
  | f4 8 e4 8
  | d4 8 c4 8
  | b8.[ c16 a b] c8.[ d16 b c]
  | d8.[ e16 c d] e8.[ f16 d e]
  | f[ e d f e d] c[ d b8. c16]
  %45
  | s1*6/8*6
  %50
  | s16 a' fis8.[ e16] e4 e8\rest
  | c16\rest dis[ e b \bottom c a] b4 \top g'8
  | fis4. b4~ b16[ dis!]
  | e8.[ fis8 e16] r fis8[ d! a!16]
  | d8.[ e8 dis16] r e8[ c g16]
  %55
  | c8 r16 dis8[ cis16] r dis8[ b fis16]
  | b4.~ b8[ a g]
  | fis4.~ fis8[ d g]
  | e4.~ e16[ g fis e dis e]
  | dis4. e4 e8\rest
  %60
  | R1*6/8
  | g4\rest g8\rest s4.
  | s1*6/8
  | a16[ g a f a e] a[ f a d, a' b,]
  | g'[ f g e g d] g[ e g c, g' a,]
  %65
  | f'[ e f d f c] f[ d f b, f' g,]
  | e'[ d] e4 f16\rest a[ e c \bottom a \top g']
  | fis[ e] fis4 g16\rest
    \override Beam.positions = #'(-5.5 . -5.5)
    b[ fis d \bottom b \top a']
  | g16[ fis] g4 a16\rest c[ g e \bottom c \top b']
    \revert Beam.positions
  | a[ g] a4~ a8.[ 16 g fis]
  %70
  | e[ d] e4~ e8.[ 16 d c]
  | s1*6/8*24
  %95
  | s4.
    \once\override Arpeggio.positions = #'(-4 . 2)
    c16\arpeggio[ e a gis a e]
  | d[ a' gis fis gis b] a8[ c16 b c a]
  | b8[ e,16 b' e b] <b c>8[ a] e
  | f16[ e f d f c] \stemUp \once\override NoteColumn.force-hshift = #0.4 a'8 g4
  | \stemDown e16[ d e c e b] \stemUp \once\override NoteColumn.force-hshift = #0.4 g'8 f4
  %100
  | \stemDown d16[ c d b d a] \stemUp \once\override NoteColumn.force-hshift = #0.4 f'8 e4
  | \stemDown c16[ b c a d b] \bottom c[ b c a d gis,]
  | a[ gis a e gis e] a[ gis a e b' e,]
  | c'[ b c a d gis,] a[ gis a c b d]
  | s4. \top e16[ f e d e c]
  %105
  | a'[ b a g f e] d4.
  | \bottom d4. c8[ \top d16 e fis gis]
  | a[ f! \bottom e d c b] c4.
  | b b
  | e4 \top a8~ a[ fis dis]
  %110
  | \bottom b[ \top b' a] g4 fis8
  | e4 d8 c16[ b c a b g]
  | a4~ a16[ a'] g[ fis! e b dis a]
  | e'16[ fis g fis g e] fis[ \bottom b, dis fis b fis]
  | \top g8[ \bottom b, e^~] e[ dis16 cis dis8]
  %115
  | \once\override NoteColumn.force-hshift = #-0.8 e8 \top b'[ e~] e[ dis16 cis dis8]
  | e16[ e, g b e b] c[ b c a c g]
  | c[ a c fis, c' d,] b'[ a b g b fis]
  | b[ g b e, b' c,] a'[ g a fis a e]
  | a[ fis a dis, a' b,] <e g>8 s4
  %120
  | s1*6/8*4
  | d4 c8\rest c\rest gis'[ a]
  %125
  | b4 g8\rest e[ a f~]
  | f16[ \bottom e d f e d] c[ e d c b a]
  | \top gis'4 g8\rest a4 g8\rest
  | b4.~ b
  | \stemUp \once\omit Dots \once\override NoteColumn.force-hshift = #-1 b
    a
  %130
  | \stemDown a8[ gis a] e4 b'8~
  | b[ a16 gis a8] d b4
  | <e, b'>8[ <a, c e> <c e a>] f16[ \bottom e f d f c]
  | \top f[ d f b, f' g,] e'[ \bottom d e c e bes]
  | \top e[ c e a, e' f,] d'[ c \bottom d bes \top d a]
  %135
  | \override Beam.positions = #'(-7 . -6.5)
    d[ b! \bottom d gis, d' e,] \top e'4 fis8
    \revert Beam.positions
  | s4 gis8 a4 8
  | b[ d c] a[ c a]
  | \stemUp \once\override NoteColumn.force-hshift = #0.4 gis4 \stemDown gis8 fis4 8
  | <d f!>4 s2

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemUp\tieDown
  %1
  | R1*6/8*5
  %6
  | \clef treble \stemUp e'8[ g16 fis g e] fis8[ b,16 fis' b fis]
  | g8[ e b'] c16[ b c a c g]
  | c[ a c fis, c' d,] b'[ a b g b fis]
  | b[ g b e, b' c,] a'[ g a fis a e]
  %10
  | a[ fis a dis, a' b,] g'[ fis g b e cis]
  | d4.~ d16[ g, a c! fis dis]
  | e4.~ e16[ d c b c a]
  | d4.~ d16[ d c b a g]
  | f!4.~ f16[ e d e fis gis]
  %15
  | \clef bass a,8[ c16 b c a] b8[ e,16 b' e b]
  | c8[ a e'] f16[ e f d f c]
  | f[ d f b, f' g,] e'[ d e c e b]
  | e[ c e a, e' f,] d'[ c d b d a]
  | d[ b d gis, d' e,] c'[ b c gis a c]
  %20
  | e[ b c e a fis] g8.[ a16 g fis]
  | g8.[ dis16 e b] cis[ g a cis e d!]
  | cis[ e a g f! e] \tieUp d4.~
  | d8 c!4~ c16[ c b a b gis]
  | a8[ c a] d4.~
  %25
  | d16[ d c b c a] b8[ c g]
  | a8 b4~ b16[ \top b e dis! e8_~]
  | e8[ \bottom
    \once\override Arpeggio.positions = #'(-1 . 4)
    dis16\arpeggio
    cis dis8~] dis8[ e d!]
  | e[ fis g] \top a4 g,8\rest
  | \bottom d'[ e fis] \top \once\override NoteColumn.force-hshift = #0 g4 e,8\rest
  %30
  | \bottom e'8[ d16 c b a] dis4.~
  | dis8 e4 s4.
  | d4. s4.
  | c4. s4.
  | b4.~ b4.
  %35
  | s1*6/8*9
  %44
  | a4.~ a4 gis8
  | a4.~ a4 8
  | g4.~ g4 s8
  | f4 c'8~ c[ b16 a gis a]
  | b4.~ b8[ a c~]
  | c[ b e] dis16[ fis b dis, e8~]
  %50
  | e16 s8. s2
  | s4. \stemDown e,16\rest fis[ g dis e ais,]
  | s1*6/8*9
  %61
  | s4. \stemUp c'16[ d e d e c]
  | d8[ g,16 d' g f] e[ d e f g e]
  | s1*6/8*8
  %71
  | b8[ g c~] c[ b a]
  | g[ a b] c4.~
  | c8[ b a] b4.~
  | b8[ a g] a4.~
  %75
  | a8[ g fis] g[ fis e]
  | fis[ e fis] g[ fis g]
  | a[ g a] b[ a b]
  | cis8.[ d16 b cis] d[ e f! e f d]
  | e8 s4 s4.
  %80
  | s1*6/8*18
  %98
  | s4. \top f16[ d f b, f' g,]
  | s4. e'16[ c e a, e' f,]
  | s4. d'16[ b d gis, d' e,]
  | s1*6/8*3
  %104
  | \bottom gis8 c8\rest d8\rest s4.
  | s1*6/8*8
  %113
  | g,4 s2
  | s1*6/8
  %115
  | \mergeDifferentlyDottedOn
    \once\override NoteColumn.force-hshift = #0 e16[ fis g fis g e] fis[ b, dis fis b fis]
  | g8[ e g~] g[ fis e]
  | fis[ d fis~] fis[ e d]
  | e[ c e~] e[ dis e]
  | dis[ b dis] s4.
  %120
  | s1*6/8*3
  | \top s4 \once\omit Flag \once\omit Stem \once\override NoteColumn.force-hshift = #0 e'8~
    e16[ fis g! a b c]
  | \bottom fis,,4 f8\rest b\rest d[ c]
  %125
  | b4 b8\rest c4 d8
  | s4. \stemDown a4 e8\rest
  | \stemUp f16[ e d f e d] c[ e d c b a]
  | gis[ b e fis gis a] b[ \top c d e fis gis]
  | \top a[ gis a f! e d] e[ d c e d c]
  %130
  | \bottom d[ c b d c b] d[ b a b a gis!]
  | a[ b c b c a] b8[ e,16 b' \top e \bottom b]
  | s1*6/8*3
  %135
  | s4. c16[ b c a c e,]
  | \top b'[ \bottom a b gis b e,] a[ gis a fis a dis,]
  | gis[ fis gis e fis gis] a[ gis a e gis a]
  | \top b[ \bottom a b e, a b] c[ b c e, b' c]
  | s1*6/8*3
  %142
  | s16 gis[ a e f! dis] e[ dis e b c gis]
  | a[ dis e b c gis] a[ dis e b c gis]
  | a[ c c e e a] c,[ e e a a c]
  %145
  | gis[ a e f dis e] b[ c gis a e fis]
  | s1*6/8*3
  | s4 gis''8 4 8
  %150
  | 4 8 s4.
  | a,8\rest <c, e a>[ <b d e>] <e a>4\fermata s8

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  %1
  | s1*6/8*14
  %15
  | \override MultiMeasureRest.staff-position = #-4
    R1*6/8*11
  %26
  | c4\rest c8\rest e8[ g16 fis g e]
  | fis8[ b,] b'16[ fis] g8[ e b']
  | c16[ b c a c g] c[ a c fis, c' d,]
  | b'[ a b g b fis] b[ g b e, b' c,]
  %30
  | a'[ g a fis b e,] a[ fis a dis, a' b,]
  | g'[ fis g dis e b] cis[ b cis a e' cis]
  | f![ e f cis d a] b[ a b g d' b]
  | e[ d e b c gis] a[ g! a f c' a]
  | d[ c d b f' d] gis[ fis gis e b' gis]
  %35
  | a8[ a,] r r <d, d'>[ <f f'>]
  | <g g'>[ <g, g'>] r r <c c'>[ <e e'>]
  | <f f'>[ <a a'> <f f'>] <d d'>[ <b b'> <d d'>]
  | <e e'>[ gis' e] c[ a a']
  | a16[ c b c a b] gis[ b a b gis a]
  %40
  | fis[ a gis a fis gis] a[ e f! e f c]
  | <d, d'>4 r8 <e e'>4 r8
  | <f f'>4 r8 <c c'>4 r8
  | <d d'>4 \stemUp <gis, gis'>8 <a a'>8[ e' e']
  | \stemDown a,4. e'4.
  %45
  | a,8[ c16 b c a] d4 a8
  | b[ g b] c4 r8
  | a8[ f a] b4 b8\rest
  | gis[ e gis] a4 a8\rest
  | e'4 e8\rest b'4 g8~
  %50
  | g16[ a] b8[ b,] e4 r8
  | e,4 e8\rest d4.\rest
  | b'16[ dis fis c' a fis] g8[ e b']
  | c16[ b c a c g] c[ a c fis, c' d,]
  | b'[ a b g b fis] b[ g b e, b' c,]
  %55
  | a'[ g a fis a e] a[ fis a dis, a' b,]
  | g'[ fis g a b g] a[ g a b c a]
  | d[ c d d, fis d] g[ fis g a b g]
  | c[ b c c, e c] fis[ e fis g a fis]
  | b[ a b b, dis b] e[ dis e fis g e]
  %60
  | a[ gis a a, c a] d[ cis d e f! d]
  | g[ fis g a b g] c8[ b a]
  | g4. c4.
  | f,16[ g f e d c] b8[ b' b,]
  | e16[ f e d c b] a8[ a' a,]
  %65
  | d16[ e d c b a] g8[ g' g,]
  | c[ c' b] a[ a, a']
  | d,[ d' c] b[ b, b']
  | e,8[ e' d] c[ c, c']
  | fis,[ e fis] g[ fis g]
  %70
  | \stemUp c,[ b c] d[ c d]
  | \stemDown e4. fis4.
  | \mergeDifferentlyDottedOn g4.~ g8[ e c]
  | fis4.~ fis8[ d b]
  | e4.~ e8[ c a]
  %75
  | d4.~ d~
  | d~ d~
  | d~ d~
  | d~ d8 r r
  | s \clef treble \stemUp a'16[ e' a e] f8[ d a']
  %80
  | bes16[ a bes g bes f] bes[ g bes e, bes' cis,]
  | a'[ g a f a e] a[ f a d, a' b,!]
  | g'[ f g e g d] g[ e g cis, g' a,]
  | f'8[ d f] g,16[ bes d f g f]
  | e8[ c e] \clef bass \stemDown f,16[ a c ees f ees]
  %85
  | \tieUp d4.~ d8[ c16 b! c8~]
  | c[ b16 a b8~] b[ a16 gis a8~]
  | a[ gis16 fis gis8] a8[ b c]
  | d4 r8 b8[ c d]
  | e4 r8 c8[ d e]
  %90
  | f4 r8 \clef treble \stemUp d16[ f d g d a']
  | g,[ g' a, g' b, g'] c,[ e c f c g']
  | f,[ f' g, f' a, f'] bes,[ d bes e bes f']
  | gis,[ e' a, e' b! e] c[ e c fis c gis']
  | a,[ a' g! a f a] e[ gis e a e b']
  %95
  | c,[ e c fis c gis'] \clef bass \stemDown <a,,, a'>8[ <c c'>16 <b b'> <c c'> <a a'>]
  | <b b'>8[ <e, e'>] <e' e'>16[ <b b'>]  <c c'>8[ <a a'> <a' a'>~]
  | q8 \stemUp <gis gis'>4 \stemDown <a a'>16[ <a, a'> <c c'> <b b'> <c c'> <a a'>]
  | <d d'>4 r8 r <b b'>16[ <a a'> <b b'> <g g'>]
  | <c c'>4 r8 r <a a'>16[ <g g'> <a a'> <f f'>]
  %100
  | <b b'>4 r8 r <gis gis'>16[ <fis fis'> <gis gis'> <e e'>]
  | <a a'>4 b'8\rest b4\rest b8\rest
  | a4 b8\rest b4\rest b8\rest
  | a4 b8\rest b4\rest b8\rest
  | e8[ fis gis!] a[ a, a']
  %105
  | d,8[ e f] g[ g,] g'16[ a]
  | b8[ a g] c[ c, e]
  | \tieDown a4.~ a~
  | a8.[ g16 a fis] g8.[ fis16 g e]
  | c'8.[ b16 c a] b[ a b g a fis]
  %110
  | g[ fis g e fis d!] e[ d e c d b]
  | c[ b c a b g] a4 g8
  | fis[ e dis] e b'4
  | e,4 r8 b'4 r8
  | e4 r8 b'4 r8
  %115
  | \mergeDifferentlyDottedOn e,4. s16 b4 s16
  | e,4 g8\rest a4 g8\rest
  | d4 g8\rest g4 g8\rest
  | c,4 g'8\rest fis4 g8\rest
  | b,4 g'8\rest <g g'>16[ <fis fis'> <g g'> <e e'> <g g'> <d! d'!>]
  %120
  | <g g'>[ <e e'> <g g'> <cis, cis'> <g' g'> <a, a'>]
    <f'! f'!>[ <e e'> <f f'> <d d'> <f f'> <c! c'!>]
  | <f f'>[ <d d'> <f f'> <b, b'> <f' f'> <g, g'>]
    <e' e'>[ <d d'> <e e'> <c c'> <e e'> <b b'>]
  | <e e'>[ <c c'> <e e'> <a, a'> <e' e'> <f, f'>]
    <d' d'>[ <c c'> <d d'> <b b'> <d d'> <a a'>]
  | <d d'>[ <b b'> <d d'> <gis, gis'> <d' d'> <e, e'>] <c' c'>4 r8
  | c'4 b8\rest b[ b' a]
  %125
  | gis4 r8 a[ f d]
  | <e b'>4 r8 \once\override Voice.Rest.X-offset = #0.4 a,4\rest s8
  | e4 e8\rest e4\rest e8\rest
  | c\rest e[ fis] gis[ fis e]
  | a\rest a[ b] c[ b a]
  %130
  | r8 e'[ fis] gis[ fis e]
  | a,4.~ a8 gis4
  | <a c'>16 <a, a'>[ <c c'> <b b'> <c c'> <a a'>] <d d'>4 g8\rest
  | <g, g'>[ <a a'> <b b'>] <c c'>4 g'8\rest
  | <f, f'>[ <g g'> <a a'>] <bes bes'>[ c' <d, d'>]
  %135
  | <e e'>4 g8\rest g4\rest g8\rest
  | <e e'>4 g8\rest g4\rest g8\rest
  | e4 g8\rest g4\rest g8\rest
  | <e e'>4 g8\rest g4\rest g8\rest
  | \stemUp r16 <b, b'>[ <d d'> <c c'> <d d'> <b b'>]
    <gis' gis'>[ <e e'> <f! f'!> <e e'> <f f'> <d d'>]
  %140
  | \stemDown <b' b'>[ <fis fis'> <gis gis'> <fis fis'> <gis gis'> <e e'>]
    <d' d'>[ <a a'> <b b'> <a a'> <b b'> <gis gis'>]
  | <c c'>[ <gis gis'> <a a'> <e e'> <f! f'!> <dis dis'>]
    <e e'>[ <gis gis'> <a a'> <e e'> <f f'> <dis dis'>]
  | <e e'> gis[ a e f! dis] e[ dis e b c gis]
  | a[ dis e b c gis] a[ dis e b c gis]
  | a[ c c e e a] c,[ e e a a c]
  %145
  | gis[ a e f dis e] b[ c gis a e fis]
  | <dis dis'>4 s2
  | s1*6/8
  | s4. \clef bass <e e'>4 r8
  | r4 f'''!8 <d f>4 q8
  %150
  | <b d f>4 q8 s4.
  | \set tieWaitForNote = ##t
    <e,,, e'>4 \grace { \stemUp e16~ e'~ } \stemDown <e, e'>8
    \grace { \stemUp a16~ a'~ } \stemDown <a, a'>4\fermata r8
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
      \Tenor
      \Bass
    >>
  >>
  \header {
%    composer = "Johann Sebastian Bach"
%    opus = "BWV 543 / S.462a"
    title = \markup { "Fuge" }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 100
  }
}

