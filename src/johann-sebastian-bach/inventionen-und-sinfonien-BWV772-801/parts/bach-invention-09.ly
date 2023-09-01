Global = {
  \key f \minor
  \time 3/4
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \stemNeutral\tieNeutral
  %1
  | c16[( bes aes g)] aes8[ f] des'4~
  | des16[ c( bes a)] bes8[ g] e'4 ~
  | e16[ f( g aes)] bes8[( g16 e)] des!8[( c)]
  | bes16[( aes g aes] bes[ des c bes] aes[ g f e)]
  %5
  | aes8[ f']~ f16[ g( aes g ] f[ ees! des c)]
  | bes8[ g']~ g16[ aes( bes aes] g[ f e d)]
  | c[( d e f] g[ aes bes g] f[ e f e)]
  | f8[ c]~ c16[ bes aes g] f[( e) aes( g)]
  | c16[ bes aes g] aes8[ f] aes'4~
  %10
  | aes16[ g( f e)] f8[ d] b4~
  | b16[ c d ees!] f8[ d16 b] aes!8[ g]~
  | g16[( f ees d)] ees8[ c] ees'4~
  | ees16[ d( c b)] c8[ a] fis'4~
  | fis16[ g( a bes)] c8[( a16 fis)] ees!8[( d)]
  %15
  | b4.^\downprall b8 c4^\prallmordent~
  | \once\override Voice.Script.X-offset = #4
    c8.^\turn d16 d4.^\upprall c8
  | c4~ c16[ d( ees d] c[ bes! aes g)]
  | f8[ d']~ d16[ ees( f ees] d[ c b a)]
  | g[( a b c] d[ ees f d] c[ b c b)]
  %20
  | g'4 ~ g16[ f ees d] c4~
  | c16[ bes a g] a8[ f] ees'4~
  | ees16[ des c des] ees[ ges f ees] des[ c bes aes!]
  | g!8[ bes']~ bes16[ aes( g f] ees[ des c bes)]
  | aes8[ c ees g] aes4~
  %25
  | aes16[ g f ees] des[ bes aes'8] g4 ~
  | g16[ f ees des] c[ aes ges'8] f4 ~
  | f16[ ees des c] bes[ aes g aes] bes4~
  | bes16[ aes g f] e[ f g aes] bes[ c des bes]
  | c[ bes aes g] aes8[ f] des'4~
  %30
  | des16[ c bes a] bes8[ g] e'4~
  | e16[ f g aes] bes8[ g16 e] des!8[ c]
  | bes16[( aes g aes] bes[ des c bes] aes[ g f e)]
  | c'8.\mordent^\markup {
      \hspace #4.0 \musicglyph #"scripts.turn"
    } des16 g,4.^\downprall f8
  | f2.^\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c, {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | f8[ f']~ f16[ g( aes g ] f[ ees des c)]
  | bes8[ g']~ g16[ aes!( bes aes] g[ f e d)]
  | c[( d e f] g[ aes bes g] f[ e f e)]
  | f4 r16 c[ d e] f[ g aes bes]
  %5
  | c[ bes aes g] aes8[ f] des'4~
  | des16[ c bes a] bes8[ g] \clef "treble" e'4 ~
  | e16[ f g aes] bes8[ g16 e] des!8[ c] \clef "bass"
  | bes16[( aes g aes)] bes[( des c bes] aes[ g f e)]
  | aes8[ f ]~ f16[ g( aes g] f[ ees des c)]
  %10
  | b8[ aes']~ aes16[ g( f ees)] d[( c b a)]
  | g[ a b c] d[ ees f d] c[ b c b]
  | ees8[ c' ]~ c16[ d( ees d] c[ bes a g)]
  | fis8[ ees']~ ees16[ d( c bes] a[ g fis e)]
  | d[( e fis g] a[ bes c a] g[ fis g fis)]
  %15
  | g[ a b c] d[ ees f d] ees[ c d ees]
  | f[ g aes f] g[ d ees f] g,[ f' ees d]
  | ees[ f,( ees d)] ees8[ c] aes'4~
  | aes16[ g( f e)] f8[ d] b'4~
  | b16[ c d ees] f8[ d16 b] aes!8[ g]
  %20
  | f16[ ees d ees] f[ aes g f] ees[ d c bes]
  | a8[ c']~ c16[ bes a g] f[ ees des! c]
  | bes8[ des f a] bes4~
  | bes16[ aes! g f] g8[ ees] des'4~
  | des16[ c bes c] des[ f ees des] c[ bes aes g]
  %25
  | f8[ f'] ~ f16[ ees des c ] bes[ aes g bes]
  | ees,8[ ees']~ ees16[ des c bes] aes[ ges f aes]
  | des,8[ des']~ des16[ c( bes aes] g[ f e g)]
  | c,4~ c16[ d e f] g[ aes bes g]
  | aes[ bes c8]~ c16[ bes( aes g] f[ es des c)]
  %30
  | bes[ c des8]~ des16[ c bes aes] g[ f e d]
  | c[ d e f] g[ aes bes g] f[ e f e]
  | f4 r16 c'[ d e] f[ e f g]
  | aes[ g aes bes] c8[ bes c c,]
  | f,2._\fermata
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
    opus = "BWV 780"
    title = \markup { "Invention IX" "(f-Moll)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 72
  }
}
