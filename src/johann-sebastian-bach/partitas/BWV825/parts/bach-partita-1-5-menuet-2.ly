Global = {
  \key bes \major
  \time 3/4
  \include "../../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaIMenuetII
  %1
  \repeat volta 2 {
  | bes2 f4
  | g aes r
  | \stemUp g es' d
  | c4 bes8 a g f
    %\break
  %5
  | <f bes>2 f4
  | g aes r
  | \stemUp g ees' d
  | \slurDown\grace d8 c2.
  }
  %\break
  \repeat volta 2 {
  | f2 c4
  %10
  | d ees e\rest
  | fis, d' c
    %\break
  | bes\parenthesize\prall a8 bes g4
  | \stemNeutral <bes ees>2 <aes d>4
  | \stemUp g'4 f f\rest
  %15
  | \grace bes,8 <f a>2 <f bes>4
  | <d f bes>2.
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  %1
  | s2.*2
  | g4 a bes
  | a s2
  | s2.*2
  | g4 a bes
  | a2.
  | a4 bes c
  %10
  | bes a g
  | fis d a'
  | g fis g
  | s2.
  | g4 a bes
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | f4\rest c d
  | ees f2
  | ees2 f4~
  | f c ees~
  %5
  | ees c d
  | ees f2
  | ees2 f4
  | s2.
  | c2 f4~
  %10
  | f c2~
  | c4 bes8 a g fis
  | g4 s2
  | d'4\rest a bes~
  | bes c d~
  %15
  | d c ees


}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | bes2.~
  | bes2
    \once\override Tie.extra-offset = #'(0 . -0.2)
    d4~
  | d c bes
  | f2 c4\rest
  %5
  | bes'2.~
  | bes2
    \once\override Tie.extra-offset = #'(0 . -0.2)
    d4~
  | d c bes
  | <f f'>2.
  }
  \repeat volta 2 {
  | f4 g a
  %10
  | bes2 bes4
  | a fis d
  | g2.^~
  | g2 f!4
  | ees2 d4
  %15
  | f2.
  | <bes, bes'>2.
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
    composer = ##f % "Johann Sebastian @composer_lastnam@"
    opus = ##f % "BWV 825"
    title = \markup { "Menuet II" }
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
    \tempo 4 = 140
  }
}
