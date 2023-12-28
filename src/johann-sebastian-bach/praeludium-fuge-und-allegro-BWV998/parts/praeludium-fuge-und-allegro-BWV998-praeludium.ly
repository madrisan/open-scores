Global = {
  \key ees \major
  \time 12/8
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

tema = \markup {
  \normal-text\circle \teeny "T"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | r8 ees d ees bes des c g aes ees aes c
  | r bes aes bes ees, g f aes c, d f aes
  | r g f g bes, d c ees g bes, a g
  | a f' ees f a, c bes d f bes f g
  %5
  | ees c bes c g bes a c ees g f ees
  | d bes' a bes f aes g d ees bes ees g
  | r f ees f bes, d c ees g, a c ees
  | \staffLower\stemUp a,\rest d c d f, aes g bes des aes g f
  | e g bes des c e f c aes f g aes
  %10
  | \staffUpper\stemUp bes des f aes g bes e, g bes, des c bes
  | aes f' e f c ees d bes d f g aes
  | g ees d ees b d c aes c ees f g
  | f d c d a c b g b d ees f
  | ees c' b c g bes aes e f c f aes
  %15
  | r g f g c, ees d f c b d f
  | \staffLower\stemUp f,\rest ees' d ees g, bes aes c ees bes aes g
  | fis8 d' c d fis, a g bes d g d ees
  | c g fis g c a fis a c ees d c
  | bes g bes \staffUpper d g fis g bes g d e f
  %20
  | \stemNeutral e c e g bes g bes des c bes aes g
  | aes f, aes c f e f aes c, ees d c
  | d bes d f aes g aes c bes aes g f
  | g ees d ees bes g r g bes ees f g
  | aes ees d! ees aes c des ees, d ees g bes
  %25
  | c aes g aes ees ges f c des aes des f
  | s1*12/8*10
  %36
  | \stemUp s4 g8 g4 g8 r r g g4 g8
  | r r aes8 aes4 aes8 r r bes bes4 bes8
  | ces 	aes g aes ees des ees ces bes
    \once\override Beam.damping = #4
    ces \staffLower aes g
  | aes fes ees fes aes ces \staffUpper fes ces bes ces fes aes
  %40
  | bes4( a8)\fermata \stemNeutral r16 g bes a g f bes8 f d bes f' aes
  | g f ees f c ees f, aes g aes ees' d
  | ees ees' d ees bes des c g aes ees aes c
  | r bes aes bes ees, g f aes c, d! f aes
  | r g f g bes, des c ees aes c, bes aes
  %45
  | bes ees g bes, aes g aes d f aes, g f
  | g bes ees g bes des c aes f d f aes
  | \stemUp \once\override Beam.damping = #4
    g ees \staffLower bes g bes des c aes f d f aes
  | aes4( g8)\fermata a4.\rest a2.\rest
    \staffUpper
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \stemDown\tieDown
  %1
  | s1*12/8*25
  %26
  | \staffLower\stemUp c8\rest ees des ees aes, c bes des aes g! bes des
  | a\rest c bes c aes g aes f e f c' ees
  | d bes a bes c d ees bes a bes d ees
  | f bes, a
    \once\override Beam.damping = #4 bes \staffUpper d f
    aes c bes aes g f
  %30
  | g ees d ees g des c g' bes, aes ees' g
  | f d c d f c bes f' aes, g d' f
  | ees c bes c ees bes aes ees' g, f c' ees
  | \once\override Beam.damping = #4
    d \staffLower\stemUp aes g aes \staffUpper\stemDown d f
    \once\override Beam.damping = #3
    bes \staffLower\stemUp aes, g aes \staffUpper\stemDown d f
  | \once\override Beam.damping = #3
    bes \staffLower\stemUp g, f g \staffUpper\stemDown bes ees
    \once\override Beam.damping = #3
    bes' \staffLower\stemUp g, f g \staffUpper\stemDown bes ees
  %35
  | \once\override Beam.damping = #3
    bes' \staffLower\stemUp f, ees f \staffUpper\stemDown bes d
    \once\override Beam.damping = #3
    aes' \staffLower\stemUp f, ees f \staffUpper\stemDown bes d
  | g bes, ees ees bes ees b\rest bes ees ees bes ees
  | b\rest aes ees' ees aes, ees'
    \staffLower\stemUp c\rest g \staffUpper\stemDown des' des \staffLower\stemUp g, \staffUpper\stemDown des'
  | ees s4 s4. s2.
  | s1*12/8
  %40
  | <c! f!>4. s s2.
  | s1*12/8*5
  | \staffLower\stemUp s4. d,8\rest d\rest ees~ ees4 d8\rest f4 d8\rest
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | \repeat unfold 3 { ees4. r4. r2. }
  | ees4. r d r
  %5
  | c r f r
  | <bes, bes'> r r2.
  | bes'4. r r2.
  | \stemDown bes4. b\rest b2.\rest
  | bes4. b\rest aes aes\rest
  %10
  | \stemNeutral g r c r
  | f,4 r8 aes4 r8 bes4 r8 d4 r8
  | ees,4 r8 g4 r8 aes4 r8 c4 r8
  | d,4 r8 f4 r8 g4 r8 b4 r8
  | \repeat unfold 2 { c,4. r r2. }
  %16
  | \stemDown c4. b'\rest b2.\rest
  | c4. b\rest bes b\rest
  | a b\rest d b\rest
  | g b\rest \stemNeutral bes r
  %20
  | c r e r
  | f, r aes r
  | bes r d r
  | ees, r des' r
  | c r bes r
  %25
  | aes4. r r2.
  | \stemDown \repeat unfold 2 { aes4. a\rest b2.\rest }
  | aes4. a\rest g a\rest
  | d, b\rest \stemNeutral bes r
  %30
  | ees4 r8 g4 r8 aes4 r8 c4 r8
  | d,4 r8 f4 r8 g4 r8 bes4 r8
  | c,4 r8 ees4 r8 f4 r8 aes4 r8
  | \stemDown bes4. g\rest g2.\rest
  | c4. g\rest g2.\rest
  %35
  | d'4. g,\rest g2.\rest
  | ees'4. c\rest des c\rest
  | ces4. b\rest bes b\rest
  | \once\stemUp aes4. b\rest r2.
  | aes4. g\rest r2.
  %40
  | \stemNeutral ees4.\fermata r d r
  | ees4 r8 aes4 r8 bes4 r8 bes,4 r8
  | \repeat unfold 2 { ees4. r r2. }
  %45
  | \repeat unfold 2 { ees4. r  ees r }
  | ees s4 \stemDown g8 aes4 s8 bes4 s8
  | c4. g8\rest g\rest g aes4 g8\rest bes4 g8\rest
  | <ees bes' ees>4.\fermata g\rest g2.\rest
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { "Präludium" }
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
    \tempo 4. = 78
  }
}
