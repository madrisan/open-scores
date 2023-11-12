Global = {
  \key g \major
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
  \override MultiMeasureRest.staff-position = #6
  %1
  | b8\rest g8.[ fis16 g a] b c d b
  | e d c b a g fis e d c' b a
  | b4~ b16 a b cis d4~
  | d2 cis4
  %5
  | d~ d16 cis d e fis g a fis
  | b a g fis e d c b a g'fis e
  | d4~ d16 d e fis g4~
  | g8 e c a fis'4~
  | fis8 d b g e'4~
  %10
  | e8 c a fis dis'4
  | e r e~
  | e d!8 c d4~
  | \stemNeutral d16 d c b a gis a b c d e c
  | f e d c b a gis fis! e d' c b
  %15
  | a gis a b c d e fis g! a b g
  | c b a g fis e dis cis b a' g fis
  | b a g fis e d! cis b a g' fis e
  | a g fis e d cis b a g fis' e d
  | g fis e d cis b ais gis fis e' d cis
  %20
  | fis e d cis \stemUp b2~
  | b2 ais4
  | b d8 e d c
  | b f' e d c b
  | c4~ c8 d c b
  %25
  | a e' d c b a
  | b4 g'\rest g~
  | g~ g16 b a g fis4
  | f~ f16 a g f e4~
  | e~ e16 g fis e d4~
  %30
  | d~ d16 f e d c4~
  | c16 c b a g fis g a b c d b
  | e d c b a g fis e d c' b a
  | b2.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-8
  \stemDown\tieDown
  \override VoiceFollower.color = \grayTextColor
  %1
  | R2.
  | R2.
  | r8 d8.[ \staffLower cis16 d \staffUpper e] fis g a fis
  | b a g fis e \staffLower d cis b a \staffUpper g' fis e
  %5
  | fis \staffLower a, b cis \staffUpper d e fis g a b c a
  | d8 b g e c'4~
  | c16 c b a b4~ b16 a b g
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    c2~ c16 e d c
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    b2~ b16 d c b
  %10
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    a2~ a16 c! b a
  | g a g fis e dis e fis g a b g
  | c b a g fis e \staffLower d c b \staffUpper a' gis fis
  | \staffLower e2.
  | d
  %15
  | c8[ b a c b e]~
  | e c a fis dis'4~
  | dis8 b g e cis'4~
  | cis8 a fis d b'4~
  | b8 g e cis ais'4
  %20
  | b~ b16 ais b \staffUpper cis d e fis d
  | g fis e d cis \staffLower b ais gis fis \staffUpper e' d cis
  | d fis gis ais b8 c! b a
  | gis2.
  | r16 e fis! gis a8 b a g
  %25
  | fis2.
  | r16 d e fis g fis g a b c d b
  | e d c b \showStaffSwitch\staffLower a g fis e d \hideStaffSwitch\staffUpper c' b a
  | d c b a \showStaffSwitch\staffLower g f e d c \hideStaffSwitch\staffUpper b' a g
  | c b a g \staffLower fis e d c b \staffUpper a' g fis!
  %30
  | b a g fis \showStaffSwitch\staffLower e d c b a \hideStaffSwitch\staffUpper g' fis! e
  | d4 r g~
  | g2 fis4
  | g2.
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieDown
  %1
  | g4 b g
  | c d d,
  | g \stemDown g' fis
  | g a a,
  %5
  | d r r
  | R2.
  | r8 g8.[ fis16 g a] b c d b
  | e d c b a g fis e d c' b a
  | d c b a g fis e d c b' a g
  %10
  | c b a g fis e dis cis b a' g fis
  | e8. dis16 e fis g a b8 e,
  | a fis b4. a8
  | gis a16 b c8[ b a c]~
  | c b16 a gis8 b gis e
  %15
  | fis[ gis a dis, e g]
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    a2~ a16 c b a
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    g2~ g16 b a g
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    fis2~ fis16 a g fis
  | \once\shape #'((( 0 . 0) (0 . -1) (0 . -1) (0 . 0))) Tie
    e2~ e16 g fis e
  %20
  | d4 g fis
  | e fis fis,
  | \stemNeutral b~ b16 a! b c! d e f c
  | d e d c b a gis fis! e d' c b
  | a4~ a16 g! a b c d e b
  %25
  | c d c b a g fis e d c' b a
  | g8[ b d fis g b]
  | c a \clef treble \stemDown d4~ d16 e d c
  | \stemNeutral b8 g \stemDown c4~ c16 d c b
  | \clef bass a8 fis! b4~ b16 c b a
  %30
  | g8 e a4~ a16 b a g
  | \stemNeutral fis e d c b a g fis g a b g
  | c a b c d8[ c d d,]
  | g2.\fermata
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
    opus = "BWV 796"
    title = \markup { "Sinfonia X " \char ##x00b7 " G-Dur" }
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
    \tempo 4 = 96
  }
}
