Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

voiceFive  = #(context-spec-music (make-voice-props-set 4)  'Voice)
voiceSix  = #(context-spec-music (make-voice-props-set 5)  'Voice)

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205vii
  %1
  \tempo "Langsam" 4 = 80
  \clef "bass"
  \partial 2 <gis gis'>2~_>
  | q1~
  | q2 q~_>
  | q1~
  | q2 q~_>
  %5
  | q1^\(
  | q2_> q4.._> q16\)
  | q2...^\( q16
  | q4.. q16 q4.. q16\)
    \break
  | q4\arpeggio\( f' e d
  %10
  | cis d e f
  | gis a bes^\markup { "poco ritard." } cis
  | \clef "treble"
    d e f gis\)
  | \stemUp a4..^\<\arpeggio^\markup {
      "Noch langsamer"
    }
    bes16\! bes2^>
  | a4..^\<\arpeggio bes16\! bes2^>
  %15
  | r2 <gis, d' f b>^>\arpeggio
  | r4 b' b^>( a)
  | gis4.^>^\( fis8 eis fis
    \set crescendoText = \markup { \small\italic { "riten." } }
    \set crescendoSpanner = #'text
    %\override DynamicTextSpanner.style = #'dashed-line
    gis^\< fis
  | e d cis d \once \slurDown \appoggiatura fis8 e4. d8\)\!
    \bar "||"
    \clef "bass"
    \unset crescendoText
    \unset crescendoSpanner
    \key a \major
  | d4.( cis8) cis2
  %20
  | d4.( cis8) cis2
  | r8 d4(^> cis8) r cis^.( r cis^.)
  | s1*2
  | r2 r8 \clef "treble" eis\( fis gisis\)
  %25
  | ais4..^\< b16\! b2^>
  | ais4..^\< b16\! b2^>
  | r2 <a,! dis fis c'>^>
  | r4 <a dis fis cis'>4 <a' cis>4.(^> <gis b>8)
  | <gis b>4.^>_\( <fis a>8 <eis gis>8 <fis a> <gis b> <fis a>
  %30
  | \set crescendoText = \markup { \small\italic { "ritenuto" } }
    \set crescendoSpanner = #'text
    <e gis>^\< <dis fis> <cis e> <dis fis>
    \once\slurDown \acciaccatura a'8 <b, dis gis>4.\fermata <a cis fis>8\)\!
    \unset crescendoText
    \unset crescendoSpanner
    \key bes \major
    \bar "||"
  | ges'4.( f8) <f, f'>2
  | R1*4
  | r2 r4\fermata
    \bar "||"
    r4
    \bar "||"
    \time 5/4
  | R1*5/4*6
    \bar "||"
    \key e \major
  | R1*5/4*7
    \bar "||"
    \time 4/4
  | R1*2
    \bar "||"
    \key a \minor
  | R1*16
    \bar "||"
    \key b \minor
  | R1*10
    \bar "||"
    \time 5/4
  | R1*5/4*5
    \bar "||"
    \time 4/4
  | R1*16
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \clef "bass"
  \partial 2 s2
  %1
  | s1*4
  \repeat unfold 2 {
  | \once\override Voice.Rest.X-offset = #-0.35
    c4\rest f e ees
  | d cis d f
  }
  | s1*4
  %13
  | \stemUp \shiftOn d'2~\arpeggio d
  | d~\arpeggio d
  | s1
  | \stemDown
    s4 <d eis> <cis fis>2
  | <a d>1
  | s1
  %19
  | \slurUp
    \override NoteColumn.force-hshift = #1.2
    a4( gis) gis( fis)
  | a4( gis) gis( fis)
  | \revert NoteColumn.force-hshift
    s8 <eis gis>4. s8 <eis a> s <eis b'>
  | \override Rest.staff-position = #0
    \tieNeutral
    r4 <cis fis b cis>~\> <cis fis ais cis>\! <cis fis gis cis>
  | <cis fis ais cis>8^. r r4 q8 r r4
  | s1
  %25
  | \stemUp dis'2~ dis
  | dis~ dis
}

Contralto = \context Voice = "three" \relative c' {
  \voiceThree
  \stemDown\tieDown
  \partial 2 s2
  %1
  | s1*12
  | a2~ a4 gis
  | a2~ a4 gis
  | s1*4
  %19
  | eis2 cis
  | eis2 cis
  | s1*4
  %25
  | ais'2~ ais4 gisis
  | ais2~ ais4 gisis
  | s1
  | s2 <cis e>
  | cis s
}

