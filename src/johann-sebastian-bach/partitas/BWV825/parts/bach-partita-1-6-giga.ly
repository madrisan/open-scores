Global = {
  \key bes \major
  \time 4/4
  \include "../../global.ly"
}

barpattern = {
  \repeat unfold 4 { r8*2/3 d bes' }
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'PartitaIGigue
  %1
  \repeat volta 2 {
  | \repeat unfold 4 { r8*2/3 d bes' }
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
  | r8*2/3 a,! c r a'! c r2
  }
  %\pageBreak
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
  | r8*2/3 a, e' r a, e' r bes d r bes des
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
  | r8*2/3 d f r d' f r2
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
  | \clef treble f'4 \clef bass bes,, bes, \clef treble f'''
  | g as, g g'
  | c, ges f c'
  | d \clef bass bes, bes, \clef treble d''
  %5
  | g a, g^\prall f
  | e g c, e'
  | f g, f^\prall e
  | d f bes, d'
  | e des, c e'
  %10
  | f des, c f'
  | g des, c g''
  | as des,, c as''
  | b, \clef bass as, g \clef treble b'
  | c \clef bass des,, c \clef treble bes''
  %15
  | as \clef bass b, c c,
  | f, \clef treble f'' f'2
  }
  \repeat volta 2 {
  | a4 es,! \clef bass f, \clef treble a''
  | bes as, bes, bes''
  | g bes, a g'
  %20
  | fis g, a fis'
  | g es,! d g'
  | a es, d a''
  | bes es,, d bes''
  | c es,, d c''
  %25
  | bes fis g cis,
  | d g, fis es!
  | d cis d \clef bass d,
  | g, d' g bes
  | \clef treble d f bes d
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
  | a' \clef bass ges, f \clef treble a'
  | bes \clef bass ges, f \clef treble bes'
  | c \clef bass ges, f \clef treble c''
  | des \clef bass ges,, f \clef treble des''
  %45
  | e \clef bass des,, c \clef treble e''
  | f \clef bass ges,,, f \clef treble es'''
  | des \clef bass e,, f f,
  | bes \clef treble bes'' bes'2
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
