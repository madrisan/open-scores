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
        \line { \abs-fontsize #30 \bold "Carl Philipp Emanuel" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Solfeggio in c-Moll" }
        \null\null\null
        \line { \abs-fontsize #24 "Wq 117/2, H.220" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano, Harpsichord" }
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
          \abs-fontsize #10 "Based on: Les Éditions Outremontaises - Montréal, 2006"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \minor
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s4 c16 ees d c b s8. g'16 f ees d
  | ees s8. c'16 ees d c d c b a g f ees d
  | ees16 s8. c'16 ees d c b s8. g'16 f ees d
  | ees16 s8. c'16 ees d c d c b a g f ees d
  %5
  | ees16 s4 c'16[ g ees] aes s4 aes,16[ c ees]
  | d16 s4 bes'16[ f d] g s4 g,16[ bes d]
  | c a s8 c16 a s8 ees'16 c s8 ees16 c s8
  | d16 c s8 a'16 c, s8 fis16 c s8 c16 a! s8
  | bes16  s8. s2.
  %10
  | s4 g16 bes a g a g fis e d c bes a
  | bes16 s8. g'16 bes a g fis s8.d'16 c bes a
  | bes16 s8. g'16 bes a! g a g fis e d c bes a!
  | bes g bes d \stemNeutral g d bes g r g' d b g b d g
  | \stemUp b16\rest g, g' g, b'16\rest g, g' g, b'16\rest g, g' g, b'16\rest g, g' g,
  %15
  | \stemNeutral ees' c ees g c g ees c r c' g e c e g c
  | \stemUp e16\rest c, c' c, e'16\rest c, c' c, d'16\rest c, bes' c, d'16\rest c, bes' c,
  | aes'16 s8. s2.
  | s4 f,16 aes g f g f e d s4
  | s4 f16 aes g f e s8. c'16 bes aes g
  %20
  | aes s8. f'16 aes g f g f e d c bes aes g
  | aes f' c aes f c' aes f c aes' f c aes f' c aes
  | \stemNeutral r2 aes''16 f e f g f e f
  | r2 aes,16 f e f g f e f
  | r2 d''16 f, g aes g f ees! d
  %25
  | ees g c g bes aes g f ees4 d\prall
  | \stemUp b'16\rest g, g' g, b'\rest g, g' g, b'\rest g, f' g, b'\rest g, f' g,
  | b'\rest g, e' g, b'\rest g, e' g, b'\rest ees, c' ees, b'\rest ees, c' ees,
  | b'\rest f, d' f, b'\rest f, d' f, b'\rest des, bes' des, b'\rest des, bes' des,
  | e\rest ees, c' ees, e'\rest ees, c' ees, \stemNeutral r c' c' c, r c c' c,
  %30
  | r16 c ees g c g ees c g' ees c g f' d b f
  | \stemUp ees s8. c16 ees d c b s8. g'16 f ees d
  | ees s8. c'16 ees d c d c b a g f ees d
  | ees s8. c'16 ees d c b s8. g'16 f ees d
  | ees s8. c'16 ees d b c s8. s16 g, ees d
  %35
  | c8 r r4 r2
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1
  | s16 c ees g s2.
  | s16 c, ees g s4 s16 g b! d s4
  | s16 c ees g s2.
  %5
  | s16 c,[ g ees] c s8. s4 f16 s8.
  | s16 bes[ f d] bes s8. s4 ees16 s8.
  | s8 gis16 a! s8 gis16 a s8 g16 a s8 g16 a
  | s8 fis16 a! s8 fis16 a s8 d,16 a' s8 fis16 d
  | s1*2
  %11
  | s2 s16 d fis! a! s4
  | s16 g bes d s2.
  | s1
  | <ees, c'>4_. q_. <d b'>_. q_.
  %15
  | s1
  | <aes' f'>4_. q_. <g e'>_. q_.
  | s1*2
  | s2 s16 c, e! g s4
  %20
  | s16 f aes c s2.
  | aes16 s8. f16 s8. c16 s8. aes16 s8.
  | s1*4
  %26
  | <ees' c'>4_. q_. <d b'>_. q_.
  | <c bes'>_. q <f a>_. q_.
  | <bes, aes'>_. q_. <ees g>_. q
  | <aes, fis'>_. q_. s2
  %30
  | s1*2
  | s16 c ees g s2.
  | s16 c, ees g s4 s16 g b! d s4
  | s16 c ees g s4 s16 g[ ees d] c16

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | ees16 s8. s2.
  | s1*7
  %9
  | s4 g16 bes a g fis s8. d'16 c bes a
  | bes16 s8. s2.
  | s1*6
  %17
  | s4 f16 aes g f e s8. c'16 bes aes g
  | aes s8. s2 c16 bes aes g
  | aes16 s8. s2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s16 c ees g s4 s16 g b d s4
  | s1*3
  %5
  | s2 s16 f, aes c s4
  | s2 s16 ees, g bes s4
  | s1*2
  | s16 g, bes d s4 s16 d fis! a! s4
  %10
  | s16 g bes d s2.
  | s16 g, bes d s2.
  | s1
  | \stemNeutral <g,, g'>4 r <f f'> r
  | s1
  %15
  | <c' c'>4 r <bes bes'> r
  | s1
  | \stemDown s16 f aes c s4 s16 c e! g s4
  | s16 f aes c s2.
  | s16 f, aes c s2.
  %20
  | s1*2
  | des,1
  | c
  | b
  %25
  | \stemNeutral <c, c'>4 f' g g,
  | s1*3
  | s2 <fis' ees'>4^. q^.
  %30
  | <g ees'> r r g,
  | r16 c ees g s4 s16 g b d s4
  | s1*4
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
    composer = "Carl Philipp Emanuel Bach"
    opus = "Wq 117/2, H.220"
    title = \markup { "Solfeggio in c-Moll" }
    subtitle = \markup { "“Solfeggietto”" }
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
    \tempo 4 = 180
  }
}
