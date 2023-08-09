Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | r16 b r g r d r b r \clef "bass"  g fis e
  | fis8[ a \clef "treble" d fis a d]
  | r16 g, r e r cis r a r \clef "bass" g fis e
  | d8[ fis a \clef "treble" d fis a]
  %5
  | r16 fis r d r b r g r \clef "bass" f e d
  | c8[ e g c e g]
  | r16 fis r d r a r fis r d[ c d]
  | g,8[ b d g fis c'] \clef "treble"
  | \tuplet 3/2 { b16[ a b] } \tuplet 3/2 { cis[ b cis] } \omit TupletNumber \tuplet 3/2 { d[ cis d] }
    \tuplet 3/2 { e[ d e] } \tuplet 3/2 { fis[ e fis] } \tuplet 3/2 { g[ fis g] }
  %10
  | \tuplet 3/2 { a[ g a] } \tuplet 3/2 { b[ a b] } \tuplet 3/2 { cis[ b cis] }
    \tuplet 3/2 { d[ cis d] } \tuplet 3/2 { e[ d e] } \tuplet 3/2 { fis[ e fis] }
  | g8 r \clef "bass" e,,4\mordent r8 \clef "treble" b''
  | g' r \clef "bass" cis,,,4\mordent r8 \clef "treble" g'''
  | \tuplet 3/2 { fis16[ a d,] } \tuplet 3/2 { e[ g cis,] } \tuplet 3/2 { d[ fis b,] }
    \tuplet 3/2 { c[ e a,] } \tuplet 3/2 { b[ d g,] } \tuplet 3/2 { a[ c fis,] }
  | g8[ \clef "bass" g, fis a fis d'] \clef "treble"
  %15
  | \tuplet 3/2 { cis16[ a b] } \tuplet 3/2 { cis[ d e] } fis8~
    \tuplet 3/2 { fis16[ e d] } b'8[ cis\turn]
  | \tuplet 3/2 { d16[ a fis] } \clef "bass" \tuplet 3/2 { d[ a fis] } d8 r r4 \clef "treble"
  }
  \repeat volta 2 {
  | r16 a''' r fis r d r a r fis r d \clef "bass"
  | r b r g r d r b r g[ a b]
  | c8[ g' c e a, \clef "treble" c'~]
  %20
  | \tuplet 3/2 { c16[ b ais] } \tuplet 3/2 { b[ cis dis] } \tuplet 3/2 { e[ dis cis] }
    \tuplet 3/2 { dis[ e fis] } \tuplet 3/2 { g[ fis e] } \tuplet 3/2 { fis[ g a] }
  | \tuplet 3/2 { b[ a g] } \tuplet 3/2 { a[ b c] } dis,8[ c' b d,~]
  | \tuplet 3/2 { d16[ cis dis] } \tuplet 3/2 { e[ fis g] } ais,8[ g' fis a,]
  | g[ dis \clef "bass" e8 c dis, \clef "treble" dis'']
  | e8[ e,] \tuplet 3/2 { r16 g[ b] }
    \tuplet 3/2 { e[ g dis] } \tuplet 3/2 { e[ b g] } \tuplet 3/2 { r gis[ f'] }
  %25
  | \tuplet 3/2 { e[ c a] } \tuplet 3/2 { r d,[ b'] } \tuplet 3/2 { r c,[ a'] }
    \tuplet 3/2 { r b,[ g'] }  \tuplet 3/2 { r c,[ a'] } \tuplet 3/2 { r fis[ es'] }
  | \tuplet 3/2 { d[ b g] } \tuplet 3/2 { r c,[ a'] } \tuplet 3/2 { r b,[ g'] }
    \tuplet 3/2 { r a,[ fis'] } \tuplet 3/2 { r b,[ g'] } \tuplet 3/2 { r e[ d'] }
  | \tuplet 3/2 { c[ a e } c8_.] c_.[c_. c_. c']
  | \tuplet 3/2 { c16[ a fis } d8_.] d_.[d_. d_. c']
  | \tuplet 3/2 { b16[ g d'] } \tuplet 3/2 { c[ a e'] } d8[ b, g f'']
  %30
  | \tuplet 3/2 { e16[ g c,] } \tuplet 3/2 { d[ f b,] } \tuplet 3/2 { c[ e a,] }
    \tuplet 3/2 { b[ d g,] } \tuplet 3/2 { a[ c fis,!] } \tuplet 3/2 { g[ b e,] }
  | \tuplet 3/2 { fis[ d e] } \tuplet 3/2 { fis[ g a] } b,8~
    \tuplet 3/2 { b16[ a g] } e'8[ fis \turn]
  | \tuplet 3/2 { g16[ d b] } \clef "bass" \tuplet 3/2 { g[ d b] } g8 r r4 \clef "treble"
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | \clef "treble" g8[ b d g b cis]
  | r16 d r a r fis r d r \clef "bass" a[ g fis]
  | e8[ g a cis e g]
  | r16 fis r d r a r fis r e[ d c]
  %5
  | b8[ d  g  b  d  f]
  | r16 e r c r g r e r c[ b a]
  | d8 fis a \clef "treble" d  fis a]
  | r16 b r g r d r b r a[ g fis]
  | g8 r b''4^\mordent r8 e,,
  %10
  | fis, r a''4^\mordent r8 d,,
  | \tuplet 3/2 { b'16[ c b] } \tuplet 3/2 { a[ b a] } \tuplet 3/2 { g[ a g] }
    \tuplet 3/2 { fis[ g fis] } \tuplet 3/2 { e[ fis e] } \tuplet 3/2 { d[ e d] } \clef "bass"
  | \tuplet 3/2 { cis[ d cis] } \tuplet 3/2 { b[ cis b] } \tuplet 3/2 { a[ b a] }
    \tuplet 3/2 { g[ a g] } \tuplet 3/2 { fis[ g fis] } \tuplet 3/2 { e[ fis e] }
  | d8[ a' fis' a, d, c'] \clef "treble"
  | \tuplet 3/2 { b16[ g d'] } \tuplet 3/2 { cis[ a e'] } \tuplet 3/2 { d[ b fis'] }
    \tuplet 3/2 { e[ cis! g'] } \tuplet 3/2 { fis[ d a'] } \tuplet 3/2 { g[ e b'] }
  %15
  | a8~[ \tuplet 3/2 {a16 b cis] } \tuplet 3/2 { d[ cis b }
    a8]~ \tuplet 3/2 {a16[g fis] } \tuplet 3/2 { e[fis g] }
  | fis8 r \tuplet 3/2 {r16 fis[a] } \tuplet 3/2 {d[fis a] } d8 r \clef "bass"
  }
  \repeat volta 2 {
  | d,,,8[ d, fis a d fis]
  | g8[ \clef "treble" b d g] b4~^\mordent
  | \undo\omit TupletNumber \tupletUp \tuplet 3/2 { b16[ e, dis] } \tuplet 3/2 { e[ fis g] }
    \omit TupletNumber \tuplet 3/2 { a[ g fis] }
    \tuplet 3/2 { g[ a b] } \tuplet 3/2 { c[ b a] } \tuplet 3/2 { g[ fis e] }
  %20
  | dis8~[ \tuplet 3/2 { dis16 e fis ] } \tuplet 3/2 { g[ fis e] }
    \tuplet 3/2 { fis[ g a] } \clef "bass" b,8[ a]
  | \tuplet 3/2 { g16[ fis e~] } \tuplet 3/2 { e[ dis e] } \tuplet 3/2 { f[ e f] }
    \tuplet 3/2 { fis[ e fis] } \tuplet 3/2 { g[ fis g] } \tuplet 3/2 { gis[ fis gis] }
  | a8~ \tuplet 3/2 { a16[  ais b] } \tuplet 3/2 { c[ b c] }
    \tuplet 3/2 { cis[ b cis] } \tuplet 3/2 { d[ cis d] } \tuplet 3/2 { dis[ cis dis] }
  | \clef "treble" \tuplet 3/2 { e[ dis e] } \tuplet 3/2 { fis[ e fis] } \tuplet 3/2 { g[ fis g] }
    \tuplet 3/2 { a[ g a] } \tuplet 3/2 { b[ a b] } \tuplet 3/2 { c[ b a] }
  | \tuplet 3/2 { g[ fis g] } \tuplet 3/2 { a[ g fis] } e4. \clef "bass" d,8
  %25
  | c8[ e'^. e^. e^. e^. c,]
  | b[ d'^. d^. d^. d^. b,]
  | a8 \tuplet 3/2 { r16 b'[ g'] } \tuplet 3/2 { r a,[ fis'] }
    \tuplet 3/2 { r g,[ e'] } \tuplet 3/2 { r fis,[ d'] } \tuplet 3/2 { r g,[ e'] }
  | d,8 \tuplet 3/2 { r16 \clef "treble" a'[ fis'] } \tuplet 3/2 { r b,[ g'] }
    \tuplet 3/2 { r c,[ a'] } \tuplet 3/2 { r b,[ g'] } \tuplet 3/2 { r a,[ fis'] }
  | g,8[ g'~] \tuplet 3/2 { g16[ b e,] }
    \tuplet 3/2 { f[ a d,] } \tuplet 3/2 { e[ g c,] } \tuplet 3/2 { d[ f b,] }
  | \tuplet 3/2 { c[ g e'] } \tuplet 3/2 { d[ b f'] } e8 g' c e,
  | d8~[ \tuplet 3/2 { d16 e fis] }] \tuplet 3/2 { g16[fis e }
    d8~] \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { a[b c] }
  | b8 r8 \tuplet 3/2 { r16 b,[ d] } \tuplet 3/2 { g[ b d] } g8 r
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
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 20 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
