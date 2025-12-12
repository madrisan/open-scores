Global = {
  \key f \major
  \time 2/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 8
  \once\stemDown c8(
  %1
  | f4 e8 ees
  | d[ e! f g])
  | \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) Slur
    c,4.( \stemDown bes8
  | \stemUp a4) r8 c
  %5
  | c[( f e ees]
  | d[ e! f g])
  | \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) Slur
    c,4.( \stemDown bes8
  | \stemUp a4) r8 c
  %\bar "||"
  \repeat volta 2 {
  | << { c8[( g a bes^>] } \\ {} >>
  %10
  | << { d[) d,( e fis] } \\ {
      \mergeDifferentlyDottedOn
      d'4. s8
    } >>
  | << { g,[ bes d\! d,] } \\ {} >>
  | << { g4) r8 bes( } \\ {} >>
  | << { d[ a bes c^>] } \\ {} >>
  | << {
      e[) e,( fis gis]
    } \\ {
      \mergeDifferentlyDottedOn
      e'4. s8
    } >>
    \break\noPageBreak
  %15
  | << { a,[ c e e,~] } \\ {} >>
  | << { e8 <c a'>4) <bes! g'!>8^> } \\ {} >>
  | f'4\( e8 ees\)
  | d'[\(  e! f g]
  | \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) Slur
    c,4.\stemDown bes8
  %20
  | \stemUp a4\) c8\rest c\(
  | c[ f e ees]
  | d[ e! f_\markup { \hspace #0.5 "rit." } g]
  | a4 g
  }
  \alternative {
    \volta 1 {
  |   f4\) e8\rest c
    }
    \volta 2 {
  |   \once\override RepeatTie.extra-offset = #'(0 . 0.3)
      f4\repeatTie f8\rest <f, c'>
    }
  }
  %25
  |   <f d'>_>[_( <e c'>) <f d'>_>_( <e c'>)]
  |   c'8( bes4 a8
  |   g4 a
  |   f4.) \clef bass \stemNeutral <f, c'>8
  |   <f d'>^>[( <e c'>) <f d'>^>( <e c'>)]
  %30
  |   \stemUp c'8( bes4 a8
  |   g4 a
  |   f2)\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 8
  s8
  %1
  | e8\rest <f c'>4 f8
  | e8\rest f4 8
  | e8\rest
    << {
      \stemDown c4
      \once\override NoteColumn.force-hshift = #0.4 8
    } \\ {
      \stemUp\override Beam.positions = #'(1.4 . 2.0)
      g'8[ a bes]
      \revert Beam.positions
    } >>
  | c,8\rest <c f>4 c8\rest
  %5
  | c8\rest f4 8
  | c8\rest f4 8
  | e8\rest
    << {
      \stemDown c4
      \once\override NoteColumn.force-hshift = #0.4 8
    } \\ {
      \stemUp\override Beam.positions = #'(1.4 . 2.0)
      g'8[ a bes]
      \revert Beam.positions
    } >>
  | c,8\rest <c f>4 c8\rest
  | c8\rest c4 c8
  %10
  | a8\rest d4( c8
  | bes) b\rest b\rest c
  | b\rest <bes d>4 b8\rest
  | b\rest fis'4.
  | s8 e4(_> d8
  %15
  | c) c\rest c\rest d~
  | d8 s4.
  | b8\rest <f c'>4\sf f8
  | b\rest f'4 8
  | e8\rest
    << {
      \stemDown c4
      \once\override NoteColumn.force-hshift = #0.4 8
    } \\ {
      \stemUp\override Beam.positions = #'(1.4 . 2.0)
      g'8[ a bes]
      \revert Beam.positions
    } >>
  %20
  | c,8\rest <c f>4 c8\rest
  | c\rest f4 ees8
  | c\rest f4 <f g d'>8\arpeggio
  | g\rest <a c>4 <g c>8
  | g\rest <f c'>4 e8\rest
  %25
  | g\rest <f c'>4 s8
  | s2
  | ees8[ d des c]
  | d!4 e!
  | c4. s8
  %30
  | s2
  | ees,8[ d des c]
  | d!4 e!
  | c2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \tieUp
  \partial 8
  s8
  %1
  | s8 <c a'>4 <c a'>8
  | f8\rest \stemUp <d bes'>[ g, <d' bes'>]
  | c8\rest e4 8
  | c8\rest <a f'>4 <a f'>8
  %5
  | c8\rest <c a'>4 <c f>8
  | f8\rest \stemUp <d bes'>[ g, <d' bes'>]
  | c8\rest e4 8
  | c8\rest c4 f8
  | c\rest <bes e>4 8
  %10
  | c\rest d4^> 8
  | c\rest <g d'~>4^> <fis d'>8
  | c'\rest <g d'>4 <g d'>8
  | c\rest d4^>( c8)
  | c\rest <b! d>4^> b8
  %15
  | c\rest <a e'~>4^> \once\tieNeutral <gis e'>8~
  | q <a e'>4 <e c'>8
  | f\rest <c a'>4 <c a'>8
  | g'\rest <d bes'>4 <bes' d>8
  | a\rest e'4 8
  %20
  | d\rest <a c>4 <a f'>8
  | d\rest <c a'>4 <c f>8
  | f\rest <d bes'>4 <b! d b'!>8\arpeggio
  | g'\rest <f a>4 <e bes'>8
  | d\rest <c a'>4 <c a'>8
  %25
  | d\rest <c a'>4 <c a'>8
  | s2
  | e8\rest f4.~
  | f4 c
  | a4. a8
  %30
  | s2
  | g8\rest f4.~
  | f4^\markup {
      \pad-markup #0.5 "ritardando"
    } c
  | a2^\fermata
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 8
  r8
  %1
  | f s4.
  | bes2
  | c,8[ bes'( a g]
  | f) s4.
  %5
  | f4 a
  | bes2
  | c,8[ bes'( a g]
  | f8) a4 a8
  %\bar "||"
  \repeat volta 2 {
  | c,2
  %10
  | c2
  | c4 4
  | c2
  | c2
  | c2
  %15
  | c4 4
  | c4_\markup { \hspace #1 "rit." } 4
  | f,2
  | bes4 g
  | c8 bes'[( a g]
  %20
  | f4) r4
  | f a
  | bes g
  | c c
  | f, r
  }
  %25
  | f4 r8 s8
  | <b! aes'>^>[^( <c g'>) <b aes'>^>^( <c g'>)]
  | a![( bes g a]
  | bes[ g c bes]
  | a f c4)
  %30
  | <b! aes'>8^>[( <c g'>) <b aes'>^>( <c g'>)]
  | a!( [ bes g a]
  | bes[ g c c,]
  | f c f,4)\fermata
  \fine
}

centerDynamics = {
  \partial 8
    s8-\markup { \hspace #-0.2 \dynamic p }
  %1
  | s2*8
  | s8-\markup { \hspace #-0.4 \dynamic mf } s4.
  %10
  | s8 s8 s8 s8\<
  | s8 s8 s8\! s8
  | s2*6
  | s8-\markup { \hspace #-0.1 \dynamic p } s4.
  | s2*12
  | s8\> s8 s8 s8
  | s8 s8 s8\! s8
}

forceBreaks = {
  % page 1
  \partial 8 s8
  | \repeat unfold 5 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 6 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 6 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 5 { s2\noBreak } s2\break\noPageBreak
  %| \repeat unfold 6 { s2\noBreak } s2\break\noPageBreak
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
    \new Devnull \forceBreaks
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
    title = \markup { "8. Am Kamin" }
    subtitle = \markup {
      \column {
        \line { "(By the Fireside)" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override TextScript.font-shape = #'italic
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 138
  }
}
