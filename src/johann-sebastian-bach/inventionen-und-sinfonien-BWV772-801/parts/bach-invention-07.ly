Global = {
  \key e \minor
  \time 4/4
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemNeutral\tieNeutral
  %1
  | r8 b16[ a] g[ fis g e] b'8[\mordent b] e8.[\mordent fis16]
  | dis8[\prall fis16 e] dis[ cis dis b] b'8[ a16 g] fis8.\prallprall[ e32 fis]
  | g8[ b16 a] g[ fis g e] c'8.[ b16] a[ g fis e]
  | fis8[ a16 g] fis[ e fis d] b'8.[ a16] g[ fis e d]
  %5
  | e[ fis e d] c[ b a g] c[ b a b] c[ d e fis]
  | g[ fis e d] g8.[\mordent g16] g[ fis e fis] fis8.[\prall g16]
  | g8[ d16 c] b[ a b g] d'2~\prallprall
  | d1~
  | d8.[ e16] cis8.[\prall d16] d8[ a16 g] fis[ e fis d]
  %10
  | c'8.[ b16] c8.[ d16] b8[\mordent b] e8.[\mordent e16]
  | e[ g fis e] d[ cis d b] ais8[ fis'16 e] d[ cis d b]
  | e8[ b'16 a!] g[ fis g e] ais8[ cis, fis ais,]
  | b8.[ cis16] cis8.\prall[ b16] b8[ d e, d']
  | c[ a d, c'] b[ d g b,]
  %15
  | a[ fis' g, e'] dis[\prall fis16 e] dis[ cis b a]
  | g[ fis g b] e[ b a g] fis[ e fis a] d[ a g fis]
  | e[ dis e g] c[ g fis e] dis[ cis dis fis] b8[ b]
  | b4~ b16[ dis e g] a,4~ a16[ cis dis fis]
  | g,4~ g16[ b dis e] fis,[ a b c] dis,[ fis g a]
  %20
  | b,8[ a']~ a16[ fis b fis] g8[ e] c'8.[\mordent c16]
  | c8[\prall b] g'8.[ g16] g[ a g fis] fis8.[\prall e16]
  | e[ d c b] a[ g a fis] dis'8[ fis,] b8.\mordent[ c16]
  | a8.[\prall g16] fis8.[\prall e16] e2\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | e8[\mordent e,] r4 r8 b''16[ a] g[ fis g e]
  | b'8[ b,] r4 r8 fis''16[ e] dis[ cis dis b]
  | e8[ e,] r4 r8 e'16[ d] c[ b c a]
  | d8[ d,] r4 r8 d'16[ c] b[ a b g]
  %5
  | c8.[ b16] a[ g fis e] a8.[ g16] fis[ e d c]
  | b8.[ c16] b[ a g fis] e8[ c' d d,]
  | g4 r4 r8 g16[ a] b[ a b g]
  | d'[ cis d e] fis[ e fis d] g[ fis g a] b[ a b fis]
  | g[ fis g e] a8[ a,] d[ d,] r4
  %10
  | r8 a''16[ g] fis[ e fis d] g[ a g fis] e[ d e cis]
  | fis8[ ais, b g] fis4 r8 b'16[ a!]
  | g[ fis g e] d'8.[ e16] cis8[ g'16 fis] e[ d e cis]
  | d[ cis d b] fis'8[ fis,] b16[ c b a] gis[ fis gis e]
  | a[ b a g!] fis[ e fis d] g[ a g fis] e[ d e cis]
  %15
  | dis[ cis dis b] e[ dis e e,] b'2~
  | b1~
  | b2~ b4~ b16[ c' b a]
  | g[ fis g b] e[ b a g] fis[ e fis a] dis[ a g fis]
  | e[ dis e g] c[ g fis e] dis8[ b] r4
  %20
  | r16 g'[ fis e] dis[ cis dis b] e[ d c b] a[ g a fis]
  | g[ a g fis] e[ d e c] a'[ g a fis] b[ a b g]
  | c2~ c16[ c' b a] g[ fis g e]
  | dis8[ e b' b,] e,2\fermata
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
    opus = "BWV 778"
    title = \markup { "Invention VII " \char ##x00b7 " e-Moll" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 84
  }
}
