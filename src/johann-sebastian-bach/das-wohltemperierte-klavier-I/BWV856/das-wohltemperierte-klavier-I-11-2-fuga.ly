\language "nederlands"
Global = {
  \key f \major
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \partial 8 b8\rest
  %1
  | R4.*3
  | b8\rest b\rest f
  %5
  | a8 g f
  | g8 b,16 c d e
  | f8 g16 f e d
  | e16 d c d e f
  | g8 f e
  %10
  | f16 e d e f g
  | a16 c bes a g f
  | e4.\prall
  | f8 a4
  | g8 c4
  %15
  | b8 e4
  | d4.~
  | d16[ d c8] c
  | d8 c bes
  | c8 e,16 f g a
  %20
  | bes8 c16 bes a g
  | a16 g f g a bes
  | c16 bes a bes c d
  | e16 g f e d c
  | b4.\prall
  %25
  | c16 d e f g a
  | bes,!16 c d e f g
  | a16 c bes a g f
  | f8 e4\prall
  | f8 r r
  %30
  | g4.~
  | g16 g f e d c
  | f4.~
  | f16 f e d cis b
  | e4.~
  %35
  | e8 a, d
  | cis4 a'8
  | bes8 a g
  | a8 cis,16 d e f
  | g8 a16 g f e
  %40
  | f16 a g f e d
  | cis4.~
  | cis16 d32 c! bes16 a g f
  | bes8 a g
  | a4.~
  %45
  | a16 bes! e,8.\prall d16
  | d16 e f g a bes
  | c! bes c d es d
  | fis,16 e! d e fis g
  | a4.~
  %50
  | a16 g a bes c d
  | es8 d c
  | d8 fis,16 g a bes
  | c16 bes d c bes a
  | bes16 fis g a bes cis
  %55
  | \stemNeutral d16 g bes,8\prall a16 g
  | \stemUp g8 bes4~
  | bes16 g c bes a g
  | a4.~
  | a16 f bes a g f
  %60
  | e!8 f g
  | a8 bes c
  | d8 e! f
  | g4.~
  | g16 c, f es d c
  %65
  | d16 c es d c bes
  | c8 e,!16 f g a
  | bes a c bes a g
  | a16 g bes a c bes
  | d16 c e d f e
  %70
  | g16 a, bes g a8~
  | a16 bes g8. f16
  | f4.\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \partial 8 r8
  | R1*3/8*72
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
    opus = ##f % "BWV 856"
    title = \markup { "Fuga XI " \char ##x007E " à 3" }
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
