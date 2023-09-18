Global = {
  \key f \major
  \time 3/4
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r8 f[ a f c' f,]
  | f'[ e16 d] c[ d c bes] a[ bes a g]
  | f8[ a c a f' c]
  | a'16[ c bes c] a16[ c bes c] a16[ c bes c]
  %5
  | f,[ a g a] f[ a g a] f[ a g a]
  | d,[ f e f] d[ f e f] d[ f e f]
  | b,8[ g d' b f' d]
  | g16[ a g f] e[ f e d] c[ d c bes!]
  | a8[ d16 c] b[ c b a] g[ a g f]
  %10
  | e[ f e d] c8[ c'16 b c8 e,]
  | f[ c' e, c' d, b']
  | c4 r r
  | r8 c[ e c g' c,]
  | c'[ b16 a] g[ a g f] e[ f e d]
  %15
  | c[ bes! c a'] c,[ a' bes, a'] c,[ a' a, a']
  | bes,8[ g bes g d' g,]
  | g'[ f16 ees] d[ ees d c] bes[ c bes a]
  | g8[ bes d bes g' d]
  | bes'[ cis, bes' cis, bes' cis,]
  %20
  | d[ a f' d a' f]
  | g16[ f g bes] c,[ bes' d, bes'] e,[ bes' c, bes']
  | f[ e f a] b,[ a' cis, a'] d,[ a' b, a']
  | e[ d e g] a,[ g' b, g'] cis,[ g' a, g']
  | f8[ d bes! d g, f']
  %25
  | e[ c a c f, ees']
  | d16[ f ees f] d[ f ees f] d[ f ees f]
  | bes,[ d c d] bes[ d c d] bes[ d c d]
  | g,[ bes a bes] g[ bes a bes] g[ bes a bes]
  | e,8[ c g' e bes' g]
  %30
  | c16[ d c bes] a[ bes a g] f[ g f ees]
  | d8[ g16 f] e[ f e d] c[ d c bes]
  | a[ bes a g] f8[ f'16 e f8 a,]
  | bes[ f'] a,[ f'] g,[ e']
  | <a, c f>4 r r
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | R1*3/4
  | r8 f[ a f c' f,]
  | f'8[ e16 d] c[ d c bes] a[ bes a g]
  | f8[ a c a f' c] \clef "treble"
  %5
  | a'16[ c bes c] a[ c bes c] a[ c bes c]
  | f,[ a g a] f[ a g a] f[ a g a]
  | d,[ f e f] d[ f e f] d[ f e f] \clef "bass"
  | b,8[ g c g e' c]
  | f16[ g f e] d[ e d c] b[ c b a]
  %10
  | g8[ c16 b] a[ b a g] f[ g f e]
  | d[ e d c] g'[ f e f] g8[ g,]
  | r c[ e c g' c,]
  | c'[ b16 a] g[ a g f] e[ f e d]
  | c8[ e g e c' g]
  %15
  | ees'[ fis, ees' fis, ees' fis,]
  | g[ f!16 ees] d[ ees d c] bes[ c bes a]
  | g8[ g' bes g d' g,]
  | g'[ f16 ees] d[ ees d c] bes[ c bes a]
  | g[ f g e'!] g,[ e' f, e'] g,[ e' e, e']
  %20
  | f,[ e f d'] f,[ d' e, d'] f,[ d' d, d']
  | bes8[ g e g c, e]
  | a[ f d f b, d]
  | g[ e cis e a, cis]
  | d,16[ d' c! d] g,[ d' a d] bes[ d g, d']
  %25
  | c,[ c' bes c] f,[ c' g c] a[ c f, c']
  | bes8[ d f d bes' f]
  | d'16[ f ees f] d[ f ees f] d[ f ees f]
  | bes,[ d c d] bes[ d c d] bes[ d c d]
  | g,[ bes a bes] g[ bes a bes] g[ bes a bes]
  %30
  | e,8[ c f c a' f]
  | bes16[ c bes a] g[ a g f] e[ f e d]
  | c8[ f16 e] d[ e d c] bes[ c bes a]
  | g[ a g f] c'[ bes a bes] c8[ c,]
  | f4 r r
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
    opus = "BWV 779"
    title = \markup { "Invention VIII " \char ##x00b7 " F-Dur" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 120
  }
}
