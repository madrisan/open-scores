Global = {
  \key f \minor
  \time 4/4
  \include "../global.ly"
}

greyTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | R1*3
  | \override MultiMeasureRest.staff-position = #2 R1*4
  | \override MultiMeasureRest.staff-position = #5 R1
  | \override MultiMeasureRest.staff-position = #2 R1
  %10
  | \override MultiMeasureRest.staff-position = #6 R1*2
  | \override MultiMeasureRest.staff-position = #4 R1
  | r4 c' des c
  | b e f bes,
  %15
  | a aes g2~
  | g8 f16 g aes4~ aes2~
  | aes8 g16 aes bes4~ bes2~
  | bes16 g aes c f4~ f2~
  | f8 ees d g~ g16 b, c d ees4
  %20
  | r16 c d es f4 r16 ees f g aes!4
  | r16 g a b c4~ c8 b16 a b4
  | c8 g c4~ c8 c16 bes a8 a16 g

  | s1*36
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \override MultiMeasureRest.staff-position = #-4
    R1*3
  | r4 f as g
  %5
  | fis4 b c f,
  | e4 es d2
  | c8 c16 d  e8 d16 e  f 
    \change Staff = "lower" \voiceThree
    e, f g  as4
  | r16 f g aes bes4
   \change Staff = "upper" \voiceTwo
    r16 aes bes c des4
  | \stemNeutral r16 c d e f4~ f8 e16 d e4^\trill
  %10
  | f8 f16 g aes8 aes16 bes \stemUp\tieUp c4~ c16 bes aes g
  | f4 d'\rest aes~ aes16 ges f ees
  | des4 b'\rest f2~
  | \stemDown\tieDown f8 e16 f g4~ g8 f~ f[ ees]
  | d8 ees16 f g f e d c8 c\rest c\rest bes
  %15
  | c4 r8 c des c16 bes c4~
  | c4 r r8 f16 ees! d8 d16 c
  | bes8 
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    bes16 aes g4
    \change Staff = "upper" \voiceTwo
    \showStaffSwitch
    r8 g'16 f e8 e16 d
  | \change Staff = "lower" \voiceThree
    c8 c16 bes aes4
    \change Staff = "upper" \voiceTwo
    r8 d'16 c b8 b16 a
  | g8 g16 a b8 a16 b c4~ c8 bes
  %20
  | a8 b16 c d c b a g4 r16 f ees d
  | c4 b'16\rest c d ees f4. ees16 d
  | ees8 c16 d ees4~ ees2~
  | ees8 bes16 c des4~ des2~
  | des8 aes16 bes c4~ c2~
  %25
  | c8 bes16 aes g4~ g4. f16 e
  | f4. g16 aes bes4~ bes16 aes bes g
  | aes4~ aes16 g aes f c'8 g c[ bes]
  | aes bes c16 c, d ees f4 r8 g
  | aes4 c16\rest \stemUp bes aes g f4 r16 f g aes
  %30
  | bes4. aes16 g aes4 r
  | s1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | r4 c des c
  | b4 e f bes,
  | a4 as g2
  | f8 f16 g  as8 as16 bes  c b, c d  es4
  %5
  | r16 c d es  f4  r16 es f g as4
  | r16 g a b  c4~ c8 b16 a  b4\trill
  | c8 g c[ bes!]  as!
    \change Staff = "upper" \voiceTwo
    f'4 ees8
  | \stemUp d ees16 f g f e d c4
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    r16 bes aes g
  | f4 r16 f g aes bes4. aes16 g
  %10
  | aes4 c\rest
    \change Staff = "upper" \voiceTwo
    r8 c16 des ees4~
  | ees8 des16 ees f8 f16 g aes8
    \change Staff = "lower" \voiceThree
    aes,16 bes
    \showStaffSwitch
    \change Staff = "upper" \voiceTwo
    c4~
  | c8 bes16 c des8 des16 ees f8 f,16 g aes8 aes16 bes
  | \change Staff = "lower" \voiceThree
    c8 g c[ bes] aes16 r r8 r16 c, d ees
  | f4 r8 g aes r r16 bes aes g
  %15
  | f4 r16 f g aes bes4. aes16 g
  | aes4 r r2
  | s1*2
  | r4 g aes g
  %20
  | f b c f,
  | e ees d2
  | c4 \clef "treble" r8 c''16 bes a8 a16 g f8 g16 a
  | bes8 bes, b'8\rest bes16 aes g8 g16 f ees8 f16 g
  | aes8 aes, b'\rest aes16 g f8 f16 ees des8 des16 c
    \clef "bass"
  %25
  | bes8 c16 des ees8 ees, aes8 bes16 c des4~
  | des8 des16 c bes8 bes16 aes g8 g16 f e8 c
  | \stemDown f f'16 ees! \stemUp des!4 c8 c,16 d e8 d16 e
  | f e f g aes4 r16 f g aes bes4
  | r16 aes bes c 
    %\change Staff = "upper" \voiceTwo \stemDown
    des4 
    %\change Staff = "lower" \voiceThree
    r16 c d e f4~
  %30
  | f8 e16 d e4 f r8 c16 des
  | ees8 ees16 f ges4~ ges8 f16 ees des8 aes16 bes
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-2
  %1
  | R1*2
  | \override MultiMeasureRest.staff-position = #-4
    R1*4
  | r4 c des c
  | b e f bes,
  | a aes g2
  %10
  | f4 d'8\rest f16 g aes8 aes16 bes c8 c,
  | des4 d8\rest des16 ees f8 f16 ges aes8 aes,
  | bes4 r8 bes16 c des8 des16 ees f8 f,
  | c'8 c16 d e8 d16 e f e, f g aes4
  | r16 f g aes bes4 r16 aes bes c des8 r
  %15
  | r16 c d e f4~ f8 e16 d e4
  | f4 r8 f16 ees d8 d16 c bes8 c16 d
  | ees4 c8\rest g'16 f e8 e16 d c8 d16 e
  | f4 d8\rest d16 c b8 b16 a g8 a16 b
  | c4 r r2
  %20
  | R1
  | \override MultiMeasureRest.staff-position = #-6 R1*2
  | \override MultiMeasureRest.staff-position = #-8 R1*4
  | r2 r4 c
  | des c b e!
  | f bes, a aes
  %30
  | g2 s

  | s1*28
    \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    \context Dynamics = "dynamics" \centerDynamics
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
    opus = ##f % "BWV 857"
    title = \markup { "Fuga XII " \char ##x007E " à 4" }
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
