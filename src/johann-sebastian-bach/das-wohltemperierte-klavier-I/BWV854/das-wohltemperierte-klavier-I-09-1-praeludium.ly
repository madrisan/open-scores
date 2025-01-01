Global = {
  \key e \major
  \time 12/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'Praeludium09
  %1
  | e'8 gis b  e dis e  cis\prall b cis  e4.
  | b8\prall a b  e4.  a,8 b cis  b cis a
  | gis8 b e  gis4.~  gis8 fis e  dis e cis
  | dis2.~ dis8 e fis  gis cis, e
  %5
  | fis,8 ais cis  fis eis fis  gis, b dis  e4.
  | fis,8 ais cis  e dis e  fis, ais cis  d4.~
  | d8 e \once\omit Accidental d  cis d b  ais\prall gis fis  g' fis eis
  | e!8 dis! d  cis16 dis e8 ais,  \once\stemUp b2.^~
  | b8 dis fis  b ais b  cis, eis gis  b4.~
  %10
  | b8 gis a~  a fis gis~  gis eis fis  eis16 fis gis8 cis,
  | \stemUp\tieUp d2.~ d4.~ d8 d cis
  | cis4.~ cis8 b a  gis a b~  b a gis
  | a4.~ a8 b gis  a4.~ a8 b16 a gis fis
  | \stemNeutral\tieNeutral gis16 fis e fis gis a  b a gis a b cis  d cis b a gis fis  e8 r r
  %15
  | a8 cis e  a gis a  fis\prall e fis  a4.
  | e8\prall d e  a4. d,8 e fis  e fis d
  | cis8 a b  cis4.~ cis8 b a  gis a fis
  | gis8 e fis  gis4.~ gis8 a b  cis fis, a
  | b,8 dis fis  b a b  cis, e gis  a4.
  %20
  | b,8 dis fis  a gis a  b, dis fis  g4.~
  | g8 a \once\omit Accidental g  fis g e  dis cis b  c' b ais
  | a!8 gis g  fis16 gis a8 dis,  \stemUp\tieUp e2.~
  | e2.~\prall e4.~ e4 dis!8
  | e1.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | s1.*10
  %11
  | r8 b' gis  eis gis fis  gis b a  b4.~
  | b8 a gis  fis4.~ fis eis
  | fis4.~ fis4 e!8  dis4. r4 r8
  | s1.*9
  %23
  | r8 gis,8 b  d cis d  cis4.~ cis4 c8
  | b1.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  %1
  | r4 r8 gis4. a~ a8 gis fis
  | gis4.~ gis8 a gis  fis2.
  | e8 s4 s4. r8 r cis' fis4.
  | s2. r8 r b, e4.~
  %5
  | e4. dis2.~ dis8 cis b
  | ais2.~ ais4. b~
  | b8 cis d  e2.~ e8 dis cis
  | b4.~ b8 ais e'!
    \change Staff = "upper" \voiceTwo
    dis2.
  | \change Staff = "lower" \voiceThree
    s2. r8 gis, b  d b cis~
  %10
  | cis4. b bis cis
  | r8 d, eis  gis b a  b gis fis  gis16 a b8 eis,
  | s1.*3
  | r4 r8 cis'4. d~ d8 cis b
  | cis4.~ cis8 d cis  b2.
  %15
  | s2. r8 r fis b4.
  | s2. r8 r e, a4.~
  | a4. gis2.~ gis8 fis e
  | dis2.~ dis4. e~
  | e8 fis g  a2.~ a8 g fis
  %20
  | e4.~ e8 dis a'!  gis e gis  a gis a
  | e2. a,8 cis e a gis a
  | gis1.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | e1.~
  | e2.~ e4. dis
  | e8 gis b  e dis e  ais,2.
  | b,8 dis fis  b ais b  e,2.
  %5
  | fis1.~
  | fis4.~ fis4 cis8  d4.~ d8 e fis
  | g2. fis4.~ fis8 gis ais
  | b4 eis,8 fis4.  b,8 dis fis  b a b
  | gis4.~ gis8 fis gis  eis2.
  %10
  | fis4. d dis cis
  | b2. s
  | \stemNeutral fis'4. a, b cis
  | fis,8 a cis  fis e! fis  b, dis fis  b a b
  | e,8 gis b  e d cis  b4 a8  gis16 d'! cis b a gis
  %15
  | \stemDown a1.~
  | a2.~ a4. gis
  | \stemNeutral a,8 cis e  a gis a  \stemDown dis,!2.
  | \stemNeutral e,8 gis b  e dis e  \stemDown a,2.
  | b1.~
  %20
  | b4. b4 fis8  g4.~ g8 a b
  | c2. b4.~ b8 cis dis!
  | e4 ais,8 b4.  cis2.
  | gis2. a
  | e1.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 854"
    title = \markup { "Praeludium IX" }
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
