Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'CanoneCromatico
  %1
  | r4 c b bes
  | a2 aes4 g8 d~
  | d4 cis c4. b8
  | bes2. a4
  %5
  | r8 g cis d g fis g a
  | bes4. g'8 a,4. fis'8
  | g,8 d bes'4 r8 cis, a'4~
  | a4. d,8 e4 cis8 e
  | \clef "bass" f cis d4 r8 bes a g
  %10
  | a4 f8 fis g4 d
  | cis4. c8 b4 bes
  | a ees'~ ees8 d4 g8
  | cis4 c b bes
  | a8 e4 fis8 g4. gis8
  %15
  | \clef "treble" a4 cis8 d bes'4 b
  | r8 cis e fis g4 d
  | a'8 bes4 a8 d,2
  | cis4 c2 b4
  | r8 e, a fis g cis,4 d8
  %20
  | c2 b4 bes
  | \clef "bass" r8 aes g fis g \clef "treble" d'4 g8
  | cis4 c b bes
  | a a'2 g4
  | fis8 e d c b4. bes8
  %25
  | a4 fis d g
  | r8 c, b a bes2
  | \clef "bass" a2. g4
  | g2 fis
  | g1
    \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1
  | r4 c b bes
  | a2 aes4 g8 d~
  | d4 cis c4. b8
  %5
  | bes2. a4
  | r8 g cis d g fis g a
  | bes4. g'8 a,4. fis'8
  | g,8 d bes'4 r8 cis, a'4
  | a4. d,8 e4 cis8 e
  %10
  | f cis d4 r8 bes a g
  | a4 f8 fis g4 d
  | cis4. c8 b4 bes
  | a ees'~ ees8 d4 g8
  | cis4 c b bes
  %15
  | a8 e4 fis8 g4. gis8
  | a4 cis8 d bes'4 b
  | \clef "treble" r8 cis e fis g4 d
  | a'8 bes4 a8 d,2
  | cis4 c2 b4
  %20
  | \clef "bass" r8 e, a fis g cis,4 d8
  | c2 b4 bes
  | r8 aes g fis g d'4 g8
  | cis4 c b bes
  | \clef "treble"  a a'2 g4
  %25
  | fis8 e d c b4. bes8
  | \clef "bass" a4 fis d g
  | r8 c, b a bes2
  | a2. g4
  | g1
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
    opus = "2023"
    title = \markup {
      "Canone cromatico"
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
    \tempo 4 = 72
  }
}
