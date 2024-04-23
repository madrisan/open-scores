Global = {
  \key a \minor
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
  \omit TupletBracket
  \repeat volta 2 {
  \partial 4. a8 gis\prallmordent a
  %1
  | e8\mordent \tuplet 3/2 { f16 e d } e8 e e e
  | c'( b) d\rest a gis!\prallmordent a
  | \slurDotted d( c) d\rest a gis\prallmordent a
  | \slurSolid f'[( e)] e\rest e e e
  %5
  | e8 \tuplet 3/2 { f16 e d }
    \omit TupletNumber
    e8 \tuplet 3/2 { g16 f e } f8 \tuplet 3/2 { a16 g f }
  | g2.~
  | g8 \tuplet 3/2 { g16 f e } f8 \tuplet 3/2 { f16 e d } e8 \tuplet 3/2 { e16 d c }
  | c16 e d8 g\rest c b\prallmordent c
  | f,8 \tuplet 3/2 { g16 f e } f8 \tuplet 3/2 { a16 g f } \tuplet 3/2 { g16[ f e] } \tuplet 3/2 { f16[ e d] }
  %10
  | e8 \tuplet 3/2 { f16 e d } e8 c' b\prallmordent c
  | d,8\mordent \tuplet 3/2 { f16 e d } \tuplet 3/2 { g[ f e] } \tuplet 3/2 { f[ e d] }
    \tuplet 3/2 { e[ d c] } \tuplet 3/2 { d[ c b] }
  | c4.
  }
  \break
  \repeat volta 2 {
  \partial 4. f8\rest f4\rest
  | f\rest g8\rest g f! e
  | d fis g g\rest g4\rest
  %15
  | f\rest g8\rest \tuplet 3/2 { f16[ e d] } \tuplet 3/2 { e[ d cis] } \tuplet 3/2 { d[ cis b] }
  | \tuplet 3/2 { cis[ b a] } \tuplet 3/2 { d[ cis b] } cis8 b'\rest b4\rest
  | c\rest c8\rest \tuplet 3/2 { d,16[ e f] } \tuplet 3/2 { f[ g a] } \tuplet 3/2 { a[ bes c] }
  | \tuplet 3/2 { bes[ a bes] } \tuplet 3/2 { c[ bes a] } bes8[ \tuplet 3/2 { c,16 d e] }
    \tuplet 3/2 { e[ f g] } \tuplet 3/2 { g[ a bes] }
  | \tuplet 3/2 { a[ g a] } \tuplet 3/2 { bes[ a g] } a8 d, e cis
  %20
  | d4. f8 f f
  | f4. f8 \tuplet 3/2 { e16[ d e] } \tuplet 3/2 { f[ e d] }
  | e8 d16 e \stemNeutral c8 a' gis\prallmordent a
  | d,8\parenthesize\mordent \tuplet 3/2 { e16 d c } \tuplet 3/2 { d[ c b] } \tuplet 3/2 { c[ b a] }
    \tuplet 3/2 { b[ a gis] } \tuplet 3/2 { a[ gis fis] }
  | \stemUp \tuplet 3/2 { gis[ a b] } \tuplet 3/2 { a[ gis fis] } e8 c' b\prallmordent c
  %25
  | d8\mordent \tuplet 3/2 { c16 d e } d8 \tuplet 3/2 { b16 c d }
    \tuplet 3/2 { c[ d e] } \tuplet 3/2 { d[ e f] }
  | \tuplet 3/2 { e[ d e] } \tuplet 3/2 { f[ e d] } e8 a gis\prallmordent a
  | d,8\mordent \tuplet 3/2 { f16 e d } \tuplet 3/2 { e[ d c] } \tuplet 3/2 { d[ c b] }
    \tuplet 3/2 { c[ b a] } \tuplet 3/2 { b[ a gis] }
  | a4.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \partial 4. b8\rest a4\rest
  %1
  | g\rest g8\rest c b c
  | \slurDotted a'[( gis]) b,\rest c b c
  | b'[( a]) b,\rest c b c
  | \slurSolid a'[( gis]) e\rest gis a b
  %5
  | c2.~
  | c8 \tuplet 3/2 { d16 c b } c8 \tuplet 3/2 { e16 d c } c g' bes,8
  | a4 g8\rest b c4
  | c8[ b] e,\rest e' d e
  | b4 e,4\rest e\rest
  %10
  | c'4 g8\rest e' d e
  | b4 g8\rest a g f
  | e4.
  \partial 4. e8\rest e4\rest
  | e4\rest e8\rest \tuplet 3/2 { e'16[ d c] } \tuplet 3/2 { d[ c b] } \tuplet 3/2 { c[ b a] }
  | \tuplet 3/2 { b[ a g] } \tuplet 3/2 { c[ b a] } b8 e,\rest e4\rest
  %15
  | e4\rest g8\rest a g f
  | e[ gis] a \tuplet 3/2 { a16 b cis! } \tuplet 3/2 { cis[ d e] } \tuplet 3/2 { e[ f g] }
  | \tuplet 3/2 { f[ e f] } \tuplet 3/2 { g[ f e] }
    \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie f2~
  | f4 \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie e2~
  | e4 d8 f, g e
  %20
  | f4. d'8 d d
  | d4. d8 c b
  | c4 \staffLower\stemUp d,8\rest e d c
  | b a b e d c
  | b c\rest \staffUpper\stemDown a\rest a' gis! a
  %25
  | b4 e,8\rest gis a b
  | gis4 g8\rest e' d e
  | b4 g8\rest f e d
  | c4.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \omit TupletBracket
  \repeat volta 2 {
  \partial 4. r8 r4
  %1
  | r4 r8 a gis\prallmordent a
  | e8 \tuplet 3/2 { f16 e d } e8 e, e e
  | \omit TupletNumber
    e'8 \tuplet 3/2 { f16 e d } e8 e, e e
  | e'8 \tuplet 3/2 { f16 e d } e8 \clef treble e' fis gis
  %5
  | a a, a a' a a,
  | \clef bass e' e, e e' e e,
  | f e d g c f,
  | g g, g g' g g,
  | g' g, g g' g g,
  %10
  | g' g, g g' \tuplet 3/2 { f16[ e f] } \tuplet 3/2 { g[ f e] }
  | f8 d e c g' g,
  | c[ g c,]
  }
  \repeat volta 2 {
  \partial 4. c''8 b\prallmordent c
  | g8\parenthesize\mordent \tuplet 3/2 { a16 g f } g8 g, g g
  | g4 r8 d'' cis\prallmordent d
  %15
  | a8\parenthesize\mordent \tuplet 3/2 { b16 a gis } a8 a, a a
  | a4 r8 a' g\prallmordent a
  | d,8 \tuplet 3/2 { e16 d cis } d8 d' cis\prallmordent d
  | g,8 \tuplet 3/2 { a16 g f } g8 c bes\prallmordent c
  | f,8 \tuplet 3/2 { g16 f e } f8 bes g a
  %20
  | d, a d, \tuplet 3/2 { a''16[ g f] } \tuplet 3/2 { f[ e d] } \tuplet 3/2 { d[ c b] }
  | \tuplet 3/2 { b[ a g] } \tuplet 3/2 { g[ a b] } \tuplet 3/2 { b[ c d] }
    \tuplet 3/2 { d[ e f] } g8 g,
  | \tuplet 3/2 { c16[ d e] } \tuplet 3/2 { e[ f g] } \tuplet 3/2 { g[ a b } c8] \stemDown b a
  | gis fis gis a f d
  | e e, e e' e e,
  %25
  | \stemNeutral e' e, e e' e e,
  | d' d, d c'' \tuplet 3/2 { b16[ a b] } \tuplet 3/2 { c[ b a] }
  | gis8[ e] c[ a] e'[ e,]
  | \stemDown << { a8[ e' a] } \\ { \mergeDifferentlyDottedOn a,4. } >>
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
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 827"
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
    \tempo 4 = 100
  }
}
