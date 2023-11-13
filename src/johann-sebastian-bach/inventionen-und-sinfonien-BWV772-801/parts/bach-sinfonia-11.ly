Global = {
  \key g \minor
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
  \stemUp
  %1
  | r16 d bes g g'8
  | f4.
  | ees
  | d
  %5
  | c4 d8
  | bes8. bes16 ees8
  | a,8. bes16 c8
  | bes4.
  | b4~\prallprall b16 a32 b
  %10
  | c8. d16 ees8~
  | ees16 d b g f'8
  | ees4.~
  | ees8. d16 c8~
  | c16 f[ d bes bes'8]
  %15
  | d,8. ees16 c8
  | bes4.
  | \stemNeutral bes'~
  | bes16 g ees c bes'8
  | a4.~
  %20
  | a16 f d bes bes'8
  | g4.~
  | g16 e cis a f'8~
  | f16 d bes g e'8~
  | e16 g, bes e f, d'~
  %25
  | d cis e g d f~
  | f e g bes d, a'~
  | a cis, e g b, f'~
  | f a, cis e gis, d'
  | cis e cis a g'8
  %30
  | \stemUp f4.
  | ees
  | d~
  | d16 cis e g bes8
  | a8. e16 f8
  %35
  | d8. e16 cis8
  | d4 f8
  | f4.~
  | f8. d16 ees8
  | ees4.~
  %40
  | ees8. c16 d8~
  | d16 bes' g ees c'8~
  | c16 a f d bes'8~
  | bes16 g ees c a'8
  | fis4 g8
  %45
  | ees8. d16 c8
  | d8. bes16 a! c
  | bes d c ees d a'
  | bes,4.~
  | bes16 g[ ees c bes'8]
  %50
  | a4.~
  | a16 f d bes aes'8
  | g4.~
  | g16 bes a! c fis, a~
  | a a g bes e, g~
  %55
  | g g fis a c8~
  | c16 bes a c ees8~
  | ees16 d c bes a g
  | c bes a g fis e
  | d fis a c g bes~
  %60
  | bes a c ees g, d'~
  | d fis, a c e, bes'~
  | bes d, fis a cis, g'
  | fis4~ \tieUp fis16 fis
  | a c ees4~
  %65
  | ees16 d[ bes g g'8]
  | f4.
  | ees4.
  | d4.
  | c4 d8
  %70
  | bes8. bes16 ees8
  | bes8. c16 a8
  | g4.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \stemDown\tieDown
  \override VoiceFollower.color = \grayTextColor
  \mergeDifferentlyDottedOn
  %1
  | R4.
  | r16 a f \staffLower d \staffUpper d'8~
  | d8. bes16 c8~
  | c8. a16 bes8
  %5
  | a4.~
  | a16 fis g4~
  | g fis8
  | g4.
  | r16 \staffLower d b g \staffUpper g'8~
  %10
  | g4.
  | \staffLower f4 d8
  | b'16\rest g ees c \staffUpper bes'!8
  | a4.
  | \staffLower f8. \staffUpper bes~
  %15
  | bes4 a8
  | bes4.
  | \staffLower f16\rest d bes g f'8
  | ees4.~
  | ees16 ees c a f'8
  %20
  | d4.~
  | d16 d bes g e'8
  | cis8 a d~
  | d cis d
  | cis4^\prall d8 e4 f8
  %25
  | g4 f8
  | e4 d8
  | cis4^\prall b8
  | a4.~
  | a16 \staffUpper a' f \staffLower d \staffUpper d'8~
  %30
  | d8. bes16 c8~
  | c8. a16 bes8
  | g4 \staffLower f8~
  | f16 e cis a d8
  | \staffUpper f8. g16 e8
  %35
  | d4 r8
  | r r16 d' b8
  | g8. b16 c8
  | c4.~
  | c8. a16 \staffLower bes8~
  %40
  | bes8. bes16 ees8~
  | ees8. a,16 d8~
  | d8. g,16 c8~
  | c16 fis, a c bes8~
  | bes16 ees, g bes aes8~
  %45
  | aes16 fis g4~
  | g fis8
  | \staffUpper g4.
  | c,8 \staffLower bes c
  | \staffUpper f4.
  %50
  | bes,8 \staffLower a bes
  | \staffUpper ees4.~
  | ees4.
  | d
  | c4 r8
  %55
  | R4.
  | r8 \staffLower \stemUp d, e
  | fis4 g8
  | a4 bes8
  | c4 bes8
  %60
  | a4 g8
  | fis4 e8
  | c'16\rest d, fis a d8~
  | d8. b'16\rest f8\rest
  | \staffUpper R4.
  %65
  | r16 a f \staffLower d \staffUpper d'8~
  | d8. bes16 c8~
  | c8. a16 bes8
  | a4.~
  | a16 fis g4~
  %70
  | g fis8
  | g4.
}

VoiceThree = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | g4 ees8
  | d4 bes'8
  | g4 a8
  | bes16 d[ bes g g'8~]
  %5
  | g8. e16 fis8
  | g4 c,8
  | d4 d,8
  | g16 d[ bes g g'8]
  | f!4.
  %10
  | ees16 g[ ees c \tieDown c'8~]
  | c4 b8
  | c4.~
  | c16 c a f ees'8
  | d8. g16 ees8
  %15
  | f4 f,8
  | bes16 f[ d bes a'8]
  | g4.
  | c8 bes c
  | f,4.
  %20
  | bes8 a bes
  | e,4.
  | f
  | g8 a bes
  | \tieDown a4.~
  %25
  | a4.~
  | a4.~
  | a4.~
  | a4.
  | a8. g!16 f e
  %30
  | \tieUp d4 bes8
  | g4 a8
  | bes16 d bes g g'8
  | e8. e'16 d8
  | cis4 d8
  %35
  | bes8 g a
  | d,16 d, f a d c
  | b g b d g f
  | ees c ees g c bes!
  | a f a c f ees
  %40
  | \stemDown d bes d \clef treble f bes a
  | g4.
  | f
  | ees
  | d
  %45
  | c
  | bes8. d16 c8
  | d8. c16 d8
  | \clef bass \stemNeutral g,16 d[ bes g f'8]
  | \tieDown ees4.~
  %50
  | \stemNeutral ees16 c[ a f ees'8]
  | d4.~
  | d16 bes[ g ees g bes]
  | c4.
  | bes
  %55
  | a8. fis16 g8
  | fis8. a16 c8
  | d, \tieDown d'4~
  | d4.~
  | d~
  %60
  | d~
  | d~
  | d~
  | \autoBeamOff d16 d~ d4~ \autoBeamOn
  | d8. c'16 bes a
  %65
  | \tieUp g4 ees8
  | d4 bes'8
  | g4 a8
  | bes16 d[ bes g g'8~]
  | g8. e16 fis8
  %70
  | g4 c,8
  | d4 d,8
  | g,4.\fermata
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
    opus = "BWV 797"
    title = \markup { "Sinfonia XI " \char ##x00b7 " g-Moll" }
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
    \tempo 8 = 160
  }
}
