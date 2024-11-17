Global = {
  \key g \major
  \time 6/8
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'VariatioVII
  \stemNeutral
  \repeat volta 2 {
  %1
  | b8.[ a16 b8] d,8.[ g16 b8]
  | a8.\prall[ g16 a8] d4.
  | g8.\mordent[ fis16 g8] a,8.[ e'16 g8]
    \break
  | fis8.\prall[ e16 fis8] d4.~
  %5
  | d4 e32([ fis g a] b8.)[ g16 d8]
  | e4 fis32[( g a b] c8.)[ a16 e8]
    \break
  | fis8.[ d16 g8] a,8.[ b16 c8]
  | \stemUp \grace c8 \stemNeutral b4.~ b8.[ a16 g fis ]
  | g4 d'8 g4.~ \mordent
    \break
  %10
  | g8[ a16 g fis e] fis4.( \mordent
  | fis8.)[ g16 fis8] e8.[ cis16 d8]
  | cis8.\prall[ d16 e8] a,4.~
  | a4 b32([ cis d e] fis8.)[ d16 a8]
  | b4 cis32([ d e fis] g8.)[ e16 b8]
  %15
  | \stemUp \grace b8 \stemNeutral cis8.[ a16 a'8] d,8.[ e16 cis8]
  | \stemUp \grace cis \stemNeutral d4.~ d
  }
  \break
  \pageBreak
  \repeat volta 2 {
  | fis8.[ e16 fis8] a,8.[ d16 fis8]
  | g8.[ fis16 g8] b4.
  | e,4 fis32([ g a b] c16)[ b a g fis e]
    \break
  %20
  | dis8.\prall[ cis16 dis8] b4.~
  | b8.[ b'16 fis8] g8.[ dis16 e8]
  | c8.[ e16 gis8] a4 b32([ a  g fis)]
  | g8.[ a16 b8] e,8.[ fis16 dis8 ]
  | e8.[ b16 g8] e4 b'8
  %25
  | b8.[ gis16 a8] d8[ e16 d c b]
    \break
  | c8.[ e16 d8] e8.[ g16 fis8]
  | g8[ a16 g fis e] a8.[ b16 g8]
  | fis8.\prall[ e16 fis8] d4.~
  | d4 e32([ fis g a] b8.)[ g16 d8]
  %30
  | e4 fis32([ g a b ] c8.)[ a16 e8]
  | fis8.[ d16 d'8] g,8.[ a16 fis8]
  | g4.~ g
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  \repeat volta 2 {
  | g4\mordent g,8 g'4.(\mordent
  | g4.) fis8.\prall[ e16 d8]
  | e4 d'8 cis4 a8
  | d4.~ d8.[ e16 c8]
  %5
  | b8.[ c16 a8] g8.[ a16 b8]
  | c8.[ d16 b8] a8.[ b16 c8]
  | d8.[ c16 b8] c4 d8
  | g,8.[ fis16 g8] d8. [ a'16 c8]
  | b8.\prall[ a16 b8] e,8.[ b'16 d8]
  %10
  | cis8.\prall[ b16 a8 ] d8.[ cis16 d8 ]
  | g,8.[ b16 d8 ] \clef "treble" g4.~
  | g8[ a16 g fis e ] fis8.[ g16 a8 ] \clef "bass"
  | d,8.[ a16 fis8 ] d8.[ e16 fis8]
  | g8.[ a16 fis8 ] e8.[ fis16 g8]
  %15
  | a8.[ g16 fis8] b8.[ g16 a8]
  | d,8.[ fis16 a8] d4.
  }
  \repeat volta 2 {
  | d4 d,8 d'4 c8
  | b8.\prall[ a16 b8] g8.[ a16 b8]
  | c8.[ d16 b8] a8.[ b16 c8]
  %20
  | b4 b,8 b'8.[ a16 b8]
  | g4 a32([ b cis dis] e8.)[ b16 g8]
  | a4 b32([ c d e] f8.)[ e16 dis8]
  | e4 g,8 c8.[ a16 b8]
  | e,4.~ e8.[ e'16 d8]
  %25
  | c8.\prall[ b16 c8] gis8.[ b16 e,8]
  | a8.[ c16 b8] c8.[ b16 a8]
  | b8.[ e16 d8] cis8.\prall[ b16 cis8]
  | d4.~ d8.[ e16 c8]
  | b8.[ c16 a8] g8.[ a16 b8]
  %30
  | c8.[ d16 b8] a8.[ b16 c8]
  | d8.[ c16 b8] e8.[ c16 d8]
  | g,8.[ d16 b8] g4.
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
    title = \markup { \smallCaps "Variatio 7 a 1 ovvero 2 Clav." }
    subtitle = \markup { "al tempo di Giga" }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % make the piano staves closer together
      %\override StaffGrouper.staff-staff-spacing = #'(
      %                        (basic-distance . 0)
      %                        (padding . 0))

      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi { \tempo 4=90 }
}
