Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | b8\rest g b'16[ a g fis] e[ d cis b]
  | a[ g fis8] a'16[ g fis e] d[ cis b a]
  | g[ fis e8] g'16[ fis e d] cis[ b a g]
  | fis[ e d8] b'8\rest b16\rest e,32[ fis] g[ a b cis d8~]
  %5
  | d8[ b,16 c] d[ e fis g] a[ b c d]
  | e8[ c,16 d] e[ fis g a] b[ c d e]
  | fis8[ d,16 e] fis[ g a b] c[ d e fis]
  | g8 b,\rest b16\rest fis'32[ e d c b a] g16 b\rest b8\rest
  | << { c'16\rest \stemUp b[ b] } \\ { c,16\rest \stemDown d[ d] } >> \stemNeutral r
    r32 g[ fis e d16] r r32 c[ b a g16] r
  %10
  | << { b'16\rest \stemUp a[ a] } \\ { b,16\rest \stemDown d[ d] } >> \stemNeutral r
    r32 d[ cis b a16] r r32 g[ fis e d16] r
  | << { a''16\rest \stemUp g[ g] } \\ { a,16\rest \stemDown b[ b] } >> \stemNeutral r
    r32 c![ b a g16] r r32 a[ g fis e16] r
  | << { a'16\rest \stemUp g[ g] } \\ { a,16\rest \stemDown a[ a] } >> \stemNeutral r
    r32 fis[ e d cis16] r r32 d[ cis b a16] r
  | r a'[ a' g] fis[ e d c] b[ a g fis]
  | b[ g fis e] d[ c b a] g[ b e d]
  %15
  | cis[ b a b] cis[ d e fis] g[ a b cis]
  | d[ cis32 b a g fis e] d8 r r4
  }
  \break
  \pageBreak
  \repeat volta 2 {
  | a''8\mordent r16 g \once\stemUp \grace g fis8 r16 e \once\stemUp \grace e d8 r16 c
  | b8\prallprall r16 a \grace a g8 b16\rest fis \grace fis e8 r16 d
  | c8 r16 \clef "bass" b \once\stemUp \grace b a8 r16 g \once\stemUp \grace g fis8 r16 e
  %20
  | \once\stemUp \grace e dis8 r16 fis a8 r16 c b8\prallprall r16 a
  | g8 d8\rest \clef "treble" b''16\rest dis16[ e fis] g[ gis a b]
  | c16[ a g f] e[ d c b] a[ g fis! e]
  | dis16[ c' b8] b32\rest b32[ cis dis e fis g16~] g[ fis e\prall dis]
  | e32[ c b a b] r r16 r32 fis[ e dis e] r32 r16 r32 \clef "bass" a,[ g fis g] r r16 \clef "treble"
  %25
  | \stemUp f''\rest e,[ f g] a[ b c d] e8 f\rest
  | f16\rest d[ c b] a[ g fis e] d8 f\rest \clef "bass"
  | d16\rest d d\rest b d\rest d d\rest b d\rest b d\rest g,
  | d'\rest g, d'\rest e, d'\rest g, d'\rest e, c'\rest e, a\rest c,
  | f\rest c f\rest a, e'\rest c f\rest e f\rest g c\rest b
  %30
  | e\rest d e\rest b e\rest d e\rest \clef "treble" fis r a r c
  | d\rest cis[ d e] fis[ g a b] c!8 b\rest
  | c16\rest b[ a g] fis[ e d c] b8 d\rest
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s2.*16
  }
  \repeat volta 2 {
  | s2.*8
  %25
  | c,16\rest c[ d e ] f! [ g a b ] c8 a\rest
  | g16\rest b[ a g ] fis [ e d c ] b8 a\rest \clef "bass"
  | r16 b r16 gis r b r g r g r e
  | r e r cis r e c\rest c c\rest c a\rest a
  | f\rest a f\rest fis e\rest a f\rest c' f,\rest e' c\rest g'
  %30
  | e\rest f d\rest d d\rest f d\rest \clef "treble" a' a\rest c a\rest e'
  | d\rest a'[ b cis] d[ e fis g] a8 d,\rest
  | r16 d[ c b] a[ g fis e] d8 d\rest
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s2.*16
  }
  \repeat volta 2 {
  | f,16\rest d d s s2
  | a'16\rest g g s s2
  | d''16\rest a a s s2
  %20
  | c'16\rest c c s s2
  | s2.*4
  %25
  | s4 d,,16\rest d c b a g fis e
  | s4 e16\rest c d e fis g a b
  | c8 c c c a a
  | fis fis fis fis d d
  | b b b d f a
  %30
  | \override Beam.positions = #'(6.5 . 3)
    c c c \clef "treble" e g b
    \revert Beam.positions
  | d16 e\rest e8\rest \clef "bass" e,16\rest e d c b a g fis
  | g b, c d e fis g a b8 b\rest
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | \clef "treble" g'8[ b'16 a] g[ fis e d] cis[ b a g]
  | fis8[ a'16 g] fis[ e d cis] b[ a g fis]
  | e8[ g'16 fis] e[ d cis b] a[ g fis e]
  | d8 r16 \clef "bass" c32[ b] a[ g fis e d8] d8\rest d16\rest c
  %5
  | b8 d8\rest \clef "treble" b'16[ c d e] fis[ g a b]
  | c16[ d e8] c,16[ d e fis] g[ a b c]
  | d16[ e fis8] d,16[ e fis g] a[ b c a]
  | b32[ g a b c d e fis] g16 d\rest d8\rest d16\rest fis,32[ e d c b a]
  | g8 b'16\rest a, b8^\mordent b'16\rest c, d8^\mordent b'16\rest e,
  %10
  | fis8^\mordent b16\rest g a8^\mordent b16\rest b cis8^\mordent b16\rest d
  | e8^\mordent b16\rest fis' g8^\mordent b,16\rest a' b8^\parenthesize\mordent b,16\rest d
  | cis8 b16\rest e g,8 b16\rest b a8^\mordent b16\rest g
  | fis8^\parenthesize\mordent b16\rest a, a'[ g fis e] d[ c b a]
  | g[ b d c] \clef "bass" b[ a g fis] e[ d cis b]
  %15
  | a[ e' g fis] e[ d cis b] a[ g fis e]
  | d4~ d16[ e32 fis g a b cis] d8 b\rest
  }
  \repeat volta 2 {
  | e,16\rest \stemDown d16[ d] r16 r32 e'[ fis g a16] r r32 a[ b c d16] r
  | g,,\rest g[ g] r r32 \clef "treble" d''[ e fis g16] r r32 fis[ g a b16] r
  | d,\rest e16[ e] r r32 b'[ c d e16] r r32 e[ fis g a16] r
  %20
  | r a[ a] r r32 b[ a g fis16] r r32 g[ fis e dis16] r
  | \stemNeutral r16 e d c b a g fis e d c b
  | a8 r r16 gis a b c cis dis e
  | fis8 \clef "bass" r16 a, g8 c a b
  | e,8 \clef "treble" r32 a'32[ g fis] g r32 r16 r32 \clef "bass" c,[ b a] b r32 r16 r32 f[ e d]
  %25
  | c8 r r16 \stemDown b'[ a g] fis![ e d c]
  | b8 g\rest f16\rest a16[ b c] d[ e fis g]
  | a8[ a a a fis fis]
  | d8[ d d d b b]
  | g8[ g g b d f]
  %30
  | e8[ e e g b d]
  | fis16 e16\rest e8\rest \clef "bass" r16 g,16[ fis e] d[ c b a]
  | g8[ a16 b] c[ d e fis] g8 r8
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 23 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
