Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %\override DynamicText.Y-offset = #-2.4
  %\override Hairpin.Y-offset = #-2
  \stemUp\slurNeutral\tieDown
  %1
  \tempo \markup {
    \bold\concat { "Sehr langsame (" { \tiny\note {4} #1 } " )" }
  }
  %1
  | \clef bass
    \shape #'((( 0.5 . -2) (0 . -2) (0 . -4) (0 . 0))) PhrasingSlur
    \once\override PhrasingSlur.outside-staff-priority = #500
    <d! b'!\( cis>2 e'!
  | \clef treble g!8[ a!] <f,! a! cis fis>2^>_\> <ges aes c! f!>4\!\)
    \break
  | r4
    \shape #'((( 0 . 0) (0 . 0) (0 . 0) (0 . -3))) PhrasingSlur
    <bes d! a'!>8\f[\( d'!] <d,! g!>2
  | \once\override NoteColumn.force-hshift = #0 <a! des f!>1\)
    \break
  %5
  | r4 <g'! b!>_\p\<\( dis'8^-[\! b!] d,![ f!]
  | a!^-[ g!]\> ees2 d!4\)\!
    \break
  | r8 c!16[\( b'!] ees,4. e!8_-[ e dis_.]\)
  | \shape #'((( 0 . 0) (0 . 2) (0 . 3) (-1.2 . 3.3))) PhrasingSlur
    ees4\(^\> g,!2.~\!
  | \once\override NoteColumn.force-hshift = #0.6 g1\)
  \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurUp
  \override Hairpin.to-barline = ##f
  %1
  | \shape #'((( 1 . -0.5) (0 . 0) (0 . 0) (0 . 0))) Slur
    \override Hairpin.rotation = #'(2 -1 0)
    fis4_(\f\< g2.*1/3)\!^\< c!4.\!_\<
    \once\override Hairpin.rotation = #'(-4 1 0)
    bes8(\!^\<
  | <b! d!>4)\! s2.
  | s2 aes8[_( a!\f c! b!]
  | \once\override NoteColumn.force-hshift = #0 a!1)
  %5
  | s2 <e'! a!>4 c!8[ b!]
  | <b! ees>4 s2.
  | \revert Hairpin.rotation
    s8 \autoBeamOff\hideNotes c!16~ \unHideNotes c\<
    s4. \hideNotes c8\!\> c c\! \unHideNotes\autoBeamOn
  | a2\rest a4\rest f'8_. e\rest
  | \stemUp a,!8^. r8 r4 r2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemUp\slurNeutral\tieNeutral
  %1
  | r8_\markup \italic\small {
      \column {
        \line {
          "In der ersten 4 Takten soll die rechte Hand durchaus"
          \dynamic f ", die linke durchaus" \dynamic pp "spielen."
        }
        \line {
          "(In the first 4 bars the right hand should play"
          \dynamic f "throughout, and the left hand" \dynamic pp "throughout.)"
        }
      }
    }
    \once\override Staff.TextScript.extra-offset = #'(-2.5 . -0.5)
    <bes, bes'>\(^\markup { \dynamic pp } <ees, ees'>4. <f! f'!>8 <aes aes'>4~
  | q\)
    \once\override PhrasingSlur.outside-staff-priority = #250
    <bes bes'>\pp\(
    \override Hairpin.rotation = #'(4 -1 0)
    <c! c'!>\< <des! des'!>8[ <ees ees'>]\!
  | <f! f'!>4^-
    \once\override Hairpin.shorten-pair = #'(-2 . 4)
    <e! e'>\> <ees ees'>\)\!
    \once\override Hairpin.shorten-pair = #'(0 . -1)
    <bes bes'>8\pp\>[^- <aes aes'>]~\!
  | \revert Hairpin.rotation
    <aes aes'>[ <e! e'!>]^\pp\(^\< <c'! c'!>4.^>\! <bes bes'>8_-^\> q4_-\)\!
  %5
  | \stemDown r4 r8 <gis'' fis'>\(\< <c,! bes'>4\!
    \override Hairpin.to-barline = ##f
    <cis a'!>\>
  | <d! aes'>4\)\! r r2
  | r8. <aes g'>16 r4 r2
  | \stemUp r2 r4 <ees cis'>8_. r
  | <bes' d!>_. r r4 r2
  \fine
}

centerDynamics = {
  %1
  | s1*6
  | s8 s\pp s2.
  | s2. s4\ppp
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
      \Bass
    >>
  >>
  \header {
    %composer = "Arnold Schönberg"
    %opus = "Op. 19"
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #20 "III." }
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
    \tempo 4 = 100
  }
}
