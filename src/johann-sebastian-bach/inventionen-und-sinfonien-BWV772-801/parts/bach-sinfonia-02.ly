Global = {
  \key c \minor
  \time 12/8
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

voiceOneOssia = \relative c'' {
  %1
  \stopStaff
  | s1*12/8*6
  %7
  | \startStaff \key c \minor
    << {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \repeat unfold 6 { ees32 f ees f } \repeat unfold 5 { ees f ees f } ees8\laissezVibrer
    } \\ {
      s4 g,8\rest g4\rest c8 bes4.~ bes4 c8
    } >>
    \stopStaff
  | s1*12/8*22
  %30
    \startStaff
    << {
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \repeat unfold 12 { c32 d c d }
    } \\ {
      aes4 f8\rest e4\rest aes8 g4.~ g4 aes8
    } >>
  | << {
     \repeat unfold 2 { c32 d c d } c8
   } \\ {
     f,2
   } >>
}

voiceThreeOssia = \relative c {
  %1
  | \stopStaff s1*12/8*14
  | s1*5/8 \startStaff s8 \key c \minor
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \repeat unfold 6 { bes32 c bes c }
  | \repeat unfold 6 { bes32 c bes c } bes4. a~ \stopStaff
  | \hideNotes a1*12/8
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieUp
  %1
  | c8 g ees' ees c g' g4. g,4.
  | c8 d ees f g aes \stemUp b, aes' g f ees d
  | ees4. c4.~ c8 b c d ees f
  | ees f ees d ees c g'2.~
  %5
  | g4 g8 c,4 ees8 f,4 g'8\rest g4\rest g8\rest
  | g4\rest f8 bes,4 d8 ees,4 f'8\rest f4\rest f8\rest
  | ees2.~\prallprall ees2.~
  | ees4 f8 d4.~ d8 g16 f ees d c d c bes a g
  | fis8 a'16 g fis e d ees d c bes a bes2.
  %10
  | a4. fis'4. g4. g4\rest g8\rest
  | a2.\rest g,8 d bes' bes g d'
  | d4. d,4. g8 a! bes c d ees
  | fis, ees' d c bes a bes4 a'8\rest g4\rest a8\rest
  | f16\rest g, a bes c d ees f ees d c bes a4 g'8\rest f4\rest g8\rest
  %15
  | f16\rest f, g a bes c d ees d c bes a!? g4 f'8\rest f4\rest g,8
  | f4 f'8\rest f4\rest g,8 ees4 f'8\rest f4\rest f,8
  | d4 d'8 bes4.~ bes4 ees8 c4.~
  | c4. bes~ bes8 a! g fis4.
  | g8 d bes' bes g des' des2.~
  %20
  | des8 bes e e c g' aes2.~
  | aes4.~ aes16 bes aes g f ees d ees d c bes c d ees f g aes bes
  | c bes aes g f ees f g aes c bes aes g2.~
  | g4 g8 g ees c' f,2.~
  | f4 f8 f d b' ees,2.~
  %25
  | ees8 aes16 g f ees d ees d c b a b4. c
  | f2.~ f4 ees8~ ees d f
  | b,4. c d4 c8~ c4 b8
  | c4 g'8 c,4 ees8 aes,4 g'8\rest g4\rest g8\rest
  | g4\rest f8 bes,4 d8 g,16 bes c d ees f g aes g f ees d
  %30
  | c2.~\prallprall c~
  | c4. b8 c d g,2.~
  | g16 b c d ees f g8 c, b c2.\fermata
   \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-8
  \override Rest.staff-position = #0
  \stemNeutral\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | R1*12/8
  | R1*12/8
  | \hideStaffSwitch \staffLower c8 g \staffUpper ees' \showStaffSwitch ees c g' g4. g,4.
  | c8 d ees f g aes b, aes' g f ees d
  %5
  | \staffLower ees4
    \staffUpper e8\rest e4\rest e8\rest b16\rest
    \staffLower c d \hideStaffSwitch ees \staffUpper f \showStaffSwitch g aes bes aes g f ees
  | \staffLower d4 \staffUpper e8\rest d4\rest e8\rest a,16\rest
    \staffLower bes c d \hideStaffSwitch ees \staffUpper f g aes g f \staffLower ees d
  | \showStaffSwitch c4 \staffUpper r8 r4 c'8 bes4.~ bes4 c8
  | aes4.~ aes4 bes8 g4 e8\rest d4\rest d8\rest
  | a2.\rest c4\rest c8\rest g'4.
  %10
  | fis8 e d c' bes a! bes c bes a bes g
  | d' c bes a g fis g4 c,8\rest d4 c8\rest
  | a'4 d,8\rest fis4 d8\rest g4 d8\rest d4\rest d8\rest
  | a2.\rest g'8 d bes' bes g d'
  | ees,4 e8\rest e4\rest e8\rest f8 c a'! a f c'
  %15
  | d,4 b8\rest b4\rest b8\rest ees8 bes g' g ees bes'
  | d, bes f' f d bes' c, d ees f g a
  | bes,4 b8\rest b4\rest g'8 ees4.~ ees4 a8
  | fis d'16[ c bes a] g a g f ees! d ees4.~ ees8 a, c
  | bes4 b8\rest a4\rest b8\rest c4\rest bes'8 g4 bes8
  %20
  | e,4 e8\rest e4\rest e8\rest r16 f' ees des
    \hideStaffSwitch \staffLower \clef treble c bes aes bes aes g f ees
  | d!8 bes f' f d aes' aes2.~
  | aes8 f d' d bes \staffUpper d ees2.~
  | ees8 c4~ c ees8 d2.~
  | d8 b4~ b4 d8 c2.~
  %25
  | c4 e,8\rest e4\rest e8\rest e\rest g16 f \staffLower ees d c d c bes! aes! g
  | \showStaffSwitch aes4 \staffUpper aes'8~ aes f b~ b g c aes!4.~
  | aes8 g f ees d c f4 ees8 d4.
  | ees4 e8\rest d4\rest e8\rest d16\rest c d ees f g aes bes aes g f ees
  | \staffLower d8 f, d' d bes f' ees \hideStaffSwitch bes \staffUpper g' g ees bes'
  %30
  | aes4. g4\rest aes8 g4.~ g4 aes8
  | f2.~ f16 \staffLower g,16 a b \staffUpper c d ees d c d ees f
  | g4 g8\rest g\rest ees d e2.
    \fine
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | c4. c'4. b8 a g f' ees d
  | ees4 c8 aes!4 f8 g4 a8 b4 g8
  | c4 r8 r4 r8 r2.
  | R1*12/8
  %5
  | c8 g ees' ees c g' aes,4. r4 r8
  | bes f d' d bes f' g,4. r4 r8
  | aes ees c' c aes ees' g, ees bes' bes g ees'
  | f, g aes bes c d ees,4. ees'4.
  | d4. fis,4. g8 d bes' bes g d'
  %10
  | d4. d,4. g8 a bes c d ees!
  | fis, ees' d c bes a bes4. g4.~
  | g8 fis g a bes c bes c bes a bes g
  | d' c bes a g fis g4 d'8 g,4 bes8
  | c,4 r8 r4 r8 r4 c'8 f,4 a8
  %15
  | bes,4 r8 r4 r8 bes2.~\prallprall
  | bes2.~ bes4. a~
  | a8 d16 c bes a g a g f ees d c8 ees'16 d c bes a bes a g fis e
  | d4. r8 r16 g a bes c bes c d ees c d ees d c bes a
  | g4 r8 r4 r8 r8 bes'16 aes! g f! e f e d! c bes
  %20
  | aes f' e d c bes aes bes aes g f e f4 b'8\rest b4\rest b8\rest
  | f2.\rest b4\rest \stemDown g'8 f4 ees8
  | d4 aes'8 g4 f8 \stemUp ees16 g, aes bes c d ees f ees d c bes
  | \clef bass \stemDown aes2.~ aes16 f g a b c d ees d c b a
  | g2.~ g16 ees f g a b c d c bes aes g
  %25
  | f2.~ f4. ees4._~
  | ees16 g f ees d c \stemNeutral b c b a g f ees4. f
  | g a b8 g c aes f g
  | c g ees' ees c g' f c aes' aes f c'
  | \stemDown bes4 r8 r4 r8 r2.
  %30
  | f8 c aes' aes f c' ees, c g' g ees c'
  | d, ees f g a b ees,2._~
  | ees16 g f ees d c g'4 \stemUp g,8 c,2.\fermata
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
    opus = "BWV 788"
    title = \markup { "Sinfonia II " \char ##x00b7 " c-Moll" }
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
    \tempo 4. = 60
  }
}
