Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | e4 r8 f g4 r8 c
  | f,8 \mordent[ f ] d'[ f,] f[ e] r4
    \noBreak
  | d4 \mordent r8 e f4 r8 f
  | e8[ g] g16[ f g a] \appoggiatura e8 d4-\prall^\markup {
      \hspace #0.6 \musicglyph "scripts.turn"
    } r16 g[ b d]
  %5
  | e16[ d c b] a[ g fis e] fis[ d fis a] fis[ d fis a]
  | d[ c b a] g[ fis e d] e[ c e g] e[ c e g]
  | c[ b a g] fis[ g a fis] d[ e fis g] a[ b c a]
  | d8[ g,] b16[ a g fis] g[ d b8] r4
  }
  \break
  \repeat volta 2 {
  | b'4 r8 c d4 r8 e
  %10
  | f!8[ f] f[ e] d[ c] r4
  | <c g'>4 r8 bes a4 \mordent r8 a'
  | b!8[ c] f,[ e] \appoggiatura f16 e8[ d] r16 g,[ b d]
  | g16[ f e d] c[ bes a g] a[ f a c] a[ f a c]
  | f[ e d c] b[ a g f] g[ f g d'] g,[ f g d']
  %15
  | e[ d c b] a[ g f e] d[ f a c] b[ g b d]
  | g8[c,] e16[ d c b] c[ g e c]
    \once\override Voice.Rest.X-offset = #1 r4
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | <g c\atLeft\mordent>4
    s8 d' <c e\atLeft\mordent>4 s8 e
  | d8[ d] d\rest d d[ c] s4
  | b4 s8 c d4 s8 d
  | c8[ e] c[ c] \appoggiatura c b4 s
  %5
  | s1*4
  }
  \repeat volta 2 {
  | <d g\atLeft\mordent>4 s8 a' <g b\atLeft\mordent>4 s8 c
  | d[ d] d[ c] b[ a] s4
  | g4 s8 g f4 s8 c'
  | f8[ e] d[ c] c[ b] s4
  | s1*4
  }
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | \once\override NoteColumn.force-hshift = #0.5 r16 c[ e g] c4
    \once\override NoteColumn.force-hshift = #1 r16 c,[ e g] c4
  | r16 c[ d c] b[ d g, b] c[ c, e g] c[ d e f]
  | g[ g, b d] g4 r16 g,[ b d] g4
  | r16 g,[ c e] e,8[ f] g16[ g' d b] g8[ g']
  %5
  | c,[ g' c, a'] d,[ a' c, a']
  | b,[ a' b, g'] c,[ g' b, g']
  | a,[ g' a, g'] fis[ a fis d]
  | b[ e c d] g r16 g g,4
  }
  \repeat volta 2 {
  | \once\override Voice.Rest.X-offset = #1.5 r16 g[ b d ] g4
    \once\override Voice.Rest.X-offset = #1 r16 g,[ b d ] g4
  %10
  | r16 a[ b a ] gis[ b e, gis] a[ a, c e] a[ b c d]
  | e[ e, g c] e4 r16 f,[ a c] f[ e f e ]
  | d[c d c] b[ g c e] g[ fis g d] b[ d g, b]
  | e,8[ c' e, c'] f,[ c' e, c']
  | d,[ b'! c, a'] b,[ f' e d]
  %15
  | c[ e f a] f[ d g f]
  | e[ a f g] c,4 \once\override NoteColumn.force-hshift = #1 c,
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
      \Bass
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 933"
    title = \markup { "1. Kleines Präludium C-Dur" }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 104
  }
}
