Global = {
  \key b \minor
  \time 2/4
  \include "../global.ly"
}

pocopococrescendo = {
  \override TextSpanner.bound-details.left.text = \markup {
    \hspace #1.6 \small "poco  a  poco  crescendo "
  }
}
ralldim = {
  \override TextSpanner.bound-details.left.text = \markup {
    \hspace #1 \small "rall. e dim. "
  }
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \tempo \markup { Andante ma non troppo }
  %1
  | R1*2/4*3
  | r4 fis~\(^\markup {
      \column {
        \general-align #Y #1
        "dolce cantando" "ten."
      }
    }
  %5
  | fis8 b, cis d
  | b'2^\markup { "ten." }
  | a4 b
  | g2
  | g,\)
  %10
  | e(
  | fis)
  | e(
    \noBreak
  | \slashedGrace g8 fis2)
  | e(
  %15
  | b
  | cis
  | <fis fis'>)
  | r4
    \once\shape #'((0 . -1) (0 . 1) (0 . 0.4) (0 . 0)) PhrasingSlur
    <fis fis'>~\(
  | q8 <b, b'> <cis cis'> <d d'>
  %20
  | \once\override TextScript.outside-staff-priority = ##f
    <b' b'>2^\markup { \raise #1.8 "ten." }
  | <a a'>4 <b b'>
  | <g g'>8^- <fis fis'>^- <e e'>^- <fis fis'>^-
  | <b, b'>2\)
  | <e e'>~^\markup { "ten." }
  %25
  | q
  | \slurUp <d d'>4( <e e'>
  | <c c'>2)
  | <d d'>4( \once\stemUp \slashedGrace f'8 <e, e'>4
  | <d d'>2)
  %30
  | <a a'>4( <b b'>
    \noBreak
  | <gis gis'>2)
  | <a a'>4( \once\stemUp \slashedGrace cis'8 <b, b'>4
  | <gis gis'>2~
  | q~
  %35
  | q4 <e' e'>)
    \break
  | r4^\markup { "poco agitato" } <e e'>~_^(
  | q8 <a, a'> <b b'> <c c'>)
  | <aes' c aes'>2~^^(
  | q8 <f, c' f>8 <g g'> <aes aes'>)
  %40
  | <b' dis b'>2~^^(
  | q8 <gis, dis' gis> <ais ais'> <b b'>)
  | <d'! fis d'!>2~^^
  | q8 <b, fis' b>8 <cis cis'> <d d'>
  | <b' d b'>2^\markup { \hspace #-1.5 "(poco meno mosso)" }
  %45
  | \stemUp d
  | \once\override NoteColumn.force-hshift = #0.8 b
  | <b, eis b'>
  | <cis g' cis>
  | <cis cis'>4 <d d'>_\markup { \hspace #-1 "rall." }
  %50
  | \stemNeutral <b fis' b>2^\markup { \hspace #-1.5 "a tempo" }
  | <a a'>4 <b b'>~
  | q2
  | \slurDown e(
  | fis)
  %51
  | e(
  | \once\stemUp \slashedGrace g8 fis2)
  | <fis, b dis fis>
  | q~
  | q\ppp\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyHeadedOn
  %1
  | s2*38
  | s8
    \once\omit Flag \once\omit Stem \hideNotes
    \once\override NoteColumn.force-hshift = #1 c^~
    \unHideNotes c4
  %40
  | s2
  | s8
    \once\omit Flag \once\omit Stem \hideNotes
    \once\override NoteColumn.force-hshift = #1 dis^~
    \unHideNotes dis4
  | s2
  | s8
    \once\omit Flag \once\omit Stem \hideNotes
    \once\override NoteColumn.force-hshift = #-0.2 fis~
    \unHideNotes fis4
  | s2
  %45
  | <a a'>4 <b b'>
  | <g g'>8 <fis fis'> <e e'> <fis fis'>
  | s2*2
  | g2
  %50
  | \once\omit Stem \hideNotes
    \once\override NoteColumn.force-hshift = #0.5 fis~
  | \unHideNotes fis
  | fis_^
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  %1
  | s2*30
  | b4~ b8 c\rest
  | s2
  | \repeat unfold 3 { b4~ b8 c\rest }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  %1
  | \tuplet 3/2 { fis8( b, ais } \tuplet 3/2 { b fis b,) }
  | \tuplet 3/2 { d'( b ais } \tuplet 3/2 { b fis b,) }
  | \omit TupletBracket \omit TupletNumber
    \tuplet 3/2 { fis''( b, ais } \tuplet 3/2 { b fis b,) }
  | \tuplet 3/2 { d'( b ais } \tuplet 3/2 { b fis b,) }
  %5
  | \tuplet 3/2 { fis''( b, ais } \tuplet 3/2 { b fis a,) }
  | \tuplet 3/2 { g''( b, ais } \tuplet 3/2 { b d, g,) }
  | \tuplet 3/2 { fis''( b, ais } \tuplet 3/2 { b d, fis,) }
  | \tuplet 3/2 { e''( g, fis } \tuplet 3/2 { g b, e,) }
  | \tuplet 3/2 { b''( e, dis^\markup { "rit." } } \tuplet 3/2 { e g, e,) }
  %10
  | \tuplet 3/2 { d'''( g, fis } \tuplet 3/2 { g b, e,) }
  | \tuplet 3/2 { d''( g, fis } \tuplet 3/2 { g e b) }
  | \tuplet 3/2 { d'( g, fis } \tuplet 3/2 { g b, e,) }
  | \tuplet 3/2 { d''( g, fis } \tuplet 3/2 { g e ais,) }
  | \tuplet 3/2 { g'( cis, bis } \tuplet 3/2 { d cis e,) }
  %15
  | \tuplet 3/2 { g'( cis, bis } \tuplet 3/2 { cis g cis,) }
  | \tuplet 3/2 { ais''( cis, bis } \tuplet 3/2 { cis fis, fis,) }
  | \tuplet 3/2 { r b''( gisis } \tuplet 3/2 { ais cis, fis,) }
  | \tuplet 3/2 { b, d''( eis, } \tuplet 3/2 { fis b, fis) }
  | \tuplet 3/2 { a, d''( eis, } \tuplet 3/2 { fis b, fis) }
  %20
  | \tuplet 3/2 { g, d'''( fis, } \tuplet 3/2 { g b, d,) }
  | \tuplet 3/2 { fis, d'''( eis, } \tuplet 3/2 { fis b, d,) }
  | \once\override Beam.damping = #-2
    \tuplet 3/2 { e, e'''( fis, } \tuplet 3/2 { g b, e,) }
  | \tuplet 3/2 { d d''( eis, } \tuplet 3/2 { fis b, d,) }
  | \tuplet 3/2 { <g' c g'>( c, b } \tuplet 3/2 { c g c,) }
  %25
  | \tuplet 3/2 { <g'' e'>( g fis } \tuplet 3/2 { g g, c,) }
  | \repeat unfold 2 {
      \tuplet 3/2 { <bes'' e>( g fis } \tuplet 3/2 { g c, c,) }
  }
  | \tuplet 3/2 { <bes'' e>( g fis } \tuplet 3/2 { g c, c,) }
  | \tuplet 3/2 { <bes'' e>( a fis } \tuplet 3/2 { a gis b,) }
  %30
  | \tuplet 3/2 { <fis' b>( d cis } \tuplet 3/2 { d b fis) }
  | \tuplet 3/2 { fis'_( e dis } \once\stemDown \tuplet 3/2 { fis e e,) }
  | \tuplet 3/2 { <fis' b>( d cis } \tuplet 3/2 { d b fis) }
  | \stemDown
    \tuplet 3/2 { fis'_( e dis } \tuplet 3/2 { fis e e,) }
  | \tuplet 3/2 { fis'_( e dis } \tuplet 3/2 { e b e,) }
  %35
  | \tuplet 3/2 { f'_( e dis } \tuplet 3/2 { e b e,) }
  | \stemNeutral \tuplet 3/2 { <e' c'>( a, gis } \tuplet 3/2 { a e a,) }
  | \tuplet 3/2 { <e'' c'>( a, gis } \tuplet 3/2 { a e g,) }
  | \tuplet 3/2 { <f'' c'>( c b } \tuplet 3/2 { c f, f,) }
  | \tuplet 3/2 { <c'' aes'>( f, e } \tuplet 3/2 { f c f,) }
  %40
  | \tuplet 3/2 { <gis'' dis'>( b, ais } \tuplet 3/2 { b dis, gis,) }
  | \tuplet 3/2 { <dis'' b'>( gis, fisis } \tuplet 3/2 { gis dis gis,) }
  | \tuplet 3/2 { <b'' fis'>( d, cis } \tuplet 3/2 { d fis, b,) }
  | \tuplet 3/2 { <fis'' d'>( b, ais } \tuplet 3/2 { b fis b,) }
  | \tuplet 3/2 { <g'' d'>( d cis } \tuplet 3/2 { d g, g,) }
  %45
  | \tuplet 3/2 { <a'' fis'>( d, cis } \tuplet 3/2 { d d, d,) }
  | \tuplet 3/2 { <b''' e>( e, dis } \tuplet 3/2 { e g, e,) }
  | \tuplet 3/2 { <gis'' cis>( cis, bis } \tuplet 3/2 { cis cis, cis,) }
  | \tuplet 3/2 { <e'' b'>( fis, eis } \once\undo\omit TupletNumber \once\tupletUp\tuplet 2/2 { fis fis,) }
  | \tuplet 3/2 { <e'' ais>( fis, eis } \once\undo\omit TupletNumber \once\tupletUp\tuplet 2/2 { fis fis,) }
  %50
  | \tuplet 3/2 { <fis'' d'>( b, ais } \tuplet 3/2 { b fis b,) }
  | \tuplet 3/2 { <fis'' cis'>( b, ais } \tuplet 3/2 { b fis b,) }
  | \tuplet 3/2 { <fis'' d'>( b, ais } \tuplet 3/2 { b fis b,) }
  | \undo\omit TupletNumber \tuplet 5/4 { <g'' d'>( b, ais b e,) }
  | \omit TupletNumber
    \repeat unfold 2 { \tuplet 5/4 { <g' d'>( e dis e b) } }
  %55
  | \tuplet 5/4 { <e ais cis>( g eis fis fis,) }
  | \repeat unfold 2 { \tuplet 5/4 { r8 b( ais b b,) } }
  | b,2\fermata
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-1 \dynamic pp "legato" } s4
  | s2*2
  | s4 s\p\<
  %5
  | s \tuplet 3/2 { s8 s s\! }
  | s2
  | s4\> s
  | s2
  | s16 s\! s4.
  %10
  | s16 s\pp\< s4.
  | s16 s\! s4.
  | s4\< s
  | s16 s\! s4.
  | s2\>
  %15
  | s2
  | \tuplet 3/2 { s8 s s\! } s4
  | s4\< s
  | \tuplet 3/2 { s8\! s s^\markup { "più" \dynamic f } } s4\<
  | s2
  %20
  | s2\!^\markup { "cresc." }
  | s4\> s
  | s16\!^\markup { "dim." } s8. s8^\markup { "riten." } s
  | s2
  | s16 s\ppp s8 s4
  %25
  | s2
  | s16-\markup { "dolce" }\< s8. \tuplet 3/2 { s8 s s\! }
  | s4\> s
  | s\!\< s
  | \tuplet 3/2 { s8\!\> s^\markup { "rall." } s } s4
  %30
  | s\!-\markup { "più" \dynamic p } s
  | s\> s
  | s\!\< s
  | s\!\< s
  | s\!\< s
  %35
  | s s\!
  | s \pocopococrescendo s_\startTextSpan
  | s2*3
  %40
  | \tuplet 3/2 { s8 s s } \tuplet 3/2 { s s s }_\stopTextSpan
  | s2
  | s4\< s
  | s8 s\! s4
  | s32 s16.\ff s4.
  %45
  | s2
  | s4 s-\markup { "rall." }
  | s2
  | s4\> s
  | s s\!
  %50
  | s32 s16.\p s8 s4\>
  | s2
  | s4\! s-\markup { \hspace #-1 "rit." }
  | s16 s\pp s8\< s16 s s s\!
  | s2
  %55
  | s16\< s s8 s16 s s s\!
  | \ralldim s4^\startTextSpan s
  | s4 s
  | s s8 s_\stopTextSpan
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
    title = "Prelude I"
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
  \midi { \tempo 4=60 }
}
