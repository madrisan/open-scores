Global = {
  \key g \minor
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'VariatioXXV
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \tempo "Adagio"
  \repeat volta 2 {
  %1
  | r16 d[ \once\stemUp \grace es d32 cis d16] \once\stemUp \appoggiatura d bes'8~[ bes32 a g f]
    es16[ d8 cis!16~]
  | cis[ c \once\stemUp \grace d! c32 b c16]
    \once\stemUp \once\slurDown \appoggiatura c as'8~[ as32 g f es] des16[ c8 b!16~]
  | b[ bes \once\stemUp \grace c bes32 a bes16] fis'[ g8 cis,16~] cis[ d8 g,16]
  | g[ a32 bes a8] r4 r
  %5
  | r16 d,[ \grace ees d32 cis d16]
    \once\stemUp \once\slurUp \appoggiatura d16 d'8~[ d32 c! bes a] g[ f as16~ as32 d, f16~]
  | f[ es \grace f es32 d es16]
    \once\stemUp \once\slurUp \appoggiatura es16 es'8~[ es32 d c bes] a[ g bes16~ bes32 e, g16~]
  | g[ fis \grace g16 fis32 e fis16]
    \tuplet 3/2 { b[ c es!] } \tuplet 3/2 { cis[d fis,!] }
    \tuplet 3/2 { bes[ a d,] } \tuplet 3/2 { es[ b c~] }
  | c[ bes!32 a bes8] r4 r
  | r32 d[ e fis g bes a16~] a[ bes8 b16] c[ cis8 d16]
  %10
  | dis[ e~ e32 bes' a g] fis[ e d8 d16] d'[ cis8 c16]
  | b[ bes~ bes32 a gis16~] gis[ a~ a32 d, c bes] c[ a bes g! f e f d']
  | f,\prallprall[ e f16 e8] r32 d[ cis d e f g a] bes[ a d16~ d32 cis e16~]
  | e[ a, \once\stemUp \grace bes a32 gis a16] \once\stemUp \appoggiatura a a'8~[ a32 bes (a gis )]
    a-.[ d,( c bes) c-. c (bes a )]
  | a16[ bes \once\stemUp \grace c bes32 a bes16]
    \once\stemUp \appoggiatura bes bes'8~[ bes32 es,! d cis] d[ c'! b8 d,16]
  %15
  | cis[ bes!8 a16] es'![ d~ d32 cis! e g] bes16[ a~ a64 g f e d32 cis]
  }
  \alternative {
    { cis8\([ d\)] r4 r }
    { cis8\([ d\)] r4 r }
  }
  \break
  \repeat volta 2 {
  | r16 a'[ \once\stemUp \grace bes a32 gis a16] es![ d~ d32 e fis g] a[ c, es8 d16~]
  | d[ f \once\stemUp \grace g f32 es f16] as,[ g~ g32 a b c] d[ f, as8 g16~]
  %20
  | g[ c8 b16] c32[ es des8 c16~] c32[ f es16~ es32 f es d]
  | es[ a! ( bes16 es, d )] r4 r
  | r16 bes[ \once\stemUp \grace ces bes32 as bes16] bes[ bes'~ bes32 ces bes as]
    bes16[ des,~ des32 ces bes16~]
  | bes[ ces \once\stemUp \grace des16 ces32 bes ces16] ces[ ces'~ ces32 fes, es d] es[ des' c8 es,16]
  | d![ ces8 bes16] fes'[ es~ es32 d f as] ces16[ bes~ bes64 as ges f es32 d]
  %25
  | d8([ es)] r4 r
  | r16 g,[ \grace as g32 fis g16] \appoggiatura g16 es'8~[ es32 d c bes] as!16[ g8 fis!16]~
  | fis[ f \grace g16 f32 e f16] des'8~[ des32 c bes as] ges16[ f8 e!16~]
  | e[ es \grace f es32 d es16] c'8~[ c32 bes as g] fis16[ es'~ es32 d cis16]
  | \slurNeutral cis[(d ) es,( d)] r32 e[ fis g a bes c d] es![ d g16~ g32 fis a16~]
  %30
  | a[ d, \once\stemUp \grace es d32 cis d16] d'8~[ d32 c! bes a] g[ d' f,16~ f32 es d c]
  | d32[ as' g f es d c b] c[ f es d c bes a! g] a[ d c bes a g fis e]
  | fis[ bes a g fis e d cis] d[ g fis e d c bes a] bes[ es d c bes a g fis]
  }
  \alternative {
    { \once\override Stem.length = #8 \grace fis16 g4 r r }
    { g4 r r }
  }
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | bes4 d8\rest d[ c! bes]
  | a4 c8\rest c[ bes! as]
  | g4 b8\rest bes[ a g~]
  | g[ fis16 e] fis[ a8 c16~] c[ fis,8 a16~]
  | a[ fis g8] g\rest g d16[ f g as]
  %5
  | as8[ g] a\rest a e16[ g a bes]
  | bes8[ a] a\rest a[ g fis~]
  | fis8[ g16 fis] g[ d8 es16~] es32[ d g16~ g32 fis! c'16 ~]
  | c16[ bes32 a bes8] d'8\rest g,[ g g]
  | g8[ fis] a8\rest f[ f f]
  %10
  | f8[ e] e8\rest es[ es d]
  | d8[ cis] e4\rest d\rest
  | d8\rest d[ d es] es4
  | e8\rest e[ e f] f4
  | f8\rest fis8[ fis g] g4~
  }
  \alternative {
    { g8[ fis16 e] fis4 g\rest }
    { g8\repeatTie[ fis16 e] fis4 d4\rest }
  }
  \repeat volta 2 {
  | r8 f[ f fis fis g]
  | g[ d] g\rest f[ f es]
  %20
  | es[ d es e f ges~]
  | ges[ f16 ges] as[ d,8 es32 f] ges[ es f8 ces16]
  | ces[ bes es8] es[ fes] fes4
  | r8 f![ f ges] ges4
  | r8 g![ g as] as4~
  %25
  | as8[ g!16 f] g8.[ a32 b] c[ f, as8 g16]
  | f8[ es] r g[ f es]
  | d4 r8 f[ es des]
  | c4 b''8\rest \clef "bass" es,,16[ d] c8[ bes]
  | a8.[ a16] d8[ c bes a]
  %30
  | d,8[ fis fis g g as]
  | a\rest g[ g a! a bes]
  | b\rest a[ a bes bes c~]
  }
  \alternative {
    { c8[ bes16 a] bes4 c\rest }
    { c8\repeatTie[ bes16 a] bes8 d\rest c4\rest }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g4 r8 g[ g g]
  | g[ fis] b,\rest f'[ f f]
  | f[ e] b\rest es[ es es]
  | d4 b8\rest es[ d c]
  | bes4 b8\rest bes[ b b]
  %5
  | b[ c] c\rest c[ cis cis]
  | cis[ d] c\rest d[ d d]
  | g,4 g8\rest g[ bes d]
  | g8.[ d'16] g8[ f! es! d]
  | cis[ a d c bes a]
  %10
  | g[ c] f,[ fis g gis]
  | a[ bes a g f e]
  | f4 r8 fis[ fis g]
  | g4 r8 gis[ gis a]
  | a4 r8 a[ cis a]
  }
  \alternative {
    { d4. c8[ bes a] }
    { d4. a8 d,4 \clef "treble" }
  }
  \repeat volta 2 {
  | d'4 a8\rest c[ c bes]
  | bes8[ g16 a] bes8[ b b c]
  %20
  | c4 a8\rest g[ as a]
  | bes4 b8\rest ces[ bes as]
  | ges4 g8\rest g[ g as]
  | as4 a8\rest a[ a bes]
  | bes4 b8\rest bes[ d bes]
  %25
  | es4 c8\rest f[ es d]
  | c4 r8 c[ c c]
  | c[ b] b\rest bes[ bes! bes]
  | bes[ a!] a\rest \clef "bass" as[ as g]
  | g[ fis] r fis[ g c,]
  %30
  | bes4 a8\rest bes[ bes b]
  | b16[ d c8] b\rest c[ c cis]
  | cis16[ e d8] c\rest d[ d d]
  }
  \alternative {
    { g4~ g8[ d] g,16[ a' bes c] }
    { g4~ g16[ fis g d] g,4 }
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
    title = \markup { \smallCaps "Variatio 25 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
