Global = {
  \key c \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieNeutral
  \tempo \markup { Lento - Mesto }
  \partial 8
    s8
  %1
  | s4. \omit Flag \omit Stem
    \once\override PhrasingSlur.outside-staff-priority = #300
    b4\(^\markup { "legato" } c8 \undo\omit Flag \undo\omit Stem
  | gis'8 a4 b c8
  | b8[( a fisis gis)] e[( d
  | cis d)] c[( b ais b)]
  %5
  | a gis4 a8 g[\arpeggio f]\)
  | <gis, gis'>4.^\markup { "a tempo" }\( <a a'>8 <ais ais'>[ <b b'>]
  | <cis cis'>4. <c c'>8~ \tuplet 3/2 { <c c'>8 <bes bes'> <a a'>~ }
  | q8\)\( <gis gis'>4 <a a'>8 \tuplet 3/2 { <ais ais'>8 <b b'> <cis cis'>~ }
  | \omit TupletNumber
    \tuplet 3/2 { q[ <d d'>8. <dis dis'>16] } q8 <cis cis'> \tuplet 3/2 { <c c'> <bes bes'> <a a'> }
  %10
  | <g g'!>4 <gis gis'>4.\) r8
  | r4^\markup { "a tempo" } r8 \omit Flag \omit Stem b4\( c8 \undo\omit Flag \undo\omit Stem
  | gis'8 a4 b c8
  | b8[( a fisis gis)] e[( d
  | cis d)] \clef bass c( b ais b)
    %\break
  %15
  | a gis4 a8 d4\arpeggio(
  | \clef treble d8) e4 f8 g[ f]\)
  | <gis, gis'>4.^\markup { "a tempo" }\( <a a'>8 <ais ais'>[ <b b'>]\)
  | <gis gis'>4.\( <a a'>8 \tuplet 3/2 { <ais ais'>8 <c c'> <b b'> }\)
  | <ais ais'>4.\( <b b'>8 <bis bis'>[ <cis cis'>]\)
  %20
  | <ais ais'>4.\( <b b'>8 \tuplet 3/2 { <bis bis'> <d d'> <cis cis'>\) }
  | <bis bis'>4.\( <cis cis'>8 \tuplet 3/2 { <cisis cisis'> <e e'> <dis dis'>\) }
  | \stemNeutral <d d'>4.\( <ees ees'>8 \tuplet 3/2 { <e e'> <ges ges'> <f! f'!>\) }
  | \tuplet 3/2 { <ges ges'>\( <bes bes'> <aes aes'> } \tuplet 3/2 { <bes bes'> <des des'> <ces ces'> }
    \tuplet 3/2 { <des des'> <ges! ges'> <e! e'!> }
  | <e e'>2.\)
    %\break
  %25
  | \once\shape #'((0 . 2) (0 . 0) (0 . 0) (-0.5 . 2)) PhrasingSlur
    <cis, cis'>4.^\sf\( <c c'>8~ \tuplet 3/2 { q <bes bes'> <a a'>~ }
  | \once\shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 2) (0 . 1.5) (0 . 1.5) (0 . 1.5))
    ) PhrasingSlur
    q\)\( <gis gis'>4 <a a'>8 \tuplet 3/2 { <ais ais'> <b b'> <cis cis'>~ }
  | \tuplet 3/2 { q <d d'>8. <dis dis'>16 } <dis dis'>8 <cis cis'>
    \tuplet 3/2 { <c c'> <bes bes'> <a a'>~ }
  | \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 1)) PhrasingSlur
    <a a'>8\)\( <gis gis'>4 <a a'>8
    \stemUp \tuplet 5/4 { <ais ais'>16 <b b'> <cis cis'> <d d'>16. <d' d'>32 }
  | \once\stemDown <d d'>4 gis,( b8. a16)\)
  %30
  | <a, a'>8\( <b b'>4 <c c'>8 <e e'>[ <f f'>]
  | \stemDown <gis gis'> <a a'> <b b'>[ <c c'>] <dis dis'> <e e'>\)
  | <e a e'>2.\fermata
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  \partial 8
    r8
  %1
  | r4 r8 b4 c8
  | b4. b4 c8~
  | c2 gis4~
  | gis f2
  %5
  | d2 <a d>4\arpeggio
  | s2.*5
  %11
  | s4. b4 c8
  | b4. b4 c8~
  | c2 gis4~
  | gis f2
  %15
  << {
  | d2 <a d g>8\arpeggio[ f']
  | s2.
  }
  \new Voice {
  | s2 s8
    \once\shape #'((0.5 . 5) (3 . 4) (0 . 1) (-0.5 . 2)) Slur
    \once\stemUp f(
  | \staffLower \hideNotes
    \once\stemUp\once\omit Stem \once\override NoteColumn.force-hshift = #1 f2) s4
    \unHideNotes \staffUpper
  } >>
  | s2.*12
  %29
  | s4 d' d
}

Tenor = \context Voice = "three" \relative c' {
  \override Rest.staff-position = #0
  \voiceThree
  \stemUp\tieNeutral
  \partial 8
    f'8\rest
  %1
  << {
  | f4\rest <ees, f>2
  | \once\override NoteColumn.force-hshift = #-0.3 gis8 a~ a2^~
  }
  \new Voice {
  | \hideNotes
    s4 \once\override NoteColumn.force-hshift = #1 <ees f>2~
  | \once\override NoteColumn.force-hshift = #0 q2 s4
    \unHideNotes
  } >>
  | \stemDown a2 \stemUp \once\override NoteColumn.force-hshift = #0.4 b,4
  | ais8 b gis4 bes8 a
  %5
  | f2 s4
  | s2.
  | s2 d'8 b!^~
  | \once\stemDown b4 s2
  | s2 d8 b!^~
  %10
  | b2 d4\rest
  | f\rest <ees, f>2
  | gis8 \tieUp a~ a2~
  | a2 b,8[ d
  | g f] d[ b e d]
  %15
  | f,2 <d a' f'>4\arpeggio
  | q2.\arpeggio
  | s2.*8
  %25
  | s2 d''8 b~
  | \once\omit Stem b4 s2
  | s2 d8 b~
  | \once\omit Stem b4 s2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  \partial 8
    \clef treble a8~
  %1
  | <a a'>2.~
  | <a ees' f>2.~
  | q2 \clef bass \tieNeutral <f d'>4~
  | q <d d'>2
  %5
  | b4 a \stemUp <d, a' f'>4\arpeggio
  | \stemDown <f' b> <e c'> <d gis f'>~
  | q r f
  | f <e c'> <d gis f'>~\arpeggio
  | q r \tieDown <f d'>~
  %10
  | f2~ f8 a,~
  | <a a'>2.~
  | <a ees' f>2.~
  | q2 f4~
  | f <d gis>2
  %15
  | b4 a s
  | s2.
  | <f'' b>4 <e c'> <d gis f'>\arpeggio
  | <f b> <e c'> <d gis f'>\arpeggio
  | <g cis> <fis d'> <e ais g'>\arpeggio
  %20
  | <g cis> <fis d'> <e ais g'>\arpeggio
  | <a dis> <gis e'> <fis bis a'>\arpeggio
  | <ces' f!> <bes ges'> \tieNeutral <aes d ces'>~\arpeggio
  | q4 r r
  | R1*3/4
  %25
  | <d, gis f'>2 f4
  | <f b> <e c'> <d gis f'>~\arpeggio
  | q r f
  | <f b> <e c'> <d gis f'>~\arpeggio
  | q <f b> <e gis>
  %30
  | <a, dis f c'>2.~
  | q2 r4
  | \clef treble \stemNeutral <a' e' c'>2.^\fermata
  \fine
}

