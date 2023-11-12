Global = {
  \key f \major
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
  | R1
  | r8 f16 e a8 g f\prall e16 d g a f g
  | e f d e f2 e4
  | f8 c16 a d4 r8 d16 b! e4
  %5
  | r8 e16 c f4~ f16 e f g e8. e16
  | a f g a d,4~ d8 c16 b! c4~
  | c b c8 g'16[ e] a8 g
  | f\prall e16 d g a f g e[ d] e[ c] f8 e
  | d\parenthesize\prall cis16 b e f d e cis8 a'16[ f] bes!8 a
  %10
  | g\parenthesize\prall f16 e a bes g a fis8\prall d g4~
  | g fis g2~
  | g8 g f!4~ f8 ees d4~
  | d8 d cis e a,16[ g] a[ f] bes8 a
  | g\prall f16 e a bes g a f2~
  %15
  | f16 f e g cis,8.\parenthesize\prall d16 d4 r8 f16 d
  | g4. g16 e a8 c16 a f'4~
  | f8 d16 bes ees4~ ees8 d16 bes ees8 d
  | c8\prall bes16 a d ees c d bes8 f'16[ d] g8 f
  | ees\parenthesize\prall d16 c f g ees f d4 r8 d16 bes
  %20
  | e!4 r8 e16 c f4 r8 f16 d
  | g4~ g16 e f8~ f4~ f16 d e g
  | c, bes c a d8 c bes\parenthesize\prall a16 g c d bes c
  | a8. bes16 g8.\parenthesize\prall f16 f2\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \stemDown\tieDown
  \override VoiceFollower.color = \grayTextColor
  %1
  | b8\rest c16 a d8 c bes\prall a16 g c d bes c
  | a bes c8~ c2 b4
  | c8 bes! a16 bes c d g,2
  | f4 r8 a16 f b4 r8 b16 g
  %5
  | c4 r8 c16 a d4~ d16 b c8~
  | c4~ c16 a b d g,[ f] g[ e] a8 g
  | f\prall e16 d g a f g e8 r r4
  | R1
  | R1
  %10
  | r2 r8 d'16 bes ees8 d
  | c\parenthesize\prall bes16 a d ees c d bes a bes g c d bes c
  | a4. a8 g4. f8
  | e!2~ e8 d16 cis d4~
  | d cis r16 d c! a bes! cis d a
  %15
  | g2~ g8 f16 \staffLower d \staffUpper bes'4~
  | bes8 bes16 g c!4~ c \staffUpper \stemDown \tieDown r8 a'16 f
  | bes4 r8 c16 a f \staffLower ees f d g8 f
  | ees d16 c f g ees f d2~
  | d4 c bes8 \staffUpper f'16 d g4~
  %20
  | g8 g16 e a4 r8 a16 f bes4~
  | bes16 a bes c a8. a16 d bes c d g,4~
  | g8 f16 e f2 e8 g~
  | g[ f]~ f[ e] f2
}

VoiceThree = \context Voice = "three" \relative c, {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \stemNeutral\tieDown
  %1
  | f4 f'2 e4
  | \stemDown f8 a16 g f8 e d g16 f g8 g,
  | \once\stemUp c c'16[ a] d8 c bes\prall a16 g c d bes c
  | a8 g f16 e f d g8 g, g'16 f g e
  %5
  | a8 a, a'16 g a f b8 g16 e a8 g
  | f\prall e16 d g a f g e8 a16 g f8 e
  | d g16 f g8 g, \stemUp c c, \stemDown r c''16 a
  | d8[ c] b[\prall a16 g] c d bes c a g a f
  | bes8[ a] g\parenthesize\prall[ f16 e] a bes g a d,8 d'16[ b]
  %10
  | e8[ d] cis\prall[ b16 a] d c bes a g a bes g
  | a8 d16 c d8 d, g d16[ bes] ees8 d
  | \stemUp c8\parenthesize\prall bes16 a \stemDown d ees c d \once\stemUp bes8 g'16[ f] bes8 a
  | g\prall f16 e a bes g a f e f d g8 f
  | e8 a16 g a8 a, \stemUp bes a16 f g8 f16 d
  %15
  | bes' a bes g a8 a d,4 r8 \stemDown d'
  | e16 d e f e d e c f8 f, r f'16 d
  | g f g a g bes a c bes2~
  | bes~ bes16 c bes a g[ a] bes[ g]
  | c8[ bes] a[ g16 f] bes c a c bes a bes g
  %20
  | c8 c, c'16 bes c a d8 d, d'16 c d bes
  | e8 c16[ a] d8 c bes\prall a16 g c d bes c
  | a8 d16 c bes c a bes g8 a16 bes c8 e,
  | f d16 bes \stemNeutral c8 c, f2\fermata
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
    opus = "BWV 794"
    title = \markup { "Sinfonia VIII " \char ##x00b7 " F-Dur" }
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
    \tempo 4 = 80
  }
}
