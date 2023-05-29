Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

grayTextColor = #(x11-color "dimgray")
lH = \markup { \small\italic "l.H" }
rH = \markup { \small\italic "r.H" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurNeutral\tieNeutral
  \tempo \markup {
    \bold\concat { "Sehr langsam (" { \tiny\note {4} #1 } " )" }
  }
  \partial 4 <a fis' b>4~\pp
  %1
  | q1~
  | q2 q2~
  | q1~
  | \stemUp q2 f'4\rest
    \shape #'((( 0.5 . -1) (0 . 0) (0 . 0) (0 . -2))) PhrasingSlur
    q4~\(\pp
  %5
  | q2 <c,! f! bes>~
  | q1\)\fermata
    \break
  | r4 \stemDown
    \shape #'((( 0.5 . 0.2) (0 . 2.5) (0 . 6) (0 . 4.5))) PhrasingSlur
    \once\override Hairpin.rotation = #'(-1 -1 0)
    \once\override Staff.TextScript.extra-offset = #'(-2.2 . -2.5)
    d!8[_\markup {
      \dynamic p
    }_\<\(
    \bottom \stemUp
    \once\override Staff.TextScript.extra-offset = #'(-5 . 1.5)
    cis,^~\!^\rH] \tuplet 3/2 { cis\> d!\!_\< fis4\!\> ees\!\) }
    \top
  | \omit TupletBracket\omit TupletNumber
    \tuplet 3/2 { r8 <d'!~ gis^~ c!~>4^> } q8 r r2
  | <a'! fis' b!>1\ppp\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurUp\tieDown
  \partial 4 s4
  %1
  | s1*2
  | a2\rest
     \once\override Staff.TextScript.extra-offset = #'(-2 . 1)
    dis'2~_>_\markup { \dynamic p }
  | %\once\override NoteColumn.force-hshift = #1.4
    dis8[ dis\p] r4 e,2\rest
  %5
  | s1*3
  | \tupletUp
    \tuplet 3/2 {
      r8 e!-\markup { \finger "1-1" }_\markup { \hspace #-3.5 \dynamic pp }[ ees~-2]
    }
    \once\override Stem.length = #7
    ees s s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurUp\tieUp
  \partial 4 s4
  %1
  | s1*2
  | a''2\rest
    \once\override Staff.TextScript.extra-offset = #'(-8 . -6)
    %\once\override PhrasingSlur.outside-staff-priority = #300
    \once\override Hairpin.rotation = #'(10 -1 0)
    dis4.-4^\<^\markup {
      \dynamic pppp
    }\( e8~\!
  | \override Hairpin.rotation = #'(-6 1 0)
    e8[^\>
    \once\override Staff.TextScript.extra-offset = #'(-2 . 4)
    dis]\!\)_\markup {
      \dynamic pppp
    } d4\rest s2
    \revert Hairpin.rotation
  %5
  | s2. a,,8\rest gis~^>\(
  | gis4 fis2.\fermata\)
  | s1
  | \omit TupletBracket\omit TupletNumber
    \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(0 . -1)
      r8_\markup {
        \small\italic "genau im Takt"
      }
      fis4
    }
    g8 s8 s2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \set Staff.pedalSustainStyle = #'mixed
  \override Staff.SustainPedal.color = \grayTextColor
  \partial 4 r4
  %1
  | r2 \clef treble <g'! c! f!>2~
  | q2 r
  | \override Staff.SostenutoPedal.color = \grayTextColor
    r4 \stemDown q2.~\sostenutoOn
    \break
  | q2 r2\sostenutoOff
    \set Staff.pedalSustainStyle = #'text
    \revert Staff.SostenutoPedal.color
    \revert Staff.SustainPedal.color
  %5
  | \stemUp q2. \clef bass \stemDown\tieDown <e,! d'!>4~_>\sustainOn
  | q1\tweak X-offset 18\tweak Y-offset -5\sustainOff
  | << {
  |   \once\override Staff.TextScript.extra-offset = #'(0 . -1.5)
      s1_\markup {
        \small\italic "mit sehr zartem Ausdruck"
      }
  |   \tuplet 3/2 { r8 <cis'_~ b'!^~>4^> } q8 r r2
  |   \clef treble
      r4 \stemUp
      <g'! c! f!>2.^\fermata
      \fine
    }
    \new Staff \with {
      alignBelowContext = "lower"
      \clef bass
      \omit Staff.TimeSignature
    } {
  |   R1
  |   R1
      \once\override Staff.TextScript.extra-offset = #'(-2.5 . 1.2)
  |   \set Staff.pedalSustainStyle = #'mixed
      \override Staff.SustainPedal.color = \grayTextColor
      << {
        r2^\markup {
          \small\italic "wie ein Hauch"
        }
        r4 bes,8\pppp[( aes,])\fermata
      } \\ {
        r4
        % workaround for printing a sostenuto pedal at the bass
        \override Staff.SostenutoPedal.color = \grayTextColor
        s8 s\sostenutoOn s2
      } >>
      \fine
    }
    >>
}

centerDynamics = {
  \partial 4 s4
  %1
  | s1*5
  | s4\> s2 s4\!\ppp
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
    \context Dynamics <<
      \Global \centerDynamics
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
    %composer = "Arnold Schönberg"
    %opus = "Op. 19"
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #20 "VI." }
        }
      }
    }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 58
  }
}

\markup {
  \column {
    \wordwrap \italic\small\abs-fontsize #11 {
      \bold "Note:"
      "The pedal of bars 5-6 is Schoenberg's original."
      "The gray-colored ones are a suggestion by Giancarlo Simonacci (see the Preface)."
    }
  }
}
