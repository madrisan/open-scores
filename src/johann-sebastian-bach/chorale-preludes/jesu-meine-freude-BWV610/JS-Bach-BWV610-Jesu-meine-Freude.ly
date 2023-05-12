\version "2.23.80"

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
  line-width = 18.6\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 1.5)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 1.5)
        (stretchability . 25))
  top-margin = 24\mm
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "davide.madrisan@gmail.com"
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
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line {
          \draw-hline
        }
        \null\null\null
        \line { \abs-fontsize #34 \bold "Jesu, meine Freude" }
        \null\null
        \line { \abs-fontsize #25 \bold "Orgel-Büchlein nr. 12" }
        \null\null
        \line { \abs-fontsize #20 "BWV 610" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "Transcribed for Piano Solo" }
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
        \fill-line { \abs-fontsize #10 "Based on the Holograph manuscript of «Das Orgel-Büchlein» (p.15)" }
        \null\null
      }
    }
  }
}

Global = {
  \key g \minor
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one"  \relative c'' {
  %1
  \voiceOne
  \override Beam.breakable = ##t
  \repeat volta 2 {
  | g4^\markup {
      \hspace #-4 \italic\bold "Largo"
    }_\markup {
      \hspace #-4 \vspace #4 \dynamic mp
      \italic\small "(la voce più acuta ben in risalto)"
    }
    g f ees
  | d2 c\fermata
  | g'4 g a b!
  | c2 b!\fermata
  %5
  | c8. d16 ees4 d4. d8
  | c1\fermata
  }
  \break
  | g4 g aes g
  | f4. f8 ees2\fermata
  | g4 g a b!
  %10
  | c4 bes! a2
  | g1\fermata
  | g4 g f ees
  | d2 c2\fermata \bar "|."
}

Alto = \context Voice = "two"  \relative c' {
  \voiceTwo
  \repeat volta 2 {
  %1
  | ees16 d ees8~ ees16 f ees d c8[ d~] d c
  | c8 c4 b!8 c8.[ g16] c b! c d
  | ees16 d ees8~ ees16 f ees d c8 d16 ees f aes g f~
  | f16 e f8~ f16 g f ees d es d8~ d16 ees f d
  %5
  | g8 f ees16 g aes ees f ees f d g aes g f
  | e8 f16 g aes g aes e! f g f8~ f16 f ees d
  }
  | ees16 d ees8~ ees16 f ees des c8 bes~ bes16 bes c g
  | aes16 g aes f bes c bes aes! g f g8~ g16 bes c d
  | ees16 d ees8~ ees16 f ees d c8 d16 ees f aes g f
  %10
  | ees16 d ees8 d g~g g4 fis8
  | g16 d es c d b! c a b! a b! c d b! g b!
  | c16 b! c d ees d es8~ ees d4 c8~
  |c16 b! c8~ c b! c16 g aes8 g4^\fermata
}

Tenor = \context Voice = "three"  \relative c' {
  \voiceThree
  \change Staff = "lower"
  \repeat volta 2 {
  %1
  | c16 b! c8~ c16 b! c g a8 g~ g16 g aes ees
  | f16 ees f d g^\markup {
      \italic\small "r.H"
    }
    aes g f ees d \tieDown ees8~ ees16 \tieNeutral f ees d
  | c16 b! c g' c b! c c, f8. g16 aes!4^~
  | aes16 g aes b c b! c8 d8. c16 b! c d b!
  %5
  | ees16 d ees d^~ d8 c~c c4 b!8
  | c4^~ c8. bes16 aes! bes aes8 g16 aes g f
  }
  | ees16 f g aes bes des c bes aes g f8^~ f ees
  | ees8 ees4 d8 ees8. bes16 ees d ees f
  | ees16 f g8 c16 d c bes a g f8^~ f4
  %10
  | g16 fis g a bes a bes g c bes c a
    d^\markup {
      \italic\small "r.H"
    } ees d c
  | b!8 c16 a b! g a fis g8 d16_\markup {
      \italic\small "l.H"
  } ees f ees f8~
  | f16 d ees b! c b! c8 r16 f g d ees g aes fis
  | g16 d f! ees f aes g f e8. f16~ f d e8^\fermata
}

Bass = \context Voice = "four"  \relative c {
  \voiceFour
  \change Staff = "lower"
  \repeat volta 2 {
  %1
  | r8 c16 d ees d ees8~ ees16 a, b! g c b! c8
  | r16 g aes f g f g8 c,2\fermata
  | r8 c'16 d ees d
    \shape #'((0 . -0.2) (0 . -1.5) (0 . -1.5) (0 . 0.5)) Tie
    ees8~ ees16 c f ees d c d8
  | c8 f16 g aes g aes8~ aes16 d, fis d g fis g8
  %5
  | d8\rest a'16 b! c b! c8 d,16\rest g aes f g f g8
  | d16\rest g aes e f e! f8 r16 e! f b,! c b! c8
  }
  | r8 ees16 f g f g8~ g16 c, d! bes ees d ees8
  | r16 bes c aes bes aes bes8 es,2
  | r8 c'16 d ees d ees8~ es16 c f ees d c d8
  %10
  | c8 es16 f! g fis g8 d16\rest d ees c d c d8
  | g,1
  | c4 c,8 c'16 bes a8 b! c16 b! c8
  | r16 g aes fis g fis g8 c,2_\fermata
}

Choral = \relative {
  \autoBeamOff
  \time 8/4
  \key c \major
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
  \override Staff.TimeSignature.stencil = ##f
  a'4. 8 g4 f e2 d2 \bar "'"
  a'4 a b c d2 cis \bar "'"
  d4 f e e d1
  \bar "||"
  \break
  a4 a bes a g4. f8 f2 \bar "'"
  \time 10/4
  a4 a b c d c b2 a \bar "'"
  fis4 f g f! e2 d1
  \fine
}

\markup {
  \fill-line {
    \override #'(baseline-skip . 2)
    \center-column {
      \line { \abs-fontsize #14 \bold "Jesu, meine Freude" }
      \null
      \line { \abs-fontsize #10 \italic "Johann Crüger - Praxis pietatis melica (1653)" }
      \null
      \line {
        \score {
          <<
          \new Voice = "corale" {
            \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #1
            \Choral
          }
          \new Lyrics \lyricsto "corale" {
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
              #'((basic-distance . 4))
            Je -- su, mei -- ne Freu -- de,
            mei -- nes Her -- zens Wei -- de,
            Je -- su, mei -- ne Zier:
            Got -- tes Lamm, mein Bräu -- ti -- gam,
            au -- ßer dir soll mir auf Er -- den
            nichts sonst lie -- bers wer -- den.
          }
          >>
          \layout {
            indent = #0
            line-width = #150
            #(layout-set-staff-size 14)
          }
        }
      }
      \null\null\null\null
      \null\null
    }
  }
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
    opus = "BWV 610"
    subtitle = \markup {
      \italic "(Orgel-Büchlein nr. 12)"
    }
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Jesu, meine Freude"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 15
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
