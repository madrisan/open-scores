Global = {
  \key g \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \label #'Praeludium16
  %1
  | g''1~\startTrillSpan
  | g16\stopTrillSpan d es32 d c16  d g c,32 bes a16  bes g' c,32 bes a16
    bes g' a,32 g fis16
  | g1~\startTrillSpan
  | g16\stopTrillSpan e' bes32 a g16  a e' g,32 fis e16  fis8. g16
    fis a d32 c bes16
  %5
  | c16 es d32 c bes16  c a' c,32 bes a16  bes d c32 bes a16  bes g' bes,32 a g16
  | a16 f bes32 c d16  c f, d'32 es f16  es c g'32 a bes16
    a32 bes c16 f,32 g es16
  | \voiceOne r16 bes' g bes  f bes es, bes'  f bes g bes  f bes es, a
  | bes2. f4~  
  | f16 g32 f es f d16  es4~  es16 f32 es d es c16 d4~
  %10
  | d16 es32 d c d b16  c4~  c16 d32 c b c a16 b4
  | r16 c as c  g c f, c'  g c as c  g c f, b
  | c4 es~  es16 a!32 g fis g a16  d, es8.
  | d8 c bes4~  bes16 es32 d c d es16  as, c32 bes as bes c16
  | fis,4  r16 g32 a! bes a g16  c4 bes
  %15
  | a4 g  fis  r16 g' f!32 es! d16
  | \oneVoice es16 c' d,32 c bes16  c a' bes,32 a g16  a es'32 d c bes a16  \voiceOne bes4~
  | bes16 c32 bes as c fis,16  g4~  g fis
  | r16 d32 g f! es d16  es8 d  r16 g32 c bes! a g16  a c32 bes a g fis e
  | fis2 g
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \set Voice.beamExceptions = #'()
  \set Voice.beatBase = #1/4
  \set Voice.beatStructure = 1,1,1,1
  %1
  | s1*6
  | d'8 es d c  d es d c
  | d8 es f g  d es~  es16 d32 c b c d16
  | g,4~  g16 c32 bes! as bes c16  f,4~  f16 bes32 as g as bes16
  %10
  | es,4~  es16 as32 g f g as16  d,4~  d16 es32 f es f d16
  | es8 f es d  es f es d
  | es8 g~ g c~  c4~ c16. c32 a bes c16
  | bes8 fis g d  es2~
  | es4 d  r16 fis32 g a g fis16  r e32 fis g fis e16
  %15
  | r16 d32 e fis e d16  r cis32 d e d cis16  d4 r
  | s2. r16 a'32 g f es d16
  | es4 e  r16 a,!32 bes c bes a16  r16 c32 d es d c16
  | bes8 b c b  c2~
  | c4~  c16 d32 es d es c16~  c c32 b a b c16  b4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \set Voice.beamExceptions = #'()
  \set Voice.beatBase = #1/4
  \set Voice.beatStructure = 1,1,1,1
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  %1
  | bes16 d c es  bes d a c  bes d c es  bes d a c
  | bes8 c bes es  d es d c
  | bes16 c d8~  d16 c8 bes16~  bes16 a8 bes16~  bes16 c8 bes16
  | a8 g e a~  a16 c bes8~  bes16 a8 g16~
  %5
  | g8 g fis4  r8 d e4
  | f!8 g \oneVoice a bes  c bes c a
  | bes1~\startTrillSpan
  | bes16\stopTrillSpan bes, c32 d es16  d bes es32 f g16  f bes, g'32 as bes16
    as32 bes as16 g32 as f16
  | b8 g c bes  as f bes as
  %10
  | g8 es as g  f d g g,
  | c1~\startTrillSpan
  | \override Beam.auto-knee-gap = 3
    c16\stopTrillSpan g32[ f es f g16]  c, c''32[ bes a! bes c16]  fis,2
  | g16 d32 c bes c d16  g, g'32 f es f g16  c,2
  | d16 a'!32 bes c bes a16  bes8 d,  a' d, g d
  %15
  | fis8 d e d  c!16 a'32 g fis g a16  bes,8 b
  | c16 a' bes,! g'  a, fis' g, es'  fis,8 d g g'
  | \voiceThree r8 c 
    \change Staff = "upper" \voiceTwo
    \once\override NoteColumn.force-hshift = #0.4 bes4
    \change Staff = "lower" \voiceThree
    d,2
  | r4 r16 c32 g' f es d16  es2~
  | es16 es32 d c d es16~  es4 d2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \set Voice.beamExceptions = #'()
  \set Voice.beatBase = #1/4
  \set Voice.beatStructure = 1,1,1,1
  %1
  | g8 g g g g g g g
  | g1~
  | g8. f!16 es8 d  c d es d
  | cis2 d8. d16 c8 bes
  %5
  | a4. d8  g,4. c8
  | f,!4 s2.
  | s1*10
  %17
  | c'4  r16 cis32 d e d cis16  r4 d,
  | g1~
  | g4 g4~ g2
  \fine
}

forceBreaks = {
  % page 1
  %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
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
    opus = ##f % "BWV 861"
    title = \markup { "Praeludium XVI" }
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
