Global = {
  \key a \major
  \time 9/8
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative {
  \override MultiMeasureRest.staff-position = #0
  %1
  | \voiceOne \highlightSubject { a'8 b\rest b\rest  b\rest gis cis  a d b
  | e8 cis fis  e a \unHighlightSubject d,~ }  d cis dis
  | gis8 e a  gis4 fis8  b, e d!~
  | d8 cis dis  e b e~  e fis4
  %5
  | gis4 a8  gis4 fis8  gis a4~
  | a8 gis b  e,4 dis8  e4.~
  | e8 d! cis  d4 cis8  b4.~
  | b8 a cis  fis,4.~  fis16 gis gis8.\trill fis32 gis
  | \highlightSubject { a8 r r  r gis cis  a d b
  %10
  | e8 cis fis  e a \unHighlightSubject d,~ }  d cis dis
  | e4.~  e8 d! g  cis, fis d
  | b4.~  b8 a d  gis, cis b
  | a4.~  a8 gis fis  d'4.~
  | d8 cis fis~  fis e d  cis4.~
  %15
  | cis8 b ais  b4 cis8  fis, b ais!
  | b8 d4~  d8 cis fis~  fis e a~
  | a8 gis16 fis gis8~  gis fis e~  e dis fis
  | b,4.~  b4 a8~  a8 gis4~
  | gis8 fis a  dis, b' gis  cis fis,4
  %20
  | e8 e' b  cis fis cis  d!4.~
  | d8 b e  cis fis d  gis e a
  | fis4 b8  e, a4~  a8 gis4
  | a8 r r \oneVoice gis,16 a b gis fis e  fis e fis a gis fis
  | gis16 b a gis a b  cis b cis d e fis  gis b a gis fis a
  %25
  | gis16 a b fis e d!  cis8 r r  r \voiceOne cis a
  | d b e  cis fis e  a fis4\trill
  | e16 fis gis e gis a  b8 r r  r4 r8
  | \override MultiMeasureRest.staff-position = #5
     R1*9/8
  | r8 b16 a gis fis  e fis gis e d! cis  d cis d fis e d
  %30
  | cis8 a[ d]  cis a' d,  b e cis
  | d8 r r  r e, a  fis b cis~
  | cis8 d g~  g fis e  a, d cis
  | d8 fis16 e d cis  b8 e4~  e8 d4~
  | d8 cis4  r16 b ais! b cis d  e d e fis g e
  %35
  | ais16 fis b a g fis  e d cis b ais b  g'! fis e d cis b
  | b8 d4~  d8 b e  cis fis dis
  | b4.~  b8 gis cis  a4.~
  | a8 b4~  b8 a eis  fis4.~
  | fis8 dis gis  eis16 cis dis eis fis gis  \oneVoice a fis gis a b cis
  %40
  | d!16 b cis dis eis fis  d e d cis b a  gis b a gis fis eis
  | \voiceOne b'4.~  b16 a b gis a8~  a16[ b] gis8.\trill fis16
  | \highlightSubject { \unHighlightSubject fis8 } cis( fis  e!4 a8  fis b gis)
  | cis8 a d~  d cis b  e, a4~
  | a8 gis b  e, a4  gis8 cis a
  %45
  | d4.  cis8 fis4~  fis8 e d~
  | d8 cis4~  cis8 b a~  a gis b
  | e4.~  e4 d8~  d cis4~
  | cis8 b d  gis, e' cis  fis b,4
  | a8 e'16[ d cis b]  a b cis a g fis  g fis g b a g
  %50
  | fis8 d[ a']  gis! e' a,  fis' b, gis'
  | a8 e4~  e8 d fis  b,4.~
  | b8 a g  fis4.  b8 e, a
  | d,4.~  d8 cis a'~  a a gis
  | a2.\fermata
    \fine
}

Alto = \context Voice = "two" \relative {
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \voiceTwo R1*9/8
  | \highlightSubject { e'8 e\rest e\rest  e\rest cis fis  e a fis
  | b8 gis cis  b e \unHighlightSubject a,~ }  a gis b
  | e,8 a fis  gis4.  cis8 a d
  %5
  | b8 e d~  d cis4  b8 e fis
  | b,8 e d!~  d cis16 b cis a  gis8 e a
  | fis8 b a~  a gis a  d,4.~
  | d8 cis e  a,4. d~
  | d8 cis[ fis]  b, e gis~  gis fis gis~
  %10
  | gis8 a b  cis4.  b4 a8~
  | a8 gis cis  fis, b4~  b8 a!4
  | gis!4.~  gis8 fis4~  fis8 eis gis~
  | gis8 fis e!  d4 cis8~  cis b b'
  | eis,8 fis4  gis8 ais b  e,4.
  %15
  | d4 g8  fis e4  d cis8
  | d8 fis b  gis!4 cis8  b e cis
  | b4.~  b8 a cis  fis,4.~
  | fis8 e gis  cis,4.  fis8 b, e
  | cis4.  b4 e8~  e e dis!
  %20
  | e8 e\rest e\rest  e\rest a e  fis b fis
  | gis4 e8\rest  e a fis  b gis cis
  | a8 d4~  d8 cis fis  b,8. fis'16 e d
  | cis16 d e cis b a  s2.
  | s2. s4.
  %25
  | \change Staff = "lower" \voiceThree
    e8 f\rest f\rest  f\rest cis fis  e
    \change Staff = "upper" \voiceTwo
    a fis
  | b gis cis  a d cis  fis dis4
  | \highlightSubject { e8 r r  r dis, gis  e a fis
  | b8 gis cis  b e \unHighlightSubject a,~ }  a gis a
  | gis8 g\rest g\rest  f4\rest f8\rest  f4\rest f8\rest
  %30
  | R1*9/8
  | e8\rest a, d~  d cis fis  d g e
  | a8 fis b  a d g,~  g fis e
  | fis8 e\rest e\rest  e16\rest d' cis b ais gis!  fis cis' b a g fis
  | e16 b' ais gis! fis e  d!8
    \showStaffSwitch
    \change Staff = "lower" \voiceThree
    e4  fis8
    \change Staff = "upper" \voiceTwo
    b4
  %35
  | cis8
    \change Staff = "lower" \voiceThree
    fis,4
    \change Staff = "upper" \voiceTwo    
    g8 e fis
    \change Staff = "lower" \voiceThree
    b, ais4
    \change Staff = "upper" \voiceTwo    
  | e'8\rest fis b  gis4.~  gis8 cis a~
  | a8 gis dis  e4.~  e8 cis fis
  | dis8 gis eis  cis4.~  cis8 a d
  | b4.~  b8 a b
    \change Staff = "lower" \voiceThree
    eis, c'\rest c\rest
    \hideStaffSwitch
  %40
  | s2. s4.
  | \change Staff = "upper" \voiceTwo e8\rest gis dis  eis cis fis~  fis eis!4
  | \highlightSubject { fis8 f,\rest f\rest  f\rest gis cis  a d b
  | e8 cis fis  e a \unHighlightSubject d,~ }  d cis dis
  | e8 b d!~  d cis dis  e4 fis8~
  %45
  | fis8 b e,~  e
    \change Staff = "lower" \voiceThree
    d! cis  b
    \change Staff = "upper" \voiceTwo
    gis' b
  | e,4.~  e8 d fis
    \showStaffSwitch
    \change Staff = "lower" \voiceThree
    b,4.~
  | b8 a cis  
    \change Staff = "upper" \voiceTwo
    fis4.  b8 e, a
  | fis4.  e4 a8~  a8 a gis
  | a8 f\rest f\rest  c4\rest b8\rest  b4\rest b8\rest
  %50
  | R1*9/8
  | r8 cis'4~  cis8 b a~  a gis e
  | cis8 d e~  e a, d~  d cis4~
  | cis8 b d  gis, e' cis  \voiceTwo fis b,4
  | cis2. 
}

Bass = \context Voice = "four" \relative {
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*9/8 * 3
  | \highlightSubject { a8 r r  r gis cis  a d b
  %5
  | e8 cis fis  e a \unHighlightSubject d,~ }  d b dis
  | \highlightSubject { e,8 r r  r cis fis  e a fis
  | b8 gis cis  b e \unHighlightSubject a,~ }  a gis b
  | cis,4.~  cis8 a d  b e e,
  | a8 a'4~  a8 gis e  fis b, e
  %10
  | cis8 fis d  a' fis b  e, a fis
  | cis'4 b8  ais b e, fis4.~
  | fis8 eis gis  a,!4 b8  cis4 cis,8
  | \highlightSubject { fis8 r r  r eis' a  fis b gis
  | cis8 a d  cis fis \unHighlightSubject b,~ } b gis ais
  %15
  | b8 b, e  d g e  fis4 fis,8
  | \highlightSubject { b8 r r  r e a  gis! cis a
  | dis8 b e  \unHighlightSubject a,4.~ }  a8 b fis
  | gis4.~  gis8 cis, fis  dis e4
  | a,4.~  a8 gis cis  a b4
  %20
  | e,8 r r  r4 r8  r4 r8
  | R1*9/8 * 2
  | \highlightSubject { a8 r r  r gis cis  a d b
  | e8 cis fis  e a \unHighlightSubject d,~ }  d cis dis
  %25
  | e8 fis gis  a r r  r a, d
  | b8 e cis  fis d a'  fis b16 a gis fis
  | gis16 a b gis fis e  dis e fis dis cis b  cis b cis e dis cis
  | dis16 fis e dis e fis  gis fis gis a b cis  dis fis e dis cis b
  | e8 e,[ a]  gis e' a,  fis' b, gis'
  %30
  | a16 fis e d cis b  a b cis a g fis  g fis g b a g
  | fis16 g a fis e d  a'8. fis16 g a  b a g b a g
  | fis16 e d fis e d  cis a b cis d e  fis g a fis g a
  | \highlightSubject { d,8 r r  r cis fis  d g e
  | ais8 fis b  gis! cis ais! } d b e~
  %35
  | e8 d cis  b g d \stemDown e fis fis,
  | \stemNeutral b16 fis' b a! gis! fis  e fis e d cis b  a b a gis fis e
  | dis16 b' e dis cis b  cis gis' cis b a gis  fis gis fis e dis cis
  | b16 cis b a gis fis  eis cis' fis e! d! cis  d e d cis b a
  | gis16 a gis fis eis dis  cis8 \voiceTwo a'[ d!]  cis fis dis
  %40
  | \oneVoice gis8 eis a  fis b gis  cis a d~
  | d16 e! d cis b a  gis8 eis fis  b, cis cis,
  | fis8 a fis  cis'4 a8  d b e
  | cis8 fis d  a' a, b  cis fis b,
  | \highlightSubject { e8 r r  r cis fis  e a fis
  %45
  | b8 gis cis  a d! fis, }  gis e gis
  | a8 a, cis  d,4 d'8~  \stemDown d e b
  | cis4._~  cis8 fis, b  gis a4
  | d,8 d'4~  d8 cis fis  d e e,
  | a8 a[ d]  cis a' d,  b' e, cis'
  %50
  | d16 cis b a gis! fis  e fis gis e d cis  d cis d fis e d
  | cis16 b a b cis a  d cis d e cis d  e d e fis d e
  | fis16 gis fis e d cis  d e d cis b a  gis! b a gis fis e
  | fis16 a gis fis e d  cis \voiceTwo cis'[ d e fis gis] a d, e8 e,
  | \oneVoice a2._\fermata 
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 864"
    title = \markup { "Fuga XIX " \char ##x007E " à 3" }
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
