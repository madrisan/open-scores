Global = {
  \key a \minor
  \time 3/8
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
  %1
  | a4 b8
  | c4 d8
  | c8 b4
  | a16 b c d e fis
  %5
  | g fis g a b c
  | b a g fis e dis
  | e[ fis] dis8.\parenthesize\prall e16
  | e4 g8~
  | \stemNeutral g16 bes a g f! e
  %10
  | f4.~
  | f16 f e d c b
  | c d c b a gis
  | \stemUp a4.~
  | a8. b16 c d
  %15
  | \stemNeutral e f e d c b
  | \stemUp c4.
  | b
  | a16 g a b c d
  | \stemNeutral e f g a b c
  %20
  | f, a g f e d
  | \stemUp e8 c d
  | e4 f8
  | e8 d4\prall
  | c16 g a b c d
  %25
  | e4 f8
  | g4 a8
  | g8 f4\prall
  | e4.~
  | e8 d e
  %30
  | f4 g8
  | f8 e4
  | d16 a b! cis d e
  | f4 g8
  | a4 bes8
  %35
  | a g4\prall
  | f16 a32 g f16 a e a
  | f4.~
  | f16 g32 f e16 g d g
  | e4.~
  %40
  | e16 d32 c b16 d a d
  | b b d g8 fis16
  | g16 d b g8 fis16
  | g d e d e fis
  | g d' c b c d
  %45
  | \stemNeutral b8 c d
  | g, a b
  | \stemUp c4 b8~
  | b16 a8 a gis16
  | \stemNeutral a c e a8 gis16
  %50
  | a e c a8 gis16
  | a c e a gis b
  | e,8 a,[ b]
  | \stemUp c4 d8
  | e4 f8
  %55
  | e8 d4
  | c8 e4~
  | e8 d4~
  | d16 e32 d c16 e b e
  | a, d32 c b16 d a d
  %60
  | gis,8 a b
  | c4 d8
  | c8 b4~
  | b8 a' gis
  | a4.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \stemDown\tieDown
  \override VoiceFollower.color = \grayTextColor
  \showStaffSwitch
  %1
  | R4.*4
  %5
  | \staffLower e4 fis8
  | g4 a8
  | g \staffUpper fis4\prall
  | e16 fis g a b cis
  | \staffLower \clef treble d4.~
  %10
  | d16 e d c b! a
  | gis4.
  | a16 f e d c b
  | \staffUpper c b c d e f
  | e d \staffLower c b a gis
  %15
  | a b gis4
  | a8 \hideStaffSwitch \staffUpper \stemDown e' a~
  | a d, g~
  | g \staffLower f16 g a b
  | c8 e,16 f g a
  %20
  | b8 a b
  | \staffUpper c e, f
  | g4 a8
  | g8 f4
  | e8 c\rest c\rest
  %25
  | r c' d
  | e4 f8
  | e8 d4~
  | d16 d c bes a g
  | f8 a4~
  %30
  | a8 a cis
  | d4 cis8
  | d8 d,\rest d\rest
  | d\rest d' e
  | f4 g8
  %35
  | f e4~
  | e8 d cis
  | d16 d32 c! b16 d a d
  | g,8 c b
  | c16 c32 b a16 c g c
  %40
  | fis,8 g fis
  | g4 r8
  | \showStaffSwitch \staffLower a,\rest g a
  | b4 \staffUpper c8
  | b \staffLower a4~
  %45
  | a16 g a g a b
  | c \hideStaffSwitch \staffUpper g' f e f g
  | e8 d4
  | c8 b b
  | \showStaffSwitch \staffLower e, a[ b]
  %50
  | c4 d8
  | c b4~
  | b16 e, fis gis a gis
  | a \hideStaffSwitch \staffUpper c e a8 gis16
  | a e \staffLower c a8 gis16
  %55
  | a c \staffUpper e a gis a
  | \staffLower a, \staffUpper c'32 b a16 c g! c
  | fis, b32 a gis16 b fis b
  | e,4.~
  | e8 d4~
  %60
  | d16 e32 d c16 e b e
  | \staffLower a,8 \staffUpper a' gis
  | a8 d,4~
  | d16 e'32 d c16 e b e
  | cis4.
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | a8 a' gis
  | a e f
  | d e e,
  | a a'16 b c a
  %5
  | \stemDown e'8 e, dis'
  | e b c
  | a b b,
  | e4 r8
  | R4.
  %10
  | R4.*2
  | \override MultiMeasureRest.staff-position = #-10
    R4.
  | \clef bass \stemNeutral a,4 b8 \stemDown
  | c4 d8
  %15
  | c8 b4
  | a16 b c d e fis
  | g a b c d e
  | \clef treble f4.
  | e
  %20
  | d \clef bass
  | c,16 e g c8 b16
  | c g e c8 b16
  | c e g c b c
  | c,8 c' b \clef treble
  %25
  | \stemNeutral a16 a' g f e d
  | c e g c8 b16
  | c c, c' b a b
  | c8 c, cis
  | d16 g f e d cis \clef bass
  %30
  | \stemDown d e d c! bes a
  | g f g bes a g
  | f g f e d cis
  | d f a d8 cis16
  | d a f d8 cis16
  %35
  | d f a d cis d
  | d,8 f a
  | d,16 f32 e d16 f c f
  | b,8 c g'
  | c16 e32 d c16 e b e
  %40
  | a,8 b d
  | g, \stemNeutral g,[ a]
  | \stemDown b4 c8
  | b8 a4
  | g8 g' fis
  %45
  | g4 f!8
  | e4 d8
  | c16 e fis e fis gis
  | a e d c d e
  | c4 e8
  %50
  | a g! f
  | e4 d8
  | c4 b8
  | a4 b8
  | c4 d8
  %55
  | c8 b4
  | a8 c a
  | \stemNeutral d b a
  | gis a g
  | fis f f'
  %60
  | \stemDown\tieDown e4.~
  | e16 e32 d c16 e b e
  | a, b'32 a gis16 b e, gis
  | c,8 d e
  | \stemNeutral a,4.\fermata
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
    opus = "BWV 799"
    title = \markup { "Sinfonia XIII " \char ##x00b7 " a-Moll" }
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
    \tempo 8 = 120
  }
}
