Global = {
  \key a \minor
  \time 12/8
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  \partial 8 e8
  %1
  | a,8 c e a gis a b, d e a gis a
  | c, e gis a b c d, c' a bes d a
  | gis4.~ gis8 fis g a4.~ a8 b c
  | \stemUp\tieUp b4.~ b8 dis e c2.~
  %5
  | c8 b a b fis' a,~ a g fis g4.~
  | g8 a g a e' g,~ g f e f4.~
  | f8 f e f d' f,~ f e d e d' e,
  | c'4.~ c8 b c d4.~ d8 e f
  | e4.~ e8 gis a f2.~
  %10
  | f8 e d e b' d, c2.~
  | c8 a fis a fis d b'2.~
  | b8 g e g e c a'2.~
  | a8 fis dis fis dis b g' b dis e4.~
  | e4 dis8 fis4.~ fis8 e fis g4.~
  %15
  | g8 e gis a c g fis2.~
  | fis8 e dis e4 b8 e2.
  | e8 d cis d4 a8 d2.~
  | d8 c b c4 gis8 a4.~ a4 a8
  | d2.~ d8 b' gis e b e
  %20
  | \stemNeutral a, c e a gis a b, d e a gis a
  | c, e gis a b c d, c' a bis d a
  | \stemUp gis b gis e b d c e c a e g
  | f a' f d a c b d b g d f
  | e8 e'4~ e d8 e2.*5/6
  }
  \break
  \repeat volta 2 {
  \partial 8 s8
  %25
  | s1*12/8*8
  %33
  | \stemNeutral r2. r4. r8 r b
  | e b gis e dis e d' b gis e dis e
  | c' a f e gis a f d b gis e' d
  | c e a c gis a c fis, g c e, fis
  | b, d g g fis g b e, fis b dis, e
  | a, c e a e fis a dis, e a cis, dis
  | \stemUp g4 c8\rest r4. g4 c8\rest r4.
  %40
  | fis,4 c'8\rest r4. fis,4 c'8\rest r4.
  | e,4 c'8\rest r4. d4.\rest \stemNeutral r8 r fis
  | b fis d b ais b a' fis dis b ais b
  | g' e c b dis e c a fis dis b' a
  | \stemUp g g'\rest g\rest g\rest fis g gis4.~\prallprall gis8 fis gis
  %45
  | a4.~ a8 b c d,4 f8 b,4 gis'8
  | a2.~ a~
  | a g~
  | g4 e8 f4.~ f4 e8 f4.~
  | f4 b8 b4 d,8 d4 b8 b4 e8
  | e8 d c d c b a2.*5/6
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \override MultiMeasureRest.staff-position = #0
  \partial 8 r8
  %1
  | R1*12/8
  | r2. r4. r8 r a'
  | e gis b e dis e fis, a b e dis e
  | \once\override Beam.damping = #+inf.0 g, b \staffUpper dis e fis g a, g' e f a e
  %5
  | dis4.~ dis8 cis dis e4.~ e8 b d
  | cis4.~ cis8 b cis d4.~ \once\override Beam.damping = #+inf.0 d8 \staffLower a c
  | \stemUp b4 c8 b4 a8 gis4 b8 gis4.
  | a4 \staffUpper\stemDown gis'8 a4.~ a4 gis8 b4.~
  | b8 a b c4.~ c8 a cis d f c
  %10
  | b2. e,8\rest a e c e a
  | d,8 b\rest b\rest b4.\rest d8\rest g d b d g
  | c,8 a\rest a\rest a4.\rest c8\rest fis e dis e fis
  | b,8 g\rest g\rest g4.\rest g'~ g8 fis! g
  | a4.~ a8 b c b4.~ b8 dis! e
  %15
  | c2.~ c8 b a b fis'! a,
  | g2.~ g8 a g a e' g,
  | f2.~ f8 g f g d' f,
  | e2.~ e4 a,8 d4.~
  | d8 f a gis b a b4 e,8\rest e4.\rest
  %20
  | \staffLower\stemUp g4.\rest e f4 e8 d4.
  | e4 b8 c4 e8 a,4. d~
  | d8 gis, b \staffUpper\stemDown e gis e a4 e8\rest b4.\rest
  | \staffLower\stemUp c8\rest f, a \staffUpper\stemDown\slurDown d f d g4 e8\rest b4.\rest
  | a8\rest a\rest c' b( a4~) a16 c b a gis fis e4
  \partial 8 r8
  %25
  | R1*12/8
  | \stemUp\tieUp r2. r4. r8 r e
  | a e c a gis a g' e cis a gis a
  | f' d \staffLower bes a cis d bes g e cis a' g
  | f e'\rest e\rest c4.\rest c8\rest fis, g b d f,
  %30
  | e d'\rest d\rest c4.\rest c8\rest e, f a c e,
  | d d'\rest d\rest c4.\rest a8\rest d, e gis b d,
  | c e f a c e, d fis g b d f,
  | e gis a c e g, f a bes d f a,
  | gis4. a2. gis4.
  %35
  | a4. b\rest b\rest b~
  | b8 c, e a b c d a b fis g a~
  | a b, d g a b c g a e fis g~
  | g8 a, c fis g a b fis g dis e fis~
  | fis \staffUpper\stemDown e' d \staffLower\stemUp g, fis g \staffUpper\stemDown\tieDown c\rest e d cis b cis~
  %40
  | cis d a \staffLower\stemUp fis eis fis \staffUpper\stemDown b\rest d cis b ais b~
  | b cis ais \staffLower\stemUp e dis e \staffUpper\stemDown e' cis b \staffLower\stemUp ais gis ais
  | fis4. c'\rest b c\rest
  | b4 c8\rest c4.\rest e\rest f8\rest f\rest
    \staffUpper\stemDown
    \once\override NoteColumn.force-hshift = #1.4
    b
  | e b g e dis e d' b gis e dis e
  %45
  | c' a f e gis a f d \staffLower\stemUp b \staffUpper\stemDown e8\rest e\rest e
  | a e c g'\rest b c cis4.~_\prall cis8 b cis
  | d4.~ d8 e f e4.~ e8 cis e
  | a,4.~ a4 cis8 d4.~ d4 a8
  | d4 d8 d4 b8 b4 gis8 gis4 gis8
  %50
  | a4.~ a4 gis8 a16 f e d cis b a4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 s8
  %1
  | s1*12/8*6
  %7
  | b2.\rest a4.\rest a8\rest a\rest e'
  | a, c e a gis a b, d e a gis a
  | c, e gis a b c d, c' a bes d a
  %10
  | \stemNeutral gis4 b8 gis4 e8 a, c e a c a
  | fis a d d, fis a g, b d g b g
  | e g c c, e g fis, a c fis a fis
  | dis fis b b, dis fis e, g b e dis e
  | fis, a b e dis e g, b dis e fis g
  %15
  | a, g' e f a f dis4.~ dis8 cis dis
  | e, g b e g e cis4.~ cis8 b cis
  | d, f a d f d b4.~ b8 a b
  | c, e g c e c f, a c f a f
  | b, d f b d b e, gis b e gis d
  %20
  | c2. d4 c8 b4.
  | a~ a4 g!8 f2.
  | \stemDown e4 b8\rest r4. \stemNeutral a8 c e a c a
  | \stemDown d,4 b8\rest r4. \stemNeutral g8 b d g b g
  | c,4 a8 f'4 f,8 e[ gis b] e4
  }
  \repeat volta 2 {
  \partial 8 b'8
  %25
  | e b gis e dis e d' b gis e dis e
  | c' a f e gis a f d b gis e' d
  | c4.~ c8 b c cis4.~ cis8 b cis
  | \stemDown d4.~ d8 e f g, g\rest g\rest a g\rest g\rest
  | d a'' f d a d b2.~
  %30
  | b8 g' e c gis b a2.~
  | a8 f' d b fis a gis4.~ gis8 e gis
  | a4.~ a8 f a b4.~ b8 g b
  | c4.~ c8 a cis d2.~
  | d4. c b e
  %35
  | a, c d e
  | a, g\rest g2.\rest
  | g4. f\rest g2.\rest
  | fis4. f\rest g2.\rest
  | e8 g b e dis e a, cis e a gis a
  %40
  | d,, fis a d cis d g, b d g fis g
  | cis,, e g cis b cis fis, ais cis fis eis fis
  | d4.~ d8 cis d dis4.~ dis8 cis dis
  | e4.~ e8 fis g a r r b r r
  | e, r r r4. r2.
  %45
  | r2. r4. gis8 e' d
  | \stemNeutral c r r a gis a g' e cis a gis a
  | f' d bes a cis d bes g e cis a' g
  | f a cis d a f d f gis a f d
  | b d gis a, d f gis, b d f e d
  %50
  | c b a e'4 e,8 a cis e a4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    opus = ##f # "BWV 827"
    title = \markup { "Gigue" }
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
