Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \label #'Praeludium02
  %1
  | \repeat unfold 2 { c16 ees, d ees c ees d ees }
  | \repeat unfold 2 { aes f e f c f e f }
    % forces the division of music over three pages to increase readability
    \break
  | \repeat unfold 2 { b f ees f d f ees f }
  | \repeat unfold 2 { c' g f g ees g f g }
  %5
  | \repeat unfold 2 { ees' aes, g aes ees aes g aes }
  | \repeat unfold 2 { d fis, e fis d fis e fis }
  | \repeat unfold 2 { d' g, fis g d g fis g }
  | \repeat unfold 2 { c e, d e c e d e }
  | \repeat unfold 2 { c' f, e f c f e f }
  %10
  | \repeat unfold 2 { bes f ees f d f ees f }
  | \repeat unfold 2 { bes g f g ees g f g }
  | \repeat unfold 2 { aes g f g ees g f g }
  | \repeat unfold 2 { aes d, c d bes d c d }
  | \repeat unfold 2 { g bes, aes bes ees bes aes bes }
  %15
  | \repeat unfold 2 { f' c bes c a c bes c }
  | \repeat unfold 4 { f d c d b d c d }
  | \repeat unfold 2 { ees c b c g c b c }
  | \repeat unfold 2 { f, ees' d ees f ees d ees }
  | \repeat unfold 2 { fis, c' b c ees c b c }
  %20
  | \repeat unfold 2 { ees c b c g c b c }
  | \repeat unfold 2 { fis c b c a c b c }
  | \repeat unfold 2 { g' c, b c d c b c }
  | \repeat unfold 2 { aes' c, b c d c b c }
  | s1*3
  %28
  | \tempo "Presto"
    r16\fermata \stemNeutral d' c d ees c b c a c b c d b a b
  | g b a b c a! g a fis a g a b! g fis g
  | d g' f! g aes! f ees f d f ees f g ees d ees
  | \stemUp c ees d ees f d c d b d c d ees c b c
  | g c b c aes f' ees f g, ees' d ees f, d' c d
  | ees, c' b c aes f ees f g ees d ees f d c d
  | <c e>8~\arpeggio\fermata[ e32 c d e]
    \set subdivideBeams = ##t
    f64[ g aes bes c bes aes g f16 g32 e!]
    % FIXME: workaround to force a horizontal space after the previous note
    \override Arpeggio.X-offset = #-3
    <c f>8~\arpeggio\fermata[ f32 g f e!]
    f[ g aes g f64 ees! d ees f d ees f]
    \set subdivideBeams = ##f
    \break
  | \tempo "Allegro (Tempo I.)" \clef bass
    \stemNeutral b,8. d,16 f aes g f b f d' f, b aes g f
  | e des' bes! g c aes f aes g bes g e aes f d! f
  | e g e c f d b d r8 r16 d e! g bes g
  | aes c f d \clef treble f aes c b c g f d e!4\fermata
    \fine
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s1*34
  %35
  | s16 c, b'8~ b2.
  | s1
  | s2 r16 g c8~ c4~
  | c1^\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \repeat unfold 2 { c16 g' f g ees g f g }
  | \repeat unfold 2 { c, aes' g aes f aes g aes }
  | \repeat unfold 2 { c, aes' g aes f aes g aes }
  | \repeat unfold 2 { c, ees d ees g ees d ees }
  %5
  | \repeat unfold 2 { c c' bes c aes c bes c }
  | \repeat unfold 2 { c, a' g a fis a g a }
  | \repeat unfold 2 { bes, bes' a bes g bes a bes }
  | \repeat unfold 2 { bes, g' f g e g f g }
  | \repeat unfold 2 { aes, aes' g aes f aes g aes }
  %10
  | \repeat unfold 2 { aes, d c d f d c d }
  | \repeat unfold 2 { g, ees' d ees g ees d ees }
  | \repeat unfold 2 { c ees d ees aes ees d ees }
  | \repeat unfold 2 { d f ees f aes f ees f }
  | \repeat unfold 2 { ees g f g aes g f g }
  %15
  | \repeat unfold 2 { ees a g a f a g a }
  | \repeat unfold 2 { d, f ees f aes f ees f }
  | \repeat unfold 2 { c f e f aes f e f }
  | \repeat unfold 2 { c ees d ees f ees d ees }
  | \repeat unfold 2 { aes, c b c d c b c }
  %20
  | \repeat unfold 2 { a ees' d ees c ees d ees }
  | \repeat unfold 2 { g, ees' d ees f ees d ees }
  | \repeat unfold 2 { g, ees' d ees c ees d ees }
  | \repeat unfold 4 { g, ees' d ees f ees d ees }
  | \stemUp g, b d \change Staff = "upper" \stemDown \clef bass f aes f e f b f d' b aes f e f
  %25
  | \change Staff = "lower" \stemUp g, c ees
    \change Staff = "upper" \stemDown \clef bass g c g fis g ees' c g' ees c aes g aes
  | \change Staff = "lower" \stemUp g, a fis'
    \change Staff = "upper" \stemDown \clef treble c' \stemNeutral ees c b c fis c a' fis ees c b c
  \pageBreak
  | \change Staff = "lower" g,1~^\fermata
  | g16 \tieNeutral d'' c d ees c b c a c b c d b a b
  | g b a b c aes g aes f a g a b g f g
  %30
  | ees \clef treble g' f g aes f ees f d f ees f g ees d ees
  | c ees d ees f d c d ees c b c d b a b
  | \clef bass c ees d ees f, d' c d ees, c' b c d, b' a b
  | <c, g' bes>4\arpeggio\fermata r
    % FIXME: workaround to force a horizontal space after the previous note
    \override Arpeggio.X-offset = #-3
    <c f aes>\arpeggio\fermata r
  %35
  | r16 \stemDown\tieDown c,8.~ c2.
  | R1
  | r2 c~
  | c1
    \fine
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 847"
    title = \markup { "Praeludium II." }
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
    \tempo 4 = 144
  }
}
