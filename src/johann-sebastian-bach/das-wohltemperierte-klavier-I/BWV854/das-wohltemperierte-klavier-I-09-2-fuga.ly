Global = {
  \key e \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  %1
  | R1
  | d'4\rest d8\rest \highlightSubject { b cis4 d16\rest fis, gis ais
  | b ais b cis  dis e fis dis  \unHighlightSubject b } a! b cis  b a b cis
  | a gis a b  a gis a b  gis fis gis ais  b4~
  %5
  | b4 ais  b8 b' dis, fis
  | \once\override Tie.extra-offset = #'(0 . 1.4)
    b,2~ b8[ ais gis] \highlightSubject { e'
  | fis4 d16\rest b cis dis  e dis e fis  gis a b gis
  | \unHighlightSubject e } dis e fis  e dis e fis  dis cis dis e  fis gis a8~
  | a dis, gis4~  gis8 fis16 e dis4
  %10
  | e16 dis e fis  e dis e fis  dis cis dis e  fis4~
  | fis8 e16 dis e4~  e8 e dis cis
  | bis gis cis4~ \highlightSubject { cis8 dis  gis, ais16 bis
  | \stemNeutral cis bis cis dis  e fis gis e \unHighlightSubject cis } b cis dis  cis b cis dis
  | b ais b cis  dis e fis dis  b a b cis  b a b cis
  %15
  | a gis a b  cis dis e dis  dis cis dis e  fis gis a fis
  | gis fis e dis  cis b a gis  fis gis a fis  dis8 gis
  | \stemUp e8 gis cis[ b!]  e16 dis cis b  a4~
  | a8 dis, a'[ gis]  \stemNeutral cis16 b a gis  fis4~
  | fis8 e16 dis  e fis gis e  cis gis' fis e  dis8 r
  %20
  | r16 b cis dis e fis gis e cis'4  r16 fis, gis ais
  | \stemUp b16 ais b cis  dis e fis gis  a, gis a b  a gis a b
  | gis16 fis gis a  b cis d8~  d cis16 b cis4~
  | cis4 b r b~
  | b4 a r a~
  %25
  | a4 \stemNeutral \autoBeamOff gis8 \highlightSubject { e' \autoBeamOn fis4  r16 b, cis dis
  | e16 dis e fis  gis a b gis } a gis a b  a gis a b
  | gis16 fis gis a  gis fis e dis  \stemUp cis b cis d  cis b cis d
  | b16 cis dis! b  e2 dis4
  | e1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | r4 r8 \highlightSubject { e' fis4 r16 b, cis dis
  | e dis e fis gis a b gis \unHighlightSubject e } dis e fis  e dis e fis
  | dis cis dis e  fis gis a fis  gis8 b, e4~
  | e8 dis fis4~  fis8 b, e[ dis]
  %5
  | cis2 b8 r r4
  | r8 e'[ gis, b]  e, fis4 e8
  | e4 dis8 fis
    \showStaffSwitch \change Staff = "lower" \voiceOne
    b,4
    \change Staff = "upper" \voiceTwo
    r8 \highlightSubject { b'
  | cis4 r16 fis, gis ais  b ais b cis  dis e fis dis
  | \unHighlightSubject b } a! b cis  b a b cis  a gis a b  a gis a b
  %10
  | gis8 e a2~ a16 bis cis dis
  | gis,4. cis8  fis,2~
  | fis4 e8 a  dis,8 fis bis, dis
  | \change Staff = "lower" \voiceOne
    gis, r r4 r4 ais~
  | ais gis r gis~
  %15
  | gis4 fis r fis~
  | fis \autoBeamOff e8 \highlightSubject { cis' \autoBeamOn dis4 r16 gis, ais bis
  | \change Staff = "upper" \voiceTwo
    cis bis cis dis  e fis gis e  \unHighlightSubject cis } b cis dis  cis b cis dis
  | \change Staff = "lower" \voiceOne
    b16 gis a b cis dis e cis
    a gis a b  a gis a b
  | gis fis gis a  gis8 b~  b a16 gis  a
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    cis b a
  %20
  | \showStaffSwitch \change Staff = "lower" \voiceOne
    gis8 c\rest d4\rest c2\rest
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    r4 r8 \highlightSubject { e fis4  r16 b, cis dis
  | e dis e fis  gis a b gis \unHighlightSubject e } dis! e fis  e dis e fis
  | dis cis dis e  fis gis a fis  d cis d e  d cis d e
  | cis b cis d  e fis gis e  cis b cis d! cis b cis d
  %25
  | \showStaffSwitch \change Staff = "lower" \voiceOne
    b a b cis  b a b cis  a gis a b  a gis a b
  | gis8 b e,[ gis~]  gis fis~ fis4~
  | fis4 e4~  e8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    gis' a4~
  | a gis16 e fis gis  a8 b16 cis~  cis cis b a
  | gis1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*2
  | r2 r4 r8 \highlightSubject { e
  | fis4 r16 b, cis dis  e dis e fis  gis a! b gis
  %5
  | \unHighlightSubject e16 } dis e fis  e dis e fis  dis cis dis e  fis gis a! fis
  | gis16 fis gis a  b cis d b  cis b cis dis  e dis cis b
  | a16 gis a b  a fis a b  gis8 fis e dis
  | cis8 b' ais[ fis]  b r r4
  | r2 r4 r8 \highlightSubject { b
  %10
  | cis4 r16 fis, gis a  b a b cis  dis e dis cis
  | \unHighlightSubject bis16 } gis ais bis  cis dis e cis  a gis a b  a gis a b
  | gis16 e fis gis  a b cis a  fis e fis gis  fis e fis gis
  | \stemDown\tieDown e8 dis cis[ e]  ais, gis' fisis[ dis]
  | gis,8 ais b[ ais]  gis fis' eis[ cis]
  %15
  | fis,8 gis a![ gis]  fis e'! dis[ cis]
  | bis8 gis  a[ e'] fis e16 fis gis8 gis,
  | cis b\rest a4\rest g2\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1
  | g4\rest g8\rest \highlightSubject { e' fis4  b,16\rest b cis dis
  %20
  | e16 dis e fis  gis a b gis  \unHighlightSubject e } dis e fis  e dis e fis
  | dis8 fis b,[ e~]  e dis16 cis  dis8 b'
  | cis4 r8 gis  a gis a[ e]
  | fis8 d gis[ fis]  e fis gis[ e]
  | a8 b cis[ b]  a e fis[ cis]
  %25
  | dis!8 b e2 dis4~
  | dis4 cis  fis,8. cis'16 dis8 b
  | e8 b cis[ gis]  a8. e16 fis8 cis
  | dis!8 \highlightSubject { b'' cis4  r16 fis, gis a \unHighlightSubject b8 } b,
  | e,1\fermata
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak

  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
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
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 854"
    title = \markup { "Fuga IX " \char ##x007E " à 3" }
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
