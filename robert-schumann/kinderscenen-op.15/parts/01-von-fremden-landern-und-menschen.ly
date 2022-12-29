\version "2.23.10"

#(ly:set-option 'relative-includes #t)

Global = {
  \key g \major
  \time 2/4
  \include "../global.ly"
}

ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritardando " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b4_\markup { \hspace #-0.3 \dynamic p } ( g'
  | fis8. e16 d4 )
  | b4 ( g'
  | fis8. e16 d4 )
  %5
  | b4 ( g'
  | e8. d16 c4
  | a4 d
  | b2 )
  }
  \break
  \repeat volta 2 {
  | <g b>4_\markup { \hspace #-0.3 \dynamic p } ( <a c>
  %10
  | <fis a> <g b> )
  | <e g> ( <e a>
  | <dis fis>_\markup { \italic "rit." } <d! g> ) \ritardando
  | e\startTextSpan ( fis
  | g8. a16\stopTextSpan b8.\fermata c16 )
  %15
  | d4\p ( g
  | fis8. e16 d4 )
  | b4 ( g'
  | fis8. e16 d4 )
  | b4 ( g'
  %20
  | e8. d16 c4
  | a d
  | b2 )
  }
  \fine
}

top = \change Staff = "upper"
bottom = \change Staff = "lower"

