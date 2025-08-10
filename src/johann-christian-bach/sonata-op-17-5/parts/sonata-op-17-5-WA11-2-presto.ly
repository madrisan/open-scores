Global = {
  \key a \major
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  %1
  \repeat volta 2 {
  | \tuplet 3/2 { r16 cis e } \tuplet 3/2 { r b e } \tuplet 3/2 { r a, e' }
  | \omit TupletNumber
    \tuplet 3/2 { r gis, e'  r fis, e'  r e, e' }
  | \tuplet 3/2 { r a, a'  r a, gis'  r a, fis' }
  | \tuplet 3/2 { r a, e'  r gis, d'  r a cis }
  %5
  | fis8~ \tuplet 3/2 { fis16[ a gis]  fis[ e d] }
  | e8~ \tuplet 3/2 { e16[ g fis]  e[ d cis] }
  | \tuplet 3/2 { d[ fis e]  d cis b  cis[ b a] }
  | \tuplet 3/2 { gis[ b a]  gis fis e  d[ cis b] }
  | \tuplet 3/2 { r16 cis' e } \tuplet 3/2 { r b e } \tuplet 3/2 { r a, e' }
  %10
  | \tuplet 3/2 { r gis, e'  r fis, e'  r e, e' }
  | \tuplet 3/2 { r a, a'  r a, gis'  r a, fis' }
  | \tuplet 3/2 { r a, e'  r gis, d'  r a cis }
  | fis8~ \tuplet 3/2 { fis16[ a gis]  fis[ e d] }
  | e8~ \tuplet 3/2 { e16[ g fis]  e[ d cis] }
  %15
  | \tuplet 3/2 { d[ fis e]  d cis b  cis[ b a] }
  | \tuplet 3/2 { gis[ e' b]  gis b gis  d[ b' d] }
  | cis8~ \tuplet 3/2 { cis16[ dis e]  fis gis a }
  | dis,8~ \tuplet 3/2 { dis16[ e fis]  gis a b }
  | e,8~ \tuplet 3/2 { e16[ fis gis]  a b cis }
  %20
  | b8~ \tuplet 3/2 { b16[ a gis]  a gis fis }
  | \tuplet 3/2 { gis[ b gis]  fis b fis  e[ b' e,] }
  | \tuplet 3/2 { dis[ b' dis,]  e b' e,  fis[ b fis] }
  | \tuplet 3/2 { g[ b g]  fis b fis  e[ b' e,] }
  | \tuplet 3/2 { dis[ b' fis]  dis fis dis  a[ gis! fis] }
  %25
  | gis8 fis e
  | dis e <fis b>
  | <b g> <fis b> <e b'>
  | <dis b'>4 \tuplet 3/2 { a'16[ gis fis] }
  | \tuplet 3/2 { gis[ a b]  a b cis  b[ cis d!] }
  %30
  | \tuplet 3/2 { cis[ dis e]  dis e fis  e[ b d] }
  | \tuplet 3/2 { cis[ b a] } gis8 fis\trill
  | \tuplet 3/2 { gis16[ a b]  a b cis  b[ cis d!] }
  | \tuplet 3/2 { cis[ dis e]  dis e fis  e[ b d] }
  | \tuplet 3/2 { cis[ b a] } gis8
    fis8*1/2\trill \magnifyMusic 0.66 { e32[ fis] }
  %35
  | e4 r16 b'
  | e16. dis32 e16 dis e fis
  | gis16. fis32 gis16 fis gis a
  | \tuplet 3/2 { b[ gis e]  gis e b  e[ b gis] }
  \repeat unfold 2 {
  | \tuplet 3/2 { cis[ b a]  gis b e,  fis[ a dis,] }
  | e4 r8
  }
  | \tuplet 3/2 { cis'16[ b a]  gis b e  fis,[ a dis] }
  | <gis, e'>8 e r
  }
  \break
  \repeat volta 2 {
  %45
  | e'4.
  | b'4 r32 a gis fis
  | e8 e e
  | e4.
  | \once\stemUp \acciaccatura b16 cis4.\trill^\markup\center-align\concat\vcenter {
      \teeny\sharp
    }
  %50
  | b4 \tuplet 3/2 { gis'16[ e b] }
  | b4 a8
  | \tuplet 3/2 { gis16[ b a]  gis fis e  b'[ gis e] }
  | fis8 gis a
  \repeat unfold 2 {
  | \tuplet 3/2 { gis16[ b dis]  e dis cis  b[ a gis] }
  | fis8 gis a
  }
  | \tuplet 3/2 { gis16[ dis' e]  a, dis e  b[ dis e] }
  | \tuplet 3/2 { cis[ dis e]  dis cis b  a[ gis fis] }
  %60
  | \tuplet 3/2 { gis[ b a]  gis fis e  d![ cis b] }
  | \tuplet 3/2 { r16 cis' e } \tuplet 3/2 { r b e } \tuplet 3/2 { r a, e' }
  | \tuplet 3/2 { r gis, e'  r fis, e'  r e, e' }
  | \tuplet 3/2 { r a, a'  r a, gis'  r a, fis' }
  | \tuplet 3/2 { r a, e'  r gis, d'  r a cis }
  %65
  | g'8~ \tuplet 3/2 { g16[ b a]  g fis e }
  | fis8~ \tuplet 3/2 { fis16[ a g]  fis e d }
  | \tuplet 3/2 { cis[ e d]  cis b a  g[ fis e] }
  | \tuplet 3/2 { fis[ a g]  fis e d  a'[ fis d] }
  | e'8~ \tuplet 3/2 { e16[ g fis]  e d cis }
  %70
  | d8~ \tuplet 3/2 { d16[ fis e]  d cis b }
  | \tuplet 3/2 { ais[ cis b]  ais gis fis  e![ d cis] }
  | \tuplet 3/2 { d[ fis e]  d cis b  fis'[ d b] }
  \repeat unfold 2 {
  | \tuplet 3/2 { r16 ais fis' } \tuplet 3/2 { r cis fis } \tuplet 3/2 { r d fis }
  | \tuplet 3/2 { r16 e fis } \tuplet 3/2 { r d fis } \tuplet 3/2 { r cis fis }
  %75
  | \tuplet 3/2 { r16 d fis } \tuplet 3/2 { r fis d' } \tuplet 3/2 { r fis, cis' }
  | \tuplet 3/2 { r16 fis, b } \tuplet 3/2 { r fis ais } \tuplet 3/2 { r fis b }
  }
  | d4 eis8\trill
  | fis cis r
  | cis4 dis8\trill
  | e b r
  %85
  | b4 cis8\trill
  | d8 a cis
  | b fis a
  | gis! d fis
  | e4.
  %90
  | \tuplet 3/2 { e16 gis a } \tuplet 3/2 { b[ gis e] } \tuplet 3/2 { dis fis e }
  | e4.
  | \tuplet 3/2 { e16 gis a } \tuplet 3/2 { b[ gis e] } \tuplet 3/2 { dis fis e }
  | e8 d cis
  | <a cis>4.
  %95
  | <gis b>8 r r
  | \tuplet 3/2 { r16 cis' e } \tuplet 3/2 { r b e } \tuplet 3/2 { r a, e' }
  | \tuplet 3/2 { r gis, e'  r fis, e'  r e, e' }
  | \tuplet 3/2 { r a, a'  r a, gis'  r a, fis' }
  | \tuplet 3/2 { r a, e'  r gis, d'  r a cis }
  %100
  | fis8~ \tuplet 3/2 { fis16[ a gis]  fis[ e d] }
  | e8~ \tuplet 3/2 { e16[ g fis]  e[ d cis] }
  | \tuplet 3/2 { d[ fis e]  d cis b  cis[ b a] }
  | \tuplet 3/2 { gis![ b a]  gis fis e  d[ cis b] }
  | \tuplet 3/2 { r16 cis' e } \tuplet 3/2 { r b e } \tuplet 3/2 { r a, e' }
  %105
  | \tuplet 3/2 { r gis, e'  r fis, e'  r e, e' }
  | \tuplet 3/2 { r a, a'  r a, gis'  r a, fis' }
  | \tuplet 3/2 { r a, e'  r gis, d'  r a cis }
  | fis8~ \tuplet 3/2 { fis16[ a gis]  fis[ e d] }
  | e8~ \tuplet 3/2 { e16[ g fis]  e[ d cis] }
  %110
  | \tuplet 3/2 { d[ fis e]  d cis b  cis[ b a] }
  | \tuplet 3/2 { gis[ e' b]  gis b gis  e[ b' d] }
  | \tuplet 3/2 { cis[ d e]  d e fis  e[ fis g!] }
  | \tuplet 3/2 { fis[ gis a]  gis a b  a[ e g!] }
  | \tuplet 3/2 { \once\stemUp \acciaccatura g16 fis[ e d] }
    cis8 b\trill
  %115
  | \tuplet 3/2 { cis16[ d e]  d e fis  e[ fis g!] }
  | \tuplet 3/2 { fis[ gis a]  gis a b  a[ e g!] }
  | \tuplet 3/2 { \once\stemUp \acciaccatura g16 fis[ e d] }
    cis8 b8*1/2\trill \magnifyMusic 0.66 { a32[ b] }
  | a4 r16 e
  | a16. gis32 a16 gis a b
  %120
  | cis16. b32 cis16 b cis d
  | \tuplet 3/2 { e[ a, cis]  e cis e  a[ e cis] }
  | \tuplet 3/2 { fis[ e d]  cis e a,  b[ d gis,] }
  | a4 r8
  | \tuplet 3/2 { fis'16[ e d]  cis e a,  b[ d gis,] }
  %120
  | a4 r8
  | \tuplet 3/2 { fis'16[ e d]  cis e a  b,[ d gis] }
  | <cis, a'>8 a r
  }
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s4.*88
  | e8 d cis
  %90
  | s4.
  | e8 d! cis

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  %1
  \repeat volta 2 {
  | a'8 gis fis
  | e d cis
  | fis e d
  | cis b a
  %5
  | \tuplet 3/2 { d,16[ fis a] } d4
  | \omit TupletNumber
    \tuplet 3/2 { cis,16[ e a] } cis4
  | b8 gis a
  | e4 gis8
  | <a, a'> gis'' fis
  %10
  | e d cis
  | fis e d
  | cis b a
  | \tuplet 3/2 { d,16 fis a } d4
  | \tuplet 3/2 { cis,16 e a } cis4
  %15
  | b8 gis a
  | e4 gis8
  | \tuplet 3/2 { a,16 cis e } a4
  | \tuplet 3/2 { b,16 dis fis } b4
  | \tuplet 3/2 { cis,16 e gis } cis4
  %20
  | \tuplet 3/2 { dis,16 fis b } dis4
  | e8 dis cis
  | b cis dis
  | e d c
  | b4 dis,8
  %25
  | \tuplet 3/2 { r16 e b'  r dis, b' r cis, b' }
  | \tuplet 3/2 { r16 b, b'  r cis, b' r dis, b' }
  | \tuplet 3/2 { r16 e, b'  r d, b' r c, b' }
  | \tuplet 3/2 { b,16[ dis fis] a[ fis dis] } b8
  \repeat unfold 2 {
  | \tuplet 3/2 { e16[ fis gis] fis gis a gis[ a b] }
  | \tuplet 3/2 { a[ b cis] fis,[ gis a] } gis8
  | a8 b b,
  }
  %35
  | \tuplet 3/2 { e16[ b gis] e[ gis b] } e8
  | r8 r16 b' cis dis
  | e16. dis32 e16 dis e fis
  | gis4 r8
  \repeat unfold 2 {
  | a, b b,
  | \tuplet 3/2 { gis16[ b e] b e gis e[ gis b] }
  }
  | a8 b b,
  | e4 r8
    \clef "treble"
  }
  \repeat volta 2 {
  %45
  | \repeat unfold 3 { \tuplet 3/2 { e'16[ gis b] } }
  | \repeat unfold 3 { \tuplet 3/2 { dis,[ fis b] } }
  | \repeat unfold 3 { \tuplet 3/2 { cis,[ e gis] } }
    \clef "bass"
  | \repeat unfold 3 { \tuplet 3/2 { gis,[ b e] } }
  | \repeat unfold 3 { \tuplet 3/2 { a,[ cis e] } }
  %50
  | \repeat unfold 3 { \tuplet 3/2 { gis,[ b e] } }
  | \repeat unfold 3 { \tuplet 3/2 { fis,[ a dis] } }
  | e,4 r8
  \repeat unfold 2 {
  | \repeat unfold 3 { \tuplet 3/2 { b16[ dis b'] } }
  | <b, e>4 r8
  }
  %57
  | \repeat unfold 3 { \tuplet 3/2 { b16[ dis b'] } }
  | e,8 fis gis
  | a16 ais b8[ b,]
  %60
  | e4 r8
  | <a, a'>[ gis'' fis]
  | e d cis
  | fis e d
  | cis b a
  %65
  | \tuplet 3/2 { cis,16[ e a] } cis4
  | \tuplet 3/2 { d,16[ fis a] } d8 gis,!
  | a8 cis, e
  | d d, r
  | \tuplet 3/2 { ais'16[ cis e] } ais4
  %70
  | \tuplet 3/2 { b,16[ d fis] } b8 eis,
  | fis8 fis, ais
  | b4 r8
  \repeat unfold 2 {
  | fis ais' b
  | cis b ais
  | b, b' cis
  | d e d
  }
  %81
  | \repeat unfold 2 { \tuplet 3/2 { b16[ d fis] } } \tuplet 3/2 { b,[ d gis] }
  | \repeat unfold 3 { \tuplet 3/2 { ais,[ cis fis] } }
  | \repeat unfold 2 { \tuplet 3/2 { a,[ cis fis] } } \tuplet 3/2 { a,[ c fis] }
  | \repeat unfold 3 { \tuplet 3/2 { gis,[ b e] } }
  %85
  | \repeat unfold 2 { \tuplet 3/2 { g,[ b e] } } \tuplet 3/2 { g,[ bes e] }
  | \repeat unfold 2 { \tuplet 3/2 { fis,[ a d] } } \tuplet 3/2 { e,[ g cis] }
  | \repeat unfold 2 { \tuplet 3/2 { d,[ fis b] } } \tuplet 3/2 { cis,[ e a] }
  | \repeat unfold 2 { \tuplet 3/2 { b,[ d gis] } } \tuplet 3/2 { a,[ cis fis] }
  \repeat unfold 2 {
  | \repeat unfold 2 { \tuplet 3/2 { gis,[ b e] } } \tuplet 3/2 { a,[ cis e] }
  | e,4 r8
  }
  | \repeat unfold 2 { \tuplet 3/2 { gis16[ b e] } } \tuplet 3/2 { a,[ cis e] }
  | e,4.~
  %95
  | e8 r r
  | <a a'>8 gis'' fis
  | e d cis
  | fis e d
  | cis b a
  %100
  | \tuplet 3/2 { d,16[ fis a] } d4
  | \tuplet 3/2 { cis,16[ e a] } cis4
  | b8 gis a
  | e4 gis8
  | <a,, a'>8 gis''' fis
  %105
  | e d cis
  | fis e d
  | cis b a
  | \tuplet 3/2 { d,16[ fis a] } d4
    \tuplet 3/2 { cis,16[ e a] } cis4
  | b8 gis a
  %110
  | e4 gis8
  \repeat unfold 2 {
  | \tuplet 3/2 { a16[ b cis] } \tuplet 3/2 { b[ cis d] } \tuplet 3/2 { cis[ d e] }
  | \tuplet 3/2 { d[ e fis] } \tuplet 3/2 { b,[ cis d] } cis8
  | d e e,
  }
  | \tuplet 3/2 { a,16[ cis e] } \tuplet 3/2 { a[ e cis] } a8
  | r8 r16 e' fis gis
  %120
  | a16. gis32 a16 gis a b
  | cis4 r8
  | d,8 e d
  | \tuplet 3/2 { cis16[ e a]  e[ a cis]  a[ cis e] }
  | d,8 e d
  %125
  | \tuplet 3/2 { cis16[ e a]  e[ a cis]  a[ cis e] }
  | d,8 e e
  | a,4 r8
  }
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
    composer = ##f % "Johann Christian Bach"
    opus = ##f % "W. A11"
    title = \markup { "Presto" }
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
    \tempo 4 = 96
  }
}
