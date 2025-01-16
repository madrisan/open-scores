Global = {
  \key bes \major
  \time 4/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp
  %1
  \repeat volta 2 {
  | f4^\markup { "m.s." } s2 f4
  | g aes, g g'
  | c,4 ges f c'
  | d s2 d4
  %5
  | g a, g^\prall f
  | e4 g c, e'
  | f g, f^\prall e
  | d f bes, d'
  | e des, c e'
  %10
  | f des, c f'
  | g des, c g''
  | as des,, c as''
  | b, s2 b4
  | c s2 bes4
  %15
  | aes s2.
  | s4 f s2
  }
  \repeat volta 2 {
  | a'4 ees,! s a'
  | bes aes, s bes'
  | g bes, a! g'
  %20
  | fis g, a fis'
  | g es,! d g'
  | a es, d a''
  | bes es,, d bes''
  | c es,, d c''
  %25
  | bes4 fis g cis,
  | d g, fis es!
  | d cis d s
  | s1
  | d4 f bes d
  %30
  | es, bes' g' d,
  | c f bes, e'
  | f f, f' f,
  | es' f, es' f,
  | d' f, d' f,
  %35
  | des' e, des' e,
  | c' es, c' es,
  | ces' d, ces' d,
  | bes' des, bes' des,
  | a'! c, a' c,
  %40
  | g'! bes, g' bes,
  | aes' s2 aes4
  | bes s2 bes4
  | c s2 c4
  | des s2 des4
  %45
  | e! s2 e4
  | f s2 ees4
  | des s2.
  | s4 bes s2
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override MultiMeasureRest.staff-position = #0
  \label #'PartitaIGigue
  %1
  \repeat volta 2 {
  | r8*2/3
    \once\override TextScript.extra-offset = #'(-2 . 0)
    d_\markup { "m.d." } bes'
    \repeat unfold 3 { r8*2/3 d, bes' }
  | \repeat unfold 4 { r es, bes' }
  | \repeat unfold 4 { r es, a }
  | \repeat unfold 4 { r f bes }
  %5
  | \repeat unfold 4 { r bes d }
  | \repeat unfold 4 { r bes c }
  | \repeat unfold 4 { r a c }
  | \repeat unfold 4 { r a bes }
  | \repeat unfold 4 { r g bes }
  %10
  | \repeat unfold 4 { r f as }
  | \repeat unfold 4 { r e g }
  | \repeat unfold 4 { r e f }
  | \repeat unfold 4 { r d f }
  | \repeat unfold 4 { r e g }
  %15
  | \repeat unfold 4 { r e f }
  | r8*2/3 a,! c r a'! c f2
  }
  \pageBreak
  \repeat volta 2 {
  | \repeat unfold 4 { r8*2/3 f, c' }
  | \repeat unfold 4 { r f, d' }
  | \repeat unfold 4 { r es, d' }
  %20
  | r8*2/3 d, c' r e, c' r fis, c' r a c
  | \repeat unfold 4 { r g bes }
  | \repeat unfold 4 { r fis a }
  | \repeat unfold 4 { r fis g }
  | \repeat unfold 4 { r fis a }
  %25
  | r8*2/3 g bes r a c r bes d r g, e'!
  | r a, fis' r bes, g' r c, a' r c, fis
  | r b, g' r bes, e r a, fis' r c fis
  | \repeat unfold 4 { r bes, g' }
  | \repeat unfold 4 { r as, f' }
  %30
  | \repeat unfold 4 { r g, es' }
  | r8*2/3 a, ees' r a, ees' r bes d r bes des
  | \repeat unfold 4 { r a c }
  | \repeat unfold 4 { r a c }
  | \repeat unfold 4 { r as b }
  %35
  | \repeat unfold 4 { r g bes }
  | \repeat unfold 4 { r ges a }
  | \repeat unfold 4 { r f as }
  | \repeat unfold 4 { r e g }
  | \repeat unfold 4 { r es ges }
  %40
  | \repeat unfold 4 { r des es }
  | \repeat unfold 4 { r c es }
  | \repeat unfold 4 { r bes des }
  | \repeat unfold 4 { r a c }
  | \repeat unfold 4 { r a bes }
  %45
  | \repeat unfold 4 { r g bes }
  | \repeat unfold 4 { r a c }
  | \repeat unfold 4 { r a bes }
  | r8*2/3 d f r d' f bes2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s4 bes bes, s4
  | s1*2
  | s4 bes' bes, s
  | s1*8
  %13
  | s4 as' g s
  | s des c s
  %15
  | s b' c c,
  | f, s2.
  }
  \repeat volta 2 {
  | s2 f'4 s
  | s2 bes4 s
  | s1*8
  %27
  | s2. d,4
  | g, d' g bes
  | s1*12
  %41
    \repeat unfold 4 {
  |   s4 ges f s
    }
  %45
 | s des c s
 | s ges f s
 | s e' f f,
 | bes s2.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian @composer_lastnam@"
    opus = ##f % "BWV 825"
    title = \markup { "Gigue" }
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
    \tempo 4 = 180
  }
}
