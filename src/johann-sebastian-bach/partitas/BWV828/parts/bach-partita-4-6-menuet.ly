Global = {
  \key d \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  \repeat volta 2 {
  | fis4.^\mordent g32 fis e fis g4
  | e a2^\mordent
  | \tuplet 3/2 { d,8 e fis g fis e a g fis }
  | e2^\prallmordent d4
  %5
  | fis4.^\mordent g32 fis e fis g4
  | e4 a2
  | \tuplet 3/2 { d,8 e fis g fis e a g fis }
  | e2.
  }
  \break
  \repeat volta 2 {
  | \stemNeutral\tieNeutral
    \tuplet 3/2 { a,8 b cis d cis b cis b a }
  %10
  | a'4 e8 d cis b
  | \tuplet 3/2 { a8 b cis d cis b cis b a }
  | g'2.
  | \tuplet 3/2 { fis8 e d cis d e d cis b
  | ais8 b cis b ais gis } fis4~
  %15
  | \tuplet 3/2 {
      fis8 gis ais b cis d e d cis
  |   d8 e fis g fis e fis g a
  |   g8 fis g a, cis e g fis e
  |   fis8 e fis ais, cis d e d cis
  |   d8 cis b
    }
    cis4 ais
  %20
  | \stemUp b2.
  | fis4.^\mordent g32 fis e fis g4
  | a4 <a c>2
  | \stemNeutral \tuplet 3/2 { b8 cis d cis d e d e fis
  | e8 d cis d cis b a cis e }
  %25
  | a4. b32 a g a b4
  | \stemUp <a, cis>4 <e' g>2
  | \stemNeutral \tuplet 3/2 { fis8 e d e fis g a, b cis }
  | d2.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  | s2.*19
  %20
  | \tuplet 3/2 {  d8\rest fis d b \staffLower\stemUp fis d b d fis }
  | \staffUpper\stemDown d'2.~
  | d
  | s2.*3
  % 26
  | e4 a2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | cis4\rest d8 cis d4~
  | d4 cis8 b cis4
  | <a d> <g a cis> <fis a d>
  | d' cis d8 a
  %5
  | d4 a b
  | g e2
  | fis,8. d'16 e,8. cis'16 d,8. d'16~
  | d8 b cis e a4
  | s2.*4
  %13
  | c4\rest <b e> <g b>
  | c\rest cis2~
  %15
  | cis4 <fis, b> <fis ais>
  | <fis b> e b'~
  | b e, <cis e>
  | d <e g> <cis fis>~
  | fis e cis
  %20
  | s2.*5
  %25
  | s4 <fis a d> d'
  | s2.
  | s4 <b, g'> <e g>~
  | g8 e fis d d,4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  \repeat volta 2 {
  | d2 b'4
  | g2.
  | fis4 e d
  | a'2 d,4
  %5
  | d4\rest d2~
  | d4 cis8 b a g
  | fis4 e d
  | a'2.
  }
  \repeat volta 2 {
  | R1*3/4
  %10
  | \stemNeutral a8 b cis d e fis
  | g4 r r
  | ais,8 b cis d e cis
  | \stemDown d4 g e
  | fis4. d8[ e8. cis16]
  %15
  | d2 cis4
  | b4 cis dis
  | e4 cis a
  | d,4 cis' ais
  | b4 e, fis
  %20
  | b2 s4
  | \stemNeutral\tieNeutral b'4 a8 g fis e
  | fis8^([ g16 a g8 fis e d])
  | g8.[ fis16 g8. e16 fis8. d16]
  | a'8.[ e16 a,8. cis16 e8. g16]
  %25
  | fis4 d g~
  | \tuplet 3/2 { g8 fis e d cis b cis b a }
  | \stemDown d4 g, a
  | d4. s
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 828"
    title = \markup { "Menuet" }
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
