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
        \line { \abs-fontsize #40 \bold "Cantata Actus Tragicus" }
        \null\null
        \line { \abs-fontsize #24 \bold "Gottes Zeit ist die allerbeste Zeit" }
        \null
        \line { \abs-fontsize #16 \bold "(God's time is the very best time)" }
        \null\null\null
        \line { \abs-fontsize #20 "BWV 106" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "Transcription for piano by Jacques Erdos" }
        \null\null
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
          \abs-fontsize #10 "Based on the Jacques Erdos' score"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key bes \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | \tempo "Molto adagio" 8 = 60
    b'4\rest <bes, g'>8 q q q16 <aes f'> q8 <g ees'>16 <f d'>
  | d'8 c16 bes ees8 <bes ees> <c aes'> q <f aes> q
  | aes16 g g8 g16 f f ees d8 ees16 f d8.^\prall ees16
    \bar "||"
  | ees'4 r16 bes ees d d8 aes'16 d, d8 aes'16 d,
  %5
  | ees4 r16 bes ees des des8 bes'16 des, des8 bes'16 des,
  | c4 r16 bes c aes s2
  | s2 s8. d'16 ees8. d16
  | ees8. des16 ees8 s des,4 r
  | r8 g16 c, c8 g'16 c, c8 des16 ees c8.^\prall bes16
  %10
  | bes4 s2.
  | r8. d'16 ees8. d16 ees8 s4.
  | r8. e16 f8. e16 f8 s4.
  | s2 s8. g16 aes8 s
  | s4 r16 bes,, ees des s8. c'16 des8 s
  %15
  | s2 s8. d16 ees8 s
  | s2 r8. bes16 ees8. d16
  | ees8. bes16 ees8. d16 ees8 s4.
  | ees,4 r16 ees bes' des, des8 bes'16 des, des8 bes'16 des,
  | c4 r16 c aes' d, d8 aes'16 d, d8.\prall ees16
  %20
  | ees1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | s1*2
  | r4 bes16 aes aes8 aes g16 aes r4
  | g'8 g g g f f' f, f'
  %5
  | g, g g g g g' g, g'
  | aes, aes aes aes f' aes16 f f8 c'16 ees,
  | d8 c16 bes f'\rest f bes d, ees d ees8~ ees16 d ees8~
  | ees16 des ees8~ ees16 des ees c f,8 f <des f>16 <c aes'> q <bes g'>
  | g'8 g g[ g16 bes] a8 bes16 c a8. bes16
  %10
  | d,8 d r bes''16 d, d8 bes'16 d, d8 bes'16 d,
  | ees d ees8~ ees16 d ees8~ ees c'16 e, e8 c'16 e,
  | << {
      f e f8~ f16 e f8~ f16[ e] \stemUp f g g8.^\prall f16
    }
    \new Voice {
      s2 s8 f, f' e
    }
    >>
  | \stemDown f4 g16\rest g aes g aes g aes8~ aes16 g aes bes
  | g4 g,8 g des'16 c des8~ des16 c des ees
  %15
  | c4 c16\rest c f ees ees d ees8~ ees16 d ees f
  | d4 d16\rest d bes' d, ees d ees8~ ees16 d ees8~
  | ees16 d ees8~ ees16 d ees8~ ees16 d ees f d8.^\prall ees16
  | g,8 g g g' g, g' g, g'
  | aes, aes aes aes <f aes> f' f, f
  %20
  | g1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  %1
  | s1
  | f8 d r4 r2
  | bes'8 bes r4 r f8. g16
  | bes8 bes bes bes aes aes aes aes
  %5
  | bes8 bes bes bes bes bes bes bes
  | c ees ees ees <c aes'> q q q
  | <bes f'> q q q <bes g'> q g' g
  | <c, f> q <a f'> q bes bes16 c r4
  | bes8 bes bes bes c f ees ees
  %10
  | f, f <d' f> q <bes f'> q q q
  | <bes g'> q q q g' g <c, g'> q
  | <c aes'> q <aes c> q aes des c c
  | <aes f'> q <aes c> q <f' bes> q <d f> q
  | bes bes bes bes <bes ees> q q q
  %15
  | ees ees <c aes'> q <c f> q q q
  | f f <bes, f'> q <bes ees> q <c f> q
  | g' g aes <g bes> <c, f> q f f
  | bes, bes bes bes bes bes bes bes
  | ees ees ees ees r4 aes,8 aes
  %20
  | bes1

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  %1
  | ees8 ees ees ees aes, aes aes aes
  | \stemDown aes aes g g f f' d d
  | ees ees aes, aes bes bes bes bes
  | ees ees ees ees ees ees ees ees
  %5
  | ees ees ees ees ees ees ees ees
  | aes aes aes aes aes aes aes aes
  | aes aes aes aes g g c c
  | a a f f bes bes bes, bes
  | e e e e f f f f
  %10
  | bes, bes bes' bes aes aes aes aes
  | g g g g c c bes bes
  | aes aes f f des bes c c
  | f f f f d' d bes bes
  | ees, ees ees ees g g g g
  %15
  | aes aes aes aes a a a a
  | bes bes aes aes g g aes aes
  | bes bes c c aes aes bes bes
  | ees, ees ees ees ees ees ees ees
  | ees ees ees ees ees ees ees ees
  %20
  | ees1\fermata
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 106"
    title = "Cantata “Actus Tragicus”"
    subtitle = "Gottes Zeit ist die allerbeste Zeit"
    subsubtitle = \markup { \italic "Sonatina" }
    poet = \markup { \italic "Transcription: Jacques Erdos" }
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
