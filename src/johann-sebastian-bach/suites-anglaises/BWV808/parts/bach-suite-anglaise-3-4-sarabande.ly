Global = {
  \key g \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | <d bes'>8 <c a'> a'4 . c16 bes
  | c8 a fis4. a16 g
  | a8 ees ees4 d8.\prall c16
  | bes4. a8 g4
  %5
  | d'8 f16 e f4. d8
  | e g16 fis g4. a8
  | fis16 g fis g g4.\prall fis16 g
  | a4 a2
  }
  \repeat volta 2 {
  | bes8 d <bes d f>4.\arpeggio bes8
  %10
  | aes16 f g8 g2
  | d'8 f aes4 g8\prall f16 aes32 g
  | ees4. d8 c4
  | ees2.~
  | ees~
  %15
  | ees~
  | ees4 <bes ees>2
  | des8 bes~ bes4. bes16 aes!
  | bes8 g~ g4. g16 f
  | g8 e~ e4. bes'16 a
  %20
  | a16 c32 bes a bes c16~ <a c>4 fis8.\prall e32 fis
  | g2.~
  | g~
  | g16 a bes g fis g cis, bes' g8.\prall a32 fis
  | <d g>4 q2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  << {
  | g'4 c,2~
  | c4 c2~
  | c4 a2
  | s2.
  %5
  | bes4 b2
  | c4 c2~
  | c4 cis2
  | c8\rest cis d2
  }
  \new Voice {
  | \change Staff = "lower" \stemUp\tieUp
    s2.
  | d4\rest a2~
  | \once\override NoteColumn.force-hshift = #0 \once\omit Stem a4 s2
  | s2.
  %5
  | s4 g2~
  | g4 s2
  | s2.
  | e'4\rest s2
  } >>
  | f4 f2~
  %10
  | f8 b,\rest <d f>2
  | d'2.
  | g,4. f8 ees4
  | <a c> <fis a>2
  | <bes des>4 <g bes>2
  %15
  | <f ces'>4 \stemUp aes ces
  | \shiftOn ces8 aes s2
  | \stemDown e4\rest \grace aes16 g4.\prall s8
  | d4\rest \grace f16 e4.\prall s8
  | c4\rest \grace d16 cis4.\prall s8
  %20
  | << {
      \stemDown s4 d8. e32 fis
    } \\ {
      c8\rest a'~ \stemUp \once\omit Stem a4
    } >>
    s
  | <b, d> <b f'>2
  | <c ees>4 q2
  | <bes e>8 b8\rest b\rest cis \once\stemUp
    << {
      d4
  |   s2.
    } \\ {
      c4~
  |   c8 a bes2
    } >>
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | <d g>4 ees2~
  | ees2._~
  | \once\override NoteColumn.force-hshift = #0 <ees a>4 <c fis>2
  | <d g>2.~
  %5
  | q4 d2
  | c8 d <ees a>2~
  | q4 <e bes'>2
  | a8\rest e <fis a>2
  | <f bes>2.
  %10
  | q4 g2~
  | g4 f ees8\prall d
  | a'4\rest g c
  | s2.*2
  %15
  | \change Staff = "upper" \stemDown\tieDown
  | s4 f2~
  | f4 g2
  %17
  | \change Staff = "lower" \stemUp\tieUp
    a,4\rest <e des'>2
  | a4\rest <e cis'>2
  | a4\rest <e g>2
  | a4\rest a2
  | s2.*3
  %24
  | a4\rest g2

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  \repeat unfold 6 {
  | g2.~
  }
  | g
  | d'4 d2
  }
  \repeat volta 2 {
  | d2.~
  %10
  | d4 b2~
  | b2.
  | c
  | \stemNeutral fis,8 a c a g^\prall fis
  | g bes des bes aes^\prall g
  %15
  | aes ces d ces bes^\prall aes
  | ees'4 ees,2
  | \stemDown e2.~
  | e~
  | e
  %20
  | fis
  | \stemNeutral f8 b d f aes d,
  | ees b c aes fis g
  | cis,4 d2
  | \stemDown g2.
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
