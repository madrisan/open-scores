Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r16 c[ d e] f[ d e c] g'8[ c b^\mordent c]
  | d16[ g, a b] c[ a b g] d'8[ g f^\mordent g]
  | e16[ a g f] e[ g f a] g[ f e d] c[ e d f]
  | e[ d c b] a[ c b d] c[ b a g] fis[ a g b]
  %5
  | a8[ d,] c'8.[^\mordent d16] b[ a g fis] e[ g fis a]
  | g[ b a c] b[ d c e] d[ b32 c d16 g] b,8[^\prall a16 g]
  | g8 r r4 r16 g[ a b] c[ a b g]
  | fis8^\prall r r4 r16 a[ b c] d[ b c a]
  | b8 r r4 r16 d[ c b] a[ c b d]
  %10
  | c8 r r4 r16 e[ d c] b[ d cis e]
  | d8[ cis d e] f[ a, b! cis]
  | d[ fis, gis a] b[ c] d4~
  | d16[ e, fis gis] a[ fis gis e] e'[ d c e] d[ c b d]
  | c[ a' gis b] a[ e f d] gis,[ f' e d] c8[ b16 a]
  %15
  | a16[ a' g f] e[ g f a] g2~
  | g16[ e f g] a[ f g e] f2~
  | f16[ g f e] d[ f e g] f2~
  | f16[ d e f] g[ e f d] e2~
  | e16[ c d e] f[ d e c] d[ e f g] a[ f g e]
  %20
  | f[ g a b] c[ a b g] c8[ g] e[ d16 c]
  | c[ bes a g] f[ a g bes] a[ b c e,] d[ c' f, b]
  | <c g e>1^\fermata\arpeggio
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r2 r16 c[ d e] f[ d e c]
  | g'8[ g,] r4 r16 g'[ a b] c[ a b g]
  | c8[ b c d] e[ g, a b]
  | c[ e, fis g] a[ b] c4~
  %5
  | c16[ d, e fis] g[ e fis d] g8[ b, c d]
  | e[ fis g e] b8.[ c16] d8[ d,]
  | r16 g[ a b] c[ a b g] d'8[ g fis g]
  | a16[ d, e fis] g[ e fis d] \clef "treble" a'8[ d c d]
  | g,16[ g' f e] d[ f e g] f8[ e f d]
  %10
  | e16[ a g f] e[ g f a] g8[ f g e]
  | f16[ bes a g] f[ a g bes] a[ g f e] d[ f e g]
  | f[ e d c] b[ d c e] d[ c b a] gis[ b a c]
  | \clef "bass"
  | b8[ e,] d'8.[^\mordent e16] c[ b a g!] fis[ a gis b]
  %15
  |  a[ c b d] c[ e d f] e8[ a, e' e,]
  | a8[ a,] r4 r16 e''16[ d c] b[ d cis e]
  | d2~ d16[ a b c] d[ b c a]
  | b2~ b16[ d c b] a[ c b d]
  | c2~ c16[ g a bes] c[ a bes g]
  %20
  | a8[ bes a g] f[ d' c bes]
  | a[ f' e d] e16[ d, e f] g[ e f d]
  | e8[ c d e] f16[ d e f] g8[ g,]
  | <c c,>1\arpeggio\fermata
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
    opus = "BWV 772"
    title = \markup { "Invention I" "(C-Dur)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
