Global = {
  \key f \minor
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
  \override MultiMeasureRest.staff-position = #6
  %1
  | R1*2
  | r8 c ees d r d f e
  | r8 f b c~ c bes16 aes g8 f
  %5
  | ees g[ aes g] \stemNeutral f4~ f16 ges e f
  | e4 r16 c' f, ees des4~ des16 g! c, bes
  | \stemUp aes4 f' e ees
  | d des c8 f4 e8
  | f ees!4 des16 c des4 d
  %10
  | ees8 ees[ ces' bes] r bes, fes' ees~
  | ees16 bes c aes f8 d'16 ees32 f f16 d ees8 r ees16 c
  | beses g! aes!8 r bes16 c32 des! c8. bes16 g4\prall
  | aes8 ees[ ges f] d'\rest f, aes! g
  | d'\rest aes d ees~ ees d16 c bes8 aes
  %15
  | g bes[ des! c] r c ees d
  | r d f e~ e c f4
  | e g f aes!
  | g c, b bes
  | a aes g8 c4 b!8
  %20
  | c bes!4 aes16 g aes4 a
  | bes8 bes[ ges' f] r \once \override NoteColumn.force-hshift = #0.5 f, ces' bes~
  | bes aes4 ges16 f ges4 g
  | aes8 aes[ fes' ees] r ees, beses' aes~
  | aes aes des4 c ces
  %25
  | bes beses aes8 des4 c8
  | des aes[ ces bes] r bes des! c
  | r des g aes~ aes g16 f ees8 des
  | c4 ees d f
  | ees ges f8 bes, des c
  %30
  | r c ees d r d f e~
  | e f, aes g r g bes a
  | r bes e f~ f[ ees16 des c8 bes]
  | aes4 r8 \stemDown bes16 c32 des des16 b c8 r c'16 a
  | ges e f8 d\rest \stemUp g,!16 aes32 bes aes8. g16 e8.\prall f16
  %35
  | f1\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override VoiceFollower.color = \grayTextColor
  \showStaffSwitch
  %1
  | \stemNeutral\tieNeutral
    r8 f aes g r g bes a
  | bes8\rest bes e f~ f[ ees16 des c8 bes]
  | \stemDown aes4 c b bes
  | \staffLower a aes g8 \staffUpper c4 b8
  %5
  | c4 \staffLower e8\rest c des c bes4~
  | bes16 c a bes a4 bes16 ges e f e4
  | \staffUpper f4 r8 bes16 c32 des des16 b c8 r c16 a
  | ges e f8 r g!16 aes32 bes aes8.[ bes16 aes8 g]
  | f \staffLower c[ ges' f] \staffUpper r f ces' bes~
  %10
  | bes \staffLower aes4 ges16 f \staffUpper ges4 g
  | aes8 \staffLower aes,[ c bes] b'\rest bes, des! c
  | d\rest des \hideStaffSwitch\staffUpper g aes~ aes[ g16 f ees8 des]
  | c4 ees d des
  | \showStaffSwitch\staffLower c ces bes8 \staffUpper ees4 d8
  %15
  | ees4 bes' a c
  | bes des c8 f,[ aes g]
  | r g bes a r a c b
  | r \staffLower c, \hideStaffSwitch\staffUpper ees d r d f e
  | r f b c~ c bes16 aes g8 f
  %20
  | ees4 e f8 ees4 d16 c
  | d8 g a4 bes8 aes4 g!16 f
  | g8 f16 ees d4 ees8 des4 c!16 bes
  | c8 f g4 aes8 \once\override NoteColumn.force-hshift = #-0.5 ges4 f!16 ees
  | f4 r8 g!16 aes32 bes bes16 g aes8 r aes16 f
  %25
  | eeses16 c! des!8 r ees16 f32 ges f8.[ ges16 f8 ees]
  | des4 aes' g! ges
  | f \showStaffSwitch\staffLower fes ees8 \staffUpper aes4 g8
  | aes ees[ ges f] r f aes g
  | r g bes a~ a f bes4
  %30
  | a c bes des
  | c f, e ees
  | d \staffLower des c8 \staffUpper f4 e8
  | f \staffLower f,[ aes g] c\rest g bes a
  | c\rest bes \hideStaffSwitch\staffUpper e f~ f[ ees16 des c8 bes]
  %35
  | a1
}

VoiceThree = \context Voice = "three" \relative c, {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-8
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | f4 f' e ees
  | d des c8 bes c c,
  | f4 r8 f'16 g32 aes aes16 fis g8 r \clef treble g'16 e
  | \stemDown des! b c8 c\rest d16 ees32 f ees8 f g g,
  %5
  | c4 c\rest c2\rest
  | R1
  | \clef bass r8 f, aes g r g bes a
  | r bes e f~ f[ ees16 des c8 bes]
  | aes4 a bes8 aes4 g!16 f
  %10
  | g8 \clef treble c d4 ees8 des4 c!16 bes
  | c4 aes g ges
  | \clef bass f fes \stemNeutral ees8 des ees ees,
  | aes4 r8 a'16 bes32 c c16 a bes8 r bes16 g
  | \stemDown fes16 d ees!8 r f16 g32 aes g8[ aes bes bes,]
  %15
  | ees4 r8 ees ges f r f
  | aes g! r g bes aes r bes
  | des, c r c' ees,! d r d'
  | f, ees r f,16 g32 aes aes16 fis g8 r g'16 e
  | des! b c8 r d16 ees32 f ees8 f g g,
  %20
  | c c, des'! c r c ges' f~
  | f ees4 des!16 c des4 d
  | ees8 bes[ ces' bes] r bes, fes' ees~
  | ees des4 ces16 bes ces4 c
  | des8 des[ f ees] r ees ges f
  %25
  | r ges c des~ des c16 bes aes8 ges
  | f4 r8 d16 ees32 f f16 d ees8 r ees16 c
  | beses g! aes!8 r bes'16 c32 des c8 des ees ees,
  | aes4 r8 aes ces bes r bes
  | des c! r c ees des r ees
  %30
  | ges, f r f' aes,! g r g'
  | bes, aes r bes16 c32 des des16 b c8 r c16 a
  | ges e f8 r g!16 aes32 bes aes8 bes c c,
  | f,4 f' e ees
  | d des \stemNeutral c8 bes c c,
  %35
  | f1\fermata
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
    opus = "BWV 795"
    title = \markup { "Sinfonia IX " \char ##x00b7 " f-Moll" }
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
    \tempo 4 = 50
  }
}
