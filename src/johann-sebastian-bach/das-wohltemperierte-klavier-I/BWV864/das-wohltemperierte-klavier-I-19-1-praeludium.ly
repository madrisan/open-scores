Global = {
  \key a \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \override MultiMeasureRest.staff-position = #0
   \label #'Praeludium19
  %1  
  | a'16 b cis a  fis'8 fis  fis16 dis e8  r16 e fis g
  | a16 g fis a  d,! cis b a'  gis fis e gis  cis, b a g'
  | fis16 e d fis  b, fis' e d  cis b a b  cis dis e fis
  | \voiceOne gis16 a b gis  e fis gis e  fis8 gis16 a  b4~
  %5
  | b8 e, r a~  a dis, r gis
  | a16 gis fis a  dis, a' gis fis  e4 r8 g
  | g8 fis b,\rest fis'  fis e b\rest e
  | e8 d r d  d cis a'4
  | gis4 g fis b
  %10
  | e,4 a4~ a gis!~
  | gis16 fis eis gis  fis2 eis!4
  | fis16 gis a fis  d8 d  d16 bis cis8  r16 cis d e
  | \oneVoice fis16 e dis fis  b, a gis fis'  eis dis cis b'  a gis fis eis
  | fis16 eis fis gis  gis8. fis16  \voiceOne fis4 r8 a
  %15
  | a8 gis r gis  gis fis r b
  | b8 a r a  a gis r e
  | e8 a, d[ d]  d cis  r16 e d cis
  | b8 cis16 dis e4~  e8 a, r d~
  | d8 gis,! r cis  d16 cis b cis  d cis d e
  %20
  | a,16 b cis a  \oneVoice fis'8 fis  fis16 dis e8  r16 e fis g
  | a16 g fis a  d, cis b a'  gis fis e gis  cis, b a g'
  | fis16 e d fis  b, fis' e d  cis b a cis  fis, e d fis
  | b,16 cis d e  fis gis a b  cis d e fis  gis a b gis
  | \voiceOne a4~ a8. gis16  a2\fermata
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
  \override MultiMeasureRest.staff-position = #0
  %1
  | r2 r4 r8 e'8~
  | e8 a,  r d~  d[ gis,] r cis~
  | cis8 b16 a  gis8.\prall gis16  a8 r r4
  | \change Staff = "upper" \voiceTwo
    r4 e'' dis d
  %5
  | cis4 fis b, e~
  | e4 dis4  e8 b e e
  | e8 d! s d  d cis s cis
  | cis8 b r4  
    \change Staff = "lower" \voiceThree
    a,16 b cis a  fis'8 fis
  | fis16 dis e8 e16\rest e fis g  a g fis a  d,! cis b a'
  %10
  | gis!16 fis e gis  cis, b a g'  fis e d fis  b, fis' e d
  | cis4 
    \change Staff = "upper" \voiceTwo
    r16 e'! d cis  b a gis b 
    \change Staff = "lower" \voiceThree
    cis,
    \change Staff = "upper" \voiceTwo
    d' cis b
  | a4  r16 cis b a  gis8.
    \change Staff = "lower" \voiceThree
    gis,16 
    cis4~
  | cis8 fis, r b~  b eis, r a~
  | a8 gis16 fis  eis8 b'  a16
    \change Staff = "upper" \voiceTwo
    d' cis b  a
    \change Staff = "lower" \voiceThree
    gis fis e!
  %15
  | dis4
    \change Staff = "upper" \voiceTwo
    r8 e'~  e16 e dis cis  b a!
    \change Staff = "lower" \voiceThree
    gis fis
  | e4 
    \change Staff = "upper" \voiceTwo
    r8 fis'~  fis16 fis e d!  cis b a gis
  | fis4 r8 b~  b e, a4
  | gis4 g fis b
  | e,4 a a gis!
  %20
  | a4
    \change Staff = "lower" \voiceThree
    a, gis g
  | fis4 b e, a
  | d,4~ d16 d cis b  a b cis a  d e fis d
  | gis a gis fis  e d' cis b  a r r8 r4
  | \change Staff = "upper" \voiceTwo
    r16 gis'' fis e  d cis b8  cis2
}

Bass = \context Voice = "four" \relative c {
  | \voiceFour a4 a' gis g
  | fis4 b e, a
  | d,4 e  a,8 a' gis fis
  | \oneVoice e16 fis gis e  cis'8 cis  cis16 ais b8  r16 b cis d!
  %5
  | e16 d cis e  a, gis fis e'  dis cis b dis  gis, fis e d'
  | cis16 b a cis  fis, cis' b a  gis fis e fis  gis a b cis
  | d!16 e fis d  b cis d b  cis d e cis  a b cis a
  | b16 cis d b  gis a b gis  a4_~  a16 gis a b
  | cis4  \once\override Rest.direction = #DOWN d,16\rest
    \mergeDifferentlyDottedOn
    \once\shape #'((0.6 . -0.8) (0 . -1) (0 . -1) (-0.2 . -0.6)) Tie
    e'8._~
    e8 a, r 
    \once\shape #'((0.6 . 0) (0 . 0) (0 . 0) (-0.2 . 0)) Tie
    d_~
  %10
  | d8 gis, r cis  d b r e,
  | a8 gis a fis  gis b cis cis,
  | fis8 fis, fis'4  eis e
  | \voiceFour dis4 gis cis, fis
  | d!8 b cis4  fis \oneVoice r
  %15
  | r16 cis' b a  gis fis e ais  b4 r
  | r16 dis cis b  a gis fis dis'  e4 r  
  | r16 e16 d! cis  b a gis b  a, b cis a  fis'8 fis
  | fis16 dis e8  r16 e fis g  a g fis a  d,! cis b a'
  | gis!16 fis e gis  cis, b a g'  fis e d fis  b, fis' e d
  %20
  | cis16 b a cis  \voiceFour d e d cis  b a gis b  cis8 e~
  | e8 a, r d~  d gis, r cis~
  | cis8 b16 a gis!4  a8 r r4
  | r2 c16\rest fis e d  cis b a gis
  | \oneVoice fis16 e d8 \autoBeamOff e e'  a,2\fermata
    \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 864"
    title = \markup { "Praeludium XIX" }
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
