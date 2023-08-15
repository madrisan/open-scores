Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | \clef bass
    \set Staff.timeSignatureFraction = 18/16
    \scaleDurations 2/3 {
      g16[ a g d e fis] g[ fis g a g a] b[ a b c b cis]
      \clef treble
  |   d[ e d a b cis] d[ cis d e d e] fis[ e fis g e fis]
  |   g[ a g b, e fis] g[ fis g a g a] b[ a b cis b cis]
  |   d[ e d a b cis] d[ cis d e d e] fis[ e fis g e fis]
  %5
  |   g[ fis g d c! d] b[ g fis! g b d] f[ e f d b d]
  |   e[ d e c b c] g[ e d e g c] e[ d e c a c]
  |   d[ c d a g a] fis[ d cis d fis a] c![ b c a fis a]
  |   b[ a b g fis g] d[ b a b d g] b[ g fis g b d]
    }
      \bar "||"
      \break
  | \set Staff.timeSignatureFraction = 3/4
    \stemUp
    g8.[ fis32 e] d4 f8\rest b
  %10
  | a4 a a8\rest a
  | a4 g g8\rest g
  | g8.[ e16] a,4 g'8\rest g
  | g8.[ e16] fis4 a8\rest a
  | b8.[ fis16] g4 g8\rest g
  %15
  | g4 cis, d8\rest a
  | a8.[ e16] \appoggiatura e8 fis4 e'\rest
    \break
  }
  \repeat volta 2 {
  %17
  | \set Staff.timeSignatureFraction = 18/16
    \stemNeutral
    \scaleDurations 2/3 {
      a16[ g a d c b] a[ b a g a g] fis[ g fis e fis e]
  |   d[ c d g fis e] d[ e d c d c]  b[ c b a b a]
  |   g[ fis g b a g] fis[ g fis e fis e] dis[ e dis cis dis cis]
  %20
  |   \clef "bass" b[ ais b e dis cis] b[ c b a b a] g[ a g fis g fis]
  |   e[ dis e b' a b] g[ fis g \clef "treble" b e fis] g[ fis g e dis e]
  |   c[ b c e d e] a,[ gis a c f a] c[ b c a f a ]
  |   dis,[ cis dis fis! e fis] b,[ ais b dis fis g] a![ g a fis dis fis]
  |   g[ fis g b a b] e,[ dis e g b dis] e[ c b a g fis]
    }
  %25
  | \set Staff.timeSignatureFraction = 3/4
    \stemUp
    e8 d'\rest a'\rest b16\rest g \grace g8 fis8. e16
  | \grace e8 d4~ d8. f16 \grace f8 e8. d16
  | \grace d8 c2~ c8. c16
  | \set Staff.timeSignatureFraction = 18/16
    \scaleDurations 2/3 {
      c8 s4 fis,16[ e fis g fis g] a[ g a b g a]
  |   b[ c b fis g a] s4. d16[ c d e c d]
  %30
  |   e[ f e b c d] \stemNeutral e[ d e fis e fis] g[ fis g a fis g]
  |   a[ b a fis g a] b[ a b d c b] a[ g fis e d c]
  |   b[ a g fis g d] b8 r r r4.
    }
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s2.*8
  | b4 b g8\rest g'
  %10
  | g8.[ e16] fis4\mordent a,8\rest c
  | b8.[ dis16] e4\mordent a,8\rest e'
  | a,8.[ cis16] e,4 g8\rest cis
  | cis4 d r8 d
  | d4 e a,8\rest e'
  %15
  | a,8.[ g32 fis] e4 e8\rest a,
  | d4 d e\rest
  }
  \repeat volta 2 {
  %17
  | s2.*8
  %25
  | \stemDown a,8\rest d16\rest gis a8. b16 c4~
  | c8. fis,16 g8. a16 b4~
  | b8. e,16 fis8. g16 a8. g16
  | \set Staff.timeSignatureFraction = 18/16
    \scaleDurations 2/3 {
      fis16[ g fis cis d e] s4. fis8 s4
  |   g8 s4 b16[ a b c b c] b8 s4
  %30
  |   c8 s4 s2.
  |   s16*18*2
    }
  }
}

