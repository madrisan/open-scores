\version "2.25.25"

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
        \line { \abs-fontsize #40 \bold "La lugubre gondola" }
        \null\null
        \line { \abs-fontsize #20 "S.200/2" }
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
          \abs-fontsize #10 "Based on Breitkopf Härtel edition, Leipzig 1927"
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

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Andante mesto, non troppo lento" 4 = 88
    r4 \clef bass fis,\( ees' a,~
  | a fis ees' a,~
  | a fis ees'2
  | a, fis\)
  %5
  | r4 a^\markup { "recitando" }\( fis'4. ees8
  | d4 c2\) c4~
  | c c2\( des4
  | c b2 ais4
  | cis2 b4\) r\fermata
  %10
  | r4 f d' aes~
  | aes f d' aes~
  | aes f d'2
  | aes f
    \clef treble
  | \stemNeutral \phrasingSlurNeutral
    r4 b\( aes'4. f8
  %15
  | ees4 d2\) d4~
  | d d2\( ees4
  | d des2 c4
  | ees2 des4\) r
    \bar "||"
  | \key aes \major
  | r4 s2.
  | s1*3
  %23
  | r4^\markup {
      "recitando"
    }
    des_\markup {
      \whiteout "sempre legato"
    }
    bes'4. g8
  | f4 e2 des4
  | c bes g'4. e8
  | des4 c2 bes4
  | aes g e'4. des8
  | c4 b bes ees_>~
  | ees des c b
  %30
  | bes a aes des
  | g,2. aes4
  | a2 bes
  | r a
  | bes b
  %35
  | c des~
  | des4 b c aes'
  | g2.^> f4
  | e4 ees des b
  | c4.\( des16 ees des8\) r des4_>~
  %40
  | des b c bes'~
  | bes aes g f
  | e ees des4. f8
  | \stemUp c'2.^\markup {
      \hspace #3 "piangendo"
    }
    b4
  | bes a bes b
  %45
  | d4\rest c2^> b4
  | bes a bes b
  | \stemNeutral\tieNeutral
    r4 aes'~\( aes8 f e ees
  | d des c b aes f e ees
  | d4 des c b\)
  %50
  | r2 aes\(
  | g4 aes a ais
    \bar "||"
  | \key e \minor
    b2 c^~\)
  | c4 ais b g'
  | fis2.^> e4
  %55
  | dis d c ais
  | b4.\( c16 d c8\) r c4~_>
  | c4 ais b a'~_>
  | a g fis e
  | dis d c4. e8
  %60
  | \stemUp
    b'2.^^ ais4
  | a gis a ais
  | r4 b2^> ais4
  | a gis a ais
  | \stemNeutral\tieNeutral
    r4 g'~\( g8 e dis d
  %65
  | cis c b ais g e dis d
  | cis4 c b ais\)
  | r2 g\(
  | ais4 b bis cis\)
    \bar "||"
  | \tempo "Un poco meno lento" 4 = 104
    \key b \minor
    <ais cis fis ais>1~\arpeggio
  | <a cis fis a>\arpeggio
  | <ais cis fis ais>~\arpeggio
  | <a cis fis a>2.\arpeggio <cis cis'>4
  | R1*36
    \bar "||"
  | \key aes \major
    R1*31
    \bar "||"
  | \key c \major
    R1*29
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  | s1*42
  | d4\rest des8[ f des f des f]
  | des[ f des f des f des f]
  %45
  | s4 des8[ f des f des f]
  | des[ f des f des f des f]
  | s1*13
  %60
  | c4\rest c8[ e c^\markup { "piangendo" } e c e]
  | c[ e c e c e c e]
  | s4 c8[ e c e c e]
  | c[ e c e c e c e]
  | s1*5
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*18
  | s4 e\( des' g,~
  %20
  | g e des' g,~
  | g e des'2
  | g, e\)
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieNeutral\phrasingSlurUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r4 fis,\( ees' a,~
  | a fis ees' a,~
  | a fis ees'2
  | a, fis\)
  %5
  | R1
  | r2 <fis ees' a>4\arpeggio^! r
  | <f d' aes'>4\arpeggio^! r <f des' aes'>4\arpeggio^! r
  | <f d' aes'>\arpeggio^! r r2
  | R1\fermata
  %10
  | r4 f d' aes~
  | aes f d' aes~
  | aes f d'2
  | aes f
  | R1
  %15
  | r2 <aes f' b>4\arpeggio r
  | <g e' bes'>4\arpeggio r <g ees' bes'>4\arpeggio r
  | <g e' bes'>4\arpeggio r4 r2
  | R1
    \bar "||"
  | \key aes \major
    r4 e des' g,~
  %20
  | g e des' g,~
  | g e des'2
  | g, e
  | R1*12
  %35
  \repeat unfold 2 {
  | e8 c' aes' des,~ des c aes' c,
  }
  \repeat unfold 2 {
  | f, c' aes' des,~ des c aes' c,
  }
  \repeat unfold 2 {
  | e, c' aes' des,~ des c aes' c,
  }
  %41
  | f, c' aes' des,~ des c aes' c,
  | f, c' aes' des,~ des e f aes
  | f,4 \stemUp f'8[ aes f aes f aes]
  | f[ aes f a f bes f aes]
  %45
  | \once\stemDown f,4 f'8[ aes f aes f aes]
  | f[ aes f a f bes f aes]
  |  R1*5
    \bar "||"
  %52
  | \key e \minor
    \stemDown
    \repeat unfold 2 {
      dis,,8 b' g' c,~ c b g' b,
    }
  \repeat unfold 2 {
  | e, b' g' c,~ c b g' b,
  }
  %55
  \repeat unfold 2 {
  | dis, b' g' c,~ c b g' b,
  }
  | e, b' g' c,~ c b g' b,
  | e, b' g' c,~ c dis e g
  %60
  | \stemDown e,4 \stemUp e'8[ g e g e g]
  | e[ g e gis e a e g]
  | \once\stemDown e,4 e'8[ g e g e g]
  | e[ g e gis e a e g]
  | R1*5
    \bar "||"
  | \key b \minor
    \stemDown
    \repeat unfold 8 {
      cis,,8 fis cis' fis~ fis cis fis, cis
    }
  | R1*32
    \bar "||"
  | \key aes \major
    R1*31
    \bar "||"
  | \key c \major
    R1*29
    \fine
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
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.200/2"
    title = \markup { "" }
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
