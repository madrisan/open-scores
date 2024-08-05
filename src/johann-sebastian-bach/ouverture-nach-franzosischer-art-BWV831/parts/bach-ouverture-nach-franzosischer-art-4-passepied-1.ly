Global = {
  \key b \minor
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override Glissando.style = #'dashed-line
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 d8
  %1
  | cis8.\prall b32 cis d8
  | b8 cis ais
  | b a16 g fis e
  | d8\prall cis16 b d'8
  %5
  | cis8.\prall b32 cis d8
  | b e cis
  | d e16 d cis b
  | <ais fis'>4
  }
  %\break
  \repeat volta 2 {
  \partial 8 fis'8
  | dis8.\prall cis32 dis e8
  %10
  | \stemNeutral fis a, b
  | g a16 g a fis
  | g8 e e'
  | d!16( cis b a) d8^.
  | g,16_( fis e d) b'8_.
  %15
  | a8 g16 fis e fis
  | \slurDown \appoggiatura e8 d4*1/2 \glissando
    \autoBeamOff
    \change Staff = "lower" \once\stemDown \once\omit Flag \once \omit Stem fis,8 \change Staff = "upper"
    fis'8_.
    \autoBeamOn
  | e8.\prall d32 e a8
  | fis8 b gis
  | \stemNeutral a b16 cis d b
  %20
  | cis b a b cis d
  | e8 cis8.\prall b32 cis
  | d16 e fis b, g'8^.
  | \once\stemUp \appoggiatura g8 fis8 e16 d cis b
  | ais4\trill \stemUp d8
  %25
  | cis8.\prall b32 cis d8
  | b cis ais
  | b a16 g fis e
  | d8 cis16 b d'8
  | cis8.\prall b32 cis d8
  %30
  | b e cis
  | d b ais
  | b4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 fis8
  %1
  | g4 fis8
  | d e cis
  | s4.
  | s4 fis8
  %5
  | g4 fis8~
  | fis e fis
  | fis4 e8
  | fis4
  \partial 8 cis'8
  | b s4
  | s4.*14
  %24
  | s4 fis8
  | g4 fis8
  | d e cis
  | s4.
  | s4 fis8
  | g4 fis8~
  %30
  | fis e fis~
  | fis d cis
  | d4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Glissando.style = #'dashed-line
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 8 b8
  %1
  | b4 ais8
  | s4.
  | b4 ais8
  | s4.
  %5
  | b8\rest b ais
  | b4 cis8
  | b4.
  | cis4
  \partial 8 fis8
  | fis s4
  %10
  | c8\rest fis,4
  | e4 dis8
  | e16 s s4
  | s4.*3
  %16
  | \once\override Voice.Rest.X-offset = #0.2 c'16\rest e, fis g a b
  | cis8 s4
  | \change Staff = "upper" b8\rest \once\stemDown d \change Staff = "lower" b
  | a4 gis8
  %20
  | a16 s s4
  | g!4 fis8~
  | fis b ais
  | \change Staff = "upper" \once\stemDown \once\omit Flag \once\omit Stem \grace g''8 \glissando
    \change Staff = "lower" b,,4 g8
  | fis4 b8
  %25
  | b4 ais8
  | s4.
  | b4 ais8
  | s4.
  | c8\rest b ais
  %30
  | b4 cis8
  | b s fis
  | fis4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override Glissando.style = #'dashed-line
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 b8
  %1
  | e4 fis8
  | <g b> e fis
  | <d fis> e fis
  | b16 fis e d cis b
  %5
  | e4 fis8
  | g gis ais
  | b a g
  | fis4
  }
  \repeat volta 2 {
  \partial 8 ais8
  | b a16 g fis e
  %10
  | dis4 b8
  | e a, b
  | e16 fis g fis g e
  | a8 g fis
  | b16^( a g fis) g e
  %15
  | fis8 g a
  | \change Staff = "upper" \once\stemDown \once\omit Flag \once\omit Stem \grace e'8 \glissando
    \change Staff = "lower" d,4.
  | b8\rest a16 b cis a
  | d8 b e
  | <cis e> <d fis> e
  %20
  | a,16 b cis d e fis
  | a,8\rest ais4
  | b8 d cis
  | d g e
  | fis16 e d cis b8
  %25
  | e4 fis8
  | <g b> e fis
  | <d fis> e fis
  | b16 fis e d cis b
  | e4 fis8
  %30
  | g gis ais
  | b d, fis
  | b,4
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
    opus = ##f % "BWV 831"
    title = \markup { "Passepied I" }
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
