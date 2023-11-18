BachAccentFallendFromGrace =
{
  \once \override NoteHead.stencil =
  #(lambda (grob)
          (grob-interpret-markup grob
            (markup #:raise 0.2 #:large #:musicglyph "scripts.lcomma")))
  \once \override Stem.stencil = ##f
  \once \override Flag.stencil = ##f
  \once \override Stem.length = #0
}
\defineBarLine "||-dashedSpan" #'(#t #f "!!")

\markup \center-column {
  \fill-line {
    \center-column {
      \fill-line \abs-fontsize #18 \bold {
        "A guide to ornaments, written in Bach's hand"
      }
%      \null
%      \fill-line \abs-fontsize #14 \bold \italic {
%        "Klavierbüchlein for Wilhelm Friedemann Bach"
%      }
    }
  }
  \null\null\null
}

\markup \column {
  \justify \abs-fontsize #11 {
    The following ornament table is a scan of the original manuscript
    \italic { “Clavier-Büchlein vor Wilhelm Friedemann Bach”, }
    written by Johann Sebastian Bach in January 1720 for the keyboard instruction of his eldest
    son.
    The German title translates as
    \italic { “Explanation of various signs, showing how to play certain ornaments correctly”. }
    Bach gives the sign for each ornament on the upper of the paired staves, while the lower
    shows its execution directly beneath.
    Note however that all of the ornaments in the table begin on the beat and almost all apply to
    a quarter note, so \italic { the application is only practical at a moderate tempo. }
    Also note that Bach's manuscript uses soprano clefs, as several composers continued to do
    throughout the 18th century in place of the treble clef now used in all keyboard music.
  }
  \null\null\null
}

\markup \center-column {
  \line {
    \hspace #0
    \general-align #Y #DOWN {
      \epsfile #X #80 #"jsbach-clavier-buchlein-ornament-table.eps"
    }
  }
  \fill-line {
    \center-column {
      \fill-line \abs-fontsize #10 \italic {
        "Excerpt from the manuscript “Clavier-Büchlein vor Wilhelm Friedemann Bach”"
      }
    }
  }
  \null\null\null
}

\markup \column {
  \justify \abs-fontsize #11 {
    Below is a transcription as faithfully as possible of Bach's table, including the title and the
    original captions in German.
  }
  \null\null
}

\markup \center-column {
  \fill-line \abs-fontsize #11 \bold \italic {
    "Explication unterschiedlicher Zeichen, so gewisse Manieren artig zu spielen, andeuten"
  }
  \fill-line \abs-fontsize #10 \italic {
    "(Explanation of various signs, showing how to play certain ornaments correctly)"
  }
  \null

  \fill-line {
    %\override #'(baseline-skip . 2)
    \fill-line {
      \score {
        \new PianoStaff
        <<
          \new Staff \relative c'' {
            | c4\prall_\markup { "Trillo" } \bar "||-dashedSpan"
            | c\mordent_\markup { "mordant" } \bar "||-dashedSpan"
            | c\prallmordent_\markup { "trillo und mordant" } \bar "||-dashedSpan"
            | \time 1/8
              c8\turn_\markup { "cadence" } \bar "||-dashedSpan"
            | \time 1/4
              c4\upprall_\markup { "doppelt-cadence" } \bar "||-dashedSpan"
            | \time 1/4
              c4\downprall_\markup { "idem" } \bar "||-dashedSpan"
              \break
            | c4\upmordent_\markup {
                \column {
                  \line { "doppelt-cadence" }
                  \line { \raise #1 "u. mordant" }
                }
              }
              \bar "||-dashedSpan"
            | \time 3/8 c4.\downmordent_\markup { "idem" } \bar "||-dashedSpan"
            | \time 1/4
              \BachAccentFallendFromGrace
              \grace b8 c4_\markup {
                \column {
                  \line { "accent" }
                  \line { \raise #1 "steigend" }
                }
              }
              \bar "||-dashedSpan"
            | \BachAccentFallendFromGrace
              \grace d8 c4_\markup {
                \column {
                  \line { "accent" }
                  \line { \raise #1 "fallend" }
                }
              }
              \bar "||-dashedSpan"
            | \BachAccentFallendFromGrace
              \grace b8 c4\mordent_\markup {
                \column {
                  \line { "accent" }
                  \line { \raise #1 "u. mordant" }
                }
              }
              \bar "||-dashedSpan"
            | \BachAccentFallendFromGrace
              \grace d8 c4\prall_\markup {
                "accent u. trillo"
              }
              \bar "||-dashedSpan"
            | c4\lineprall_\markup { "idem" } \bar "||-dashedSpan"
          }
          \new Staff \relative c'' {
            \magnifyMusic 0.8 {
            | \time 1/4
              \override Beam.positions = #'(-2.5 . -2.5)
              d32 c d c d c16.
            | c32[ b c8.]
            | \set subdivideBeams = ##t
              \set baseMoment = #(ly:make-moment 1/8)
              d32[ c d c d c b c]
            | \time 1/8
              d c b c
            | \time 1/4
              b32[ c d c d c d c]
            | d[ c b c d c d c]
            | b[ c d c d c b c]
            | \time 3/8 d[ c b c d c d c d c b c]
            | \time 1/4
              \set subdivideBeams = ##f
              \revert Beam.positions
              b8[ c]
            | d[ c]
            | \override Beam.positions = #'(-2.5 . -2.5)
              b[ c32 b c16]
            | d16[ c32 d c d c16]
            | d16[ c32 d c d c16]
            }
          }
        >>
        \layout {
          indent = #0
          line-width = #170
          \context {
            \Score
            \omit BarNumber
          }
          \context {
            \Staff
            \clef treble
            \magnifyStaff #6/7
            \omit Staff.TimeSignature
            \override TextScript.font-shape = #'italic
            \override TextScript.font-size = #-2
            \time 1/4
          }
        }
      }
    }
  }
  \null\null
}
