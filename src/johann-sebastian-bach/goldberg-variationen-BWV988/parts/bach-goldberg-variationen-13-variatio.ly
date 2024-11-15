Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

greyTextColor = #(x11-color "dimgray")

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurDown
  \repeat volta 2 {
  %1
  | b32[ c b a b8~] b32[ fis g a b16 c] \once\stemUp \appoggiatura d32 c16[ b a g]
  | d'32[ e d cis d8~] d32[ cis d e fis16 g] \once\stemUp \appoggiatura a32 g16[ fis e d]
  | g32[ a g fis g8~] g32[ fis e fis g16 e] a,[ b' a g]
  | \once\stemUp \appoggiatura g32 fis32[ e fis e d8~] d32[ cis d e fis16 g] a[ b32 c! b16 a]
  %5
  | g32[ f e16 \once\override Script.extra-offset = #'(0.0 . 0.8 ) f8~\mordent] f32[ d g a b c d16] c[ b a g]
  | f32[ e d16 \once\stemUp \appoggiatura d16 e8~] e32[ d c b c d e16] d[ g e c]
  | b32[ a g16 a8~] a32[ g a b c fis, g a] d,[ fis e d a' g fis c']
  | c[ b a16 b8~] b32[ a g fis g b d fis] g[ fis32 e d fis a b c]
  | b[ a g16~] g32[ fis e16~] e32[ dis e16~] e32[fis g16~] g32[ a b16~] b32[ g fis e]
  %10
  | a[ g fis16~] fis32[ e d16~] d32[ cis d16~] d32[ e fis16~] fis32[ g a16~] a32[ fis e d]
  | \slurNeutral g[( a b a ) g16-. fis-.] e32[( fis g fis ) e16-. d-.] cis32[ (d e d ) cis16-. b-.]
  | a4.~ \downprall a32[ cis b a] b[ cis d e fis16 g]
  | a32-.[ d,( cis d e d cis d )] a[ d g, d' fis, d' e, d'] fis,[ d' a d fis, d' d, c']
  | b32-.[ d ( cis d e d cis d )] b[ d a d g, d' fis, d'] g,[ d' b d g, d' e, d']
  %15
  | \override Slur.color = \greyTextColor
    cis32-.[ g( fis g a g fis g)] e'-.[ cis( b cis d cis b cis)]
    g'-.[
    \once\override Slur.extra-offset = #'(0 . 0.5)
    e( d e a g fis e)]
  | << {
      \override Slur.color = \greyTextColor
      fis16[( cis) cis( d)] d[( g,) g( fis)] fis4
    } \\ {
      r4 r8 cis d4
    } >>
    \revert Slur.color
  }
  \repeat volta 2 {
  | \slurDown
    fis'32[ g fis e fis8~] fis32[ e fis g a16 b] \once\stemUp \appoggiatura c32 b16[ a g fis]
  | g32[ a g fis g8~] g32[ fis, g a b16 c] \once\stemUp \appoggiatura d32 c16[ b a g]
  | \slurNeutral e'32[ fis e dis e8~] e16[ gis gis a] a[ b b c]
  %20
  | e,32[ dis cis16 dis8~\mordent] dis8~[ dis32 dis e fis] e[ dis cis b a g a fis']
  | g,32-.[ e'(  dis e f e dis e )] fis[ e g e a e b' e,] c'[ e, d' e, c' e, b' e,]
  | c'32-.[ e,( dis e f e dis e )] c'[ e, b' e, a e g e] fis[ e g e a e dis! cis]
  | dis32-.[ a' ( g a b a g a )] b,-.[ g' ( fis g a g fis g )] a,-.[ fis'( e fis g a g fis )]
  | g16[( dis) dis( e)] e[( a,) a( g )] g8^~\mordent[ g32 b c d]
  %25
  | \slurDown e32[ f e dis e8~] e16[ a, \once\stemUp \appoggiatura b32 a16 g]
    \once\stemUp \appoggiatura a32 g16[ fis! fis e']
  | d32[ e d cis d8~] d16[ g, \once\stemUp \appoggiatura a32 g16 f]
    \once\stemUp \appoggiatura g32 f16[ e e d'] \slurNeutral
  | c32[ b a16~ a32 g fis16~] fis32[ e d16~ d32 e fis16~] fis32[ g a16~ a32 b c16~]
  | c32[ d c b c g' fis e] fis[ b a g a d c b] c[ b a g fis e d c]
  | b32-.[ g'( fis g a g fis g)] c,-.[ fis( e fis g fis e fis)] d-.[ f( e f g f e d)]
  %30
  | e32-.[ c( b c d c b c )] d-.[ b( a b c b a b )] cis-.[ bes( a bes c bes a g)]
  | fis32-.[ c'( b c d c b c )] fis-.[ c( b c d c b c )] a'-.[ c,( b c d c b a)]
  | b16[( fis) fis( g)] g[( c,) c( b)] b4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  %1
  | d8\rest d16\rest b d2~
  | d8.[ a16] d2~
  | d8.[ b16] cis2
  | a8\rest a16\rest fis a2
  %5
  | g8\rest g16\rest d g2~
  | g8.[ fis!16] g2~
  | g8.[ e16] fis2
  | e8\rest e16\rest d g4 g\rest
  | d'8\rest b e2~
  %10
  | e8[ a,] d2~
  | d8[ b] g2~
  | g16[ a g fis] g8 b\rest g4\rest
  | a8\rest a d4. a8
  | g[ b] e4. b8
  %15
  | a[ cis] g'[ e] cis4
  | d8[ e,] fis[ bes] a4
  }
  \repeat volta 2 {
  | \clef "treble" c'8\rest c16\rest fis,16 a2
  | c8\rest c16\rest d, g2~
  | g8.[ gis16] a8[ d, e g~]
  %20
  | g8[ fis16 e] fis8 \clef "bass" b,8\rest b4\rest
  | a8\rest b4 a gis8
  | a\rest c4 e8[ c a]
  | a\rest \autoBeamOff fis g \autoBeamOn e'4 dis8
  | e[ fis, g c] b b\rest
  %25
  | b\rest b16\rest g c[ d e8] d[ cis]
  | b8.[ fis16] b[ c! d8] c[ b]
  | a[ e] a[ c] a[ fis]
  | d4 f\rest f\rest
  | f8\rest e'[ es d] g[ b,]
  %30
  | c[ g] a[ d] e[ a,~]
  | a[ a16 g] a4 g8[ fis]
  | << {
      \stemUp g8[ a] b[ fis ] g4
    } \\ {
      \stemDown s4 e8\rest ees \shiftOnn d4
    } >>
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  %1
  | g4. g8[ fis e]
  | fis4. b8[a  b]
  | e,4. a8[ g  a]
  | d,4. e8[ d  c]
  %5
  | b4. g8[a  b]
  | c4. a8[ b  c]
  | d4. d8[ c  d]
  | g,4. g8[ b  d]
  | g4. g8[ fis e]
  %10
  | fis4. b8[ a  b]
  | e,4. fis8[ e d]
  | cis4. e8[ a, g]
  | fis[ fis'16. e32] fis8[ a d, fis]
  | g,[ g'16. fis32] g8[ b e, g]
  %15
  | a,[ a'16. g32] a4. a8
  | d,2.
  }
  \repeat volta 2 {
  | \clef "treble" d'4. c16[ b  c8  a]
  | b4. d8[ g, b]
  | c4. b8[ c a]
  %20
  | b4. \clef "bass" b,8[ cis dis]
  | e,[ g'16 a] g8[ fis] e4
  | a,8[ a'16 g] a8[ c a fis]
  | b,[ dis  e  g] b4
  | e,2~ e8[ d]
  %25
  | c4 r8 c'[ b ais]
  | b8[ b,] r b'[ a gis]
  | a[ a,] c4\rest c\rest
  | f,8\rest a[ d, fis a d]
  | g,8[ g' a b] r8 g
  %30
  | c,8[ e f fis] g[ fis16 e]
  | d4. fis8[ e d]
  | g,4 e\rest g
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
    title = \markup { \smallCaps "Variatio 13 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=46 }
}
