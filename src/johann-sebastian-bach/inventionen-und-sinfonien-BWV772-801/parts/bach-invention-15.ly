Global = {
  \key b \minor
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
  | r8 b16[ ais] b8[ fis] g[\prall fis] b[ fis]
  | fis[\prall e] cis'[ e,] e[\prall d16 cis] d[ e fis e]
  | fis8\mordent r r16 a[ gis a] b[ cis b gis] a[ b a fis]
  | gis[ a gis fis] eis[ gis fis eis] cis'8[ fis,16 eis] fis[ a gis b]
  %5
  | a[ b cis d] gis,8.[\prall fis16] fis8[ fis'16 eis] fis8[ cis]
  | d[\prall cis] fis[ cis] cis[\prall b] gis'[ b,]
  | b[\prall a16 gis] a[ b a eis] fis8 fis'16[ e!] fis8[ cis]
  | d16[ e d b] e[ b fis' b,] g'[ a g e] a[ e b' d,]
  | cis[ d cis a] d[ a e' a,] fis'[ g fis d] g[ d a' d,]
  %10
  | b'[ c b e,] a[ b a d,] g[ a g cis,] fis[ g fis d]
  | e8 g,16\prall[ fis] g8[ e'] fis,[ d'] e,[ cis']
  | d r r16 fis,[ e fis] g[ a g e] fis[ g fis d]
  | e[ fis e d] cis[ e d cis] d8[ a'] d16[ cis b d]
  | cis[ b] a[ gis] a8[ e] fis[\prall e] a[ e]
  %15
  | e[\prall d] b'[ d,] d[\prall cis16 b] cis[ dis e dis]
  | a'[ fis( g a)] gis[( ais b ais)] e'[( cis d e)] dis[( eis fis eis)]
  | b'[( gis a b,)] cis[( dis e!) dis] a'[( fis g) a,] b[( cis d cis)]
  | g'[ e fis cis] d[ e fis d] e[ fis e cis] d[ e d b]
  | cis[ d cis b] ais[ b cis ais] fis8 b16[ ais] b8[ fis]
  %20
  | g[\prall fis] b[ fis] fis[\prall e] cis'[ e,]
  | e[\prall d16 cis] d[ fis e g] fis8.[ d'16] ais8.[\prall b16]
  | b1 \fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | b8 r d r e r d r
  | cis r ais r b r g r
  | fis fis'16[ eis] fis8[ cis] d[\prall cis] fis[ cis]
  | cis[\prall b] gis'[ b,] b[\prall a16 gis] a8[ b]
  %5
  | cis[ b cis cis,] fis8.[ gis16] a[ b gis a]
  | b[ cis b gis] a[ b a fis] gis[ a gis fis] eis[ gis fis eis]
  | fis8[ fis'16 eis] fis8[ cis] d[ d'16 cis] d[ e! d ais]
  | b8[ a! g fis] e[ e, fis g]
  | a[ g' fis e] d[ d, e fis]
  %10
  | g[ g' fis b] e,[ a d, d']~
  | d16[ e d b] cis[ d cis a] d[ cis b a] g[ fis g a]
  | d,8 d'16[ cis] d8[ a] b[\prall a] d[ a]
  | a[\prall g] e'[ g,] g[\prall fis16 e] fis[ gis a gis]
  | a8[ e] d16[ cis b a] d[ e d b] cis[ d cis a]
  %15
  | b[ cis b a] gis[ b a gis] a8[ a' g! fis]
  | e[ e' d cis] b[ b, a gis]
  | fis[ fis'16 g!] a8[ b] e,[ e,16 fis] g8[ a]
  | d,8 b''16[ ais] b8[ fis] g[\prall fis] b[ fis]
  | fis[\prall e] cis'[ e,] e[\prall d16 cis] d[ b cis d]
  %20
  | e[ fis e cis] d[ e d b] cis[ d cis b] ais[ cis b ais]
  | b8[ b'16 ais] b8[ g] d16[ fis e g] fis8[ fis,]
  | b1_\fermata
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
    opus = "BWV 786"
    title = \markup { "Invention XV " \char ##x00b7 " h-Moll" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 92
  }
}
