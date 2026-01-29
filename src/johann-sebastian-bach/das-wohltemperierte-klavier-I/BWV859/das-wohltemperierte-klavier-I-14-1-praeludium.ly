Global = {
  \key fis \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'Praeludium14
  %1
  | r8 cis d16 cis b d  cis b a cis  b a gis b
  | a gis fis a  cis8-. a'-.  bis,-. gis'-.  gis,-. fis'-.
  | cis8-. e-.  a,16 gis fis a  b!8-. d-.  gis,16 fis e gis
  | a8-. cis-.  b16 cis d fis  a, b cis fis  gis, a b eis
  %5
  | fis,8-. a-.  b16 cis d b  gis8-. b-.  cis16 d e cis
  | a8-. cis-.  fis16 e d fis  e d cis e  d cis b d
  | cis16 b a gis  a b cis e  gis, a b e  fis, gis a dis
  | e,8-. gis'~  gis16 e cis bis  cis8-. a'~  a16 fis dis cis
  | bis16 dis gis cis,  a' gis fis a  gis fis e gis  fis e dis fis
  %10
  | e16 dis cis e  gis8-. b,!-.  a16 gis fis a  fis'8-. dis!-.
  | bis16 ais gis e'  a, gis fis dis'  gis, fis e cis' fis, e dis bis'
  | cis16 bis cis fis  dis8.\prallprall cis16 \voiceOne cis2~
  | cis2~ cis8 \oneVoice r fis,16 gis a cis
  | e,16 fis gis cis  dis, e fis bis  cis8-.[ cis,-.] \voiceOne <fis cis'> r
  %15
  | <fis d'!>8_. r <e ais>_. b'\rest \voiceOne b16 a gis fis  gis a b gis
  | \oneVoice a16 b cis a  b cis d b  cis b a gis  fis e' d cis
  | b16 a gis fis  eis d' cis b  a gis fis e  d a' gis fis
  | eis16 dis cis8  r16 b' a gis  a b cis d! \voiceOne b8.\prall cis16
  | \oneVoice \stemUp cis8^. d\rest eis^. d\rest fis^. d\rest gis^.\arpeggio d\rest
  %20
  | \stemNeutral r16 cis fis e  d! cis b d  cis b a cis  b a gis b
  | a16 b cis d  eis, d' cis b  a gis a fis  eis8.\prallprall fis16
  | fis1^~
  | fis8 r b,16 cis d fis  a, b cis fis  gis, a b eis
  | \voiceOne fis4~ fis16 fis8 eis16 
    << { 
      \stemDown ais,2
    } \\ { 
      \once\override NoteColumn.force-hshift = #0.3 \stemUp cis
    } \\ {
      \once\override NoteColumn.force-hshift = #0 fis\fermata 
    } >>
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | s1*11
  | s2 r8 gis a16 gis fis a
  | gis fis e gis fis e dis fis e8 s4.
  | s2. e8_. s
  %15
  | d8_. r cis_. r <b fis'>_. r s4
  | s1*2
  | s2. fis'4
  | << {
      \stemDown
      eis8 e\rest gis e\rest a e\rest eis!\arpeggio e\rest
    } \\ {
      s4 \stemUp
      \once\override NoteColumn.force-hshift = #0.2 b'8 s
      \once\override NoteColumn.force-hshift = #0.2 cis s
      \once\override NoteColumn.force-hshift = #0.2 cis s
    } >>
  | s1*4
  | r16 d, cis b a8 gis s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | a8-. r b-. r a-. r gis-. r
  | <fis, fis'>8_. s s2.
  | s1*12
  %15
  | s2. e''8 s
  | fis s gis s
    \showStaffSwitch
    \change Staff = "upper" \voiceTwo
    a16
    \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    s8. s4
  | s1*5
  %22
  | r16 a, b cis  d cis b d  cis b a cis  b a gis b
  | a8 r
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | fis1
  | s8 fis^. a16 gis fis a gis fis e gis fis e dis fis
  | e dis cis e fis8^. a^. d,16 cis b d e8^. gis^.
  | cis,16 b a cis  d cis b d  cis b a cis  b a gis b
  %5
  | a16 gis fis a  d8^. fis^.  b,16 a gis b  e8^. gis^.
  | cis,16 b a cis  d e fis a  cis, d e a  b, cis d gis
  | a,8 a'16 b  cis b a cis  b a gis b  a gis fis a
  | gis16 fis e gis  cis8^. e^.  a,16 gis fis a  dis8^. fis^.
  | gis,8^. e'^.  fis,[^. dis'^.]  e,^. cis'^.  dis,[^. bis'^.]
  %10
  | cis,8^. cis'^.  e,16 fis gis e  fis gis a fis  dis e fis dis
  | gis8^. cis,^.  fis[^. bis,^.]  e^. cis^.  dis[-. gis,-.]
  | a8-. fis-.  gis16 fis gis8  cis,-. r fis'^. r
  | e8^. r dis^. r  cis16 e fis gis  a gis fis a
  | gis16 fis e gis  fis e dis fis  e dis cis b!  ais b cis ais
  %15
  | b16 cis d! b  cis d e cis  \voiceTwo d8_. r d'_. r
  | cis_. r \oneVoice b_. r  a16 b cis a  d8-. fis,-.
  | gis16 a b gis  cis8-. eis,-.  fis16 fis, gis a  b cis d b
  | cis8. b'16  a gis fis eis  fis gis a fis  d'8-. d,-.
  | cis8-. cis'-.  d16 cis b d  cis b a cis  b a gis b
  %20
  | a16 gis fis a  b a gis b  a gis fis a  gis fis eis gis
  | fis8-. a,16 b  cis b a gis  fis8-.[ b-.] cis-. cis,-.
  | \voiceTwo fis8-. g\rest b-. g\rest a-. g\rest gis-. g\rest
  | fis16 a b cis  \oneVoice d cis b d  cis b a cis  b a gis b
  | a8-. b-. cis-.[ cis,-.]  fis2_\fermata
    \fine
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
  \new PianoStaff \with { connectArpeggios = ##t }
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
    title = \markup { "Praeludium XIV" }
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
