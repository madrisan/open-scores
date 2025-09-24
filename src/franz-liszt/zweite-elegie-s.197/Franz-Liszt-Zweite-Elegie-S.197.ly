\version "2.25.28"

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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #80 \bold "Liszt" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Zweite Elegie" }
        \null\null
        \line { \abs-fontsize #20 "S.197" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano" }
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
          \abs-fontsize #10 "Based on the score published by Breitkopf & Härtel, Leipzig 1927"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 3/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo "Quasi Andante"
  | aes2._\(
  | c~_>
  | c2 b!4
  | c ees aes
  %5
  | b! c ees
  | aes2 b!4
  | c2.
  | ees4\) r r
  | R1*3/4
  %10
  | a,,,2._\(
  | c~_>
  | c2 b!4
  | c ees aes
  | b c ees
  %15
  | a2 b4
  | c2.
  | ges'4\) r r
  | R1*3/4
  | c,,,2.
  %20
  | des
  | f
  | bes,
  | ces2 c4
  | des2.
  %25
  | f
  | bes,
  | ces2 c4
  | cis2.
  | d4 cis fis
  %30
  | e2 d4
  | b2 bis4
  | cis2.
  | d4 cis a'8 fis
  | e2.
  %35
  | d2 cis4
  | b2.~
  | b4 a b
  | gis2.
  | a2 b4
  %40
  | cis2.~_\(
  | cis2 bis4
  | cis e a
  | bis cis e
  | a2 bis4
  %45
  | cis2.
  | e4\) r r
  | R1*3/4
  | ais,,,2._\(
  | cis~_>
  %50
  | cis2 bis4
  | cis e ais
  | bis cis e
  | ais2 bis4
  | cis2.
  %55
  | g'4\) r r
  | R1*3/4
  | cis,,,2.^\markup { "sostenuto ed espressivo" }
  | d
  | fis
  %60
  | b,
  | c2 cis4
  | d2.
  | fis
  | b,
  %65
  | c2 cis4
  | d2.
  | ees4 d g
  | f2 ees4
  | c2 cis4
  | d2.
  %70
  | ees4 d bes'8 g
  | f2._>
  | ees2 d4
  | c2.~_\(
  | c4 bes a
  %75
  | g bes d
  | ees fis g
  | bes d ees
  | fis g bes
  | ees\) r <ees, ees'>~^-\(
  %80
  | q2 <des des'>4
  | <ces ces'>\) r <e e'>~^-\(
  | q2 <d d'>4
  | <c c'>\) r <f f'>~\(^\markup {
      "un poco rall."
    }
  | q2 <ees ees'>4~
  %85
  | q4 <des des'> <c c'>
  | <des des'> <ees ees'> <e e'>
  | <f f'>2\) q4
    \bar "||"
    \key aes \major
  | <f f'>2.~^\markup {
      "a tempo"
    }_\markup {
      \hspace #-2
      "dolcissimo amoroso"
    }
  %90
  | q
  | \once\override PhrasingSlur.positions = #'(4.5 . 0)
    <a, a'>2.~\(
  | q2 <bes bes'>4
  | <ces ces'>2.~\)
  | q2\( <aes! aes'!>4
  %95
  | <f f'>2.~
  | q4 <e e'> <aes! aes'!>
  | <e' e'>2^.\) r4
  | \once\shape #'(
      ((0 . 0) (0 . 0) (0 . -2) (0 . -3))
      ((0 . 0) (0 . 1) (0 . 1) (0 . 0.5))
    ) PhrasingSlur
    <f f'>2.\arpeggio\(
  | <a, a'>2.~
  %100
  | q2 <bes bes'>4
  | <des! des'!>2.
  | <ces ces'>2 <aes aes'>4
  | <f f'>2.~
  | q4\) <e e'>( <aes aes'>
  % 105
  | <e' e'>2^.) r4
  | <f f'>2.(
  | <a, a'>~)
  | q4\( <bes bes'>^. <des des'>^.
  | <f f'>2^.\) r4
  %110
  | <ges ges'>2.\(
  | <bes, bes'>~
  | q4\)^\markup {
      "poco a poco accelerando"
    }
    <ces ces'>\( <ees ees'>
  | <f f'>2^.\) r4
  | <ges ges'>2.(
  %115
  | <b, b'>~)
  | q4 <c c'> <des des'>
  | <d d'> <ees ees'> <e e'>
  | <f f'> <ges ges'> <d d'>
  | <ees ees'> <e e'> <f f'>
  %120
  | <fis fis'>2\ottava #1 <fis! dis' fis!>4
    \bar "||"
    \key c \major
  | <g b e g>2.
  | <b e b'>
  | \once\stemDown <e, g c e>^>~
  | \once\stemDown q4( <f f'> <fis fis'>)
  %125
  | <g b e g>2.
  | <b e b'>
  | \once\stemDown <e, g c e>^>(
  | <f f'>4 <fis fis'> <g g'>)
    \bar "||"
    \key aes \major
  | <aes c f aes>2.
  %130
  | <c f c'>
  | \once\shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
    <f, aes des f>^>~(
  | q4 <fis fis'> <g g'>)
  | <aes c f aes>2.
  | <c f c'>
  %135
  | <f, aes des f>
  | <ges ges'>4 <g g'> <aes aes'>
  | <bes des ges bes>2.
  | <des, ges des'>2\( <ges! ges'!>4
  | <f f'>2 <e e'>4\ottava #0
  %140
  | <aes, aes'>2 <eeses' eeses'>4
  | <des ges des'>2.\)
  | <ees ees'>4\( <des des'> <ges ges'>
  | <f f'>2 <ees ees'>4
  | <aes, aes'>2 <b b'>4\)
    \bar "||"
    \key a \major
  | R1*3/4*15
    \bar "||"
    \key aes \major
  | R1*3/4*30
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*89
  | f'2.
  | \mergeDifferentlyHeadedOn\mergeDifferentlyDottedOn
  | f
  | ees4 s2
  | s2.
  | ges_\markup {
      "sempre legatissimo"
    }
  %95
  | d
  | d4 s2
  | s2.
  | f
  | f
  %100
  | ees4 s2
  | s2.
  | ges
  | d
  | d4 s2
  %105
  | s2.
  | f
  | f
  | ees4 s2
  | s2.
  %110
  | ges
  | ges
  | ees4 s2
  | s2.
  | ges
  %115
  | ges
  | ees4 s2
  | s2.
  | a
  | s
  %120
  | a
  | s4 \stemDown b2
  | g e4
  | s c'2
  | g e4
  %125
  | s4 b'2
  | g e4
  | s4 c'2
  | g e4
  | s4 c'2
  %130
  | aes2 f4
  | s4 des'2
  | aes f4
  | s4 c'2
  | aes f4
  %135
  | s4 des'2
  | aes f4
  | s des'2
  | bes s4
  | \stemUp a,8\rest ges_( aes ees' aes, ges)
  %140
  | a\rest ges_( aes eeses' aes, ges)
  | s4 bes'8^>( ges des bes)
  | ges'( des bes ges) s4
  | a8\rest ges_( aes ees' aes, ges)
  | a\rest f_( aes d aes f)
  %145
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3/4\unaCorda
  | R1*3/4
  | <ges ees' aes>2.~^>
  | q4 r r
  | R1*3/4*7
  %12
  | <ges ees' a>2.~^>
  | q4 r r
  | R1*3/4*6
  %20
  | r4 <bes f'>^-( bes,)
  | r <bes' f'>^-( bes,)
  | r <bes' ges'>^-( ees,)
  | R1*3/4
  | r4 <des' f>^-( f,)
  %25
  | r <des' f>^-( f,)
  | r <ees' g>^-( ges,)
  | R1*3/4
  | r4 <cis fis a>^-( fis,)
  | r <cis' fis a>^-( fis,)
  %30
  | r <d' fis a>^-( fis,)
  | R1*3/4
  | r4 <cis' fis a>^-( fis,)
  | r <cis' fis a>^-( fis,)
  | r <d' fis a>^-( fis,)
  %35
  | R1*3/4*6
  | <g! e' a>2.~^>
  | q4 r r
  | R1*3/4*7
  %50
  | <g e' ais>2.~^>\arpeggio
  | q4 r r
  | R1*3/4*6
  | r4 <b fis'>^-( d,)
  | r4 <b' fis'>^-( d,)
  %60
  | r4 <b' g'>^-( e,)
  | R1*3/4
  | r4 <d' fis>^-( fis,)
  | r4 <d' fis>^-( fis,)
  | r4 <e' g>^-( g,)
  %65
  | R1*3/4
  | r4 <d' g bes>^-( g,)
  | r <d' g bes>^-( g,)
  | r <ees' g bes>^-( g,)
  | R1*3/4
  %70
  | r4 <d' g bes>^-( g,)
  | r <d' g bes>^-( g,)
  | r <ees' g bes>^-( g,)
  | R1*3/4*8
    \clef "treble"
  %81
  | <bes' ees g>4_. r r
  | <aes e' aes>_. r r
  | <b e aes>_. r r
  | <aes f' aes>_. r r
  %85
  | <c f aes>_. r r
  | <aes f' aes>_. r r
  | R1*3/4*2
    \bar "||"
    \key aes \major
    \clef "bass"
  | \stemDown r8
    \once\shape #'((0 . 2) (0 . 1.5) (0 . -4) (0 . 0.8)) PhrasingSlur
    aes,,\( aes' ees' g des'
  %90
  | f des g, ees g des'
  | f des g, ees g des'
  | ees des g,\) r r4
  | r8
    \once\shape #'(
      ((0 . 2) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
    ) PhrasingSlur
    aes,,\( aes' e' aes d
  | ges d aes e aes b
  %95
  | d b aes e a b
  | d b aes\) r r4
  | r8 aes,, aes' ees' g des'
  | f des g, ees g des'
  | f des g, ees g des'
  %100
  | ees des g, r r4
  | r8
    \once\shape #'((0 . 2) (0 . 2) (0 . -7) (0 . 0)) PhrasingSlur
    aes,,\( aes' e' g d'
  | ges d aes e aes b
  | d b aes e aes b
  | d b aes\) r r4
  %105
  | r8
    \once\shape #'((0 . 2) (0 . 2) (0 . -9) (0 . 2)) PhrasingSlur
    aes,,\( aes' ees' g des'
  | f des g, ees g des'
  | f des g, ees g des'
  | ees des g,\) r8 r4
  | r8
    \once\shape #'((0 . 2) (0 . 2) (0 . -8) (0 . 0.5)) PhrasingSlur
    aes,,\( aes' ees' ges des'
  %110
  | ges des ges, ees ges des'
  | ges ces, ges ees ges ces
  | ees ces ges\) r r4
  | r8
    \once\shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0.5)) PhrasingSlur
    aes,,\( aes' ees' a des!
  | ges des a ees a des
  %115
  | ges c, a ees a c
  | ees a, ges\) r r4
  | r8
    \once\shape #'(
      ((0 . 5) (0 . 0) (0 . -4) (-0.3 . 0.5))
      ((0 . 2) (0 . 1) (0 . 1) (0 . 0))
    ) PhrasingSlur
    aes,,!\( aes' ges' c ees
  | a ees c ges c ees
  | r8 aes,,,! aes' ges' c ees
  %120
  | a_> dis, c dis a'\) r
    \bar "||"
    \key c \major
  | <g,,, g'>4^>
    \clef "treble"
    \stemUp b'''8^> g e b
  | g'^> e b g e'[ e,]
    \clef "bass"
  | \once\stemDown <a,, a'>4^>
    \clef "treble"
    \stemUp c'''8^> g e c
  | g'^> e c g e'[ e,]
    \clef "bass"
  %125
  | \once\stemDown <b, b'>4^>
    \clef "treble"
    \stemUp b'''8^> g e b
  | g'^> e b g e'[ e,]
    \clef "bass"
  | \once\stemDown <bes, bes'>4^>
    \clef "treble"
    \stemUp c'''8^> g e c
  | g'^> e c g e'[ e,]
    \clef "bass"
    \bar "||"
    \key aes \major
  | \once\stemDown <aes,, aes'>4^>
    \clef "treble"
    \stemUp c'''8^> aes f c
  %130
  | aes'^> f c aes f'[ f,]
    \clef "bass"
  | \once\stemDown <bes,, bes'>4^>
    \clef "treble"
    \stemUp des'''8^> aes f des
  | aes'^> f des aes f'[ f,]
    \clef "bass"
  | \once\stemDown <c, c'>4^>
    \clef "treble"
    \stemUp c'''8^> aes f c
  | aes'^> f c aes f'[ f,]
    \clef "bass"
  %135
  | \once\stemDown <ces, ces'>4^>
    \clef "treble"
    \stemUp des'''8^> aes f des
  | aes' f des aes f'[ f,]
    \clef "bass"
  | \once\stemDown <bes,, bes'>4^>
    \clef "treble"
    des'''8^> bes ges des
  | bes'^> ges des bes r4
    \clef "bass"
  | \stemDown <ces,, ces'>2 s4
  %140
  | ces'2 s4
  | <bes, bes'>4 bes'''2
  | ges2 r4
  | <ces,,, ces'>2 s4
  | ces'2 s4
    \bar "||"
    \key a \major
  | R1*3/4*15
    \bar "||"
    \key aes \major
  | R1*3/4*30
      \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 11 { s2.\noBreak } s2.\pageBreak
  % page 2
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  % page 3
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  % page 4
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  % page 5
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  % page 6
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.
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
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = "Franz Liszt"
    opus = "S.197"
    title = \markup { "Zwiete Elegie" }
    subtitle = \markup \italic { "Fräulein Lina Ramann Gewidmet" }
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
