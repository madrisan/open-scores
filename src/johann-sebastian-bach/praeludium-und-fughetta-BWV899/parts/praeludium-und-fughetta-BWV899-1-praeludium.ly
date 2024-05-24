Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r16 d cis d a8 bes4 a16 g
  | a4. g16 f g4~
  | g16 f e f bes4~ bes16 a bes8
  | a4 d~ d16 cis d e
  %5
  | f2.~
  | f16 f e d e4~ e~
  | e16 a g a e8 f4 e16 d
  | e4~ e8 d16 c d4~
  | d16 c d b! c8 b16 cis cis8.^\trill b32 cis
  %10
  | d16 d cis d 	a[ bes] c!4 bes16[ a]
  | bes4~ bes8 a16 b b8.^\trill a32 b
  | c2.~
  | c16 f e f c d ees8~ ees16 ees d c
  | d2.~
  %15
  | d16 g fis g d e f8~ f16 f e d
  | e2.~
  | e2 e4\rest
  | e16\rest e d e b c d8~ d4~
  | d8 b c16 f e d cis d e8
  %20
  | a,2 d4~
  | d8 c~ c16 c bes a g4~
  | g8[ f bes a~] a16 d cis d
  | g,4~ g8. f16 e4~
  | e16 d' cis d g, a bes8~ bes16 bes a g
  %25
  | f2~ f16 f e d
  | e4~ e8 d~ d16 d cis8
  | d2.
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | R1*3/4
  | c16\rest f e f cis d e8~ e16 e d cis
  | d4~ d16 d cis d g8. g16~
  | g f e f~ f f g f e4
  %5
  | d16 d'[ cis d] gis,[ a] b4 a16 gis
  | a2~ a16 bes g a
  | f4 g16\rest c b a gis4
  | g16\rest c b c gis a b4 a16 gis
  | a2.~
  %10
  | a~
  | a16 g fis g d e f8~ f e16 d
  | e4~ e16 f e f g4
  | f~ f8. g16 a4~
  | a8. bes16 c bes a g fis4
  %15
  | g4~ g8. a16 b4~
  | b8. c16 d c b a gis4
  | g16\rest a gis a e8 f~ f16 f e d
  | e4~ e8. fis16 gis16 a b!8~
  | b[ gis] a g~ g4~
  %20
  | g16 f e f g f e d~ d8 a'~
  | a16 bes a bes g4~ g16f e f
  | e8 d cis8. cis16 d4~
  | d16 cis b! cis~ cis a cis d~ d d cis e
  | a,4 c8\rest c16\rest d cis4
  %25
  | b16\rest e d cis d2
  | a4\rest a16\rest a8 gis16 a8. g16
  | << \stemDown a2. \\ { \stemDown \once\override NoteColumn.force-hshift = #0.4 fis2. } >>

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | d16\rest d cis d a8 bes4 a16 g
  %5
  | a4 d16\rest d cis d gis, b d8~
  | d4~ d16 d cis b cis4
  | d d16\rest e d c b d c b
  | c8 d16 e f4~ f16 e f d
  | e2.
  %10
  | d~
  | d4 d\rest d\rest
  | d16\rest c bes! c g a bes8~ bes16 bes a g
  | a4~ a16 bes a bes c4~
  | c16 d c d a bes c8~ c16 c bes a
  %15
  | bes4~ bes16 c b c d4~
  | d16 e d e b! c d8~ d16 d c b
  | c4~ c16 c b c d4~
  | d16 c b c gis a b8~ b a16 gis
  | a4 a\rest e~
  %20
  | e16 d cis d a bes! c8~ c16 c bes a
  | bes g' fis g d8 ees~ ees16 d cis d
  | cis a' gis a e g f4 e16 d
  | e4 f g
  | f~ f8 e16 d e4
  %25
  | d c'16\rest c! bes a gis8 g!~
  | g16 bes! a g f4 e
  | d2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | d2.~
  | d~
  | d~
  | d~
  %5
  | d
  | a'~
  | a~
  | a~
  | a16 a gis a e[ f] g4 f16[ e]
  %10
  | f4. e16 fis fis8._\trill e32 fis
  | g2.
  | c,4.~ c16 d e4
  | f2~ f8 f
  | fis2 d4
  %15
  | g2~ g8 g
  | gis2 e4
  | a2.~
  | a4 b,\rest b\rest
  | b16\rest e d e a,8 bes4 a16 g
  %20
  | f2 fis4
  | g2.
  | a~
  | a~
  | a
  %25
  | bes2 b!4
  | cis d a
  | d,2.
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 899"
    title = \markup { "Praeludium" }
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
    \tempo 4 = 54
  }
}
