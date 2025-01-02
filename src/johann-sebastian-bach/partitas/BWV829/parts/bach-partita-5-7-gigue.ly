Global = {
  \key g \major
  \time 6/8
  \include "../../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaVGigue
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  \partial 8 s8
  %1
  | s1*6/8
  | a'4.\rest a8\rest a\rest g
  | b8. g16 e cis a'8 d, g\rest
  | g8. e16 cis a fis' e fis a d, fis
  %5
  | g fis g b e, g a g a c fis, a
  | b a c b a g fis e fis g e fis
  | g4 c8 fis, g4~
  | g8 fis a d, e fis
  | g a\rest a\rest a4.\rest
  %10
  | a4.\rest e8 fis gis
  | a b\rest b\rest b4.\rest
  | b4.\rest fis8 g a~
  | a g4~ g8 fis4~
  | fis8 e4~ e8 d fis~
  %15
  | fis e b'\rest b\rest b\rest e,~
  | e d b'\rest b\rest b\rest d,~
  | d c b'\rest b\rest b\rest c,~
  | c b d~ d cis a'~
  | a g b\rest cis, a d~
  %20
  | d cis f\rest d4.~
  | d16 c d e b d c4.~
  | c16 b c d a c b a b c d b
  | e8. c16 a fis d'8 \stemNeutral g, r
  | c8. a16 fis d b'8 e, r
  %25
  | a8. fis16 d b g'8 cis, r
  | r16 e fis a d, fis g fis g b e, g
  | a g a c fis, a b a b cis d b
  | \stemUp cis8 a e'~ e d fis~
  | fis e g~ g fis a
  %30
  | b8. g16 e cis a'8 d, g\rest
  | g8. e16 cis a fis'8 d c
  | b e g,~ g[ fis]
  }
  \pageBreak
  \repeat volta 2 {
  \partial 8 r8
  | s1*6/8*4
  | r4. r8 r a
  | d, g r r16 g fis e fis d
  | b cis cis8.^\prallprall b32 cis d16 e d cis d b
  %40
  | cis dis dis8.^\prallprall cis32 dis e16 b' a g a fis
  | g8 gis8.\prallprall fis32 gis a16 e' d c d b
  | \stemNeutral c a' g f g e fis8 gis, a
  | r16 c' b a b d, \stemUp c b' a gis a c,
  | b a' g fis g b, a g' fis e fis a
  %45
  | dis, e e8. \prall dis32 e fis16 e fis a g fis
  | e8 a a\rest b16\rest a g fis g e
  | cis dis dis8. \prall cis32 dis \stemNeutral e16 dis e g fis a
  | g fis g b e, gis a gis a c fis, a
  | b a b d gis, b \stemUp c b a gis a e
  %50
  | f8. d'16 b gis e8 a b\rest
  | d,8. b'16 gis e c8 e a
  | d, g b\rest b16\rest g fis e fis d
  | b cis cis8. \prall b32 cis d8 b8. \prall a32 b
  | c16 d c b c a b a b c d8
  %55
  | g, c e\rest e16\rest c b a b g
  | e fis fis8. \prallprall e32 fis \stemNeutral g8 d' e
  | a, e' fis b, fis' g
  | \stemUp c,4.~ c16 d c b c a
  | b8 cis4 d8 a d~
  %60
  | d16 b g8 c fis, d g~
  | g32 fis e16 d8 r r16 c d f e g
    \break
  | f g f e f d e a g fis g e
  | fis b a g a fis g8 a r
  | r16 d, g b a fis fis8[( g)]
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 d8
  %1
  | e8. c16 a fis d'8 g, r
  | c8. a16 fis d b' a b c b a
  | g8 g, g'~ g16 e fis a g fis
  | e8 cis a d a' b
  %5
  | e, b' c fis, c' d
  | g, e' c d a d~
  | d c4~ c16 a b d c b
  | a4.~ a8 g a
  | b16 a b d g, b c b c e a, c
  %10
  | d c d f b, d e8 a, b
  | c16 b c e a, c d c d fis b, d
  | e d e g cis, e fis8 b, cis!
  | d16 cis d e b d cis b cis d a c
  | b a b cis g b a4 g8\rest
  %15
  | g\rest g\rest d'~ d cis g\rest
  | f\rest f\rest c'~ c b f\rest
  | e\rest e\rest b'~ b a e\rest
  | d\rest d\rest fis~ fis e a
  | b8. g16 e cis a'8 d, c\rest
  %20
  | g'8. e16 cis a fis'16 e fis a d, fis
  | g4.~ g16 fis g b e, g
  | a4. g~
  | g16 \staffLower\stemUp\tieUp g, c4~ c16 a b4~
  | b16 g a4~ a16 fis g4~
  %25
  | g16 e fis4~ fis16 d e8 c'8\rest
  | \override MultiMeasureRest.staff-position = #4
    R1*6/8*2
  | \staffUpper\stemDown\tieDown b4.\rest f'8\rest f\rest d'~
  | d cis e~ e d fis~
  %30
  | fis16 d e8 g,~ g16 e fis a d, fis
  | b8[ cis] d,\rest d' a4~
  | a16 g8. e8~ e[ d]
  \partial 8 s8
  | \override MultiMeasureRest.staff-position = #0
    R1*6/8
  | r4. r8 r \staffLower\stemUp d
  %35
  | g, c e\rest e16\rest c b a b g
  | e fis fis8.^\prallprall e32 fis g8 gis8.^\prallprall fis32 gis
  | a16 b a g a fis g b a b c a
  | b a b cis d b cis8 a \staffUpper\stemDown d
  | \staffLower\stemUp b16\rest a g fis g e fis gis gis8.^\prallprall fis32 gis
  %40
  | a8 fis4 e8 g\rest g\rest
  | \staffUpper\stemDown b16\rest e d c d b c8 d e
  | \staffLower\stemUp a, d d\rest d16\rest d c b c a
  | fis gis gis8.^\prallprall fis32 gis a8 c \staffUpper\stemDown e
  | dis b' e, c'16 b a g a fis
  %45
  | b a g fis g e dis8 fis b~
  | b a c dis, \staffLower\stemUp b \staffUpper\stemDown e~
  | e fis4 \staffLower\stemUp b,8 d\rest d\rest
  | \override MultiMeasureRest.staff-position = #8
    R1*6/8
  | e4.\rest \staffUpper\stemDown g8\rest g\rest g16\rest e'
  %50
  | a,8 d g,\rest g16\rest d' c b c a
  | fis gis gis8. \prallprall fis32 gis a16 gis a b c a
  | b a b cis d b cis8 a d
  | b,16\rest a' g fis g e fis g f e f d
  | e fis! fis8. \prallprall e32 fis g4~ g16 fis~
  %55
  | fis e8 a16 g a fis8 d \staffLower\stemUp g,~
  | g a4 d,8 a'\rest a\rest
  | \override MultiMeasureRest.staff-position = #4
    R1*6/8
  | \staffUpper\stemDown e'16\rest b' a g a e fis8 c\rest c\rest
  | c16\rest a' g fis g e fis4 d8
  %60
  | e8. \staffLower\stemUp c16 a fis \staffUpper\stemDown d'8 \staffLower\stemUp g, c\rest
  | c8. a16 fis d b'4.
  | \staffUpper\stemDown c8 d a\rest \staffLower\stemUp g e g\rest
  | a fis c'\rest \staffUpper\stemDown c16\rest d c b c a
  | b d8.~ d8 c[( b)]
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | R1*6/8*5
  | r4. r8 r d
  | e8. c16 a fis d'8 g, r
  | c8. a16 fis d b' a b c b a
  | g8 d' e a, e' f
  %10
  | b, f' g c,16 b c d c b
  | a8 e' fis b, fis' g
  | cis, g' a d,16 cis d e d cis
  | \clef bass b8. g16 e cis a'8 d, r
  | g8. e16 cis a fis' e fis a d, fis
  %15
  | gis fis gis b e, gis ais gis ais cis fis, ais
  | b ais b d fis, a gis fis gis b e, gis
  | a gis a c e, g fis e fis a d, fis
  | g fis g a b g a g a b cis a
  | d b e8 g,~ g16 e fis a g fis
  %20
  | e a, a' g fis e d8 a' b
  | e, b g e b'' c
  | fis, d e f e d
  | \stemDown c8. a'16 fis a b,8. g'16 e g
  | a,8. fis'16 d fis g,8. e'16 cis e
  %25
  | fis,8. d'16 b d e,8. cis'16 a cis
  | d,8 a' b e, b' c
  | fis, c' d g, d' e
  | \stemNeutral a,16 fis' g a e g fis e fis a d, fis
  | e d e g cis, e d cis d fis b, d
  %30
  | g,8 g' r r r fis~
  | fis16 d e g a, cis d e fis a d, fis
  | g e cis e a, cis d,8[ d']
  }
  \repeat volta 2 {
  \partial 8 a'8
  %1
  | d, g r r16 g fis e fis d
  | b cis cis8.^\prallprall b32 cis \stemDown d16 cis d e fis d
  | e d e fis g e fis8 d g
  | a,16\rest d c b c a b e d cis d b
  %5
  | cis8 dis8. \prallprall cis32 dis e16 fis fis8. \prallprall e32 fis
  | g8 e r a d, r
  | g, a a\rest d b a\rest
  | b16\rest b a g a fis g8 a b
  | \stemNeutral e,8 r r r4.
  %10
  | \override MultiMeasureRest.staff-position = #-4
    R1*6/8*2
  | \override MultiMeasureRest.staff-position = #-2
    R1*6/8
  | r4. r8 r b''
  | c8. a16 fis dis b'8 e, r
  %15
  | a8. fis16 dis b g' fis g b dis, fis
  | e8 b' c fis, c' d
  | gis, d' e a, b c~
  | c b a gis a r
  | R1*6/8*3
  %22
  | r4. r8 r d,
  | e8. c16 a fis \stemDown d'8 g, b\rest
  | c8. a16 fis d b' a b d g, b
  %25
  | c b c e a, c d c d fis b, d
  | \stemNeutral e8 c a d fis d
  | \stemDown g e a d,16 e d c b a
  | \stemDown g8 c b\rest b16\rest c b a b g
  | e fis fis8. _\prallprall e32 fis g8 g, g'
  %30
  | a16 b b8. _\prallprall a32 b c8 cis8. _\prallprall b32 cis
  | d8 dis8. _\prallprall cis32 dis e16 fis fis8. \prallprall e32 fis
  | \stemNeutral g8 <b, b,> <d d,> <g, g,>4

%  | R1*6/8*23
%  | s8*5
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 829"
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
