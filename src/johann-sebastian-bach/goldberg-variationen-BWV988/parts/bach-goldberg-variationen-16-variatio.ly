Global = {
  \key g \major
  \time 2/2
  \include "../global.ly"
}

staffLower = \change Staff = "lower"
staffUpper = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \stemNeutral
    b4\rest b32\rest g[ a b c d e fis] g8.[ d16 b8. g16]
  | d'4.\mordent e8 c4~\downprall c8~[ c32 b c d]
  | g,8.[ g'32 fis] g8.[ e16] \once\stemUp \grace d8 cis8.[ b'16 a8. g16]
  | \once\stemUp fis4.\downprall g8 \once\stemUp \grace g8 a2~
  %5
  | a8~[ a32 a g fis] g8.[ d16]_~ d2
  | \stemUp \grace f8 e8~[ e32 d c b ] c8~[ c32 b a g] a8.[ a16] \stemNeutral g'8.\mordent[ g16]
  | \once\override Arpeggio.positions = #'(-1 . 3)
    \once\stemUp g4~\arpeggio g32[ b a g fis e d c] a'8.[ c,16] a'8.[ c,16]
  | b4~ \downprall b8~[ b32 a g fis] g16[ d'-. e-. fis-.] g-.[ fis-. g-. a-.]
  | b8~[ b32 a g fis] g8~[ g32 fis e dis] \stemUp e8.[ b16 cis8. \mordent d16]
  %10
  | \grace d8 cis8~[ cis32 e fis g] a8.[ a16] a4~ a8~[ a32 a g fis]
  | g8~[ g32 fis e dis] e8.[ b'16] d,4.\downprall cis16[ b]
  | cis8~[ cis32 d cis d] d8.\prallprall[ cis32 d] e4~ e32[ d cis b a g fis e]
  | d8.[ fis16 a8.\mordent b16] c4~ c8~[ c32 c b a]
  | b8~[ b32 cis d e] d8~\prallprall[ d32 cis d e] a,8~[ a32 e' fis g] a8.[ cis,16]
  %15
  | \once\override Voice.Script.X-offset = #12
    \once\override Voice.Script.padding = #-1.5
    d4.\turn e8 e4.\downprall d8
  }
  \alternative {
    { <fis, a d>1 }
    { \time 3/8 d'8[ a'16 g fis e] }
  }
  \break
  \repeat volta 2 {
  | fis8[ g\turn a]
  | d,16[ fis e g fis a]
  %20
  | g8[ fis g]
  | e[dis e]
  | a4.~
  | %\override Staff.NoteHead.whiteout = ##t
    a8[ g16 e fis dis]
  | \once\shape #'(((0 . 0.8) (0 . 1.5) (0 . 1.5) (0 . 0.8))) Tie
    b'4.~
  %25
  | b16[ c b a g fis]
  | g[ e a e b' e,]
  | c'[ b a g fis e]
  | d[ fis e g fis a]
  | g[ a a8. \prallprall g32 a]
  %30
  | b4 g8
  | e[fis dis]
  | e4 f8\rest
  | f8\rest e16[ d c b]
  | c8[ d e]
  %35
  | a,16[ c! b d cis e]
  | d32[ e fis16] fis8.\downprall[e32 fis]
  | g8[ fis16 e d c]
  | b[ d c e d f]
  | e4.~
  %40
  | e16[ d c b c fis]
  | a[ d, c b c a]
  | b[ e d c d gis]
  | b[ e, d c d b]
  | c4.~
  %45
  | c16[ b a b c a]
  | d4 b8
  | g[ a fis]
  }
  \alternative {
    {
  |   g4 r8
  |   \stemDown r a'16[ g fis e]
    }
    { \time 2/2 <b, d g>1 }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s1
  | s1
  | s1
  | d4 s2.
  %5
  | \stemUp s2 \grace e8 f!4.\mordent g8
  | \stemDown c,8 s s2.
  | << { \stemDown b4 } \\ { \stemUp \shiftOn d4 } >> s2.
  | s1*7
  %15
  | s2 cis
  }
  \alternative {
    { s1 }
    { \time 3/8 s4. }
  }
  \repeat volta 2 {
  | \stemDown a8\rest d16[ c! b a]
  | b8[ c d]
  %20
  | g,16[ b a c b d]
  | \stemUp\tieUp \shiftOn
    \once\shape #'(((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))) Tie
    c4.~
  | \override Stem.details.beamed-lengths = #'(5.4 5.4 5.4)
    c16 g' fis e dis e
    \revert Stem.details.beamed-lengths
  | \once\shape #'(((0.8 . -0.5) (0 . -0.6) (0 . -1.2) (-0.5 . -0.4))) Tie
    b4.~
  | b16 cis dis e fis dis
  %25
  | \stemDown e8 s4
  | s4.*2
  | a,8 b c
  | d e fis
  %30
  | g4 d8
  | g, a fis
  | g gis8.^\prallprall fis32 gis
  | a4 gis8
  | a8 g!4
  %35
  | fis8 g e
  | fis16 e\rest e8\rest e\rest
  | s4.*2
  | e8\rest fis!
    %\once\override Voice.Script.padding = #-1 g^\turn
    g_\turn
  %40
  | a e\rest e\rest
  | s4.*3
  | e16\rest g fis g a fis
  %45
  | \tieDown d4.~
  | d16 fis e g fis8
  | b,8 c a
  }
  \alternative {
    {
  |   b4 b8\rest
  |   s4.
    }
    { \time 2/2 s1 }
  }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | << { \shiftOnn \stemUp b4 } \\ { \shiftOn \stemUp d4 } \\ { \shiftOff \stemUp g4 } >>
    a4\rest a\rest a8\rest a16\rest b
  | a4 s2.
  | s1*11
  | s4 d8\rest d16\rest b cis4 s
  %15
  | s1
  }
  \alternative {
    { s1 }
    { \time 3/8 s4. }
  }
  \repeat volta 2 {
  | s4.*3
  %21
  | \staffUpper \stemDown e8\rest a16[ g fis e]
  | fis8 g a
  | dis,16 fis e g fis a
  | g8 fis e\rest
  %25
  | \staffLower \stemUp e8\rest e dis
  | e4.~
  | e4 g8\rest
  | s4.*4
  %32
  | \stemDown d8\rest e16[ d c b]
  | c8 d e
  | a,16 c b d cis e
  %35
  | d4.~
  | d8 b\rest b\rest
  | \stemUp b\rest g fis
  | g4.~
  | g8 a\rest a\rest
  %40
  | s4.*8
  }
  \alternative {
    { s4.*2 }
    { \time 2/2 s1 }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\tieNeutral
  \repeat volta 2 {
  %1
  | g4 g\rest g\rest g8\rest g16\rest g'
  | fis4_~ fis32[ d e fis g a b c] \stemNeutral d8.[ a16 fis8. d16]
  | e4. g8 e4~^\downprall e8~[ e32 d e fis]
  | d8.[ c'!32 b] c8.[ a16] fis8.[ e'16 d8. c16]
  %5
  | b4.^\downprall b8 b8~[ b32 c b a] b8.[ g16]
  | c4^~^\mordent c8~[ c32 d c b] c8~[ c32 b a g] a8~[ a32 g fis e]
  | d2^~ d16 [ c32 b a g fis e] d16[ fis a d]
  | g,16-.[ d'-. e-. fis-.] g^.[ fis^. g^. a^.] b4~^\prallprall b8~[ b32 a g fis]
  | g16^.[ b^. cis^. dis^.] e^.[ dis^. e^. fis^.] g8.[ g,16 g'8. g16]
  %10
  | g4^~ g8~[ g32 g fis e] fis8~[ fis32 b, cis dis] e8.[ e16]
  | e4^~ e8~[ e32 c b a] gis8.[ b16 e,8. gis16]
  | a4^~ a16[ a,32 b cis d e fis] g8.[ e16 cis8. a16]
  | fis'4^~ fis8~[ fis32 g fis e] d8~[ d32 c b a] g8~[ g32 d' e fis]
  | \stemDown g8.^\mordent[ g,16] g'8.[ g16] g4~ g8~[ g32 g fis e]
  %15
  | \stemNeutral fis16~[ fis32 d e fis g a] b8.[ g16] a4 a,
  }
  \alternative {
    { d,4~ d16[ d'32 e fis g a b] c!8.[ a16 fis8. d16] }
    { \time 3/8 d,4 r8 }
  }
  \repeat volta 2 {
  | R1*3/8*6
  | r8 b''16 a g fis
  %25
  | g8[ a b]
  | e,16[ g fis a g b]
  | a8[ b c]
  | fis,16[ a g b a c]
  | b8[ c d]
  %30
  | g,16[ b a c a d]
  | c8[ a b]
  | e, e,\rest e\rest
  | s4.*3
  %36
  | \stemDown g8\rest d'16[ c b a]
  | b8 c d
  | g,16[ b a c b d]
  | c b a g fis e
  %40
  | \stemNeutral fis8[ g^\turn a]
  | d,16[ fis e g fis a]
  | g8[ a^\turn b]
  | e,16[ gis fis a gis b]
  | a e' a g fis e
  %45
  | fis g fis e d c
  | b d c e d fis
  | e8 c d
  }
  \alternative {
    {
  |   g,16 fis g a b c
  |   d8 d, r
    }
    { \time 2/2 g1 }
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
      \Sopran
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
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 16 a 1 Clav." }
    subtitle = \markup { "Ouverture" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=90 }
}
