Global = {
  \key ees \major
  \time 4/4
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemNeutral\tieNeutral
  %1
  | r8 ees16[ d] ees8[\mordent f] g4\mordent aes
  | r8 f16[ ees] f8[\mordent g] aes4\mordent bes
  | g8[ c bes\prall aes] g16[ aes bes aes] g8[ f]
  | ees[ g bes ees]~ ees16[ c d ees] f8[ ees]
  %5
  | d16[ ees d\prall c] d[ ees c d] bes[ bes' a bes] g[ a f g]
  | ees[ g f g] ees[ f d ees] c[ bes' a g] a[ bes g a]
  | bes,[ bes' a g] a[ bes g a] f[ bes aes g] f[ g ees f]
  | d[ g f ees] d[ ees c d] f,[ ees' d c] d[ ees c d]
  | ees8 bes16[ aes] bes8[\mordent c] des4\mordent ees
  %10
  | r8 c16[ bes] c8[\mordent d!] ees4\mordent f
  | r8 d16[ c] d8[\mordent ees] f4\mordent g
  | ees16[ f ees\prall d] ees[ f d ees] c[ c' bes c] aes[ bes g aes]
  | f[ aes g aes] f[ g ees f] d[ c' b a] b[ c a b]
  | c,[ c' bes! aes!] bes[ c aes bes] g[ c bes aes] g[ aes f g]
  %15
  | e[ aes g f] e[ f d e] g,[ f' e d] e[ f d e]
  | f8[ f,16 e] f8[\mordent g] aes4\mordent bes
  | r8 g16[ f] g8[\mordent aes] bes4\mordent c
  | aes8[ des c\prall bes] a16[ bes c bes] a8[ g]
  | f[ a c ees]~ ees16[ c des ees] f8[ ees]
  %20
  | des16[ ees des\prall c] des[ ees c des] bes[ aes' g f] g[ aes f g]
  | aes[ des, c bes] c[ des bes c] aes[ g' f e] f[ g e f]
  | g[ c, bes aes] bes[ c aes bes] g[ f' e d] e[ f d e]
  | f8[ aes,16 g] aes8[\mordent bes] c4\mordent des
  | r8 bes16[ aes] bes8[\mordent c] des4\mordent ees
  %25
  | c16[ aes' g aes] f[ g ees f] des[ bes' aes bes] c,[ des bes c]
  | aes[ c bes c] aes[ bes g aes] f[ ees' d c] d[ ees c d]
  | ees8[ ees,16 d] ees8[\mordent f] g4\mordent aes
  | r8 f16[ ees] f8[\mordent g] aes4\mordent bes
  | \stemDown g8[ c bes\prall aes] \stemNeutral g16[ aes bes aes] g8[ f]
  %30
  | ees[ f' ees\prall des] c16[ des ees des] c8[ bes]
  | aes[ c ees aes]~ aes16[ f g aes] bes8[ aes]
  | \once\slurDown \once\stemUp \appoggiatura aes8
    g8.[ \tuplet 3/2 { f32 ees f] } f4 \downmordent ees2\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | ees4\mordent ees, r16 ees''16[ d ees] c[ d bes c]
  | aes[ c bes c] aes[ bes g aes] f[ ees' d c] d[ ees c d]
  | ees,[ ees' d c] d[ ees c d] bes[ ees d c] bes[ c aes bes]
  | g[ c bes aes] g[ aes f g] c,[ bes' a g] a[ bes g a]
  %5
  | bes8[ bes,16 a] bes8[ c] d4\mordent ees
  | r8 c16[ bes] c8[ d] ees4\mordent f
  | d8[ g f\prall ees] d16[ ees f ees] d8[ c]
  | bes[ d f aes]~ aes16[ f g aes] bes8[ aes]
  | g16[ aes g f] g[ aes f g] ees[ ees' des ees] c[ des bes c]
  %10
  | aes[ bes aes g] aes[ bes g aes] f[ f' ees f] d[ ees c d]
  | bes[ c bes a] bes[ c aes bes] g[ aes f g] ees[ f d ees]
  | c8[ c16 b] c8[ d] ees4\mordent f
  | r8 d16[ c] d8[ ees] f4\mordent g
  | ees8[ aes g\prall f] e16[ f g f] e8[ d]
  %15
  | c[ e g bes]~ bes16[ g aes bes] c8[ bes]
  | aes16[ bes aes g] aes[ bes g aes] f[ f' ees f] des[ ees c des]
  | bes[ des c bes] bes[ c aes bes] g[ f' e d] e[ f d e]
  | f,[ f' ees! des!] ees[ f des ees] c[ f ees des] c[ des bes c]
  | a[ des c bes] a[ bes g a] c,[ bes' a g] a[ bes g a]
  %20
  | bes8[ bes,16 a] bes8[ c] des4\mordent ees
  | r8 aes,16[ g] aes8[ bes] c4\mordent des
  | r8 g,16[ f] g8[ aes] bes4\mordent c
  | f,16[ c'' bes c] aes[ bes g aes] f[ aes g aes] f[ g ees f]
  | des[ f ees f] des[ ees c des] bes[ aes' g f] g[ aes f g]
  %25
  | aes8[ ees16 d!] ees8[ f] g4\mordent aes
  | r8 f16[ ees] f8[ g] aes4\mordent bes
  | g16[ aes g f] g[ aes f g] ees[ ees' d ees] c[ d bes c]
  | aes[ c bes c] aes[ bes g aes] f[ ees' d c] d[ ees c d]
  | ees,[ ees' d c] d[ ees c d] bes[ ees d c] bes[ c aes bes]
  %30
  | g[ c bes aes] g[ aes f g] ees[ aes g f] ees[ f des ees]
  | c[ f ees des] c[ des bes c] f,[ ees' d c] d[ ees c d]
  | ees8[ g, aes bes] ees,2\fermata
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
    opus = "BWV 776"
    title = \markup { "Invention V " \char ##x00b7 " Es-Dur" }
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
