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
  | d[ b d g, d' e,] c'[ a c e a fis]
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
  | gis,8 a4~ a16[ a g! fis g! e]
  | c'8.[ c16 b a] g4 d'16\rest g,
  | g'4\rest fis8 b4.~
  | b8[ a16 g fis e] a4.~
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
  | e[ fis] dis8.\prall[ e16] e[ b c a b fis]
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
  | <e, b'>8[ a gis]
  | s1*6/8
  | s1*6/8
  | s1*6/8
  %105

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
  | a8[ b c~] c16[ a b c d a]
  | gis[ e a b c! a] fis8[ g8. b16~]
  | b[ b a gis a e] f!4.
  %25
  | e4 fis8 dis e4~
  | e16[ e] dis4 e8 s4
  | \stemUp a16[ g] a4~ \stemDown a8[ g16 fis g b]
  | \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.5)) Tie
    e4.~ e8[ d16 c b a]
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
  | c8 r16 dis8[ cis16] r d8[ b fis16]
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
  | fis[ e] fis4 g16\rest b[ fis d \bottom b \top a']
  | g16[ fis] g4 a16\rest c[ g e \bottom c \top b']
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
  | \stemDown c16[ b c a d b] s4.

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
  | e8[ fis gis] a[ a, a']
  %105

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

