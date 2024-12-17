Global = {
  \key d \minor
  \time 3/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVICourante
  \repeat volta 2 {
  \partial 8 d8
  %1
  | d4. c8 \stemNeutral\slurNeutral bes a bes4 g4.\prall g8
  | e'4. f8 f( e d cis) d4. e8
  | cis4 b8 a b cis d e e4.\prall d16 e
  | f4. e8 d4 c c8 bes c a
  %5
  | bes4. a8 g4 f!8 e f a g f
  | e4. d8 c4 c' bes8( a g f)
  | d'4. ees8 d4 c8 bes a g f'4
  | e4.\prall d8 c bes a4 bes4.\mordent c8
  | e,!4.\prall f8 g bes a g g4.\prall f8
  %10
  | f2. f'4 f8[( e d cis)]
  | d4.\mordent e8 d4 c!8 b c e d4
  | e4.\mordent e,8 g fis a4 gis4.\prall a16 b
  | b4.\prallprall a16 b c8 b d4 cis4.\prallprall d16 e
  | e4.\prallprall d16 e f8 e g4 fis4.\prallprall gis16 a
  %15
  | gis4.\prallprall fis16 gis a8 d, e f \stemUp b,4. a8
  | a2.~ a2~ a8
  }
  \break
  \repeat volta 2 {
  \partial 8 e'8
  | e4. \stemNeutral f8 g4 f8\prall e d c d e
  | f4.\mordent e8 d4 bes' bes8 a g fis
  | \stemUp g4. a8 bes a c4 a4.\trill g16 a
  %20
  | bes4. \stemNeutral a8 g fis g a \stemUp a4.\trill g8
  | g2~ \stemNeutral g8 a bes a g f e d
  | e4.\prall d8 c4 c' bes8 a g f
  | \slurDown \once\stemUp \appoggiatura ees8 d4. ees!8 f ees g f ees d c\prall bes
  | bes a g\prall f g a bes c d ees f d
  %25
  | g f bes4 d,4.\prall^\markup \normal-text {
      \hspace #-0.2
      \concat {
        "(" \raise #0.5 \flat ")"
      }
    }
    c8 \stemUp c4.\trill bes8
  | bes2. \stemNeutral\slurNeutral d4 c8 bes a bes
  | c bes a g g'4. f8 e d cis d
  | cis e a, b c b d4 cis4.\prall d16 e
  | e4.\trill d16( e) f8( e) g4 fis4.\prallprall g16( a)
  %30
  | a4.\prallprall g16 a bes8 a g f! e d cis d
  | g, bes a cis \after 4
    {
      \once \set suggestAccidentals = ##t
      \once \override AccidentalSuggestion.font-size = -3
      \once \override AccidentalSuggestion.script-priority = -1
      \once \hideNotes
      cis!8 \turn \noBeam
    }
    d4. e8 \stemUp e4.\trill d8
  | d2.~ d2~ d8
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | << {
      \stemDown f4.
    } \\ {
      \stemUp \shiftOn a
    } >>
    s8 s1
  | s1.*7
  %9
  | s1 e2
  | << {
      \stemDown a,2.
    } \\ {
      \stemUp \shiftOn c
    } >>
    s2.
  | s1.*4
  %15
  | s1 gis'2
  | s2.
    << {
      \stemDown\tieDown cis,2~ cis8
    } \\ {
      \stemUp\tieUp \shiftOn e2~ e8
    } >>
  \partial 8 s8
  | << {
      \stemDown a4.
    } \\ {
      \stemUp \shiftOn cis
    } >>
    s8 s1
  | s1.*2
  %20
  | s1 fis2
  | << {
      \stemDown bes,2
    } \\ {
      \stemUp \shiftOn d
    } >>
    s1
  | s1.*3
  %25
  | s1 a2
  | << {
      \stemDown d,2
    } \\ {
      \stemUp \shiftOn f
    } >>
    s1
  | s1.*4
  | s1 cis'2
  | s2.
    << {
      \stemDown\tieDown f,2~ f8
    } \\ {
      \stemUp\tieUp \shiftOn
      \once\override Tie.extra-offset = #'(-0.2 . -0.3)
      a2~ a8
    } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1.*15
  | a2 e4 a2~ a8
  \partial 8 s8
  | s1.*15
  | d,2 a4 d2~ d8
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | d d, e f g fis g a bes g a bes
  | cis, a' f! d g4 g,8 a bes a bes g
  | a a' g e f e f d cis e a, cis
  | d cis d e f g e g fis d e fis
  %5
  | g fis g a bes c d c b a b g
  | c d c bes a( g f e) f4 g8 a
  | bes f d f bes, c d e! f g a bes
  | c g c, d e g f ees d c bes a
  | g f e d c4 f c' c,
  %10
  | f a'8 g f e d d' g, a bes a
  | g fis e d c! b a g a c b d
  | c e d c b a b c d e f e
  | d c d e a, e' f g a g bes a
  | g f g a d, a' b c d e c e
  %15
  | d f! e d c b c d e4 e,
  | \stemDown\tieDown a,4\rest a2~ a2~ a8
  }
  \pageBreak
  \repeat volta 2 {
  \partial 8 r8
  | a a' g f e cis d e a, g' f e
  | d a' d c! bes a g bes c bes c d
  | \change Staff = "upper" \voiceTwo
    ees d e fis g fis g a g fis e d
  %20
  | g
    \change Staff = "lower" \voiceFour \stemUp
    g, a bes \stemNeutral\tieNeutral c d ees c d4 d,4
  | g8 a bes a g f e f bes,4 d
  | c8 g' c bes a c bes a g f g a
  | \once\override Beam.damping = #+inf.0
    bes f bes, c d4 ees8 f g4 ees
  | f2~ f8 ees d c bes aes g f
  %25
  | ees ees' d c bes d g ees f4 f,
  | bes8 d c bes a g fes e! fis4 d'
  | g4. a8 bes c bes a g f g e
  | a4. g8 fis d e f g a bes a
  | g f g a d, a' bes c d c ees d
  %30
  | c bes c d g, a bes a g f e d
  | cis4 d8 e f e f g a4 a,
  | d,4\rest \stemDown\tieDown d2~ d2~ d8
  }
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
    opus = ##f % "BWV 811"
    title = \markup { "Courante" }
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
    \tempo 2 = 84
  }
}
