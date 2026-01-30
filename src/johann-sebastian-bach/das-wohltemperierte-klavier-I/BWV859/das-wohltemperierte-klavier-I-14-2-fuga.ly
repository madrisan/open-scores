Global = {
  \key fis \minor
  \time 6/4
  \include "../global.ly"
  \set Staff.extraNatural = ##t
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | R1*6/4*3
  | \override MultiMeasureRest.staff-position = #5
    R1*6/4*4
  | \override MultiMeasureRest.staff-position = #7
    R1*6/4
  | \override MultiMeasureRest.staff-position = #5
    R1*6/4*6
  %15
  | r4
    \once\override NoteColumn.force-hshift = #0.2 fis
    gis a2.~
  | a4 gis8 ais b4~ b ais!8 gis ais bis
  | cis4. b8 a cis b a gis2
  | fis8 a b cis d4~ d8 b cis dis e4~
  | e8 d d cis cis bis bis4 cis2~
  %20
  | cis4 bis2 cis8 dis e fis g4~
  | g cis, fis8 e d cis d2
  | cis4 dis eis fis2.~
  | fis2 e4~ e d2~
  | d4 cis2~ cis4 b2~
  %25
  | b8 gis a cis fis dis e2.~
  | e4 dis8 eis fis4~ fis eis!8 dis! eis fisis
  | gis4. fis8 e gis fis e dis2\trill
  | cis8 e fis gis a4~ a8 fis gis ais b4~
  | b8 a a gis gis fis gis[ a16 gis fis8 e! e dis]
  %30
  | dis e e d d cis cis2~ cis8 dis
  | eis fis gis4 cis, fis2 eis!4
  | fis8 e d cis cis b b fis' b, a a gis
  | gis4. b8 a gis fis eis fis a b cis
  | d2.~ d8 gis, cis b b a
  %35
  | a2.~ a8 cis b a a gis
  | gis2.~ gis8 b a g g fis
  | fis eis fis4 gis a2.~
  | a4 gis8 ais b4~ b ais!8 gis ais bis
  | cis4. b8 a cis b a gis2
  %40
  | fis1.\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #-4
  %1
  | R1*6/4*3
  | r4 cis dis e2.~
  %5
  | e4 dis8 eis fis4~ fis eis!8 dis! eis fisis
  | gis4. fis8 e gis fis e dis2\trill
  | cis8 e fis gis a4~ a8 fis gis ais b4~
  | b8 b b a a gis gis fis fis e e dis
  | dis e e d d cis cis2^~ cis8 dis
  %10
  | eis fis gis4 cis, fis2 eis!4
  | fis2. e4 fis8 gis a4
  | gis2. fis
  | e4. fis8 g4~ g fis8 e d cis
  | d4. e8 fis4~ fis e8 d cis b
  %15
  | cis4 \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #-0.6
    dis
    \once\override NoteColumn.force-hshift = #-0.4 eis
    fis2.~
  | fis4 gis fis eis fis8 eis fis4
  | gis2
    \once\override NoteColumn.force-hshift = #0.25
    \once\stemUp fis4~
    fis8 e d4 cis~
  | cis4. gis'8 a b e,4. a8 b cis
  | fis,2.~ fis8 fis fis e e dis
  %20
  | dis gis gis fis fis e e4 cis' b
  | ais2.~ ais4 b8 a gis4~
  | gis a8 b a gis fis4. gis8 a fis
  | gis a b2 cis fis,4
  | b4. e,8 fis gis a2 dis,4
  %25
  | cis2 a'4 gis8 cis cis b b ais
  | ais b b a a gis gis2~ gis8 ais
  | bis cis dis4 gis, cis2 bis!4
  | cis4. b8 cis dis e4. cis8 dis! eis
  | fis4 fis, eis fis8 cis fis gis a fis
  %30
  | b4. fis8 gis a eis8 cis fis4 cis~
  | cis8 dis eis4 fis8 e d cis b2
  | a8 cis fis2~ fis2.~
  | fis8 fis e2 d4 r8 fis gis ais
  | b a gis fis eis fis eis fis gis2~
  %35
  | gis8 gis fis e e dis dis2.~
  | dis8 fis e d d cis cis2.~
  | cis4 b2 r8 gis' fis e e dis
  | dis e e d d cis cis2~ cis8 dis
  | eis4 fis8 eis fis4~ fis2 eis!4
  %40
  | cis1.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemNeutral\tieNeutral
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  \mergeDifferentlyDottedOn
  %1
  | d4\rest fis gis a2.~
  | a4 gis8 ais b4~  b ais8 gis ais bis
  | cis4. b!8 a! cis  b a gis2^ \trill
  | fis2. d8\rest cis' cis b b ais
  %5
  | ais8 b b a a gis  gis2~ gis8 ais
  | bis8 cis dis4 gis,  cis2 bis4
  | \change Staff = "upper" \voiceTwo
    cis4.
    \change Staff = "lower" \voiceThree
    b!8 cis dis  e4. cis8 dis eis
  | \change Staff = "upper" \voiceTwo
    fis4 cis b cis
    \change Staff = "lower" \voiceThree
    a fis
  | b2. eis,8 cis fis4
    \change Staff = "upper" \voiceTwo
    cis'~
  %10
  | cis8 dis eis!4 fis8 e d cis b2~
  | b8 a b cis d4~ d8 cis dis eis fis4~
  | fis8 fis e dis cis b ais4 bis8 cis dis!4~
  | dis8 dis cis4 b ais8 b cis2~
  | cis8 cis b4 a
    \change Staff = "lower" \voiceThree
    gis8 a
    \change Staff = "upper" \voiceTwo
    b2~
  %15
  | b8 d
    \once\override NoteColumn.force-hshift = #0.2 cis
    b b a
    \once\override NoteColumn.force-hshift = #0.4 a
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    b cis2
  | b2. cis~
  | cis8 dis eis4
    \change Staff = "upper" \voiceTwo
    \once\override NoteColumn.force-hshift = #0.25 fis8[
    \change Staff = "lower" \voiceThree
    e d cis] b a gis b
  | a4 r r s2.
  | s1.*15
  %34
  | r8 fis b4. a8 gis4. gis8 cis4~
  | cis8 e dis cis cis b b2.~
  | b8 d cis b b a a2.~
  | a4. a8 gis fis eis b' a gis gis fis
  | fis gis gis fis fis eis eis4 fis8 eis fis4
  | gis cis2 r8 fis, cis' b b ais
  %40
  | ais1.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-8
  %1
  | R1*6/4*7
  | \override MultiMeasureRest.staff-position = #0
    \stemNeutral
    r4 fis, gis a2.~
  | \once\stemDown a4 gis8 ais b4~ \stemDown b4 ais!8 gis ais bis
    \stemNeutral\tieNeutral
  %10
  | cis4. b8 a cis b a gis2\trill
  | fis4. e8 fis gis a2~ a8 b
  | cis bis cis dis e4~ e8 fis e dis cis bis!
  | cis4. cis8 d e fis4. fis,8 gis ais
  | b4. b8 cis d e4. e,8 fis gis
  %15
  | a b a gis gis fis \stemDown\tieDown fis fis' fis e e dis
  | dis e e d d cis cis2~ cis8 dis
  | eis fis gis4 cis, fis2 eis4
  | fis4. eis8 fis gis a4. fis8 gis ais
  | \stemNeutral\tieNeutral b b, b a! a gis gis a' a gis gis fis
  %20
  | fis4 gis gis, cis4. cis8 d! e
  | fis8 g fis e d cis b d gis, fis fis eis
  | eis eis' fis gis gis a a d d cis cis b
  | b a gis d' cis b ais b b a a gis
  | gis fis e b' a gis fis gis gis fis fis eis
  %25
  | eis4 fis fis, cis'8 dis e fis g e
  | fis fis, b cis d b cis cis, cis' bis cis e
  | dis cis bis gis cis e a fis gis fis gis gis,
  | cis4 d\rest d\rest d2\rest d4\rest
  | d\rest fis gis a2.~
  %30
  | a4 gis8 ais b4~ b ais!8 gis ais bis
  | cis4. b8 a cis b a gis2
  | r4 fis e dis2.~
  | \stemDown\tieDown dis4 e8 d cis4~ cis d8 e! d cis
  | b4. cis8 d b cis dis! eis2
  %35
  | fis2.~ fis8 a gis fis fis e
  | e2.~ e8 gis fis e e d
  | d2. cis~
  | cis cis~
  | cis8 b a gis fis a d b cis4 cis,
  %40
  | fis1.\fermata
    \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak
 % page 2
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
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
    opus = ##f % "BWV 859"
    title = \markup { "Fuga XIV " \char ##x007E " à 4" }
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
