Global = {
  \key d \major
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

voiceOneOssia = \relative c'' {
  %1
}

voiceThreeOssia = \relative c {
  %1
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieUp
  %1
  | r8 fis16 g a8 c, b e16 fis g8 b,
  | a d16 e fis8 a, g16 fis' e d cis b' a g
  | fis e d e fis e fis gis a4 e~
  | e d~ d cis~
  %5
  | cis16 e d cis b8 gis' a2~
  | a16 cis, d e fis g fis e dis b cis! dis e fis e d
  | cis a b cis d e d cis b4 e~
  | e8[ a,] d8.[ e16] cis b a b cis b cis dis
  | e8[ b] e8.[ fis16] d! cis b cis d cis d e
  %10
  | fis[ e] d[ e] fis8 a,! gis cis16 d e8 g,
  | fis b16 cis d8 fis, e16 d' cis b ais g' fis e
  | d cis b cis d b cis d eis, gis a b cis4~
  | cis16 fis, gis a b4~ b16 eis, fis gis a4~
  | a16 a gis fis eis4 fis8 fis'16[ g!] a8 c,
  %15
  | b4 fis'~ fis16 g fis e dis c' b a
  | g a g fis e fis g e cis!8 e16 fis g8 b,
  | a2( a16) g fis g a g a b
  | c b c d e d c b a g a b c b c d
  | b a g a b c d8~ d4 c~
  %20
  | c b~ b8[ g'] a,[ fis']
  | g16 d e fis g b a g fis e d e fis g fis e
  | dis b cis! dis e fis e d cis a b cis d e d cis
  | b a g fis e8 cis' d fis16 g a8 c,
  | b e16 fis g8 b, a d16 e fis8 a,
  %25
  | g16 fis' e d cis4 d2\fermata \bar "|."
   \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \stemDown\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | R1*2
  | e2\rest r8 cis'16 d e8 g,!
  | fis b16 cis d8 fis, e a16 b cis8 e,
  %5
  | d16 cis' b a gis fis' e d cis b a b cis a b cis
  | d4 a2 g4~
  | g fis~fis16 a g fis e d' cis b
  | a g fis g a gis a b e,2~
  | e8 g16 a b a b cis fis,4 \staffLower b,~
  %10
  | b16 ais b cis d e d cis b gis ais b cis d cis b
  | ais fis gis ais b4~ b16 b cis d e8 ais,
  | b a! gis fis gis4~ gis16 \hideStaffSwitch \staffUpper gis'! fis e!
  | dis4~ dis16 fis e d cis4~ cis16 e d! cis
  | b4~ b16 d cis b a8 b\rest a4\rest
  %15
  | b8\rest fis'16 g a8 \staffLower c, b2~
  | b8 e16 fis g8 b, a4 e'~
  | e16 \staffUpper fis e d \staffLower cis \staffUpper b' a g fis4 c\rest
  | e8\rest a16 b c!8 e, fis16 \mergeDifferentlyDottedOn g8.~ g8 fis
  | g4 e16\rest c' b a gis e fis! gis a b a g
  %20
  | fis d e fis g a g fis e8 d\rest c4\rest
  | e2\rest \showStaffSwitch e8\rest \staffLower fis16 g \staffUpper a8 \hideStaffSwitch \staffLower c,
  | b e16 fis \staffUpper g8 \staffLower b, a d16 e \staffUpper fis8 \staffLower a,
  | g16 \staffUpper fis' e d \staffLower cis \staffUpper b' a g fis8 a~ a4~
  | a g2 fis4~
  %25
  | fis16 a g fis e b' a g fis2
    \fine
}

VoiceThree = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\tieDown
  %1
  | d4 r8 fis, g4 r8 e
  | fis4 r8 d b'[ g a a,]
  | d d' cis b a16 gis a b cis d cis b
  | ais fis gis ais b cis b a gis e fis gis a b a g
  %5
  | fis8[ d e e,] a16 b cis d e fis g! e
  | fis[ e] fis[ g] a8 c, b e16 fis g8 b,
  | a d16 e fis8 a, g16 fis' e d cis b' a g
  | fis e d e fis e fis gis a8[ e] a8.[ b16]
  | g!16 fis e fis g fis g a b8 a g4
  %10
  | fis2~ fis4 e~
  | e r16 d e fis g4 fis
  | b,2~ b4 a~
  | a~ a16 a' gis fis eis cis dis eis fis8 b,16 cis
  | d8[ b cis cis,] fis4 r8 fis'16 g
  %15
  | a g a b c fis, g a dis,8 fis16 g a8 dis,
  | e4 r8 e16 fis g fis g a b e, fis g
  | cis,8 e16 fis g8 cis, \stemNeutral d a16 b c8 e,
  | d1
  | g8 \stemDown b'16[ c] d8 f, e a16 b c8 e,
  %20
  | d g16 a b8 d, c16 b' a g fis e' d c!
  | b a g a b a b cis! d4 a~
  | a g~ g fis~
  | fis16 e fis g a g fis e d cis d e fis g fis e
  | dis b cis! dis e fis e d \stemNeutral cis a b cis d e d cis
  %25
  | b8[ g' a a,] d,2\fermata
    \fine
}

\score {
  <<
  \new Staff = "ossiaupper" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
  }
  { \voiceOneOssia }
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
        \VoiceTwo
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceThree
      >>
    >>
  }
  \new Staff = "ossialower" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
    \clef bass
  }
  { \voiceThreeOssia }
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 789"
    title = \markup { "Sinfonia III (D-Dur)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4 = 80
  }
}
