\version "2.24.1"

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
        \line { \abs-fontsize #35 \bold "Sonata in G major" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 55" }
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
  \key g \major
  \time 3/8
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \tempo \markup {
    \bold\concat { "Allegro" }
  }
  \repeat volta 2 {
  %1
  | g'8 d b
  | g' e c
  | g' d b
  | a'16-5 g fis e-2 d-1 c-2
  %5
  | b4.
  | a16-3 c b a-3 g-1 fis-2
  | d'4.
  | a16 c b a g fis
  | d'4.
  %10
  | a16 c b a g fis
  | \appoggiatura fis16 g4.
  | \stemUp d'4 8
  | c4-1-3\trill b8
  | b'4 8
  %15
  | a4-1-3\trill b8
  | d,4 8
  | c4\trill b8
  | b'4 8
  | a4\trill b8
  %20
  | \stemNeutral r16 b b, cis d-3 e-1
  | f! gis a gis gis a
  | r16 a a, b cis d
  | e fis! g fis fis g
  | r16 g cis,-3 d g, bes
  %25
  | a g' f! e a d,-3
  | r16 g cis, d g, bes
  | a g' f! e a d,
  | r16 g cis,d g, bes
  | a g' f! e f g
  %30
  | e4.~\trill
  | 16 d e f! gis a
  | e4.~\trill
  | 16 d e f! gis a
  | e4.~\trill
  %35
  | e16 a fis! e d cis
  | b b' g fis e-1 d-4
  | cis b a-1 g-3 fis e
  | fis a d fis, e cis'
  | d a fis d fis d'
  %40
  | e cis-4 a-3 e-1 g-2 cis
  | d a fis d fis d'
  | e cis a e g cis
  | d a fis d fis d'
  | e cis a e g cis
  %45
  | \stemUp d4.
  | \stemNeutral a16 b a-3 g-1 fis-2 e
  | fis'-4 d a fis'-3 a fis
  | g-4 e a, e'-3 g e
  | fis d a fis' a fis
  %50
  | g e a, e' g e
  | fis d a fis' a fis
  | g e a, e'-2 g e
  | fis-3 e-1 fis g a g
  | a b a g fis e-1
  %55
  | d-2 a' fis e d cis
  | b g' fis e d-1 cis-4
  | d a fis e d-3 cis
  | b g' fis e d cis
  | d4.
  }
  \pageBreak
  \repeat volta 2 {
  %60
  | d'8 a fis
  | d' b g
  | d'[ a] fis16 e'
  | dis8 a e'
  | fis16 c b a g fis
  %65
  | b' g fis e dis-3 e-4
  | fis16 c b a g fis
  | b' g fis e dis e
  | fis16 c b a g fis
  | b' a gis f! e-1 d-4
  %70
  | cis bes a-1 g-3 f! e
  | a' f! e d cis d
  | e bes a g f! e
  | a' f! e d cis d
  | e bes a-2 g-	1 f!-2 e-1
  %75
  | fis-3 g-1 a bes-3 c-1 d
  | ees4.\trill
  | fis,16 g a bes c d
  | ees4.\parenthesize\trill
  | b!16-1 c d ees-4 f!-1 g-3
  %80
  | f!4.\parenthesize\trill
  | b,!16 c d ees f! g
  | f!4.\parenthesize\trill
  | b,!16 c d ees f! g
  | f! aes g f ees d
  %85
  | g f! ees d c!-2 bes-1
  | a fis' g bes, a bes
  | a fis' g bes, a bes
  | a8 c-2 d
  | ees c-1 g'-3
  %90
  | fis a bes
  | c-5 a-3 g-1
  | fis-4 c d
  | ees c g'
  | fis a bes
  %95
  | c a g
  | fis16 ees d c bes a
  | bes d c bes a g
  | r16 c fis, g c, ees
  | d c' bes a d g,
  %100
  | r16 c fis, g c, ees
  | d c' bes a d g,
  | r16 c fis, g c, ees
  | d c' bes a d g,
  | a4.~\parenthesize\trill
  %105
  | a16 g a bes cis d
  | a4.~\parenthesize\trill
  | a16 g a bes cis d
  | a4.~\parenthesize\trill
  | a16 d b! a g-1 fis-2
  %110
  | e e' c b a g'-4
  | fis e d-1 c-3 b a
  | b c d c b a
  | g' d b g b g'
  | a fis d-3 a c-2 fis
  %115
  | g d b g b g'
  | a fis d a c fis
  | g d b g b g'
  | a fis d a c fis
  | \stemUp g4.
  %120
  | s4.
  | \stemNeutral b16 g d b d b'-4
  | c a fis d fis c'
  | b g d b d b'
  | c a fis d fis c'
  %125
  | b g d b d b'
  | c a fis d fis c'
  | b a g-1 fis-3 g d-1
  | e-5 c b a g fis
  | g d' b a g-1 fis-2
  %130
  | e-1 c' b a g-1 fis-4
  | g-5[ d-3] \clef bass b a-1 g-3 fis
  | e c' b a g fis
  | g4.
  }

}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*3/8*11
  %12
  | b'8 d, b'
  | a4\trill g8
  | g' b, g'
  %15
  | fis4\trill g8
  | b, d, b'
  | a4\trill g8
  | g' b, g'
  | fis4\trill g8
  %20
  | s4.*25
  %45
  | fis,16 e fis-2 g-1 a g
  | s4.*73
  %119
  | b16 a b-2 c-1 d-3 c
  | d e d c b a
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g'4.
  | g4.
  | g4.
  | fis4.
  %5
  | g16-1 fis e-3 d-1 c b
  | c8 d c
  | b16 a g fis-4 e-1 d
  | c8 d c
  | b16 a g fis e d
  %10
  | c8 d d
  | g4.
  | r4 b'8
  | a d, g
  | r4 g8
  %15
  | d' d, g,
  | r4 b'8
  | a d, g
  | r4 g8
  | d' d, g,
  %20
  | g''4.
  | f!
  | f
  | <e g>
  | q4 d8
  %25
  | cis4 d8
  | <e g>4 d8
  | cis4 d8
  | <e g>4 d8
  | cis4 <d f!>8
  %30
  | g,16 bes a d cis-2 g'-1
  | f!4.-2
  | g,16 bes a d cis g'
  | f!4.
  | g,16 bes a d cis g'
  %35
  | fis!4.
  | g4.
  | a8 a, cis
  | d g, a
  | d,,-5 d'-2 a'-1
  %40
  | a,,-5 a'-2 a'-1
  | d,, d' a'
  | a,, a' a'
  | d,, d' a'
  | a,, a' a'
  %45
  | d,-5 e fis
  | g a a,-3
  | d,-5 d' a'
  | a,, a' a'
  | d,, d' a'
  %50
  | a,, a' a'
  | d,, d' a'
  | a,, a' a'
  | d, e fis
  | g a a,
  %55
  | d e fis
  | g a a,
  | d-4 e fis
  | g a a,
  | d,4.
  }
  \repeat volta 2 {
  %60
  | d''4.
  | d4.
  | d4.
  | c!4.
  | b8 b, dis'
  %65
  | e g, a
  | b b, dis'
  | e g, a
  | b b, dis'
  | e e, gis
  %70
  | a a, cis'
  | d f,! g
  | a a, cis'
  | d f,! g
  | a a, cis'
  %75
  | d4.
  | c16 ees a, c fis, a
  | d,4.
  | c'16 ees a, c fis, a
  | d,4.
  %80
  | d'16 f! b, d f,! aes
  | d,4.
  | d'16 f! b, d f,! aes
  | d,4.
  | <g, g'>4.
  %85
  | c8 c' cis
  | d, d' cis
  | d, d' cis
  | d16 g fis g fis g
  | c,16 g' fis g fis g
  %90
  | d16 g fis g fis g
  | ees16 g fis g fis g
  | d16 g fis g fis g
  | c,16 g' fis g fis g
  | d16 g fis g fis g
  %95
  | ees16 g fis g fis g
  | d8 d, fis'!
  | g8 g, bes
  | <a c>4 g8
  | <fis c'>4 g8
  %100
  | <a c>4 g8
  | <fis c'>4 g8
  | <a c>4 g8
  | <fis c'>4 g8
  | c,16 ees d g fis c'
  %105
  | bes4.
  | c,16 ees d g fis c'
  | bes4.
  | c,16 ees d g fis c'
  | b!4.
  %110
  | c4.
  | d8 d, fis-4
  | g c, d-4
  | g, g' d'
  | d,, d' d'
  %115
  | g,, g' d'
  | d,, d' d'
  | g,, g' d'
  | d,, d' d'
  | g,, a b
  %120
  | c d d,
  | g g' d'
  | d,, d' d'
  | g,, g' d'
  | d,, d' d'
  %125
  | g,, g' d'
  | d,, d' d'
  | g,, a b
  | c d d,-5
  | g-5 a b
  %130
  | c d d,
  | g a b
  | c d d,
  | g4.
  }
  \fine
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
      \Bass
    >>
  >>
  \header {
    composer = "Domenico Scarlatti"
    opus = #f
    title = \markup { "Sonata in G major" \italic "(K. 55)" }
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
    \tempo 4 = 140
  }
}
