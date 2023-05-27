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
        \line { \abs-fontsize #35 \bold "Sonata in C Major" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 95" }
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
            "Based on the score published by Ricordi, Milan"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 12/8
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Parentheses.font-size = #1
  \stemNeutral\slurNeutral
  \tempo \markup {
    \bold\concat { "Andante comodo" }
  }
  \repeat volta 2 {
  \partial 4. {
    \once\override Staff.TextScript.extra-offset = #'(-2 . -2)
    g8_\markup\small\italic {
       \whiteout
       \concat {
         \dynamic mf " (la seconda volta " \dynamic p ")"
       }
    } r r
  }
  %1
  | c4. \clef bass g, c,
    \clef treble \stemUp\slurDown\appoggiatura d''16 \stemDown c4\trill b16 c
  | d4. \clef bass g,, g,
    \clef treble \stemUp\appoggiatura e'''16 \stemDown d4\trill c16 d
  | e4. \clef bass c,, c, \clef treble e'''
  | \stemUp\appoggiatura f16 \stemDown e4.\trill d \clef bass g,,,
  }
  \repeat volta 2 {
    \partial 4. { \clef treble g''4. }
  %5
  | \slurDown\appoggiatura { a16 bes } c4. bes!
    \clef bass c,, \clef treble \appoggiatura { g''16 a } bes4.\prall
  | a4. \clef bass c,, f, \clef treble a''
  | \slurUp\appoggiatura { b16 c } d4. c
    \slurDown\clef bass d,, \clef treble \appoggiatura { a''16 b } c4.\prall
  | b4. \clef bass d,, g, \clef treble d'''
  | <e g>4. \clef bass g,,, \clef treble <d''' f> \clef bass g,,,
  %10
  | \clef treble <c'' e>4. \clef bass g,, \clef treble <b'' d> \clef bass g,,
  | \clef treble <c'' e>4. \clef bass g,, \clef treble <d''' f> \clef bass g,,,
  | \clef treble
    <c'' e>4._\markup { \small\italic "rallent. molto" }
    \clef bass g,, \clef treble <b'' d>\parenthesize\fermata  g
  \pageBreak
  | \appoggiatura { a16 bes } c4.\prall bes! \clef bass c,,
    \clef treble  \slurUp\appoggiatura { g''16 a } bes4.\trill
  | a \clef bass c,, f, \clef treble a''
  %15
  | \slurUp\appoggiatura { b16 c } d4. c
    \clef bass d,, \clef treble \slurDown\appoggiatura { a''16 b } c4.\trill
  | b \clef bass d,, g, \clef treble d'''
  | \slurUp\appoggiatura { e16 f } g4. f \clef bass g,, \clef treble f''\trill
  | e \clef bass g,, c,
    \clef treble \stemUp\slurDown\appoggiatura a'''16 \stemDown g4\trill f16 g
  | a 4. \clef bass c,, f,
    \clef treble \stemUp\slurDown\appoggiatura b''16 \stemDown a4\trill g16 f
  %20
  | g4. \clef bass c,, e,
    \clef treble  \stemUp\slurDown\appoggiatura a''16 \stemDown g4\trill f16 e
  | f4. \clef bass c, d,
    \clef treble \stemUp\slurDown\appoggiatura g''16 \stemDown f4\trill e16 d
  | e4. c \clef bass d,,
    \clef treble \stemUp\slurDown\appoggiatura c''16 \stemDown b4\prall a16 b
  | c4. \clef bass c,,, c\fermata
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Parentheses.font-size = #1
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  \partial 4. { \clef treble c8 e g }
  %1
  | \repeat unfold 4 { c, e g }
  | \repeat unfold 4 { b, d g }
  | \repeat unfold 4 { c, e g }
  | g, c e g, b d g, b d
  }
  \repeat volta 2 {
    \partial 4. { \clef bass e, g c }
  %5
  | \repeat unfold 4 { e, g c }
  | \repeat unfold 4 { f, a c }
  | \repeat unfold 4 { fis, a d }
  | \repeat unfold 4 { g, b d }
  \repeat unfold 3 {
  | g, c e  g, c e  g, b d  g, b d
  }
  | g, c e  g, c e  <g, b d>4.\parenthesize\fermata e8 g c
  | \repeat unfold 4 { e, g c }
  | \repeat unfold 4 { f, a c }
  %15
  | \repeat unfold 4 { fis, a d }
  | \repeat unfold 4 { g, b d }
  | \clef treble
    \repeat unfold 4 { b d g }
  | \repeat unfold 4 { c, e g }
  | \repeat unfold 4 { f a c }
  %20
  | \repeat unfold 4 { e, g c }
  | \repeat unfold 4 { d, f b }
  | c, e g \clef bass e, g c  f, a d  g, b d
  | \clef treble \repeat unfold 2 { c e g } c, e g\fermata
  }
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
    title = \markup { "Sonata in C major" \italic "(K. 95)" }
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
    \tempo 4. = 64
  }
}
