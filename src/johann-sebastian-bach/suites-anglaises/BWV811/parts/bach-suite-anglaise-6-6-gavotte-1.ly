Global = {
  \key d \minor
  \time 2/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVIGavotteI
  \repeat volta 2 {
  \partial 2 a'4 a
  %1
  | a4.\trill( g16 a) bes4 a
  | g2 g4 g
  | g8 f g a f e f g
  | e4\prall d a' a
  %5
  | a4.\trill( g16 a) bes4 a
  | g4. a16 bes c8 bes a g
  | f e f bes g4.\trill( f16 g)
    \alternative {
      { a2 }
      { a }
    }
  }
  \break
  \repeat volta 2 {
  \partial 2 e4 e
  | e4.\trill d16 e f4 e
  %10
  | d2 d4 g
  | e4.\trill d16 e f8 g e f
  | d4 c e fis16 g a8
  | fis4.\trill e16 fis g4 a
  | bes4. a16 bes c8 bes a bes
  %15
  | c bes a g bes a g fis
  | \once\override Tie.extra-offset = #'(0 . 0.5)
    g1~
  | \override Tie.extra-offset = #'(0 . 1.5)
    g~
  | g~
    \revert Tie.extra-offset
  | g8 a bes g bes a g fis
  %20
  | g2 d4 d
  | d4. e16 d cis8 d e cis
  | d e f d e f g e
  | f e f a g f e d
  | cis a b cis d e f4
  %25
  | f1~
  | f2 e~
  | e d
  | cis4 d8 e f g a4
  | a4.\trill g16 a bes4 a
  %30
  | g8 bes a g f e d cis
  | a'2 e
  | d
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 2 f4 e
  %1
  | f2 g4 f
  | e2 e4 e
  | e2 d
  | cis4 d8 cis d f e g
  %5
  | f2 g4 f
  | e2 e
  | d4 c d2
  | cis
    cis!
  \partial 2 c4 b
  | c2 d4 c
  %10
  | b2 b4 b
  | c2 d4 c
  | b c c c
  | a2 d4 d
  | d1~
  %15
  | d1~
  | d8 ees f d f ees d c
  | \stemUp
    \once\override NoteColumn.force-hshift = #0.8 ees
    d c b c d ees c
  | \once\override NoteColumn.force-hshift = #0.8
    ees!
    d c bes d c bes a
  | \stemDown bes c d bes d c bes a
  %20
  | bes2 bes4 a
  | g bes a2~
  | a1~
  | a2 e\rest
  | e\rest a4 a
  %25
  | a4.\trill g16 a bes4 a
  | g2 g4 g
  | g8 bes a g f a g f
  | e4\prall d e\rest d'8 e
  | f2 g4 f
  %30
  | e2 g,\rest
  | d' cis
  | d
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 d8 d' cis a
  %1
  | d a d, c' bes a bes g
  | c g c, g' c d e d
  | cis a b cis d cis d g,
  | a a, d e f d cis a
  %5
  | d a d, c'! bes a bes g
  | c g c, bes' a bes c a
  | d e f d bes' a bes bes,
    \alternative {
      { a g' f e }
      { a,2 }
    }
  }
  \repeat volta 2 {
  \partial 2 a8 a' gis e
  | a e a, g' f e f d
  %10
  | g d g, d' g f g e
  | a g f e d b' c f,
  | g g, c bes! a bes c a
  | d a d, c' bes a g fis
  | g bes d g fis4 d
  %15
  | g4 bes, c d
  | b g' a b
  | \change Staff = "upper" \voiceTwo
    c d ees c
  | g' a bes g
  | \change Staff = "lower" \voiceFour
    \stemNeutral
    d1
  %20
  | g,8 d bes d g, d' g f
  | e f g e a bes a g
  | f4 d cis a
  | d c bes g
  | a a'8 g f e d c!
  %25
  | bes c bes a g a bes g
  | c g c, g' c d e d
  | cis4.^\prall cis8 d c bes g
  | a4 d,8 a' d e f cis
  | d a d, c' bes a bes g
  %30
  | c4. cis8 d e f g
  | f,2 a
  | d,
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 811"
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
    \tempo 2 = 80
  }
}
