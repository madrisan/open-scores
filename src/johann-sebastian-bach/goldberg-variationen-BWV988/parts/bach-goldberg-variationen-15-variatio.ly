Global = {
  \key g \minor
  \time 2/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \tempo "Andante"
    s2
  | d16\rest d[ d( e)] e[( fis) fis( g )]
  | g4~ g16[ a bes c]
  | d[ a a32 gis a16] d,4~
  %5
  | d8[ ees16( f)] ees[( d) d( c)]
  | bes8 d\rest d\rest \stemNeutral c
  | g'32[ a fis16 g a] bes[ c d c]
  | bes[ \once\stemUp \grace a g d8~] \stemUp d[ ees]
  | d f\rest f16\rest ees[ d( c)]
  %10
  | bes[( c) c( d )] d[( ees) ees( d)]
  | d8 e\rest e\rest a
  | bes[ d,16 e~] e[ f8 g16]
  | a8[ bes,] c[ a']
  | r g32[ a g16~] g[ g8 g16~]
  %15
  | g[ f32 g a16 bes] a[ f cis8]
  | \stemDown r g'~ g16[ fis32 e fis8]
  }
  \break
  \repeat volta 2 {
  | \stemUp s2
  | d8\rest ees[ d c]
  | g'16[ g,8 as16~] aes[ bes8 c16]
  %20
  | bes8[ f'] g[ d]
  | ees16[ d c8] e'16\rest bes,8[ c16]
  | d[ bes f d] ees[ f g aes]
  | \once\shape #'(((0 . 0.5) (0 . 1.5) (0 . 1.5) (0 . 0.5))) Tie
    bes2~
  | bes16[ c32 d ees d c16] d[ ees32 f ees f g16]
  %25
  | f8 f\rest f4\rest
  | e16\rest c[ c( d )] ees[ e g, e']
  | fis4~ fis16[ g a bes]
  | c[ bes a g] fis[ g fis8~]
  | fis16[ a g8] f\rest c
  %30
  | g8.[ a16] bes[ c d e]
  | fis[ g a fis] g[ fis e32 d c'16~]
  | \stemDown c[ fis, g a] bes[ c d8]
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b16\rest g16[ g( f)] f[( ees) ees( d)]
  | d4( d16)[ \bottom\stemUp\tieUp\slurUp c bes a]
  | g[ cis cis32 d cis16] g'4~
  | g8[ fis16 e] fis[( g) \top\stemDown\tieDown\slurDown g( a])
  %5
  | bes8 a\rest a\rest a
  | d,32[ c ees16 d c] bes[ \bottom\stemUp\tieUp a g a]
  | bes16[ d g8~] g[ fis^\prallprall]
  | g d\rest \top\stemDown f16\rest fis[ g a]
  | bes[( a) a( g)] g[( fis) fis( g)]
  %10
  | g8 f\rest f\rest \bottom\stemUp c
  | bes[ \top\stemDown g'16 f~] f[ \bottom\stemUp e8 d16]
  | cis8[ \top\stemDown bes'] a[ \bottom\stemUp cis,]
  | d8\rest d32[ cis d16~] d[ d8 d16~]
  | d[ e32 d cis16 b] cis[ e \top\stemDown a8]
  %15
  | \bottom\stemUp d,\rest d~ d16[ e32 f e d e16]
  | d4 d\rest
  }
  \repeat volta 2 {
  | \top\stemDown\tieDown g8\rest fis[ g a]
  | d,16[ d'8 c16~] c[ bes8 a16]
  | bes8[ ees,] d[ g]
  %20
  | f16[ g aes8] b16\rest bes8[ as16]
  | g[ bes ees g] f[ ees d c]
  | \once\shape #'(((0 . -0.5) (0 . -2.8) (0 . -2) (-0.5 . -0.5))) Tie
    bes2~
  | bes16[ aes32 g f g aes16] g[ f32 ees f ees d16]
  | ees8 e8\rest e4\rest
  %25
  | r16 aes16[ aes( g )] fis[ f d' f,]
  | ees4~ ees16[ \bottom\stemUp\tieUp d c bes]
  | a16[ bes c d] ees[ d ees8~]
  | ees16[ c d8] \top\stemDown g8\rest a8
  | d8.[ c16] bes[ a g f]
  %30
  | ees16[ d c ees] d[ e fis32 g \bottom\stemUp a,16^~]
  | a16[ ees'! d c] bes[ a g fis]
  | g4 a4\rest
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | \stemDown\tieUp\slurUp
    g8[ g,] r g'~
  | g16[ fis32 e fis8] r d
  | ees[ e] r ees'!
  | d16[ cis d8] r16 c[ bes a]
  %5
  | g32([ fis g16) c, g'] c([ fis,) fis( g )]
  | g16[ fis g a] d,8[ ees]
  | bes8[ bes'16 c] d8[ d]
  | g,[ bes,32 c d bes] \once\stemUp g8 r
  | r16 fis'[ g a] bes8[ a]
  %10
  | g16[ fis8 e16] fis32[ a g8 fis16]
  | g[ a bes a] g32[ a g16 f32 g f16]
  | e[ f g e] cis[ d e cis]
  | f32[ e d16] g4 fis8
  | bes[ e,] a[ cis,]
  %15
  | d[ f16 e] f8[ a]
  | d16[ c32 bes a g a16] d,4
  }
  \repeat volta 2 {
  | d16[( ees'!) ees( d)] d[( c) c( bes)]
  | bes[( fis) fis( g)] g[( d) d8~]
  | d16[ c32 bes c16 f,] f'[ bes, ees8~]
  %20
  | ees16[ d32 c d c bes16] ees[ g, aes bes]
  | c,[ g' c bes] aes[ g aes8~]
  | aes16[ aes' bes aes] g[ f ees f]
  | g[ aes bes8] bes,8.[ as'16]
  | g[( f) f( es)] f[( g) g( aes)]
  %25
  | c,8[ b] r16 a[ b g]
  | c8[ c'] r c,~
  | c16[ \shiftOn d' ees bes] a[ bes c g]
  | g8[_( fis16) g] a[ bes32 c d ees c16]
  | bes32[ d c16 bes32 c a16] g32[ a f16 ees32 f d16]
  %30
  | c16[ ees32 d ees16 fis,] g8 r16 c
  | d8 r16 ees c8[ d]
  | g16[ d32 c bes c a16] g4
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 15 a 1 Clav." }
    subtitle = \markup { "Canone alla Quinta" }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 11
    }
  }
  \midi { \tempo 4=36 }
}
