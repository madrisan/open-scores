Global = {
  \key c \major
  \time 2/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %\override DynamicText.Y-offset = #-2.4
  %\override Hairpin.Y-offset = #-2
  \stemUp\slurNeutral\tieDown
  %1
  \tempo \markup {
    \bold\concat { "Rasg, aber leicht (" { \tiny\note {4} #1 } " )" }
  }
  \partial 16 s16
  %1
  | s2
  | f'8..\rest
    \once\override Staff.TextScript.extra-offset = #'(-2.5 . -5)
    <f,! b!>32^>^\markup {
    \dynamic f
    }
    s4
  | e16[( dis) e,!_. fis_.] g![( f!) d'!_. c!_.]
    \break
  | fis,16_.[ gis_.] ais4.~\pp\>
  %5
  | ais4\fermata\! s4
  | \slurUp
    \once\override Staff.TextScript.extra-offset = #'(-2.5 . -3)
    \acciaccatura d!8^\markup { \dynamic pp } c!8^. g!4.
    \break
  | s2
  | r4 r8 <g! cis>16^. r
  | s2
    \break
  %10
  | r32 f!_\marcato[ a!_\marcato f_\marcato]
    \tuplet 3/2 { bes,16_\marcato[ des_\marcato ces_\marcato] }
    bes!32_\marcato[ f'\rest fis_\marcato dis!_\marcato]
    c![_( d! e!_.) gis,_. ]
  | d''4\rest <b! e!>8^. d\rest
  | g,!8^>_.\ff bes,4.
  | b!8 r r4
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurUp
  \override Hairpin.to-barline = ##f
  \partial 16 f!16\(_\p
  %1
  | a!8.. f!32 bes,8.. des32
  | c!4 \autoBeamOff a!8.\p\) cis16 \autoBeamOn
  | s2*2
  | s4 b!8[(^\markup { \small\italic "leicht" } c!])
  %5
  | \once\override Staff.TextScript.extra-offset = #'(-2.5 . 2.5)
    \once\override PhrasingSlur.outside-staff-priority = #250
    fis,4_-\(_\markup { \dynamic p } f!_-~
  | f!8[\< fis\!]
    \tuplet 3/2 {
      \once\override Hairpin.shorten-pair = #'(0 . 3)
      a8^-\> gis a,!\!
    }
  | b!8.[ c!16] d!4~
  | d8[ e,!]\) r4
  | s2
  %10
  | f'!8_.
    \once\override Staff.TextScript.extra-offset = #'(-3.2 . 2)
    fis4._>_\markup {
      \dynamic ff
    }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 16 s16
  %1
  | s2*11
  | s4
    \once\override Staff.TextScript.extra-offset = #'(-2 . -2)
    <b,! f'!>8^.^\markup { \dynamic sf } s
  | R1*1/2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemUp\slurNeutral\tieNeutral
  \partial 16 r16
  %1
  | R1*1/2
  | R1*1/2
  | R1*1/2
  | r8 <d,! f! g!>16[\sustainOn c'!] \stemDown <ees g! b! d!>4~
  %5
  | q^\fermata\tweak X-offset 2\tweak Y-offset -4\sustainOff r
  | \once\override Staff.TextScript.extra-offset = #'(-4 . 1)
    <cis e! ais>8^._\markup { \dynamic pp } <d! gis b!>4.
  | R1*1/2
  | r4 r8 \stemUp <g,! a! fis'>16_. r
  | R1*1/2
  %10
  | R1*1/2
  | \stemDown r4 <g'! c! d!>8^. r
  | r4 <a,,! gis'>8_. r
  | s2
  \fine
}

centerDynamics = {
  \partial 16 r16
  %1
  | s2*6
  | s4_\markup { \small\italic "poco rit." \dynamic p } s
  | s2*2
  %10
  | \override Hairpin.to-barline = ##f
    s8_\markup { \dynamic f \small\italic "martellato" } s8\< s4
  | s8\! s s\sf s
  | s2
  | s4\fff s
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
          \line { \abs-fontsize #20 "IV." }
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
