Global = {
  \key bes \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Präludium"
    <f bes>4 r32 bes, c d ees f g a bes16. f32 d'16. bes32 f'8 <bes, d>
  | <g bes ees>4 r32 bes, c d ees f g a bes16. g32 ees'16. bes32 g'8 <bes, ees>
  | <c e>4 r32 c, d e f g a bes c16. g32 ees'16. c32 g'8 <c, ees>
  | <a c f>4 r r r8 <a c f>
  %5
  | <bes d f>4 r r r8 <bes d f>
  | <bes ees>4 r r r8 <c e>
  | f ees d f <bes, d> <a c> r4
  | \stemNeutral
    r16. ees'32 c16. a32 fis16. a32 ees16. fis32 c8 <c' ees> <bes d> <a c>
  | \stemUp
    <a c> <g bes> r4 r16. d'32 bes16. g32 e16. g32 c,16. e32
  %10
  | bes8 <bes' d> <a c> <g bes> q <f a> r4
  | r16. ees'32 c16. a32 f8 ees d16. ees'32 c16. a32 f8 ees
  | d16. f'32 d16. b32 g8 f ees16. f'32 d16. b32 g8 f
  | ees4 r r r8 <c' e>
  | <c f>4 r32 f, g a bes c d e f16. c32 a'16. f32 c'8 <c, ees>
  %15
  | <bes d>4 r r r8 d
  | ees16. bes32 g'16. ees32 bes'8 ees, f16. c32 a'16. f32 c'8 ees,
  | d16. bes32 f'16. d32 bes'8 f g16. bes32 ees,16. g32 bes,16. ees32 g,16. bes32
  | <ees, a>8 <d bes'> d'\rest <c ees> <bes d>4 <a c>
    \bar "||"
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | d4 s2 r8 f
  | ees4 s2 r8 g
  | g4 s2 r8 g
  | f4 s2 r8 f
  %5
  | f4 s2 r8 f
  | g4 s2 r8 g
  | <f c'>4 <f bes> f s
  | s1*2
  %10
  | s2 c4 s
  | s4. c8 s4. c8
  | s4. d8 s4. d8
  | c4 s2 r8 g'
  | f4 s2 r8 f
  %15
  | f4 s2 r8 <f bes>
  | <ees bes'> f\rest f\rest <g bes> <f c'> f\rest f\rest <f c'>
  | <f bes> f\rest f\rest <aes bes> <g bes> f\rest d4\rest
  | c8 bes e\rest g f4 ees
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | <d f bes>4 s2.
  | <ees g bes>4 s2.
  | <e g bes>4 s2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | bes4 r4 r r8 bes'
  | bes,4 r4 r r8 bes'
  | bes,4 r4 r r8 <bes bes'>
  | \stemNeutral
    <a a'>4 r32 f g a bes c d e f16. c32 a'16. f32 c'8 ees,^\trill
  %5
  | d4 r32 bes c d ees f g a bes16. f32 d'16. bes32 f'8 aes,^\trill
  | g4 r32 bes, c d ees f g a bes16. g32 ees'16. bes32 g'8 bes,^\trill
  | a16. f32 g16. a32 bes16. f32 d16. bes32 f'8 f, r4
  | <fis fis'> r r8 d' e fis
  | g g, r4 <e e'> r
  %10
  | r8 c' d e f f, r4
  | f' r16. f32 g16. a32 bes8 r r16. f32 g16. a32
  | bes8 r r16. g32 a16. b32 c8 r r16. g32 a16. b32
  | c4 r32 c, d ees f g a b c16. g32 ees'16. c32 g'8 bes,^\trill
  | a4 r r r8 a^\trill
  %15
  | bes4 r32 bes, c d ees f g a bes16. f32 d'16. bes32 f'8 aes,^\trill
  | g4 r16. g32 g16. g32 a4 r16. a32 a16. a32
  | bes4 r16. d,32 d16. d32 ees8 r r4
  | f8 g r ees f4 f,
    \bar "||"
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
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 898"
    title = \markup { "Präludium und Fuge über den Namen BACH" }
    subtitle = ##f
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
    \tempo 4 = 100
  }
}
