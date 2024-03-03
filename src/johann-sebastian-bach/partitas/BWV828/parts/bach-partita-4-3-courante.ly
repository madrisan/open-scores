Global = {
  \key d \major
  \time 3/2
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 fis8
  %1
  | <a, d fis>4. d16 fis g8 d16 g a4 b^\mordent cis
  | <d, a' d>2 e'4 fis fis8 g fis e
  | fis8 d16 fis \stemNeutral\tieNeutral g8[ d16 g] a4. b,8 e fis16 g fis8 e
  | cis4.^\prall a16 cis d8 a16 d e4 \grace a,8 g2~
  %5
  | g8 fis16 e fis8 ais b4.^\mordent cis8 d cis e4
  | \once\stemUp\tieUp \slurDown\appoggiatura e8 d4. b16 d e8 cis16 e fis4 gis4.^\mordent a8
  | gis4.\prall e16 gis a8 e16 a b4 a8 gis fis e
  | d4 cis8^\prall a16 cis d8 a16 d e4 fis4.^\mordent g8
  | fis4. \once\stemUp b,8 b16\prall a b8 e4 a,8 b cis a
  %10
  | \stemUp\tieUp d2.~ d2 cis4~
  | cis4 b8\prall[ a16 gis a8 b] gis8 e16 gis a8[ e16 a] b8 e,16 b'
  | cis8 e,16 cis' \slurDown\appoggiatura cis16 d4. \stemNeutral cis16 b cis8[ a16 cis] d8[ a16 d] e8[ a,16 e']
  | fis8 a,16 fis' \once\stemUp \slurDown\appoggiatura fis16 g4. fis16
    e fis8[ d16 fis] gis8[ d16 gis] a8[ d,16 a'16]
  | \once\stemUp \appoggiatura a8 b4~ b16 a gis fis e8 a~ a16[ gis fis e] d8 fis~ fis16[ e d cis]
  %15
  | \stemNeutral b8 d~ d16[ cis b a] gis8 e'4 a,8 \slurDown cis4 b8^\prall a16 b
  | a2. a2
  }
  \break
  %\pageBreak
  \repeat volta 2 {
  \partial 8 \stemUp e'8
  | e4. a16 e cis8 e16 cis a4\appoggiatura a8 b4. cis8
  | \shape #'((0 . 1) (0 . 1.3) (0 . 1.3) (0 . 1)) Tie
    d2.~ d8[ fis e d e fis]
  | \stemNeutral g8[ d16 g] a8[ d,16 a'] b2 a8 g fis e
  | \stemUp dis2. e4^\mordent e8 d c b
  %20
  | \stemNeutral c4.^\prall a16 c e8[ c16 e] a8 c,4 b a8
  | b4.^\mordent g16 b d8[ b16 d] g8 b,4 a g8
  | a4. fis16 a c8[ a16 c] fis8 a,4 g fis8
  | g8 c4 b8[ dis e] a, g'4 fis8 e dis
  | \stemUp e2. g~
  %25
  | g4 fis8[ g e g] fis2.~
  | fis4 e8[ fis d fis] e2.~
  | e8[ a,16 d] fis8[ d16 fis] \stemNeutral a8 c,4 b cis d8
  | d4( cis16)[ b a b] cis[ b a b] c8[ fis16 g] a[ g fis e] d8[ c]
  | c4( b16)[ a g a] b[ a g a] b8[ e16 fis] g[ fis e d] c8 b
  %30
  | b16^([ a) d e] fis[ e d cis] b8[ a] a16^([ g) cis d] e[ d cis b] a8[ g]
  | fis4. d16 fis g8 d16 g a4 \appoggiatura a16 b4. c8

  | b4. e,8 e16\prall d e8 a4 d,8 e fis d
  | g2.~ g2 fis4~
  | fis4 e8[^\prall d16 cis d8 e] cis8[ a16 cis] d8[ a16 d] e8[ a,16 e']
  | fis8 a,16 fis' g4. fis16 e fis8[ d16 fis] g8[ d16 g] a8[ d,16 a']
  | b8 d,16 b' c4. b16 a b8[ g16 b] cis8[ g16 cis] d8 g,16 d']
  | e4~ e16 d cis b a8[ d~] d16 cis b a g8[ b~] b16 a g fis
  | e8[ g~] g16 fis e d cis8 a'4 d,8 fis4 e8^\prall d16 e
  | d2.~ d2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1.
  | s2 b4 cis d a~
  | a s s1
  | s1.*7
  %11
  | fis2. s2.
  | s1.*4
  %16
  | s2. <cis e>2
  \partial 8 s8
  | cis'4. s8 s1
  | g8\rest \stemUp a^~ <fis a>2 s2.
  | s1.
  %20
  | e8\rest \stemDown b' fis2 s2.
  | s1.*4
  %25
  | g8\rest b g2 r8 e'16 b g8[ b16 g] e8 g16 e
  | a2.~ a8 d16 a fis8[ a16 fis] d8 fis16 d
  | g2.~ g8 a,16 cis e8[ cis16 e] a8 e16 a
  | cis8 s4. s1
  | s1.*5
  %34
  | s1 s4 d,
  | b s4 s1
  | s1.*3
  | s2. s8 d~ d4 cis
  | \staffLower\stemUp <fis, a>2 q2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | d4\rest d e fis g e
  | fis4. d16 fis g8 d16 g s2.
  | s4 d'2~ d4 b2
  | a2.~ a~
  %5
  | a4 d8 cis d4 b2 ais4
  | s1.*3
  | d2 fis4 gis g\rest e
  %10
  | d8 \staffUpper\stemDown fis8
   fis16 \tweak Y-offset #0.5 \prall e fis8 b4 e,8[ fis gis e] a4
  | \staffLower\stemUp a,16\prall gis a8 d4 cis b a gis
  | \tieDown a4~ \stemDown a gis g fis e
  | d \stemUp\tieUp e'2 d2.~
  | d4 cis2~ cis4 b2~
  %15
  | b4 gis b a2 gis4
  | g\rest cis, e a2
  \partial 8 s8
  | f4\rest cis e s2.
  | \staffUpper\stemDown a4\rest b8\rest d4. s2.
  | \staffLower\stemUp s1.
  %20
  | s2. d4\rest b e~
  | e8 c e2~ e4 a, d~
  | d8 b d2~ d4 g, c~
  | c8 a c2~ c4 fis, b~
  | b a b e, a fis
  %25
  | e4. s8 s1
  | s1.*2
  | s2. a4\rest g fis
  | e8 s4. s1
  %30
  | s1.*3
  | g2 b4 cis c\rest a
  | b8 \staffUpper\stemDown b b16 \tweak Y-offset #-1 \prall a b8 e4 a,8[ b cis a]
    \staffLower\stemUp f8\rest d
  %35
  | d16\prall cis d8 g4 fis e d cis
  | \tieDown d~ \stemDown d cis c b a
  | g \stemUp\tieUp a'2 g2.~
  | g4 fis2~ fis4 e2~
  | e4 cis e d2 g4
  %40
  | \stemDown d2. \once\override Stem.length = #4 d2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | d,2. s
  | d'4. s a'4 b cis
  | d4 b fis g2 gis4
  | b,4\rest a b cis d8 cis b a
  %5
  | d2. g4 e fis
  | b,8[ fis' b d cis e d fis e d cis b]
  | e8[ b e, d cis b a gis fis e fis gis]
  | a8[ e' a cis b d cis e d cis b a]
  | r4 d, d'~ d cis2~
  %10
  | cis8[ cis b a gis a] gis4 e fis
  | d2.~ d4 cis b
  | a4 \stemUp b'2 a4 b cis
  | d4~ \stemDown d cis~ cis b a
  | gis4 a gis fis gis a
  %15
  | gis4 e d cis d e
  | a,2.~ a2
  }
  \repeat volta 2 {
  \partial 8 r8
  | a2. g'8[ fis a g fis e]
  | \stemNeutral fis4. a16 fis d8 fis16 d b4 \appoggiatura b8 c4. a8
  | b8 d g fis g[ b16 g] e8[ g16 e] c'4 a
  %20
  | \stemDown b4. a16 g a8 g16 fis g2 gis4
  | a4. fis8[ g e] fis2.
  | g4. e8[ fis d] e2.
  | fis4. a8[ fis e] dis2.
  | e4 fis g c, a b
  %25
  | e,4. e'16 g b8[ g16 b] e2 r4
  | r8 cis,16 e a8[ e16 a] cis8[ a16 cis] d2 r4
  | r8 b,16 d g8[ d16 g] b8[ g16 b] cis8 r r4 r8 cis16 a
  | fis8[ a16 fis] d8[ fis16 d] b8[ d16 b] g4 e' d
  | a8[ cis e g fis e d a' d, c b a]
  %30
  | \stemNeutral g8[ b d fis e d cis! g' cis, b a g]
  | fis8[ fis' b, a g fis e e' a, g fis e]
  | d8[ a' d fis e g fis a g fis e d]
  | \stemDown g,4\rest g g'~ g fis2~
  | fis8[ fis e d cis d] cis4 a b
  %35
  | g2.~ g4 fis e
  | d4 \stemUp e'2 d4 e fis
  | \tieDown g4~ \stemDown g fis~ fis e d
  | cis4 d cis b cis d
  | cis4 a g fis g a
  %40
  | \once\override Voice.Rest.X-offset = #0.5
    e4\rest d a' d,2
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
      \Soprano
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 828"
    title = \markup { "Courante" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
