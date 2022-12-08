\version "2.23.80"

#(ly:set-option 'relative-includes #t)

coverColor = #(rgb-color 0.2 0.4 0.5)

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 10\mm
  first-page-number = 0
  indent = 0.0
  line-width = 16.6\cm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing = #'((basic-distance . 2) (padding . 10))
  top-margin = 30\mm
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
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
        \null\null\null\null
        \fill-line {
          \override #'(thickness . 5)
          \draw-squiggle-line #0.5 #'(10 . 0) ##t
        }
        \null\null\null\null
        \fill-line { \abs-fontsize #11 "Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
        \fill-line { \abs-fontsize #10 "Based on the Holograph manuscript of «Das Orgel-Büchlein» (p.15)" }
        \null
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
    g f es
  | d2 c\fermata
  | g'4 g a b!
  | c2 b!\fermata
  %5
  | c8. d16 es4 d4. d8
  | c1\fermata
  }
  | g4 g as g
  | f4. f8 es2\fermata
  | g4 g a b!
  %10
  | c4 bes! a2
  | g1\fermata
  | g4 g f es
  | d2 c2\fermata \bar "|."
}

Alto = \context Voice = "two"  \relative c' {
  \voiceTwo
  \repeat volta 2 {
  %1
  | es16 d es8~ es16 f es d c8[ d~] d c
  | c8 c4 b!8 c8.[ g16] c b! c d
  | es16 d es8~ es16 f es d c8 d16 es f as g f~
  | f16 e f8~ f16 g f es d es d8~ d16 es f d
  %5
  | g8 f es16 g as es f es f d g as g f
  | e8 f16 g as g as e! f g f8~ f16 f es d
  }
  \pageBreak
  | es16 d es8~ es16 f es des c8 bes~ bes16 bes c g
  | as16 g as f bes c bes aes! g f g8~ g16 bes c d
  | es16 d es8~ es16 f es d c8 d16 es f as g f
  %10
  | es16 d es8 d g~g g4 fis8
  | g16 d es c d b! c a b! a b! c d b! g b!
  | c16 b! c d es d es8~ es d4 c8~
  |c16 b! c8~ c b! c16 g as8 g4^\fermata
}

Tenor = \context Voice = "three"  \relative c' {
  \voiceThree
  \change Staff = "lower"
  \repeat volta 2 {
  %1
  | c16 b! c8~ c16 b! c g a8 g~ g16 g as es
  | f16 es f d g^\markup {
      \italic\small "r.H"
    }
    as g f es d \tieDown es8~ es16 \tieNeutral f es d
  | c16 b! c g' c b! c c, f8. g16 as!4^~
  | as16 g as b c b! c8 d8. c16 b! c d b!
  %5
  | es16 d es d^~ d8 c~c c4 b!8
  | c4^~ c8. bes16 as bes as8 g16 as g f
  }
  | es16 f g as bes des c bes as g f8^~ f es
  | es8 es4 d8 es8. bes16 es d es f
  | es16 f g8 c16 d c bes a g f8^~ f4
  %10
  | g16 fis g a bes a bes g c bes c a
    d^\markup {
      \italic\small "r.H"
    } es d c
  | b!8 c16 a b! g a fis g8 d16_\markup {
      \italic\small "l.H"
  } es f es f8~
  | f16 d es b! c b! c8 r16 f g d es g as fis
  | g16 d f! es f as g f e8. f16~ f d e8^\fermata
}

Pedal = \context Voice = "four"  \relative c {
  \voiceFour
  \change Staff = "lower"
  \repeat volta 2 {
  %1
  | r8 c16 d es d es8~ es16 a, b! g c b! c8
  | r16 g aes f g f g8 c,2\fermata
  | r8 c'16 d es d
    \shape #'((0 . -0.2) (0 . -1.5) (0 . -1.5) (0 . 0.5)) Tie
    es8~ es16 c f es d c d8
  | c8 f16 g aes g as8~ as16 d, fis d g fis g8
  %5
  | d8\rest a'16 b! c b! c8 d,16\rest g aes f g f g8
  | d16\rest g as e f e f8 r16 e! f b,! c b! c8
  }
  | r8 es16 f g f g8~ g16 c, d! bes es d es8
  | r16 bes c as bes as bes8 es,2
  | r8 c'16 d es d es8~ es16 c f es d c d8
  %10
  | c8 es16 f! g fis g8 d16\rest d es c d c d8
  | g,1
  | c4 c,8 c'16 bes a8 b! c16 b! c8
  | r16 g as fis g fis g8 c,2_\fermata
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
      \Pedal
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
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
