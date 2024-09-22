Global = {
  \key es \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \label #'Praeludium07
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2 des~
  | des16 c des ees des c bes aes f'2~
  | f16 d ees f ees d c bes aes'2~
  | aes16 f g aes g f ees d g2~
  %5
  | g16 ees f g f ees d c c'2~
  | c16 a bes c bes a g f \stemNeutral bes a g f ees d c bes
  | ees2~ ees16 ees f g f ees d c
  | d32 c d ees d c bes a bes a bes c bes aes g f g f g aes g f ees d ees d ees f ees d c bes
  | r32 c d ees f g a bes c a f g a bes c d \stemUp ees8~ ees32 f64 ees d32 ees ees8.\parenthesize\trill d16
    \bar "||"
  %10
  | <f, d'>4 r r2
  |\override MultiMeasureRest.staff-position = #2
    R1
  | g'4\rest bes, ees2
  | d!4 es2 as4~
  | as4 g2 f8 es
  %15
  | d4 es2 d4
  | e f2 es4
  | d g2 f4~
  | f es2 d4~
  | d c8 bes a4 bes~
  %20
  | bes es2 d4
  | c2 bes
  | as g~
  | g4 f8 es d!2
  | es~ es4 d8 c
    \bar "||"
  %25
  | \tempo "(Fuga a 4)"
    d g'\rest g4\rest f2\rest
  | f2\rest f16\rest aes, bes c bes aes g f
  | g16 es' f g  f es d c  bes8 c16 d  es d c bes
  | as16 g f es  as8 as as4 g~
  | g4 a bes8 c d4~
  %30
  | d4~ d16 d c bes  a8 bes16 c  d4~
  | d4~ d16 c d es  f4 g\rest
  | a16\rest f g as!  g f es d  es2~
  | es16 es f g  f es d c  d2~
  | d4 c~ c8 bes a4\parenthesize\trill
  %35
  | g4 r f bes~
  | bes as des2~
  | des16 bes c des  c bes as g  f2~
  | f4 e \highlightSubject { f c'~
  | c4 b \unHighlightSubject es2~ }
  %40
  | es16 es f g  f es d c  b f' g as  g f es d
  | c16 b c d  d8.\trill c16 c4 g'\rest
  | a16\rest bes,! c des  c bes as g  f8 g16 as  bes as g f
  | s4 \highlightSubject { es'8 es es4 d4
  | g2~ g4 f }
  %45
  | b,4 c8 d! es[ e] f g
  | as2~ as16 as bes c  bes as g f
  | es2 bes~
  | bes4~ bes16 as bes c  f,2
  | es2 d4 f'\rest
  %50
  | as,2~ as16 f g as  g f es d
  | c4~ c16 c d es  f4~ f16 es f g
  | as2~ as8 g as bes!
  | c4~ c16 es d c  b8 c16 d  es d c bes
  | as16 g f es  d d' es f  b,8 c16 d  c bes as g
  %55
  | c2~ c8 d! e4
  | f16 c des es!  des c bes as  g4 g'\rest

  | e'16\rest as, bes c  bes as g f  as g f es  as4~
  | as4 g! as8 \highlightSubject { es as4~
  | as4 g c2
  %60
  | bes4~ } bes16 bes as g  f8 g16 as  g f es d!
  | es8 f16 g  as8 as~  as16 g as bes  as g f es
  | f8 g16 as  bes as g f  es d c bes  es8 es
  | es4 f16\rest d! es f  bes,2~
  | bes4 as2 g4
  %65
  | c2 \highlightSubject { bes4 es~
  | es4 d ges2
  | f4 } es2 d4
  | es2 d!4 des~
  | des16 bes c des  c bes c as  d!2
  %70
  | es1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \tieDown
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \stemUp r16 g' as bes as g f es~ \stemDown es2~
  | ees8 e\rest d4*3/4\rest \once\omit Flag \once\omit Stem aes'16~ aes2~
  | aes8 e\rest d4*3/4\rest \once\omit Flag \once\omit Stem bes'16~ bes2~
  | bes8 g\rest g4\rest ees'2~
  %5
  | ees16 g,\rest f8\rest f4*3/4\rest \once\omit Flag \once\omit Stem  c'16~ c2
  | d8 g,\rest g4\rest s2
  | s1*4
  %11
  | e2\rest ees4 aes~
  | aes g2 f4~
  | f g2 c4
  | bes2 c
  %15
  | bes~ bes4. aes8
  | g4 c b c8 bes
  | aes4 g8 aes16 bes aes2~
  | aes4 g f g8 aes
  | g2 f~
  %20
  | f4 ees16 d' c bes a4 bes~
  | bes aes2 g4~
  | g f2 ees8 des
  | c2. bes4~
  | bes a bes2
  %25
  | bes16 bes' c d c bes a g f8 g16 a! bes a! g f
  | \stemNeutral ees d c bes ees8 ees
    \showStaffSwitch \change Staff = "lower" \voiceThree
    ees4
    d
  | ees8
    \change Staff = "upper" \voiceTwo
    e8\rest e4\rest e2\rest
  | \highlightSubject { c2
    \change Staff = "lower" \voiceThree
    \unHighlightSubject bes4~ }
    bes16
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    d ees f
  | ees d c bes ees8 c f4~ f16 f g aes
  %30
  | g f ees d g4 f2~
  | \once\override NoteColumn.force-hshift = #1 f4
    \showStaffSwitch \change Staff = "lower" \voiceThree
    ees8 d c4 d~
  | d16 d ees f ees d c bes c2~
  | c2. bes4~
  | bes16 g a bes a g fis e fis8 g4 fis8
  %35
  | \once\override Voice.Rest.X-offset = #0.3 c'16\rest
    g aes bes aes g f ees bes'4
    \once\override Voice.Rest.X-offset = #0.3 b\rest
  | d16\rest bes c des c bes aes g aes8 bes16 c bes8 aes
  | g4 aes2~ aes16 aes g f
  | g2 f4 f\rest
  | \highlightSubject { d4 g2 ees4
  %40
  | aes2 \once\override NoteColumn.force-hshift = #0.4 g4 }
    \once\override NoteColumn.force-hshift = #0.4
    \once\shape #'((0 . 0.2) (0 . 0.2) (0 . 0.2) (-1.4 . 0.2)) Tie
    c_~
  | \once\override NoteColumn.force-hshift = #0.8 c4.
    b8 c4 c\rest
  | \highlightSubject { bes ees2 d4
  | \change Staff = "upper" \voiceTwo
    g2 \unHighlightSubject f~ }
  | \once\override NoteColumn.force-hshift = #0.2 f16
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    bes, c des c bes aes g c2
  %45
  | \showStaffSwitch \change Staff = "upper" \voiceTwo
    d4 ees8 f g[ g] aes bes
  | \once\override Stem.length = #3 c4
    g,\rest a2\rest
  | \hideStaffSwitch \change Staff = "lower" \voiceThree
    \highlightSubject { ees4 aes2 g4
  | \unHighlightSubject
    \once\override Stem.length = #3 c2_~ }
    c16
    \change Staff = "upper" \voiceTwo
    a bes c bes aes
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    g f
  | ges4 f2 b4\rest
  %50
  | \change Staff = "upper" \voiceTwo
    s1*2
  | s2 ees~
  | ees16 ees f g f4 g2
  | b,2\rest \highlightSubject { d4 g~
  %55
  | g f bes2~ }
  | bes8 \highlightSubject { aes d2 c4
  | f2 \unHighlightSubject ees4~ } ees16 ees f ges
  | f ees des c bes4 b16\rest bes c des c bes aes
    \change Staff = "lower" \voiceThree
    g
  | f8 g16 aes bes aes g f ees8 f16 g aes8 aes~
  %60
  | aes16 g aes bes \highlightSubject { c2 bes4
  | \showStaffSwitch \change Staff = "upper" \voiceTwo
    ees2 d4 } ees
  | c e,\rest e\rest e16\rest g aes bes
  | aes g f ees f4~ f16 f g aes g f ees des
  | \highlightSubject { c4 f2 ees4
  %65
  | aes2. g4 }
  | \highlightSubject { f bes2 a4
  | \stemUp \shiftOn d } bes \stemDown \shiftOff bes^~ bes8 aes
  | g16 bes c des c bes aes g f8 g16 aes bes aes g f
  | ees4 aes~ aes16 aes bes ces bes aes g aes32 f
  %70
  | g1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \mergeDifferentlyDottedOn
  %1
  | a2\rest c16\rest g aes bes aes g f ees
  | aes2~ aes16 aes bes c bes aes g f
  | d'2~ d16 d ees f ees d c bes
  | \stemNeutral ees2~ ees16 ees f g f ees d c
  %5
  | bes c d ees d c bes aes g ees f g f ees d c
  | f c d ees d c bes a d bes c d c bes a g
  | \stemUp c'\rest ees, f g f ees d c a'2
  | bes1(
  | a
  %10
  | bes4) \showStaffSwitch \change Staff = "upper" \voiceTwo ees2
    \change Staff = "lower" \voiceThree
    d4
  | c2 bes4 c
  | d ees des c
  | bes2 ees
  | f4 ees2 aes4~
  %15
  | aes g f2
  | c d4 ees
  | f8 ees d4 ees4 f
  | bes,1~
  | bes4 ees8 d c4 d8 c
  %20
  | bes a bes4 c d8 ees
  | f4. ees8 d bes ees4~
  | ees bes bes2~
  | bes4 aes8 g f4 g8 f
  | ees4. f8 g4 f8 ees
  %25
  | f4 c'\rest a2\rest
  | s1
  | \once\override Stem.length = #4 \highlightSubject { ees4 aes2 g4 }
  | s1*2
  %30
  | \highlightSubject { bes4 ees2 d4
  | \change Staff = "upper" \voiceTwo
    g2 } g16\rest a bes c bes a g f
  | bes2~ bes16 bes c d c bes a g
  | a2~ a8 d, g[ f]
  | ees2 d4 c
  %35
  | \highlightSubject { bes ees2 d4
  | g \unHighlightSubject f~ } f16 f g aes g f e f
  | e2 b16\rest ees des c bes4~
  | bes16 bes c des c bes aes g aes4 c\rest
  | e16\rest f g aes g f ees des
    \change Staff = "lower" \voiceThree
    c
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    g' aes bes aes g f ees
  %40
  | f2
    \showStaffSwitch \change Staff = "lower" \voiceThree
    \once\override NoteColumn.force-hshift = #0 d4
    ees~
  | ees8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    aes g[ f] ees4 aes~
  | aes g c
    \once\override Tie.extra-offset = #'(0 . 2.4)
    bes^~
  | \once\stemUp
    \once\shape #'((0.8 . 0.4) (0 . 0.4) (0 . 0.4) (-0.8 . 0.4)) Tie
    bes2~
    \once\override Tie.extra-offset = #'(0.2 . 0.2)
    \once\override NoteColumn.force-hshift = #0.2
    \once\stemUp
    bes~
  | \once\override Tie.extra-offset = #'(0 . 0.2)
    bes~
    bes16 bes c des c bes aes g
  %45
  | \stemUp \shiftOn f4 g8 b c4 d8 e!
  | \stemDown f16 ees f g f ees d c d2~
  | d16 bes c des c bes aes g f8 g16 aes bes aes g f
  | ees d
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    c
    \change Staff = "upper" \voiceTwo
    bes ees8 ees ees4 \once\stemUp d
  | c2 g16\rest f' g aes g f ees d
  %50
  | c8 d16 ees f ees d c
    \showStaffSwitch \change Staff = "lower" \voiceThree
    bes aes g f bes8 bes
  | bes16 g a bes a4~ a16 a b c b4~
  | b8 b
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    c d s2
  | \change Staff = "lower" \voiceThree
    \highlightSubject { c,4 f2 ees4
  | aes2 g }
  %55
  | g'16\rest c, des ees ees c bes aes g2
  | c4\rest d16\rest aes bes c bes aes g f g8 a\rest
  | R1
  | c4\rest d16\rest bes c des c4 b'\rest
  | \stemDown
    \once\override Voice.Rest.X-offset = #1.4
    e,16\rest
    d ees f ees4 a,16\rest c des ees des c bes aes
  %60
  | ees'2 d
  | \stemUp
    d16\rest c des ees des c bes aes bes2
  | aes4 c16\rest f, g aes bes4 d16\rest bes c des
  | c bes aes g aes4~ aes8 g16 f g4~
  | g16 ees f g f ees d c bes aes' bes c bes aes g f
  %65
  | ees4 b'\rest b2\rest
  | \once\override Voice.Rest.X-offset = #0.6 a'16\rest
    c, d ees f aes g f ees f ees d c ees d c
  | \showStaffSwitch \change Staff = "upper" \voiceTwo
    aes'4 g
    \once\override NoteColumn.force-hshift = #0.2 f2
  | \change Staff = "lower" \voiceThree
    \highlightSubject { ees,4 aes2 g4
  | c2 ces }
  %70
  | bes1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | ees1~
  | ees~
  | ees2~ ees8 b\rest b4\rest
  | s1*3
  %7
  | c1
  | bes~
  | bes~
  %10
  | bes4 b\rest f' bes~
  | bes aes g2
  | f4 ees2 aes4~
  | aes g c2
  | d4 ees aes,2
  %15
  | bes1~
  | bes4 aes g c~
  | c bes c d
  | g,4. aes8 bes4 bes,
  | ees2. d4
  %20
  | g2 f~
  | f g4~ g16 f ees d
  | c4 d ees~ ees16 des c bes
  | aes2 bes
  | c bes~
  %25
  | \highlightSubject { bes4 ees2 d4
  | g2 f }
  | \highlightSubject { \unHighlightSubject es4. } f8 g f es d
  | c16 es f g  f es d c  es d c bes  es8 d
  | \stemNeutral c4~ c16 c d es  d c bes a  bes8 bes'
  %30
  | \stemDown es,2 r16 f g a  bes a g f
  | es16 d c bes  es8 es es4 d
  | g2~ g16 g a bes  a g f es
  | f2 r16 fis g a  g f es d
  | c2 d
  %35
  | g,4 g\rest b16\rest d ees f ees d c bes
  | e4 f2 bes,4
  | c2 des
  | c2 g16\rest f g as  g f es d!
  | g2 c
  %40
  | f2~ \once\override NoteColumn.force-hshift = #-0.6 f4 es
  | as8 f g4 r16 c, des es des c bes! as
  | es'2 as
  | g4~ g16 f g as  bes as bes c  bes as g f
  | e2 as~
  %45
  | \stemNeutral aes16 f g aes g f ees d c bes c des c bes aes g
  | \highlightSubject { f4 bes2 g4
  | \stemDown c2 } d8 bes ees[ d]
  | c4. bes8 a4 bes~
  | bes16 a bes c  bes a! g f  bes4 es4~
  %50
  | es4 d g4. f8
  | e4 f8 es d2~
  | d16 d es f  es d c b  c b c d c bes as g
  | as2  r16 g a b  c4~
  | c16 c d es f8 f f4 es
  %55
  | as2  c,16\rest e f g  f e d! c
  | f2~ f4 es16 c des es
  | des16 c bes as  des8 des des4 c
  | des4 es as \clef treble f
  | bes8 c,\rest
    \once\override Voice.Rest.X-offset = #0.3 d4\rest
    s2
  %60
  | R1
  | \clef bass
    r2 \highlightSubject { bes4 es~
  | es4 d g2~
  | g4 } r16 g f es  d8 es16 f  es d c bes
  | as4~ as16 g f es  d16 r r8  es'4
  %65
  | a,16\rest c des es  des c bes as  es' d c bes  as' g f es
  | bes'1~
  | bes16 f es d  es f g as  bes,2
  | es1~
  | es~
  %70
  | es\fermata
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak

  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak

  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak

  % page 4
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 852"
    title = \markup { "Praeludium VII" }
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
    \tempo 4 = 63
  }
}
