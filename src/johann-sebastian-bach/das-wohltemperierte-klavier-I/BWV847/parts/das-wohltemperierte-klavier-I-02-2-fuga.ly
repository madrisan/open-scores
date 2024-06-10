Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #4
  \override Rest.staff-position = #0
  %1
  | R1*2
  | g'8\rest \highlightSubject { g16 fis g8 c, es g16 fis! g8 a
  | d,8 g16 fis g8 a c,16 d es4 d16 c
  %5
  | \unHighlightSubject bes8 } es16 d es8 g, as f'16 es f8 a,
  | bes8 g'16 f g8 b, c d16 es \stemUp\tieUp f4~
  | f8 es16 d c b! as g f8 as' g f
  | es[ d] es f b, c d[ b]
  | c8 g'16 fis g8 d es4 g8\rest e
  %10
  | f8 f16 e f8 c d4 f8\rest d
  | es8 \highlightSubject { es16 d es8 b c es16 d es8 f
  | bes,8 es16 d es8 f \stemNeutral as,16 bes c4 bes16 as
  | \unHighlightSubject g16 } es f g as bes c d es d c d es f g a
  | b16 f, g as! bes c d! e f es d es f g a b
  %15
  | \stemUp c8 b16 a g f! es d c8 es d c
  | bes8 a bes c fis,! g a! fis
  | g8 d'16 c d8 f\rest f\rest e16 d e8 f\rest
  | f8\rest fis16 e fis8 f\rest f\rest g,16 f! g8 b\rest
  | b8\rest a16 g a8 bes\rest b\rest b16 a b8 b\rest
  %20
  | b8\rest \highlightSubject { c16 b c8 g as c16 b! c8 d
  | g,8 c16 b c8 d f,16 g as4 g16 f
  | \unHighlightSubject es8 } c'16 b c8 g as4 d8\rest a
  | bes8 bes16 a bes8 f g4 d'8\rest g,~
  | g8 as16 bes c b c as f2~
  %25
  | f8 d'16 c d8 f, es es'16 d es8 g,
  | f8 f'16 es f8 as, g16 f' es d c b a g
  | c8 f es d d\rest as g f
  | g8 f16 es f8 d as' g d'\rest a
  | b8 c f,16 es d c c8 \highlightSubject { c'16 b! c8 g
  %30
  | as8 c16 b c8 d g, c16 b! c8 d
  | f,16 g as4 g16 f e2 }
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | r8 \highlightSubject { c16 b c8 g as c16 b c8 d
  | g,8 c16 b c8 d f,16 g as4 g16 f
  | \stemDown \unHighlightSubject es16 } c' b a g f! es d c8 es' d c
  | bes8 a bes c fis, g a fis
  %5
  | g4 es16\rest c d es f g as8~ as16 d, es f
  | g16 a bes8~ bes16 es, f g as g f es d8 c'16 b!
  | c4 c,4\rest b8\rest f'' es d
  | g,8\rest as g f g f16 es f8 d
  | g4 g8\rest b c c16 b c8 g
  %10
  | as4 g8\rest a bes bes16a! bes8 f
  | g4 g8\rest g as as g[ f]
  | \change Staff = "lower" \stemUp\tieUp d8\rest as bes c c\rest as16 g as8 f
  | bes8 c bes as bes g f es
  | f8 des' c bes c as g f
  %15
  | g8 \change Staff = "upper" \stemDown\tieDown \highlightSubject { g'16 fis g8 c, es g16 fis! g8 a
  | d,8 g16 fis g8 a! c,16 d es4 d16 c
  | bes8 } c\rest c16\rest d e fis g a bes8~ bes16 e,! f g
  | a bes c8~ c16 fis, g a! bes8 es,!16 d es8 g,
  | as! f'16 es f8 a, bes g'16 f g8 b,
  %20
  | c16 f es d c bes! as g f8 as' g f
  | es8 d es f b, c d b
  | c4 c8\rest e f f16 e! f8 c
  | d4 c8\rest d es es16 d es8 bes
  | c2~ c8 d16 es f es f d
  %25
  | b8 c\rest c\rest b c c\rest c\rest es
  | d e\rest e\rest f~ f e\rest e\rest f
  | es as g f es d es f
  | b, c d[ b~] b c c\rest c
  | f16 d es c~ c8 b c4 e8\rest e
  %30
  | f4 e8\rest f f es16 d << { \stemDown es8 f } \\ { \stemUp s \shiftOn aes } >>
  | <b, d> c\rest <b d> c\rest <g c>2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*6
  | r8 \highlightSubject { c16 b c8 g as c16 b! c8 d
  | g,8 c16 b c8 d f,16 g as4 g16 f
  | \stemDown \unHighlightSubject es16 } c' b a g f! es d c d ees d c bes aes g
  %10
  | f16 bes' as g f es d c bes c d c bes as g f
  | es as' g f es des c bes as8 c' bes as
  | g8 f g as d, es f d
  | es as g f g es d c
  | d bes' as g as f es d
  %15
  | es8 r8 r4 \stemNeutral\tieNeutral r8 c bes a
  | r8 es' d c d c16 bes c8 d
  | g,8 bes'16 a bes8 d, es c'16 bes c8 e,
  | f8 d'16 c d8 fis, g4 r16 g, a b
  | \stemDown c16 d es8~ es16 a, bes c d es f8~ f16 b, c d
  %20
  | \stemNeutral es8 r r e f f,[ es! d]
  | r8 as' g f g f16 es f8 g
  | c16 d es d c bes! as  g f bes' as g f es! d c
  | bes c d c bes as! g f es as' g f es d c bes
  | as bes c bes as g f es d g' f es d c b a
  %25
  | g4 r r16 g a b c d es f
  | g f as g f es d c b8 \highlightSubject { c16 b c8 g
  | as c16 b! c8 d g,8 c16 b! c8 d
  | f,16 g as4 g16 f es4 } r8 es'
  | d c g'[ g,] <c, c'>2~
  %30
  | <c c'>1~
  | <c c'>
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
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 847"
    title = \markup { "Fuga II." }
    subtitle = "(a 3 voci)"
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 80
  }
}
