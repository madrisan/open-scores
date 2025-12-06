Global = {
  \key g \major
  \time 2/4
  \include "../global.ly"
}

ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritardando " } }

top = \change Staff = "upper"
bottom = \change Staff = "lower"

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
  \repeat volta 2 {
  | <g b>4_\markup { \hspace #-0.3 \dynamic p } ( <a c>
  %10
  | <fis a> <g b> )
  | <e g> ( <e a>
  | <dis fis> <d! g>^\markup { \italic "ritard." } )
  | e ( fis^\markup { \italic "ritard." }
  | g8. a16 b8.\fermata c16 )
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

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  | s2*4
  | s4 g~
  | g s
  | s2*7
  %14
  | d2
  | s2*4
  %19
  | s4 g~
  | g s
  | s2
  %22
  | \omit TupletNumber
    \tuplet 3/2 { s8 b4~ } \tuplet 3/2 { \hideNotes b8 s4 \unHideNotes }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
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
      \bottom\stemUp\tieDown
      \shape #'((0 . 0.3) (0 . 0) (0 . 0) (0 . 0.3)) Tie
      g,8 d' \top\stemDown g
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
      \bottom\stemUp
      d,8
      \override Hairpin.self-alignment-Y = #4
      a'\<
      \top\stemDown
      d
    }
  | \tuplet 3/2 { \bottom\stemUp d,8 g \top\stemDown d' }
    \tuplet 3/2 { \bottom\stemUp g,,8 a' \top\stemDown d	\! }
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
  | \tuplet 3/2 { \bottom\stemUp d,8 b' \top\stemDown g' }
    \tuplet 3/2 { \bottom\stemUp b, b \top\stemDown g'\! }
  }
}

Bass = \context Voice = "four" \relative c' {
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
  | g r
    \override NoteColumn.force-hshift = #0.3
    b, a\rest
  | c
    \revert NoteColumn.force-hshift
    r e r
  | d\> r d r
  | g, r g' r\!
  }
  \repeat volta 2 {
  | e4\( a,
  %10
  | d8. c16 b4\)
  | c\( fis,
  | b8. a16 g4\)
  %<< {
  | c_\( c
  | \stemDown
    \once\override NoteColumn.force-hshift = #0.4 b8.
    a16 g4_\fermata\)
  %15
  | g'8 r cis, r
  | d r fis r
  | g r cis, r
  | d r fis r  
  | g r
    \override NoteColumn.force-hshift = #0.3
    b, a\rest
  %20
  | c
    \revert NoteColumn.force-hshift
    r e r  
  | d r fis r
  | \stemDown <g, d'>2 
  }
  \fine
}

forceBreaks = {
  % page 1
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 2 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 2 { s2\noBreak } s2\break\noPageBreak
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
    \new Devnull \forceBreaks
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Alto
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "1. Von fremden Ländern und Menschen" }
    subtitle = \markup {
             \column {
               \line { "(From foreign Lands and People)" }
               % workaround to insert some vertical space after the subtitle
               \line { " " }
             }
           }
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {}
}
