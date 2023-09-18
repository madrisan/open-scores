Global = {
  \key e \major
  \time 3/8
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | r16 e8[ dis d16]~
  | d[ cis8 b a16]~
  | a16[ gis8 fis gis32 a]
  | gis16[ b32 a b16 gis32 fis gis16 e32 dis]
  %5
  | e8[ fis gis]
  | a[ b cis]
  | dis[ e16 dis cis b]
  | e8[ e,] r
  | r16 gis'8[ e cis16]~
  %10
  | cis[ e32 dis e16 cis ais fis]~
  | fis[ fis'8 dis b16]~
  | b[ dis32 cis dis16 b gis e]~
  | e16[ e'8 cis ais16]~
  | ais[ gis'8 fis e16]~
  %15
  | e[ dis8 cis b16]
  | ais16[ e32 dis e16 ais32 gis ais16 b32 ais]
  | b16[ dis, cis b' cis, ais']
  | b8 r16 b[ dis fis]
  | b8 r16 b[ fis dis]
  %20
  | b[ fis dis b] r8
  }
  \repeat volta 2 {
  | b8[ cis dis]
  | e[ fis gis]
  | ais[ b16 ais gis fis]
  | b8[ b,] r
  %25
  | r16 b''8[ ais a16]~
  | a[ gis8 fis e16]~
  | e[ dis8 cis dis32 e]
  | dis16[ fis32 e fis16 dis32 cis dis16 b32 ais]
  | b16[ dis32 cis dis16 gis32 fisis gis16 cis,32 b ]
  %30
  | cis16[ e32 dis e16 ais32 gis ais16 dis,32 cis]
  | dis16[ gis32 fisis gis16 b32 ais b16 dis,32 cisis]
  | dis16[ ais'32 gis ais16 fisis32 eis fisis16 dis32 cisis]
  | dis16[ a'!8 gis fis16]~
  | fis[ e32 dis e16 cis32 bis cis16 e32 dis]
  %35
  | e16[ gis8 fis e16] ~
  | e[ dis32 cis dis16 b32 ais b16 cis32 b ]
  | cis16[ e8 dis cis16]~
  | cis[ b32 ais b16 gis32 fisis gis16 a32 gis]
  | a16[ cis32 b cis16 a32 gis a16 e'32 dis]
  %40
  | e16[ fisis,32 eis fisis16 ais32 gis ais16 b,32 ais]
  | b16[ gis' e cis ais fisis']
  | gis[ dis b gis] r8
  | e'8[ fis gis]
  | a[ b cis]
  %45
  | dis![ e16 dis cis b]
  | e8.[ b32 a b16 gis32 fis]
  | gis16[ e'8 dis d16]~
  | d[ cis8 b a16]~
  | a[ gis8 fis gis32 a]
  %50
  | gis16[ b32 a b16 gis32 fis gis16 e32 dis]
  | e8[ fis a]
  | b[ dis fis]
  | dis,[ e gis]
  | a[ cis e]
  %55
  | cis,[ fis a]
  | b[ cis dis]
  | e[ cis a]
  | fis'4.~
  | fis16[ e dis cis b a]
  %60
  | gis16[ e32 dis e16 gis32 fis gis16 b32 a ]
  | b16[ gis32 fis gis16 b32 a b16 e32 dis]
  | e16[ b gis e] r8
  }
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | e8[ fis gis]
  | a[ b cis]
  | dis![ e16 dis cis b]
  | e8[ e,] r
  %5
  | r16 e8[ dis d16]~
  | d[ cis8 b a16]~
  | a16[ gis8 fis gis32 a]
  | gis16[ b32 a b16 gis32 fis gis16 e32 dis]
  | e8[ cis' e]
  %10
  | fis[ ais cis]
  | dis,,[ b' dis]
  | e[ gis b]
  | cis,,[ cis' e]
  | fis[ gis ais]
  %15
  | b[ e, gis]
  | fis16[ cis' ais cis e, cis']
  | dis,8[ e fis]
  | b,16[ b'32 ais b16 fis32 e fis16 dis32 cis]
  | dis16[ fis32 e fis16 dis32 cis dis16 b32 ais]
  %20
  | b4 b,8
  }
  \repeat volta 2 {
  | r16 b''8[ ais a16]~
  | a[ gis8 fis e16]~
  | e[ dis8 cis dis32 e]
  | dis16[ fis32 e fis16 dis32 cis dis16 b32 ais]
  %25
  | b8[ cis dis]
  | e[ fis gis]
  | ais[ b16 ais gis fis]
  | b8[ b,] r
  | gis'[ b dis]
  %30
  | fisis,[ ais dis]
  | gis,[ b dis]
  | dis,[ dis' cis]
  | bis[ cis dis]
  | gis,[ cis b!]
  %35
  | ais[ b cis]
  | fis,[ b dis ]
  | fisis,[ gis! ais]
  | dis,[ gis b]
  | cis, r cis'~
  %40
  | cis[ ais fisis]
  | gis[ cis, dis]
  | gis, r16 gis[ gis' fis]~
  | fis16[ e8 dis d16]~
  | d[ cis8 b a16]~
  %45
  | a[ gis8 fis gis32 a]
  | gis16[ b32 a b16 gis32 fis gis16 e32 dis]
  | e8[ fis gis]
  | a[ b cis]
  | dis![ e16 dis cis b]
  %50
  | e8.[ b'32 a b16 gis32 fis]
  | gis16[ cis8 a fis16]~
  | fis[ a32 gis a16 fis dis b]~
  | b[ b'8 gis e16]~
  | e[ gis32 fis gis16 e cis a]~
  %55
  | a16[ a'8 fis dis16]~
  | dis[ cis'8 b a16]~
  | a[ gis8 fis e16]
  | dis16[ a'32 gis a16 dis,32 cis dis16 gis32 fis]
  | gis8[ a b]
  %60
  | e, r16 e'[ b gis]
  | e[ b' gis e b gis]
  | e4 e'8
  }
}

\score {
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceTwo
      >>
    >>
  }
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 777"
    title = \markup { "Invention VI " \char ##x00b7 " E-Dur" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 8 = 104
  }
}
