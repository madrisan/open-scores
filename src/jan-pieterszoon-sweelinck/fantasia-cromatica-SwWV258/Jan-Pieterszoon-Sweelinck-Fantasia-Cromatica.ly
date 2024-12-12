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
        \line { \abs-fontsize #30 \bold "Jan Pieterszoon" }
        \null
        \line { \abs-fontsize #80 \bold "Sweelinck" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Fantasia Cromatica" }
        \null\null
        \line { \abs-fontsize #20 "SwWV 258" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Harpsichord, Piano" }
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
          \abs-fontsize #10 "Based on: Jan Pieterszoon Sweelinck Opera Omnia, Amsterdam 1968"
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

greyTextColor = #(x11-color "dimgray")
shouldbesharp = \markup { \tiny \musicglyph #"accidentals.sharp" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*4
  | a1
  | a2 a
  | gis g
  | fis f
  | e r4 a
  %10
  | d, e f g
  | a e2 f4^\shouldbesharp
  | g d2 e4
  | f8 g16 f e4. d16 c d e f d
  | e1
  %15
  | R1*2
  | d'2\rest d
  | d d
  | cis c
  %20
  | b bes
  | a e'4\rest e
  | a, b c d
  | e b2 cis4
  | d a2 b4
  %25
  | c8 d16 c b8 c16 b a8 g16 f e f g e
  | f4 g a g8 f
  | e4. fis8 g4 a
  | d,4. e8 f4 g
  | c,4 d16 e f g a2
  %30
  | a a
  | gis g
  | fis f
  | e b'4\rest a
  | d, e f g
  %35
  | a g a b
  | cis4. d8 e2
  | d1
  | c2 a
  | a a
  %40
  | gis g
  | fis f
  | e b'4\rest a
  | e fis g a
  | b fis2 gis4
  %45
  | a e2 fis4
  | gis16 a b e, fis gis a gis a gis a gis a gis fis gis
  | a2 e'
  | e e
  | dis d
  %50
  | cis c
  | b c4\rest b
  | e, fis g a
  | b fis2 g4^\shouldbesharp
  | a4 e2 fis4
  %55
  | g
    \once\override Accidental.transparent = ##t
    f8^\shouldbesharp
    e fis4 g
  | a2 d\rest
  | R1*2
  | r2 a
  %60
  | a a
  | gis g
  | fis f
  | e2. fis4
  | gis8 a b cis d4 d,8 e
  %65
  | fis g a b c4 c,8 d
  | e f g a bes4 bes,8 c
  | d e f g a4 f
  | e2 \stemNeutral d16 e f g a b c d
  | e d b cis d cis d cis d cis d cis d cis b cis
  %70
  | d2 a
  | \stemUp a a
  | gis g
  | fis f
  | e1
  %75
  | e'4\rest e f8 e d c
  | b4 e e8 d c b
  | a4 d d8 c b a
  | g4 e a8 g f e
  | f2. g4
  %80
  | a e8 f16 g a2~
  | a4 g8 fis g2
  | a2 a4 a8 g
  | f e d4 g g8 f
  | e d c4 f f8 e
  %85
  | d4 g g8 f e d
  | c1
  | d'4\rest c c8 b a g
  | f2 g4 bes
  | bes8 a g f g f16 e d e f g
  %90
  | a4 e f a~
  | a g g8 f e d
  | c4 e e8 d c b
  | a4 d4. e8 cis4
  | d2 r
  %95
  | d'4\rest a a b
  | c a c b8 a
  | gis4 a~ a16 gis a gis a gis fis gis
  | a2 r
  | R1
  %100
  | d4\rest a a b

  | R1*97
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \set maximumBeamSubdivisionInterval = \musicLength 16
  %1
  | d1
  | d2 d
  | cis c
  | b bes
  %5
  | a a4\rest d
  | a b c d
  | e b2 cis4
  | d a2 b4
  | c16
    \change Staff = "lower" \voiceThree
    b a b c a b g a g f g a f g e
  %10
  | f4 g a g8 f
  | e4. fis8 g4 a
  | d,4. e8 f4
    \change Staff = "upper" \voiceTwo
    g
  | a g f2
  | c' c
  %15
  | b4. cis8 d4 e
  | a,4. b8 c4 d
  | e8 a e g f2~
  | f8 g16 f e8 f16 e d2
  | e2\rest e4\rest a
  %20
  | d,4. e8 f4 g
  | c, f e2
  | R1*4
  %26
  | d2 d4 d
  | cis2 c
  | b bes
  | a4 f\rest b\rest d
  %30
  | a b cis d
  | e b2 cis4
  | d a2 b4
  | cis8 d e4 d c
  | bes2 a
  %35
  | f'1
  | e4. fis8 g4 a
  | d,4. e8 f4 g
  | a4. g8 f4 e8 d
  | e2 e~
  %40
  | e4 d8 c d4 e
  | d c8 b c4 d
  | g, a16 b c d e2
  | e e
  | dis d
  %45
  | cis c
  | b b4\rest e
  | a, b c8 d e f
  | g2 g
  | f4. g8_\shouldbesharp a4 b
  %50
  | e,4. fis8 g4 a
  | d,8 e16 f g8 d e2
  | b e
  | c\rest d
  | e c
  %55
  | d2. e4
  | \set subdivideBeams = ##t
    f!4. e8 f32 d e f g a b c d c b a g f e d
    \set subdivideBeams = ##f
  | e1
  | e2\rest d
  | d d
  %60
  | cis c
  | b bes
  | a2. b4
  | c1
  | b
  %65
  | a
  | g4 c d d,\rest
  | f\rest d' c2
  | c4
    \showStaffSwitch
    \change Staff = "lower" \voiceThree
    b a2
  | a1
  %70
  | a
  | \change Staff = "upper" \voiceTwo
    b4\rest d f8 e d c
  | b4 e e8 d c b
  | a4 d d8 c b a
  | g4 a8 b c b c d
  %75
  | e d c b c4 d
  | e b e2~
  | e4 d8 c d2
  | e8 d c b a2
  | d1
  %80
  | e4 g,\rest e' d8 c
  | d2. e4
  | f e8 d e4 d
  | d8 c b a b4 c
  | c8 b a g a4 a
  %85
  | b4 b8 a g2
  | a4. a8 g4~ g16 a bes c
  | a4 a' a8 g f e
  | d1
  | d2 d
  %90
  | cis c
  | b bes
  | a4 c c8 b a g
  | f4 bes2 a8 g
  | f4 d' d e
  %95
  | f d f e8 d
  | c4 d e f
  | e d8 c b2
  | a4 d c d
  | e f e d
  %100
  | e2 d
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \override MultiMeasureRest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \set maximumBeamSubdivisionInterval = \musicLength 16
  %1
  | R1*8
  | s1*4
  | f2\rest a
  | a a
  %15
  | gis g
  | fis f
  | e a4\rest a
  | d,4 e f g
  | a e2 fis4
  %20
  | g d2 e4
  | f16 g a g f g a b c4. b8
  | c4 d e d8 c
  | b4. cis8 d4 e
  | a,4. b8 c4 d
  %25
  | e d c b
  | a1
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  | c4\rest a d,4. e8
  %30
  | f4 g a2
  | e4. fis8 g4 e
  | d4. e8 f4 e8 d
  | a'4. g8 fis g16 fis
    \set subdivideBeams = ##t
    g32 fis g fis g fis e fis
    \set subdivideBeams = ##f
  | g2 f4 e
  %35
  | d e f g
  | a e2 fis4
  | g d2 e4
  | f e f8 g a b
  | c2 c
  %40
  | b b4 e,
  | a2 a4 d,
  | e2 c'
  | c c
  | b1
  %45
  | a
  | e
  | a2\rest a
  | e4 f^\shouldbesharp g a
  | b fis2 gis4
  %50
  | a e2 fis4
  | g2 b4\rest g
  | g a b a8 g
  | fis4. g8^\shouldbesharp a4 b
  | e,4.
    \once\override Accidental.transparent = ##t
    f8^\shouldbesharp g4 a
  %55
  | d,1
  | a'2\rest a
  | a a
  | gis g
  | fis f
  %60
  | e2. d4
  | e4. fis8 g4 g
  | d e f g
  | a2 a4 a
  | gis2 g
  %65
  | fis f
  | e2 g4\rest g
  | d4. e8 f g \once\tieDashed a4~
  | a \stemDown g f2
  | \once\override NoteColumn.force-hshift = #-0.4 e4 d e2
  %70
  | \stemUp
    \once\override NoteColumn.force-hshift = #1
    fis2. g4
  | a1
  | R1*2
  | f2\rest a
  %75
  | a a
  | gis g
  | fis f
  | e f
  | a4\rest a bes8 a g f
  %80
  | e4 a a8 g f e
  | d4 g g8 f e d
  | c4 c' c8 b a4
  | \override MultiMeasureRest.staff-position = #5
    R1*2
  %85
  | g4 g8 f e d c d
  | e4 f4. e16 d e c d e
  | f1
  | b4\rest bes bes8 a g f
  | g4. a8 bes2
  %90
  | a d\rest
  | a\rest g4 g8 f
  | e d c d e2
  | f4 f e2
  | d8 e f d bes'4 a8 g
  %95
  | a1
  | a
  | \override MultiMeasureRest.staff-position = #2
    R
  | \once\override Voice.Rest.X-offset = #0.3
    c4\rest a a b
  | c a c b8 a
  | gis4 a f e8 d

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override MultiMeasureRest.staff-position = #-4
  %1
  | R1*8
  | b2\rest d
  %10
  | d d
  | cis c
  | b bes
  | a a4\rest d
  | a b c d
  %15
  | e b2 cis4
  | d a2 b4
  | cis2 d
  | bes1
  | a
  %20
  | R1
  | b2\rest a'
  | a a
  | gis g
  | fis f
  %25
  | e a
  | d,4 e f g
  | a e2 fis4
  | g d2 e4
  | f1
  %30
  | R1*4
  | b,2\rest d
  %35
  | d d
  | cis c
  | b bes
  | a a4\rest d
  %40
  | a b c d
  | e b2 cis4
  | d a2 b4
  | c2 a
  | R1*8
  %51
  | b2\rest e
  | e e
  | dis d
  | cis c
  %55
  | b d
  | d d
  | cis c
  | b bes
  | \once\tieDashed a1~
  %60
  | a
  | R1
  | g2\rest d'
  | a4 b c d
  | e2 b4. cis8
  %65
  | d2 a4. b8
  | c2 g4. a8
  | bes2 f4. g8
  | \once\tieDashed a1~
  | a
  %70
  | \once\tieDashed d~
  | d
  | R1*6
  | g,2\rest d'
  | d d
  %80
  | cis c
  | b bes
  | a4 a' a8 g f e
  | d4 g g8 f e d
  | c4 f f8 e d c
  %85
  | b a g4 c c8 b
  | a g f4 c'2
  | f, a
  | bes b\rest
  | R1
  %90
  | a4\rest a' a8 g f e
  | d4 e g g,
  | a2 f4\rest a
  | d8 c bes a g4 a
  | bes2 g
  %95
  | d'1
  | R
  | r4 d d e
  | f d f e8 d
  | c4 d e f
  %100
  | e cis d c8 b

  | R1*97
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
    composer = "Jan Pieterszoon Sweelinck"
    opus = "SwWV 258"
    title = \markup { "Fantasia Cromatica" }
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
