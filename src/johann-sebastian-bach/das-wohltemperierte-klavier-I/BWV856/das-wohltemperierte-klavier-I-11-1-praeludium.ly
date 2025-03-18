Global = {
  \key f \major
  \time 12/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'Praeludium11
  %1
  | f16 c a g a c  f, a c es d c  d bes f e! f bes  d, f a c bes a
  | bes16 g e d e g  c, e g bes a g  a g f e f a  c, e f a g f
  | b2.\upprall  c16 g e d e g  c, e g bes a g
  | cis2.\downprall  d16 a f e f a  d, f a c bes! a
  %5
  | bes16 g e d e g  c, e g bes a g  a f d cis d f  bes, d f a g f
  | g16 e cis b cis e  a, cis e g f e  f8 a d  a f d
  | g8 bes d  bes g d  g cis e  cis g e
  | d'16 a f e f a  d, f a c! bes a  f' d bes a bes d  f, bes d f e d
  | gis2.\downprall  a16 	e cis b cis e  a, cis e g fis e
  %10
  | fis2.\upprall  g16 d b a b d  g, b d f es d
  | es16 c a g a c  f, a c es d c  d bes! g f g bes  es, g bes d c bes
  | c16 a fis e! fis a  d, fis a c bes a
    \once\override Script.extra-offset = #'(0.6 . 0)
    \tieUp bes2.~\upprall
  | \stemUp bes2. a~
  | a16 a f e! f a \stemNeutral\tieNeutral d, f a c bes a  g d' bes a bes d  g, bes d f e d
  %15
  | e16 g e d e g  c, e g bes a g  c a f e f a  d, f a c bes a
  | bes16 g e d e g  c, e g bes a g  a f c bes c f  a, c es g f es
  | d4.~\prall d16 c bes a g f  bes8 g' e!  c bes g'
  | a,16 g f e f a  d, f d bes g e'  f bes, a g a c  f,4 r8
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*12/8*12
  | e2. es\prall
  | d8 s4 s2.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | f8 a c  a f a  bes d bes  f,4 r8
  | f'8 g bes  g e c  f a f  f,4 r8
  | f'16 d b a b d  g, b d f e d
    \once\override Script.extra-offset = #'(0.8 . 0.2)
    e2.^\upprall
  | g16\stopTrillSpan e cis b cis e  a, cis e g f e  f2.^\upprall
  %5
  | g8\stopTrillSpan bes g  e c! e  f a f  d bes d
  | e8 g e  cis a cis  d16 a f e f a  d, f a c bes a
  | d16 bes g fis g bes  d, g bes d cis b  cis bes g fis g bes  d, g cis e d cis
  | d8 f! a  f d f  d, f bes  d4 r8

  | d'16 b gis fis gis b  e, gis b d cis b
    \once\override Script.extra-offset = #'(0.2 . 0.6)
    cis2.^\upprall
  | c!16 a fis e fis a  d, fis a c b a
    \once\override Script.extra-offset = #'(0.2 . 0.6)
    b2.^\upprall
  | c8\stopTrillSpan es c  a f a  bes d bes  g es g
  | a8 c a  fis d fis  g16 d bes a bes d  g, bes d f e d
  | c16 g e d e g  c, g' c e d c  f c a g a c  f, c' f a g f
  | \once\override Script.extra-offset = #'(0.4 . 0.4)
    bes1.~^\downprall
  | bes2. a8 c a  f d f
  | g8 bes g  e c e  f16 c a g a c  f, a c es d c
  | f16 d bes a bes d  f, bes d f e! d  e c bes a bes c  g bes e g f e
  | f8 a, d  bes8.^\trill a32 bes c8  f,4 r8  r16 c' a c f,8
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
    opus = ##f % "BWV 856"
    title = \markup { "Praeludium XI" }
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
