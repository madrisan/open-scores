Global = {
  \key d \minor
  \time 3/2
  \include "../global.ly"
}

voiceFive = #(context-spec-music (make-voice-props-set 4)  'Voice)

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \label #'SuiteVIDouble
  \repeat volta 2 {
  %1
  | f2 e~ e8 g f a
  | g bes a g fis2 g8\rest c, d fis
  | g2 e~ e8 d cis d
  | cis e d b cis a gis b a cis b d16 cis
  %5
  | c8\mordent ees d c b2~ b8 a b cis
  | d f e d cis2~ cis8 d cis d
  | e f e f f2.\prall f4
    \alternative {
      { e2 g8\rest e a gis a4. g8 }
      { e2 g8\rest e a gis a2 }
    }
  }
  \break
  \repeat volta 2 {
  %10
  | e2 e1~
  | e2 ees1
  | d2~ d8 bes d e! f e f d
  | e g f d e c b d c e d f16 e
  | f2 g8\rest c, f g a2~
  %15
  | a4 g g8\rest d g a bes f g e
  | f2 g8\rest c, e f g d e4
  | a,8\prall g a c f2~ f
  | r2 g8\rest d fis g \stemNeutral a bes c a
  | bes g e g cis, f e a g f e f
  %20
  | g e cis e a, d cis f e d cis d
  | e cis a cis e, a g bes a g fis g
  | a2
    << {
      \stemUp c8\rest fis, g a d2\rest
    } \\ {
      d,2 s
    } >>
  | << {
      c'8\rest g a b
    } \\ {
      d,2
    } >>
    r2 r8 g bes cis
  | \stemUp d2~ d~ d4. cis8
  %25
  | \alternative {
      { d2 d8\rest a d cis d f e d }
      { d2 d8\rest a d cis d2 }
    }
  }
  \fine
}

