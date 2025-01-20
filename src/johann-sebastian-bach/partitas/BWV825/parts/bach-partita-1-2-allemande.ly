Global = {
  \key bes \major
  \time 4/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaIAllemande
  %1
  \repeat volta 4 {
  \partial 16 f16
  | f d bes a bes d f, bes
    \change Staff = "lower" \voiceTwo \stemUp
    d, f bes, d f
    \change Staff = "upper" \voiceOne \stemDown
    aes d f
  | g es bes a bes es g, bes
    \change Staff = "lower" \voiceTwo
    \clef treble \stemUp es, g bes, es g
    \change Staff = "upper" \voiceOne \stemDown
    bes es g
  | a es c bes c es a, c
    \change Staff = "lower" \voiceTwo
    \clef treble \stemUp es, a c, es a
    \change Staff = "upper" \voiceOne \stemDown
    c es a
  %5
  | \stemNeutral bes f d c d f bes, d f, bes d, f r g8 f16
  | r c' e, d e g c, e r a, c ees d c c' d,^1
  | es^2 g^1 c b c es a, c
    \change Staff = "lower" \voiceTwo \stemUp
    \clef treble fis, a
    \change Staff = "upper" \voiceOne \stemDown
    c es d c a' c,
  | \stemNeutral r c bes a bes^2 d^1 e^3\parenthesize\mordent f g c, bes a bes g' bes, f'
  | bes, f' e d e g a\parenthesize\mordent bes c f,^2 e!^1 d^2 e c' e, bes'
  %10
  | e, bes' a g f a e a d, a' d,^3 c bes d a d
  | g, a' g f e g d g c, g' c,^3 bes a c g c
  | f,=' g' f e d f c f bes, f' bes,^3 a g bes f bes
  | \stemNeutral e,4\prall r8 c f g16 a bes8 a16\prall g
  | a4 r16 c, f g a f b c d f, c' b
  %15
  | \stemUp c4 \stemNeutral r8 g^1 c^2 d16 e f8 e16\prall d
  | e8^1 f16 g aes8 g16^2 \prall f g8^1 aes16 bes c8 bes16\prall aes |
  | bes g e c bes g c e f c a f r g bes e
  | \stemUp f8. es16 d8. d16 e\rest d c8 f16\rest a, bes8
  | a f r16 f8 e16 <a, c f>4..
  }
  \break
  \repeat volta 4 {
  \partial 16 \stemUp c'16
  | c16 a f e f a c, f \stemDown a, c
    \change Staff = "lower" \voiceTwo \stemUp
    f, a c
    \change Staff = "upper" \voiceOne \stemDown
    ees! a bes
  %20
  | \stemNeutral c a es d es a c, es \stemDown a, c
    \change Staff = "lower" \voiceTwo \stemUp
    fis, a d
    \change Staff = "upper" \voiceOne \stemDown
    fis a c
  | \stemUp bes2~^4 bes16 bes^5 a^3 g a c fis,^2 g^4
  | fis4 c16 es a, c fis, a d fis g d a' d,
  | bes'4 f16 aes d, f b,^1 d^2 g^1 b c g d' f,^1
  | es^2 g a b c es bes es aes, es' aes,^3 g f aes^5 es aes
  %25
  | d, f g a bes d aes d g, d' g, f es g d g
  | c, es f g aes c g c f, c' f, es d f c f
  | b,4\parenthesize\prall r8 g c d16 es f8 es16\prall d
  | es4 r16 g, c d es c fis g a c, g' fis
  | g4 \stemNeutral r8 d g a16 b c8 b16^3\prall a
  %30
  | b8^3 c16^1 d es8 d16\prall c^1 d8^2 es16 f g8 f16\prall es
  | f='' d b g^1 f^2 d g b c g es c r d f b
  | c g es c es g c d es c a g a c f, c'
  | d f bes, a bes d f g aes f d c d f bes, f'
  | g='' bes es, d es g a\parenthesize\mordent bes c f, es d es f c^1 es^5
  %35
  | d aes^3 g^2 d^1 e^2 g^3 bes^4 g^1 a es' d c d bes f a
  | bes d f g aes f d bes r bes es g bes g e des
  | r c es a c a ges es d bes' g e f bes, a es'
  | d aes g c bes f es a <bes f d>4..
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  \partial 16 s16
  %1
  | s1*12
  | d16\rest f e d
    \change Staff = "lower" \voiceThree \stemUp
    c bes a g s2
  | \change Staff = "upper" \voiceTwo \stemDown
    f'16\rest a g f
    \change Staff = "lower" \voiceThree \stemUp
    e d c bes! s2
    \change Staff = "upper" \voiceTwo \stemDown
  | s1*2
  %17
  | r16 bes' a8 g16\rest a bes8 e,8. f16 g8. g16
  | d16\rest e f b, c8
    \once\override NoteColumn.force-hshift = #0 bes
    s4..
    \partial 16 s16
  | s1*2
  %21
  | e16\rest a g fis g bes d, f ees2
  | b16\rest d c bes s2.
  | d16\rest g f ees s2.
  | s1*4
  %28
  | a,16\rest c b a s2.
  | c16\rest ees d c s2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \partial 16 s16
  %1
  | s1*3
  | s2. bes8 a
  %5
  | g4 s fis s
  | g s2.
  | s1*10
  | e'16\rest d c8 a'16\rest c, d8 f16\rest a,^2 bes8 e16\rest f,^3 g8
  | e'16\rest g, aes8~ aes
    \change Staff = "upper" \stemDown
    \once\override NoteColumn.force-hshift = #0.3 g
    \change Staff = "lower"
    s4..
    \partial 16 s16
  | s1*8
  %27
  | c16\rest g f ees d c b a g ees' d c b d g, b
  | s4 g'16 f ees d c bes a g fis d' d, c'
  | s4 b'16 a g f! s2
  %30
  | s1*8
  | f'8\rest ees d c s4..
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 4 {
  \partial 16 r16
  %1
  | bes4 r r2
  | bes4 r a'2\rest
  | \clef bass bes,4 r a'2\rest
  | \clef bass bes,4 r r2
  %5
  | \stemDown bes4 r a r
  | g r a'2\rest
  | \clef bass \stemNeutral g,8 g'4 f8 e e'4 d8
  | c c,4 bes8 a a'4 g8
  | f \clef treble f'[ a c] bes bes, d f
  %10
  | \clef bass e, \clef treble e'[ g bes] a a, c e
  | \clef bass d, \clef treble d' f a g \clef bass g, bes d
  | c,16 c' bes a g_1 f e d c a' g f e g c, e
  | c,8 r b'4\rest f'16_1 e d c b g' g, f'
  | c,8 r b'4\rest a'16 c f e! aes, d c b
  %15
  | g bes des^2 c^1 f, c' bes aes e bes'^2 aes!^3 g^1 f e! d c
  | e'8 g c, bes a bes c c,
  | f8. a16 bes8. a16_3 g8. f16 e8. e16
  | f8. d16_3 \stemDown c8 c, \stemUp <f f'>4..
  }
  \repeat volta 4 {
  \partial 16 r16
  | f4 r b2\rest
  %20
  | fis4 r b2\rest
  | \stemNeutral g8 a bes g c bes c a
  | d4 r r8 c bes a
  | g4 r r8 f' es d
  | c c' es g f f, aes c
  %25
  | bes, bes' d f es es, g bes
  | aes, aes' c es d d, f aes
  | \stemDown g,4  s2.
  | \stemNeutral g,8 d'\rest b4\rest s2
  | g8 d'\rest d4\rest ees'16 g c d fis, ees' d c
  %30
  | g \clef treble d' ees f a, g' f ees b f' ees d c ees d c
  | d8 f \clef bass g, f es f g g,
  | c g' c bes! a c f, a
  | bes, d f bes d f bes, d
  | es d c bes a c f, a
  %35
  | bes d g, c f, bes es, f
  | bes, aes' d f bes,, bes' es g
  | \stemUp \clef bass bes,, \clef treble c' ees a bes16 d,_3 c bes \stemDown f'8 \clef bass f,
  | bes2 <bes, bes'>4..
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
    composer = ##f % "Johann Sebastian Bach
    opus = ##f % "BWV 825"
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
