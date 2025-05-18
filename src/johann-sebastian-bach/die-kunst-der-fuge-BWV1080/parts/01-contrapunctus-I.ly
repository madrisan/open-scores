Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"
\include "../macros-fugues-structure.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusI
  | R1*4
  %5
  | \highlightSubjectFirst { a2^\markup \subject #'(0 . 0) #1 d
  | c a
  | gis a4 b
  | c2~ c8 d c bes
  | \unHighlightSubject a } d, d'2 cis4
  %10
  | d8 a c4~ c8 a bes4~
  | bes8 e, a2.~
  | a8 c!4 b8 c2~
  | c8 d, c'4~ c8 a b4~
  | b a8 gis a2
  %15
  | b c4 d
  | g,8 bes a4~ a8 bes a g~
  | g^\markup { \episodeBullet "First episode" }
    e f d bes'2~
  | bes8 g a4 d2~
  | d8 b c4 f!2~
  %20
  | f8 d e4 a, d~
  | d8 b c4 f, bes |
  | a2 d,4 g~ |
  | g8^\markup {
      \secondExpositionBullet "Second exposition (counter-exposition) ASBT, bars 23−44"
    }
    e f d' e,2_~ |
  | e8 d a'2 g4 |
  %25
  | a2 b\rest
  | \override MultiMeasureRest.staff-position = #4
    R1
  | R1
  | R1
  | \highlightSubjectFirst { a2^\markup \subject #'(0 . 0) #1 e'
  %30
  | c a
  | gis a4 b
  | c2~ c8 d c bes
  | a4 } r r a~
  | a8 c! bes a bes a g fis
  %35
  | g4. bes8
    \once\override NoteColumn.force-hshift = #0.3 e,4.
    fis8
  | g4. e8 cis4. a'8
  | d,4. f8 e4. c'8
  | f,4. a8 g4. e'8
  | a,4. c8 b4. g'8
  %40
  | cis,2 d4 e~
  | e8 cis d4~ d4. e8
  | f e g4~ g8 f e d
  | cis a d4~ d8 b c4~
  | c^\markup { \episodeBullet "Episode, bars 44−60" } bes a r
  %45
  | R1*4
  | \highlightSubjectFirst { e'2^\markup \subject #'(0 . 0) #1 a
  % 50
  | f d
  | cis d4 e
  | f2~ f8 g f e
  | d4. } e8 cis4 d8 f
  | bes,2~ bes8 bes a g
  %55
  | f2 bes
  | a2. e'4~
  | e8 cis d e f d g4~
  | g8 e a g f e d cis
  | d c bes a g2~
  %60
  | g8 e f d a'2~^\markup { \episodeBullet "Episode, bars 60 to the end" }
  | a8 fis g bes c2~
  | c8 a bes d ees4 d
  | cis a'~ a8 d, g4~
  | g8 cis, f4~ f8 d e4~
  %65
  | e8 cis d4~ d8 b c4~
  | c bes a4. a8
  | d f e g f e d4~
  | d8 f4 e8 f d e4~
  | e8 d c b c4. a'8
  %70
  | g fis g bes cis,4 r
  | r2 d4 r
  | r2 d2~
  | d2~ d8 b cis4
  | d4. c8 bes4. a8
  %75
  | d,2 r8 g a c~
  | c8 bes c ees~ ees d fis a~
  | a g16 a bes8 cis, d2~
  | d1\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  | \highlightSubjectFirst {
    d2^\markup {
       \expositionBullet "Exposition ASBT, bars 1−17"
    }_\markup \subject #'(1.5 . -1) #1 a'
  | f d
  | cis d4 e
  | f2~ f8 g f e
  %5
  | d4 } e f g
  | a
    \staffLower\voiceThree
    \highlightMotif { a,8 b c a
    f'4^~
  | f8 b, e4~ e8 f e d
  | e4 fis
    \staffUpper\voiceTwo
    \unHighlightMotifWithStem g2~ }
  | g4 f e2
  %10
  | d4. e8 f4. d8
  | g4. g8 f e d cis
  | d4 g2 c,4
  | f4. e8 f4. \staffLower gis,8
  | \staffUpper e'2. d8 c
  %15
  | d f e d c4 r
  | R1
  | s1*3
  %20
  | s1*3
  | \highlightSubjectFirst { d2_\markup \subject #'(1.5 . 0) #1 a'
  | f d
  %25
  | cis d4 \stemUp\tieUp e
  | f2~ f8 g f e
  | d4 } g~ g8 e f4
  | e a~ a8 fis g4
  | \stemDown\tieDown
    fis4. d'8 gis,2
  %30
  | a4 e~ e8[ e d c]
  | d4 f e d
  | c a'2 d,4
  | e a~ a8 g f e
  | d1~
  %35
  | d8 d g4~ g8 g

    c,4~
  | c8 a bes4 a2~
  | a8
    \hideStaffSwitch \staffLower\stemUp
    f g4
    \showStaffSwitch \staffUpper\stemDown
    c2~
  | c8 a b4
    \staffUpper\stemDown
    e2~
  | e8 cis d4 g2~
  %40
  | g8 a bes4 a2~
  | a2~ a8 f g4
  | a4. bes8 a4 g~
  | g f8 d a'4. g8
  | fis d g4~ g8 e f4~
  %45
  | f8 d g4~ g8 e a4~
  | a8 f bes4~ bes8 g a4~
  | a8 f g2 f8 d
  | \highlightMotif { a'2^\markup {
      "(false extrance of the Alto)"
    }
    \unHighlightMotifWithStem d~ }
  | d8 cis b cis d a e'4~
  %50
  | e8 a, d4 r8 f, bes4~
  | bes8 e, a4~ a8 g
    \hideStaffSwitch \staffLower\stemUp
    f e
  | d
    \staffUpper\stemDown
    a' d b g e c'4~
  | c bes a2
  | g4. f8 e2~
  %55
  | e4 d8 cis d4 g~
  | g4. f8 e4. e8
  | a2. g8 bes
  | a2~ a8 g f e
  | d2. e4
  %60
  | a, r r ees'
  | d2 r4 \once\override NoteColumn.force-hshift = #0 fis!
  | g8 fis g4 r bes~
  | bes8 a f' d b4 e8 cis!
  | a4 d8 a bes4. g8
  %65
  | a4. f8 e4. g8
  | fis d g4~ g8 e f4~
  | f8 d' c4~ c4. c8
  | bes a gis4 a4. e8
  | a4 g~ g4. c8
  %70
  | a4 g~ g r
  | r2 a4 r
  | r2 b
  | a~ a4. g8
  | fis g a4~ a8 g
    \shape #'((0 . -0.4) (0 . -0.8) (0 . -0.8) (0 . 0)) Tie
    c4~
  %75
  | c8 fis, g bes ees,2
  | d4
    \staffLower
    \stemUp
    a bes c
  | d
    \staffLower
    \stemUp g,~ \hideStaffSwitch g8
    \staffUpper
    \stemDown
    bes' \showStaffSwitch a g~
  | g8 fis e g fis2\fermata
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  \override MultiMeasureRest.staff-position = #0
  | R1*5
  | s1*7
  | \highlightSubjectFirst { a2^\markup \subject #'(2.5 . 0) #1 d
  | c a
  %15
  | gis a4 b
  | c2~ c8 d c bes
  | \unHighlightSubject a2~ } a8 f g4
  | c2~ c8 a b4
  | \staffUpper\stemDown
    e2_~ e8
    \hideStaffSwitch \staffLower\voiceFour\stemUp
    cis d4
  %20
  | \showStaffSwitch \staffUpper\voiceThree\stemDown
    g2_~ g8 e f4
  | e4. a8 d,4. e8
  | \hideStaffSwitch cis4 d8
    \staffLower\stemNeutral
    a
    \stemUp
    \showStaffSwitch
    b4. cis8
  | d4 a2.~
  | a2 bes
  %25
  | r8 e, a4~ a8
    \hideStaffSwitch \staffUpper\voiceTwo
    bes a g
  | a4 b c2~
  | c8 a bes4
    \showStaffSwitch \staffLower\voiceThree
    a d~
  | d8 b
    \staffUpper\voiceTwo
    c4 b
    \staffLower\voiceThree
    e4~
  | e8 a, d4~ d8 d c b
  %30
  | c d b8\rest a c4 a
  | b2
    \showStaffSwitch \staffUpper
    \once\stemDown
    \once\override NoteColumn.force-hshift = #0.4
    c4
    \staffLower
    gis
  | a8 g fis e fis4 g~
  | g8 g f e f e d cis!
  | d4 r r2
  %35
  | \override MultiMeasureRest.staff-position = #0
    R1
  | R1
  | s1*3
  %40
  | \highlightSubjectFirst { e2^\markup \subject #'(2.5 . 0) #1
    a
  | f d
  | cis d4 e
  | f2~ f8 g f e
  | d2. } a'8 f
  %45
  | bes4. g8 c4. a8
  | d4 g, c f,
  | bes e, a2
  | e4 a4~ a8 gis fis gis
  | a4. g8 f e d cis
  %50
  | d4 f8 d
    \stemDown
    bes'4 g8 e
  | a4. f'8 b,4 cis
  | d b8 g c4 a8 f
  | bes d g4~ g8 e
    f4~
  | f8 f e d cis2
  %55
  | d8 c bes a g a bes c
  | \stemUp
    d a d4~ d8 b
    cis4~
  | cis8 e a, cis d4 bes8 g
  | e2 f4 g
  | a2
    b4 cis
  %60
  | \staffUpper \once\stemDown d \staffLower r4 r fis,
  | g8
    a bes4 r
    \staffUpper\stemDown
    \once\override NoteColumn.force-hshift = #0.4
    c
  | \once\override NoteColumn.force-hshift = #0.2 d2
    \staffLower\stemUp r8
    g,4 f8
  | e4 f\rest f2\rest
  | f4\rest f8 d g4. cis,8
  %65
  | f4. d8 a'2
  | d,4
    \staffUpper\stemDown
    \once\override NoteColumn.force-hshift = #0.2
    d'2
    \staffLower\stemUp
     a8 f
  | bes2~ bes8 gis a4
  | d2~ d8 b
    c4
  | f2~ f8 d ees4
  %70
  | d2 e4 r
  | r2 f4 r
  | r2 f2~
  | f4 e8 d e4 r
  | \highlightSubjectFirst { a,2^\markup \subject #'(2.5 . 0) #1 d
  %75
  | bes g
  | fis g4 a
  | bes2~
    \stemDown
    bes8 d c bes
  | a1\fermata }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | s4_\markup {
      \hspace #-2
      \ieyeglasses
      \column {
         \concat {
           \normal-text { "[H.A.Kellner] " }
           "Die(18) + Kunst(80) + der(26) + Fuga(34) = Johann(58) + Sebastian(86) + Bach(14) = 158"
         }
         \raise #0.8
         \concat {
           \normal-text { "[H.A.Kellner] " }
           "The first two notes of the entire work are D and A: 4 and 1, "
           "where 41 = J(9)+S(18)+B(2)+A(1)+C(3)+H(8)"
         }
      }
    } s2.
  | s1*7
  | \highlightSubjectFirst { d2_\markup \subject #'(1.2 . 0) #1 a'
  %10
  | f d
  | cis d4 e
  | f2~ f8 g f e
  | d2 } r
  | r4 \highlightMotif {
    \once\override HorizontalBracketText.text = \markup {
      "same counterpoint used with the first answer"
    }
    a8
    \startGroup
    b c a f'4~
  %15
  | f8 b, e4~ e8 f e d
  | e g fis a g2 \stopGroup }
  | d2. e8 \startGroup d
  | e4 \stopGroup f8 \startGroup e fis4 \stopGroup g8 \startGroup fis
  | gis4 \stopGroup a8 \startGroup gis a4 \stopGroup bes8 \startGroup a
  %20
  | b4 \stopGroup c8 \startGroup b cis4 \stopGroup d8 gis,
  | a2~
    a8 f g4~
  | g8 e f4~ f8 d e4
  | d2~ d8 b cis4
  | d4. c8 bes2
  %25
  | a4. g8 f g f e
  | d f e d a'4. f8
  | bes4. g8 d'4. f8
  | a4. a,8 e4 r
  | b'2\rest \highlightMotif { e_\markup {
      "(false entrance of the Bass)"
    }
  %30
  | a \unHighlightMotif f~ }
  | f8 f e d c d c b
  | \highlightSubjectFirst { a2_\markup \subject #'(0 . 0) #1 d
  | cis a
  | fis g4 a
  %35
  | bes2~ bes8 c bes a
  | \unHighlightSubject g2~ } g8 e f4
  | bes2~ bes8 g a4
  | d2~ d8 b c4
  | f2~ f8 d e4
  %40
  | a,4. g'8 f e d cis
  | d4. f,8 bes2
  | a1~
  | a4. bes8 a g a4
  | bes4. g8 d'2~
  %45
  | d4 e2 f4~
  | f4. d8 e4. cis8
  | d4. b8 cis a d4~
  | d8 c b a b2
  | a4 r r2
  %50
  | R1
  | s1*5
  | \highlightSubjectFirst { d2_\markup \subject #'(1.5 . 0) #1 a'
  | f d
  | cis d4 e
  | f2~ f8 g f e
  %60
  | \unHighlightSubject d2~ } d8 ees d c
  | bes2~ bes8 c bes a
  | g2. g4
  | a1~_\markup { "dominant pedal" }
  | a~
  %65
  | a2. a4
  | bes4. g8 d'2~
  | d8 bes c4 f2~
  | f8 d e4 a2~
  | a8 f g4 c2~
  %70
  | c8 a bes2 b,4\rest
  | b2\rest a'4 b,\rest
  | b2\rest gis'
  | a2. a,4
  | d1~_\markup {
      \column {
        \line { "tonal pedal" }
        \raise #0.8
        \line { "(secondary dominant pedal" }
        \raise #1.6
        \line { " in bars 74−76 in G minor key)" }
      }
    }
  %75
  | d~
  | d~
  | d~
  | d1\fermata
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
    opus = "BWV 1080, 1"
    title = \markup { \smallCaps "Die Kunst der Fuga" }
    subtitle = \markup { \smallCaps "Contrapunctus I" }
    subsubtitle = \markup {
      \center-column {
        \line { "Four-voice fugue on principal subject" }
        \fugueStructureBoxesI
      }
    }
  }
  \layout {
    \context {
      \Voice
      \consists "Horizontal_bracket_engraver"
      \override HorizontalBracket.color = #greyTextColor
      \override HorizontalBracket.direction = #DOWN
      \override HorizontalBracketText.color = #greyTextColor
      \override HorizontalBracketText.font-shape = #'italic
      \override HorizontalBracketText.font-size = #-2
      \override Parentheses.font-size = #-2
      \override TextScript.color = #greyTextColor
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-2
      \override VoiceFollower.color = #greyTextColor
      \override VoiceFollower.style = #'dashed-line
    }
  }
  \midi { \tempo 4=84 }
}
