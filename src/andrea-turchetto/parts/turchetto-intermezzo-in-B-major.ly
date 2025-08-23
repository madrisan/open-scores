Global = {
  \key b \major
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'IntermezzoBmajor
  \tempo 4 = 108
  %1
  | dis4 e2 dis4
  | \stemNeutral\tieNeutral
    <f, d'>2 g'
  | fis4 e'2 dis4~
  | dis dis, gis2
  %5
  | cis4 b2 ais4
  | b1
    \clef "bass"
  | \once\tieDown <f, ces'>2~ <f bes>
  | <e ais>
    \clef "treble"
    <e' e'>
  | ais ais,
  %10
  | r4 b cis g'
  | <d fis> dis e2
    \clef "bass"
  | g,2 a,
    \clef "treble"
  | \stemUp d''4\rest dis e dis
  | \stemNeutral d g,2 g'4
  %15
  | r4 fis e' dis~
  | dis dis, gis2
    \clef "bass"
  | r4 cis,, b a
  | <fis b>1
    \clef "treble"
  | ces''4 f, bes2
  %20
  | e,,4 ais e' e'
  | ais,2. ais'4
  | r b cis, g''
  | \stemUp <d fis> dis e2
  | \stemNeutral g,2 a,
    \clef "bass"
  %25
  | <fis, dis'>2 <f d'>
  | <b d>1~
  | q
    \clef "treble"
    \key c \major
  | r4 g'8 g' r4 a,8 g'
  | r4 b,8 b' r4 a,8 a'
  %30
  | r4 d,8 d' r4 cis,8 cis'

  | R1*30
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemNeutral\tieNeutral
  \mergeDifferentlyDottedOn
  %1
  | fis1
  | s1*9
  %11
  | fis1
  | s
  | fis'
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <b, fis'>1
  | <b g'>
  | <b b'>2 fis''
  | <eis b'>1
  %5
  | <e fis cis'>
  | <e fis b>2 <dis, fis b>
  | <d bes'>1
  | <cis b'>
  | r4 dis' e fis
  %10
  | g2~ <e g>
  | r <fis,, fis'>~
  | q1
  | b4 fis'2 b4
  | <b, g'>2 b'
  %15
  | r4 <dis b'> fis'2
    \clef "treble"
  | <eis gis>2. b'4
    \clef "bass"
  | <cis,,, fis>2 <e cis'>~
  | e4 fis2 <dis, dis'>4
  | d'' <f bes>2 <d, bes'>4
  %20
  | <cis b'>2 r4 <cis' b'>4
  | r4 dis e fis
  | <e g>2 <e' g>
  | r2 r4 fis~
  | fis <fis,, fis'>2 fis,4
  %25
  | <b ais'>2 <aes bes'>
  | <g g'>1~
  | q
    \clef "treble"
    \key c \major
  | b''8 cis r4 b8 dis r4
  | b8 g' r4 ees8 g r4
  %30
  | d8 aes' r4 f8 a r4

  | R1*30

    \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = "Andrea Turchetto"
    opus = "2024"
    title = \markup {
      "Intermezzo in B major"
    }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 108
  }
}
