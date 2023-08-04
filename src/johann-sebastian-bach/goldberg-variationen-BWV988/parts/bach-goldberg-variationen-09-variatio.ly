Global = {
  \key g \major
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b8[ a b c] d[ a d c]
  | b[ d] g4~ g8[ a16 g] fis4
  | g8[ fis g a] b[ fis b a]
  | g8[ a16 b] c4~ c8[ b16 a] b8[ b,]
  %5
  | \override Stem.details.beamed-lengths = #'(5.5 5.5 5.5) cis[ b cis dis]
    \override Stem.details.beamed-lengths = #'(4 4 4) e[ b e d]
    \revert Stem.details.beamed-lengths
  | c[ d16 e] f4~ f8[ e16 d] e[ fis g8~]
  | g fis4 e8 fis[ g a g]
  | fis4 e d2
  }
  \repeat volta 2 {
  | fis8[ d e fis] g[ d g a]
  %10
  | b[ e,] a4~ a8[ g16 fis] g8 c\rest
  | d\rest e,4 d16[ c] b[ a g fis] g[ a b g]
  | e8.[ fis16] dis4\prallprall e8 b'\rest b4~
  | b8 a4 gis8 a[ c16 b] c[ e d c]
  | b4 cis d2~
  %15
  | d8[ g fis e] d[ g16 fis] g[ a b8]
  | e,[ a] fis8.\prall\prall[ g16] g2
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \tieDown
  \repeat volta 2 {
  %1
  | \once\override MultiMeasureRest.staff-position = #-6 R1
  | g8[ fis g a] b[ fis b a]
  | g[ b] e4~ e8[ fis16 e] d4
  | e8[ d e fis] g[ d g fis]
  %5
  | e8[ fis16 g] a4^~ a8[ g16 fis] g8[ g,]
  | a8[ g a b] c[ g c b]
  | a8[ b16 cis] d4~ d8[ cis16 b] cis[ d e8]~
  | e8 d4 cis8 d2
  }
  \repeat volta 2 {
  | R1
  %10
  | d8[ b cis dis] e[ b e fis]
  | g[ cis,]
    \once\shape #'(((0 . 0.3) (0 . 1.5) (0 . 1.5) (0 . 0.3))) Tie
    f4^~
    f8[ e16 dis] \once\override Stem.length = #12 e8 d,\rest
  | a\rest c'~ c[ b16 a] g[ fis e d] e[ fis g e]
  | c8.[ d16] b4 c8 b\rest g'4~
  | g8 fis4 e8 fis[ a16 g] a[ c b a]
  %15
  | g4 a b2~
  | b8[ e d c] b2
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  \repeat volta 2 {
  | g4 g'~ g8[ fis16 e] fis8[ d]
  | g[ a b c] d4. dis8
  | e4 \clef "treble" r8 c g[ d'] g[ a16 b]
  | c8 [ b a d] g,2~
  %5
  | g8 \clef "bass" g,4 fis8 e[ e'16 dis] e4~
  | e8 e,4 d8 c[ c'16 b] c[ d e d]
  | cis[ a d cis] b[ a b gis] a[ b a g] fis[ e d cis]
  | d[ cis b a] g[ e a8] d,[ fis16 a] d4
  }
  \repeat volta 2 {
  | d8 d'4 c8 b16[ a16 b16 c16] b16[ a16 g16 fis16]
  %10
  | g8 g'4 fis8 e16[ dis16 e16 fis16] e16[ d16 c16 b16]
  | ais16[ e'16 fis16 g16] a!8[ a,8] g16[ a16 b16 g16] e16[fis16 g16 e16]
  | c'8[ a8 b8 b,8] e,4 r8 e'8~
  | e8[ c8 d8 e8] a,8[ a'8] e16[ d16 e16 fis16]
  | g16[ a16 b16 g16] a16[ fis16 g16 a16] d,16[ e16 fis16 g16] fis16[ e16 d16 c16]
  %15
  | b16[ g16 a16 b16] c16[ d16 e16 fis16] g16[ a16 b16 a16] g16[ fis16 e16 d16]
  | c16[ b c a] d8[ d,8] g8[ b16 d16] g4
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 9 a 1 Clav." }
    subtitle = \markup { "Canone alla Terza" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=100 }
}
