Global = {
  \key a \minor
  \time 6/8
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \label #'SuiteIIGigue
  \partial 8 e8
  %1
  \repeat volta 2 {
  | \mark \markup { \tiny \musicglyph #"scripts.segno"}
    a4 a8 a b c
  | b d, b' e, f d
  | c e a d, b' a
  | gis a b e, e' d
  %5
  | c d e a, f' e
  | d e f b, g' f
  | e f g g\prall f g
  | a a, b c d e
  | f g a a\prall g a
  %10
  | b b, c d e f
  | g a b b\prall a b
  | c c, d e f g
  | a b, c d e f
  | g a, b c d e
  %15
  | f g a d, e f
  | b, c d g, a b
  | c4 c8 c b c
  | d f, d' e, f d
  | c e g e g c
  %20
  | g b d b d g
  | g e c bes a g
  | a4. r8 r a
  | f' d b a g f
  | g4. r8 r g
  %25
  | e' c a g f e
  | d' b g f e d
  | e g c fis, d' c
  | b c d g,4 d'8
  | e f g g, a b
  %30
  | c d e b c d
  | e f g g, a b
  | \stemUp c d e b c d
  | e f g e\prall d c
    \alternative {
      { c g e c4 e8 }
      {
  %35
  |     \stemNeutral c' g e c4 g'8
  |     c4 c8 c d e
      }
    }
  }
  \pageBreak
  \repeat volta 3 {
  | d f, d' g, a f
  | e c' e, d e c
  | b c d g,4 d'8
  %40
  | e fis g a b c
  | dis,4 c'8 b4.
  | d,!8 e fis gis a b
  | cis,4 b'8 a4.
  | c,!8 d e fis g a
  %45
  | b,4 a'8 g4.
  | a,4 g'8 fis4.
  | g,4 fis'8 e dis e
  | dis e fis b, b' a
  | g a b e, c' b
  %50
  | a b c fis, d' c
  | b c d g, e' d
  | cis dis e a, fis' e
  | dis e fis fis\prall e fis
  | g g, a b cis dis
  %55
  | e fis g g\prall fis g
  | a a, b cis dis e
  | fis g a a\prall g a
  | b cis, dis e fis g
  | a b, cis dis e fis
  %60
  | g a b b, e dis
  | e4. r8 r e
  | e cis a g f! e
  | f d f a\parenthesize\mordent f a
  | d b g f e d
  %65
  | e c e g\parenthesize\mordent e g
  | c a f e d c
  | b' gis e d c b
  | c e a d, b' a
  | gis a b e,4 b'8
  %70
  | c d e e, fis gis
  | a b c gis a b
  | c d e e, fis gis
  | \stemUp a b c gis a b
  | c d e c\parenthesize\prall b a
    \alternative {
      {
        \stemNeutral a e c a4 g'8
  |     c4 c8 c d e
      }
      { a, e c a4 e'8 }
      {
        a
        \once\override Staff.TextScript.extra-offset = #'(-0.6 . 0.5)
        e^\markup { "Fine" }
        c a4
      }
    }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
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
  \override Script.direction = #UP
  \partial 8 r8
  %1
  \repeat volta 2 {
  | a4. a'~
  | a gis
  | a f
  | e~ e8 fis gis
  %5
  | a b c f,! g! a
  | b c d g, a b
  | c d e e\prall d e
  | f f, g a b c
  | d e f f\prall e f
  %10
  | g g, a b c d
  | e f g g\prall f g
  | a a, b c d e
  | f g, a b c d
  | e f, g a b c
  %15
  | d e f b, c d
  | g,4. r8 r f'
  | e f g c, d e
  | b c d g, a b
  | e, f g c, d e
  %20
  | b c d g, a b
  | e,4. r8 r e'
  | f g a a b! c
  | d,,4. r8 r d'
  | e f g g a b
  %25
  | c,,4. c'~
  | c b
  | c a
  | g~ g8 a b
  | c d e b c d
  %30
  | e f g g a b
  | c d e b c d
  | \change Staff = "upper" \stemDown e f g g a b
  | c4 f,8 g4 \change Staff = "lower" \stemNeutral g,8
    \alternative {
      { c,4.~ c8 e c }
      {
  %35
  |     c4.~ c8 g e
  |     c4. c'~
      }
    }
  }
  \repeat volta 3 {
  | c4. b
  | c f,
  | g4.~ g8 a b
  %40
  | c d e fis g a
  | b, b' a gis a fis
  | gis fis e d c b
  | a a' g! fis g e
  | fis e d c b a
  %45
  | g g' fis e dis e
  | fis, fis' e dis cis dis
  | e, e' d! c! b a
  | b4.~ b8 cis dis
  | e fis g c,! d! e
  %50
  | fis g a d, e fis
  | g a b e, fis g
  | a b c! fis, g a
  | b cis dis dis\prall cis dis
  | e e, fis g a b
  %55
  | cis dis e e\prall dis e
  | fis fis, g a b cis
  | dis e fis fis\prall e fis
  | g a, b cis dis e
  | fis g, a b cis dis
  %60
  | e4 a,8 b4 b,8
  | e fis g g a bes
  | cis,4. r8 r a
  | d f a d4 c,!8
  | b4. r8 r g
  %65
  | c e g c4 b,8
  | a4. a'~
  | a gis
  | a f
  | e e,8 fis gis
  %70
  | a b c gis a b
  | c d e e fis gis
  | a b c gis a b
  | \change Staff = "upper" \stemDown c d e e fis gis
  | a4 d,8 e4 \change Staff = "lower" \stemNeutral e,8
    \alternative {
      {
        a4. ~ a8 g f
  |     e f g
        \shape #'((0 . 0) (0 . 0) (0 . -0.3) (2.5 . 0)) LaissezVibrerTie
        c,4.\laissezVibrer
      }
      {
        \once\override Staff.TextScript.extra-offset = #'(-3 . 0)
        a'4.~_\markup {
          \center-column {
            \general-align #Y #2
            \line { "Dal segno" { \tiny \raise #0.4 \musicglyph #"scripts.segno" } }
            \general-align #Y #-2
            \line { "(senza ripetizione)" }
            \general-align #Y #-3.5
            \line { "al Fine" }
          }
        }
        a8 e c }
      { a4.~ a4 }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 807"
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
    \tempo 4 = 100
  }
}
