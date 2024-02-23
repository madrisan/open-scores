Global = {
  \key bes \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | d8 bes a bes f bes
  | d bes es bes f' bes,
  | c a g a f a
  | c f, d' f, es' f,
    \break
  %5
  | d' aes es' g, f' f,
  | g' f a! es bes' d,
  | c es d c d bes
  | c a g a f es'
    \break
  | d bes a bes f bes
  %10
  | d bes es bes f' bes,
  | c a g a f a
  | c f, d' f, es' f,
  | d' c e bes f' a,
  | g bes f bes e, bes'
  %15
  | a c a f c e
  | \alternative {
      { f4. g16 a bes a bes c }
      { f,2. }
    }
  }
  \break
  \repeat volta 2 {
  | a'8 f e f c f
  | a f bes f a f
  %20
  | g es! d es c es
  | f d f c f b,
  | c es fis c a' c,
  | a c fis, c' d, c'
  | bes! es d bes c a
  %25
  | g4. a16 bes a g f! es
    \break
  | d8 bes' a bes f' bes,
  | aes' bes, g' bes, f' bes,
  | es, bes' a! bes g' bes,
  | es, bes' f bes g bes
  %30
  | c bes d aes es' g,
  | f' es g d a'! c,
  | bes' a g f es d
  | c bes a g f es
    \break
  | \staffLower\stemUp d \staffUpper\stemNeutral f' g f c f
  %35
  | b, f' a, f' g, f'
  | \staffLower\stemUp c, \staffUpper\stemNeutral es' f es bes es
    \break
  | a, es' g, es' f, es'
  | d f d bes f a
  | \alternative {
      { bes4~ bes16 c d es f e f g }
      { bes,2. }
    }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  %1
  | bes4 f d
  | bes c d
  | a c f
  | a bes8 a g f
  %5
  | bes4 \clef treble c d
  | es f g
  | a bes bes,
  | f' \clef bass f, a
  | bes f d
  %10
  | bes c d
  | a c f
  | a bes8 a g f
  | bes4 c d
  | e, d c
  %15
  | f bes, c
  | \alternative {
      { f,8 a c f g a }
      { f4 c a }
    }
  }
  \repeat volta 2 {
  | f c' f
  | es! d bes
  | es g aes
  | d, g g,
  | c a'! g
  | fis d fis
  | g bes, d
  | g,8 a bes c d es
  | f4 es d
  | f es d
  | g f es
  | g f es
  | aes bes c
  | \clef treble d es f
  | g a! bes
  | f \clef bass f, a
  | d d, f
  | g a b
  | c c, es
  | f g a
  | bes es, f
  | \alternative {
      { bes,8 d c bes a g }
      { bes2. }
    }
  }
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
    composer = ##f # "Johann Sebastian @composer_lastnam@"
    opus = ##f # "BWV 825"
    title = \markup { "Menuet I" }
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
    \tempo 4 = 140
  }
}
