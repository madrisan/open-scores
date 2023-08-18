\defineBarLine ".|:-emptyspan" #'(".|:" "" "|")

voiceA = \context Voice = "one" \relative c' {
  \clef alto
  \key g \major
  \time 2/2
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  | r4 d2 e4
  \bar ".|:-emptyspan"
  | fis g^\segno r8 e d c
  | b c d2 e4
  \bar ":|."
}
voiceB = \context Voice = "two" \relative c' {
  \clef tenor
  \key g \major
  \time 2/2
  | g2 a4 c
  | b2^\segno a
  | g a4 c
}
voiceC = \context Voice = "three" \relative c' {
  \clef bass
  \key g \major
  \time 2/2
  | r4 g fis e
  | d b^\segno c d
  | g, g' fis e
}

gmult = #1.5

\markup {
  \fill-line {
    \override #'(baseline-skip . 2)
    \center-column {
      \line {
        \score {
          \new StaffGroup \with {
            instrumentName = \markup {
              \abs-fontsize #10 \italic "Canon triplex à 6"
            }
            \override InstrumentName.extra-offset = #'(-1.5 . 0)
            \override StaffGrouper.staff-staff-spacing.padding = #0
            \override StaffGrouper.staff-staff-spacing.basic-distance = #1
          } <<
            \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
            \new Staff { \voiceA }
            \new Staff { \voiceB }
            \new Staff { \voiceC }
          >>
          \layout {
            indent = #0
            #(layout-set-staff-size 14)
          }
        }
      }
      %\null\null
    }
  }
}
