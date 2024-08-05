Global = {
  \key g \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 16 bes16
  %1
  | bes4~ bes16 g' fis g c,4~ c16 a' g a
  | \stemNeutral d, g, bes d g bes a g fis g a ees d c bes a
  | \stemUp bes4~ bes16 bes c ees a,4~ a16 a bes d
  | g,4~ g16 g a c fis, a c d g, bes d ees
  %5
  | \stemNeutral a, c d fis bes, d fis g a g fis e d ees ees\prall d32 ees
  | \stemUp f2 s
  | s1*4
  %11
  | r4 r8 cis8\prall d16 e f bes e,8.\prall d16
  | \once\shape #'((0 . 1) (0 . 2) (0 . 2.5) (0 . 1)) Tie
    d2~ <a d>4~ q8.
  }
  \break
  \repeat volta 2 {
  \partial 16 \stemNeutral a16
  | a16 a' fis d a fis g a b a g c d ees f g
  | ees8 d16 c g'8.\mordent g16 g bes, a c bes\prall a g e'
  %15
  | f8. ees16 d c bes a g f g bes c d ees c
  | bes a g f f'8. a,16 bes ees d c \stemUp\tieUp c8.\trill bes16
  | \stemNeutral\tieNeutral bes4~ bes16 d c d ees, d c8~ c16 a' bes c
  | fis, d' a fis d cis d e fis e d g a bes c d
  | bes a g a bes c d ees f8 bes, aes'8.\mordent bes16
  %20
  | \stemUp\tieUp g2 f4~ f16 ees d c
  | b4\prall ees8.\mordent ees16 ees d c bes a bes c g
  | fis g a8 a8.\mordent a16 a g fis g c8. c16
  | c4 r8 fis,8 g16 a bes ees a,8.\prall g16
  | \once\shape #'((0 . 1) (0 . 2) (0 . 2.5) (0 . 1)) Tie
    g2~ <d g>4~ q8.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 16 e16\rest
  %1
  | g4 d\rest a' d,\rest
  | s1
  | e16\rest g f d ees4~ ees16 f ees c d4~
  | d16 ees d bes c4~ c8 \change Staff = "lower" \stemUp\tieUp a bes g
  %5
  | fis a d,4~ d8 d'~ \stemNeutral d16 c b a
  | \change Staff = "upper" \stemDown\tieDown
    <b' d>4~ b16 c c^\prall b32 c d16 ees ees16^\prall d32 ees f16 aes g f
  | ees c ees g c bes a g fis g a ees d c bes a
  | \stemUp\tieUp bes2 a~
  | \stemNeutral a16 d, f a d f e d cis d e bes a g f e
  %10
  | \stemUp fis g a ees d c bes a bes c d \change Staff = "lower" aes g f ees d
  | \change Staff = "upper" \stemDown\tieDown
    s2 d''4 cis!
  | g16\rest c bes a << { g16 a bes8 } \\ g4 >> fis~ fis8.
  \partial 16 s16
  | s1*3
  %16
  | s2. a4
  | s1*3
  %20
  | b16\rest f' ees d c d ees bes a4 aes~
  | aes16 a g8~ g4 a8 e\rest s4
  | s2. e16\rest bes' a g
  | a4 s g fis!
  | c16\rest f ees d << { c16 d ees8 } \\ c4 >> bes~ bes8.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | s1*6
  | s2 s8 d e fis
  | a16\rest g bes \change Staff = "upper" \stemDown\tieDown d g f ees d cis d e
    \change Staff = "lower" \stemUp\tieUp bes a g f e
  | d4 a'8\rest a g4 e!
  %10
  | d8 s4. s2
  | cis16 d e bes a g f e f8 g a[ a]
  | d,4 a''8\rest a16\rest cis d4~ d8.
  \partial 16 s16
  | s2 c8\rest c4 b8
  | c16\rest c8. s2.
  %15
  | s1*3
  | s2 a8\rest g4 fis!8
  | g8 s s2.
  %20
  | s1*4
  | s4 a8\rest a16\rest fis g4~ g8.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 16 r16
  %1
  | r16 g bes d g bes a g fis g a ees d c bes a
  | bes4~ bes16 d c ees d4~ d16 e fis d
  | g4. ees8 f4. d8
  | ees4. c8 \stemDown\tieDown d2~
  %5
  | d8 c bes[ g] d s4.
  | g'16 d g b d ees d c b c d aes g f ees d
  | c4~ c16 c ees g c8 c, bes[ a]
  | g1
  | f4 b8\rest f' e[ d] cis[ a]
  %10
  | d c bes[ a] g f ees[ d]
  | cis4 s2.
  | s4 g'\rest b16\rest fis' g a d,8.
  }
  \repeat volta 2 {
  \partial 16 r16
  | d4^~ d16 a' bes c f,8 ees f[ g]
  | c,16 c' g ees \stemNeutral\tieNeutral c b c d e d c f g a bes c
  %15
  | a g f8 bes d, ees[ ees,] ees' c
  | f16 f, a c ees g f ees d c bes ees f8 f,
  | bes16 bes' f d bes g a bes c bes a d e fis g a
  | d,4~ d16 g fis g \stemDown c,8 bes c[ d]
  | g16 g, bes d \stemNeutral g g f ees d ees f c bes aes g f
  %20
  | ees4 ees'~ ees16 g' f ees d ees f aes,
  | g f ees d c d ees g, fis8 g c[ a]
  | d8 r16 ees' d c bes a bes c d bes a g fis e
  | fis g a ees d c bes a bes8 c d[ d,]
  | g4 g\rest \stemDown g16\rest bes c d g,8.
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 808"
    title = \markup { "Allemande" }
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
