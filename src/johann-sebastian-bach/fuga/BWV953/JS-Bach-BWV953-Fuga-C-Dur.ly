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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Fuga C-Dur" }
        \null\null
        \line { \abs-fontsize #20 "BWV 953" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
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
          \abs-fontsize #10 "Based on: Bach-Gesellschaft Ausgabe - Leipzig: Breitkopf und Härtel, 1890"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 4/4
  \include "global.ly"
}

\include "./macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | r4 \highlightSubject { r16 c b c  a c b c g c b c
  | f, c' b c e, c' b c d, c' b a b c a b
  | \unHighlightSubject c } e d c b8 r c r b r
  | e r d r c a d[ c]
  %5
  | b r c r c r c r
  | c r c r f d g[ f]
  | e c f[ e] d b e[ d]
  | c a d[ c] b16 c b a \highlightSubject { g g' fis g
  | e g fis g d g fis g c, g' fis g b, g' fis g
  %10
  | a, g' fis e fis g e fis \unHighlightSubject g, } f' e d e f d e
  | f, e' d c d e c d e, d' c b c d b c
  | d, c' b a b c a b gis a gis fis e e' d e
  | c d c b a8 cis d r c r
  | f r e r d16 c b a b f' e d
  %15
  | c d cis b cis d b cis d f e d e bes' a g
  | f e d cis d e c d b g' fis e fis c' b a
  | g fis g a b4 a g~
  | g8 fis4 e8 a4. a8
  | g2~ g4~ g8 g
  %20
  | fis2~ fis16 fis e dis e fis d e
  | cis4 c~ c16 c b a b c a b
  | g4~ g16 fis g a b a c b a g a fis
  | g4 a8 b c2~
  | c8 r g a b2~
  %25
  | b16 c b c fis c g' c, a'2~
  | a8 d, \highlightSubject { g16 a fis g e g fis g d g fis g
  | c, g' fis g b, g' fis g a, g' fis e fis g e fis
  | \unHighlightSubject b, } a' g fis g a fis g c, b' a g a b g a
  | b8 g r b,16 d g8 c, b[ d]
  %30
  | g a, b[ b'] c a d,[ c']
  | g b c,[ bes'] a f b,[ a']
  | g e a,[ g'] f d g,[ f']
  | e16 d c b c2.~
  | c2 d~
  %35
  | d16 g, f g c4 r16 g fis g f'4
  | d'16\rest g,, c8~ c16 c8 b16 <g c>2\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-10
  %1
  | R1*2
  | r4 \highlightSubject { r16 g fis g e g fis g d g fis g
  | c, g' fis g b, g' fis g a, g' fis e fis g e fis
  %5
  | \unHighlightSubject g } a g fis e8 r fis r e r
  | a r g r a r d r
  | g, r c r fis, r b r
  | e, r a r d, r r4
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  %11
  | \override MultiMeasureRest.staff-position = #-9
    R1*2
  | r4 \highlightSubject { r16 a' g a f a gis a e a gis a
  | \change Staff = "lower" \stemUp
    d,
    \change Staff = "upper" \stemDown
    a' gis a
    \change Staff = "lower" \stemUp
    c,
    \change Staff = "upper" \stemDown
    a' gis a
    \change Staff = "lower" \stemUp
    b,
    \change Staff = "upper" \stemDown
    a' gis fis gis a fis gis
  %15
  | \unHighlightSubject a } f e d e bes' a g f d cis b! cis d b cis
  | \change Staff = "lower" \stemUp
    d
    \change Staff = "upper" \stemDown
    g f e f g e f
    \change Staff = "lower" \stemUp
    dis
    \change Staff = "upper" \stemDown
    e dis cis dis e cis dis
  | e dis e fis g8 g'~ g fis4 e8
  | c4 b c8 a fis'!4~
  | fis16 fis e dis e fis d e cis8 a e'4~
  %20
  | e16 e d cis d e c d b2~
  | b16 b a g a b g a fis2~
  | fis16 fis e dis e4~ e4. dis!8
  | r16 e dis e r16 e8 e16~ e8 e a g
  | fis16 d cis d r16 d8 d16~ d8 d g fis
  %25
  | e r r4 r8 a d c
  | b16 fis g fis e g d g c, b a b d b a b
  | e b a b d b a b c b a g a b c a
  | d c b a b c d b e d c b c d e fis
  | g a b c b a g fis e g fis g d g fis g
  %30
  | c, g' fis g
    \change Staff = "lower" \stemUp
    b,
    \change Staff = "upper" \stemDown
    g' fis g
    \change Staff = "lower" \stemUp
    a,
    \change Staff = "upper" \stemDown
    g' fis e fis g e fis
  | \change Staff = "lower" \stemUp
    g,
    \change Staff = "upper" \stemDown
    f' e d e f d e
    \change Staff = "lower" \stemUp
    f,
    \change Staff = "upper" \stemDown
    e' d c d e c d
  | \change Staff = "lower" \stemUp
    e, d' c b c d b c
    d, c' b a b c a b
  | c4
    \change Staff = "upper" \stemDown
    r16 e d e f e d e g e d e
  | a e d e g e d e f8 d g f
  %35
  | e4 r16 a g a b4 r16 d c d
  | e8. e,16 d8 f e2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*4
  | r4 \highlightSubject { r16 c b c  a c b c  g c b c
  | f, c' b c e, c' b c d, c' b a b c a b
  | \unHighlightSubject c, } b' a g a b g a b, a' g fis g a fis g
  | a, g' fis e fis g e fis g fis g a b g a b
  | \stemNeutral c8 c, b[ b'] a a, g[ g']
  %10
  | c, a d[ c] b g c[ b]
  | a f b[ a] gis e a[ g]
  | f d d'[ b] e fis gis[ e]
  | a g f e d r a' r
  | a r a r a r r4
  %15
  | a8 r r4 a8 r r4
  | a8 r r4 a8 r r4
  | \stemDown r4 \highlightSubject { r16 e' dis e c e dis e b e dis e
  | a, e' dis e g, e' dis e fis, e' dis cis dis e cis dis
  %20
  | \stemNeutral \unHighlightSubject e,8 } fis g e a16 d cis b cis d b cis
  | d,8 e fis d g fis gis e
  | a16 g fis e fis g e fis dis8 cis dis b
  | e b c[ fis,] g a b[ b']
  | e, e, fis g a16 g' a g fis a e a
  %25
  | d,8 d, e fis g16 fis' g fis e g d g
  | c,8 e a, c fis,16 c'' d c b d a d
  | g,4 r r2
  | R1*4
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  %33
  | r4 \highlightSubject { r16 c, b c a c b c g c b c
  | f, c' b c e, c' b c d, c' b a b c a b
  | \unHighlightSubject c8 } d e fis g g,a b
  | c e, f g c,2\fermata
    \fine
}

forceBreaks = {
  % page 1
%  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
%  \repeat unfold 2 { s1\noBreak } s1\break
  % page 2
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
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 953"
    title = \markup { "Fuga à 3" }
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
    \tempo 4 = 110
  }
}
