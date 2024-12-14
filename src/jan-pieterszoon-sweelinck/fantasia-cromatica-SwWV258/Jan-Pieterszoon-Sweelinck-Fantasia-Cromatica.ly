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
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \set maximumBeamSubdivisionInterval = \musicLength 16
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
  \pageBreak
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
  \break
  | d'4\rest c c8 b a g
  | f2 g4 bes
  | bes8 a g f g f16 e d e f g
  %90
  | a4 e f a~
  | a g g8 f e d
  | c4 e e8 d c b
  | a4 d4. e8 cis4
  | d2 \once\override Voice.Rest.X-offset = #-0.6 r
  %95
  | d'4\rest a a b
  | c a c b8 a
  | gis4 a~ a16 gis a gis a gis fis gis
  | a2 r
  | R1
  %100
  | d4\rest a a b
  | c a c b8 a
  | g4 c a g8 f
  | e4 e e fis
  | g2. g4
  %105
  | a4 f f g
  | a f a g8 f
  | e4 e e fis
  | g e g f8 e
  | d4 d d e
  %110
  | f d f e8 d
  | c4 f f16 d e f g e f g
  | a bes a g f e f g a4 g8 f
  | e16 g a b c4 c d
  | e c e d8 c
  %115
  | b8 c16 d e8 d c4 b8 a
  | g2. a4
  | b4 d c b8 a
  | gis4 \once\tieDashed a~ a16 gis a gis a gis fis gis
  | a1
  %120
  | R1
  | r2 r4 a
  | e' d cis b
  | a g f e
  | g2. a4
  %125
  | bes c d2~
  | d4 cis8 b cis4. d8
  | e2 d4 cis
  | d a a2
  | d4\rest b e4. d8
  %130
  | c4 b e2~
  | e4 e d cis
  | d a d2~
  | d4 d cis b
  | cis1
  %135
  | d4\rest a d4. c8
  | b4 a g f
  | e g c4. b8
  | a4 g f e
  | f g a2
  %140
  | a1
  | a
  | gis
  | g
  | fis
  %145
  | f
  | e2 \stemNeutral d16 e f g a b c d
  | e f g f d e f e f e f e f e d e
  | f d d e f a, b c d d, e f
    \set subdivideBeams = ##t
    g32 a bes a g f e d
    \set subdivideBeams = ##f
  | cis4 a' a a
  %150
  | gis g fis f
  | \stemUp e e' e e
  | dis d cis c
  | b d d d
  | cis c b bes
  %155
  | \stemNeutral a c c c
  | b bes a a
  | \stemUp g bes bes bes
  | a a g g
  | fis g g g
  %160
  | fis f e e
  | \stemNeutral\tieNeutral d16 e f g a b c d e a, a b c b c a
  | b gis gis a b a b g a fis fis g a g a f
  | g g g a b c d e d c b a b a b g
  | a g fis g a b c d e f! g a
    \set maximumBeamSubdivisionInterval = \musicLength 8
    \set subdivideBeams = ##t
    g32 f e d c b a g
    \set subdivideBeams = ##f
  %165
  | f16 e f g a b c d c a f' e d c b a
  | g e e' d c b a g f d d' c b a g f
  | \tuplet 6/4 { e16 d c d e f } \tuplet 6/4 { g f g a g f }
    \tuplet 6/4 { e d e f e f } \tuplet 6/4 { g f g a g a }
  | \omit TupletNumber
    \tuplet 6/4 { b a b c b c }
    \tuplet 6/4 { d c b a g \once\override Accidental.transparent = ##t f^\shouldbesharp }
    \tuplet 6/4 { e' d cis b a g } \tuplet 6/4 { c b a g f! e }
  | d4~ \tuplet 6/4 { d16 c b c d e } \tuplet 6/4 { fis e d e fis g } \tuplet 6/4 { a g fis g a b }
  %170
  | \tuplet 6/4 { cis b a b cis d } \tuplet 6/4 { e d c d e f }
    \tuplet 6/4 { g f g a g f } \tuplet 6/4 { g f g f e d }
  | cis1
  | e4\rest \stemUp\tieUp d d d
  | cis c b bes
  | a2 d4\rest g,
  %175
  | g4 g fis f
  | e ees d4. e8
  | f4. g8 a2
  | d4\rest d d d
  | cis c b bes
  %180
  | a4. b8 cis d e c
  | d4. e8 f4 e8 d
  | cis[ d e d16 c] b8[ c d c16 b]
  | a8[ b c b16 a] g8 a4 g8
  | f4 e2 d4
  %185
  | cis2 d'\rest
  | d8\rest a a a gis g fis f
  | e4 f e d
  | cis16 d e d e d b cis d cis d cis d cis b cis
  | d8 d' d d cis c b bes
  %190
  | \override MultiMeasureRest.staff-position = #2
    a4 bes a g
  | fis8 d' d d cis c b bes
  | a4 bes bes bes
  | a2 g~
  | \stemNeutral g8 fis16 e fis g a bes a g a g a g fis e
  %195
  | fis16 d e fis g a b c d e fis g \undo\omit TupletNumber \tuplet 6/4 { a g a g fis e }
  | \tuplet 6/4 { g fis g fis e d } \tuplet 6/4 { e d e d c b }
    \tuplet 6/4 { c b c b a g } \tuplet 6/4 { a g a g fis e }
  | <d fis>1\fermata
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
  | c16 b a b c a b g
    \showStaffSwitch \change Staff = "lower" \voiceThree
    a g f g a f g e
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
  | \change Staff = "lower" \voiceThree
    b
    \change Staff = "upper" \voiceTwo
    b4\rest e
  | \change Staff = "lower" \voiceThree
    a, b c8 d e
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    f
  | g2 g
  | f4.
    \once\override Staff.TextScript.extra-offset = #'(0.4 . 1)
    g8_\shouldbesharp a4 b
  %50
  | e,4. fis8 g4 a
  | d,8 e16 f g8 d e2
  | b e
  | b\rest d
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
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    b
  %65
  | a
  | g4
    \change Staff = "upper" \voiceTwo
    c d d,\rest
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
  | \change Staff = "lower" \voiceThree
    e d c b c4 d
  | e b e2~
  | e4 d8 c d2
  | \change Staff = "upper" \voiceTwo
    e8 d c b a2
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
  | f4 d' \stemUp d e
  %95
  | \stemDown f d f e8 d
  | c4 d e f
  | e d8 c b2
  | a4 d c d
  | e f e d
  %100
  | e2 d
  | c4\rest c c d
  | e e e d
  | c2 a\rest
  | \once\override NoteColumn.force-hshift = #0.6 d1
  %105
  | d
  | d
  | cis
  | c
  | b
  %110
  | bes
  | a2 a\rest
  | \override MultiMeasureRest.staff-position = #-8
    \once\override MultiMeasureRest.X-offset = #-0.6 R1
  | g4\rest e' e f
  | g1
  %115
  | g2 g4 f
  | e1
  | c4\rest
    \change Staff = "lower" \voiceThree
    b
    \change Staff = "upper" \voiceTwo
    e2
  | c8\rest e
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    d c b2
  | a
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    a4\rest d
  %120
  | f e d c
  | \change Staff = "lower" \voiceThree
    b a g f
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    R1*2
  | \once\override MultiMeasureRest.X-offset = #0.6 R1
  %125
  | R1
  | e'2\rest d4\rest a'
  | c4. b8 a4 g
  | f8 g16 f e4. f16 e d e f d
  | e2 c4\rest
    \showStaffSwitch \change Staff = "lower" \voiceThree
    b
  %130
  | \change Staff = "upper" \voiceTwo
    e4.
    \change Staff = "lower" \voiceThree
    d8 c4 b
  | \once\tieDashed a1~
  | a2
    \change Staff = "upper" \voiceTwo
    e'\rest
  | e\rest d4\rest e
  | a4. g8 fis4 e
  %135
  | d2 b4\rest
    \change Staff = "lower" \voiceThree
    a
  | \change Staff = "upper" \voiceTwo
    d4. c8 b4 a
  | g2 a\rest
  | \once\override Voice.Rest.X-offset = #-0.9 d4\rest
    g, \once\override NoteColumn.force-hshift = #-0.4 c4. b8
  | a4 d4. e8 cis4
  %140
  | d d d d
  | cis2 c
  | d,4\rest e' e e
  | d1
  | c,4\rest d' d d
  %145
  | c1
  | \once\override NoteColumn.force-hshift = #-0.4 c2 s
  | \hideStaffSwitch \change Staff = "lower" \voiceThree
    c2. c4
  | bes a2 g4
  | a a a8 b
    \change Staff = "upper" \voiceTwo
    c d
  %150
  | e8
    \change Staff = "lower" \voiceThree
    e,16 f \stemNeutral g a b c d8 d,16 e f g a b
  | c8 a16 b \stemDown c
    \change Staff = "upper" \voiceTwo
    d e f g8 c,16 d e f g a
  | b8 b,16 cis d e f g a8[ a,8~] a16 b c! d
  | e8 b~ b16 c d e fis8 d~ d16 e fis g
  | a8 e a16 g f e d
    \change Staff = "lower" \voiceThree
    \stemDown c b a g f e d
  %155
  | \stemNeutral
    c b a g a b c d e a, c d e c e f
  | g a b c d g, bes c d d, f g a f a b!
  | \stemDown c
    \change Staff = "upper" \voiceTwo
    d e f g8 f16 e d
    \change Staff = "lower" \voiceThree
    \stemDown c bes a g f e d
  | \stemNeutral c b a g f g a b c d e f g a b c
  | d a d c b a g f e c g' f e d c b
  %160
  | a a' d, e f g a b cis a b cis
    \set maximumBeamSubdivisionInterval = \musicLength 8
    \set subdivideBeams = ##t
    d16 cis d32 cis b cis
    \set subdivideBeams = ##f
  | \change Staff = "upper" \voiceTwo
    s1*10
  %171
  | e4\rest a a a
  | gis g fis f
  | e2 c4\rest f
  | f f e e
  %175
  | d2 a4\rest d~
  | d c bes
    \showStaffSwitch \change Staff = "lower" \voiceThree
    a8 g
  | \change Staff = "upper" \voiceTwo
    g4\rest a a a
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    gis g
    \change Staff = "upper" \voiceTwo
    e'\rest a
  | a a gis g
  %180
  | fis f e a~
  | a g a2~
  | a e\rest
  | c\rest c8\rest e e e
  | c2 b\rest
  %185
  | f8\rest a' a a gis g fis f
  | e2. d4
  | c2. a4
  | \change Staff = "lower" \voiceThree
    a1
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    s1
  %190
  | b8\rest d d d cis c b bes
  | g4\rest a'2 g4
  | \once\override Staff.TextScript.extra-offset = #'(0.4 . 2)
    \once\override Accidental.transparent = ##t f_\shouldbesharp d2 d4
  | d1
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    d
  %195
  | s
  | d
  | \change Staff = "upper" \voiceTwo
    a
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \override MultiMeasureRest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
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
  | d2\rest \once\stemDown a'
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
  | \once\override NoteColumn.force-hshift = #1 gis2 g
  %65
  | \once\override NoteColumn.force-hshift = #1 fis f
  | \once\override NoteColumn.force-hshift = #0.4 e2 g4\rest g
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
  | \stemDown a a
  | gis g
  | fis f
  | \stemUp e f
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
  | d8 e f d
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    bes'4 a8 g
  %95
  | \change Staff = "lower" \voiceThree
    a1
  | a
  | \override MultiMeasureRest.staff-position = #2
    R
  | \once\override Voice.Rest.X-offset = #0.3
    c4\rest a a b
  | c a c b8 a
  %110
  | gis4 a f e8 d
  | e4 a a b
  | c a c b8 a
  | g4 a g
    \change Staff = "upper" \voiceTwo
    a
  | bes
    \change Staff = "lower" \voiceThree
    g bes a8 g
  %115
  | f4. g8 a2
  | \override MultiMeasureRest.staff-position = #5
    R1*5
  %111
  | c4\rest a a b
  | c a
    \change Staff = "upper" \voiceTwo
    c b!8 a
  | \change Staff = "lower" \voiceThree
    g1
  | c4\rest c c d
  %115
  | e c e d8 c
  | b4 c c b8 a
  | gis2 a4 g8 f
  | e1
  | f
  %120
  | s1*2
  | e1
  | a2\rest a4\rest a
  | \change Staff = "upper" \voiceTwo
    d c
    \change Staff = "lower" \voiceThree
    b a
  %125
  | g f e d
  | e2 a
  | a1
  | a
  | gis
  %130
  | g
  | fis
  | f
  | e
  | e4\rest e a4. g8
  %135
  | fis4 e d2
  | d1
  | e1*1/2 g4\rest g
  | \change Staff = "upper" \voiceTwo
    \once\override NoteColumn.force-hshift = #0.2 c4. b8 a4
    \change Staff = "lower" \voiceThree
    g
  | f e8 d e2
  %140
  | d8 e f g a2
  | R1
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    b
  | bes
  | a
  %145
  | a2 a4 a
  | g2
    \change Staff = "lower" \voiceThree
    s
  | g1
  | \once\override NoteColumn.force-hshift = #0.4 f2 d
  | \once\override NoteColumn.force-hshift = #0.4 e d\rest
  | s1*11
  %161
  | d'4 <c e> c8 d e c
  | e b e, e' d a d, d'
  | e c b a b c d b
  | d a4 a8 b a b c
  %165
  | d d c b a b c d
  | g, a b c f, g a b
  | c4 b g b
  | fis b2 a4
  | b2 a4 fis
  %170
  | e4 a2 g4
  | a4. g16 f e2
  |\override MultiMeasureRest.staff-position = #2
    R1
  | a2\rest a4\rest d
  | d d cis c
  %175
  | b bes a2~
  | a a2\rest
  | f2 e
  | s2 fis4 f
  | e2 b'4\rest d
  %180
  | d d cis c
  | b bes a8 b c d
  | e d cis d e[ d16 c b8 c]
  | d8[ c16 b a8 b] c4 b
  | a8\rest a a a gis g fis f
  %185
  | e2. d4
  | cis2. d4
  | e8 a a a gis g fis f
  | e1
  | fis4. g8 a4 g
  %190
  | fis2 f\rest
  | a4 fis2 g4
  | a g d4. e8
  | f g a f bes2
  | \tieDown a1~
  %195
  | a~
  | a
  | d,
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
  | R1*3
  | \once\override MultiMeasureRest.X-offset = #-0.8 R1
  | \once\override MultiMeasureRest.X-offset = #-1.4 R
  | \once\override MultiMeasureRest.X-offset = #-0.6 R
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
  | a2 b\rest
  | a4\rest a a b
  | c a c b8 a
  | g2 g'4 f8 e
  %105
  | d4 d d e
  | f16 g f e d c d e f d e f g e f g
  | a8 g16 f e d cis b a8 e' a a,
  | e'16 f e d c b c d e c d e f d e f
  | g8 f16 e d c b a g8 d' g g,
  %110
  | d'16 e d c bes a bes c d e f d e c d e
  | f4 d f e8 d
  | c4 d a16 b! c a b c d b
  | \once\tieDashed c1~
  | c2 b\rest
  %115
  | c4\rest c c d
  | e c e d8 c
  | b2 a
  | R1
  | d
  %120
  | d
  | d
  | cis
  | c
  | b
  %125
  | bes
  | a
  | a4\rest a f' e
  | d c8 d16 e f2
  | e1~
  %130
  | e
  | g,2\rest a4\rest a
  | d4. c8 bes4 a
  | g2 \once\tieDashed a~
  | a a4\rest a
  %135
  | d4. c8 b4 a
  | g a b2
  | c4. b8 a4 g
  | f e f c'
  | d bes a2
  %140
  | f4\rest d' d8 e f g
  | a g16 f e d cis b a e' d e a, a' g a
  | e b cis d e fis gis a gis8 e4 fis8
  | g16 d e f g bes, c d g, d' e f g g, bes c
  | d e fis g a fis g e fis d e cis d d, d' e
  %145
  | f f, c' bes a g f e f g a b c d e f
  | c d e f g a b c s2
  | c,1
  | d2 bes
  | a g\rest
  | s1*11
  %161
  | r4 a' a a
  | gis g fis f
  | e g g g
  | fis f e e
  %165
  | d f f f
  | e e d d
  | c e e e
  | dis d cis c
  | b d d d
  %170
  | cis c b bes
  | a1
  | R1*4
  %176
  | b2\rest a4\rest d
  | d d cis c
  | b bes \once\tieDashed a2~
  | a8 b c d e f g4
  %180
  | d8 e f g a2
  | b,2\rest b4\rest a'
  | a a gis g
  | fis f e2
  | a,1
  %185
  | a
  | a
  | a
  | a
  | d
  %190
  | d
  | d
  | d4 g,4. a8 bes c
  | d e f d g4 g,
  | d'1~
  %195
  | d~
  | d
  | d,\fermata
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