Tenor = \context Voice = "four" \relative c {
  \voiceFour
  \stemUp
  \override Rest.staff-position = #0
  \partial 2 s2
  %1
  | \ottava #-1
    <f,, f'>8\( <b d> <e, e'> <b' d> <f f'> <b d> <e, e'> <b' d>
  | <f f'> <b d> <e, e'> <b' d>\) s2
  | <dis, dis'>8\( <gis b> <d d'> <gis b> <dis dis'> <gis b> <d d'> <gis b>
  | <dis dis'> <gis b> <d d'> <gis b>\) s2
  %5
  | <cis, cis'>8\( <f gis> <c c'> <f gis> <cis cis'> <f gis> <c c'> <f gis>\)
  | <b, b'>8\( <f' gis> <bes, bes'> <f' gis> <b, b'> <f' gis> <bes, bes'> <f' gis>\)
  | <cis cis'>8\( <f gis> <c c'> <f gis> <cis cis'> <f gis> <c c'> <f gis>\)
  << {
  | \tieNeutral
    <b, b'>8\( <f' gis> <bes, bes'> <f' gis> <b, b'> <f' gis> 
    \once\override NoteColumn.force-hshift = #0
    bes,
    <f'-\shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.6 . 0))_~
     gis-\shape #'((0 . 0) (0 . 0) (-0.3 . -0.2) (-0.6 . 0))^~
    >\)
    \once \override TieColumn.positioning-done = ##t
  | \hideNotes q8 s s2. \unHideNotes
  } \\ {
  | s2. 
    \omit Stem \omit Flag
    \override NoteColumn.force-hshift = #0
    bes4^~
  | bes8
    \ottava #0
    s s2.
  } >>
}

Baritone = \context Voice = "five" \relative c {
  \voiceFive
  \stemUp
  \partial 2 s2
  | s1*12
  | \override NoteColumn.force-hshift = #0.4
    \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gis
  | \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gis
    \revert NoteColumn.force-hshift
  | s1*4
  %19
  | s2 a
  | s a
  | s1*4
  %25
  | \override NoteColumn.force-hshift = #0.4
    \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gisis
  | \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gisis
}

Bass = \context Voice = "six" \relative c {
  \voiceSix
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 2 r2
  %1
  | \ottava #-1
    f,,4 e f e
  | f e r2
  | dis4 d dis d
  | dis d r2
  %5
  | cis4 c cis c
  | b bes b bes
  | cis c cis c
  | b bes b 
    \override NoteColumn.force-hshift = #0 bes~
  | \once\stemUp \once\omit Accidental
    \once\override NoteColumn.force-hshift = #0
    <bes f' gis bes>8
    \ottava #0
    r r4 r2
  | R1*3
  %13
  | \tieNeutral <f''_~ d'^~ f^~>2\arpeggio q
  | <f_~ d'^~ f^~>2\arpeggio q
  | \stemNeutral <f f'>_>\( <d d'>4 <b b'>
  | <gis gis'>2\) <a a'>
  | <b b'>1
  | R1
    \bar "||"
    \key a \major
  | <cis b' d>2\arpeggio \stemDown d4.(_\sf cis8)
  %20
  | \once\stemNeutral <cis b' d>2\arpeggio d4.(_\sf cis8)
  | \stemNeutral <b b'>4^>( <ais ais'>8) r <a a'>_. r <gis gis'>_. r
  | \override Beam.positions = #'(0.5 . 1)
    \repeat tremolo 16 { <fis cis'>32^\p fis' }
  | <fis, cis'>8_.^\pp r r <eis eis'>_. <fis fis'>_. r r <eis eis'>_.
  | <fis fis'>_. r r4 r2
  %25
  | \stemDown <fis'_~ dis'^~ fis^~>2 q
  | <fis_~ dis'^~ fis^~>2 q
  | \stemNeutral
    <fis fis'>2^>\( <dis dis'>4 <c c'>
  | <b b'>2\) \once\slurUp \acciaccatura cis8 <cis' e a>2
  | \once\slurUp \acciaccatura dis,8 <dis' fis a>2 r
  %30
  | R1\fermata
    \key bes \major
    \bar "||"
  | R1*5
  | r4 r r^\fermata
    \bar "||"
    r4
    \bar "||"
    \time 5/4
  | R1*5/4*6
    \bar "||"
    \key e \major
  | R1*5/4*7
    \bar "||"
    \time 4/4
  | R1*2
    \bar "||"
    \key a \minor
  | R1*16
    \bar "||"
    \key b \minor
  | R1*10
    \bar "||"
    \time 5/4
  | R1*5/4*5
    \bar "||"
    \time 4/4
  | R1*16
    \fine
}

centerDynamics = {
  \partial 2 r2
  | s4-\markup { \normalsize \dynamic mf "(wie Glocken)" } s2.
  | s1*3
  | s4 s-\markup { "un poco cresc." } s2
  | s1*7
  %13
  | s4-\markup { \normalsize \dynamic mf "espressivo" } s2.
  | s1*5
  %19
  | s4\>_\markup { "pesante" } s\! s2\sf
  | s4\> s\! s2\sf
  | s2
    \set crescendoText = \markup { \small\italic { "dim." } }
    \set crescendoSpanner = #'text
    s\<
  | s1
  | s2 s\!\pp
   \unset crescendoText
   \unset crescendoSpanner
  | s1
  %25
  | s4-\markup { \normalsize \dynamic mf "espr." } s2.
}

forceBreaks = {
  % page 1
  \partial 2 s2
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\pageBreak
  %page2
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
      \Contralto
    >>
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Baritone
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "VII. Mosonyi Mihály" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 80
  }
}
