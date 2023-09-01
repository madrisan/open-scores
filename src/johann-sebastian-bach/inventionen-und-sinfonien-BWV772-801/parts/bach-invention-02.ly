Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r8 c16[ b] c[ d ees g,] aes[ bes aes f] f'[ es d c]
  | b[ aes' g f] ees[ d c b] c[ d c d] d8.[\downprall c32 d]
  | ees16[ d c d] ees[ f g8] g[\prall f] r f
  | f[\prall ees] r d ees[ aes,]~ aes16[ f bes f]
  %5
  | g8[ ees']~ ees16[ d ees bes] c[ ees aes g] f[ ees d c]
  | bes[ d g f] ees[ d c bes] aes[ c f c] d8.[ d16]
  | ees[ bes c bes] g'4~ g16[ bes, c bes] aes'4~
  | aes16[ bes, ees d] g[ f aes g] c[ bes aes g] f[ bes aes bes]
  | g[ bes aes bes] ees,[ g f g] c,[ d ees f] d[ ees f g]
  %10
  | ees[ f g aes] bes[ aes c bes] aes[ g f aes] d,4~
  | d16[ d g d] ees[ c d bes] c4~ c16[ g' fis a]
  | c,[ bes c8]~ c16[ fis e d] bes'8.[ e,16] fis8.[ g16]
  | g8 g,16[ fis] g[ a bes d,] ees[ f ees c] c'[ bes a g]
  | fis[ ees' d c] bes[ a g fis] g[ a g a] a8.[\downprall g32 a]
  %15
  | bes16[ a g a] bes[ c d8] d[\prall c] r c
  | c[\prall bes] r a bes[ ees,]~ ees16[ c f c]
  | d8[ bes']~ bes16[ a bes f] g[ bes ees d] c[ bes a g]
  | f[ a d c] bes[ a g f] ees[ g c g] a8.[\prall a16]
  | bes[ f g f] d'4~ d16[ f, g f] ees'4~
  %20
  | ees16[ f, bes a] d[ c ees d] g[ f ees d] c[ f ees f]
  | d[ c bes a] d[ c ees d] c[ bes a c] f4~
  | f16[ g, c b] ees[ d f ees] aes[ g f ees] d[ g f g]
  | ees[ d] c[ b] c[ d ees g,] aes[ bes aes f] f'[ ees d c]
  | b[ aes' g f] ees[ d c b] c[ d c d] d8.[\downprall c32 d]
  %25
  | ees16[ d c d] ees[ f g8] g[\prall f] r f
  | f[\prall ees16 d] g[ f aes g] g8.[ aes16] d,8.[\prall c16]
  | c1^\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | R1*2
  | r8 \clef "treble" c16[ b] c[ d ees g,] aes[ bes aes f] f'[ ees d c]
  | b[ aes' g f] ees[ d c b] c[ d c d] d8.[^\downprall c32 d]
  %5
  | ees16[ d c d] ees[ f g8] g[^\prall f] r f
  | f[^\prall ees] r d ees[ aes,]~ aes16[ f bes f]
  | g8[ ees']~ ees16[ d ees bes] c[ ees aes g] f[ ees d c]
  | bes[ d g f] ees[ d c bes] aes[ c f c] d8.[^\prall d16]
  | ees[ bes c bes] g'4~ g16[ bes, c bes] aes'4~
  %10
  | aes16[ bes, ees d] g[ f aes g] c[ bes aes g] f[ bes aes bes]
  | g8 \clef bass ees,16[ f] g[ a bes d,] ees[ f ees c] c'[ bes a g]
  | fis[ ees' d c] bes[ a g fis] g[ a g a] a8.[^\downprall g32 a]
  | bes16[ a g a] bes[ c d8] d[^\prall c] r c
  | c[^\prall bes] r a bes[ ees,]~ ees16[ c f! c]
  %15
  | d8[ bes']~ bes16[ a bes f] g[ bes ees d] c[ bes a g]
  | f[ a d c] bes[ a g f] ees[ g c g] a8.[^\prall a16]
  | bes[ f g f] d'4~ d16[ f, g f] ees'4~
  | ees16[ f, bes a] d[ c ees d] g[ f ees d] c[ f ees f]
  | d[ f ees f] bes,[ d c d] g,[ a bes c] a[ bes c d]
  %20
  | bes[ c d ees] f[ ees g f] ees[ d c ees] a,4~
  | a16[ d, g fis] bes[ a c bes] ees[ d c bes] a[ d c d]
  | b[ f' ees d] c[ bes aes! g] f[ ees d c] g'8[ g,]
  | c8.[ d16] ees[ f g8] g[^\prall f] r f
  | f[^\prall ees]~ ees16[ f ees d] c[ bes aes g] f[ ees f g]
  %25
  | c,8 c'16[ b] c[ d ees g,] aes[ bes! aes f] f'[ ees d c]
  | b[ aes' g f] ees[ d c b] c[ g aes f] g8[ g]
  | c,1_\fermata
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
    opus = "BWV 773"
    title = \markup { "Invention II" "(c-Moll)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 69
  }
}
