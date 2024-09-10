Global = {
  \key d \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  | s1*4
  | \highlightSubject { f'4\rest a,32 b cis d cis b cis a fis'8. fis16 e8. d16
  | \unHighlightSubject cis8.*5/6 } e32 fis g! a8. a16 a8.*5/6 d,32 e fis! g8. g16
  | g4 <d fis>8. <cis e>16 d8. e16 cis8. cis16
  | cis4 \highlightSubject { b32 cis d e d cis d b g'8. g16 fis8. e16
  | d4 } b'16 a b gis gis fis gis e e d e cis
  %10
  | cis4 a'16 g a fis fis e fis d d c d b
  | b4 \highlightSubject { g32 a b c b a b g e'8. e16 d8. c!16
  | \unHighlightSubject b8. } cis16 d2 cis4
  | d \highlightSubject { d32 e fis g fis e fis d b'8. b16 a8. g16
  | \unHighlightSubject fis8.*5/6 } d32 e fis g8. g16 g8. a16 fis8. fis16
  %15
  | fis8. e32 dis e4~ e8. dis!16 e8. fis16
  | b,8. c32 a
    \once\override Beam.positions = #'(4 . 4)
    b8. c16
    g4 fis
  | e32 fis g a g fis g e g'8 g\rest
    \clef bass
    s2
    \clef treble
  | a,32 b cis d cis b cis a fis'8 f\rest
    \clef bass
    s2
    \clef treble
  | g,32 a b c b a b g e'8 e\rest
    \clef bass
    s2
    \clef treble
  %20
  \break
  | fis,32 g a b a g a fis d'8. d16 d8. e16 cis8.\prall d32 e
  \break
  | fis4 b16 a b g g fis g e e d e cis
  | cis4 d8. d16 d8. e16
    \set minimumBeamSubdivisionInterval = \musicLength 16
    \set subdivideBeams = ##t
    \tuplet 3/2 { cis32 d cis } \tuplet 3/2 { d cis b } cis16 d
    \set subdivideBeams = ##f
  | d4 b32 cis d e d cis d b e4 a,32 b cis d cis b cis a
  | d4 g,32 a b c b a b g cis d e fis e d e cis fis g a b a g a fis
  %25
  | b8. cis,16 d8. e16 fis8. fis,16 g8. a16
  | <g b>8. <d b'>16 <e cis'>8. <fis d'>16 fis4 e
  | d1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | s1*3
  | \stemUp\tieUp
    \highlightSubject { b'4\rest d,32 e fis g fis e fis d b'8. b16 a8. g16
  %5
  \break
  | \unHighlightSubject fis8. } gis16 \stemDown\tieDown \once\override NoteColumn.force-hshift = #0 a4~ a gis!
  | a cis d d
  | cis8.*5/6 e32 d cis s4 \once\stemUp \shiftOn b a
  | a b2 ais4
  | b b\rest
    \showStaffSwitch \change Staff = "lower" \voiceThree
    d8. b16 b8.
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    <e, a>16
  %10
  | \stemUp a4 b\rest
    \showStaffSwitch \change Staff = "lower" \voiceThree
    cis8. a16 \shiftOff a8.
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    <d, g>16
  | g4 b,\rest b2\rest
  | \showStaffSwitch \change Staff = "lower" \voiceThree e4\rest
    \highlightSubject {
    \once\override Beam.positions = #'(7 . 7)
    d32
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    e fis g fis e fis d b'8. b16 a8. g16
  | \unHighlightSubject fis8. } a16 d2 c4~
  | c b a2
  %15
  | g4 \stemUp \shiftOn b
    \shape #'((0.8 . 1) (0 . 1) (0 . 1) (-0.8 . 1)) Tie
    a2~
  | a4
    \once\override Beam.positions = #'(2.5 . 2.5)
    g8. e16 \stemDown e4 dis
  | e e\rest s2
  | a4 g\rest s2
  | s4 f\rest s2
  %20
  | \change Staff = "lower" \voiceThree
    fis,4 b32 cis d e d cis d b
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    g'2
  | fis4 g\rest

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \change Staff = "upper" \voiceTwo \stemNeutral
    R1
  | \highlightSubject { r4 a32 b cis d cis b cis a fis'8. fis16 e8. d16
  | cis4 } fis8. fis16 b,8.*5/6 b32 cis d e16 d e cis
  | \stemDown a4 d~ d cis
  %5
  | d \once\override NoteColumn.force-hshift = #0.4 cis \showStaffSwitch \change Staff = "lower" \voiceThree b2
  | a4
    \clef treble
    fis'32 g a b a g a fis b4 e,32 fis g a g fis g e
  | a4
    \clef bass \change Staff = "upper" \voiceTwo
    a8. g16 fis8. g16 e4
  | d4
    \change Staff = "lower" \voiceThree d4 cis2
  | b4 d\rest \clef treble \stemDown b'8. gis16 \stemUp \once\omit Flag gis8. s16
  %10
  | \clef bass \hideStaffSwitch \change Staff = "upper" \voiceTwo
    e4 c\rest
    \showStaffSwitch \change Staff = "lower" \voiceThree
    \clef treble
    \stemDown a'8. fis16
    \stemUp \once\omit Flag \shiftOff fis8. s16
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    d4 s2.
  | \change Staff = "lower" \voiceThree
    s1*2
  | \highlightSubject { c4\rest g32 a b c b a b g e'8. e16 d8. c!16
  %15
  | b4 }
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    g' fis2~
  | fis4 e8.
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    fis,16 g8. a16 b8. a16
  | g4 f'\rest
    \change Staff = "upper" \voiceTwo
    <b, e>8. <g cis!>16 q8.
    \change Staff = "lower" \voiceThree
    <e a>16
  | q4 e'\rest
    \change Staff = "upper" \voiceTwo
    <a, d>8. <fis b>16 q8.
    \change Staff = "lower" \voiceThree
    <d g>16
  | q4 d'\rest
    \change Staff = "upper" \voiceTwo
    <g, cis!>8. <e a>16 q8.
    \change Staff = "lower" \voiceThree
    <cis fis>16
  %20
  | s4 c\rest d'\rest a32 b cis d cis b cis a
  | d4 e\rest
    \clef treble
    <b' d>8. <g b>16 q8.
    \change Staff = "upper" \voiceTwo
    <e a>16
  | q4 <fis a>8. q16 <fis b>8. <g b>16 <e a>4
  | <fis a> b,\rest <e b'> b\rest
  | <d a'> a\rest e'2\rest
  %25
  | r8. <e a>16 <fis a>8. <g cis>16 <a d>8. <a, d>16 <b d>8. <c fis>16
  | d8. g16 g8. a16 <a, d>4 <g cis>
  | <fis a>1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \highlightSubject { r4 d32 e fis g fis e fis d b'8. b16 a8. g16
  | \unHighlightSubject fis8. } g16 fis8. e16 d4 e
  | a,8.*5/6 e'32 fis g a2 g4~
  | g8. fis32 e fis8. d16 g8. e16 a8. a,16
  %5
  | d8. e16 fis8. e16 \stemDown\tieDown d8. b16 e4
  | a a\rest b2\rest
  | \highlightSubject { a4\rest \stemNeutral d,,32 e fis g fis e fis d b'8. b16 a8. g16
  | \unHighlightSubject fis8.*5/6 } d'32 e fis g8. fis16 \stemDown e8. cis16 fis4
  | b,32 cis d e d cis d b gis'8 r f2\rest
  %10
  | \stemNeutral a,32 b cis d cis b cis a fis'8 r e2\rest
  | \clef bass g,32 a b c b a b g e'8. d16 c!4 d
  | g8. a16 b8. a16 g8. e16 a8. a,16
  | b32 cis d e d cis d b b'8. a16 g8. e16 a8. a,16
  | d4 e c'!8. c16 \highlightSubject { \unHighlightSubject d8. } d,16
  %15
  | g4 \highlightSubject { e,32 fis g a g fis g e c'8. c16 b8. a16
  | \stemDown \unHighlightSubject g8. } fis16 g8. a16 b2
  | e4 b'16 a b g g fis g e e d! e cis!
  | cis4 a'16 g a fis fis e fis d d cis d b
  | b4 g'16 fis g e e d e cis cis b cis a
  %20
  | <a cis>4 d,\rest e'32 fis g a g fis g e a4
  | d,32 e fis g fis e fis d g8 r b2\rest
  | \clef bass
    \stemNeutral <g, g'>4 fis'32 g a g fis e d cis b cis d cis b a b g a8. a16
  | d,8.*5/6 d'32 e fis g4 cis,32 d e fis e d e cis fis4
  | b,32 cis d e d cis d b e fis g a g fis g e a b cis d cis b cis a d e fis g fis e fis d
  %25
  | g8. g,16 fis8. e16 d8. c16 b8. a16
  | g8. fis16 e8. d16 \stemDown a'2
  | d,1\fermata
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
    opus = ##f % "BWV 850"
    title = \markup { "Fuga V " \char ##x007E " à 4." }
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
    \tempo 4 = 58
  }
}
