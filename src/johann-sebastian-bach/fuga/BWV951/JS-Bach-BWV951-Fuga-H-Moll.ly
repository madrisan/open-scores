\version "2.25.16"

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
        \line { \abs-fontsize #44 \bold "Fuga H-Moll" }
        \null\null
        \line { \abs-fontsize #24 \bold "Über ein Thema von Tommaso Albinoni" }
        \null
        \line {
          \abs-fontsize #12 \italic
          "“Suonate a tre, doi violini, e violoncello col basso per l’organo”, op.1 Nr. 8/2"
        }
        \null\null\null
        \line { \abs-fontsize #24 "BWV 951" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano, Harpsichord, Clavichord" }
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
  \key b \minor
  \time 4/4
  \include "global.ly"
}

\include "./macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  %1
  | R1*2
  | \highlightSubject { r8 b fis cis' fis gis a gis16 fis
  | eis8 e dis d cis b16 a gis4\trill
  %5
  | \unHighlightSubject fis8 } ais b cis fis, b~ b16 cis a8~
  | a16 b g!8~ g16 a fis8 fis16 g! fis e d d' cis b
  | ais4 r4 r16 g' fis e d fis e d
  | cis8. c16 b8. ais16 r b ais b r e d cis
  | d8. fis16 gis4 r16 cis, fis8~ fis8. eis16
  %10
  | r16 fis e cis d8 dis\parenthesize\prall r16 e d b c8 cis\parenthesize\prall
  | r16 d c ais b cis b gis ais! fis b cis ais fis' e cis
  | d8 b r eis, cis eis fis b
  | cis cis4 b8 r16 a gis fis eis4\parenthesize\prall
  | fis8 d'\rest d4\rest d2\rest
  %15
  | R1*3
  | r2 \highlightSubject { r8 fis, b, fis'
  | b cis d cis16 b ais8 a gis g
  %20
  | fis e16 d \unHighlightSubject cis fis } e cis d4 d'16\rest e, d b
  | cis4 r16 d' c a b8 g' fis4
  | e d cis d8 ais
  | b4~ b16 b8 ais16 b cis d8~ d16 d cis b
  | a b cis fis, b a gis fis eis d' cis b a gis fis eis
  %25
  | fis4 r4 r16 cis'8.~ cis16 b8.
  | a!8 d16 cis b d cis b a8. a16 gis8. a16
  | fis8. fis'16 e!8. fis16 d8 b cis dis
  | e16 b g'8~ g16 g fis8~ fis16 b, e8~ e16 e dis\prall cis32 dis
  | \stemNeutral e16 fis g fis e d cis b ais b ais b e,8 d~
  %30
  | d16 b c e g dis e g c! fis, g c e b c e
  | \stemUp g ais, b cis fis, g' fis e d cis b ais! b8 ais
  | fis'2~ fis8 fis4 e8
  | ais, b g fis b4. ais!8
  | b r r4 r2
  %35
  | \override MultiMeasureRest.staff-position = #5
    R1*3
  | r2 \highlightSubject { r8 cis fis, cis'
  | fis gis a gis16 fis eis8 e dis d
  %40
  | cis8 b16 a! \unHighlightSubject gis } d' cis b a a' gis fis eis8.\parenthesize\prall eis16
  | fis16 cis fis8~ fis e~ e d cis c
  | b8. b16 a fis b a gis e a8~ a gis
  | a r r4 r8 d cis c
  | b8. d16 g4~ g8 cis, fis4~
  %45
  | fis8 b, e4~ e8 a, d4~
  | d8 d cis4 d r
  | r r16 b e g cis, a d8~ d cis~
  | cis16 cis b a e'4~ e16 e d cis gis'8.\parenthesize\prall gis16
  | a8 b gis8. gis16 a fis e d cis b a gis
  %50
  | a8 r r4 r r8 b
  | cis d r16 e d cis b8 g'~ g16 g fis e

  | R1*71
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \highlightSubject { r8 fis b, fis' b cis d cis16 b
  | ais8 a gis g fis e16 d cis4\trill
  | \stemDown b4 }
    \showStaffSwitch \change Staff = "lower" \voiceOne
    e16\rest d cis b a b a gis fis
    \change Staff = "upper" \voiceTwo
    fis' e d
  | cis cis' ais fis b, b' gis e a, a' gis fis b, fis' cis eis
  %5
  | \change Staff = "lower" \stemUp
    fis,
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    g' fis e d cis
    \change Staff = "lower" \voiceOne
    b ais b d cis b cis8. fis16
  | b,8. e16 a,8. d16 gis,8 ais b e16 d
    \change Staff = "lower" \voiceOne
  | cis
    \change Staff = "upper" \voiceTwo
    g'! fis e d cis b ais
    \showStaffSwitch \change Staff = "lower" \voiceOne
    b8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    ais'! b e,\rest
  | r16 fis dis8 r16 e cis!8 d fis gis ais!
  | r16 b d8~ d16 d cis b a8. cis16 d b gis8
  %10
  | fis8 r r4 r2
  | \once\override MultiMeasureRest.staff-position = #-8 R1
  | \change Staff = "lower" \voiceOne
    \highlightSubject { r8 b, fis
    \change Staff = "upper" \voiceTwo
    cis' fis gis a! gis16 fis
  | eis8 e dis d cis b16 a \unHighlightSubject gis } cis b gis
  | a8 ais b cis d dis e fis
  %15
  | g gis a ais b16 fis e d g4~
  | g16 b a g fis a g fis e gis a b cis a b cis
  | d a g fis e8.\parenthesize\prall fis16 d e fis8~ fis16 b, e8~
  | e16 ais, b e d cis b ais b g' fis e d e d cis
  | b8 r r16 fis' e d cis8 fis4 e8~
  %20
  | e16 d cis b ais4 r16 b a fis gis4
  | r16 a' g! e fis4 g8 e'4 d8~
  | d cis4 b8~ b ais b e,
  | d e16 cis d8 cis b8. b'16 eis,4
  | fis8. a,!16 d8 b cis r r4
  %25
  | r16 d cis b r cis b a gis8 ais'16 fis~ fis8 gis16 eis~
  | eis fis8.~ fis8 eis fis16 cis fis8~ fis16 fis eis!8
  | fis fis[ gis ais] b16 fis g8~ g16 g fis8
  | e8[ \change Staff = "lower" \voiceOne
    r16 b] a8. a16 g8. g16 fis4
  | e8 r r4 r2
  %30
  | R1
  | r2 \showStaffSwitch \change Staff = "upper" \voiceTwo \highlightSubject { r8 fis' b, fis'
  | b cis d cis16 b ais8 a gis g
  | fis e16 d \unHighlightSubject cis8 } d e fis16 g cis, g' fis e
  | d b fis' d b' fis d' b g e b' g e' b g' e
  %35
  | cis e, a e cis' a e' g, fis d a' fis d' a fis' d
  | b g d' b g' d b' d, cis a a' fis d b g' e
  | cis a fis' d b g e' cis a fis d' b g e cis' a
  | fis d d' b g d b' g eis4 r8 b'
  | a16
    \hideStaffSwitch \change Staff = "lower" \voiceOne
    d, cis b a cis b a gis
    \change Staff = "upper" \voiceTwo
    cis' ais fis r b gis eis
  %40
  | fis4
    \showStaffSwitch \change Staff = "lower" \voiceOne
    r8 gis, fis16 cis' b a gis d' cis b
  | a8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    a' gis g fis8. fis16 e cis fis e
  | dis b e8~ e d~ d cis b4
  | cis8 a' gis g fis4 e8 a~
  | a g r b a4. a8
  %45
  | g4. g8 fis4. fis8
  | e4 r16 a g e fis4 r16 d' g, fis
  | e a fis d g4~ g8. fis16 e b' a g
  | fis4 gis8 cis a8. a16 b4
  | r16 e d cis b fis' e d cis8 r r4
  %50
  | r16 fis, e d cis b a gis \highlightSubject { a8 e'[ a, e']
  | a b cis b16 a \unHighlightSubject gis8 } ais16 b cis4~
  | cis8 c~ c16 c b a! gis8 d'~ d16 d cis b

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  %1
  | R1*2
  | \override MultiMeasureRest.staff-position = #-4
    R1*4
  %7
  | \highlightSubject { r8 fis b, fis' b cis d cis16 b
  | \stemNeutral ais8 a gis g fis e16 d cis8 fis
  | \unHighlightSubject b, } b' eis,4 fis8 d16 a b gis cis8
  %10
  | fis,8 r8 r16 b' a fis g!8 gis\parenthesize\prall r16 a g e
  | fis d e fis g cis, d e fis e d b fis'8 fis,
  | \stemDown b8 b\rest b16\rest d cis b a! b a gis fis fis' e! d
  | \stemNeutral cis cis' ais fis b, b' gis e a,8 b cis4
  | fis,16 g' fis e d e d cis b c' b a g a g fis
  %15
  | e fis e d! cis! g' fis e d8 cis b16 b' a g
  | d'4 ~ d16 fis e d cis d cis b a b a g!
  | fis fis' e d cis b cis ais b8. a16 g8. cis,16
  | fis8 g e fis b, r r16 g' fis e
  | d e d cis b8 e fis,16 fis' dis b e, e' cis a
  %20
  | d,!8 e fis fis' b, d e, e'
  | a, cis d, d' g,16 g' fis e b b' a fis
  | g a g e fis g fis d e g fis e d e d cis
  | b b' g e fis8 fis, b r r4
  | r2 \highlightSubject { r8 cis fis, cis'
  %25
  | fis gis a gis16 fis eis8 e dis d
  | cis b16 a gis8 cis \unHighlightSubject fis, } a b cis
  | d16 a d8~ d16 d cis8 b8. b16 a!8. a16
  | \stemDown\tieDown g!8 b cis dis e c a b
  | e, e'16 fis g fis e8~ e16 d cis b ais b ais b
  %30
  | \stemNeutral\tieNeutral e,1~
  | e16 g' fis e fis8 fis, b r r16 g' fis e
  | d e d cis b b' a g fis fis' dis b e, e' cis ais
  | d,! d'! cis b e, b' fis ais g, g' fis e fis8 fis,
  | b8 r r16 d b d e,8 e' r16 g e g
  %35
  | a,8 a' r16 cis, a cis d,8 d' r16 fis d fis
  | g,8 g' r16 g e g a,8 fis' b e,
  | a d, g cis, fis b, e a,
  | d b b'4~ b16 d cis b a gis fis eis
  | fis8 eis fis4 cis8 fis b,4~
  %40
  | b16 a gis fis \stemDown eis8 eis' fis b, cis4
  | fis8. a16 b gis cis b ais fis b8~ b a~
  | \stemNeutral a gis16 g fis8 f e8. fis16 d b e e,
  | a e' cis a e e''[ cis a] d a fis d r a' fis d
  | g d b g r g' e cis! fis cis a fis r fis' dis b
  %45
  | e b g e r e' cis a d a fis d r d' b fis
  | g b g e a8 a d,16 a' d e fis8 e16 d
  | cis8 c b a16 g a8 b g a
  | d, d'~ d16 cis b a fis'4~ fis16 fis e d
  | cis8 d e e, a e' a b
  %50
  | cis16 a gis fis e d cis b cis fis e d cis b a gis
  | a fis' e d cis8 d e16 d cis b ais8.\parenthesize\prall ais16

  | R1*70
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
    opus = "BWV 951"
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
