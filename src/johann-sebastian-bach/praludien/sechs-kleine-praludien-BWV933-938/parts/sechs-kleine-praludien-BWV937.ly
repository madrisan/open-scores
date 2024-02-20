Global = {
  \key e \major
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | r8 b[ e b] \stemUp cis[ a fis b]
  | e,[ fis16 gis] a8 gis fis[ b a gis]
  | fis16[ b ais b] dis,[ b' ais b] e,[ b' cis b] ais![ gis fis e]
  | dis[ b' ais b] gis[ b fis b] e,[ b' dis, b'] cis,[ b' b, b']
  %5
  | ais8 \stemDown cis[ fis cis] dis[ bis gis fis']
  | e16[ a! gis a] fis[ a gis a] dis,[ a' b! a] gis[ fis e dis]
  | e8 b[ e b] \stemUp cis[ a fis b]
  | e,[ fis16 gis] a8[ gis] fis[ b a gis]
  | \stemNeutral fis[ e16 fis] gis8[ fis] e[ e'] dis16[ cis dis e]
  %10
  | fis[ e gis fis] e[ dis cis^\prall b] \stemUp b2
  }
  \repeat volta 2 {
  | r16 fis[ e fis] dis[ fis b gis] a![ fis e fis] dis[ fis a fis]
  | gis8[ fis16 gis] e8[ b'] gis[ b e, gis]
  | \stemNeutral a[ cis] a'4~ a16[ b, a b] gis'4~
  | gis8[ cis, fis cis] d![ b gis eis']
  %15
  | fis16[ cis b cis] a[ cis fis dis] e![ cis b cis] ais[ cis e cis]
  | dis8[ cis16 dis] b8[ fis'] dis[ fis b, dis]
  | e16[ b a! b] gis[ b d! b] cis[ a gis a] fis[ a cis a]
  | b[ gis fis gis] e[ gis b gis] a[ fis e fis] dis![ fis a fis]
  | gis8[ fis16 gis] a[ gis fis e] cis'8[ dis\turn] \stemUp e4~
  %20
  | e dis e2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \stemDown
  \repeat volta 2 {
  %1
  | s1*9
  %10
  | s2 \stemDown e16\rest fis[ dis b~] b4
  }
  \repeat volta 2 {
  | s1*8
  %19
  | s2. e'8[ b]
  %20
  | cis[ a] fis[ b] gis2
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | e16[ e' dis e] gis,[ e' dis e] a,[ e' fis e] dis[ cis b a]
  | e[ e' dis e] cis[ e b e] a,[ e' gis, e'] fis,[ e' e, e']
  | dis8 fis,[ b fis] gis[ e cis fis]
  | b,8[ cis16 dis] e8[ dis] cis[ fis e dis]
  %5
  | cis16[ fis e fis] dis[ fis e fis] bis,[ fis' gis fis] e[ dis cis bis]
  | cis8 e[ a! e] fis[ dis b! a']
  | gis16[ e dis e] cis[ e dis e] a,[ e' fis e] dis[ cis b a]
  | gis[ e' dis e] cis[ e b e] a,[ e' gis, e'] fis,[ e' e, e']
  | b[ dis cis dis] e[ b fis' b,] gis'[ b, ais' b,] b'8[ gis]
  %10
  | dis[ b fis' fis,] b4 b,
  }
  \repeat volta 2 {
  | b'8[ fis' b fis] dis[ fis b, dis]
  | e16[ b' a! b] gis[ b e cis] d![ b a b] gis[ b d b]
  | cis[ a gis a] fis[ a cis a] b[ gis fis gis] eis[ gis b gis]
  | a[ fis eis fis] d![ fis eis fis] b,[ fis' eis fis] cis[ cis' b cis]
  %15
  | a8 cis[ fis cis] ais[ cis fis, ais]
  | b16[ fis e! fis] dis[ fis b gis] a![ fis e fis] dis[ fis a fis]
  | gis8 b[ e gis,] a[ cis dis! fis,]
  | gis[ b cis e,] fis[ a b dis,]
  | e16[ b' e dis] cis[ b a gis] a[ gis fis a] gis[ e' dis e]
  %20
  | a,[ e' dis e] b8[ b,] e16[ e, gis b] e4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Sopran
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 937"
    title = \markup { "5. Kleines Präludium E-Dur" }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 120
  }
}
