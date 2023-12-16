Global = {
  \key f \major
  \time 3/2
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurUp\tieUp
  \tempo \markup { \bold Andante con moto }
  %1
  | f4.(\(^\markup { "ben marcata la melodia" } e8_~) e d f a c4^( bes)\)
  | bes4.\( a8~ a g bes d a'4 g\)
  | a8(\( g4 f8) a( g4 f8) g( fis4 f8)
  | f ees4^^ bes8 d\rest c4 cis8~ cis d dis e\)
  %5
  | s2 bes <d f>
  | <des f> d \ottava #1 bes'
  | d4 des d des r8 <f, bes>4. \ottava #0
  | f2 des bes4 e
  | s2 f s
  %10
  | r8 cis4. s2 r8 a4.
  | r8 d4. r8 d4. f2
  | s1.
  | s1.
    \bar "||"
  | f,4.\( e8_~ e d f a c4 bes\)
  %15
  | \tieNeutral <des, des'>4.\( <c c'>8~ q <bes bes'> <des des'> <f f'> <aes aes'>4 <g g'>\)
  | aes'8( g4 g8 c^^ bes4 aes8) aes( g4 g8
  | c^^ bes4 aes8) s1
  | \shape #'((0 . 1.5) (0 . 0) (0 . 0.0) (-0.4 . 1.5)) Slur
    ges8( f4 f8 bes aes4 ges8) ges( f4 f8
  | bes aes4 ges8) s2 bes,4 ges
  %20
  | \numericTimeSignature \time 2/2 <ces, bes'>4( <c aes'> s2
  | \time 3/2 <des f des'>2) des' s
  | r8 a4. s2 r8 bes4.
  | r8 g4. r8 g4. <a d! a'>4 q\arpeggio
  | \stemNeutral <a b d a'>2 <d, b' d> <e b' e>
  %25
  | <fis cis' fis> <b, g' b> <cis g' cis!>
  | \time 1/2 <d g d'>~
  | \time 3/2 <d d'>1 <g bes>2
  | \stemUp <d d'>1^^ cis'2
  | a bes <d f>
  %30
  | f4 e f e f e
  | \ottava #1 a2 a s2
  | s1.
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\tieNeutral
  \mergeDifferentlyHeadedOn
  %1
  | s1 <d f>2
  | des d <bes' d>
  | d4 des d des des bes~
  | <g bes>4 ees g2_~ g8 <e g> <g c>4
  %5
  | r8 <f f'>4^\( <e e'>8~ q <d d'> <f f'> <a a'> <c c'>4 <b b'>\)
  | \phrasingSlurUp
    g8\rest <bes bes'>4\( <a a'>8~ q <g g'> <bes bes'> <d d'> \ottava #1 <a' a'>4 <g g'>\)
  | \slurUp <a a'>8(\( <g g'>4 <f f'>8) <a a'>8^( <g g'>4 <f f'>8) s8 <ees ees'>4( <d d'>8)
  | <c c'> <bes bes'> <c c'> <bes bes'> <aes aes'> <g g'> <aes aes'> <g g'> <f f'>[ <e e'>]
    \tuplet 3/2 { <a a'> <g g'> <f f'> }
  | \omit TupletBracket
    <f a f'>2\) <c' c'>4_\( q \tupletUp\tuplet 3/2 { <c d f c'>^^( <f, des' f> <g g'>) }
  %10
  | s8 <a a'>4 q8 \tuplet 3/2 { <a bes d a'>4^^( <d, bes' d> <e e'>)\) } s8 <f f'>(_\( <e e'> <f f'>)
  | s8 <g g'>( <f f'> <g g'>) s <aes aes'>( <g g'> <aes aes'>)\) <c c'>4\( q
  | <c d f c'>2 <f, d' f> <g d' g>
  | <a cis a'>1.\)
  | s1 <des, f>2
  %15
  | s2 <des f> des'
  | d4 des des2 d4 des
  | des2 <bes c g'>~( <aes c f>4 <ces ees>)
  | c ces ces!2 c4 ces
  | ces2 <aes bes f'>( <ges ees'>8 <f des'> <ees c'> <des bes'>)
  %20
  | ges2 c,8 ges' aes ees'
  | s2 <aes, aes'>4\( q \tuplet 3/2 { <aes bes des aes'>( <d, beses' d> <ees ees'>)\) }
  | s8 <f f'>4 q8 \tuplet 3/2 { <f g! bes f'>4( <bes, ges' bes> <c c'>) } s8 <des des'>( <c c'> <des des'>)
  | s8 <dis dis'>( <cis cis'> <dis dis'>) s8 <e e'> <dis dis'> <e e'> d\rest fis_^ eis_^ fis_^
  | s1.*2
  %26
  | \hideNotes
    \shape #'((0 . 0.2) (0 . 0) (0 . 0.2) (0 . 0.4)) Tie
    \once\override NoteColumn.force-hshift = #1.2 g2_~
    \unHideNotes
  | \once\override NoteColumn.force-hshift = #1.8 g8 bes4 a8~ a g bes d <f, f'>4 <ees ees'>
  | g8\rest bes4 a8~ a g bes d <a a'>4 <g g'>
  | <f f'>4. <e e'>8~ q <d d'> <f f'> <a a'> <c c'>4 <bes bes'>
  %30
  | <c c'>8(_\( <bes bes'>4 <a a'>8) <c c'>8( <bes bes'>4 <a a'>8) <c c'>8( <bes bes'>4 <a a'>8)\)
  | \ottava #1 <f' f'>4. <e e'>8~ q <d d'> <f f'> <a a'> <f' a f'>2~
  | q1.^\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  %1
  | s1.*19
  | s1
  | s1.*5
  | s2
  | s1.*3
  | g'2 g g
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \omit TupletBracket
  %1
  | r8 a'( d, a~) a f( d g,~) g d' f bes
  | f' g, f bes, \tupletUp\tuplet 3/2 { bes'4( g f) } g8 d' f bes
  | \repeat unfold 2 { f bes,( f bes,) } bes'' e, bes g
  | a,, a' g' bes ees bes a ees a, bes' a bes'~
  %5
  | bes a d, a d g, d g,~ g g' d' f
  | f bes, f bes, f' bes d f \clef treble <e bes' d>
    \once\override Score.Clef.X-extent = #'(-0.5 . 2) \clef bass g, c, c,
  | \repeat unfold 2 { bes''' f bes, f } bes, f' bes f'
  | \clef treble des' f, des f, \clef bass f' bes, f bes, \stemDown c, c' bes' c
  | \stemNeutral f,, c' a' c~ c a' c, f, bes,, bes' f' bes
  %10
  | cis f, cis g g, g' cis bes' a d, a d,
  | \stemDown bes'' d, bes d, ces'' f, des des, <c'' a'> a c, c,
  | d'' f, bes, bes, d'' f, bes, bes, d'' e, bes bes,
  | \stemNeutral cis'' e, a, a,~ a e' a cis e a \staffUpper cis e
    \bar "||"
  | \staffLower r8 a d, a~ a f d g,~ g des' f bes
  %15
  | r8 f' bes, f~ f bes, f bes, <bes'' e> bes' bes, bes,
  | f''( bes, f bes, e' bes e, bes) f''( bes, f bes,
  | e' bes e, bes) aes( e' f c'~ c f, ees' aes,)
  | ees'( aes, ees aes, d' aes d, aes) ees''( aes, ees aes,
  | d' aes d, aes) ges( d' ees bes' ees, bes ees, ges')
  %20
  | \numericTimeSignature \time 2/2 aes,,8_( aes' ees' aes r2*1/2
    \staffUpper \hideNotes s8
    \once\omit Flag \once\omit Stem \once\override NoteColumn.force-hshift = #0 ees'')
    \staffLower \unHideNotes
  | \time 3/2 des,,,,8 des' aes' f' aes f' aes, des, ges,, ges' des' ges
  | a ees a, ees ees, ees' a ges' f bes, f bes,
  | g'' cis, a! a,! bes'' cis, a a, a''! d, a a,
  | b'' d, g, g, b'' d, g, g,  b'' cis, g g,
  %25
  | ais'' cis, fis, fis, g'' b, e, e, g'' bes, ees, ees,
  | \time 1/2 g''_^ bes, d, d,
  | f''_^ bes, d, d, e''_^ bes d, d, <cis'' g' bes>_^ bes d, d,
  | <bes''' g'>^^ g d d, <bes'' f'>^^ g d d, <bes'' ees>^^ g d d,_~
  | \stemDown <d, d'> a'''' d, a d g, d g,~ g d' g d'
  %30
  | \clef treble \repeat unfold 3 { d4 <g, cis> }
  | \stemNeutral \clef bass r8 d, d' a' \clef treble f'4 a <d a'>2~
  | q1.^\fermata
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-1 \dynamic pp "legato" } s4
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
    composer = ##f % "Karol Szymanowski"
    opus = ##f % "Op. 1"
    title = \markup { \smallCaps "Prelude II" }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi { \tempo 4=80 }
}
