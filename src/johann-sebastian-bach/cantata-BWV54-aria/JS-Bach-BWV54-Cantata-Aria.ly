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
        \line { \abs-fontsize #40 \bold "Cantata" }
        \null\null
        \line { \abs-fontsize #30 \bold \italic "Widerstehe doch der Sünde" }
        \null
        \line { \abs-fontsize #30 \bold "Aria" }
        \null\null\null
        \line { \abs-fontsize #20 "BWV 54" }
        \null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
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
          \abs-fontsize #10 "Transcription for piano by Nuno R. Rodrigues"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key es \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r4 d16^\p c d bes aes'8 aes aes aes
  | bes bes bes bes c c c c
  | des des des16 c des bes c4~ c16 bes c aes
  | bes8 c16 d ees4~ ees16 d ees c d8 f~
  %5
  | f16 ees f d ees8 g~ g16 f g ees f8 aes~
  | aes16 g aes f g4~ g16 f g ees f8 bes
  | a16 bes a c f, g f g a bes a c f, g f a
  | bes g aes f g ees f d ees8. f16 d8. ees16
  | <ees, ees'>4 f'\rest d2\rest
  %10
  | g8\rest g16\rest c, bes8 aes16 g g8. aes16
    \once\override Voice.Script.X-offset = #2
    f8.\downprall ees16
  | ees4 r d'2\rest
  | f4\rest d,16 c d bes aes'8 aes aes aes
  | bes8 bes bes bes c c c c
  | f f <bes, f'> f' <d f>16 <c ees> <d f> <bes d> <c ees>4~
  %15
  | q16 <bes d> <c ees> c d4~ d16 <a! c> <bes d> ees c8 f,
  | f16 bes c8 bes f d'4\rest c,8 c
  | <c f> d'\rest f, ees d r a'16 g a f
  | ees'8 ees ees ees f f f f
  | g g g g aes aes <f bes> bes
  %20
 %| bes bes bes bes bes g16 a bes8 f
  | R1*36
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s4 f\rest d'8 d d16 c d bes
  | aes' g aes f g f g ees bes' aes bes g aes g aes f
  | c' bes c aes bes4~ bes16 aes bes g aes4~
  | aes16 g aes f g f g ees f8 aes~ aes16 g aes f
  %5
  | g8 bes~ bes16 aes bes g c4~ c16 bes c aes
  | d8 f~ f16 ees f d ees d ees c d c d bes
  | c d c ees a, bes a bes c d c ees a, bes a c
  | d bes c aes bes g aes f g8. aes16 f8. ees16
  | bes'16 g aes f g ees f d ees g f aes g bes aes bes
  %10
  | c bes aes bes g8 f16 ees ees8. f16 d8. ees16
  | ees4 d16( c d bes aes'8 aes) aes16( f d aes'
  | aes g g8) f,4\rest b\rest d16 c d bes
  | aes' g aes f g f g ees bes' a bes g a g a f
  | c' bes c a
    \change Staff = "lower" \voiceThree
    f8
    \change Staff = "upper" \voiceTwo
    g16 aes32 bes g4~ g16 f g ees
  %15
  | f4~ f16 bes( a bes ees,8.) g16( f8 ees16 d
  | d8) f16( ees d16 c d bes g'8) bes,16( c a!4~)
  | a16 g'( f ees d8 c16 bes bes4*1/2) d8 ees ees
  | g4\rest a16 g a f ees' d ees c d c d bes
  | f' ees f d ees d ees c g' f g ees aes g aes f
  %20
  | g ees f d ees f g ees f d ees c d c d bes

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  %1
  | \change Staff = "upper" \voiceTwo
    <f aes>8\pp
    \change Staff = "lower" \voiceThree
    <f aes> q q
    r f f f
  | r <ees ees'> q q r <aes ees'> <f aes> q
  | r <f bes> <g bes> q r <ees aes> <f aes> q
  | r <f d'!> <ees bes'> q r aes <f d'> q
  %5
  | r8 <g bes> g g r <ees aes> c' c
  | r <f, d'> ees' ees r bes f' f
  | \repeat unfold 2 {  c <c ees> q q }
  | <bes f'> q <bes ees> q c c bes bes
  | g r bes16 g aes f g ees f d ees g f g
  %10
  | aes8 ees bes' aes c4 <f, bes>
  | \change Staff = "upper" \voiceTwo
    \once\override NoteColumn.force-hshift = #0.6
    <g bes>8
    \change Staff = "lower" \voiceThree
    q aes aes <f d'> q q f
  | <bes ees> q aes aes <f d'> q f f
  | a4\rest bes16( aes bes g ees'8 ees) ees16( c a ees'
  | ees d bes8) s2.
  %15
  | s1*2
  | r8 bes bes <f, a'>\arpeggio <bes, bes'> <bes' f' bes> <bes c'> q
  | s2. bes'16( a! bes f
  | ees'8 ees) ees16( c a ees' ees d d8) s4
  %20
  | s2 d4\rest bes16 a bes f

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \repeat unfold 2 { <ees,, ees'>8 ees'' ees ees }
  | \repeat unfold 2 { <ees,, ees'> ees'' ees ees }
  | \repeat unfold 2 { <ees,, ees'> ees'' ees ees ees,, ees'' ees ees }
  %5
  | ees,, ees'' ees ees aes,, aes' aes' aes
  | bes,, bes' bes' bes bes,, bes' bes' bes
  | \repeat unfold 2 { bes, bes' bes bes }
  | bes bes ees, ees aes aes aes aes
  | ees ees d d c c bes bes
  %10
  | aes aes bes bes c aes bes bes
  | <ees,, ees'> ees'' ees ees ees ees ees ees
  | \repeat unfold 2 { ees ees ees ees }
  | <ees,, ees'> ees'' <d ees> q c c f f
  | bes bes bes <bes d> <ees, bes' ees> q <c g' ees'>\arpeggio q
  %15
  | <a f' c'>\arpeggio q <bes f' bes> q <g g'> q <a f'> q
  | <bes f'> q <f' bes> q <e bes' c> e ees16 d ees c
  | d c d bes f'8 s s2
  | <bes, a' c>8 q q q <bes bes'> q bes bes
  | bes bes' bes f bes bes <bes, d'>\arpeggio q
  %20
  | R1*36
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
    opus = "BWV 54"
    title = "Cantata"
    subtitle = "Widerstehe doch der Sünde"
    subsubtitle = \markup { \italic "Aria" }
    poet = \markup { \italic "Transcription: Nuno R. Rodrigues" }
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
