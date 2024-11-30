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
        \line { \abs-fontsize #30 \bold "Dietrich" }
        \null
        \line { \abs-fontsize #80 \bold "Buxtehude" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Canzonetta in a" }
        \null\null
        \line { \abs-fontsize #20 "BuxWV 225" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Organ" }
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
          \abs-fontsize #10 "Based on: Les Éditions Outremontaises, Montréal 2007"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key a \minor
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | a16 a' gis a b, a' gis a c, a' gis a d, a' gis a
  | e a gis a f a gis a d, a' gis a e gis fis gis
  | a e c a c e c a a' e c a e' a e fis
  | \stemUp\tieUp g4 a b c
  %5
  | g g fis fis
  | g2.~ g8 fis
  | e4 r e r
  | e d d d
  | c e2 e4
  %10
  | <b e>2. fis'4
  | gis2 fis
  | <b, e> d\rest
  | R1
  | e,16 e' dis e fis, e' dis e g,! e' dis e a, e' dis e
  %15
  | b e dis e c e dis e a, e' dis e b dis cis dis
  | e b g e g b g e e' b g e b' e a, b
  | c4 d e f
  | c2 b
  | c1
  %20
  | b~
  | b4 a c b
  | b1
  | <a c>4 r q r
  | <a c>4 r b2
  %25
  | <e, a> r
  | s1
  | c16 e d e d g f g e a g a fis a g fis
  | g b a b a d c d b e d e c d c b
  | c e d e d g f! g e a g a fis a g fis
  %30
  | <e g>4 r16 \stemNeutral a, e' g \once\stemUp <d f>4 r16 e, b' d
  | \once\stemUp <a c>4 r16 fis a b <e, gis>4 <e a>
  | r16 b'	 c d e b e, d' \stemUp <a c>2
  | r16 a b c d a d, c' <g b>2
  | \stemNeutral r16 g' a b c g c, bes' \once\stemUp <f a>2
  %35
  | r16 a, b! c d a d, c' s2
  | r16 b c d e b e, d' s2
  | r16 d e f g d g, f' e e f g a e a, g'
  | fis fis g a b fis b, a' \stemUp <e gis>4 <e a>
  | b' a e e
  %40
  | f!~ f e2
  | <c e> s
  | e16\rest c b a b fis gis a f'\rest b, cis d! cis8.\trill b16
  | <a cis>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*3
  | e16 e' dis e fis, e' dis e g, e' dis e a, e' dis e
  %5
  | b e dis e c e dis e a, e' dis e b dis cis dis
  | e b g e g b g e e' b g e b' e a, b
  | c4 s c s
  | c c b b
  | c2. c4
  %10
  | g2. c 	4
  | b a c b
  | g2~ g4. fis8
  | e16 a e fis g8 d16 e f8 c16 d e f d e
  | \change Staff = "lower" \voiceFour \stemUp\tieUp
    c2 e~
  %15
  | e2. fis4
  | e4 s2.
  | \change Staff = "upper" \voiceTwo
    a,16 a' gis a b, a' gis a c, a' gis a d, a' gis a
  | e a gis a f a gis a d, a' gis a e gis fis gis
  | a e c a c e c a a' e c a e' a e fis
  %20
  | g1~
  | g4 g fis4. e16 fis
  | g2~ g4. fis8
  | e4 s e s
  | e s f e
  %25
  | c2 s
  | \change Staff = "lower" \voiceFour \stemUp\tieUp
    g16 b a b a d c d b e d e c d c b
  | \change Staff = "upper" \voiceTwo
    s1
  | e4 fis g e
  | a b c a
  %30
  | b s a s
  | e s b c
  | s2 e
  | s d
  | s c'
  %35
  | s b
  | s c
  | s1
  | s2 b4 c!
  | <b e> <c e> <b d> <a c>
  %40
  | \set minimumBeamSubdivisionInterval = \musicLength 8
    \set maximumBeamSubdivisionInterval = \musicLength 16
    \set subdivideBeams = ##t
    <a d>4~
    a16.
    \set stemLeftBeamCount = #3 \set stemRightBeamCount = #2
    c32 b c b a <gis b>8. c16 q32 c q c q c q c
    \set subdivideBeams = ##f
  | a2 c16 d32 e c16 d32 e b16 c32 d a16 b32 c
  | e,2\rest gis8 a16 b a8. gis16
  | e1

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*41
  | dis2 e
  | a,1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*6
  | \clef treble
    a16 a' gis a b, a' gis a c, a' gis a d, a' gis a
  | e a gis a f a gis a d, a' gis a e gis fis gis
  | a e c a c e c a a' e c a e' a e fis
  %10
  | \clef bass
    e,16 e' dis e fis, e' dis e g, e' dis e a, e' dis e
  | b e dis e c e dis e a, e' dis e b dis cis dis
  | e b g e g b g e e' b g e b' e a, b
  | c4 b a gis
  | a2 e4 fis
  %15
  | g a c b
  | e, r r2
  | R1*3
  %20
  | e16 e' dis e fis, e' dis e g, e' dis e a, e' dis e
  | b e dis e c e dis e a, e' dis e b dis cis dis
  | e b g e g b g e e' b g e b' e a, b
  | a, a' gis a b, a' gis a c, a' gis a d, a' gis a
  | e a gis a f a gis a d, a' gis a e gis fis gis
  %25
  | a e c a c e c a a' e c a e' a e fis
  | e4 fis g e
  | a b c a
  | s1*2
  %30
  | e16 e' d e cis4 d,16 d' c d gis,4
  | a,16 a' g a dis,4 e,16 e' d e c c b a
  | gis2 a16 e' f! g a e a, g'
  | f4 fis g,16 d' e f g d g, f'
  | e2 f16 c' d e f c f, e'
  %35
  | d4 fis, g16 d' e f g d g, f'
  | e4 gis, a16 e' f g a e f a,
  | b2 c4 cis
  | d dis r16 e d e r c b c
  | r gis fis gis r a gis a r gis fis gis r a g a
  %40
  | \set minimumBeamSubdivisionInterval = \musicLength 8
    \set maximumBeamSubdivisionInterval = \musicLength 16
    \set subdivideBeams = ##t
    d,32 e f g a b c d~ <d, d'>4~ d'8. e16 d32 e d e d e d e
    \set subdivideBeams = ##f
  | c16 d32 e c16 d32 e b16 c32 d a16 b32 c e,2_~
  | e1
  | a,\fermata
    \fine
}

forceBreaks = {
  % page 1
  %\repeat unfold 15 { s1 }\pageBreak
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Dietrich Buxtehude"
    opus = "BuxWV 225"
    title = \markup { "Canzonetta" }
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
