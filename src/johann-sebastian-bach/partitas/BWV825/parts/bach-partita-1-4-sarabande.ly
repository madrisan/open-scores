Global = {
  \key bes \major
  \time 3/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaISarabande
  \set baseMoment = #(ly:make-moment 1/8)
  \repeat volta 4 {
  %1
  | d8. d16 d8~ d32 c bes a bes16 d f g,
  | aes8.\mordent aes16 aes8~ aes32 bes aes g aes16 d f aes,
  | \set subdivideBeams = ##t
    \stemNeutral\tieNeutral g es'32 d c d es16
    \set subdivideBeams = ##f
    f, d' a bes es, a32 bes c16 es,
  | es8.\prall d16 d8~ d32 f es d es f g a bes16 g
  %5
  | \stemUp f e g c c8^~ c32 d es d c16 bes a32 bes g16
  | g fis a c32 ees ees8. d32 c
    \set subdivideBeams = ##t
    d c bes16 c32 bes a16
    \set subdivideBeams = ##f
  | \stemNeutral bes16~ bes64 a g fis g16 a
    \set subdivideBeams = ##t
    bes g32 a bes c d16 d e32 f g32 f e f
    \set subdivideBeams = ##f
  | g c, bes a bes16 g'
    \stemUp\tieUp g8~ g32 f e d s4
  | \stemNeutral\tieNeutral a16 c,32 e f16 a a f32 g a16 c c a32 bes c16 f
  %10
  | \set subdivideBeams = ##t
    f a32 g f e d16 c f32 e d c bes16 a c32 bes a g f16
    \set subdivideBeams = ##f
  | d'32 c bes a bes16 g f~ f64 g f e f32 d bes'16 e,8.\prall f16
  | f4 <a, c f>2
  }
  \pageBreak
  \repeat volta 4 {
  | \stemUp\tieUp c'8. c16 c8~ c32 bes a bes
    \set subdivideBeams = ##t
    c32 bes a bes a g a64 g f32
    \set subdivideBeams = ##f
  | \stemNeutral f'8.f16 \stemUp f8~ f32 g f ees
    \set subdivideBeams = ##t
    f32 ees d ees64 d c64 d c bes c32 a
    \set subdivideBeams = ##f
  %15
  | bes16 f32 a bes16 d ees4~
    \set subdivideBeams = ##t
    ees16 c32 d ees d c16
    \set subdivideBeams = ##f
  | d8. d16 \stemUp d8~ d32 c bes a
    \set subdivideBeams = ##t
    bes f bes c d ees f g
  | \stemNeutral aes g f ees d ees f16
    \set subdivideBeams = ##f
    b, d f aes g8~\prall g32 f ees d
  | \set subdivideBeams = ##t
    ees d c bes aes bes c16
    \set subdivideBeams = ##f
    f,16 aes c ees d8.\prall c32 b
  | c16 es, es32\prall d es16 a fis fis32\prall e fis16 es' b b32\prall a b16
  %20
  | c8. c16 \stemUp c8~ c32 g a bes \stemNeutral c32 d c bes c16 d
  | ees2.~\upprall
  | ees~
  | es16 d32 c d16 bes'~ bes a32 g a16 c,~ c bes32 a bes16 g'
  | bes,8 a32\prall g a c f,2_~
  %25
  | f16 bes,32 c d16 f f d32 es f16 aes aes4~
  | aes16 g32 aes bes16 des des bes32 c des16 g g bes, a bes~
  | \set subdivideBeams = ##t
    bes32 d, es f g a bes c d16 es32 d c d es c
    \set subdivideBeams = ##f
    bes16 g a\mordent bes
  | bes4 <d, f bes>2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \mergeDifferentlyDottedOn
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  | <f bes>4 q8 e\rest s4
  | s <d f> s
  | s2.*2
  %5
  | s16 \autoBeamOff e8.*1/3 g8 \autoBeamOn <e g>8 e\rest s4
  | s16 \autoBeamOff fis8.*1/3 a8*1/2 c16 \autoBeamOn <fis, c'>8 e\rest s4
  | s2.
  | s4 <g bes c>8 e\rest c'16 bes bes^\prall a
  | s2.*4
  %13
  | <f a>4 q8 f\rest s4
  | s4 <a c>8 g\rest s4
  | \autoBeamOff s16 f8.*1/3 bes8 \autoBeamOn
    \set subdivideBeams = ##t
    g16\rest g32 a bes a g16 a4
    \set subdivideBeams = ##f
  | e32\rest c' bes a bes8 <f bes>8 e\rest s4
  | s2.*3
  %20
  | s4 <c ees g>8 d\rest
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | s2.
  | <d f>4 s2
  | s2 c4
  | c s2
  %5
  | s2.*2
  | s2 d4\rest
  | s2.*4
  | f,8.\rest a,32 c f2
  | s2.*6
  %19
  | s4 g s
  | s2.*8
  | a8.\rest d,32 f bes2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 4 {
  %1
  | <bes d>4 <bes, bes'> r
  | bes' <bes, bes'> r
  | <bes' es> <bes d> bes8 a
  | bes f <bes, f' bes>4 r
  %5
  | \stemNeutral <bes' c> <bes, g'> r
  | <a' c> <a, a'> r
  | <g' d'> <g, g'> f'!
  | <e c'> <e, e'> r
  | f' f, e'
  %10
  | d d, c'
  | bes c c,
  | \stemDown f2.
  }
  \repeat volta 4 {
  \stemNeutral <f' a c>4 <f, f'> r
  | <ees'! a> <ees, ees'> r
  %15
  | d' c f
  | bes <bes, bes'> r
  | <b' d> <g d'> r
  | <c, c'> <aes' c> r
  | <fis a> g <g, g'>~
  %20
  | <c g'> <c, c'> r
  | c'16 d ees g c g f ees d c bes! g'
  | a, bes c f a c bes a g f \clef treble f' a,
  | bes8. g'16 e8. f16 g,8. e'16
  | \clef bass f,4~ f8~ f32 g32 f es es8.^\downprall d16
  %25
  | d4 d,8. d'16 c8.^\upprall bes16
  | es4 e4..^\upprall d!32 e
  | f4 ees f
  | \stemDown bes,2.
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
    composer = ##f % "Johann Sebastian @composer_lastnam@"
    opus = ##f % "BWV 825"
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
    \tempo 4 = 56
  }
}
