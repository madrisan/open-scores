Global = {
  \key b \minor
  \time 2/4
  \include "../global.ly"
}

top = \change Staff = "upper"
bottom = \change Staff = "lower"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  %1
  | b4^\sfp ( \stemDown cis16 ) d-. e-. fis-.
  | a-.-> g-. fis-. e-. g-.-> fis-. e-. d-.
  | \stemUp e4^\sfp ( \stemDown fis16 ) g-. a-. b-.
  | d-.-> cis-. b-. ais-. <fis b>[ ( d] ) b-.[ fis-.]
  %5
  | \stemUp b4^\sfp ( \stemDown cis16 ) d-. e-. fis-.
  | a-.-> g-. fis-. e-. g-.-> fis-. e-. d-.
  | \stemUp e4^\sfp ( \stemDown fis16 ) g-. a-. b-.
  | d-.-> cis-. b-. ais-. <fis b>[ ( d )] b-.[ fis-.]
    %\bar "||"
  \break
  \repeat volta 2 {
  | \stemUp g'4^\sfp ( \stemDown a,16 ) b-. cis-. d-.
  %10
  | fis-. e-. d-. c-. \stemUp b_. a_. g_. fis_.
  | g4^\sfp (fis16) g_. a_. b_.
  | d_. c_. b_. a_. g_. fis_. e_. dis_.
  | e4 (d16 e f g)
  | e4 \( f16 g a b
  %15
  | c4 \) <ais e'>4 ~
  | <ais e'>2
  | b4^\sf ( \stemDown cis16 ) d-. e-. fis-.
  | a-. g-. fis-. e-. g-. fis-. e-. d-.
  | \stemUp e4^\sf ( \stemDown fis16 ) g-. a-. b-.
  }
  %20
  \alternative {
    {
  |   d-. cis-. b-. ais-. <fis b>[_\sf ( d] ) b-.[ fis-.]
    }{
  |   \stemDown d''16-. cis-. b-. ais-. b4-.
    }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  %1
  | \once\override Beam.positions = #'(-4.5 . -6)
    \top\stemDown fis16 ( d ) \bottom\stemUp b-. fis-. s4
  | s2
  | \once\override Beam.positions = #'(-3.5 . -5)
    \top\stemDown b'16 (g) \bottom\stemUp e-. b-. s4
  | s2
  %5
  | \once\override Beam.positions = #'(-4.5 . -6)
    \top\stemDown fis'16 (d) \bottom\stemUp b-. fis-. s4
  | s2
  | \once\override Beam.positions = #'(-3 . -4.5)
    \top\stemDown b'16 (g) \bottom\stemUp e-. b-. s4
  | s2
  \repeat volta 2 {
  | \once\override Beam.positions = #'(-2.5 . -4)
    \top\stemDown d'16 (b) \bottom\stemUp g-. d-. s4
  %10
  | s2
  | \once\override Beam.positions = #'(-5.5 . -7)
    \top\stemDown e16 (b) \bottom\stemUp g-. e-. s4
  | s2
  | \once\override Beam.positions = #'(-6.2 . -7.4)
    \top\stemDown c'16 (g) \bottom\stemUp e-. c-.
    \top\stemDown d'8 b8
  | \once\override Beam.positions = #'(-6.2 . -7.4)
    \top\stemDown c16 (g) \bottom\stemUp e-. c-.
    \top\stemDown f'8 d8
  %15
  | \once\override Beam.positions = #'(-4 . -5)
    \top\stemDown g16[ ( e] ) \bottom\stemUp c-.[ g-.]
    \top\stemDown ais' ( e ) s8
  | s2
  | \once\override Beam.positions = #'(-4.5 . -5.5)
    fis16 (d) \bottom\stemUp b-.
    fis-. s4
  | s2
  | \once\override Beam.positions = #'(-3.2 . -4.5)
    \top\stemDown b'16 (g) \bottom\stemUp e-. b-.
    s4
  }
  %20
  \alternative {
    {
      s2
    }{
      s2
    }
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  %1
  | s2*14
  %15
  | s4 c8\rest gis16[( a]
  | ais[^\< b bis c] d[ dis e eis]\!)
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  %1
  | b16 r16 s8 b8^. <fis' d'>8^.
  | e8^.[ <b' e>^. b,^. <b' d>^.]
  | e,16 r16 s8 e8^. <e' g>^.
  | fis,8^. <e' ais>^. b16^. r16 s8
  %5
  | b,16 r16 s8 b8^. <fis' d'>8^.
  | e8^.[ <b' e>^. b,^. <b' d>^.]
  | e,16 r16 s8 e8^. <e' g>^.
  | fis,8^. <e' ais>^. b16^. r16 s8
  \repeat volta 2 {
  | b16 r16 s8 b8^. <d g>^.
  %10
  | a8^.[ <c g'>^. d,^. c'^.]
  | r8 s8 b,8^. <g' b>^.
  | a,8^.[ <fis' c'>^. b,^. <fis' a>^.]
  | r8 s8 <c, g'>4-> ~
  | <c g'> <c g'>-> ~
  %15
  | <c g'>8 s8 <fis fis'>4\sf ~
  | <fis fis'>2
  | r8 s8 b8^. <fis' d'>^.
  | e8^.[ <b' e>^. b,^. <b' d>^.]
  | e,16 r16 s8 e8^. <e' g>^.
  }
  %20
  \alternative {
    {
  |   fis,8^. <e' ais>^. b16^. r16 s8
    }{
  |   fis8^. <e' ais>8^. <b d b'>4^.
    }
  }
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
      \Sopran
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
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "3. Hasche-Mann" }
    subtitle = \markup {
             \column {
               \line { "(Catch Me)" }
               % workaround to insert some vertical space after the subtitle
               \line { " " }
             }
           }
  }
  \layout {}
  \midi {
    \tempo 4 = 138
  }
}
