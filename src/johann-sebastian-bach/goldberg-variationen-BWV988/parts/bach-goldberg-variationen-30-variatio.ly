Global = {
  \key g \major
  \time 4/4
  \include "../global.ly"
}

staffLower = \change Staff = "lower"
staffUpper = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'VariatioXXX
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
    \partial 8 { d8\rest }
  %1
  | b2\rest d4\rest d8\rest d,
  | g8[ a b c] d[ c16 b] a8 r
  | d4 d e e
  | d8[ e d c] b\prall[ a] g4
  %5
  | b'2\rest b4\rest b8\rest d,
  | g fis e d cis\prall b16 cis a8 f'\rest
    \break
  | a4 a b b
  | a8 b a g fis[ e] d
  }
  \repeat volta 2 {
    \partial 8 { a' }
  | fis[ a fis a] d,[ e16 fis] g8[e ]
  %10
  | a[ g fis e] dis[ cis16 dis] b8[ b']
  | e,[ b' e, b'] dis,16[e fis g] a8[ g16 fis]
  | g8[ fis16 e] dis16[ e fis dis] e2~
  | e16[( d) fis( e) ] g[( fis) a8] d,4. c16[ d]
  | e8[ fis16 g] a8[ g] fis16\prall[ e32 fis d8] a'4\rest
  %15
  | b8[ c d b] c[ b a g]
  | fis[ g a fis] g4 g8
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \repeat volta 2 {
    \partial 8 { e8\rest }
  %1
  | R1
  | g4 g a a
  | g8 a g f e d c b'
  | a g a fis g4 g8 d
  %5
  | \stemUp g8 a b c d8 c16 b
    \override Beam.positions = #'(2 . -1)
    a8 \stemDown d~
    \revert Beam.positions
  | \shiftOn d8 c b4 a4. b16 cis
  | d8[ e fis d] b[ d g fis]
  | << {
      e8.[ d16~] d16[ cis e8~] \once\override NoteColumn.force-hshift = #1 e16 d8 cis16
      \once\override NoteColumn.force-hshift = #0 d8
    }
    \new Voice {
      \stemDown s4. a8_~
      \override Stem.details.beamed-lengths = #'(4.5 4.5 4.5)
      a[ g]
      \once\override NoteColumn.force-hshift = #1 fis
    }
    >>
  }
  \repeat volta 2 {
    \partial 8 { g8\rest }
  | a4 a b b
  %10
  | a8[ b a g] fis[ e] dis c\rest
  | b'4 b c c
  | b8[ c b a] g[ fis16 g] e8 e\rest
  | e2\rest  g4 g4
  | c8.[ d16] c8[b ] a[ b] c[ d]
  %15
  | b8[ a16 b] g8 g\rest g\rest e'16[ d c8 e]
  | a,16[ d c b] c[ a d8~ ] d8[ c16 d] b8
  }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
    \partial 8 { d8 }
  | g a b c d[ c16 b] a8[ g16 a]
  | b8 a g2 fis8\prall[ e16 fis]
  | g4 c8\rest d c b a g
  | fis4~\prallprall fis16 e32 fis d8~ d4 c'\rest
  %5
  | \staffUpper\stemDown g'4 g a a
  | \shiftOff g8[ a g fis] e[ \staffLower\stemUp d] cis d\rest
  | fis, g a fis g fis e d
  | cis d e cis d4 d8
  }
  \repeat volta 2 {
    \partial 8 { fis' }
  | d[ fis d fis] g[ d d g]
  %10
  | e r r4 fis fis
  | g g fis8[g fis e]
  | dis[ e16 fis] \clef bass b,4~ b8[ a16 b] g8[a16 b]
  | c8[ \clef treble d e fis] g[ fis16 e] d8 b'\rest
  | b\rest a e[ d16 e] fis8 g4 fis8
  %15
  | d4 d e e
  | d8[ e d c] b[ a] g
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
    \partial 8 { g8\rest }
  %1
  | g'2 fis
  | e d4. c8
  | b2 c
  | d g,4 b8\rest b'16[ a]
  %5
  | g8[ fis16 g] e8[ d16 e] fis4. b8
  | e,4. fis16[ g] a4~ a16[ g fis e]
  | fis4 d g g,
  | a2 d,4 d8\rest
  }
  \repeat volta 2 {
    \clef treble
    \partial 8 { b''\rest }
  | d4 c b g
  %10
  | c8[ b c a] b4. a8
  | g8[ e' g, e'] a,4. ais8
  | b4 \clef bass b, e4. d!8
  | c4 \clef treble c' b4. c16[ b]
  | a4. b16[ c] d4. c16[ d] \clef bass
  %15
  | g,8[ a b g] c4. cis8
  | d4 d,_\markup { \italic "Aria da Capo e Fine." } g g,8
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
    title = \markup { \smallCaps "Variatio 30 a 1 Clav." }
    subtitle = \markup { "Quodlibet" }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 11
    }
  }
  \midi { \tempo 4=100 }
}
