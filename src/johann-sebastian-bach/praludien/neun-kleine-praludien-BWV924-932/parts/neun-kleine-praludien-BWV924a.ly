Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral \tieNeutral
  \override Rest.staff-position = #0
  %1
  | r16 g c e r g, c e r g, c d r f, b d
  | r e, b' c r e, a c r e, a b r g b e
  | r f, c' e r f, g d' r e, g d' r e, g c
  | r d, a' c r d, e b' r c, e b' r c, e a
  %5
  | r b, f' a r b, e g r c, e f r g, d' f
  | r g, d' e r g, c e r a, d f r bes, e g
  | r c, f a r c, f a r d, f b r e, g c
  | r d, g b r e, g c r f, b d r g, c e
  | r a, c f r b, d f r g, c e r f, b d
  %10
  | r e, g c r d, f b \stemUp d8\rest c8^~ c4
  | \stemDown a,16 c ees c s2.
  | r8 r16 \once\stemUp a' c[ fis a c,] b32[ g' fis e d c b a]
    << {
      \stemUp b4
    } \\ {
      s16 \stemUp\autoBeamOff\tieDashed f16^~ \magnifyMusic 0.8 { f8 } \autoBeamOn
    } >>
  | c'4\rest d16\rest \stemUp g, c8^~ c16 c b a b4
  | \once\override NoteColumn.force-hshift = #-0.5 c1
   \override Score.TextMark.self-alignment-X = #CENTER
   \textEndMark \markup { \musicglyph "scripts.ufermata" }
   \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  %1
  | s1*9
  %10
  | s2 \stemDown ees,16 g c g ees g c, ees
  | s1
  | s2. r32 g f e d8
  | s2.
    << {
      \once \override Rest.extra-offset = #'(1.3 . 0.0)
      b'16\rest \stemUp a
      \once\override NoteColumn.force-hshift = #-1
      g f
  |   \once\override NoteColumn.force-hshift = #-0.5
      g1
    } \\ {
      s8
      \once\omit Flag\once\omit Stem \hideNotes
      \once\override NoteColumn.force-hshift = #-1
      \once\shape #'((0 . 0) (0 . 0) (0 . 0) (-0.4 . 0)) Tie
      g^~
  |   \once\override NoteColumn.force-hshift = #-0.5
      g1 \unHideNotes
    } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree\tieDown
  %1
  | s1*10
  %11
  | s4 \stemUp a16 c fis, a c, ees g ees c ees a, c
  | f16\rest a, \tieUp d8~ d4~ d d8\rest d32\rest \stemDown c' b a
  | \staffUpper\stemDown\tieDown b16\rest b c d e8. e16 d4~ d16 f e d
  | e1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral
  \tieNeutral
  \mergeDifferentlyDottedOn
  \override Rest.staff-position = #0
  %1
  | c4 e g g,
  | a c e e,
  | a b c e
  | fis gis a c,
  %5
  | d e a, b
  | c bes a g
  | f e d c
  | g' g' g, g'
  | g, g' g, g'
  %10
  | g, g' g,2
  | s1
  | << { \stemDown fis2 g4 s } \\ { s16 \tieDashed a8.~ \magnifyMusic 0.8 { a4 } s2 } >>
  | g'2~ g4 g,
  | <c g' c>1
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
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 924a"
    title = \markup { "Praeludium ex c" \small \raise #1.2 \natural }
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
    \tempo 4 = 60
  }
}
