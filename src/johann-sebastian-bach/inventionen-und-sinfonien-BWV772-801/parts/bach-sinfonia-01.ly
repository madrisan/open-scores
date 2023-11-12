Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r16 g a b c d e f g f g a f a g f
  | \stemUp\tieUp e2~ e4 fis
  | g8 f! e4 d8 e16 f d4~
  | d8 g16 f e4~ e8 e d4~
  %5
  | d4. c8~ c b16 a b c d b
  | g4~ g16 c d e a, b a b b8.\prall a32 b
  | c8 g c4~ c8 b16\prall a d4~
  | d16 b c d e4~ e8[ a]~ a[ g]~
  | g fis16 e fis g a fis d4~ d16 g a b
  %10
  | \stemDown e, fis e fis fis8.\prall e32 fis g16 a g fis e d c b
  | \stemNeutral a b a g a fis g a \once\stemUp b4~ b16 g a bes
  | a \stemUp e[ f g] a b! cis d \stemDown e d e f e bes' a g
  | \stemUp f g f e d cis d e f4 fis
  | g f!~ f8 e16\prall d e4~
  %15
  | e8[ d]~ d[ c]~ c b16\prall a b8 d
  | g4~ g16 a f g a4 b
  | c bes a e'16\rest e, d c
  | b d e f g2~ g16 c, f e
  | f4 e d2~
  %20
  | d16 f e d c2 b!4
  | c1\fermata
   \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \stemNeutral\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | R1
  | e16\rest \staffLower c d e f
    \hideStaffSwitch \staffUpper g a b c b c d c e d c \showStaffSwitch
  | b8 d8~ d c~ c4 b~
  | b a16\rest d c b a4. a8
 %5
  | g f e4 d2~
  | d16 f e d \staffLower c b a g f g f e f d e f
  | e4 \staffUpper e'8\rest e fis4 g16\rest c b a
  | g4~ g16 g c b c4 b4
  | a2~ a16 c b a g fis e d
  %10
  | \staffLower c d c b c a b c b4~ b16 b a g
  | fis8 d'\rest c4\rest \staffUpper b16\rest d e f! e4~
  | e16 a,\rest a8\rest a4\rest \staffLower a8\rest a8 b cis
  | d16 d[ e f] g a \hideStaffSwitch \staffUpper b! cis! d cis d e c ees d c \showStaffSwitch
  | bes a bes c a c bes a g4. g8
  %15
  | f4 e8 e\rest e2\rest
  | \staffLower f'16\rest f, g a b c
    \hideStaffSwitch \staffUpper d e f e f g f a g f \showStaffSwitch
  | e8[ a]~ a[ g]~ g16 c, d e
    \once\shape #'(((0 . 0) (0 . -0.8) (0 . -1.5) (0 . -0.5))) Tie
    f4~
  | f4 r16 f e d c d c bes a4~
  | a8[ d]~ d[ c]~ c b16\prall a b c d b
  %20
  | g4 f16\rest bes a g f g f e f d e f
  | e1
    \fine
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  %\override Rest.staff-position = #0
  %1
  | c4 r8 \stemDown c' b g a b
  | c4 f,8\rest b a g a d,
  | \once\stemUp g,16 g'[ a b] c d e f g f g a f a g f
  | e f e d c b a g f g f e f d e f
  %5
  | e \stemNeutral g,[ a b] c d e f g f g a f a g f
  | \stemDown\tieDown e2~ e4 d
  | \stemDown c16 d c b \stemNeutral a g fis e d e' d c b a g fis
  | \stemUp e f'! e d \stemNeutral c b a g fis d e fis g a b c
  | \stemUp d c d e \stemNeutral c e d c b4 b'~ \tieDown
  %10
  | b a e8 d \stemDown c4 \stemNeutral
  | \stemDown d16 g fis! e d c b a g a g f! g e f g
  | cis,8 d' cis b a g' f e \stemNeutral
  | d d\rest d4\rest d16\rest g' f e d c bes a
  | g c,[ d e!] f g a bes c bes c d bes d c bes
  %15
  | a g a b! \clef "treble" c d e f g f g a f a g f
  | \stemDown e4 d\rest c'16\rest \stemNeutral c b a g f e d \clef F
  | c d c bes c a bes c f, g f e d c b! a
  | g a' g f e d c bes a bes' a g f e d c
  | b! g a b c d e f g f g a f a g f
  %20
  | e8 f16 g a8 c, d e16 f \stemUp g8 g,
  | c1_\fermata
    \fine
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
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 787"
    title = \markup { "Sinfonia I " \char ##x00b7 " C-Dur" }
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
    \tempo 4 = 92
  }
}
