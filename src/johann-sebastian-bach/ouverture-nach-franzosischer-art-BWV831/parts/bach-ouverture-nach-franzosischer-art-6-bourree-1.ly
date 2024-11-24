Global = {
  \key b \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \label #'BourreeI
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 fis4
  %1
  | b fis g e
  | fis8 e d cis b4 b'
  | ais b cis d8 b
  | cis4 fis,2 cis'4
  %5
  | d8( cis b2) e8 b
  | cis4 a d cis8\prall b
  | a4 g8 fis e fis g e
  | fis gis a gis gis a b gis
  | a b cis a b cis d b
  %10
  | cis fis e d cis4 b
  | a gis8 fis gis4 eis
    \alternative {
      { \partial 2. fis2. }
      { \partial 2. fis }
    }
  }
  \break
  \repeat volta 2 {
  \partial 4 cis'4
  %15
  | ais fis b cis
  | d8 cis d cis b4 e
  | cis b8 a b4 gis
  | a2.\mordent e8 d
  | e4 fis8 g! a4 g8 fis
  %20
  | g4 e e'2~
  | e8 cis d fis e d cis b
  | ais b cis ais fis4 cis'
  | d8( cis b2) cis8 d
  | e( cis ais2) fis'4
  %25
  | fis, b d8 cis b ais
    \alternative {
      { b2. }
      { b }
    }
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 b8 cis
  %1
  | d4 b e e,
  | b' cis d e~
  | e8 d cis b ais4 b
  | fis'8 e fis g fis e d cis
  %5
  | b4 a'! gis e
  | a, g'! fis e
  | fis g a a,
  | d d'2 cis8 b
  | cis4 fis, d e
  %10
  | a gis8 fis eis4 cis
  | fis d b cis
    \alternative {
      { fis, fis'8 e! d cis }
      { fis,2. }
    }
  }
  \break
  \repeat volta 2 {
  \partial 4 fis4
  %15
  | fis'8 e! fis e d cis b ais
  | b4 fis'8 gis a! gis fis gis
  | a4 fis d e
  | a, a'8 b cis d cis b
  | a b a g! fis4 b
  %20
  | e,8 fis g e cis d e cis
  | ais4 b g e
  | fis fis'~ fis8 gis ais fis
  | b( a! g! b) a( g fis a)
  | g( fis e g) fis( e d fis)
  %25
  | e( d cis b) fis'4 fis,
    \alternative {
      { \partial 2. b8[ d cis b] ais[ gis] }
      { \partial 2. b2. }
    }
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
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 831"
    title = \markup { "Bourrée I" }
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
