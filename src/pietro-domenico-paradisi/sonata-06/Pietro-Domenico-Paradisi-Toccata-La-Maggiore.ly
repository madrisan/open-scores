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
        \line { \abs-fontsize #30 \bold "Pietro Domenico" }
        \null
        \line { \abs-fontsize #80 \bold "Paradisi" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Allegro (“Toccata”)" }
        \null\null
        \line { \abs-fontsize #20 \bold "dalla Sonata no. 6 in La Maggiore" }
        \null\null\null
        \line { \abs-fontsize #20 "P 893.06" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "Per clavicembalo, fortepiano, piano" }
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
          \abs-fontsize #10 "Based on: Alphonse Leduc, Paris"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key a \major
  \time 2/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Allegro vivace"
  \partial 4 a16 e cis' a
  %1
  | b e, d' b cis a e' cis
  | b e gis, b a e cis' a
  | b e, d' b cis a e' cis
  | b e gis, b e, a cis a
  %5
  | \stemUp fis b d b gis cis e cis
  | a gis' a fis \stemNeutral e a cis a
  | fis b d b cis a b gis
  | r a e cis a cis b d
  | cis e gis, b a cis b d
  %10
  | cis e gis, b a cis b d
  | cis e dis fis e gis fis e
  | <dis fis b>4 e8 gis
  | a cis, dis fis
  | gis b, cis e
  %15
  | fis a, b dis
  | e16^. b' ais b gis b e, gis
  | cis, a' gis a fis a dis, fis
  | b, gis' fis gis e gis cis, e
  | a, fis' e fis dis fis b, dis
  %20
  | gis, b e b cis a fis dis'
  | e16 b gis e cis' a fis dis'
  | e16 b gis e cis' a fis dis'
  | e b cis a \stemUp gis e' fis, dis'
  | e b gis e \clef "bass" \stemNeutral cis a fis dis'
  %25
  | e16 b gis e cis' a fis dis'
  | e16 b cis a gis e' fis, dis'
  | <gis, b e>4 \clef "treble"
    \bar "||"
    \break
    e'16 b gis' e
  | fis b, a' fis gis e b' gis
  | fis b dis, fis e b gis' e
  %30
  | fis b, a' fis gis e b' gis
  | fis b dis, fis b, e gis e
  | cis fis a fis dis gis b gis
  | e dis' e cis b e gis e
  | cis fis a fis gis e fis dis
  %35
  | r16 e b gis e gis fis a

  | R1*2/4*46
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s2*3
  | s4 e_>
  %5
  | fis_> gis_>
  | a_> s
  | s2*16
  %24
  | s4 gis8 fis
  | s2*7
  %31
  | s4 b,
  | cis dis
  | e s
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s2*3
  | e8 d cis a
  %5
  | d b e cis
  | fis4 s
  | s2*24
  %31
  | s4 gis
  | a b
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4 r8 a
  %1
  | gis e a a,
  | e' d cis a'
  | gis e a a,
  | e'4 cis
  %5
  | d e\stemNeutral
  | fis8 d  cis a
  | d b e e,
  | a_. a'4 gis8
  | a b cis gis
  %10
  | a b cis gis
  | a fis gis ais
  | \clef "treble"
    b16_. b' ais b gis b e, gis
  | cis, a' gis a fis a dis, fis
  | b, gis' fis gis e gis cis, e
  %15
  | a, fis' e fis dis fis b, dis
  | gis,4 e'8 gis
  | a cis, dis fis
  | gis b, cis e
  | \clef "bass"
    fis a, b dis
  %20
  | e gis, a b
  | gis cis a b
  | gis cis a b
  | gis a b b,
  | e, e' a, b
  %25
  | gis cis a b
  | gis a b b,
  | <e, e'>4
    \bar "||"
    \break
    r8 e''
  | dis b e e,
  | b' a gis e'
  %30
  | dis b e e,
  | b' a' gis e
  | a fis b gis
  | cis a gis e
  | a fis b b,
  %35
  | e, e'4^> dis8

  | R1*2/4*46
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
    composer = "Pietro Domenico Paradisi"
    opus = "P 893.06"
    title = \markup { "Toccata" }
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