Tenor = \context Voice = "two" \relative c' {
  \voiceTwo
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \override TupletBracket.bracket-visibility = ##f
  \set tieWaitForNote = ##t
  \repeat volta 2 {
  %1
  | \override Beam.positions = #'(5 . 5.5)
    \stemUp
    \tuplet 3/2 { b8 d \top\stemDown g }
    \override Beam.positions = #'(5.5 . 6)
    \tuplet 3/2 { \bottom\stemUp bes,8 e \top\stemDown g }
    \override Beam.positions = #'(5 . 5.5)
  | \override TupletNumber.transparent = ##t
    \tuplet 3/2 { \bottom\stemUp a,8 d \top\stemDown fis }
    \tuplet 3/2 { \bottom\stemUp c!8 d \top\stemDown a' }
  | \tuplet 3/2 { \bottom\stemUp b,8 d \top\stemDown g }
    \override Beam.positions = #'(5.5 . 6)
    \tuplet 3/2 { \bottom\stemUp bes,8 e \top\stemDown g }
  | \override Beam.positions = #'(5 . 5.5)
    \tuplet 3/2 { \bottom\stemUp a,8 d \top\stemDown fis }
    \tuplet 3/2 { \bottom\stemUp c!8 d \top\stemDown a' }
    \break
  %5
  | \tuplet 3/2 { \bottom\stemUp b,8 d \top\stemDown g }
    \tuplet 3/2 {
      \bottom\stemUp
      \shape #'((0 . 0.3) (0 . 0) (0 . 0) (0 . 0.3)) Tie
      g,8~ d' \top\stemDown g
    }
  | \override Beam.positions = #'(5.5 . 6)
    \tuplet 3/2 { \bottom\stemUp g,8 e' \top\stemDown g }
    \override Beam.positions = #'(5 . 5.5)
    \tuplet 3/2 { \bottom\stemUp g,8 c \top\stemDown g' }
  | \tuplet 3/2 { \bottom\stemUp g,8 c \top\stemDown g' }
    \tuplet 3/2 { \bottom\stemUp fis,8 c' \top\stemDown fis }
  | \tuplet 3/2 { \bottom\stemUp d,8 b' \top\stemDown g' }
    \tuplet 3/2 { \bottom\stemUp g,8 b \top\stemDown g' }
  }
  \repeat volta 2 {
  | \override Beam.positions = #'(4.5 . 5)
    \tuplet 3/2 { \bottom\stemUp e,8 b' \top\stemDown e }
    \tuplet 3/2 { \bottom\stemUp a,,8 a' \top\stemDown e' }
  %10
  | \override Beam.positions = #'(4.2 . 4.6)
    \tuplet 3/2 { \bottom\stemUp d,8 a' \top\stemDown d }
    \override Beam.positions = #'(4 . 4.5)
    \tuplet 3/2 { \bottom\stemUp b,8 g' \top\stemDown d' }
  | \override Beam.positions = #'(3.8 . 4.3)
    \tuplet 3/2 { \bottom\stemUp c,8 g' \top\stemDown c }
    \override Beam.positions = #'(3.6 . 4.1)
    \tuplet 3/2 { \bottom\stemUp fis,,8 fis' \top\stemDown c' }
  | \override Beam.positions = #'(3.4 . 3.8)
    \tuplet 3/2 { \bottom\stemUp b,8 fis' \top\stemDown b }
    \tuplet 3/2 { \bottom\stemUp g,8 g' \top\stemDown b }
  | \tuplet 3/2 { \bottom\stemUp c,8 g' \top\stemDown c }
    \override Beam.positions = #'(3.8 . 4.2)
    \tuplet 3/2 {
      \bottom\stemUp d,8 a'
      \top\stemDown
      \override Hairpin.self-alignment-Y = #17.2
      d\<
    }
  | \tuplet 3/2 { \bottom\stemUp d,8 g \top\stemDown d' }
    \bottom\stemUp g,,8 \top\stemDown d''\!
  %15
  | \override Beam.positions = #'(5 . 5.5)
    \tuplet 3/2 { \bottom\stemUp b8 d \top\stemDown g }
    \override Beam.positions = #'(5.2 . 6)
    \tuplet 3/2 { \bottom\stemUp bes,8 e \top\stemDown g }
  | \override Beam.positions = #'(5.1 . 5.6)
    \tuplet 3/2 { \bottom\stemUp a,8 d \top\stemDown fis }
    \tuplet 3/2 { \bottom\stemUp c!8 d \top\stemDown a' }
    \break
  | \tuplet 3/2 { \bottom\stemUp b,8 d \top\stemDown g }
    \tuplet 3/2 { \bottom\stemUp bes,8 e \top\stemDown g }
  | \tuplet 3/2 { \bottom\stemUp a,8 d \top\stemDown fis }
    \tuplet 3/2 { \bottom\stemUp c!8 d \top\stemDown a' }
  | \tuplet 3/2 { \bottom\stemUp b,8 d \top\stemDown g }
    \tuplet 3/2 { \bottom\stemUp g,8 d' \top\stemDown g }
    \break
  %20
  | \tuplet 3/2 { \bottom\stemUp g,8 e' \top\stemDown g }
    \override Hairpin.self-alignment-Y = #5
    \tuplet 3/2 { \bottom\stemUp g,8\> c \top\stemDown g' }
  | \tuplet 3/2 { \bottom\stemUp g,8 c \top\stemDown g' }
    \tuplet 3/2 { \bottom\stemUp fis,8 c' \top\stemDown fis }
  | \bottom\stemUp d,8 \top\stemDown g'
    s4\!
  }
}

Bass = \context Voice = "three" \relative c' {
  \voiceFour
  \override Rest.staff-position = #0
  \slurUp
  \repeat volta 2 {
  %1
  | g8 r cis, r
  | d r fis r
  | g r cis, r
  | d r fis r
  %5
  | g r b, a\rest
  | c r e r
  | d\> r d r\!
  | g, r g' r
  }
  \repeat volta 2 {
  | e4 a,
  %10
  | d8. c16 b4
  | c fis,
  | b8. a16 g4
  | c c
  | << {
      \stemDown b8. a16 g4_\fermata
    } \\ {
      \once\override NoteColumn.force-hshift = #1.8
      d'2
    } \\ {
      s4
      \stemDown
      \once\override NoteColumn.force-hshift = #1.4
      a'
    } >>
  %15
  | g8 r cis, r
  | d r fis r
  | g r cis, r
  | d r fis r
  | g r b, r
  %20
  | c r e\> r
  | d r fis r
  | << {
      \stemDown <g, d'>2
    } \\ {
      \override TupletNumber.transparent = ##t
      \once\override NoteColumn.force-hshift = #1.2
      b'4^~
      \override Beam.positions = #'(5 . 5.4)
      \tuplet 3/2 { \bottom\stemUp b8 b \top\stemDown g'\! }
    } >>
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
    title = \markup { "1. Von fremden Ländern und Menschen" }
    % workaround to insert some vertical space after the subtitle
    subtitle = \markup {
             \column {
               \line { "(From foreign Lands and People)" }
               \line { " " }
             }
           }
  }
  \layout {}
  \midi {}
}
