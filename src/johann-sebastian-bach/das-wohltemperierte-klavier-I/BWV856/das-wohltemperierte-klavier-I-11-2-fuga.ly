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

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  %1
  \partial 8 c'8
  | d8 c bes
  | c8 e,16 f g a
  | bes8 c16 bes a g
  | a16 g f g a bes
  %5
  | c16 bes a bes c d
  | \stemDown e16 g f e d c
  | \stemUp b4.\prall
  | c8 bes! a
  | bes16 a g a bes c
  %10
  | a4
    \change Staff = "upper" \voiceTwo
    d8
  | e8 g c,
  | c4.~
  | c4 f8
  | e4 a8
  %15
  | g4 c8~
  | c16 c b a g f
  | e8. bes'!16 a g
  | f e d e f g
  | a8 r r
  %20
  | R4.
  | b,8\rest b\rest f'
  | a8 g f
  | g8 b,16 c d e
  | f8 g16 f e d
  %25
  | e16 d c d e c
  | f4 r8
  | r8 r c'
  | d8 c bes
  | c8 e,16 f g a
  %30
  | bes8 c16 bes a g
  | a4.~
  | a8 bes16 a g f
  | g4.~
  | g8 a16 g f e
  %35
  | f16 e f g a g
  | a16 bes a g f e
  | d16 cis d f e d
  | cis8 r a'
  | bes8 a g
  %40
  | a8 cis,16 d e f
  | g8 a16 g f e
  | f4 r8
  | cis4.~
  | cis16 a b cis d e
  %45
  | f16 e cis4
  | d4 r8
  | R4.
  | r8 r d
  | es8 d c
  %50
  | d8
    \change Staff = "lower" \voiceFour \stemUp
    fis,16 g a bes
  | c16 bes d c bes a
  | bes16 d c bes a g
  | fis8 a\rest a\rest
  | g16 a bes c d a
  %55
  | bes8 g fis
  | g16
    \change Staff = "upper" \voiceThree \stemDown \tieDown
    d' g f! e d
  | e4.
  | c16\rest c f es d c
  | d4.
  %60
  | c8 d e
  | f8 g a
  | bes4.~
  | bes16 g c bes a g
  | a4.~
  %65
  | a8
    \change Staff = "lower" \voiceFour \stemUp \tieUp
    d,, g~
  | g16 f bes a g f
  | g8 bes,16 c d e
  | f4.~
  | f4 bes8~
  %70
  | bes8
    \change Staff = "upper" \voiceThree \stemDown \tieDown
    e f~
  | f8 e4
  | f4.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-4
  \override Script.direction = #UP
  %1
  \partial 8 b8\rest
  | R4.*8
  | r8 r c
  %10
  | d8 c bes
  | c8 e,16 f g a
  | bes8 c16 bes a g
  | \stemNeutral a16 g f g a bes
  | c16 b a b c d
  %15
  | e16 g f e d c
  | b4.\prall
  | c8 d16 e f8
  | bes4.
  | a16 c bes a g f
  %20
  | e4.\trill
  | \override Rest.staff-position = #0
    f4 r8
  | \override MultiMeasureRest.staff-position = #0
    R4.*3
  %25
  | r8 r c'
  | d8 c bes
  | c8 e,16 f g a
  | bes8 c16 bes a g
  | a16 c bes a g f
  %30
  | e4.\trill
  | f8 g a
  | d,4 r8
  | e8 f g
  | cis,4 cis'8
  %35
  | d8 c! bes
  | a4.~
  | a4.~
  | a4.~
  | a4.~
  %40
  | a4 a8
  | bes8 a g
  | a8 cis,16 d e f
  | g8 a16 g f e
  | f8. g16 f e
  %45
  | d16 g a8 a,
  | d,4 d'8
  | es8 d c!
  | d8 fis,16 g a bes
  | c16 bes d c bes a
  %50
  | \stemDown
    \revert Rest.staff-position
    bes8 r r
  | fis'8 r r
  | g8 r r
  | es8 r r
  | d8 r r
  %55
  | r16 c d8[ d]
  | g,8 a bes
  | c8 d e
  | f8 g a
  | \stemNeutral\tieNeutral bes4.~
  %60
  | bes16 g c bes a g
  | f16 c f es d c
  | bes16 c bes a g f
  | e4 r8
  | f8 g a
  %65
  | \stemDown bes4 r8
  | a4 r8
  | g4 r8
  | f8 g a
  | bes8 c d
  %70
  | e8 c f
  | \stemNeutral bes,8 c c,
  | f4._\fermata
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
