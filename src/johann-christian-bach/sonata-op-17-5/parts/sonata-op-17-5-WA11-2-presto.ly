Global = {
  \key a \major
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
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
 %| e'4.
  | R1*3/8*83
  }
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
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
  | R1*3/8*83
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
    \tempo 4 = 100
  }
}
