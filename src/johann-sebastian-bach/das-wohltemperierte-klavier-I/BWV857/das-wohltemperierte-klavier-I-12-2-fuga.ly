Global = {
  \key f \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

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
  | r4 \highlightSubject { c' des c
  | b e f bes,
  %15
  | a aes g2~
  | \unHighlightSubject g8 } f16 g aes4~ aes2~
  | aes8 g16 aes bes4~ bes2~
  | bes16 g aes c f4~ f2~
  | f8 ees d g~ g16 b, c d ees4
  %20
  | r16 c d es f4 r16 ees f g aes!4
  | r16 g a b c4~ c8 b16 a b4
  | c8 g c4~ c8 c16 bes a8 a16 g
  | f8 g16 a bes4 r8 bes16 aes g8 g16 f
  | ees8 f16 g aes4 r8 aes16 g f8 f16 ees
  %25
  | des4. ees16 des c8 c16 bes aes4~
  | aes8 bes16 c des4~ des16 c des bes g'4~
  | g16 c, des c f4~ f8 e16 f g4~
  | g8 f4 ees8 d8 ees16 f g f e d
  | c4 a'8\rest bes, c4 r8 c
  %30
  | des8 c16 bes c2 r4
  | r8 ges'16 f ees des c bes! aes8 bes16 c des8 r
  | r ees16 des c bes aes ges f8 g16 a bes8 b\rest
  | r c16 bes aes g f ees des4~ des16 f bes aes
  | g4 aes~ aes16 g aes bes c4
  %35
  | r16 aes bes c des!4 r16 c des ees f4
  | r16 ees f g aes4~ aes8 g16 f g4~
  | g16 c, d ees f4~ f8 ees16 d ees4~
  | ees16 aes, bes c des4~ des8 c16 bes c4~
  | c8 f, bes[ aes] g!4~ g16 g aes bes
  %40
  | c4~ c16 c d ees f4~ f16 bes, ees8~
  | ees16 ees d c d ees c d ees c d ees f ees d c
  | bes2~ bes16 aes g f ees4~
  | ees16 ees f ees d c' bes aes g8 bes ees4~
  | ees16 g f ees d4~ d8 g, c4~
  %45
  | c16 ees d c bes4~ bes8 ees, aes4~
  | aes16 c bes aes g4~ g16 f aes g f ees des c
  | b4 \highlightSubject { g'' aes g
  | fis b c f,
  | e ees d2~
  %50
  | d8 \unHighlightSubject c16 } d ees4~ ees2~
  | ees8 d16 ees f4~ f2~
  | f16 d e g bes,!4~ bes2~
  | bes8 aes g4 f16 ees f g aes4
  | r16 f g aes bes!4 r16 aes bes c des4
  %55
  | r16 c d e f4~ f8 e16 d e4
  | f4~ f16 ees des c des4~ des16 bes c des
  | e,8 c'~ c16 g aes f~ f f ees d ees4
  | f1
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
  | r4 \highlightSubject { f as g
  %5
  | fis4 b c f,
  | e4 es d2
  | \unHighlightSubject c8 } c16 d  e8 d16 e  f
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    e, f g  as4
  | r16 f g aes bes4
    \showStaffSwitch
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
  | aes4 c16\rest bes aes g f4 r16 f g aes
  %30
  | bes4. aes16 g aes4 r
  | \override MultiMeasureRest.staff-position = #-8
    R1*2
  | s1
  | r4 \highlightSubject { ees f ees
  %35
  | d g aes des,
  | c ces bes2
  | aes4 } r16 b' c d g,4. ges8
  | f4~ f16 g aes bes ees,4~ ees16 ges f ees
  | des2 g16 bes, c des ees4~
  %40
  | ees16 ees f g aes4~ aes16 c bes aes g8. g16
  | f2 c8 r r4
  | r16 c d ees f ees d c bes4. a16 bes
  | c4 bes~ bes8 ees16 f g8 g16 aes
  | bes4~ bes16 aes g f ees d c d ees8 ees16 f
  %45
  | g4~ g16 f ees des! c bes aes bes c8 c16 d
  | ees4~ ees16 d c bes aes8
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    des,16 ees f8 fis
  | g g16 a
    \change Staff = "upper" \voiceTwo
    a'4\rest b8\rest c4 bes8
  | a8 bes16 c d c b a g4 s
  | r16 g a b c4~ c8 b16 a b c b d
  %50
  | g,4 r8 g c, c'16 bes a8 bes16 c
  | f,8 bes r aes g d'16 c b8 c16 d
  | g,4 r8 des c g'16 f e8 f16 g
  | c,8 f~ f[ e] f4 r16 g f ees!
  | d4 r8 des~ des c r ges'~
  %55
  | ges f r16 f g aes bes2~
  | bes16 des c bes a4 r16 c bes aes g f ees d
  | c1~
  | c
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | r4 \highlightSubject { c des c
  | b4 e f bes,
  | a4 as g2
  | \unHighlightSubject f8 } f16 g  as8 as16 bes  c b, c d  es4
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
  | r4 \highlightSubject { g aes g
  %20
  | f b c f,
  | e ees d2
  | c4 } \clef "treble" r8 c''16 bes a8 a16 g f8 g16 a
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
  | c8 c16 des ees4~ ees8 des16 c bes8 f16 g
  | aes8 aes16 bes c4~ c8 bes16 c des4~
  | des8 ees16 des c8 des16 c bes4. aes16 g
  %35
  | aes8 g16 aes bes aes g f ees8 aes~ aes16 g aes bes
  | r4 r16 f g aes ees4~ r16 g f e
  | f4 r r2
  | R1*2
  %40
  | r2 r4 \highlightSubject { bes
  | c bes a d
  | ees aes, g ges
  | f2 ees4 } r
  | r8 bes'16 c d c bes aes g4 r
  %45
  | r8 g16 aes bes aes g f ees4 r
  | r8 ees16 f g f ees d
    \stemDown
    \override NoteColumn.force-hshift = #-0.3
    c8[ bes]
    \stemUp \override NoteColumn.force-hshift = #0.4 c4
  | \stemDown \once\override NoteColumn.force-hshift = #-0.3 d
    \revert NoteColumn.force-hshift
    \stemUp b'8 a16 b c b c d ees4
  | r16 c d ees f4~ f16 ees f g aes4
  %50
  | \stemDown c,4 r16 c d ees f d ees f g aes g f
  | ees f ees d c8 c16 bes a8 a16 g f8 g16 a
  | bes8 f'16 ees d8 d16 c b8 b16 a g8 a16 b
  | c8 bes16 aes g8 g16 f e8 e16 d c8 d16 e
  | \stemUp f16 g aes bes c4~ c8 bes r aes~
  %55
  | aes g16 f g bes aes g f8 g16 aes bes f ees des
  | c4~ c16 d e f g4~ g16 a, bes c
  | des c des ees f4~ f16 f g aes bes4~
  | bes16 bes aes g aes4 g2
  | a1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-2
  %1
  | R1*2
  | \override MultiMeasureRest.staff-position = #-4
    R1*4
  | r4 \highlightSubject { c des c
  | b e f bes,
  | a aes g2
  %10
  | f4 } d'8\rest f16 g aes8 aes16 bes c8 c,
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
  | r2 r4 \highlightSubject { c
  | des c b e!
  | f bes, a aes
  %30
  | g2 \unHighlightSubject f8 } f'16 g aes8 aes16 bes
  | c4~ c16 bes aes ges f8 des16 ees f8 f16 g
  | aes4~ aes16 ges f ees des8 bes16 c des8 des16 ees
  | f4~ f16 ees des c bes c des c bes aes g f
  | ees8 bes' c[ aes] des bes ees[ c]
  %35
  | f bes,~ bes ees16 des c8 f~ f16 ees f g
  | aes g f ees d4 ees8 d e[ c]
  | f8 f16 ees d8 d16 c b g a b c aes bes c
  | des8 des16 c bes8 bes16 aes g ees f g aes f g a
  | bes a bes c des bes c des ees8 ees16 des c8 c16 bes
  %40
  | aes8 aes'16 g f8 f16 ees d4 ees8 g
  | aes f \highlightSubject { \unHighlightSubject bes[ } bes,] c c'16 bes aes8 bes16 aes
  | g8 bes,16 c d8 c16 d ees8 ees16 d c8 c16 bes
  | a4 bes \highlightSubject { \unHighlightSubject ees } r8 ees16 f
  | g8 g16 aes bes8 bes, c4 r8 c16 d
  %45
  | ees8 ees16 f g8 g, aes4 r8 aes16 bes
  | c8 c16 d ees8 ees,
    \once\override Beam.positions = #'(-4.6 . -4.8)
    f g
    aes[ a]
  | g r r4 r2
  | r2 r4 d'16\rest g aes bes
  | \override MultiMeasureRest.staff-position = #-6
    R1*3
  %52
  | \override MultiMeasureRest.staff-position = #-8 R1
  | r4 \highlightSubject { c, des c
  | b e f bes,
  | a aes g2
  | \unHighlightSubject f4~ } f16 f g a bes4~ bes16 des c bes
  | c1
  | f,
    \fine
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
