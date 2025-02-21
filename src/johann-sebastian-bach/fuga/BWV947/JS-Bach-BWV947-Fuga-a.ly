\version "2.25.20"

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
        \line { \abs-fontsize #40 \bold "Fuga in a" }
        \null\null
        \line { \abs-fontsize #20 "BWV 947" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
        \null\null\null
        \null\null\null
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
  \key a \minor
  \time 4/4
  \include "global.ly"
}

greyTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | b8\rest a a a b b b16 c d b
  | c8 b16 c a8 b c b c d
  | e b e4~ e8 dis16 cis dis e fis dis
  | e4. d16 c b8 a b e16 d
  %5
  | c4. c8 d4. d8
  | e d16 e c8 d g,4 c
  | b4. b8 a4. a8
  | b a16 b g8 a d,4 f'\rest
  | r8 e e e fis fis fis16 g a fis
  %10
  | g8 fis16 g e8 fis g fis g gis
  | a4. a16 g f8 e f fis
  | g4 d8 g16 f e g d g e8 cis
  | d cis d16 a d c b d a d b8 gis
  | a gis a b c b c gis
  %15
  | a16 gis a b gis8.\prall a16 a8 e a4~
  | a8 gis16 fis gis a b gis a4. g16 f
  | e4 a~ a8 g16 fis g8 g
  | a a a16 b c a b8 a16 b g8 a
  | b a b c d16 c d e d8 c16 b
  %20
  | a8 g a b c4. b16 a
  | g8 fis g a b a b c
  | d4. c16 b a8 b a8. g16
  | g8 r r4 r8 c c c
  | d d d16 e f d e8 e e e
  %25
  | f f f16 g a f g f g a g a bes g
  | a bes f a g a e g f g d f e f c e
  | \stemNeutral d g, b d g d g f e g d g e g d g
  | e4 r8 e f e f g
  | a g a g f16 d, f a d a d c
  %30
  | b d a d b d fis, d' g, d' fis, d' g, d' a d
  | b4 g8\rest b, c b c d
  | e d e b c16 b c d b8.\trill c16
  | \stemUp r8 c' c c d d d16 e f d
  | e8 d16 e c8 d e d e fis
  %35
  | g d g4~ g8 fis16 e fis g a fis
  | g4. f16 e d8 c d e
  | f4. f8 g4. g8
  | a g16 a f8 g c,4 f
  | e4. e8 d4. d8
  %40
  | e8 d16 e c8 d g,4 a'\rest

  | R1*40
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | R1*2
  | r8 e e e fis fis fis16 g a fis
  | g8 fis16 g e8 fis g fis g gis
  %5
  | a e a4~ a8 gis16 fis gis a b gis
  | a4. g16 f e4 a~
  | a8 g16 fis g4 fis4. \once\stemUp fis8
  | b,4 r d4. b'8
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    \once\override NoteColumn.force-hshift = #-0.4
    e,4 e~
    \override NoteColumn.force-hshift = #-0.4
    e dis
  %10
  | e
    \revert NoteColumn.force-hshift
    \change Staff = "upper" \voiceTwo
    d\rest e4._\markup { "m.s." } b'8
  | c b c cis d4. d16 c
  | bes8 a bes b c b c16 e, a g
  | f a e a f8 fis g fis g16 b, e d
  | c e b e c e gis, e' a, e' gis, e' a, e' b e
  %15
  | c b c d b8.\prall a16 a8 c c c
  | d d d d e d16 e c8 d
  | g,4 c b8 e e e
  | fis fis fis16 g a fis g8 fis16 g e8 fis
  | g fis g a b16 a b c b8 a16 g
  | fis8 e fis g a4. g16 fis
  %20
  | e8 d e fis g4. fis16 e
  | d8 c d e fis g4 fis8
  | g16 d g f e g d g c,8 r r4
  | s1*10
  %34
  | R1
  | r8 g' g g a a a16 b c a
  | b8 a16 b g8 a b a b cis
  | d a d4~ d8 cis16 b cis d e cis
  | d4. c16 b a4 d~
  | d8 c16 b c4 b4. b8
  %40
  | e,4 r g c
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | R1*4
  | r8 a a a b b b16 c d b
  | c8 b16 c a8 b c b c d
  | e b e4~ e8 dis16 cis dis
    \change Staff = "upper" \voiceTwo
    e fis dis
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    e4. d16 c b8 a b e16 d
  | c4. b8 c4 b
  %10
  | b r r2
  | R1*4
  | \override MultiMeasureRest.staff-position = #2
    R1*3
  | \override MultiMeasureRest.staff-position = #4
    R1
  | \override MultiMeasureRest.staff-position = #2
    R1*4
  %23
  | r8 g g g a a a16 b c a
  | b8 b b b c c c16 d e c
  | \change Staff = "upper" \voiceTwo
    d8 d d d e16 d e f e f g e
  | f g d f e f c e d e b! d c d
    \change Staff = "lower" \voiceThree
    a c
  | \stemNeutral b4 s2.
  | s1*5
  %33
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    c4
    \showStaffSwitch \change Staff = "lower" \voiceThree
    c~ c b
  | c4. b8 c4. c8
  | d4. d8 e4 d
  | d r r2
  | \clef treble b'8\rest d, d d e e e16 f g e
  | f8 e16 f d8 e f e f g
  | a e a4~ a8 gis16 fis gis a b gis
  | a4. g16 f e4 a~
  | a8 gis16 fis gis8 \clef bass

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-4
  %1
  | R1*6
  | d8\rest e e e fis fis fis16 g a fis
  | g8 fis16 g e8 fis g fis g gis
  | a4. g8 a4 b
  | R1*5
  %15
  | r2 r8 a, a a
  | b b b16 c d b c8 b16 c a8 b
  | c b c d e4 e~
  | e dis g4. fis8
  | e4. d16 c b8 a b c
  %20
  | d16 c d e d8 c16 b a8 g a b
  | c4. b16 a g8 fis g a
  | b a b c d g d d,
  | g r r4 r2
  | R1
  %25
  | s1*2
  | s4 d'8\rest b' c b c b
  | c16 c, e g c g c b a c g c a c e, c'
  | f, c' e, c' f, c' e, c' d,4 d8\rest fis
  %30
  | g fis g a b a b fis
  | g16 g, b d g d g f e g d g e g b, g'
  | c, g' b, g' c, g' d g e d e f d8.\parenthesize\trill c16
  | c4 e f g
  | c,4. g'8 c4. a8
  %35
  | b4. b8 c4 d
  | g, b,\rest b2\rest
  | \override MultiMeasureRest.staff-position = #-9
    R1*2
  | r8 a' a a b b b16 c d b
  %40
  | c8 b16 c a8 b c b c d
  | e4. s8 s2

  | \override MultiMeasureRest.staff-position = #-4
    R1*39
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
    opus = ##f % "BWV 947"
    title = \markup { "" }
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
