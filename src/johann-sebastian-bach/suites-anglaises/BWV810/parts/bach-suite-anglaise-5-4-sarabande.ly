Global = {
  \key e \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVSarabande
  %1
  \repeat volta 2 {
  | b8 a16 b c8^. b^. a^. g^.
  | fis16 a g fis g4 e
  | d'8 c16 d e8 d c b
  | a16 c b a g8. b16 e4~
  %5
  | e8 d16 cis d8 e fis4~
  | fis8 e16 dis e8 fis g16 fis e g
  | fis g e fis g8 fis e d
  | cis16\prall b cis d b2
  }
  \repeat volta 2 {
  | fis'16 g a g fis8 dis e fis
  %10
  | g16 a b a g2~
  | g16 fis e fis g8 b a g
  | fis16 e d e fis2~
  | fis8 f16 e f8 b a32( gis16.) fis32( e16.)
  | d16 f e8 f d16\prall cis d8 d32 e f16
  %15
  | e8 d16 e f8 e d c
  | b16 d c b a2
  | a16 g! fis g a b c8 c4~
  | c8 b16 a b cis d8 d4
  | cis16 b a b cis dis e8 e4~
  %20
  | e8 dis16 cis dis e fis8 fis4~
  | fis16 e fis g a8 g fis e
  | dis16 b c!8~ c b16 a g8 fis
  | b8 a16 b c8 b a g
  | fis16\prall e fis g e2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | g4 a8 g fis e
  | dis4 e b
  | g' g8 b a g
  | fis4 g g8\rest g16\rest b
  %5
  | a4. b16 cis! d8 cis
  | b4. cis16 dis! e8 cis
  | d4 e8 d cis b
  | ais4 e8\rest fis dis4\prall
  | dis'4 g,8\rest b cis dis
  %10
  | e4 e2
  | cis4 g8\rest cis d e
  | a,4 a2
  | b4 g\rest g\rest
  | b g\rest g8\rest b
  %15
  | c4 d8 c b a
  | gis4 a2
  | fis8 b,\rest b\rest fis' g a
  | d,4 d8\rest a' gis a16 b
  | e,4 e8\rest b' ais b16 cis!
  %20
  | fis,4 f8\rest c' b a
  | g a16 b c8 b a g
  | fis e dis4 b\rest
  | <e g>8 fis16 g a8 g fis e
  | dis4 a8\rest b g4

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*7
  | s4 a\rest fis
  | s2.*2
  %11
  | s4 e'8\rest a, b cis!
  | d4 \magnifyMusic 0.8 { c\rest c\rest }
  | f,8\rest d d[ d d e]
  | f cis d[ e] f a\rest
  | s2.*9
  | s4 f\rest b,

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | e4 e, a
  | b8 b, e[ fis g a]
  | b4 c c,
  | d8 d, g4 r8 r16 g'
  %5
  | fis8 g fis e d e16 fis
  | g8 a g[ fis] e a
  | d, b e4 e,
  | fis \stemDown b2
  }
  \repeat volta 2 {
  | b'8 b, r a'' g fis
  | e16 fis g fis e8 d cis b
  %10
  | a16 b cis b a8 g fis e
  | d16 e fis e d8 c b a
  | gis gis gis[ gis gis gis]
  | gis gis gis[ gis] gis gis
  | \stemNeutral a a' d,[ e f d]
  %15
  | e e, a[ g! fis e]
  | d4 r8 d' e fis
  | g[ a g fis] e fis16 gis
  | a8[ b a g] fis gis16 ais
  | b8 b, b' a g a16 b
  %20
  | c8 b a[ b c b]
  | b4 b,8 c b a
  | g e a[ b c b]
  | b4 \stemDown e,2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 810"
    title = \markup { "Sarabande" }
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
