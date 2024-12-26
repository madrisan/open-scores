Global = {
  \key g \minor
  \time 2/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIIGavotteI
  \repeat volta 2 {
  \partial 2 g'4 bes8 a
  %1
  | bes4 g8 d a'4 fis8 d
  | g2 ees4 c8 a
  | d4 bes8 g c a d4
  | bes4 a8 g g'4 bes8 a
  %5
  | bes4 g8 d a'4 fis8 d
  | g4. f8 ees( d c bes)
  | a'( bes) d,( ees) f c d4
  | \alternative {
      { \once\stemUp\once\slurDown \appoggiatura c8 bes2 }
      { \once\stemUp\once\slurDown \appoggiatura c8 bes2 }
    }
  }
  \pageBreak
  \repeat volta 2 {
  \partial 2 d4 f8 ees
  | f4 d8 bes g'4 ees8 bes
  %10
  | f'2 bes8 a g a
  | bes g e c bes' a g a
  | bes a g f g f e f
  | g e cis a g' f e f
  | g f e d a'4 a
  %15
  | a1~
  | a8 f g a bes( a g f)
  | e( d cis d) g( f e f)
  | d2 d4 f8 ees
  | f4 d8 b aes'4 f8 d
  %20
  | ees4 c8 g g'4 ees8 c
  | d4 bes8 g g'4 d8 bes
  | c4 a8 fis ees'4 c8 a
  | d4 bes8 g c a bes g
  | a d, e fis g a bes g
  %25
  | ees' c d bes c a bes g
  | a4 d, g bes8 a
  | bes fis g d b' f g d
  | c' d, ees g c g d' g,
  | ees' b c g e' bes c g
  %30
  | f' g, a c fis c g' c,
  | a' e fis d bes' fis g d
  | c' a d, c' bes a g fis
  | g d ees c bes4\prall a8 g
  | g2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \repeat volta 2 {
  \partial 2 g4 d'
  %1
  | g bes c d
  | ees8 f ees d c bes a c
  | bes a g bes a g fis d
  | g4 d bes d
  %5
  | g bes c d
  | ees8 f ees d c bes a g
  | f4 g ees f
  | \alternative {
      { \once\omit Slur \appoggiatura s8 bes,8 c bes a }
      { \once\omit Slur \appoggiatura s8 bes8 f' g a }
    }
  }
  \repeat volta 2 {
  \partial 2 bes4 c
  | d bes ees c
  %10
  | d8 c bes a g4 f
  | e c d e
  | f g8 a bes4 g
  | e a, b cis
  | d d, d'' f8 e
  %15
  | f4 d8 a e'4 cis8 a
  | d2 g,4 a
  | bes4 g a a,
  | d,8 d' ees f g4\mordent g\mordent
  | g1~\upprall
  %20
  | g2 g4\mordent g\mordent
  | g2 g4\mordent g\parenthesize\mordent
  | g2 g8 g g g
  | g g g g g fis g4
  | d4 c bes d
  %25
  | fis, d' g, d'
  | d, d'8 c bes4 a
  | g r f! r
  | ees g'8 f ees4 d
  | c r bes! r
  %30
  | a4 c'8 bes a4 g
  | fis r e r
  | d fis g a
  | bes c d d,
  | g,2
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
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 808"
    title = \markup { "Gavotte I" }
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
