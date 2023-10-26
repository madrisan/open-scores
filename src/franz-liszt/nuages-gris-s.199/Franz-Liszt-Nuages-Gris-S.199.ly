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
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #75 \bold "Liszt" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Trübe Wolken" }
        \null
        \line { \abs-fontsize #26 \bold "(Nuages Gris)" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "S. 199" }
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
            "Based on the score: Leipzig - Breitkopf & Härtel, 1927. Plate F.L. 77"
          }
        }
        \null\null
      }
    }
  }
}

\markup {
  \general-align #Y #DOWN {
    \epsfile #X #96 #"Franz-Liszt-by-Nadar-march-1886.ps"
  }
}
\markup {
  \fill-line {
    \center-column {
      \null
      \fill-line \abs-fontsize #10 {
        \italic "Franz Liszt - March 1886"
      }
    }
  }
}

Global = {
  \key g \minor
  \time 4/4
  \include "./global.ly"
}

pbeforenote = \markup { \hspace #-1.8 \dynamic p }

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %\override DynamicText.Y-offset = #-2.4
  %\override Hairpin.Y-offset = #-2
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | \clef bass
    r4 d_\pbeforenote\( g cis~
    cis d bes g\)
  \repeat unfold 3 {
  |   r4 d\( g cis~
  |   cis d bes g\)
  }
  %9
  | <fis bes ees>1~
  | q4 r r2
  | <fis bes d>1~
  | q4 r r2
  | <f! a cis>1~
  | q4 r r2
  %15
  | <e! gis c!>1~
  | q4 r r2
  | <ees g! ces>1~
  | q4 r r2
  | <d fis bes>1~
  %20
  | q4 r r2
    \pageBreak
  \repeat unfold 2 {
  |  r4 a\( bes cis~
  | cis d bes2\)
  }
  \break
  %25
  | r2 \clef treble bes''\(
  | a e!
  | fis1
  | g2\) r
  | r2 ees'\(
  %30
  | d g,
  | a1
  | bes2\) r
  | r2 <fis fis'>~
  | q <g g'>~
  %35
  | q\( <gis gis'>
  | <a a'> <bes bes'>\)
  | r <b! b'!>~
  | q <c! c'!>~
  | q\( <cis cis'>
  %40
  | <d d'> <ees! ees'!>\)
  | r <ees ees'>~
  | q <e! e'!>~
  | q\( <f f'>~
  | q <fis fis'>\)
  %45
  | R1
  | \ottava 1
    <fis b! fis'>1\arpeggio^\markup { \small "rallent." }
  | <g b g'>~\arpeggio
  | q1
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*32
  %33
  \repeat unfold 2 {
  |  a4\rest fis <bes ees> fis
  }
  \repeat unfold 2 {
  | a4\rest fis <bes d> fis
  }
  \repeat unfold 2 {
  | a4\rest f <a cis> f
  }
  \repeat unfold 2 {
  | a4\rest e <gis c> e
  }
  \repeat unfold 2 {
  | a4\rest ees <g ces> ees
  }
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | R1*4
  %5
  | \repeat tremolo 4 { bes16_\pbeforenote bes' }
  \repeat unfold 5 {
    \repeat tremolo 4 { bes,16 bes' }
  }
  | R1
  | \repeat tremolo 4 {
      bes,16^\markup { \small "tremolando" } bes'
    }
    \repeat tremolo 4 { bes, bes' }
  | \repeat unfold 2 {
      \repeat tremolo 4 { a, a' }
    }
  \repeat unfold 4 {
  | \repeat unfold 2 {
      \repeat tremolo 4 { bes, bes' }
    }
    \repeat unfold 2 {
      \repeat tremolo 4 { a, a' }
    }
  }
  %19
  \repeat unfold 4 {
    \repeat tremolo 4 { <bes, fis'>16 bes' }
  }
  \repeat unfold 2 {
  | r4 a,\( bes cis~
  | cis d bes2\)
  }
  %25
  \repeat unfold 4 {
  | r4 d'\( g cis~
  | cis d bes g\)
  }
  | \stemDown
    bes,2_( s4 \hideNotes f') \unHideNotes
  | a,2_( s4 \hideNotes f') \unHideNotes
  %35
  | bes,2_\markup { \small "sempre legato" } s
  | a s
  \repeat unfold 3 {
  | bes s
  | a s
  }
  %43
  | a4 r r2
  | R1*2
  | \clef treble <a' ees' g b!>1\arpeggio
  | q1~\arpeggio
  | q1
  \fine
}

centerDynamics = {
  %1
  | s1*18
  %19
  | s4\< s2.
  | s4\!\> s2.
  | s4\! s2.
  | s1*24
  %46
  | s4\p s2.
}
Sustain = {
  %1
  | s1*8
  | s4\sustainOn s2.
  | s1
  \repeat unfold 5 {
  | s4\sustainOff\sustainOn s2.
  | s1
  }
  %20
  | s4\sustainOff s2.
  | s1*24
  %46
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
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
    >>
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
      \Sustain
    >>
  >>
  \header {
    composer = "Franz Liszt"
    opus = #f
    title = "Trübe Wolken"
    subtitle = "(Nuages Gris)"
    arranger = \markup { \italic "Komponiert 24. August 1881 in Weimar" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
