Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \label #'S206
  %1
  \tempo "Andante lugubre"
  | R1
  | R1
  | r2 \clef bass <f a>~\p
  | q4. <f gis>8 <f a>4. <f gis>8
  %5
  | <f a>4 r <f a cis>2~
  | q4. <f gis b>8 <f a cis>4. <f gis b>8
  | <f a cis>4 r <f a cis f>2~
  | q4. <e gis cis e>8 <f a cis f>4. <e gis cis e>8
  | <f a cis f>4 r q2~
  %10
  | q4. <e gis cis e>8 <f a cis f>4. <e gis cis e>8
  | <f a cis f>4 r cis4.\( b8
  | cis4. b8 cis4. b8\)
  | cis2\( b4 bes
  | a f e ees
  %15
  | cis f e! ees
  | cis f e! ees\)
  | cis2\( ees
  | cis2 ees\)
  | cis2.\( 4
  %20
  | 2 2
  | 1\fermata\)
  | R1
  \bar "||"
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | r4 <cis, cis'>^\p\( <b b'> <bes bes'>
  | <a a'> <f f'> <e e'> <ees ees'>
  | <cis cis'>\) <cis' cis'>\( <b b'> <bes bes'>
  | <a a'> <f f'> <e e'> <ees ees'>
  %5
  | <cis cis'>\) <cis' cis'>\( <b b'> <bes bes'>
  | <a a'> <f f'> <e e'> <ees ees'>
  | <cis cis'>\) <cis' cis'>\( <b b'> <bes bes'>
  | <a a'> <f f'> <e e'> <ees ees'>
  | <cis cis'>\) <cis' cis'>\( <b b'> <bes bes'>
  %10
  | <a a'> <f f'> <e e'> <ees ees'>
  | <cis cis'>\) r cis'!4.\( b8
  | cis!4. b8 cis4. b8\)
  | cis2\(	 b4 bes
  | \ottava -1 a f e ees
  %15
  | cis f e! ees
  | cis f e! ees\)
  | cis2\( ees
  | cis2 ees\)
  | cis2.\( 4
  %20
  | 2 2
  | 1^\fermata\)
  | R1_\markup { \hspace #4 \small\italic "attacca" }\ottava 0
  \bar "||"
}

centerDynamics = {
  %1
  | s1*4
  | s2 s4-\markup { \hspace #-3 \dynamic mp \small\italic "pesante" } s
  | s1
  | s2 s2-\markup { \small\italic "cresc." }
  %5
  | s1
  | s2 s2\f
  | s1
  | s4 s2.-\markup {
      \hspace #2
      \small\italic "sempre" \dynamic ff
      \whiteout \small\italic "accentuato assai   .   .   .   .   .   .   e doloroso"
    }
  | s1*7
  | s1-\markup { \small\italic "marcato" }
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\pageBreak
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
    >>
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Franz Liszt"
    opus = "S.206"
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #20 "Trauervorspiel und Trauermarsch" }
          \null
          \line { \abs-fontsize #20 "I." }
        }
      }
    }
    subtitle = #f
    arranger = \markup { \italic "Komponiert 1885" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 48
  }
}
