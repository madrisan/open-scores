Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

staffLower = \change Staff = "lower"
staffUpper = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \stemNeutral\tieNeutral
    r8 g16[ fis] g8[ a16 b] c[ b a g]
  | d'[ a b cis] d[ e fis g] a8 r
  | r g16[ fis] e[ d cis b] a[ g fis g]
  | g8[( fis16^\prall) e] d8 r b'4\rest
  %5
  | \stemUp\tieUp
    f'16\rest d8.~ d16[ b a g] f[ e d f]
  | e[ g c d] e8 a,4 a8^~
  | a16[ b fis g] a[ g fis e'] d[ c b a]
  | g4 r4 r
  | r16 fis[ g a] b[ cis d fis] e[ d cis b]
  %10
  | a[ g fis e] d8 r r4
  | r8 cis'~ cis16[ b a b] cis[ d e fis]
  | \stemDown g8[ g,16 fis] \stemUp g4~ g16[ b a g]
  | fis[ e fis g] fis[ a g fis] e4~
  | e8[ d' cis b] a[ fis']
  %15
  | g,4. fis8 e16[ a g8~]
  | g8[ fis16 e] fis[ d'8 cis16] d8 r
  }
  \break
  \pageBreak
  \repeat volta 2 {
  | \stemNeutral s2.
  | r8 g,16[ fis] g8[ a16 b] c[ b a g]
  | g'4~ g16[ fis! a g] fis[ g e8]
  %20
  | \once\stemUp\grace e16 fis8~[ fis32 eis fis g!] fis8[ a,] r fis'
  | g16[ fis g a] g[ fis e d] c[ b a g]
  | fis2.~
  | fis8[ fis16 g] fis8[ fis] fis[ g16 a]
  | g4 d'\rest e,~
  %25
  | e16[ fis g e] fis[ g gis a] b[ c d e]
  | \stemUp d8 f\rest f4\rest f\rest
  | b,16\rest c,[ d e] d[ es fis! g] fis[ g a b]
  | a2.~
  | a8[ d, e fis] \stemNeutral g16[ b a c]
  %30
  | b8[ a b c] d8.^\mordent[ e16]
  | d4~ d16[ b c d] e[ fis g a]
  | b[ g d b] g8 r8 r4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s2.
  | d8\rest d16[ e] d8[ c!16 b] a[ b c d]
  | g,16[ c b a] g[ fis e d] cis8 c\rest
  | a'\rest d,16[ e] fis[ g \staffUpper\stemDown a b] c[ d e d]
  %5
  | d8[( e16) fis] g8 c,\rest a4\rest
  | \staffLower\stemUp b16\rest g8.~ g16[ b c d] \staffUpper\stemDown e[ fis g e]
  | fis16[ d \staffLower\stemUp a g] fis8 c'4  c8~
  | c16[ b \staffUpper\stemDown e d] c[ d e \staffLower\stemUp fis,] g[ a b c]
  | d4 d\rest e\rest
  %10
  | \staffUpper\stemDown c16\rest e[ d cis] b[ \staffLower\stemUp a g e] fis[ g a b]
  | \staffUpper\stemDown cis[ d e fis] g8 c,\rest c4\rest
  | \staffLower\stemUp a8\rest a~ a16[ \staffUpper\stemDown b cis b] a[ \staffLower\stemUp g fis e]
  | d8[ \staffUpper\stemDown\tieDown d'16 e] d4~ d16[ b cis d]
  | e[ fis e d] e[ cis d e] fis4~
  %15
  | fis8[ g, a b] cis[ \staffLower\stemUp e,]
  | \staffUpper\stemDown d'4. e8 fis16[ cis d8]
  }
  \repeat volta 2 {
  | \staffLower\stemUp\tieUp d8\rest d16[ e] d8[ c!16 b] a[ b c d]
  | d,4~ d16[ e c d] e[ d f8]
  | \grace f16 e8~[ e32 f! e dis] e8[ c'] a8\rest e8
  %20
  | dis16[ e dis cis] dis[ e fis g] a[ b cis dis]
  | e2.~
  | e8[ \staffUpper\stemDown\tieDown e16 dis] e8[ e] e[ dis16 cis]
  | dis4 a\rest fis'~
  | fis16[ e dis fis] e[ d cis c] b[ \staffLower\stemUp a g fis]
  %25
  | g8 g'\rest c,4\rest c\rest
  | \staffUpper\stemDown e16\rest a[ gis fis] gis[ f e d] e[ d c b]
  | c2.~
  | c8[ g' fis e] d16[ b c a]
  | b8[ c b \staffLower\stemUp\tieUp a] g8.^\prallprall[ fis16]
  %30
  | g4~ g16[ b a g] fis[ e d c]
  | b[ d g b] d8[ g,~] g16[ a fis8]
  | g4 d'\rest d\rest
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g4 g g
  | fis fis fis
  | e e e
  | d16[ d, d'8] b\rest c16[ b a8 c]
  %5
  | \stemUp b4 b b
  | \stemDown c c c
  | d d d
  | g8.[ b,16] e[ d c e] d[ c b a]
  | b8[ g] d'\rest g16[ fis g8 e]
  %10
  | fis[ b] d,\rest b16[ cis d8 b]
  | e16[ fis g fis] e8[ fis e d]
  | cis16[ d e d] cis8[ e] cis[ a]
  | d4 d16\rest d[ e fis] g[ a g fis]
  | g8[ g,] d'16\rest e[ fis g] a[ fis e d]
  %15
  | b'[ b, e d] cis[ a d g] a[ e cis a]
  | \stemNeutral d[ e d cis] d8[ a] d, d'\rest
  }
  \repeat volta 2 {
  | \stemDown d4 d c
  | b8[ c b a] g[ a16 b]
  | c8[ b] c[ e] a,[ c]
  %20
  | b4 f\rest f\rest
  | b8\rest e[ fis g a b]
  | c16[ d c b] c[ b a g] a[ fis g a]
  | b[ c b a] b[ fis dis fis] b,[ dis cis  b]
  | e[ c b a] g[ b e dis] e8[ d]
  %25
  | c[ c'] d,16\rest e[ d c] d[ c b a]
  | b8[ b'] d,16\rest d[ c b] c^[ b a gis]
  | a8[ a'] d,16\rest b'[ a g] a[ g fis e]
  | fis[ e d cis] d[ c b a] b[ a g fis]
  | g[ a' g fis] g[ fis e dis] e4~
  %30
  | e16[ d c e] d4. a8
  | b8 g\rest g\rest e'[ c d]
  | g,4~ g16[ b d fis] g4
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 12" }
    subtitle = \markup { "Canone alla Quarta" }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 11
    }
  }
  \midi { \tempo 4=94 }
}
