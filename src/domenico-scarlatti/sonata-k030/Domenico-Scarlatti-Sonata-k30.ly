\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 15\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 17\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  top-margin = 15\mm
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
        \line { \abs-fontsize #30 \bold "Domenico" }
        \null
        \line { \abs-fontsize #75 \bold "Scarlatti" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Sonata in G minor" }
        \null\null
        \line { \abs-fontsize #22 \bold\italic "nicknamed “Cat fugue”" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 30" }
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
        \null\null\null\null
        \fill-line \abs-fontsize #12 {
          \concat {
            "Based on the score published by Heugel & C" \super "ie"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key g \minor
  \time 6/8
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemNeutral\slurNeutral
  \tempo \markup {
    \bold\concat { "Moderato" }
  }
  %1
  | s2.
  | ees4. fis
  | bes4. cis
  | d8 c! bes a g fis
  %5
  | \stemUp g g' f e! d cis
  | d4. s
  | d,8 g bes4 a8 e'!~
  | e d f4 e!8 d
  | cis4 d8 g4.
  %10
  | f8 b,! c d ees f
  | ees4.~ 8 d c
  | bes a g~ g d \bottom bes
  | g[ c] \top ees4 d8[ a'~]
  | a g bes4 a8 g
  %15
  | \stemNeutral fis4 g8 c4.
  | \stemUp bes4.~ bes8 a g
  | f e! d_~ d a' f
  | \stemNeutral d g bes4 a8 e'!~
  | e d f4 e!8 d
  %20
  | cis4 d8 g f e!
  | \stemUp f4. s
  | ees s
  | bes8 cis d e! fis g
  | fis g a d, g fis
  %25
  | g4. s
  | \stemNeutral g,8 c ees4 d8 fis,
  | \stemUp g4. bes
  | ees fis
  | bes cis,
  %30
  | d8 c! bes a g fis
  | g d' c g' s4
  | f8 s2 f8
  | ees8 s2 ees8
  | s2.*3
  %37
  | a,4 bes8 ees4.
  | d8 bes c d4 e!8
  | f4.~ f
  %40
  | ees8 c d ees4 fis8
  | g4.~ g
  | f8 a g f e! d
  | s4. a'~
  | a8 g4~ g8 f e!
  %45
  | f e! d~ d a f
  | d g bes4 a8 e'!~
  | e d f4 e!8 d
  | cis4 d8 g4.
  | f4. s
  %50

}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s2.*4
  %5
  | s8 bes a g f e!
  | f e! d~ d a' f
  | s2.*4
  %11
  | ees'8 g, fis g4.
  | s2.*4
  %16
  | bes8 d, cis d4.
  | s2.*4
  %21
  | f'8 b, c d ees f
  | ees fis, g a bes c
  | \bottom\stemUp g, \top\stemDown\tieUp g' f e! d cis
  | s4. d'8 g, a
  %25
  | bes c d~ d d bes
  | s2.*2
  | s4 ees, d8 a'_~
  | a g bes4 a8 g
  %30
  | fis4 g8 c,4 d8
  | s4. bes'8 a g
  | a b! c b c d
  | g, a bes a bes c
  | d c bes~ bes f' d
  %35
  | bes ees g4 f8 c'~
  | c bes d,4 c8 bes
  | s4. a8 bes c
  | \tieDown f,4.~ f4 g8
  | a c bes a g f
  %40
  | g4.~ g4 a8
  | bes d c bes a g
  | a4. s
  | cis4. a'8 d, c!
  | bes4. a
  %45
  | a4.~ a8 s4
  | s2.
  | f4. gis
  | a8 g f s4.
  | f'8 b,! c d ees f

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2.*23
  | d,8 d' c! s4.
  | s2.*14
  %39
  | s4. f8 ees d
  | s2.
  | s4. g8 f e!
  | s2.*7
  %49
  | d,8 d' c! s4.

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \mergeDifferentlyDottedOn
  %1
  | g4. bes
  | s2.*4
  %6
  | d,4. f
  | bes cis
  | \top\stemDown f gis
  | a8 g! f e! d cis
  %10
  | d f ees \bottom\stemDown d c b!
  | c ees d c bes a
  | \stemUp g,4. \stemDown bes
  | ees fis
  | bes cis
  %15
  | d8 c! bes a g fis
  | g bes a g f e!
  | \stemNeutral d,4. f
  | bes! cis
  | f gis
  %20
  | a8 g f! e! d cis
  | \stemDown d4. b'!8 a g
  | c,4. a'8 g fis
  | g4. s
  | d bes'4 a8
  %25
  | g4. bes
  | ees c
  | bes8 a g~ g g bes
  | c g s2
  | s2.*2
  %31
  | g4. g'8 f ees
  | d f ees d c b!
  | c ees d c bes a
  | \stemNeutral bes,4. <d bes'>
  %35
  | <g bes> <a c>
  | <d f> <e! g>
  | f8 ees d c bes a
  | bes d c bes a g
  | f4._~ f
  %40
  | c'8 ees d c bes a
  | \tieDown g4.~ g
  | d'8 f e! d c bes
  | a a' g f4.^~
  | f8 e! d cis4.
  %45
  | d,4. f
  | bes cis
  | s2.
  | s4. e!8 d cis
  | d,4. b'!8 a g
  %50

}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
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
    composer = "Domenico Scarlatti"
    opus = #f
    title = \markup { "Sonata K. 30" \italic "(“Cat fugue”)" }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
