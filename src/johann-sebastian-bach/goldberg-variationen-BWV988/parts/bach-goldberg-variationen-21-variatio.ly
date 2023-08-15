Global = {
  \key g \minor
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b2\rest b16\rest a[ bes c] d[ c bes a]
  | g8[ d' g, c~] c16[ fis, g a] bes[ a g fis]
  | g8 b\rest b\rest g as[ g as a]
  | bes16[ c d c] bes[ a g fis!] es'8 d\rest d\rest c~
  %5
  | c16[ c bes a] bes[ c d e] f!8[ e] f16[ g a8~]
  | a16[ g f a] g[ f e d] cis8.\downprall[ b16] cis[ d e8]
  | d d\rest d\rest d ees![ d es e]
  | f[ g a g~] g[ fis16 e] d[ cis d8]
  }
  \break
  \repeat volta 2 {
  | f2\rest g16\rest as16[ g16 f!] e[ f g e]
  %10
  | c8[ d16 es!] f8[ bes,] f'16\rest f[ es d] c[ es d f]
  | es8[ f] g4~ g16[ f g as] d,[ c d f]
  | bes,[ c d bes] es8[ as,~] as[ g16 f] g8[ es'8~]
  | es8[ d16 c] d8 r d16\rest e,[ f! g] f[ e d c]
  | c'[ bes c8] fis, d'\rest d\rest d16[ c] bes[ a g f]
  %15
  | es8 d'\rest d\rest c~ c[ bes!] a[ bes16 c]
  | d8[ f,!] es[ c'~] c16[ bes32 a g a fis16] g4
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \bottom\stemUp\tieUp b16\rest bes[ c d] es[ d c bes] a8[ es' a, d~]
  | d16[ g, a bes] c[ bes a g] a8 a\rest a\rest \top\stemDown a
  | bes[ a bes b] c16[ d es d] c[ \bottom\stemUp bes a g]
  | \top\stemDown\tieDown fis'8 e\rest e\rest d~ d16[ \bottom\stemUp d c bes] c[ \top\stemDown d e fis]
  %5
  | g8[ fis] g16[ a bes8~] bes16[ a g bes] a[ g \bottom\stemUp f e]
  | \once\override Voice.Script.X-offset = #0.8
    d8.^\downprall[ cis16] d[ e f8] e e\rest e\rest \top\stemDown e
  | f[ e f fis] g[ a bes a~]
  | a[ g16 f] e[ d e8] d4 d\rest
  }
  \repeat volta 2 {
  | r16 bes'[ a g] fis[ g a fis] d8[ e16 f] g8[ c,]
  %10
  | e16\rest g[ f es!] d[ f es g] f8 g as4~
  | as16[ g as bes] \bottom\stemUp es,[ d es \top\stemDown g] \bottom\stemUp\tieUp c,[ d es c] f8[ bes,~]
  | bes[ as16 g] as8[ \top\stemDown f'~] f[ es16 d] es8 e\rest
  | \bottom\stemUp b16\rest fis16[ g a] g[ fis e d] \top\stemDown d'[ c d8] \bottom\stemUp g, a\rest
  | \top\stemDown\tieDown e'8\rest es16[ d] c[ bes a g] fis8 a\rest a\rest d~
  %15
  | d8[ c] b[ c16 d] es8[ \bottom\stemUp g,] fis[ \top\stemDown d'~]
  | \override Beam.positions = #'(-7 . -7)
    d16[ c32 \bottom\stemUp bes \top\stemDown a bes \bottom\stemUp g16]
    \revert Beam.positions
    as[ g8 fis16] g4 d'\rest
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g4 g' fis f
  | e es d16[ a bes c] d8[ d,]
  | g16[ d' e fis] g[ f es d] c8[ b c cis]
  | d[ bes c d] g4~ g16[ fis g a]
  %5
  | bes[ c d8] g,[ g'] d4. c8
  | bes[ a bes g] a16[ e f g] a[ b cis a]
  | d[ f, g a] d,[ c' bes a] g[ bes, c d] g,[ g'8 cis,16]
  | d[ a' d8~] d8.[ cis16] d[ bes a g] fis[ a fis d]
  }
  \repeat volta 2 {
  | d8 d'4 c8 b bes4 a!16[ g]
  %10
  | a8 as4 g8 d[ es f bes,]
  | es r r es as4. g16[ f]
  | g4~ g16[ f es d] es[ g, as bes] es,[ g a b]
  | c4 c8\rest c bes!4 b8\rest bes
  | a16[ g a bes] a[ g fis e] d[ c' d es!] d[ c bes a]
  %15
  | g[ f' g as] g[ f es d] c[ b c cis] d[ es d c]
  | bes[ a bes b] c8[ d] g,16[ d' bes d] g[ d bes g]
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
    title = \markup { \smallCaps "Variatio 21" }
    subtitle = \markup { "Canone alla Settima" }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi { \tempo 4=50 }
}
