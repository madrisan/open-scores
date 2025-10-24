Global = {
  \key b \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo "Vivace" 2 = 108
  | r2 e4 r
  | r2 fis4 r
  | gis r \stemUp\tieUp gis'2^^~
  | gis cis,
  %5
  | gis'1^>  
  | r2 gis,4 r
  | r2 ais4 r
  | <e b'> r \stemUp\tieUp b''2^^~
  | b e,
  %10
  | b'1^>
  | \stemNeutral\tieNeutral
    r2 <b,, e b'>4 r
  | r2 <cis e cis'>4 r
  | <dis gis dis'> r <e gis e'> r
  | <e gis e'> r <fis ais fis'> r
  %15
  | <gis cis gis'> r <b, e b'> r
  | r2 <cis e cis'>4 r
  | <dis gis dis'> r <e gis e'> r
  | <e ais e'> r <fis ais fis'> r
  | <gis cis gis'> r <gis' gis'>2^^~^\(
  %20
  | q2. <cis, cis'>4\)
  | <gis' gis'>2.^- r4
  | <a a'>2.^\markup { "rit." }^( <cis, cis'>4)
  | <a' a'>2.( q4)
    \bar "||"
    \key a \major
  | <e e'>2..^^ <a, a'>8
  %25
  | <e' e'>4 r8 <a, a'>8 <e' e'>4 r8 a,,8
  | <e cis' e>2.. a8
  | <e cis' e>4 r8 <e a> <e cis' e>4 r8 <a' a'>8
  | <fis' fis'>2..^^ <a, a'>8
  | <fis' fis'>4 r8 <a, a'> <fis' fis'>4 r8 a,,
  %30
  | <fis cis' fis>2.. a8
  | <fis cis' fis>4 r8 <fis a>8 <fis cis' fis>4 r8 <cis'' cis'>
  | <gis' gis'>2..^^ <cis, cis'>8
  | <gis' gis'>4 r8 <cis, cis'> <gis' gis'>4 r8 cis,,
  | <gis cis gis'>2.. cis8
  %35
  | <gis cis gis'>4 r8 <gis cis> <gis cis gis'>4 r
  | r2 <cis cis'>_^~_\(
  | q <b b'>
  | <ais ais'> <b b'> <cis cis'> <d d'>\)
  | r2 <ais ais'>4_. r
  %40
  | r2 <b b'>4_. r
  | r2 <cis cis'>4_. r
  | r2 <d d'>4_. r
    \bar "||"
    \key g \major
  | \tempo "Più moderato" 2 = 88
    R1
  | R1*65
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*2
  | s2 gis'_^~
  | gis cis,
  | gis'1_>
  | s1*2
  %7
  | s2 b_^~
  | b e,
  | b'1_>
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Stem.cross-staff = ##t
  \override Stem.length = #20
  %1
  | s2 <e ais>4 s
  | s2 <fis ais>4 s
  | <gis cis> s2.
  | s1*2
  %6
  | s2 <gis cis>4 s
  | s2 <ais cis>4 s
  | b s2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r2 <cis, ais' cis>4 r
  | r2 <dis ais' dis>4 r
  | <e cis' e> r s2
  | s1*2
  %6
  | r2 <e cis' e>4 r
  | r2 <fis dis' fis>4 r
  | <gis e' gis> r s2
  | s1*2
  %11
  | \stemNeutral\tieNeutral
    r2 <gis e' gis>4 r
  | r2 <ais e' ais>4 r
  | <b gis' b> r <cis gis' cis> r
  | <cis ais' cis> r <dis ais' dis> r
  %15
  | <e cis' e> r <gis, e' gis> r
  | r2 <ais e' ais>4 r
  | <b gis' b> r <cis gis' cis> r
  | <cis ais' cis> r <dis ais' dis> r
  | <e cis' e> r gis'2~^\(
  %20
  | gis2. cis,4\)
  | gis'2.^- r4
  | <a, a'>2.^( <cis, cis'>4)
  | <a a'>2.^( <a, a'>4)
    \key a \major
  | <cis, cis'>4 r8 <a''' cis e>8 q4 r8 q
  %25
  | q4 r8 q q4 r8 <cis,, a' cis>
  | q4 r8 q q4 r8 q
  | q4 r8 q q4 r8 q
  | <cis, cis'>4 r8 <a''' cis fis>8 q4 r8 q
  | q4 r8 q q4 r8 <cis,, a' cis>
  %30
  | q4 r8 q q4 r8 q
  | q4 r8 q q4 r
  | <eis, eis'>4 r8 <cis''' eis gis>8 q4 r8 q
  | q4 r8 q q4 r8 <eis,, cis' eis>
  | q4 r8 q q4 r8 q
  %35
  | q4 r8 q q4 r
  | r2 <cis cis'>_^~_\(
  | q <b b'>
  | <ais ais'> <b b'> <cis cis'> <d d'>\)
  | r2 <ais ais'>4_. r
  %40
  | r2 <b b'>4_. r
  | r2 <cis cis'>4_. r
  | r2 <d d'>4_. r
    \bar "||"
    \key g \major

  | R1*66
    \fine
}

centerDynamics = {
 | s4 s-\markup { \dynamic ff "    marc." } s2
 | s1*21
 %22
 | s8-\markup { "rinforz." } s s2.
 | s8-\markup { \hspace #-2 "marcatissimo" } s s2.
 | s1*2
 %27
 | s2. s8 s\<
 | s8 s\! s2.
 | s1*3
 | s8\fff s s2.
 | s1*3
 | s4 s\f s2
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
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
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "II. Eötvös József" }
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
    \tempo 4 = 100
  }
}
