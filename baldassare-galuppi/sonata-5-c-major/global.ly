\version "2.23.13"

Global = {
  \key c \major
  \clef treble
  \time 4/4
  \override Score.Footnote.annotation-line = ##f
  % Draw a box round the following bar number(s)
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \set Staff.pedalSustainStyle = #'mixed
}
