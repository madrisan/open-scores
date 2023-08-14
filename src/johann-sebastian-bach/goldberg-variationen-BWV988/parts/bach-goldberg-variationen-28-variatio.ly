Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b'16 d\rest c8\rest d16 d\rest c8\rest g16 d'\rest c8\rest
  | a16 d\rest c8\rest d16 d\rest c8\rest fis,16 d'\rest c8\rest
  | g16 d'\rest c8\rest b16 d\rest c8\rest a16 d\rest c8\rest
  | fis,16 d'\rest c8\rest cis16 d\rest c8\rest d16 d\rest c8\rest
  %5
  | g[ g,,] a[ e''] f[ d]
  | e[ a,,] b[ fis''] s a
  | b[ \clef "bass" a,,] b[ e,] fis a\rest
  | d\rest \clef "treble" c'' b[ a]
    << { g fis } \\ { s \once\override NoteColumn.force-hshift = #0.5 a, } >>
  | << {
      \override Beam.positions = #'(7.2 . 6)
      b'16[ g fis g ]
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0.8 <d g>16 s8.
    } >>
    \stemNeutral e16[ b a b] g[ b e g]
  %10
  | a[ fis e fis] d[ a g a] fis[ a d fis]
  | g[ e dis e] b[ g fis g] e[ g b d]
  | cis[ g fis g] e[ cis b cis] a[ cis e g]
  | \stemUp fis16 d'\rest d8\rest g,16 d'\rest d8\rest a16 d\rest d8\rest
  | b16 d\rest d8\rest a16 d\rest d8\rest g,16 d'\rest d8\rest
  %15
  | a16 d\rest d8\rest b16 d\rest d8\rest a16 d\rest d8\rest
  | fis,16[ d cis d] \clef "bass" a[ fis e fis] d4 \clef "treble"
  }
  \break
  \repeat volta 2 {
  | \stemNeutral fis'16[ a g a] d[ fis e fis] a[ fis c a]
  | b[ d c d] g[ b a b] d[ b f d]
  | e8[ b] c[ dis,] e[ g,]
  %20
  | fis[ e''] dis16[ fis e fis] a[ fis dis fis]
  | \stemUp
    \repeat unfold 3 { c'32\rest g[ a g a g a g] }
  | \repeat unfold 3 { c32\rest g[ a g a g a g] }
  | \repeat unfold 2 { c32\rest g[ a g a g a g] } c32\rest fis,[ g fis g fis g fis]
  | \stemNeutral
    e16[ g, fis g] b[ e dis e] g32[ (f e16) f32( e d16)]
  %25
  | e8[ e,] dis[ d] cis[ e']
  | d[ d,] cis[ c] b[ d']
  | \stemUp
    \repeat unfold 3 { f32\rest c[ d c d c d c] }
  | \repeat unfold 3 { f32\rest c[ d c d c d c] }
  | b16 g'\rest g8\rest c,16 g'\rest g8\rest d16 g\rest g8\rest
  %30
  | \stemNeutral e,[ e'] f[ fis] g[ gis]
  | a16[ fis, e fis] g![ b a b] c[ a fis d]
  | g[ b a b] d[ g fis g] b4
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
  | \repeat unfold 3 { g'32\rest d'[ e d e d e d] }
  | \repeat unfold 3 { g,\rest d'[ e d e d e d] }
  | \repeat unfold 2 { g,\rest d'[ e d e d e d] } g,\rest cis[ d cis d cis d cis]
  | \repeat unfold 3 { g\rest d'[ e d e d e d] }
  %5
  | s2 s8 b
  | c s4. g'8[ cis,]
  | d \clef "bass" fis,, g[ cis,] d[ d,]
  | g[ e'''] d[ c] b[ c]
  | b16 s8. s2
  %10
  | s2.*3
  | \repeat unfold 3 { g,32\rest d'[ e d e d e d] }
  | \repeat unfold 3 { g,32\rest d'[ e d e d e d] }
  %15
  | \repeat unfold 2 { a32\rest d[ e d e d e d] } a32\rest cis[ d cis d cis d cis]
  | s2.
  }
  \repeat volta 2 {
  | s2.*4
  %21
  | b'16 g\rest g8\rest cis16 g\rest g8\rest dis'16 g,\rest g8\rest
  | e'16 g,\rest g8\rest dis'16 g,\rest g8\rest e'16 g,\rest g8\rest
  | cis16 g\rest g8\rest b16 g\rest g8\rest a16 g\rest g8\rest
  | s2.*3
  %27
  | e16 e\rest e8\rest d16 e\rest e8\rest e16 e\rest e8\rest
  | fis16 e\rest e8\rest e16 e\rest e8\rest fis16 e\rest e8\rest
  | d32\rest g[ a g a g a g] d32\rest fis[ g fis g fis g fis] d32\rest f[ g f g f g f]
  %30
  | s2.*3
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s2.*4
  %5
  | \repeat unfold 3 { d'32\rest g,[ a g a g a g] }
  | \repeat unfold 3 { d'32\rest g,[ a g a g a g] }
  | \repeat unfold 2 { d'32\rest g,[ a g a g a g] } d'32\rest fis,[ g fis g fis g fis]
  | \repeat unfold 3 { d'32\rest g,[ a g a g a g] }
  | s2.*4
  %13
  | \repeat unfold 3 { c,32\rest fis,[ g fis g fis g fis] }
  | \repeat unfold 3 { c'32\rest fis,[ g fis g fis g fis] }
  | \repeat unfold 2 { c'32\rest fis,[ g fis g fis g fis] } c'32\rest e,[ fis e fis e fis e]
  | s2.
  }
  \repeat volta 2 {
  | s2.*4
  %21
  | \repeat unfold 3 { b''32\rest e,[ fis e fis e fis e] }
  | \repeat unfold 3 { b'32\rest e,[ fis e fis e fis e] }
  | \repeat unfold 2 { b'32\rest e,[ fis e fis e fis e] } b'32\rest dis,[ e dis e dis e dis]
  | s2.
  %25
  | \repeat unfold 3 { d'32\rest g,[ a g a g a g] }
  | \repeat unfold 3 { d'32\rest g,[ a g a g a g] }
  | s2.*3
  %30
  | e32\rest c[ d c d c d c] e\rest b[ c b c b c b] e\rest bes[ c bes c bes c bes]
  | s2.*2
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g8[ b'] a[ fis,] e[ g']
  | fis,[ a'] g[ e,] d[ fis']
  | e,[ g'] fis[ g,] a[ e']
  | d,[ fis'] e[ g,] fis[ c'] \clef "treble"
  %5
  | b16 c\rest b8\rest c16 c\rest b8\rest d16 c\rest b8\rest
  | c16 c\rest b8\rest d16 c\rest b8\rest e16 c\rest b8\rest
  | d16 c\rest b8\rest e16 c\rest b8\rest a16 c\rest b8\rest
  | b16 c\rest b8\rest c16 c\rest b8\rest d16 c\rest b8\rest
  | g16[ b a b] e[ g fis g] b[ g e cis]
  %10
  | fis,[ a g a] d[ fis e fis] a[ fis d b]
  | e,[ g fis g] b[ e dis e] g[ e b g]
  | a[ e' d e] g[ a g a] g[ e cis a] \clef "bass"
  | d,16 a\rest g8\rest b16 a\rest g8\rest a16 a\rest g8\rest
  | g16 a\rest g8\rest a16 a\rest g8\rest b16 a\rest g8\rest
  %15
  | a16 a\rest g8\rest g16 a\rest g8\rest a16 a\rest g8\rest
  | \stemNeutral d16[ fis e fis] a[ d cis d] fis4
  }
  \repeat volta 2 {
  | d'8[ e,] fis[ c'] d,[ \clef "treble" fis']
  | g[ a,] b[ f'] g,[ b']
  | c16[ g f g] e[ c b c] a[ c e a]
  %20
  | dis,[b ais b] \clef "bass" fis[ dis cis dis] b[ dis fis a] \clef "treble"
  | \stemDown
    g16 a\rest a8\rest a16 a\rest g8\rest b16 a\rest g8\rest
  | c16 a\rest a8\rest b16 a\rest g8\rest c16 a\rest g8\rest
  | ais16 a\rest a8\rest b16 a\rest g8\rest b16 a\rest g8\rest
  | \stemNeutral e16[ e' dis e] b[ g fis g] e[ g b d]
  %25
  | \stemDown
    c16 a\rest a8\rest b16 a\rest g8\rest a16 a\rest g8\rest
  | b16 a\rest a8\rest a16 a\rest g8\rest g16 a\rest g8\rest
  | \stemNeutral a8 [ e''] f[ fis] g[ \clef "bass" a,,]
  | d,[ \clef "treble" fis''] g[ gis] a[ \clef "bass" d,,]
  | g,[ g,] as[ a] bes[ b]
  %30
  | \stemDown c16 b\rest b8\rest d16 b\rest b8\rest e16 b\rest b8\rest
  | fis'16[ d' c d ] b[ g fis g] d[ fis a c]
  | \stemNeutral b[ g fis g] d[ b a b ] g4
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
    title = \markup { \smallCaps "Variatio 28 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override StaffGrouper.staff-staff-spacing.padding = #3
      \override StaffGrouper.staff-staff-spacing.basic-distance = #2
    }
  }
  \midi { \tempo 4=100 }
}