Tenor = \context Voice = "three" \relative c'' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b4 b c8\rest b
  | a4 a d8\rest d
  | d4 cis\prall c8\rest g
  | g8.[ e16] \appoggiatura e8 fis4 c'8\rest a
  %5
  | d,8.[ e16] f4 b'8\rest \clef "bass" g,
  | g8.[ e16] \appoggiatura d8 c4 e8\rest e
  | a,8.[ b16] c4 d8\rest d
  | d8.[ b16] g4 a\rest
  | s2.*8
  }
  \repeat volta 2 {
  %17
  | fis'8.[ e16] \appoggiatura e8 fis4 r8 d
  | g8.[ a16] \appoggiatura a8 b4 f'8\rest g
  | e8.[ b'16] a4 g8\rest a
  %20
  | a8.[ fis16] \appoggiatura e8 dis4 f8\rest fis
  | g8.[ fis16 ] \appoggiatura fis8 e4 g8\rest g
  | g4 f g8\rest a
  | a8.[ fis16] \appoggiatura fis8 dis4 f8\rest fis
  | fis8.[ dis16] e4\mordent
    \clef "bass"
    \set Staff.timeSignatureFraction = 18/16
    \scaleDurations 2/3 {
      c,4.\rest
  %25
  |   s16*18*8
    }
  }
  \fine
}

Bass = \context Voice = "four" \relative c'' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \clef treble
    g4 d d8\rest g
  | g8.[ e16 ] \appoggiatura e8 fis4 f8\rest a
  | b8.[ g16 ] e4 d8\rest a
  | d4 d c8\rest c!
  %5
  | b8.[ c16] d4 r8 \clef "bass" g,
  | c4 e, r8 g
  | fis8.[ g16] a4 r8 d,
  | g4 g, g\rest
    \bar "||"
  | \set Staff.timeSignatureFraction = 18/16
    \stemNeutral
    \scaleDurations 2/3 {
      g16[ a g d e fis] g[ fis g a g a] b[ a b c b cis]
  %10
  |   d[ e d a b cis] d[ cis d e d e] fis[ e fis g e fis]
  |   g[ a g b, e fis] g[ fis g a g a] b[ a b cis a b]
  |   cis[ d cis e, a b] cis[ b cis d cis d] \clef "treble" e[ d e fis d e]
  |   fis[ e fis a g a] d,[ cis d fis a b] c![ b c a fis a]
  |   g[ fis g b a b] e,[ dis e g b cis]  d![ cis d b g b]
  %15
  |   cis[ b cis e d e] a,[ gis a cis e fis] g![ fis g e cis e]
  |   fis[ e fis a g a] d,[ cis d fis a cis] d4.^\mordent
    }
  }
  \repeat volta 2 {
  %17
  | \set Staff.timeSignatureFraction = 3/4
    \stemDown
    d,,4 c b8\rest c
  | b8.[ d16 ] g4 g8\rest d'
  | cis4 dis a8\rest e'
  %20
  | dis4 fis, g8\rest dis'
  | e4 b g8\rest b
  | a8.[ b16 ] \appoggiatura b8 c4 g8\rest c
  | b4 a g8\rest a
  | a8.[ fis16] g4
    \set Staff.timeSignatureFraction = 18/16
    \clef "bass"
    \scaleDurations 2/3 {
      d,16\rest e fis g a b
  %25
  |   c[ b c f e d] c[ d c b c b] a[ b a g a fis]
  |   b[ a b e d c] b[ c b a b a] g[ a g fis! g e]
  |   a[ g a d c b] a[ b a g a g] fis[ g fis e fis e]
  |   \stemNeutral d[ cis d g fis e] d[ e d c d c] b[ c b a b a]
  |   g[ fis g c b a] g[ a g f g f] e[ f e d e d]
  %30
  |   c8.[ g'16 a b] c[ b c d c d] e[ d c b a g]
  |   fis[ e fis d e fis] g[ fis g a b c] d[ cis d e fis d]
  |   g8 r r r16 a[ g fis g d] g,4.
      \tweak direction #DOWN
      \textEndMark \markup { \musicglyph "scripts.dfermata" }
    }
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
    title = \markup { \smallCaps "Variatio 26 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
