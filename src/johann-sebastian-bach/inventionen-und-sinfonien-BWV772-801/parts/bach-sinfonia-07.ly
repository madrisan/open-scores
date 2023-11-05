Global = {
  \key e \minor
  \time 3/4
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
  \override MultiMeasureRest.staff-position = #4
  %1
  | \stemNeutral b8\rest b[ e fis] g4~
  | g8 fis a g fis e
  | \stemUp dis16 cis b cis d8 e fis4~
  | fis8 e g fis e d
  %5
  | cis cis[ fis g!] a4~
  | a8 fis a g fis e
  | dis fis g a b g
  | e4~ e8[ e fis g]
  | a4 g2~
  %10
  | g8 e g fis e d
  | cis4. d8[ e fis]
  | g4 fis8 e d4~
  | d8 cis e d cis\prall b
  | b4 r r
  %15
  | R2.
  | r8 fis[ b cis] d!4~
  | d8 cis e d cis b
  | ais16 fis' e d cis fis cis b ais cis ais gis
  | fis4 r fis'~
  %20
  | fis16 b g fis e g e d cis g' cis, b
  | a4 r e'~
  | e16 a fis e d fis d cis b fis' b, a
  | g2.~
  | g2.
  %25
  | fis8 a[ d e] fis4~
  | fis8 e g fis e d
  | cis16 e a g fis a fis e d a' d, cis
  | b d g fis e g e d cis g' cis, b
  | a2~ a16 a g fis
  %30
  | g e ais b cis fis, cis' d e fis g e
  | \stemDown fis g fis e d fis d cis b f' b, a!
  | \stemUp gis fis! gis a b gis b c \stemDown d gis, d' e
  | f b e, d c e c b a e' a, g!
  | \stemUp fis!16 e fis g a fis a b c fis, c' d
  %35
  | \stemDown ees a ees d c ees c bes \stemUp a c a g
  | fis e! dis e fis dis fis g a dis, a' b!
  | c8 b[ e fis] g4~
  | g8 fis a g fis e
  | dis4 d2~
  %40
  | d8 gis, a b c4~
  | c8 e[ a b] c4~
  | c16 b a g fis a dis, e fis4~
  | fis16 b dis, e e4 dis\prall
  | e2.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-8
  \stemDown\tieDown
  \override VoiceFollower.color = \grayTextColor
  %1
  | \stemDown R2.
  | R2.
  | r8 \staffLower fis[ \staffUpper b cis!] d4~
  | d8 cis e d cis b
  %5
  | ais16 gis fis gis a8 b c4~
  | c8 a c b a g
  | fis4 r8 b[ e d!]
  | cis4~ cis8[ c dis e]
  | fis4. b,8[ e d!]
  %10
  | cis4. d8[ cis b]
  | ais4. b8[ cis! d]
  | e8 d cis4. fis,8
  | b2 ais4
  | b8 b,[ e fis] g4~
  %15
  | g8 fis a g fis e
  | dis4 r8 fis b16 a g fis
  | e4. fis8[ g e]
  | \showStaffSwitch cis \staffLower fis,[ cis' d] e4~ \hideStaffSwitch
  | e16 \staffUpper g! fis e d fis d cis \staffLower b \staffUpper fis' \staffLower b, a!
  %20
  | \showStaffSwitch g4 \staffUpper r g'~ \hideStaffSwitch
  | g16 g e d cis e cis b \staffLower a \staffUpper e' \staffLower a, g
  | \showStaffSwitch fis4 \staffUpper r fis'~
  | fis8 e16 d cis e cis b a8 b
  | cis8 a16 b cis8 e a, cis
  %25
  | \hideStaffSwitch d \staffLower d,16 e fis d fis g a d, a' b
  | cis a cis d \staffUpper e a, e' fis g a b g
  | a2.
  | g2.~
  | g16 g fis e d fis d cis b4~
  %30
  | b8 b\rest b4\rest b\rest
  | \staffLower a8\rest fis[ b cis] d4~
  | d8 b d c! b a
  | gis e[ a b] c4~
  | c8 a c b a g
  %35
  | fis4. g8 a4~
  | a8[ g c b a g]
  | fis4 \staffUpper r r8 b'
  | e d! c b a g
  | fis c' b a gis b
  %40
  | e,4 fis8[ gis a] e
  | a b c e a g
  | fis4 g,\rest g16\rest c b a
  | g4 fis8 g a4
  | gis2.
    \fine
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | e8 e, r b''[ e d]
  | c4. b8[ a c]
  | b4. a8[ g fis]
  | e4. fis8[ g e]
  %5
  | fis4~ fis16 g! a g fis e dis e
  | dis4 r8 e[ c a]
  | b b'[ e fis] g4~
  | g8 fis a g fis e
  | dis b e d cis b
  %10
  | ais4. b8[ cis d]
  | e16 d e fis g8 fis e d
  | cis b ais fis b a
  | g e fis4 fis,
  | b16 fis'[ b a!] g b g fis e b' e, d
  %15
  | c g' e d c e c b a b c a
  | b g' fis e d! fis d cis  b fis' b, a
  | g d' b a g b g fis e fis g e
  | fis8 fis'[ ais b cis! fis,]
  | b4 r8 \stemDown b,[ cis d]
  %20
  | e4 r8 fis[ e d]
  | cis4 r8 a[ b cis]
  | d4 r8 e[ d cis]
  | b16 b' g fis e g e d cis g' cis, b
  | a e' cis b a cis a g a g fis e
  %25
  | d8 c\rest c4\rest c\rest
  | R2.
  | r8 a'8[ d e] fis4~
  | fis8 e g fis e d
  | \stemNeutral cis fis,[ b cis] d4~
  %30
  | \stemDown d8 cis e d cis b
  | ais4 b r8 d
  | e d f e d c
  | b gis a4 b8\rest c
  | d c e d c a
  %35
  | d a[ d e!] \tieDown fis4~
  | fis8 e a g fis e
  | dis4 b8\rest b[ e d]
  | \stemUp c2.~ \stemDown \tieUp
  | c16 c' b a gis b gis fis e b' e, d
  %40
  | c f e d \stemUp c e c b a e' a, g!
  | fis! d' c b a c a g fis c' fis, e
  | dis4 r r
  | e b'2
  | e,2.\fermata
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
    opus = "BWV 793"
    title = \markup { "Sinfonia VII " \char ##x00b7 " e-Moll" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4 = 58
  }
}
