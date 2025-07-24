\version "2.25.26"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  %inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  %left-margin = 10\mm
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  %outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %right-margin = 10\mm
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "d.madrisan@proton.me"
  }

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Fuga C-Dur" }
        \null\null
        \line { \abs-fontsize #24 \bold "Über ein Thema von Tommaso Albinoni" }
        \null
        \line {
          \abs-fontsize #12 \italic
          "“Suonate a tre, doi violini, e violoncello col basso per l’organo”, op.1 Nr. 12/4"
        }
        \null\null
        \line { \abs-fontsize #20 "BWV 946" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
        \null\null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on: Bach-Gesellschaft Ausgabe - Leipzig: Breitkopf und Härtel, 1890"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 4/4
  \include "global.ly"
}

\include "./macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | R1*2
  | \highlightSubject { r8 g4 a8~ a b16 c d8 c16 d
  | e8 d4 c8~ c b a4\trill
  %5
  | \unHighlightSubject g8. } a32 g f8. g16 e8. f32 e d16 e f g
  | e4. a8~ a g16 f e4~
  | e8 g a4 g f
  | e8. fis16 g8 fis16 g a8 g16 a b8 a16 b
  | c8 d b c a g4 fis8
  %10
  | g8 a16 b c4 b2
  | a8 r r4 r2
  | \highlightSubject { r8 c4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4\trill
  | \unHighlightSubject e8 } d f e g4. a8
  %15
  | g b e, a d,4 c
  | b8 c f4 e d
  | g, a b4. a16 b
  | c8 e a, d g, c f,16 e f g
  | e8 a4 g8~ g f16 e f8 fis
  %20
  | g4 r r2
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  | \highlightSubject { r8 c4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4~
  %25
  | d8 c16 b c4 } a8 d c4
  | b8. c16 d8 c16 d e8 d16 e fis8 e16 fis
  | g8 f e4 d8 e16 d c8 d16 c
  | b8 c16 bes a8 bes16 a g8 a'16 g f8 g16 f
  | e8 g4 f8~ f e4 d8
  %30
  | cis4 d c b!8 c~
  | c b16 a b8 c16 b c8 d16 e fis8 e16 fis
  | g8 b16 a g e a g fis d g b, c e fis8
  | b,16 d e8 a,16 c d8~ d16 g, c8 f,16 a g f
  | e4. \tieDashed f8~ f g16 a b8 a16 b
  %35
  | c8 b4 \tieSolid a8~ a g f4
  | e8 g16 e c8 a'16 f d8 b'16 a g4
  | e8 b16 c d8 a16 b c8 g' f4\parenthesize\trill
  | e4 f'\rest c'2\rest
  | \override MultiMeasureRest.staff-position = #6
    R1*2
  | \override MultiMeasureRest.staff-position = #8
    R1
  %42
  | \highlightSubject { r8 c,4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4~
  | d8 c4 } d8 b! c a bes
  %45
  | gis a fis gis a16 b! c8~ c d16 e
  | b8. c16 d4 r2
  | b2\rest c4 bes
  | \once\override NoteColumn.force-hshift = #0 a
    f'2 e4~
  | e ees8 d ees4 a
  %50
  | g2 f
  | <c e!>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | \highlightSubject { r8 c4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4\trill
  | \unHighlightSubject c8. } d16 e8 c d8. c16 b8 a16 b
  | c8 g' e a d, g4 f8~
  %5
  | f e4 d8~ d16 g, c8~ c b
  | c8. b16 a4 b4. a16 b
  | c8 e c d b c4 b8
  | c4. c8~ c d g4
  | a g d~ d8. c16
  %10
  | b8 c16 d e4 fis e8 fis16 g
  | cis,8 d4 c8~ c b a4
  | g a b4. c8~
  | c r r4 r2
  | \highlightSubject { r8 g'4 a8~ a b16 c d8 c16 d
  %15
  | e8 d4 c8~ c b a4\parenthesize\trill
  | g4 } a8 b g a f g
  | e4. f8~ f g16 f e4~
  | e8 b c a b g a b
  | c4 b a4. d16 c
  %20
  | b8. c!16 d8 c16 d e8 d16 e fis8 e16 fis
  | g8 b16 a g e a g fis d g b, c e d c
  | b d c e d f e g f8 e d4
  | c8 a16 b c8 b16 c d8 c16 d e8 d16 e
  | f8 e a4 g fis8 \tieDashed gis~
  %25
  | gis4 a16 b a g fis8 g4 fis8
  | g8. a16 b8 a16 b c8 b a4
  | g8 b16 a g8 a16 g fis8 g4 f8~
  | f ees4 \tieSolid d8~ d c4 b8
  | c c' a4 g f
  %30
  | e8 a16 g f8 g16 f e8 f4 e8
  | d8 g4 a8~ a b16 c d8 c16 d
  | e8 d4 c8~ c b a8. a16
  | g8. g16 f8. f16 e8. c16 d8 b
  | c g a4 b8 c b f'
  %35
  | e8 e16 f g8 d16 e f8 c4 b8
  | c4 e,4\rest f2\rest
  | \override MultiMeasureRest.staff-position = #-12
    R1
  | r8 g'4 a8~ \stemUp\tieUp a b16 c d8 c16 d
  | e8 d4 c8~ c b a4
  %40
  | g8 b c4 ~ c8 b4 a8~
  | a b c4 b8 c16 bes a4
  | \stemDown\tieDown
    g f8 a g4 \tieDashed c~
  | c2. a8 g
  | g4. a8 g4 f
  %45
  | e d e8 \tieSolid a4.~
  | a8 g~ g16 a g fis g d e f e b c d
  | r2 g~
  | \once\override NoteColumn.force-hshift = #1 g4
    \once\stemUp
    \once\override NoteColumn.force-hshift = #0.3 f
    g2
  | a1
  %50
  | d4 c2 b4
  | g1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | R1*5
  | \override MultiMeasureRest.staff-position = #4
    R1*2
  | \highlightSubject { r8 g4 a8~ a b16 c d8 c16 d
  | e8 d4 c8~ c b a4\parenthesize\trill
  %10
  | \unHighlightSubject g8 } f e a~ a g16 fis g4~
  | g8 f e a d, g4 f8~
  | f8 e f4 g e
  | f8 c' cis d g, \clef "treble" c4 b8
  | c8 b4 c8~ c d16 e fis8 e16 fis
  %15
  | g8 .gis16 a8. g16 fis8 g4 f8~
  | f e4 d8~ d c4 \clef "bass" b8
  | \highlightSubject { c c,4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4\parenthesize\trill
  | \unHighlightSubject c8 } f d e c cis d4
  %20
  | R1*3
  | \override MultiMeasureRest.staff-position = #6
    R1
  | \override MultiMeasureRest.staff-position = #8
    R1*2
  %26
  | \highlightSubject { r8 g4 a8~ a b16 c d8 c16 d
  | e8 d4 c8~ c b a4\parenthesize\trill
  | g } f e d
  | c8 e f4 c'8 cis d4
  %30
  | a8 f'16 e d8 bes~ bes a g4
  | g8 r r4 r2
  | \override MultiMeasureRest.staff-position = #2
    R1*4
  %36
  | \highlightSubject { r8 c,4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4
  | \unHighlightSubject g8 c } b cis d
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    g4.
  | g8 b4 a8~ a g4 fis8~
  %40
  | fis e4 fis16 e dis4 e
  | fis8 g4 f8~ f e4 d16
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    c
  | b!8 c16 bes a8 c b8 c16 d e8 d16 e
  | f8 e a4 g f
  | e4. f8 d e c d
  %45
  | b c a b c e d4~
  | d2 c\rest
  << {
  | g16 c b a g a g f! \shiftOn e4 g
  | a2 g4 c~
  | c a c4. d16 c
  %50
  | b4 g_~ g2
  | c,1
  } \\ {
  | \change Staff = "upper"
    s2
    \once\override NoteColumn.force-hshift = #0.3 c'~
  | \once\override NoteColumn.force-hshift = #0 c8
    b!16 c d2 s4
  | s1
  %50
  | \change Staff = "lower" \voiceThree
    s4
    \override NoteColumn.force-hshift = #-0.4
    e! d2
  | \override NoteColumn.force-hshift = #0
    g,1
  } >>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-4
  %1
  | R1*5
  | \highlightSubject { r8 c4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4\trill
  | \unHighlightSubject c8. } d16 e8 d16 e fis8 g g4~
  | g8 f4 e8 fis g d4
  %10
  | e8 d c4 d e
  | a, r r2
  | R1*2
  | \override MultiMeasureRest.staff-position = #-10
    R1*3
  | \override MultiMeasureRest.staff-position = #-6
    R1*3
  %20
  | \stemDown \highlightSubject { g8\rest g4 a8~ a b16 c d8 c16 d
  | e8 d4 c8~ c b a4\parenthesize\trill
  | \unHighlightSubject g8 } a b c d16 f a e f d g f
  | e8 f a g b a g4
  | f8 c' cis d b c4 b8
  %25
  | e8 e, a c d b a d
  | g, g,\rest g4\rest g2\rest
  | R1*7
  %34
  | \highlightSubject { r8 c,4 d8~ d e16 f g8 f16 g
  | a8 g4 f8~ f e d4\parenthesize\trill
  | c8 } e4 f8~ f g16 a b8 a16 b
  | c d e8 b16 c d8 a16 b c8~ c b
  | c e16 f g4 fis8 g b,4
  | \stemNeutral  c8 g' gis a fis g d dis
  %40
  | e g a a, b4 c~
  | \stemDown c8 b a d g c f,4~
  | f8 e f fis g c, c'4~
  | c2. c8 b
  | c8. bes16 a g f8~ f e4 d8~
  %45
  | d c4 b8 a a'16 g fis4
  | g8. a16 b4 b,2\rest
  | b2\rest e,_\markup { "Pedal" }
  | f b!4 c
  | fis,1
  %50
  | g
  | c,\fermata
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
    opus = "BWV 946"
    title = \markup { "Fuge C-Dur" }
    subtitle = \markup { \italic "Über ein Thema von Tommaso Albinoni" }
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
