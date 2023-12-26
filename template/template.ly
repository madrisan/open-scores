\version "2.24.1"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##t
  score-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 1)
        (stretchablity . 12))
 %scoreTitleMarkup = \markup {
 %  \fill-line {
 %    \if \should-print-all-headers
 %    \fontsize #3 \bold \smallCaps \fromproperty #'header:title
 %  }
 %
  % note: (padding . 0) for closer staves when dynamics are present
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 2)
        (padding . 4)
        (stretchability . 24))
  top-margin = 5\mm
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
        \null\null\null\null\null
        \line { \abs-fontsize #40 \bold "Author's" }
        \null
        \line { \abs-fontsize #70 \bold "Name" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #36 \bold { "The Title" }
        \null\null
        \line \abs-fontsize #26 \bold { "An Optional Subtitle" }
        \null\null\null
        \line \abs-fontsize #26 \bold { "Op. N" }
        \null\null\null
        \line \abs-fontsize #30 \bold { "Pieces numbers if any" }
        \null\null\null
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null
        \fill-line \abs-fontsize #10 {
          "Based on the score published by Someone - Somewhere, Year"
        }
        \null\null
      }
    }
  }
}
\pageBreak


Global = {
  \key c \minor
  \time 3/4
  \include "./global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

grayTextColor = #(x11-color "dimgray")

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  % shows staff change lines but in gray color to reduce visual impact
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  \tempo \markup { \bold "Largo" } 4 = 60
  | ees16( f ees d) ees2
  | ees16( f ees d) ees2
  | ees16( f ees d) ees4 c
  | d2.
    \bar "||"
    \break
  %5
  | \stemNeutral r8 ees' ees[( c)] c( aes)
  | aes16( bes aes g) aes4. fis8
  | \stemUp g8 d' d[( b)] b( g)
  | s2.
  | s2.
  %10
  %\fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c2.
  | c2.
  | c2 aes4
  | c8( b16 a) b2
  %5
  | s2.
  | ees4~( ees16 f ees d) ees8 ees
  | d2 s4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | g4 g2
  | g4 g2
  | g4 g c,
  | s2.
  %5
  | ees16( f ees d) ees2
  | c4 c,4. c'8
  | b4 s2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c2 c4
  | bes2 bes4
  | aes2 f4
  | \stemNeutral g2.
  %5
  | \stemDown c2 c,4
  | s2.
  | s2.
  | s2.
  | s2.
  %10
  %\fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    s4_\markup { \hspace #0.5 \dynamic p } s2
  | s2.*5
  %7
  | s4 s_\markup { ". . ." } s2
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Dynamics <<
      \Global \centerDynamics
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
    composer = "Krzysztof Penderecki"
    arranger = "Arr. Tim Allhof"
    opus = ##f % "Op. 1"
    title = \markup { "Aria" }
    subtitle = \markup { "from" \italic{ "Three pieces in old style" } }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1

      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (minimum-distance . 12)
                              (padding . 0))
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 11
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
