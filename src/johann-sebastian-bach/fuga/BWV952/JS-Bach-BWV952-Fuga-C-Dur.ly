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
        \line { \abs-fontsize #44 \bold "Fuga C-Dur" }
        \null\null\null
        \line { \abs-fontsize #24 "BWV 952" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
        \null\null\null\null
        \null\null\null\null
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
  %1
  | R1
  | r2 \highlightSubject { r16 c e f g d c d
  | b e d e c d b c a d c d b c a b
  | \unHighlightSubject g2 ~ } g8 bes a g
  %5
  | f a g f e16 g a b c4 ~
  | c16 fis, g a b4 ~ b16 e, fis! g a4 ~
  | a16 d, e fis g4 ~ g16 g fis! e fis4
  | g r4 r2
  | r1
  %10
  | r1
  | r2 \highlightSubject { r16 g' a b c g f g
  | e a g a f g e f d g f g e f d e
  | \unHighlightSubject cis4 ~ } cis16 a d8 ~ d16 d cis! b cis a d e
  | f4 ~ f16 a, d f e4 ~ e16 e f g
  %15
  | a f e f d b' a b gis b, c d e a, g a
  | f d' c d b c a b gis8 e r16 e fis gis!
  | a2 ~ a8 gis a b
  | c2 ~ c8 b c d
  | e2 ~ e8 dis e fis
  %20
  | g2 ~ g16 e dis! e c'8 b8
  | a fis b a g16 e dis e c e b e
  | a, e' c e b e a, e' g, e' dis e a, e' g, e'
  | fis, g a c b a g fis g4 r8 g
  | g bes ~ bes16 bes a g f4 r8 f
  %25
  | f a ~ a16 a g f e4 r8 g8
  | bes d ~ d16 d c bes a \highlightSubject { c d e f c bes! c
  | a d c d bes c a bes g c bes c a bes g a
  | f4 } r r16 f e f d e c d
  | b!8 d g f e4 r16 g a b
  %30
  | c2 ~ c8 b c d
  | e16 d e f g e d e g cis, d e f4 ~
  | f16 b, c d e4 ~ e16 a, b c d4 ~
  | d16 g, a b c4 ~ c16 c b a b4
  | c1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \highlightSubject { r16 g a b c g f g e a g a f g e f
  | d g f g e f d e \unHighlightSubject c8 } c'8 b a
  | g f e g f e d f
  | e f e d c2 ~
  %5
  | c4. b!8 c16 r16 r8 r16 fis e fis
  | d4 r16 e d e c4 r16 d c d
  | b4 r16 c b c a4 r16 d c d
  | b4 r4 \highlightSubject { r16 d e fis g d c d
  | b e d e c d b c a d c d b c a b
  %10
  | \unHighlightSubject g } g' f! g e f d e c c' bes c a bes g a
  | f f' e f d e c d b!8 \change Staff = "lower" \voiceOne a g4 ~
  | g8 e a g f d g4 ~
  | g16 g f e f8. d16 e2 ~
  | e16 e d cis d4 ~ d16 d cis! b cis4 ~
  %15
  | cis8 a d4 ~ d8 gis, c4 ~
  | c8
    fis, gis a b4 f'4\rest
  | e8\rest
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    c f! e d b e4 ~
  | e8 e a g f d g4 ~
  | g8 g c b a fis b4 ~
  %20
  | b16 \highlightSubject { b cis dis e b a b g
    \hideStaffSwitch \change Staff = "lower" \voiceOne
    c b c a b g a
  | fis b a b g a fis g \unHighlightSubject e8 } g a g
  | fis a g fis e2 ~
  | e4. \showStaffSwitch \change Staff = "upper" \voiceTwo dis8 e4 r8 e
  | e g cis,4 d r8 d
  %25
  | d f b,4 c r8 e
  | g bes! e,4 f8 r8 r4
  | R1
  | \change Staff = "lower" \voiceOne
    \highlightSubject {
    \change Staff = "upper"  \voiceTwo
    r16 g, a b! c g f g
    \change Staff = "lower" \voiceOne
    e a g a f g e f
  | d g f g e f d e \unHighlightSubject c }
    \hideStaffSwitch \change Staff = "upper" \voiceTwo b' c d e4 ~
  %30
  | e8 e a g f d e f
  | g4 r16 c b c a4 r16 b a b
  | g4 r16 a g a f4 r16 g f g
  | e4 r16 a g a d,4 r16 g f g
  | e1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3
  | \highlightSubject { r16 g a b c g f g e a g a f g e f
  %5
  | d g f g e f d e \unHighlightSubject c8 } b' a g
  | fis d g fis e g fis d
  | g fis e d c a d d,
  | g16  d'[ e fis] g d c d b8 c b a
  | g b e d c a d c
  %10
  | b d g f! e g c bes
  | a c f e \stemDown\tieDown d4 e8 d
  | c2. bes4
  | a1 ~
  | a2 gis4 a8 g
  %15
  | f4. f8 e4. c8
  | d4 a\rest \highlightSubject { b16\rest e fis! gis! a e d e
  | \stemNeutral\tieNeutral c f! e f d e c d b e d e c d b c
  | \unHighlightSubject a } a' g! a f g e f d g f g e f d e
  | c c' b c a b g a fis b a b g a fis g
  %20
  | e4 r \clef treble \voiceTwo e'2 ~
  | e4 dis e2 ~
  | e2 ~ e8 g, c b
  | a fis b4 \clef bass e,16 fis! g a b g e g
  | cis, a' e cis a g' f e d e f g a f d f
  %25
  | b,! g' d b g f' e d c d e f g e c e
  | g, c g e c bes' a g f4 r16 c' d e
  | f8 d g f e c f e
  | \stemDown\tieDown d c16 b! a8 b c2 ~
  | c4 b \highlightSubject { \unHighlightSubject c16 } \highlightSubject { g a b c g f g
  %30
  | \stemNeutral e a g a f g e f d g f g e f d e
  | c4 } r8 e' cis a d c
  | b g c b a d b g
  | c b a e f d g g
  | c,1\fermata
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 952"
    title = \markup { "Fuga C-Dur" }
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
    \tempo 4 = 84
  }
}
