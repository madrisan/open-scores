Global = {
  \key a \minor
  \time 4/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIAllemande
  \repeat volta 2 {
  \partial 16 e16
  %1
  | e8. e16 a gis a b d, f e f~ f f e d
  | c b a b g'8\rest a~ a16 a gis a b4~
  | b8 e, \stemNeutral a8. g!16 f e d e fis g a fis
  | g8 d g8. f!16 \stemUp e2
  %5
  | d1~
  | d16 f e d c8.\prall b16 b g! b e \override Stem.details.beamed-lengths = #'(4.5 4.5 4.5) g8. g16
  | \revert Stem.details.beamed-lengths
    g8. a16 fis8. fis16 fis a g fis e dis e fis
  | a, c b c dis, c' b a g fis e fis g a b g
  | \stemNeutral c8.\mordent b16
    \stemUp
    a4~ a16
    a g fis g e fis g
  %10
  | \stemNeutral cis, e d! e ais, g' fis e dis cis b8 b'8.\mordent b16
  | e16 c b a fis'8.\mordent fis16 fis( g32 a g16 fis) \stemUp fis8.\prall e16
  | \once\override Tie.staff-position = #9
    e2\parenthesize~ e4..
  }
  \pageBreak
  \repeat volta 2 {
  \partial 16 b16
  | b8. b16 d, f e d gis e f e b' d, e f
  | cis b a b cis d e f g f e f g bes a g
  %15
  | \stemUp c8. c16 b! c c\prall b32 c d8. e16 a, b c d
  | b8. d16 f,! a g f b g a g d' f, g a
  | \slurDown\stemNeutral \appoggiatura f16 e8. b''16 d, f e d gis e f e b' d, e f
  | cis b cis a \stemUp g'8. g16 g a f g e8.\prall a16
  | \stemNeutral\slurNeutral g( f e d) f8.\mordent f16 f b, c d e8. e16
  %20
  | e c b a d8.\mordent d16 d gis, a b c8. c16
  | c a g! f! bes a gis a d, gis a b c b c a
  | b8 e, e'8. e16 e( c b a) a'8. a16
  | \stemUp\slurUp s4 b8. b16 b( a32 gis a16) d, c8 b16\prall a
  | \once\override Tie.staff-position = #7 a2\parenthesize~ a4..
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 16 s16
  %1
  | c2 \once\override NoteColumn.force-hshift = #-0.7 b4 gis8
    \once\override Voice.Rest.X-offset = #-0.8 a\rest
  | a8 d,8\rest \stemUp c'4 \once\override Stem.length = #4 b2
  | s1
  | s2 \stemDown\tieDown g16\rest d' c b a c b c
  %5
  | fis,8. a16 gis a
    \override Script.Y-offset = #1
    a^\prall
    gis32 a b2~
  | b4 a s8.
    \once\shape #'(((0 . 0) (0 . 0.2) (0 . 0.4) (-0.6 . 0.4))) Tie
    \once\omit Flag \once\omit Stem
    e'16~
    \stemUp \shiftOn e8. e16
  | c4 c \once\override Tie.staff-position = #-0.1 b^~ b16 s8.
  | s4 \stemDown dis, s2
  | s4 d16\rest g fis e dis8 b\rest s4
  %10
  | s1
  | s2. dis'4
  | a16\rest d! c b
    << { c16 gis a c \stemUp \shiftOn b4.. } \\ { f16\rest \stemDown gis a8 gis4 } >>
  }
  \repeat volta 2 {
  \partial 16 s16
  | gis8. s16 s2.
  | s1
  %15
  | \stemDown f16\rest a d,8 d4\rest g4. fis8
  | g8. s16 s2.
  | s1
  | s4 a8.\rest e'16 e8 d cis4
  | s1*4
  %23
  | \slurUp a'16( f e d~) d8. d16 d8 c16 b a8 gis
  | d16\rest \stemUp g! f e
    << { b\rest \stemDown cis d8 cis4.. } \\ { \stemUp f16 cis d fis \shiftOn e4.. } >>
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  \partial 16 s16
  %1
  | \change Staff = "upper" \stemDown \once\override Voice.Rest.X-offset = #0.7 e16\rest e a g f8 e
    \once\override NoteColumn.force-hshift = #0 f[ d]
    \change Staff = "lower" \stemUp b \change Staff = "upper" \stemDown\tieDown gis'
  | s4 a16 gis a b d, f e f^~ f f e d
  | \change Staff = "lower" \stemUp e8 f\rest s2. \change Staff = "upper" \stemDown\tieDown
  | s1*2
  %6
  << {
  | \stemDown\tieDown s2 s8 b8~ b8. b16
  } \\ {
  | \mergeDifferentlyDottedOn
    s2 e,16\rest g8.
  } >>
  | b4 a a g16 s8.
  | s1
  | \change Staff = "lower" \stemUp s2 a,8\rest fis b g
  %10
  | e[ g] cis, ais' s2
  | s1
  | c8\rest c16\rest gis a b c dis << { s16 e,, gis b e8. } \\ { \stemUp e'4 } >>
  }
  \repeat volta 2 {
  \partial 16 s16
  | \change Staff = "upper" \stemDown
    e8. s16 s2.
  | \change Staff = "lower" \stemUp
    s1*2
  %16
  | \stemUp\tieUp s2. b4~
  | b2~ b8 b e,[ gis!]
  | a8. s16 s2 a4~
  | a s2.
  | s1*4
  %24
  | f8\rest f16\rest cis d e f gis a4 a8.
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 16 r16
  %1
  | a1~
  | a8. \change Staff = "upper" \stemDown e'16
    s2 \change Staff = "lower" gis,4
  | \stemNeutral\tieNeutral c16 b a b cis d e cis d8 a d8. c16
  | b16 a g a b c d b c2^~
  %5
  | c16 e d c b d c d gis,16 a b gis d f! e d
  | c4~ c16 c b a e'8. b'16 e dis e fis
  | a, c b c dis, c' b a g4~ g16 g fis e
  | fis fis g a b8 b, e4~^\mordent e16 d! c b
  | a g a b c b c a \stemDown\tieDown b2~
  %10
  | b b'8. \stemNeutral a!16 g e fis g
  | c,!8. b16 c a b c dis,8 e b'4
  | \stemDown e2 r16 e,8.~ e
  }
  \repeat volta 2 {
  \partial 16 r16
  | \stemNeutral e b' e fis gis8 a b[ a] gis e
  | a8. a,16 g!16 bes a g cis a bes a e' g, a bes
  %15
  | fis d' e fis g a a^\prall g32 a b16 c c^\prall b32 c d8 d,
  | g,16 d' g a b8 c d[ c] \stemDown b a
  | gis a gis fis e[ d] c b
  | a8. a'16 bes16 a bes g cis a d g, a8 a,
  | d4~ d16 d e f g g a b c c d e
  %20
  | \tieUp \stemNeutral f4~ f16 b,, c d e e fis gis a a b c
  | d4~ d16 f, e d gis e f e a d, e f
  | gis, gis a b c c d e f4~ f16 d e f
  | b, b c d gis, gis a b c,8 c'16 d e8 e,
  | \stemDown\tieDown a2
    << { \stemDown\tieDown g16\rest a8.~ a } \\ { s16 \stemUp a cis e s8. } >>
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
    opus = ##f % "BWV 807"
    title = \markup { "Allemande" }
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
