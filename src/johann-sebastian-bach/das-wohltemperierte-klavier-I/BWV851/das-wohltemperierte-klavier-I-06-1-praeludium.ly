Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'Praeludium06
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/8)
  \set Staff.beatStructure = 1,1,1,1,1,1,1,1
  %1
  | r8 r16 a'16
    \scaleDurations 2/3 {
      f16 d a'  f d d'  bes g bes  g e g  e cis g'  e cis a'
  |   f d a'  f d \once\stemDown a''  f d f  d a d  bes g d'  bes g g'  e c! e  c g c
  |   a f c'  a f f'  d bes d  bes g g'  e c e  c a a'  f d f  d bes bes'
  |   g e g  e c c'  a f a  f c a'  f d f  d a f'  d bes d  bes f d'
  %5
  |   bes g bes  g d bes'  g c, bes'  g e bes'  a f a  f c f  d bes f'  c bes e
  |   c a f'  c a c  a f c'  a f c'  a fis c'  a fis es'  a, fis d'  a fis c'
  |   bes g d'  bes g d'  bes g e'!  bes g fis'  bes, g g'  d bes g'  es a, g'  d a fis'!
  |   d bes g'  d bes d  bes g d'  bes g d'  b gis d'  b gis f'!  b, gis e'!  b gis d'
  |   c a e'  c a e'  c a fis'  c a gis'  c, a a'  e c a'  f! b, a'  e b gis'!
  %10
  |   e c a'  e c c'  f, d bes'!  g! e bes'  a f a  c, a a'  d, b g'  e cis g'
  |   f d d'  a f f'  bes, g es'  c! a es'  d bes d  f, d d'  g, e! c'  a fis c'
  |   bes g d'  bes g g'  es g, g'  d g, g'  cis, a g'  e cis bes'  e, cis a'  e cis g'
  |   f d a  f d a'  f d b'  f d cis'  f, d d'  f, d a'  f d bes'  e, cis a'
  |   e cis g'  d a f'  d bes e  cis a e'
      \change Staff = "lower" \voiceThree d f, bes  a[ f d']  bes e, d'  g,[ e cis']
  %15
  |   a fis a  c![ a c]
      \change Staff = "upper" \voiceOne \stemNeutral\tieNeutral
      es c es  fis8*3/2  bes,16 g bes  d b e  g d g bes8*3/2~
  |   bes16 g e'!  bes g g'  bes, g e'  bes g cis  bes g e'  bes g g'  bes, g e'  bes g cis
  |   a fis d'  a fis es'  a, fis d'  a fis c'!  a fis d'  a fis es'  a, fis d'  a fis c'
  |   g d g  bes g bes  d bes d  g d g  bes a g  f! e! d  cis a cis  e cis e
  |   g e d  cis b a  g e g  bes g bes  cis g e' cis bes e  cis a e' cis g e'
  %20
  |   c! a d  bes g es'  a, fis d'  a fis c'  g d bes'  g f bes  g es bes'  g d bes'
  |   g cis, bes'  e, cis bes'  e, cis a'  e cis g'  d b f'  d cis f  d b f'  d a f'
  |   cis g e'  cis bes! e  cis a e'  cis g e'  b gis d'  cis gis e'  d gis, f'  g,8*3/2~
  |   g16 e g  cis g cis  e cis e  g8*3/2  f16 d f  a f a  d a d  \once\stemUp f8*3/2~
  |   f16 b, d  f d f  gis f gis  b gis f  bes g e  a fis dis  gis f d  g e cis
  %25
  |   fis es c!  f d b  e cis bes  es c a  \stemUp\tieUp d2*3/2~
    }
  | d4 cis <a d>2\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*24
  | s2 c,4\rest <d f gis>
  | << {
      \stemDown <d f>4 <e! g!> <d fis>2
    } \\ {
      \stemUp \shiftOn a'2 s
    } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \omit TupletNumber
  %1
  | s1*19
  | s2 g8 a g f
  | e g f e d e f4
  | e8 g f e f[ e f~] \tuplet 3/2 { f16 e d }
  | cis8[ e g
    \change Staff = "upper" \voiceTwo
    bes]
    \change Staff = "lower" \voiceThree
    a[ d f
    \change Staff = "upper" \voiceTwo
    a]
  | \change Staff = "lower" \voiceThree
    s1*2
  %26
  | << {
      \stemUp \shiftOn <d,, f>4 e s2
    } \\ {
      \stemUp a2 s
    } >>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set Voice.beamExceptions = #'()
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1,1
  \omit TupletNumber
  %1
  | d8 d d d  d d d d
  | d d d' d  g, g c c
  | f, f bes g  c a d d,
  | e c f e  d c bes a
  %5
  | g f e c  f a bes c
  | f,4 r8 \stemDown es'  d c bes a
  | \stemNeutral g bes c d  es bes c d
  | g,4 r8 f'!  e! d c b
  | a c d e  f! c d e
  %10
  | a, a' a g  f f, f e
  | d d' d c  bes bes' bes a
  | g4 r8 bes  a g f e
  | d f g a  bes f g a
  | bes f, g a  \stemDown\tieDown bes f g a
  %15
  | d,4.~ \tuplet 3/2 { d16 fis a } d4.~ \tuplet 3/2 { d16 g bes }
  | \unset Voice.beamExceptions
    \unset Voice.baseMoment
    \unset Voice.beatStructure
    \repeat unfold 2 { cis8 d, cis' d, }
  | \repeat unfold 2 { c' d, c' d, }
  | bes'8 d, bes' d,  g d g d
  | e8 d e d  e d e d
  %20
  | fis8 d fis d~ d2~
  | d2 gis,4. a8
  | bes2 b4. bes8
  | a4.~ \tuplet 3/2 { a16 cis e } a4.~ \tuplet 3/2 { a16 d f }
  | gis8 r r4 r2
  %25
  | r2 r4 <b,, d f gis>
  | a2 \stemNeutral <d, d'>\fermata
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 851"
    title = \markup { "Praeludium VI." }
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
