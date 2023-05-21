Global = {
  \key c \major
  \time 3/8
  \include "../global.ly"
}

lH = \markup { \small\italic "l.H" }
rH = \markup { \small\italic "r.H" }

pocoapocorit = {
  \override TextSpanner.bound-details.left.text = \markup {
    \small\italic "poco a poco rit "
  }
}
moltorit = {
  \override TextSpanner.bound-details.left.text = \markup {
    \small\italic "molto rit "
  }
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurNeutral\tieUp
  \tempo \markup {
    \bold\concat { "Etwas rasch (" { \tiny\note {8} #1 } " )" }
  }
  %1
  | f4^- f8\rest
  | s4.
  | s4 s16
    \shape #'(
      (( -1 . 3.5) (0 . 4) (0 . 3.5) (0 . 3.5))
      (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
      (( 0 . 2) (0 . 2) (0 . 2) (0 . 2))
    ) PhrasingSlur
    \once\override PhrasingSlur.outside-staff-priority = #300
    e,!16\(
    \break
  | f!4~\tweak shorten-pair #'(0 . 4)^\< f16[\!\tweak shorten-pair #'(-4 . 4)\> ees]\!
  %5
  | fis4
    g!16[^\tweak shorten-pair #'(1 . -2)\< fis]\!
  | a4.~
  | a4.~
    \break
  | a4\)
    \once\override Staff.TextScript.extra-offset = #'(-2.2 . 2.2)
    \once\override PhrasingSlur.outside-staff-priority = #300
    a!8\(_\markup {\dynamic p }
  | ais4\tweak shorten-pair #'(0 . 4)^\< b!16[\!\tweak shorten-pair #'(-4 . 4)\> f!]\)\!
  %10
  | r8 fis16[\( c! cis d!]
  | ees4 d!8\)
    \break
  | r8 s4
  | <ais' cis>8[ <gis b!>] \clef bass aes,,16[( bes,]\moltorit
  | \once\override TextSpanner.extra-offset = #'(-2 . -1.6)
    des8[\startTextSpan ces]) \clef treble <d''! aes' c!>_.
  %15
  | <dis a'! cis>4.\stopTextSpan\fermata
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurUp
  %1
  | g8\rest c!16[_( a! ges bes]
  | a!4 gis8
  | fis[ dis8.])\breathe s16
  | b8\rest d!16[ cis c!8]
  %5
  | b\rest bes4
  | s4.
  | \once\override PhrasingSlur.outside-staff-priority = #300
    b!8.[_\( c!16 b8]~
  | b16[\< ees8\!\> d!16\!]\)\breathe b8\rest
  | s4 c!8
  %10
  | s4 gis8
  | s4.
  | r8\pocoapocorit <f''! a!>8_\f[\startTextSpan ees16 d,!~]
  | d4 s16 s\stopTextSpan
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurDown\tieDown
  %1
  | s4.*6
  | d,!8.[ cis16
    \shape #'(
      (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
      (( 0 . -1) (0 . -2) (0 . 0) (0 . 0))
    ) PhrasingSlur
    d8~]\(
  | d16[ b!_\> c!8]\)\! r
  | s4.*4
  %13
  | s8 <a'! c!>4^~^\marcato
  | q4 <f,! a!>8^.
  | <e! gis>4.\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | r8 des,16[( b'! d! f!]
  | g![ aes bes]) r16 r8
  | R1*3/8
  | r8 \stemDown <aes, ees'>[( <bes ges'>])
  %5
  | r8 \stemUp <g! des' f!>4
  | R1*3/8
  | \stemDown
    \override Tie.details.height-limit = #3
    <fis g'!>4.~
  | q4 r8
  | r_\markup \annotation {17} r
    \once\override Staff.TextScript.extra-offset = #'(-6 . 1)
    <ees'-4 g!-2>16^._\markup {
      \center-column {
        \line { \dynamic pp }
        \line { \small\italic "l.H. stacc." }
      }
    }
    [ <d!-4 fis-2>^.]
  %10
  | r8 r \stemUp
    \once\override Staff.TextScript.extra-offset = #'(-6 . 1)
    <bes-4 d!-2>16_._\markup {
      \center-column {
        \line { \dynamic pp }
        \line { \small\italic "l.H. stacc." }
      }
    }
    [ <a!-4 cis-2>_.]
  | R1*3/8
  | r8 \clef treble r16 <ges'' bes>^\marcato\f[ <g! b!>8^\marcato]
  | r16 <gis, b!>^\marcato \clef bass r16 \stemDown <cis, e!>_\marcato[ <d! f>8_\marcato_~]
  | q4 b,!8_~
  %15
  | b4.
  \fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-5 . 3.5)
    s4_\markup {
      \center-column {
        \line { \small\italic "zart, aber voll" }
        \raise #1 \line { \dynamic p }
      }
    } s8
  | s4.*2
  | s8 s16\< s\!\> s32 s\! s16
  %5
  | s s\< s\!\tweak shorten-pair #'(0 . -2)\> s\! s s
  | s4.*4
  %10
  | s8 s s\<
  | s8\!\> s s\!
  | s4.
  | s8 s\tweak shorten-pair #'(-4 . 0)\> s
  | s s s\!\pp
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
          \line { \abs-fontsize #20 "V." }
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
    \tempo 4 = 48
  }
}
