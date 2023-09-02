Global = {
  \key bes \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r16 bes32[ c d c bes16] f'[ d bes' f]
  | d[ f32 ees d ees f16] bes,[ d f, aes]
  | g[ ees32 f g f ees16] bes'[ g ees' bes]
  | g[ bes32 aes g aes bes16] ees,[ g c, ees]
  %5
  | a,[ c32 d ees d c16] a'[ f c' a]
  | ees'[ f,32 g a g f16] c'[ a f' c]
  | d8 r r16 g32[ f ees f g16] c,8 r r16 f32[ ees d ees f16]
  | bes,8 r r16 ees32[ d c d ees16] a,[ c32 bes a bes c16] f,8 r
  | f'8[ f, a c] f4 r
  %10
  | r8 f,[ bes d] f4 r
  | r8 g,[ bes c] e4 r
  | r16 f,32[ g a g f16] c'[ a f' c]
  | a'[ ees32 d c d ees16] a,[ c fis, d']
  | bes8[ d bes g] aes[ f' aes, f]
  %15
  | g16[ c,32 d ees d c16] g'[ ees c' g]
  | d'[ aes32 g f g aes16] d,[ f b, g']
  | ees8 r r16 c32[ d ees d c16]
  | c'8.[ bes16] a[ f32 g a g f16]
  | f'8.[ ees16] d[ bes32 c d c bes16] bes'8.[ aes16]
  %20
  | g[ bes32 aes g aes bes16]
  | ees,[ g32 f ees f g16] c,[ ees32 d c d ees16]
  | a,[ c32 d ees d c16] f[ aes,32 g f g aes16]
  | g[ bes32 c d c bes16] ees[ g,32 f ees f g16]
  | f[ a32 bes c bes a16] d[ f,32 ees d ees f16]
  %25
  | ees[ g32 a bes a g16] c[ ees,32 d c d ees16] d4
  | \stemUp r16 bes'32[ c d c bes16] \stemNeutral
  | f'[ d bes' f] d[ f32 ees d ees f16]
  | bes,[ ees bes ees] g,[ ees32 f g f ees16]
  | bes'[ g ees' bes] g[ bes32 aes g aes bes16]
  %30
  | ees,8[ ees']~ ees16[ ees32 d c d ees16]
  | f,8[ ees']~ ees16[ c32 d ees d c16]
  | f[ d32 c bes c d16] f,[ bes c a]
  | bes1\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | bes8[ bes, d f] bes4 r
  | r8 bes,[ ees g] bes4 r
  | r8 bes,[ c ees] a4 r
  | r16 bes32[ c d c bes16] ees8 r
  %5
  | r16 a,32[ bes c bes a16] d8 r
  | r16 g,32[ a bes a g16] c[ c,32 d ees d c16]
  | f8[ f,] r16 c''[ a f]
  | r16 f32[ g a g f16] c'[ a f' c]
  | a[ c32 bes a bes c16] f,[ a c, ees]
  %10
  | d[ bes32 c d c bes16] f'[ d bes' f]
  | d[ f32 ees d ees f16] bes,16[ d g, bes]
  | e,[ g32 a bes a g16] e'[ c g' e]
  | bes'[ c,32 d e d c16] g'[ e c' g]
  | a8[ c a f] fis[ a fis d]
  %15
  | g16[ g,32 a bes a g16] d'[ bes g' d]
  | bes'[ aes32 g f g aes16] d,[ f bes, d]
  | ees8[ g ees c] b[ d b g]
  | c16[ c,32 d ees d c16] c'8.[ bes16]
  | a[ f32 g a g f16] f'8.[ ees16]
  %20
  | d[ bes32 c d c bes16] bes'8.[ aes16]
  | g[ ees32 f g f ees16] ees'8.[ d16]
  | c[ ees32 d c d ees16] a,[ c32 bes a bes c16]
  | f,[ a32 bes c bes a16] d[ f,32 ees d ees f16]
  | ees[ g32 a! bes a g16] c[ ees,32 d c d ees16]
  %25
  | d[ f32 g a g f16] bes[ d,32 c bes c d16]
  | c[ ees32 f g f ees16] a[ c,32 bes a bes c16]
  | bes[ bes'32 c d c bes16] f'[ d \staffUpper bes' \staffLower f]
  | d[ f32 ees d ees f16] bes,[ d f, aes]
  | g[ ees32 f g f ees16] bes'[ g ees' bes]
  %30
  | g[ bes32 aes g aes bes16] ees,[ g bes, d]
  | c[ f,32 g a! g f16] c'[ a ees' c]
  | a[ c32 bes a bes c16] f,[ a c, ees]
  | d[ bes'32 c d c bes16] f'8[ f,]
  | bes1\fermata
    \fine
}

\score {
  <<
  \new PianoStaff
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
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 785"
    title = \markup { "Invention XIV" "(B-Dur)" }
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
