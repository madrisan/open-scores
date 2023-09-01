Global = {
  \key g \major
  \time 9/8
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | g8[ b d] b[ g d'] b[ g g']
  | fis4\prall d8 a'[ fis d] a'[ fis d]
  | g[ d b] f'[ d b] f'[ d b]
  | e[ c a] fis![ a c] e[ d c]
  %5
  | d[ b g] e[ g b] d[ c b]
  | c[ a fis] d[ fis a] c[ b a]
  | b[ c d] e[ b g'] e[ b g']
  | a,[ b cis] d[ a fis'] d[ a fis']
  | g,4.\mordent~ g8[ a g] fis[ g e]
  %10
  | fis[ g fis] e[ fis d] a'[ b c]
  | b[ c b] a[ b g] e'[ fis g]
  | cis,[ d cis] b[ cis a] g'[ a b]
  | a[ g fis] e[ fis d] a[ d cis]
  | d4.\mordent r4 r8 r4 r8
  %15
  | a8[ cis e] cis[ a e'] cis[ a g']
  | fis4.\prall d r4 r8
  | g,8[ b d] b[ g d'] b[ g f']
  | e[ c a] a'[ e c] a[ b c]
  | d[ b g] g'[ d b] g[ a b]
  %20
  | c2.\prall~ c4.~
  | c2.~ c4.
  | \tieUp b2.\prall~ b4.~
  | b2.~ b4.~
  | b8[ e d] c[ d b] a[ b g]
  %25
  | a[ c b] a[ b g] fis[ g e]
  | fis4\prall d8 a'4\prall fis8 d'4\prall fis,8
  | g8[ b d] b[ g d'] b[ g g']
  | d[ fis a] fis[ d a'] fis[ d c']
  | b[ a g] fis[ g a] d,[ g fis]
  %30
  | g[ fis e] d[ c b] a[ b c]
  | b[ a g] fis[ g a] d,[ g fis]
  | g[ d b] g4. r4 r8
    \fine
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | R1*9/8
  | d8[ fis a] fis[ d a'] fis[ d c']
  | b4\prall g8 d'[ b g] d'[ b g]
  | c[ e c] a[ c a] fis[ g a]
  %5
  | b[ d b] g[ b g] e[ fis g]
  | a[ c a] fis[ a fis] d[ e fis]
  | g4.~\mordent g8[ fis e] d[ e cis]
  | fis4.~\mordent fis8[ e d] cis[ d b]
  | e[ fis g] a[ e cis'] a[ e cis']
  %10
  | d4.\mordent~ d8[ d, e] fis[ e d]
  | g4.\mordent~ g8[ e fis] g[ fis e]
  | a4.\mordent~ a8[ g fis] e[ d cis]
  | d[ e fis] g[ a b] a4 a,8
  | d[ fis a] fis[ d a'] fis[ d d']
  %15
  | cis4.\prall a r4 r8
  | d,8[ fis a] fis[ d a'] fis[ d c']
  | b4.\prall g r4 r8
  | c,4.\mordent~ c8[ d e] fis,[ g a]
  | b4.\mordent~ b8[ c d] e,[ fis g]
  %20
  | a[ c e] a[ e c] a[ b c]
  | d[ fis a] d[ a fis] d[ e fis]
  | g[ b d] g[ d b] g[ a b]
  | e,[ g b] e[ b g] e[ fis g]
  | c,2.\prall~ c4.~
  %25
  | c2.~ c4.~
  | c8[ d fis] a[ fis d] c[ b a]
  | b[ g b] d[ b g] d'[ b g]
  | fis[ d fis] a[ fis d] a'[ fis d]
  | g[ a b] a[ b c] b[ c d]
  %30
  | e,4.~ e4 e'8 fis[ e d]
  | g4\mordent b,8 e[ d c] d4\mordent d,8
  | g4.~ g8[ b d] g4.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
    \fine
}

\score {
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceTwo
      >>
    >>
  }
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 781"
    title = \markup { "Invention X" "(G-Dur)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4. = 116
  }
}
