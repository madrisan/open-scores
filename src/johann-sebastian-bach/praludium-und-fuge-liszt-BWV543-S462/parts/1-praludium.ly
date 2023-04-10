Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  | \stemDown r16 a[ c a]  e'[ a, c a] f'[ gis, b gis] e'[ g,! b g]
  | e'[ fis, a fis] \stemUp d'[ f,! a f] d'[ e, gis e] c'[ e, g! e]
  | c'[ dis, fis dis] b'[ d,! f! d] b'[ cis, e cis] a'[ c,! e c]
  | a'[ b, d b] gis'[ b, d b]
    \tuplet 3/2 { g'!16[ cis, d] } \tuplet 3/2 { e[ f g] }
    \omit TupletBracket \omit TupletNumber
    \tuplet 3/2 { f[ e d] } \tuplet 3/2 { cis[ b a] }
  %5
  | \tuplet 3/2 { d[ e f] } \tuplet 3/2 { e[ d c] } \tuplet 3/2 { b[ c d] } \tuplet 3/2 { c[ b a] }
    \tuplet 3/2 { gis[ a b] } \tuplet 3/2 { e,[ gis b] } \tuplet 3/2 { d[ c b] } \tuplet 3/2 { f'[ e d] }
  | \tuplet 3/2 { c[ a b] } \tuplet 3/2 { c[ d e] } \tuplet 3/2 { f[ e d] } \tuplet 3/2 { c[ b a] }
    gis[ f' b, f'] g,![ e' b e]
  | fis,[ e' a, e'] \clef bass \stemDown f,![ d' a d] e,[ d' gis, d'] e,[ c' g! c]
  | dis,[ c' fis, c'] d,![ b' f! b] cis,[ b' e, b'] c,![ a' e a]
  | b,[ a' d, a'] b,[ gis' d gis] \tuplet 3/2 { a,[ c e] } \tuplet 3/2 { b'[ gis! a] }
    \tuplet 3/2 { b,[ d e] } \tuplet 3/2 { b'[ gis a] }
  %10
  | \tuplet 3/2 { c,[ e a] } \stemUp \tuplet 3/2 { b[ gis a] }
    \stemDown \tuplet 3/2 { d,[ f a] } \stemUp \tuplet 3/2 { b[ gis a] }
    \stemDown \tuplet 3/2 { e[ a c] } \stemUp \tuplet 3/2 { b[ gis a] }
    \stemDown \tuplet 3/2 { f[ a d] } \stemUp \tuplet 3/2 { b[ gis a] }
  | \clef treble
    \override Beam.positions = #'(6 . 6)
    \tuplet 6/4 { \bottom d16\rest a[ c \top e gis a] }
    \tuplet 6/4 { \bottom e16\rest a,[ d \top f gis a] }
    \tuplet 6/4 { \bottom d,16\rest a[ c \top e gis a] }
    \tuplet 6/4 { \bottom d,16\rest gis,[ b \top f' e d] }
    \revert Beam.positions
  | \clef bass
    \stemDown \tuplet 3/2 { e,[ a c] } \stemUp \tuplet 3/2 { e[ gis, a] }
    \stemDown \tuplet 3/2 { f[ a d] } \stemUp \tuplet 3/2 { e[ gis, a] }
    \stemDown \tuplet 3/2 { e[ a c] } \stemUp \tuplet 3/2 { e[ gis, a] }
    \stemDown \tuplet 3/2 { d,[ gis b] } \stemUp \tuplet 3/2 { e[ gis, a] }
    \clef treble
  | \override Beam.positions = #'(5 . 5.3)
    \tuplet 6/4 { \bottom c16\rest e,[ a \top c d e] }
    \tuplet 6/4 { \bottom c16\rest f,[ a \top d e f] }
    \tuplet 6/4 { \bottom c16\rest e,[ a \top c d e] }
    \tuplet 6/4 { \bottom c16\rest d,[ gis \top b c d] }
    \revert Beam.positions
    \clef bass
  | \tuplet 3/2 { \bottom a,[ \top e' a] } \stemUp \tuplet 3/2 { c gis a }
    \tuplet 3/2 { \bottom b,[ \top e a] } \stemUp \tuplet 3/2 { d gis, a }
    \tuplet 3/2 { \bottom c,[ \top e a] } \stemUp \tuplet 3/2 { e' gis, a }
    \tuplet 3/2 { \bottom cis,[ \top e g!] } \stemUp \tuplet 3/2 { e' gis, a }
    \clef treble
  %15
  | \tuplet 6/4 { \bottom d16\rest f,[ a \top d e f] }
    \tuplet 6/4 { \bottom d16\rest e,[ a \top e' f g] }
    \tuplet 6/4 { \bottom d16\rest f,[ a \top d e f] }
    \tuplet 6/4 { \bottom d16\rest g,[ a \top cis d e] }
  | \stemDown \tuplet 3/2 { f,[ a d] } \stemUp \tuplet 3/2 { e[ cis d] }
    \stemDown \tuplet 3/2 { g,[ bes d] } \stemUp \tuplet 3/2 { e[ cis d] }
    \stemDown \tuplet 3/2 { a[ d f] } \stemUp \tuplet 3/2 { e[ cis d] }
    \stemDown \tuplet 3/2 { bes[ d g] } \stemUp \tuplet 3/2 { e[ cis d] }
  | \tuplet 6/4 { \bottom a'16\rest d,[ f \top a cis d] }
    \tuplet 6/4 { \bottom a16\rest d,[ g \top bes cis d] }
    \tuplet 6/4 { \bottom a16\rest d,[ f \top a cis d] }
    \tuplet 6/4 { \bottom a16\rest cis,[ e \top bes'! a g] }
  | \stemDown \tuplet 3/2 { a,[ d f] } \stemUp \tuplet 3/2 { a[ cis, d] }
    \stemDown \tuplet 3/2 { bes[ cis! d] } \stemUp \tuplet 3/2 { g[ cis, d] }
    \stemDown \tuplet 3/2 { a[ d f] } \stemUp \tuplet 3/2 { a[ cis, d] }
    \stemDown \tuplet 3/2 { g,[ cis e] } \stemUp \tuplet 3/2 { a[ cis, d] }
  | \tuplet 6/4 { \bottom f,[ a d \top f g a] }
    \tuplet 6/4 { \bottom g,[ cis e \top g a bes] }
    \tuplet 6/4 { \bottom f,[ a d \top f g a] }
    \tuplet 6/4 { \bottom e,[ g cis \top e f g] }
    \clef bass
  %20
  | \stemDown \tuplet 3/2 { d,[ a' d] } s8
    \tuplet 3/2 { e,16[ g bes] } s8
    \tuplet 3/2 { fis16[ a cis] } s8
    \tuplet 3/2 { gis16[ b! d] } s8
    \clef treble
  | \tuplet 6/4 { \bottom a16[ c! e \top a b c] }
    \tuplet 6/4 { \bottom gis,[ b e \top b' c d] }
    \tuplet 6/4 { \bottom a,[ c e \top a b c] }
    \tuplet 6/4 { \bottom b,[ d f \top gis a b] }
  | \stemUp c,32[ e fis gis a b c d] \stemDown e[ f! e d c b a gis]
    a[ b c d e fis gis a] b[ f! e d \bottom \clef treble gis, b c d]
  | \top \stemUp s2 <b d>32[ e <b d> e <b d> e <b d> e] <b d>32[ e <b d> e <b d> e <b d> e]
  | c2~ c4~ c8. d16
  %25
  | b4~ b16[ dis e8] r2
  | s1
  | s1
  | \stemUp\tieUp s2. r16 e[ f cis]
  | d2~ d2
  %30
  | r16 b,![ e b] gis'[ e b' gis] d'[ b f' d] b[ d gis, b]
  | \stemUp d,[ gis b, d] gis,[ b e, d'] c[ d c b] c[ e a gis!]
  | \stemDown a[ d c b] c[ e a gis] \stemUp a2~
  | a8[ a] a,32[ c b c fis, a g a] d,[ a' g a c a g a] fis[ a g a d, fis e fis]
  | a,[ c b c ees c b c] \clef bass \stemDown a[ c b c \bottom fis, a g a]
    d,[ fis a c \top ees d c b] a[ g fis e! \bottom e c b a]
  %35
  | \top r32 d[ e fis g a b c] \clef treble b[ g a b c d e fis]
    g[ g, b d g b d b] \stemUp g'8 f\rest
  | f16\rest c[ e c] g'[ g, c g] a[ d f d] a'[ a, d a]
  | b8[ <d g>] <e g>[ q] <a, e' f>[ <a d f>] <g d' f>[ q]
  | <g c e>16[ c e c] g'[ c, e c] f[ b,! d b] e[ a, c a]
  | d2 d2~
  %40
  | d16[ d c b] c4~ \once\override NoteColumn.force-hshift = #-1 c e\rest
  | f16\rest c[ b c] a[ a' a, c] <d, b'>8[ q] r4
  | f'16\rest bes,[ a bes] g[ g' g, bes] <c, a'>8[ q] r4
  | s1

  \fine
}

Alto = \context Voice = "Two" \relative c {
  \voiceTwo
  \override Rest.staff-position = #0
  \stemDown
  | s1*23
  %24
  | << {
      \stemDown e'2._~ e4_~
    } \\ {
      a2._~ a4_~
    } >>
  | << {
      \stemDown e2
    } \\ {
      \once\override NoteColumn.force-hshift = #1 a16[ a gis fis] gis[ fis gis dis]
    } >>
    e8 e8\rest e4\rest
  | s1*3
  | e16\rest a[ bes g] \stemUp a4^~ a2
  %30
  | s1*2
  | \stemDown s2 r16 d[ e b] c4~
  | c32[ c b c] r c[ b c] s2.
  | s1*2
  %36
  | e,2\rest c16\rest f[ a f] d'[ f, a f]
  | e16\rest g[ b g] c[ \bottom c, e c] a16\rest f[ a f] b[ b, d b]
  | \top c'16\rest e[ g e] bes'[ e, g e] a[ d, f d] g[ c, e c]
  | \stemUp \once\override Voice.Rest.X-offset = #1.5 b'16\rest a[ b a] a4
    \once\override NoteColumn.force-hshift = #0.9 gis8[ a] b4~
  %40
  | \once\override NoteColumn.force-hshift = #0.4 b4~
    \stemDown \once\override NoteColumn.force-hshift = #0.4 b16[ b a gis]
   \once\override NoteColumn.force-hshift = #-1.5 a4 f\rest
  | g16\rest a[ gis a] \bottom d,[ fis fis a] \top g!8[ g] s4
  | g16\rest g[ f! g] \bottom c,[ e e g] \top f8[ f] s4

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemDown
  | s1*10
  %11
  | \override Stem.length = #5
    e4 f e d
  | s1
  | c4 d c b
  | s1
  %15
  | d4 cis d e
  | s1
  | a4 bes a g
    \revert Stem.length
  | s1*2
  %20
  | \stemUp s8 \tuplet 3/2 { f'16[ cis d] }
    s8 \tuplet 3/2 { g16[ cis, d] }
    s8 \tuplet 3/2 { a'16[ cis, d] }
    s8 \tuplet 3/2 { b'16[ cis, d] }
  | s1*2
  | \top e32[ d! e fis gis a b c] d[ b a gis \bottom b, d e f!]
    f[ gis, f' gis, f' gis, f' gis,] f'[ gis, f' gis, f' gis, f' gis,]
  | a1
  %25
  | s2 s16 \stemUp e[ gis e] b'[ e, gis e]
  | c'[ dis, fis dis] b'[ d,! f! d] b'[ cis, e cis] a'[ c,! e c]
  | a'[ b, dis b] gis'[ b, d! b] g'![ cis, e a,] f'[ cis d gis,]
  | cis[ a e' cis] g'[ e bes' g] cis[ g a e] s4
  | \top s e'16\rest e[ f cis] << { \bottom r16 a[ bes g] a4 } \\ { \top d2 } >>
  %30
  | s1
  | s2 \bottom a,8[ e' a b]
  | c[ d e f] e2
  | \top d8 s s2.
  | s1*3
  %37
  | \once\override NoteColumn.force-hshift = #-1.2 d8 s s2.
  | s1
  | \top\tieDown fis4~ fis16[ fis g e] f!4 e~
  | e2~ e4 s

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  | R1*9
  %10
  | a,1~
  | a
  | a~
  | a
  | a~
  %15
  | a
  | a~
  | a
  | a~
  | a
  %20
  | a~
  | a
  | <a a'>~
  | \clef bass <a a'>~
  | \stemDown <a a'>16 <a a'>[ <c c'> <a a'>] <e' e'> <c c'>[ <e e'> <c c'>]
    <a' a'> <e e'>[ <a a'> <e e'>] <c' c'>[ <dis, dis'> <e e'>8]
  %25
  | \stemUp <e, e'>2 r16 \stemDown e'[ gis e] b'[ e, gis e]
  | c'[ dis, fis dis] b'[ d,! f! d] b'[ cis, e cis] a'[ c,! e c]
  | a'[ b, dis b] gis'[ b, d! b] g'![ cis, e a,] f'[ cis d gis,]
  | cis[ a e' cis] g'[ e bes' g] cis[ g a e] <f~ f'^~>4
  | <f f'>2~ <f f'>4~ <f f'>16[ <e e'> <f f'> <d d'>]
  %30
  | <gis~ gis'^~>1
  | q2 a~
  | a~ 4~ 16[ <g! g'!> <a a'> <e e'>]
  | <fis~ fis'^~>1
  | q
  %35
  | g2~ 4~ 16[ <g g'> <d d'> <g g'>]
  | <e e'>8[ q q q] <f f'>[ q q q]
  | <f f'>[ q] <e e'>[ e'] s16 d[ f d] g[ g, b g]
  | \stemUp <c, c'>4 r r2
  | \stemDown c'4 r r16 << { d[ f! d] gis[ gis, b gis] } \\ { b[ d b] e[ e, gis e] } >>
  %40
  | << { a2~ 16 } \\ { a2~ 16 } >> <a a'>[ <gis gis'> <a a'>] <e e'>[ <c' c'> <e, e'> <g! g'!>]
  | <fis fis'>8[ q]  r4 r16 <g g'>[ <f f'> <g g'>] <d d'>[ <b' b'> <d, d'> <f! f'!>]
  | <e e'>8[ q]  r4 r16 <f f'>[ <e e'> <f f'>] <c c'>[ <a' a'> <c, c'> <e e'>]
  | s1

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
    title = \markup { "Präludium" }
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
