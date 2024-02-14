Global = {
  \key d \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral
  \override Rest.staff-position = #0
  %1
  | r16 d fis d a' b cis a d cis d e d fis e d
  | \stemUp cis4 << fis4. \\ { \once\stemUp \shiftOn d4 s8 } >> fis8 e4~
  | e s2.
  | fis4 e8 a <d, fis>4 <e gis>
  %5
  | <e a> <d fis> g16 fis g a \stemNeutral g b a g
  | fis e fis g fis a g fis e4~ e16 e, fis g
  | a g a b a c b a g fis g a g b a g
  | \tieDown fis4 r16 b, d b~ <b e g>4 r16 cis e cis~
  | <cis fis a>4 r16 d fis d~ <d g b>4 s4
  %10
  | \stemUp\tieUp d'4. cis4 b a8~
  | a g4 fis8~ fis16 fis e d e4~
  | e16 e d cis d4~ d16 d cis b cis4
  | s2 e16 b' a g fis e d c
  | b d g a fis8\prall e16 d d8. e16~ e d8 cis16
  %15
  | r16\fermata d fis d g a b g c b c d c e d c
  | b4 a~ a8 g~ g16 fis8 e16
  | fis8 e~ e d~ d4 cis
  | d2_~ d16 a b cis d4
   \override Score.TextMark.self-alignment-X = #CENTER
   \textEndMark \markup { \musicglyph "scripts.ufermata" }
   \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \override Rest.staff-position = #0
  %1
  | s1
  | e8\rest a4 a8 b4. \tieDashed cis8~
  | cis16 a cis a d e fis d g fis g a g b a g
  | g,8\rest d'4 \tieSolid cis8~ cis b4 b8
  %5
  | g8\rest a4 a8 d g,\rest s4
  | s1*2
  | d4 s2.
  | s1
  %10
  | \stemUp \shiftOn a'2 fis
  | \once\override NoteColumn.force-hshift = #0.2
    d s
  | s1*2
  | \stemDown s16 d8.~ d8 cis d4 a8 g
  %15
  | fis8 c' b4 a4. a'8~
  | a g~ g16 e fis8~ fis16 d8.~ d cis16
  | d8 a~ a4 s2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | fis4 e8 a4 a gis8
  | s1
  | c8\rest a~ a[ d~] d d4 cis8
  | s1
  %5
  | s2 g'8 fis e4~
  | e d~ d16 d cis b cis4~
  | cis8 a d4. d4 cis8
  | s1
  | \staffUpper s2. g'16\rest fis a fis_~
  %10
  | \stemDown fis4 e d cis
  | b a b4. b8
  | a4 \staffLower\stemUp b16\rest b fis a g4 b16\rest a e g
  | fis16 a d c b \staffUpper\stemDown d g fis s2
  | \staffLower\stemUp s4 a,~ a16 d, g8 fis e
  %15
  | d_\fermata a'~ a[ g~] g g fis4
  | c'16\rest g b g d'8. c16 b8. bes16 a8 g
  | d16\rest \stemDown  a cis a d e fis d e8[ d] e a,
  | \override Beam.positions = #'(-2 . -3)
    d a_~
    \revert Beam.positions
    a16 a b cis s2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieNeutral
  \override Rest.staff-position = #0
  %1
  | d4 cis b e
  | a16 a, cis a d e fis d g fis g a g b a g
  | fis4 fis e a
  | d16 d, fis d a' b cis a d cis d e d fis e d
  %5
  | cis a cis d c e d c b4 cis8 a
  | a[ fis] b[ a] gis[ e] a[ g]
  | fis4. d8 e4 a
  | \stemNeutral r16 d, fis d g8 g, r16 e' g e a8 a,
  | r16 fis' a fis b8 b, r16 g' b g d'8 d,
  %10
  | r16 d, fis d a' b cis a d b d b fis' g a fis
  | g g, b g d' d fis d g8 g, r16 cis e cis
  | fis8 fis, \stemDown b16\rest b d b e8 e, b'16\rest a cis a
  | d e fis d g fis e d cis a b cis d e fis d
  | g8[ e] a[ a,] b8. g16 a4
  %15
  | \tieDown d1~
  | d
  | d,~
  | \tieDashed d2~ <d d'>
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
    \fine
}

LowerExtra = \context Voice = "five" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*16
  | a8 g fis16 e fis d g fis g a g b a g
  | g g fis e fis4~ fis2
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
      \LowerExtra
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = "BWV 925"
    title = \markup { "Praeludium ex d" \small \raise #1.2 \natural }
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
    \tempo 4 = 80
  }
}
