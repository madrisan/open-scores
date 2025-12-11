Global = {
  \key d \major
  \time 2/4
  \include "../global.ly"
}

top = \change Staff = "upper"
bottom = \change Staff = "lower"
ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritardando " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  %1
  | b8 \( [g' fis e]
  | d <gis, b> <a cis>4\)
  | b8 \( [g' fis e]
  | d <gis, b> <a cis>4\)
  %5
  | c8 \( [a b fis]
  | g e <d fis>4\)
  | c'8 \( [a b fis]
  | g e! <d fis>4\)\ritardando
  \bar "||"
  | fis8\startTextSpan \( [gis\< a b\!]
  %10
  | cis <gis b> a4\)
  | fis8 \( [gis\< a b\!]
  | cis <gis b> a4\)\stopTextSpan
  | b8 \( [g' fis e]
  | d <gis, b> <a cis>4\)\ritardando
  %15
  | b8\startTextSpan \( [g' fis e]
  | d <gis, b> s4\stopTextSpan
  | g'!4^\fermata \) r4
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  %1
  | g16 e s8 bes'16 g s8
  | a16 fis s8 a16 e s8
  | g16 e s8 bes'16 g s8
  | a16 fis s8 a16 e s8
  \bar "||"
  %5
  | s2*8
  | g16 e s8 bes'16 g s8
  | a16 fis s8 a16 e s8
  %15
  | g16 e s8 bes' 16 g s8
  | a16 fis s8
    << {
      \stemUp cis'4~
    } \\ {
      \set tieWaitForNote = ##t
      a16^~[ e~] s8
    } >>
  | << { \stemDown cis'4 } \\ { <e, a>4 } >> s4
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  %1
  | \once\override Beam.positions = #'(5.0 . 6.0)
    a8 \top\stemDown b'16 g
    \once\override Beam.positions = #'(6.0 . 7.0)
    \bottom\stemUp cis,8 \top\stemDown a'16 g
  | \once\override Beam.positions = #'(6.0 . 7.0)
    \bottom\stemUp d8 \top\stemDown f16 d
    \once\override Beam.positions = #'(4.5 . 5.5)
    \bottom\stemUp a8 \top\stemDown cis16 a
  | \once\override Beam.positions = #'(4.3 . 5.3)
    \bottom\stemUp a,8 \top\stemDown \stemDown b''16 g
    \bottom\stemUp \stemUp cis,8 \top\stemDown \stemDown a'16 g
    \break
  | \once\override Beam.positions = #'(6.0 . 7.0)
    \bottom\stemUp d8 \top\stemDown f16 d
    \once\override Beam.positions = #'(4.5 . 5.5)
    \bottom\stemUp a8 \top\stemDown cis16 a16
  | \top\stemDown a'16 e fis \bottom\stemUp ees
    \top\stemDown g d ees \bottom\stemUp c
  | \top\stemDown d b cis \bottom\stemUp bes
    \top\stemDown d a \bottom\stemUp fis d
    \break
  | \top\stemDown a''16 e fis \bottom\stemUp ees
    \top\stemDown g d ees \bottom\stemUp c
  | \top\stemDown d b cis \bottom\stemUp bes
    \top\stemDown d a \bottom\stemUp fis d
  | \once\override Beam.positions = #'(-5.6 . -7.5)
    \top\stemDown d'16 b \bottom\stemUp a gis
    fis e d \top\stemDown fis'
    \break
  | \top\stemDown cis'16 e, \bottom\stemUp dis d
    \top\stemDown a' cis, \bottom\stemUp e, cis
  | \once\override Beam.positions = #'(-5.2 . -7.5)
    \top\stemDown d'16 b \bottom\stemUp a gis
    fis e d \top\stemDown fis'
  | \top\stemDown cis'16 e, \bottom\stemUp dis d
    \top\stemDown a' cis, \bottom\stemUp e, cis
  | \stemUp a8 \top\stemDown b''16 g
    \bottom\stemUp cis,8 \top\stemDown a'16 g
    \break
  | \once\override Beam.positions = #'(6.0 . 7.0)
    \bottom\stemUp d8 \top\stemDown f16 d
    \once\override Beam.positions = #'(4.5 . 5.5)
    \bottom\stemUp a8 \top\stemDown cis16 a
  | \bottom\stemUp a,8 \top\stemDown b''16 g
    \once\override Beam.positions = #'(6.0 . 7.0)
    \bottom\stemUp cis,8 \top\stemDown a'16 g
    \once\override Beam.positions = #'(6.0 . 7.0)
    \bottom\stemUp d8 \top\stemDown f16 d
    s4
  | s2
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override Rest.staff-position = #0
  %1
  | a8 r8 cis r
  | d r a r
  | a, r cis' r
  | d r a r
  %5
  | d,4 d4
  | d d
  | d, d'
  | d d
  | b \( cis8 d
  %10
  | e4 a \)
  | b, \( cis8 d
  | e4 a \)
  | a,8 r8 cis' r8
  | d r a r
  %15
  | a, r cis' r
  | d r
    << {
      \set tieWaitForNote = ##t
      \once\override Beam.positions = #'(6.0 . 6.0)
      a8 cis16~ a~
    } \\ {
      a8 d,\rest
    } >>
  | << { <a' cis>4 } \\ a,4_\fermata >> r4
  \fine
}

centerDynamics = {
  | s8-\markup { \hspace #-1 \dynamic p } s4.
  | s2
  | s8\pp s4.
  | s2
  %5
  | s8-\markup { \hspace #-1 \dynamic p } s4.
  | s2
  | s8-\markup { \hspace #-1 \dynamic pp } s4.
  | s2
  | s8-\markup { \hspace #-0.8 \dynamic p } s4.
  %10
  | s2
  | s8-\markup { \hspace #-0.2 \dynamic pp } s4.
  | s2
  | s8\p s4.
  | s2
  %15
  | s8\pp s4.
}

\score {
  \new PianoStaff
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
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "4. Bittendes Kind" }
    subtitle = \markup {
             \column {
               \line { "(Pleading Child)" }
               % workaround to insert some vertical space after the subtitle
               \line { " " }
             }
           }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 8 = 138
  }
}
