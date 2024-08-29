Global = {
  \key d \major
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 fis4 fis
  %1
  | fis4.\upprall( e16 fis) g4 fis
  | e2 e4 e
  | e4.\upprall( d16 e) fis8 d e cis
  | d4 a fis' fis
  %5
  | fis4.\upprall( e16 fis) g4 fis
  | e4 b'8 a g fis e d
  | cis b a b cis d e cis
    \alternative {
      { d2 }
      { d }
    }
  }
  \break
  \repeat volta 2 {
  \partial 2 a'4 a
  | a4.\upprall( g16 a) b8 a g fis
  %10
  | g4 d g a
  | b8 c b a g fis d e
  | g2 e4 e
  | e4. fis8 g a g fis
  | e d cis d e fis g b
  %15
  | a g fis e fis16 a fis a fis[ a fis a]
  | e2 fis4 fis
  | fis4.\upprall( e16 fis) g4 fis
  | e2 e4 e
  | e4.\upprall( d16 e) fis8 d e cis
  %20
  | d a d e fis4 fis
  | fis4.\upprall( e16 fis) g8 fis e d
  | b' a gis fis gis a b gis
  | a fis e d cis b cis a
    \alternative {
      { d2 }
      { d }
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

Bass = \context Voice = "four" \relative c'' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 a8 d, fis a
  %1
  | d d, c' d, b' d, a' d,
  | g d fis d g d e g
  | cis! d, b' d, a' d, g d
  | fis d fis g a d, fis a
  %5
  | d d, c' d, b' d, a' d,
  | g d fis d e d fis d
  | g d fis d e d g d
    \alternative {
      { fis d fis g }
      { fis d e d }
    }
  }
  \repeat volta 2 {
  \partial 2 fis8 d fis a
  | d a fis d g d a' d,
  %10
  | b' d, c' d, b' d, a' d,
  | g d a' d, b' d, c' d,
  | b' d, a' d, g d fis d
  | g d a' d, b' d, a' d,
  | g d b' d, a' d, g d
  %15
  | fis d g d a' d, b' d,
  | cis' d, g cis d a d, a'
  | d d, c' d, b' d, a' d,
  | g d fis d g d e g
  | cis d, b' d, a' d, g d
  %20
  | fis d fis g a d, fis a
  | d d, a' d, b' d, fis d
  | gis d a' d, b' d, d' d,
  | cis' d, b' d, a' d, g d
    \alternative {
      { fis
        d_\markup { \hspace #0.5 "(Gavotte I da capo)" }
        e d
      }
      { << fis2 \\ d >> }
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
      \clef treble
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 811"
    title = \markup { "Gavotte II" }
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
