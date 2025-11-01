Global = {
  \key b \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Andante maestoso" 4 = 84
    R1*18
  | r4^\markup {
      "Vörösmarty " \char ##x2013 " nóta"
    }
    \clef "bass"
    <fis d'>2\( <e cis'>4
  %20
  | <d b'>4.. <cis ais'>16 <d b'>8. <cis ais'>16 <d b'>8. <e cis'>16
  | <d b'>4.. <cis ais'>16 q4..\) <b gis'>16\(
  | q8. <cis ais'>16 q8.[ <d b'>16] q8.[ <e cis'>16] q8\) r
  | r8. <cis ais'>16\( q8.[ <d b'>16] q8.[ <e cis'>16] q8\) r
  | r4 <g e'>2\( <fis d'>4
  %25
  | <e cis'>4.. <d b'>16 <e cis'>8. <d b'>16 <e cis'>8. <fis d'>16
  | <e cis'>4.. <d b'>16 q4..\) <cis ais'>16\(
  | q8. <d b'>16 q8.[ <e cis'>16] q8.[ <fis d'>16] q8\) r
  | r8. <d b'>16\( q8.[ <e cis'>16] q8.[ <fis d'>16] q8\) r
  | r4 \clef "treble"
    fis'~ fis8. e16 d8. cis16
  %30
  | b4_. d_. bes_. d
  | a8_. r fis'4~ fis8. e16 dis8. cis16
  | c4_. dis_. b_. dis
  | bes8_. r g'4~ g8. f16 ees8. d16
  | c4_. ees_. b_. ees
  %35
  | ais,8_. r g'4~ g8. fis16 e8. d16
  | cis4_. e_. b_. e
  | ais,_\( b bis cis
  | d2^^ cis4\) r
  | <g g'>1^^(
  %40
  | <fis fis'>2) r
  | a4_\( ais b bis
  | cis2^^ c4\) r
  | <fis, fis'>1^^(
  | <f f'>2) r
  %45
  | gis4_\( a ais b
  | c2^^ b4\) r
  | <f f'>1^^(
  | <e e'>2) r
  | r2 g4_. r
  %50
  | a_. r ais_. r
  | b_. r r2
  | c4_. r r2
  | r2 g4 r
  | a r ais r
  %55
  | b^\markup { "riten." } r r2
  | cis4 r r2
    \key b \major
    \bar "||"
    \break
  | \tempo "Un poco meno lento" 2 = 96
    fis,4 <dis'' fis dis'>2\( <cis e cis'>4
  | <b dis b'>4.. <ais cis ais'>16 <b dis b'>8. <ais cis ais'>16 <b dis b'>8. <cis e cis'>16
  | <b dis fis b>4.. <ais cis ais'>16 q4..\) <gis b gis'>16\(
  %60
  | q8. <ais cis ais'>16 q8.[ <b dis b'>16] q8.[ <cis e cis'>16] q8\) r
  | r8. <ais cis ais'>16\( q8.[ <b dis b'>16] q8.[ <cis e cis'>16] q8\) r
  | r4 <e gis e'>2\( <dis fis dis'>4
  | <cis e cis'>4.. <b dis b'>16 <cis e cis'>8. <b dis b'>16 <cis e cis'>8. <dis fis dis'>16
  | <cis e cis'>4.. <b dis b'>16 q4..\) <ais cis ais'>16\(
  %65
  | q8.[ <b dis b'>16] q8.[ <cis e cis'>16] q8.[ <dis fis dis'>16] q8\) r
  | r8. <b dis b'>16\( q8.[ <cis e cis'>16] q8.[ <dis fis dis'>16] q8\) r
  | r4 <fis ais fis'>2 <eis gis eis'>4
  | <dis fis dis'>4.. <cisis eis cisis'>16 q8.[ <dis fis dis'>16] q8. <eis gis eis'>16
  | q8 r <fis ais fis'>2 <eis gis eis'>4
  %70
  | <dis fis dis'>4.. <cisis eis cisis'>16 q8.[ <dis fis dis'>16] q8. <eis gis eis'>16

  | R1*36
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r2 fis'~^>(
  | fis b,)
  | r fis~^>(
  | fis b)
  %5
  | r cis~^>(
  | cis fis,)
  | r cis~_>(
  | cis fis)
  | r fis~^>(
  %10
  | fis b,)
  | r fis~_>(
  | fis b)
  | r cis_>~(
  | cis fis,)
  %15
  | r eis~_>(
  | eis fis)
  | r4_\markup { 
      "con" \musicglyph #"pedal.Ped"
    }
    \ottava #-1 <fis, fis'> q q
    \repeat unfold 11 {
  | r q q q
    }
    \ottava #0
  %29
  | r4 <fis' fis'>~ <fis fis'>8. <e e'>16 <d d'>8. <cis cis'>16
  | <b b'>4_. <d d'>_. <bes bes'>_. <d d'>
  | <a a'>8_. r <fis' fis'>4~ <fis fis'>8. <e e'>16 <dis dis'>8. <cis cis'>16
  | <c c'>4_. <dis dis'>_. <b b'>_. <dis dis'>
  | <bes bes'>8_. r <g' g'>4~ <g g'>8. <f f'>16 <ees ees'>8. <d d'>16
  | <c c'>4_. <ees ees'>_. <b b'>_. <ees ees'>
  %35
  | <ais, ais'>8_. r <g' g'>4~ <g g'>8. <fis fis'>16 <e e'>8. <d d'>16
  | <cis cis'>4_. <e e'>_. <b b'>_. <e e'>
  | <ais, ais'>_\( <b b'> <bis bis'> <cis cis'>
  | <d d'>2^^ <cis cis'>4\) r
  | <ais ais'>_\( <b b'> <bis bis'> <cis cis'>
  %40
  | <d d'>2 <cis cis'>4\) r
  | <a a'>4_\( <ais ais'> <b b'> <bis bis'>
  | <cis cis'>2^^ <c c'>4\) r
  | <a a'>4_\( <ais ais'> <b b'> <bis bis'>
  | <cis cis'>2 <c c'>4\) r
  %45
  | <gis gis'>4_\( <a a'> <ais ais'> <b b'>
  | <c c'>2^^ <b b'>4\) r
  | <gis gis'>4_\( <a a'> <ais ais'> <b b'>
  | <c c'>2 <b b'>4\) r
  | r2 <g g'>4_. r
  %50
  | <a a'>_. r <ais ais'>_. r
  | <b b'>_. r r2
  | <c c'>4_. r r2
  | r2 <g g'>4 r
  | <a a'> r <ais ais'> r
  %55
  | <b b'> r r2
  | <cis cis'>4 r r2
    \key b \major
    \bar "||"
  | <fis, fis'>4 <fis'' fis'>8[ q] q[ q q q]
  \repeat unfold 3 {
  | r4 q8[ q] q[ q q q]
  }
  %61
  \repeat unfold 2 {
  | <fis, fis'>4 <fis' fis'>8[ q] q[ q q q]
  }
  \repeat unfold 3 {
  | r4 q8[ q] q[ q q q]
  }
  %66
  | <fis, fis'>4 <fis' fis'>8[ q] q[ q q q]
  | <fis, fis'>4 \clef "treble" <fis' dis' fis>8[ q q q] <gis eis' gis> q
  | <ais fis' ais>[ q] <b gis' b>[ q q q] <ais fis' ais>[ q]
  | <gis eis' gis>[ q] <fis dis' fis>[ q q q] <gis eis' gis>[ q]
  %70
  | <ais fis' ais>[ q] <b gis' b>[ q q q] <ais fis' ais>[ q]
  | <gis eis' gis>[ q <ais fis' ais> q] <b gis' b>[ q <ais fis' ais> q]
  | <gis eis' gis>[ q <fis dis' fis> q] \clef "bass" <eis d' eis>[ q <e cis' e> q]
  | \stemDown <dis b' dis>8 r <dis, dis'>2 <cis cis'>4

  | R1*33
    \fine
}

centerDynamics = {
  | s4-\markup { \dynamic mf \whiteout "dolente" } s2.
  | s1*17
  | s4-\markup { \dynamic mf \whiteout "espressivo" } s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 9 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak

 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
  % page 2
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s2 s4\sustainOn s
  | s1
  | s4\sustainOff s s\sustainOn s
  | s1
  %5
  | s4\sustainOff s s\sustainOn s
  | s1
  | s4\sustainOff s2.
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \context Dynamics = "sustainPedal" \sustainPedal
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "III. Vörösmarty Mihály" }
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
    \tempo 4 = 84
  }
}
