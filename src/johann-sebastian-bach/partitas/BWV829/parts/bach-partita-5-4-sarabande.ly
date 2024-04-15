Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
    \partial 16*5 d16[ \grace c16 b8. c16]
  %1
  | \grace c8 d4 d( e8.) f16
  | \grace e8 d4. e8 \grace d c4~
  | c8.[ d16 b8.( a16) b8.( c16)]
  | \grace b8 a4. fis'8[ d8. e16]
  %5
  | fis4 g( a8.) b16
  | e,4. fis8 g4~
  | g8. fis32 e d8.( c16) a'8. c,16
  | c4( b8.[) d16 g8. a16]
  | b4 b4. b8
  %10
  | \grace fis8 e4. e8 a4~
  | a8. b16 \grace a8 gis4. \prall a8
  | a4~ a16 g fis a g fis e g
  | fis4 b,4. e8
  | a,4~ a16 a b cis d e fis32 e d16
  %15
  | b'8. b,16 d4( cis8.) d16
  | d4.
  }
  \break
  \repeat volta 2 {
    \partial 16*5 a'16[ \grace g16 fis8. g16]
  | \grace g8 a4 a( b8.) c16
  | \grace b8 a4. b8 \grace a8 g4~
  | g8.[ fis16 a8. g16 fis8.\prall e16]
  %20
  | \grace e8 dis4. fis8[ dis8.\prall e16]
  | fis4 fis( g8.) a16
  | \grace g8 fis4. fis8[ gis8. a16]
  | b8. c16 \grace a16 gis4. gis8
  | a4. b16\rest a[ e8. fis16]
  %25
  | g16 fis e g fis2~
  | fis4.g16\rest dis[ e8. a16]
  | g8. fis16 e4( dis8.)\parenthesize\prall e16
  | e4~ e16 g fis a g fis e d
  | \stemNeutral c8 b~ b16 d c b a'8. g16
  %30
  | f8 e~ \stemUp e16 g fis e c'8. a16
  | b8.*5/6 a32 g fis e8.[ e16 fis8. g16]
  | fis16 g a fis d2~
  | d2.~
  | d4. g16\rest fis[ \grace e16 d8. e16]
  %35
  | fis4 \grace a8 gis4. a8
  | b16 f e d e d c b a gis fis e
   \break
  | d' c b d c2~
  | c16 b a c <g b>8. <c e>16 <b d>4~
  | q8. <a c>16 <g b>4( a8.)\prall g16
  | g4.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 16*5 b16[ \grace a16 g8. a16]
  %1
  | \grace a8 b4 b( c8.) d16
  | \grace c8 b4. c8 \grace b8 a4~
  | a g8.[( fis16) g8.( a16)]
  | \grace g8 fis4. a8[ fis8. g16]
  %5
  | a4 b( c8.) d16
  | d8. g,16 c4. b8
  | a4 b8.[ a16 b8. fis16]
  | f4( g8) e\rest e4\rest
  | g8\rest g16\rest a'[ g8. fis16 e8. d16]
  %10
  | cis2~ cis8. cis16
  | b2.
  | e,8\rest e16\rest e a2~
  | a4. d,8 g4~
  | g fis e\rest
  %15
  | e8\rest e16\rest g fis4( e)
  | fis4.
    \partial 16*5 fis'16[ \grace e16 d8. e16]
  | \grace e8 fis4 fis( g8.) a16
  | \grace g8 fis4. g8 \grace fis8 e4~
  | e4 e, a
  %20
  | b4. dis8[ b8. cis16]
  | dis4 dis( e8.) fis16
  | \grace e8 dis4.dis8[ b8. c16]
  | d4~ d8.[ f16 e8. d16]
  | e2 e,4\rest
  %25
  | e\rest e8\rest g16\rest d'16[ a8. b16]
  | c b a c b2~
  | b8. a16 g4( fis)
  | g e\rest e\rest
  | f,4\rest f8\rest \staffLower\stemUp f'! e[ d]
  %30
  | c4 c8 \staffUpper\stemDown d e fis
  | g4~ g8.[ g16 a8. b16]
  | a4 e8\rest g16\rest <fis a>[ \grace { \once\stemUp <e g>16 } <d fis>8. <e g>16]
  | \grace { \once\stemUp <e g>8 } <fis a>4 q( <g b>8.) <a c>16
  | <g b>4( <fis a>8.) a16 \grace g16 fis8. g16
  %35
  | a4 b4. c8
  | d8 c,\rest b4\rest b\rest
  | b\rest d8\rest e16\rest e[ a8. g16]
  | fis4 b,8\rest c16\rest fis g4~
  | g8. e16 d4 <c fis>
  %40
  | <b d>4.
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
    \partial 16*5 r16 r4
  %1
  | r8 r16 g16[ f8. e16 d8. c16]
  | \grace { \once\stemUp a'16 s } gis8. e16 a4~ a8. g16
  | fis8. d16 g4 c,
  | d d, r
  %5
  | r8 r16 d''[ c8. b16 a8. g16]
  | c4 a e'
  | c d2
  | g,4 g,8.[ g'16 b8. d16]
  | \clef treble g4 g, g'~
  %10
  | g8.[ b16 a8. g16] fis8. e16
  | d4. \clef bass b8[ e8. d16]
  | cis4~ cis8.[ a16 b8. cis16]
  | d8. d,16 g8.[ fis16 e8. d16]
  | cis8. a16 d8.[ cis16 b8. a16]
  %15
  | g8. e16 a4 a,
  | d4.
  }
  \repeat volta 2 {
    \partial 16*5 r16 r4
  | r8 r16 d''16[ c8. b16 a8. g16]
  | \grace { e'16 s } dis8. b16 e4. d8
  | cis2.
  %20
  | b4 b, r
  | \clef treble r8 r16 b''[ a8. g16 fis8. e16]
  | b'4 b, r
  | \clef bass r8 r16 f'16[ e8. d16 c8. b16]
  | c4 c, c'
  %25
  | cis d d,
  | d' dis16 fis g a g fis e dis
  | e8. a,16 b4 b,
  | e e, r
  | r8 f''8[ e d] c[ b]
  %30
  | c8 b4. a4
  | g c cis
  | d d, r
  | r8 r16 d16[ c8. b16 a8. g16]
  | d'4 d, r
  %35
  | r8 r16 e''16[ d8. c16 b8. a16]
  | gis4 r r
  | r8 r16 e a8.[ g16 fis8. e16]
  | d8. g,16 g'4. r16 a
  | b8. c16 d4 d,
  | <g, g'>4.
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
    opus = ##f # "BWV 829"
    title = \markup { "Sarabande" }
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
    \tempo 4 = 90
  }
}
