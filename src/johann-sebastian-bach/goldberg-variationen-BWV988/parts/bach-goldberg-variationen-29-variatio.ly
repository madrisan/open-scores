Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'VariatioXXIX
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \repeat volta 2 {
  %1
  | e8\rest \repeat unfold 5 { e16\rest g, }
  | f'8\rest \repeat unfold 5 { a16\rest d, }
  | a'8\rest \repeat unfold 5 { c16\rest g }
  | fis16 b16\rest g8\rest \stemNeutral \tuplet 3/2 { b16\rest c[ b] }
    \tuplet 3/2 { c,[ b' a] } \omit TupletNumber \tuplet 3/2 { b,[ a' g] } \tuplet 3/2 { a,[ g' fis] }
  %5
  | \stemUp g8 \repeat unfold 4 { c16\rest g } c\rest f,
  | g8\rest \repeat unfold 5 { a16\rest e }
  | g8\rest \repeat unfold 4 { a16\rest d, } a'\rest c,!
  | b16 f'\rest f8\rest \stemNeutral
    \undo\omit TupletNumber \tuplet 3/2 { b,16\rest a[ b ] } \tuplet 3/2 { c[ b a] }
    \omit TupletNumber \tuplet 3/2 { b[ a g ]} \tuplet 3/2 { e'[ d c] }
  | \undo\omit TupletNumber \tupletUp \tuplet 3/2 { d r g, } \omit TupletNumber \tuplet 3/2 { fis[ c ] r }
    \tuplet 3/2 { r r g' } \tuplet 3/2 { a[ fis ] r }
    \tuplet 3/2 { r r b } \tuplet 3/2 { cis[ a] r }
  %10
  | \tuplet 3/2 { r r d } \tuplet 3/2 { cis[ g] r }
    \tuplet 3/2 { r r d' } \tuplet 3/2 { e[ cis!] r }
    \tuplet 3/2 { r r fis } \tuplet 3/2 { d[ b] r }
  | \tuplet 3/2 { r r c! } \tuplet 3/2 { b[ g] r }
   \tuplet 3/2 { r r a } \tuplet 3/2 { g[ e] r }
   \tuplet 3/2 { r r fis } \tuplet 3/2 { e[ cis] r }
  | \tuplet 3/2 { r r fis } \tuplet 3/2 { e[ cis ] r }
    \tuplet 3/2 { r r \clef "bass" d } \tuplet 3/2 { cis[ a] r }
    \tuplet 3/2 { r r b } \tuplet 3/2 { a[ fis] r }
  | \tuplet 3/2 { r r b } \tuplet 3/2 { a[ fis] r }
    \tuplet 3/2 { r r g } \tuplet 3/2 { fis[ d] r }
    \tuplet 3/2 { r r e } \tuplet 3/2 { d[ b] r }
  | \tuplet 3/2 { r r e } \tuplet 3/2 { d[ b] r }
    \tuplet 3/2 { r r c } \tuplet 3/2 { b[ g] r }
    \tuplet 3/2 { r r a } \tuplet 3/2 { fis[ e] r }
  %15
  | \tuplet 3/2 { r g'[ a] } \tuplet 3/2 { e'[ a, g] }
    \tuplet 3/2 { r fis[ a] } \tuplet 3/2 { d[ a fis] }
    \tuplet 3/2 { r e[ g] } \tuplet 3/2 { cis[ g e] }
  | \stemUp d'8\rest f16\rest d f\rest d f\rest d d4\rest
    \clef "treble"
  }
  \break
  \repeat volta 2 {
  | \stemNeutral
    \undo\omit TupletNumber\tupletUp \tuplet 3/2 { r16 r b'' } \omit TupletNumber  \tuplet 3/2 { a[ fis] r }
    \tuplet 3/2 { r r g } \tuplet 3/2 { fis[ d] r }
    \tuplet 3/2 { r r e } \tuplet 3/2 { d[ b] r }
  | \tuplet 3/2 { r r e } \tuplet 3/2 { d[ b] r }
    \tuplet 3/2 { r r c } \tuplet 3/2 { b[ g] r }
    \tuplet 3/2 { r r a } \tuplet 3/2 { g[ e] r }
  | \tuplet 3/2 { r r f } \tuplet 3/2 { e[ c] r }
    \tuplet 3/2 { r r \clef "bass" d } \tuplet 3/2 { c[ a] r }
    \tuplet 3/2 { r r b } \tuplet 3/2 { a[ fis] r }
  %20
  | \tuplet 3/2 { r r g } \tuplet 3/2 { fis[ dis] r }
    \tuplet 3/2 { r r e } \tuplet 3/2 { dis[ b] r }
    \tuplet 3/2 { r r c! } \tuplet 3/2 { b[ g] r } \clef "treble"
  | \stemUp g'''8\rest \repeat unfold 5 { b16\rest e, }
  | \stemUp g8\rest \repeat unfold 5 { b16\rest e, }
  | \stemNeutral \undo\omit TupletNumber
    \tuplet 3/2 { r16 fis[ g] } \tuplet 3/2 { a[b c~] }
    \omit TupletNumber
    \tuplet 3/2 { c[ b a] } \tuplet 3/2 { g[ fis e] }
    \tuplet 3/2 { dis[ c! b] } \tuplet 3/2 { a[g fis] }
  | \stemUp e[ e'] f\rest e f\rest c f\rest c f\rest g, f'\rest g, \clef "bass"
  %25
  | \stemNeutral
    \undo\omit TupletNumber \tuplet 3/2 { r e,[ f] } \tuplet 3/2 { fis[ g gis] }
    \omit TupletNumber \tuplet 3/2 { r b[ c] } \tuplet 3/2 { d c b ] } \clef "treble"
    \tuplet 3/2 { c[ d e] } \tuplet 3/2 { fis[ g a] } \clef "bass"
  | \tuplet 3/2 { r d,,[ es] } \tuplet 3/2 { e[ f fis] }
    \tuplet 3/2 { r a[ b] } \tuplet 3/2 { c[ b a] } \clef "treble"
    \tuplet 3/2 { b[ c d] } \tuplet 3/2 { e[ fis g] }
  | \tuplet 3/2 { c, r f } \tuplet 3/2 { e[c] r }
    \tuplet 3/2 { r r \clef "bass" d } \tuplet 3/2 { c[ a] r }
    \tuplet 3/2 { r r b } \tuplet 3/2 { a[ fis!] r } \clef "treble"
  | \tuplet 3/2 { r r b' } \tuplet 3/2 { a[ fis] r }
    \tuplet 3/2 { r r g } \tuplet 3/2 { fis[ d] r }
    \tuplet 3/2 { r r e } \tuplet 3/2 { d[ b] r }
  | \tuplet 3/2 { r r e' } \tuplet 3/2 { d[ b] r }
    \tuplet 3/2 { r r c } \tuplet 3/2 { b[ g] r }
    \tuplet 3/2 { r r a } \tuplet 3/2 { g[ e] r }
  %30
  | \tuplet 3/2 { r r a' } \tuplet 3/2 { g[ e] r }
    \tuplet 3/2 { r r f } \tuplet 3/2 { e[ c] r }
    \tuplet 3/2 { r r d } \tuplet 3/2 { c[ a] r }
  | \tuplet 3/2 { r a [ b] } \tuplet 3/2 { c[ d e~] }
    \tuplet 3/2 { e[ d c] } \tuplet 3/2 { b[ a g~] }
    \tuplet 3/2 { g[ fis g] } \tuplet 3/2 { a[ b c] }
  | \once\stemUp \grace c8 b \stemUp c'16\rest g c\rest g c\rest g b4\rest
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | d8\rest \repeat unfold 5 { d16\rest <b d> }
  | g'8\rest \repeat unfold 5 { g16\rest <fis a> }
  | g8\rest \repeat unfold 4 { g16\rest <b e> } g\rest <cis e>
  | <a d> a\rest a8\rest s2
  %5
  | <b d>8 \repeat unfold 5 { g16\rest <b d> }
  | g8\rest \repeat unfold 5 { g16\rest <g c> }
  | g8\rest \repeat unfold 5 { g16\rest <fis a> }
  | <d g>16 e\rest e8\rest s2
  | s2.*7
  %16
  | b,8\rest \repeat unfold 3 { c16\rest <d fis> } c4\rest
  }
  \repeat volta 2 {
  | s2.*4
  %21
  | g''8\rest \repeat unfold 5 { g16\rest <g b> }
  | g8\rest \repeat unfold 5 { g16\rest <g b> }
  | s2.
  | s16 <g b> f\rest <g b> f\rest <e g> f\rest <e g> f\rest <b, e> f'\rest <b, e>
  %25
  | s2.*7
  | s8  \repeat unfold 3 { b'16\rest <b d> } b4\rest
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g8[ g,] \clef "treble" \repeat unfold 4 { fis''16 d'\rest } \clef "bass"
  | fis,,8[ fis,] \clef "treble" \repeat unfold 4 { cis'''16 f\rest } \clef "bass"
  | e,,8[ e,] \clef "treble" \repeat unfold 2 { fis'''16 b\rest e, b'\rest } \clef "bass"
  | s2.
  %5
  | s4 \repeat unfold 3 { fis16 a\rest } d, a'\rest
  | s4 \repeat unfold 3 { d,16 g\rest } c, g'\rest
  | s4 \repeat unfold 3 { cis,16 g'\rest } a, g'\rest
  | s2.*8
  %16
  | s4 cis,,16 d\rest cis d\rest s4
  }
  \repeat volta 2 {
  | s2.*4
  %21
  | s4 dis'16 g\rest dis g\rest g, g'\rest dis g\rest
  | s4 dis16 g\rest dis g\rest b, g'\rest dis g\rest
  | s2.
  | s8 dis16 e\rest b e\rest b e\rest fis, d'\rest fis, d'\rest
  %25
  | s2.*7
  | s4 fis16 a\rest fis a\rest s4
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s4 \clef "treble" \repeat unfold 4 { <a' c>16 d\rest } \clef "bass"
  | s4 \clef "treble" \repeat unfold 4 { <e g>16 d\rest } \clef "bass"
  | s4 \clef "treble" \repeat unfold 2 { <a' d>16 g\rest <g cis> g\rest } \clef "bass"
  | r d[ a fis] d16.[ d'32 e,16. c'32] d,16.[ b'32 c,16. a'32]
  %5
  | b,8[b'] \clef "treble" \repeat unfold 3 { <a' c>16 g\rest } <g b> g\rest \clef "bass"
  | c,,8[c'] \clef "treble" \repeat unfold 3 { <f b>16 g\rest } <e a> g\rest \clef "bass"
  | d,8[d'] \clef "treble" \repeat unfold 3 { <e g>16 g\rest } <d fis> g\rest \clef "bass"
  | \stemNeutral d,16\rest g[ d b] g16.[ g'32 fis16. d'32] g,16.[ e'32 a,16. fis'32]
  | \omit TupletBracket \omit TupletNumber
    \tuplet 3/2 { b,16[ d] r } \tuplet 3/2 { r r a }
    \tuplet 3/2 { b[ d] r } \tuplet 3/2 { r r \clef "treble" c }
    \tuplet 3/2 { d[ g] r } \tuplet 3/2 { r r e }
  %10
  | \tuplet 3/2 { fis[ a] r } \tuplet 3/2 { r r e }
    \tuplet 3/2 { fis[ a] r } \tuplet 3/2 { r r \clef "treble" g }
    \tuplet 3/2 { a[ d] r } \tuplet 3/2 { r r a }
  | \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r fis }
    \tuplet 3/2 { e[ g] r } \tuplet 3/2 { r r \clef "treble" d }
    \tuplet 3/2 { cis[ e] r } \tuplet 3/2 { r r \clef "bass" b }
  | \tuplet 3/2 { a[ cis] r } \tuplet 3/2 { r r b }
    \tuplet 3/2 { a[ cis] r } \tuplet 3/2 { r r g }
    \tuplet 3/2 { fis[ a] r } \tuplet 3/2 { r r e }
  | \tuplet 3/2 { d[ fis] r } \tuplet 3/2 { r r e }
    \tuplet 3/2 { d[ fis] r } \tuplet 3/2 { r r c! }
    \tuplet 3/2 { b[ d] r } \tuplet 3/2 { r r a }
  | \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r a }
    \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r fis }
    \tuplet 3/2 { e[ g] r } \tuplet 3/2 { r r d }
  %15
  | cis8[ cis'] d[ fis,] g[ a]
  | d,[ d'] <e g>16 c\rest q c\rest d,4
  }
  \repeat volta 2 {
  | \clef "treble" \tuplet 3/2 { d'''16[ fis] r } \tuplet 3/2 { r r e }
    \tuplet 3/2 { d[ fis] r } \tuplet 3/2 { r r c! }
    \tuplet 3/2 { b[ d ] r } \tuplet 3/2 { r r a }
  | \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r a }
    \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r fis }
    \tuplet 3/2 { e[ g] r } \tuplet 3/2 { r r d }
  | \tuplet 3/2 { c[ e] r } \clef "bass" \tuplet 3/2 { r r b }
    \tuplet 3/2 { a[ c] r } \tuplet 3/2 { r r g }
    \tuplet 3/2 { fis[ a] r } \tuplet 3/2 { r r e }
  | \tuplet 3/2 { dis[ fis] r } \tuplet 3/2 { r r cis }
    \tuplet 3/2 { b[ dis] r } \tuplet 3/2 { r r a }
    \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r fis }
  %21
  | e8[e'] \clef "treble"
    \stemDown \repeat unfold 2 { <fis' a>16 e\rest } g, e'\rest <fis a> e\rest \clef "bass"
  | c,8[c'] \clef "treble"
    \stemDown \repeat unfold 2 { <fis a>16 e\rest } b e\rest <fis a> e\rest \clef "bass"
  | a,8[ dis,] e[ a] b[ b,]
  | \autoBeamOff
    e8 \clef "treble"
    <fis' a>16 e\rest <dis fis> e\rest <dis fis> e\rest <a, dis> c\rest <a dis> c\rest \clef "bass"
  %25
  | c,8[ b'] a[ gis] a[ c,]
  | b[ a'] g[ fis] g[ b,]
  | \stemNeutral \tuplet 3/2 { a16[ a'] r } \tuplet 3/2 { r r b }
    \tuplet 3/2 { a[ c] r } \tuplet 3/2 { r r g }
    \tuplet 3/2 { fis[ a] r } \tuplet 3/2 { r r e }
  | \tuplet 3/2 { d[ d'] r } \tuplet 3/2 { r r e }
    \tuplet 3/2 { d[ fis] r } \tuplet 3/2 { r r c }
    \tuplet 3/2 { b[ d] r } \tuplet 3/2 { r r a }
  | \tuplet 3/2 { g[ g'] r } \clef "treble" \tuplet 3/2 { r r a }
    \tuplet 3/2 { g[ b] r } \tuplet 3/2 { r r f }
    \tuplet 3/2 { e[ g] r } \tuplet 3/2 { r r d }
  %30
  | \tuplet 3/2 { c[ c'] r } \tuplet 3/2 { r r d }
    \tuplet 3/2 { c[ e] r } \tuplet 3/2 { r r b }
    \tuplet 3/2 { a[ c] r } \tuplet 3/2 { r r g }
  | fis8[ \clef "bass" a,] b[ c] d[ d,]
  | g[ g,] \clef "treble" \stemDown <a'' c>16 g\rest q g\rest \clef "bass" g,4 \clef "treble"
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 29 a 1 ovvero 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
