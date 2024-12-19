Global = {
  \key a \minor
  \time 2/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIBourreeII
  \repeat volta 2 {
  \partial 4 c8 d
  %1
  | d4 f e d
  | e a,2 gis4
  | a f' e d
  | e a,2 gis4
  %5
  | a f' e d
  | a' g8 f e4 d
  | c\prall b8 c d b c a
  | b a gis a b c d b
  | c d e f e d c d
  %10
  | e d c b a b c d
  | e f g a g f e f
  | g f e d c d e fis
  | g( a b c) b( a) g( a)
  | b( a) g( fis) e( dis) e( fis)
  %15
  | b,4 g'~ g8 fis e\prall dis
  | e2.
  }
  \pageBreak
  \repeat volta 2 {
  \partial 4 e8 d
  | cis4 b cis d
  | e8 g bes2 a8 g
  | f e f d' cis b a g
  %20
  | f g a g f e d c!
  | b4 b8 a b4 b8 c
  | d f a2 g8 f
  | e d e c' b a g f
  | e f g f e d c b
  %25
  | a g' f e f4
    \change Staff = "lower" \stemUp
    a,
  | g8 fis g f' e4 g,!
  | fis8 e f
    \change Staff = "upper"
    e' \stemNeutral d c b a
  | a' gis fis e b'4 e,8 d
  | e4 d' c b
  %30
  | c e,2 d8 c
  | d4 c' b8 a gis a
  | b4 d,2 c8 b
  \break
  | c a' g! e f e d c
  | b f' e c d c b a
  %35
  | gis d' c b d c b a
  | a2.
  }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s1*15
  | s2.
  \partial 4 s4
  | s1*19
  | a2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \repeat volta 2 {
  \partial 4 e8 d
  %1
  \repeat unfold 2 {
  | c b a b c b a b
  | c b a b c d e d
  }
  %5
  | c b a b c b a b
  | c b a b c d e f
  | e d c b a\prall gis a4
  | e2. e'8 f
  | e4 d c b
  %10
  | c a8 b c d e f
  | g4 f e d
  | e c8 d e fis g a
  | b4 a g fis
  | g e c' a~
  %15
  | a8 g fis e b'4 b,
  | e b e,
  }
  \break
  \repeat volta 2 {
  \partial 4 e'8 f
  | g f e f g f e f
  | g f e f g4 cis,
  | d bes g a
  %20
  | d,2. d'8 e
  | f e d e f e d e
  | f e d e f g a b
  | c4 a f g
  | c,2~ c8 f e d
  %25
  | c b c4~ \stemDown c8 e d c
  | b a b4~ b8 d c b
  | a gis a4~ \stemNeutral a8 b c d
  | e dis e4~ e8 d c b
  | a gis fis gis a gis fis gis
  %30
  | a b c d e fis gis a
  | gis a b a gis a b a
  | gis fis e d c b a gis
  | a4 c b a
  | gis a f d
  %35
  | e a e' e,_\markup {
      \hspace #6 "Bourréé I da capo"
    }
  | \stemDown c\rest e a,
  }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 806"
    title = \markup { "Bourrée II" }
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
    \tempo 4 = 100
  }
}
