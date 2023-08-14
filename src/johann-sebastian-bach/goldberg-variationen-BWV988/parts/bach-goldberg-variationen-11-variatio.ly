Global = {
  \key g \major
  \time 12/16
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | b16[ a g] fis[ e d] cis8.~[ cis8 e16]
  | a[ g fis] e[ d cis] b8.~[ b8 a'16]
  | g[ fis e] d[ cis b] a8[ cis16] e8[ g16]
  | fis[ e d] cis[ b a] \clef "bass" g[ fis e] d[ e c!]
  %5
  | b[ d g] b[ d g] d[ b g] f[ e d]
  | cis[ e g] bes[ e g] e[ bes a] g[ fis e]
  | d[ g b] \clef "treble" d[ g b] a[ fis d] c[ b a]
  | g[ b d] g[ b d] g8[ d16] b8[ fis16]
  | g8.~[ g8 b16] e[ d cis] b[ a g]
  %10
  | fis8.~[ fis8 e'16] d[ cis b] a[ g fis]
  | e8.~ e16[ fis g] cis,[ b' a] g[ a b]
  | e,16[ d' cis] b[ cis d] cis[ e fis] g[ fis e]
  | d4.~\downprall d8[ fis,16] a8[ d16]
  | d4.~\upprall d8[ gis,16] b8[ d16]
  %15
  | d4.~\upprall d16[ e g] cis,[ e g]
  | fis8.~ fis16[ d a] fis[ d fis] a[ cis d]
  }
  \break
  \repeat volta 2 {
  | r4. a'16[ g fis] e[ d c]
  | b16[ a g] r8. d''16[ c b] a[ g f]
  | e16[ d c] b[ a g] fis8[ dis'16] e8[ ais,16]
  %20
  | b8[ dis,16] fis8[ a16] c[ b a] g[ a fis]
  | e16[ g b] e[ g b] g[ e b] g[ fis e]
  | f16[ a c] f[ a c] a[ f c] a[ g fis]
  | g16[ b e] g[ e c'] b[ a g] fis[ e dis]
  | e16[ g e] b[ g fis] g[ e g] b[ e dis]
  %25
  | e16[ d c] b[ a g] fis8.~[ fis8 a16]
  | d16[ c b] a[ g fis] e8.~[ e8 d'16]
  | c16[ b a] g[ fis e] fis[ e d] cis[ d e]
  | fis16[ e d] \clef "bass" c![ b a] b[ a g] fis[ g a]
  | b16[ a g] f[ e d] e[ d c] b[ c d]
  %30
  | e16[ c e] g[ c e] c[ a c] \clef "treble" e[ a c]
  | fis,16[ d fis] a[ d fis] d[ a d] fis[ a c]
  | b16[ g d] b[ g fis] g[ b d] g8.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g8.~[ g8 b16] e[ d cis] b[ a g]
  | fis8.~[ fis8 e'16] d[ cis b] a[ g fis]
  | e8[ g16 b8 d16] cis[ b a] g[ fis e]
  | d16[ e fis] g[ a b] \clef "treble" cis[ d e] fis[ g a]
  %5
  | g4.~\prallprall g8[ b,16] d8[ g16]
  | g4.~\upprall g8[ cis,16] e8[ g16]
  | g4.~\upprall g16[ a c] fis,[ a c]
  | b8.~ b16[ g d] b[ g b] d[ g a]
  | b16[ a g] fis[ e d] cis8.~[ cis8 e16]
  %10
  | a16[ g fis] e[ d cis] b8.~[ b8 a'16]
  | g[ fis e] d[ cis b] e[ d cis] \clef "bass" b[ a g]
  | cis[ b a] g[ fis e] a[ g fis] e[ fis g]
  | fis[ a d] \clef "treble" fis[ a d] a[ fis d] c[ b a]
  | gis[ b d] f[ b d] b[ f e] d[ cis b]
  %15
  | a[ d fis!] a[ d fis] e[ cis a] g[ fis e]
  | d[ \clef "bass" a fis] d[ a fis] d[ fis a] d8.
  }
  \repeat volta 2 {
  | d16[ e fis] g[ a b] c[ d, c'~] c[ b a]
  | g16[ a b] \clef "treble" c[ d e] f[ g, f'~] f[ e d]
  | c8.~ c16[ e g] c[ b a] g[ fis e]
  %20
  | dis16[ cis b] \clef "bass" a[ g fis] e[ dis cis] b[ c a]
  | g8.~ g16[ b e] g[ b dis] e8[ g,,16]
  | a8.~ a16[ c f] a[ c dis] e8[ ais,,16]
  | b8.~ b16[ cis dis] e[ fis g] a[ g fis]
  | g16[ e g] b[ e dis] e[ g e] b[ g b]
  %25
  | c,8.~[ c8 e'16] \clef "treble" a[ g fis] e[ d c]
  | b8.~[ b8 a'16] g[ fis e] d[ c b]
  | a8.~ a16[ b c] d[ e fis] g[ fis e]
  | d8.~ d16[ e fis] g[ a b] c[ b a]
  | g8.~ g16[ a b] c[ d e] f[ e d]
  %30
  | c8.~ c16[ e c] a[ e c] a[ c e]
  | a16[ c a] fis[ d a] \clef "bass" fis[ d fis] a[ c fis,]
  | g16[ b d] \clef "treble" g[ b d] g[ d b] g8.
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
    title = \markup { \smallCaps "Variatio 11 a 2 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi { \tempo 4=100 }
}
