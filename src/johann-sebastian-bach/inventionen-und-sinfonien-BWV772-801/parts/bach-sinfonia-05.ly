Global = {
  \key ees \major
  \time 3/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")

voiceOneOssia = \relative c'' {
  %1
}

voiceThreeOssia = \relative c {
  %1
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  %\override Rest.staff-position = #0
  \stemUp\tieUp
  %1
  | r4 r8 r16 bes ees8.\mordent
    \once\override Voice.Script.X-offset = #-1
    \turn f16
  | \once\slurDown \appoggiatura ees8 d4~ d8. c16 des8. ees16
  | \appoggiatura des8 c4~ c8. c16 \appoggiatura c8 f8. g16
  | \appoggiatura f8 ees 4~ ees8. d16 \appoggiatura d8 ees8. f16
  %5
  | \appoggiatura ees8 d4~ d8. d16 \once\slurDown \appoggiatura d8 g8. g16
  | \once\slurDown \appoggiatura g8 c,4~ c8. c16 \once\slurDown \appoggiatura c8 f8. f16
  | bes,4 ees2~
  | ees4 d2
  | ees4~ ees8. r16 r4
  %10
  | r r8 r16 aes d,8. d16
  | d4~ d8. ees16 f4~
  | f8. ees16 ees4 d8.\lineprall c16
  | c4 r r
  | r r8 r16 c16 f8. g16
  %15
  | d4~ d8. ees16 f8. g16
  | ees8. d16 d4 ( c8.) bes16
  | bes4 r8 r16 bes'16 aes!8. bes16
  | g4~ g8. aes16 bes4~
  | bes8. g16 e8. f16 g4~
  %20
  | g8. f16 des8. c16 f8. g16
  | e4~ e8. e16 aes8. aes16
  | aes4 ( g8.) f16 bes8. bes16
  | bes4 ( e,8.) e16 f8. e16
  | f8. g16 f4 ( e8.) f16
  %25
  | f4 r r
  | r r8 r16 f bes8. aes16
  | g4~ g8. aes16 des,4 (
  | d8.) c16 c4 ( bes8.) aes16
  | aes4~ aes8. ees16 aes8. bes16
  %30
  | g4~ g8. f16 g8. aes16
  | bes4~ bes8. f16 bes8. c16
  | aes4~ aes8. g16 aes8. bes16
  | g4~ g8. g16 c8. c16
  | c4 bes2~
  %35
  | bes4 aes2~
  | aes4~ aes8. g16 c8. c16
  | f,4~ f8. f16 bes8. c16
  | g2.\fermata
   \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  %\override Rest.staff-position = #0
  \stemDown\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | R1*3/4
  | d4\rest r8 r16 f16 bes8.\mordent
    \once\override Voice.Script.X-offset = #-1.5
    \once\override Voice.Script.Y-offset = #-4
    c16\turn
  | \once\slurDown \appoggiatura bes8 aes4~ aes8. g16
    \once\slurDown \appoggiatura g8 aes8. bes16
  | \once\slurDown \appoggiatura aes8 g4~ g8. g16 c8. d16
  %5
  | \once\slurDown \appoggiatura c8 bes2.~
  | bes4 aes2~\turn
  | aes4~ aes8. g16 c8. c16
  | f,4~ f8. f16 bes8. c16
  | g4~ g8. g'16 c,8. c16
  %10
  | c2.~
  | c4 b8. c16 d4~
  | d8. c16 c4 b
  | c4 r8 r16 g16 c8. d16
  | a4~ a8. bes16 c4~
  %15
  | c bes8. c16 d8. ees16
  | c8. bes16 bes4 a
  | bes4 r r
  | r r8 r16 ees des8. ees16
  | c4~ c8. des16 bes8. c16
  %20
  | aes4~ aes8. g16 aes8. bes16
  | c4~ c8. c16 f8. ees16
  | des2.~
  | des4 c8. bes16 aes8. g16
  | aes8. bes16 aes4 g8. aes16
  %25
  | aes4~ aes8. c16 f8. ees16
  | des2.~
  | des4~ des8. c16 bes4~
  | bes8. aes16 aes4( g)
  | aes r r
  %30
  | r r8 r16 bes,16 ees8. f16
  | d4~ d8. c16 des8. ees16
  | c4~ c8. c16 f8. g16
  | ees4~ ees8. d16 ees8. f16
  | d4~ d8. d16 g8. g16
  %35
  | c,4~ c8. c16 f8. f16
  | bes,4 ees2~
  | ees4 d2
  | ees2.
    \fine
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r16 ees g bes ees4 c
  | r16 bes, d f bes4 g
  | r16 aes, c ees aes4 f
  | r16 c ees g c4 a
  %5
  | r16 bes, d f bes4 ees,
  | r16 aes, c ees aes4 d,
  | r16 g, bes d g4 aes
  | r16 bes, f' aes bes4 bes,
  | r16 ees, g bes ees4 c
  %10
  | r16 aes c ees aes4 f
  | r16 f aes c f4 r16 b, a g
  | c g aes f g4 g,
  | r16 c, ees g c4 ees,
  | r16 f a c f4 a,
  %15
  | r16 bes d f bes4 g
  | r16 g a bes f4 f,
  | r16 bes d f bes4 d,
  | r16 ees g bes ees4 g,
  | r16 aes, c ees aes4 e
  %20
  | r16 f, aes c f4 des
  | r16 c e g c4 aes
  | r16 bes, des f bes4 g
  | r16 c,, e g c4 des
  | r16 des c bes c4 c,
  %25
  | r16 f aes c f4 aes,
  | r16 bes des f bes4 des,
  | r16 ees g bes ees4 r16 g, f ees
  | aes ees f des ees4 ees,
  | r16 aes c ees aes4 f
  %30
  | r16 ees, g bes ees4 c
  | r16 bes d f bes4 g
  | r16 aes, c ees aes4 f
  | r16 c ees g c4 a
  | r16 bes, d f bes4 ees,
  %35
  | r16 aes, c ees aes4 d,
  | r16 g, bes d g4 aes
  | r16 bes, f' aes bes4 bes,
  | ees,2._\fermata
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
    opus = "BWV 791"
    title = \markup { "Sinfonia V (Es-Dur)" }
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
    \tempo 8 = 96
  }
}