Mezzosoprano = \context Voice = "five" \relative c'' {
  \voiceFive
  \stemDown\tieDown
  %1
  | a4. a8 s4 \stemUp\tieUp
    \once\shape #'((-0.2 . -0.8) (0 . -0.8) (0 . -0.8) (-0.8 . -0.8)) Tie
    g~
    g2
  | s2 s4 \stemDown\tieDown fis~ fis2
  | s1.*2
  %5
  | s1 g2
  | gis2 s8 \stemUp bes4.*1/3 g4 s2
  | s1 \stemDown f8 a d gis,
  | s1.*3
  %11
  | s2 s8 \stemUp\tieUp c4.~ c2
  | s1.*5
  %17
  | << {
      s2.
      \once\shape #'((-0.2 . -0.4) (0 . -0.4) (0 . -0.4) (-0.4 . -0.4)) Tie
      a4~
      \shiftOff a2
    } \\ {
      s2 s8 c a f~ f2
    } >>
  | s1.*4
  %22
  | \change Staff = "lower" \voiceThree
    s4 \once\stemDown \tieDown fis,~ fis2 s4 \once\stemDown g~
  | g2 s4 \once\stemDown g~ g2
  | \change Staff = "upper" \voiceTwo
    s4 \once\stemUp bes'
    \change Staff = "lower" \voiceThree
    c,8\rest cis d g,
    \change Staff = "upper" \voiceTwo
    s4 \once\stemUp g'!
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  %1
  | \stemUp\tieUp
    \once\override Voice.Rest.X-offset = #1.6
    d'8\rest
    cis d4 \stemDown bes2~ bes
  | \stemUp
    \once\override NoteColumn.force-hshift = #0.3
    a
    s8 d, fis g a2*1/2 \once\stemDown d4
  | b8\rest \stemDown cis d a bes2 b
  | a1 e2
  %5
  | d2
    \change Staff = "lower" \voiceThree
    s8 g, b d~ d2
  | e2 s1
  | \change Staff = "upper" \voiceTwo
    e2\rest
    \change Staff = "lower" \voiceThree
    s8 f, a d~ d4 b
  | \change Staff = "upper" \voiceTwo
    g'8\rest gis a b cis2~ cis
  | g8\rest gis a b cis2~ cis
  %10
  | f,4\rest g8\rest f e a g bes a2
  | g g8\rest c a g f2~
  | f8 a bes f g2 a
  | g2. f4 e2
  | s1 g8\rest e' f c
  %15
  | d2 s g,4\rest g
  | g8\rest c d bes a2 g4\rest g8\rest bes
  | s2 g8\rest \stemUp\tieUp c4.~ c2
  | \change Staff = "lower" \voiceThree
    s8 a, d
    \change Staff = "upper" \voiceTwo
    fis s1
  | s1.*3
  %22
  | \change Staff = "lower" \voiceThree
    s8 d, fis a~ a2
    s8 d, g b~
  | b2 s8 e, g cis
    \change Staff = "upper" \voiceTwo
    e2*1/4 g4.*1/3 bes4
  | e,8\rest a bes e, f2~ f8 e4.
  %25
  | e8\rest g f e f1
  | e8\rest g fis e fis1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | d2
    \change Staff = "upper" \voiceTwo
    \once\override Voice.Rest.X-offset = #0.6
    e8\rest
    f g d
    \once\override NoteColumn.force-hshift = #0.3
    e2
  | e g8\rest d4.~ d2~
  | d
    \once\override Voice.Rest.X-offset = #0.4
    d8\rest
    fis g
    \change Staff = "lower" \voiceThree
    d e2
  | e2. d4 cis2
  %5
  | a d8\rest \stemDown\tieDown g,4.*1/3 b4~ b2
  | b
    \change Staff = "upper" \voiceTwo
    e8\rest bes' g e
    \change Staff = "lower" \voiceThree
    cis s4.
  | a2\rest c8\rest \stemDown f,4.*1/3 a4 s2
  | \stemUp e'8\rest b cis d e2~ e
  | \stemUp e8\rest b cis d e2~ e
  %10
  | e8\rest d cis4~ cis1~
  | cis2 c d8\rest ees d c
  | bes2 bes c8\rest c d b
  | c1 c2
  | e8\rest c
    \change Staff = "upper" \voiceTwo
    f g a2
    \change Staff = "lower" \voiceThree
    d,2\rest
  %15
  | f8\rest d
    \change Staff = "upper" \voiceTwo
    g a bes2
    \change Staff = "lower" \voiceThree
    e,4\rest c~
  | c f2 e8 d c2
  | s1 c2
  | d8\rest \stemDown a4.*1/3 d4
    \change Staff = "upper" \voiceTwo
    a'2*1/4 d4.*1/3 fis4 s2
  | \change Staff = "lower" \voiceThree
    g,2. cis,4 f\rest d
  %20
  | d\rest g, d'\rest a d\rest bes
  | a\rest e a e cis! a
  | d'8\rest \once\stemDown \tieDown d,4.~ d2 d'8\rest \once\stemDown d,4.~
  | d2 d'8\rest \once\stemDown \tieDown e,4.~ e2
  | f4 e s \once\stemDown d' a2
  %25
  | d8\rest bes a g a1
  | d8\rest bes a g a1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | d2 d'1
  | cis2 c1
  | bes2 g gis
  | a1 g2
  %4
  | fis2 f1
  | \once\override NoteColumn.force-hshift = #0.3
    e2
    g! r8 bes! g e
  | cis e cis a d1
    \alternative {
      { a'~ a8 g! f e }
      { a1~ a2 }
    }
  }
  \repeat volta 2 {
  %10
  | a g~ g8 bes a c!
  | bes g a bes a1
  | bes4 a g2 f
  | r4 g c, g' bes!2
  | a2. g4 f a
  %15
  | bes2. a4 g bes
  | a bes c2 c4 c,
  | f1 r8 bes a g
  | fis2~ fis8 g a bes c d e fis
  | r4 g, a2 bes!
  %20
  | e, f g
  | cis,1.
  | c1 b2~
  | b bes1
  | a4 g a8 g\rest g4\rest g\rest a
    \alternative {
      { d1~ d8 d' cis b }
      { d,2~ d1 }
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
      \Mezzosoprano
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
    title = \markup { "Double" }
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
    \tempo 2 = 46
  }
}
