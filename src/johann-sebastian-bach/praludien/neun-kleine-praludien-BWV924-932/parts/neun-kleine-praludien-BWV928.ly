Global = {
  \key f \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp
  \override Rest.staff-position = #0
  %1
  | r16 f a c bes g c g a8^\mordent[ f'] f[ e]
  | f[ c] f[ f] f16 d b g e'8[ e]
  | e16 a, c e \stemNeutral a d, c d b g b d g c, b c
  | \stemUp a f a c f4~ f16 f e8~ e16 e d8~
  %5
  | d16 g, c8~ c16 c8 b16 c8[ c'] c[ b]
  | c16 c, e g \stemNeutral f d g d e c f a d, bes' a bes
  | c, a d f bes, g' f g a, f bes d g, e' d e
  | \stemUp f,8[ d'] d[ cis] d16 d, f a g e a e
  | f d f a d a bes g fis d fis a d bes c a
  %10
  | bes d, g bes d bes c a gis e gis b e c d b
  | \stemUp c8[ c] b[ b] e[ a,] g[ g]
  | c[ f,] e[ e] a16 d, e f d'\rest f, e d
  | d'\rest f, g a d\rest a g f d'\rest a b c e\rest c b a
  | \stemNeutral gis e gis b e a, g a f d f a d g, f g
  %15
  | e c e g \stemUp c4~c16 c b8~ b16 b a8~
  | a16 a gis a b8[c ] d c16 d b8. a16
  | a e a b c4 fis,16 a d, fis s4
  | s2 bes8[ g'] g[ fis]
  | g bes16 a s2 e,16 d' c bes
  %20
  | a8[ f'] f[ e] f16 f, a c bes g c g
  | a f a c d8[ d] d16 bes g e c'8[ c]
  | c16 d, f a d g, f g e c e g c f, e f
    \break
  | d bes d f bes4~ bes16 bes a8~ a16 a g8~
  | g16 c, f8~ f16 f8 e16 f2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  %1
  | s2 d8\rest <a' c> <g d'>[ <g c>]
  | <f c'> f\rest f\rest <a d> <b d>16 s8. g8\rest <g c>
  | <a c>16 s8. s2.
  | s4 b16\rest b c d g,8. g16 f8. f16
  %5
  | e8. e16 d8[ f] e[ <e' g>] <d a'>[ <d g>]
  | <c g'>16 s8. s2.
  | s1
  | b,8\rest <f' a> <e bes'>[ <e a>] <d a'>16 s8. s4
  | s1*2
  %11
  | e8\rest a a[ gis] g[ fis] f[ e]
  | ees[ d] d[ cis] c a\rest b a\rest
  | c c\rest d c\rest e c\rest f c\rest
  | s1
  %15
  | s4 f16\rest a f e d8. d16 c8. c16
  | b4 gis'!16[ e a e] b' e, a8 gis4
  | s4 f16\rest a bes g s4 a16 c bes a
  | bes g bes d c a d a e8\rest <bes' d> <a ees'>[ <a d>]
  | <g d'>8 r g'16 f e d c e g, c s4
  %20
  | d,8\rest <a' c> <g d'>[ <g c>] <f c'>16 s8. s4
  | s4 g8\rest <f bes> <g bes>16 s8. e8\rest <e a>
  | <f a>16 s8. s2.
  | s4 e16\rest e f g c,8. c16 bes8. bes16
  | a8. a16 g8 <bes c> <a c>2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | s1*5
  | c8\rest e d4 c bes
  | a g f e
  | s2 c'8\rest a <e bes'>[ <e a>]
  | a s4. s2
  %10
  | s1*10
  %20
  | s2 f8\rest <a c> <g d'>[ <g c>]
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r2 r16 f a c bes g c g
  | a c a f d d' c d g, b g e c c' b c
  | f,4 r8 <f a d> <f g d'>4 r8 <e g c>
  | <e f c'>[ e'] d[ c] b[ c] a[ b]
  %5
  | c[ e,] f[ g] r16 c, e g f d g d
  | \stemDown e8[ c']~ c[ bes!]~ bes[a ]~ a[g~ ]
  | g[ f]~ f[e ]~ e[ d]~ d[ cis]
  | r16 d f a g e a e f8[ d] d[ cis]
  | d r r d' c[ a] fis[ d]
  %10
  | g r f! r e16 f e d c a' b, gis'
  | \stemNeutral a a, c e d b e b cis e d c b g c g
  | a c b a gis e a e fis8 r gis r
  | a r b r c r d r
  | e[ d] cis[ a'] d,[ c] b[ g']
  %15
  | c,[ b] a[ g] fis[ gis] a[ c]
  | d4 r16 c b a gis8[ a] e'[ e,]
  | a4 r8 a' d,[ e] fis[ d]
  | g[ g']^~ g fis g16 g, bes d c a d a
  | bes d, g a bes g a f e g c, e g bes a g
  %20
  | f f, a c bes g c g \stemDown a8[ f'] f[ e]
  | f16 a f d bes bes' a bes e, g e c a a' g a
  | d,8[ c'] bes[ g] c,[ bes'] a[ f]
  | bes,[ a'] g[ f] e[ f] d[ e]
  | f[ a,] bes[ c] f,2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    opus = "BWV 928"
    title = \markup { "Praeambulum V" }
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
    \tempo 4. = 54
  }
}
