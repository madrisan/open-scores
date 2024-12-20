Global = {
  \key d \minor
  \time 3/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVISarabande
  \repeat volta 2 {
  %1
  | f2 e2. f4
  | \override Script.Y-offset = #5
    \after 4 \turn g4. a8
    \revert Script.Y-offset
    fis2.\prall e4
  | g2 e d8 cis d4
  | cis2. b4 a2
  %5
  | c! b2. cis4
  \break
  | d e cis2.\prall d4
  | e8 f e f f2.\prall e4
  | e1.
  }
  \repeat volta 2 {
  | e2 e1~
  %10
  | e2 ees1
  | d2 e2. f4
  | e2. d4 c2
  | f g2. a4
  | a g g a a8 bes e,4
  %15
  | f d e2.\upprall f4
  | f1.
  | a2 g4 fis e d
  | bes' g e2. f4
  | g e cis2.\prall d4
  %20
  | e cis a1~
  | a4 b c a b cis
  | d b cis d e cis
  | d4~ d16 e d32 cis d e e2.\prallprall d4
  | d1.
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | << {
      \stemDown a2 bes1
    } \\ {
      \stemUp \shiftOn d2
      \shiftOff \once\override NoteColumn.force-hshift = #0 g,1
    } >>
  | a2 a1
  | << {
      \stemDown \shiftOff
      \override NoteColumn.force-hshift = #0.3
      g2 g f
      \revert NoteColumn.force-hshift
    } \\ {
      \stemDown d'2 bes b
    } >>
  | a1 e2
  %5
  | a2 g1
  | gis2 a g
  | bes a gis~
  | gis4 gis! a1
  | a2 bes2. a4
  %10
  | g2 f1~
  | f2 g a
  | g1 g2
  | c1.
  | d2 c bes
  %15
  | a g4 a bes2~
  | bes4 g a1
  | d1 c2
  | bes2. a4 g2
  | a a f
  %20
  | e1.
  | d1~ d4 e
  | f d e f g e
  | g bes a2 g~
  | g4 e f1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | d'2 d1
  | e2 d1
  | d2 s1
  | e2 d cis
  %5
  | d d1
  | e1 d2
  | g, d' b~
  | b4 b! cis1
  | cis2 cis1~
  %10
  | cis2 c1~
  | c2 bes c
  | c d e
  | f1.~
  | f1 g2
  %15
  | c, c~ c~
  | c4 bes c1
  | d1.~
  | d
  | cis2 e a,~
  %20
  | a2. bes4 a g
  | fis1 g2
  | gis g1
  | a4 d,~ d b cis2
  | d1.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | d2 s1
  | cis'2 c1
  | bes2 g gis
  | a1 g2
  %4
  | fis2 f1
  | e2 g! bes!
  | cis,2 d1
  | a'1.
  }
  \repeat volta 2 {
  | a2 g!2. a4
  %10
  | bes8 g a4 a2.\upprall a4
  | bes a g2 f
  | c'~ c bes
  | a g f
  | bes a g
  %15
  | a4 bes c2 c,
  | f1.
  | fis2 e fis
  | g a bes
  | a g4 f e d
  %20
  | cis1.
  | c1 b2~
  | b bes1
  | a4 g a1
  | d,1.
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
    title = \markup { "Sarabande" }
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
    \tempo 2 = 56
  }
}