centerDynamics = {
  \partial 8
  s8
  %1
  | s16 s\pp s8 s\<^\markup { "(rubato)" } s4.
  | s2.
  | s8\! s\> s2
  | s16 s\! s8 s4-\markup { "rit." } s
  %5
  | s4\< s\! s-\markup { "rall." }
  | s4\pp\< s s
  | s16 s\! s4 s8\>_\markup { "rit." } s4
  | s2.\!\<
  | s16 s s\! s-\markup { \hspace #0.5 "rall." } s8 s\sf s\> s
  %10
  | s2.\!
  | s4 s\pp\< s
  | s s\! s
  | s s s\>
  | s2.
  %15
  | s4\!-\markup { "rallent." } s s\f-\markup { \hspace #4 "ten." }
  | s4\> s2
  | s2.\!\pp
  | s2.*4
  %22
  | \override TextScript.extra-offset = #'(0 . -1)
    s4-\markup { "accel." } s2
  | s4\ff s-\markup { "strepit." } s8 s-\markup { \hspace #-1 "rit." }
  | s4\> s2
  %25
  | s4\!\pp \> s2
  | s4\!\< s2
  | s8 s16 s\! s4-\sf\> s
  | s2.\!\<
  | s4\!\sff s\pp s-\markup { "rit." }
  %30
  | s4\pp\< s2
  | s4\!\> s s_\markup { \hspace #-6 "rall." }
  | s2.\!\ppp
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
      \new Dynamics = "dynamics" {
        % Will use self-alignment-Y to place element
        \override TextScript.Y-offset = #self-alignment-interface::y-aligned-on-self
        % Use negative value of direction,
        % i.e. CENTER -> align to center, UP -> align to bottom, DOWN -> align to top
        \override TextScript.self-alignment-Y = #(lambda (grob) (- (ly:grob-property grob 'direction)))
        % use CENTER as default direction instead of DOWN
        \override TextScript.direction = #CENTER
        \centerDynamics
      }
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
    title = "Prelude VI"
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
      % Make the piano staves closer together
      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (padding . 0))
    }
  }
  \midi { \tempo 2=40 }
}
