Global = {
  \key g \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \override MultiMeasureRest.staff-position = #0
  %1
  | R1
  | r2 r8 \highlightSubject { g'8 bes d,
  | cis4 d  r8 e16 f  g8 f16 e
  | \voiceOne \unHighlightSubject f8 } g16 a  bes8 a16 g  a8 bes16 c  d8 c16 bes
  %5
  | c4 bes  a8 d16 c!  bes8 c16 d
  | es8 c a[ fis']  g4 r
  | \oneVoice r8 e, a f!  d4 cis8 e~
  | e8 d g4~  g16 fis g a  bes4~
  | bes4 a~  a16 d, e fis  g4^~
  %10
  | g8 fis16 g  a8 g16 fis  g4. \voiceOne c8
  | f,!8 g16 a  bes2 a4
  | bes4 r r2
  | s1*2
  %15
  | b'8\rest
    \highlightSubject {
    \once\override NoteColumn.force-hshift = #-0.3 c,
    d f,  e4 f
  | r8 g16 a  bes8 a16 g  \unHighlightSubject a8 } bes16 c  d8 c16 bes
  | c8 d16 c  bes8 c16 d  es8 f16 es  d8 es16 f
  | g8 es c[ a']  bes r r4
  | r8 g16 as  bes8 as16 g  as8 as16 g  f8 g16 as
  %20
  | d,8 g4 f16 es  d4. c16 b!
  | c4 b8 d  g, g' as[ c,]
  | b4 c  r8 d16 es  f8 es16 d
  | es16 d es f  g8 r  r d16 c  bes!8 c16 d
  | es16 d c bes  a8 fis'  g r r16 d c bes
  %25
  | a4~ a16 bes c d  g,4~ g16 bes as g
  | f4~ f16 g as bes  es,4~ es16 g f es
  | d4~ d16 d e fis  g4~ g16 bes a g
  | fis8 \highlightSubject { d' es! g, }  r d'16 c  bes8 c16 d
  | es8 d c[ es]  d r r4
  %30
  | r2  b'8\rest d,16 es  f!8 es16 d
  | es4~ es16 d c bes  a4 r8 es'16 d
  | c8 d16 es  d8 e16 fis  g8 fis16 g  a4~
  | a8 d, g f!  es! d c[ bes!]
  | a2 g
    \fine
}

Alto = \context Voice = "two" \relative c {
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  %1
  | \change Staff = "lower"
    r8 \highlightSubject { d' es g,  fis4 g
  | r8 \once\override Beam.positions = #'(-1.5 . -1) a16
    bes  \once \override Beam.positions = #'(-1 . -1.5) c8 bes16 a  bes4 } g
  | r8 a16 g  f!8 g16 a  bes8 g e[ cis']
  | d4.
    \change Staff = "upper" \voiceTwo
    e8  f e f g
  %5
  | \voiceTwo a8 g16 fis  g8 cis,  d a'4 g16 fis
  | g4 fis8 a  d4 g,\rest
  | s1*5
  %12
  | r8 \highlightSubject { f g bes, a4 bes
  | \oneVoice r8 c16 d ees8 d16 c \unHighlightSubject d } e d e f8 e16 d
  | g4. f16 e f4 e8 bes'^~
  %15
  | \voiceTwo \stemUp bes
    \once\override NoteColumn.force-hshift = #0 a^~
    \stemDown a g16 a
    \stemUp \once\override NoteColumn.force-hshift = #-0.3 bes8
    a16 g \stemDown a4^~
  | a8 g16 f e8 c~ c d16 ees f8. g16
  | a4 g r8 \highlightSubject { c d f,
  | es4 f r8 f16 g as8 g16 f
  | g8 } r r4 r8 f'16 es d8 es16 f
  %20
  | b,8 es16 d c8 d16 es f,8 g16 f es8 f16 g
  | as8 f d[ b'] c4 r8 es,
  | d8 es16 f  g8 a!16 b!  c8 b16 c  d8 g,~
  | g8 \highlightSubject { c16[ d]  es8 g,  fis4 g~
  | g8 a16 bes  c8 bes16 a  \unHighlightSubject bes } d, e fis  g4~
  %25
  | g16 g f! es! d4~  d16 bes c d  es4~
  | es16 es d c bes4~  bes16 g a! b  c4~
  | c16 c bes! a g4~  g16 g a bes  c8 cis
  | d4 r \highlightSubject { fis! g
  | r8 a16 bes  c8 bes16 a  a8 } g\rest g4\rest
  %30
  | g8\rest \stemUp fis16 g  a8 g16 fis  g2~ \stemDown
  | g2 r8 \highlightSubject { d' es g,
  | fis4 g  r8 a16 bes  c8 bes16 a
  | bes4. } <g b>8 <a c> r <d, g> r
  | <es g>4 <d fis> d2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | s1*5
  | r2 r8 \highlightSubject { g
    \change Staff = "upper" \voiceTwo
    bes
    \change Staff = "lower" \voiceThree
    d,
  | cis4 d r8 e16 f
    \change Staff = "upper" \voiceTwo
    g8
    \change Staff = "lower" \voiceThree
    f16 e
  | \unHighlightSubject f8 } g16 a bes8 a16 g a8 bes16 c d8 c16 bes
  | c2~ c4 bes8
    \change Staff = "upper" \voiceTwo
    es
    \change Staff = "lower" \voiceThree
  %10
  | a,16 bes a bes c8 bes16 a
    \showStaffSwitch
    \change Staff = "upper" \voiceTwo
    bes8 c16 d es4~
  | es
    \change Staff = "lower" \voiceThree
    d c2
  | d4 r \oneVoice d,8\rest f16 es d8 es16 f
  | g8 es c[ aes'] \voiceThree
    \change Staff = "upper" \voiceTwo
    bes2~
  %15
  | bes8 c16 bes a8 bes16 c d8 bes
    \change Staff = "lower" \voiceThree
    g[
    \hideStaffSwitch
    \change Staff = "upper" \voiceTwo
    e']
    \showStaffSwitch
  | \shiftOn f8. ees16
    \once\override NoteColumn.force-hshift = #0.3 d4
    c4. d16 c
  | \change Staff = "lower" \voiceThree
    bes2 a4 r16 bes c d
  | es!8 f16 es d8 g,~ g f bes as
  | g4 a8 c f, r r4
  | s1*9
  %28
  | s2 r8 \highlightSubject { d' es g,
  | fis4 g r8
    \change Staff = "upper" \voiceTwo
    a16 bes c8 bes16 a
  | \unHighlightSubject bes2~ }
    \once\override NoteColumn.force-hshift = #0.4 bes8
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    b16 a g8 a16 b
  | c4 r s2
  | s1
  | r8 \highlightSubject { d es g, fis4 g
  | r8 a16 bes
    \showStaffSwitch
    \change Staff = "upper" \voiceTwo
    \once\override NoteColumn.force-hshift = #0.9 c8
    bes16 a
    \once\override NoteColumn.force-hshift = #0.4 bes2 }
}

Bass = \context Voice = "four" \relative c' {
  \override MultiMeasureRest.staff-position = #0
  %1
  | s1*4
  | r8 \highlightSubject { d, es g,  fis4 g
  | \voiceFour r8 a16 bes  c8 bes16 a  bes4 } g
  | r8 a16 g  f!8 g16 a  bes8 g e[ cis']
  | d1
  | e8 a16 g  fis8 g16 a  bes,8 c16 d  es8 d16 c
  %10
  | d2 g,4. a8
  | bes8 f'[ g d]  es8 d16 es  f8 f,
  | bes4 r s2
  | s2 r8 \highlightSubject { bes d f,
  | e4 f r8 g16 a  bes8 a16 g
  %15
  | a4 } bes  r8 c16 bes  a8 bes16 c
  | d8 bes g[ e']  f2~
  | f8 \highlightSubject { f[ g bes,]  a4 bes
  | r8 c16 d  es8 d16 c  \unHighlightSubject d8 } c16 bes  c8 d
  | \oneVoice es8 d16 c  d8 e  f f,16 g  as8 g16 f
  %20
  | g8 \highlightSubject { g'[ as c,]  b4 c
  | r8 d16 es  f8 es16 d  \unHighlightSubject es8[ } e f fis]
  | g16 as g f!  es8 f16 g  as8 f d[ b']
  | c4~ c16 d c bes!  a! d, c d  es d c bes
  | a8 c[ d d,]  g g'16[ a]  bes8 a16 g
  %25
  | d'8 d,16 es  f8 es16 d  es,8 es'16[ f]  g8 f16 es
  | bes'8 bes,16 c  d8 c16 bes  c,8 c'16[ d]  es8 d16 c
  | g'8 g,16 a  bes8 a16 g  es'2
  | d4 r \voiceFour r2
  | r8 d es g,  fis4 a
  %30
  | d,8 d'16[ c]  bes8 c16 d  es2~
  | es8 es16 d  c8 d16 es  \oneVoice fis,8 a16 g  fis8 g16 a
  | d,8 d'16[ c]  bes8 c16 d  es8 c a[ fis']
  | \voiceFour g f![ es d]  c bes a[ g]
  | c8 a[ d d,]  g2
  \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
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
    title = \markup { "Fuga XVI " \char ##x007E " à 4" }
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
