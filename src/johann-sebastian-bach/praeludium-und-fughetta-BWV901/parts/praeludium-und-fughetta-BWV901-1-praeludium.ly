Global = {
  \key f \major
  \time 12/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | f8 a c f4.~ f16 e d c bes a g f e d c bes
  | \stemUp\tieUp f''16\rest c d e f g a[ bes] c4~ c16 ees, d c d f g a bes e, f g
  | c,4.~ c16 g a c e f bes,4.~ bes16 a g bes e g
  | a, c bes a g f d'4.~ d16 b! a g f e c'4.~
  %5
  | c8 a d b!4. c~ c16 b! a g f e
  | f8 a d g,4.~ g16 g a b c d e f g a
    bes^\markup {
      \concat \tiny \normal-text {
         "(" \raise #0.4 \musicglyph #"accidentals.natural" ")"
      }
    }
    c
  | fis,8 d16 e fis g a4.~ a8 s4 s4.
  | \stemNeutral cis,8 e g~ \stemUp g b,!16 cis! d e \stemNeutral f a f d cis d f bes f d cis d
  | e g e bes a bes ees a ees c b c d fis d a g a d g d bes a bes
  %10
  | e! g e bes a bes e g e cis a cis f e d c bes a bes f' d bes a bes
  | \stemUp gis8 b d f e4~ e16 f e d c b! a ees' c a g a
  | fis8 a c ees d4~ d16 ees d c bes a g a bes c d e
  | \stemNeutral f16 e d c d e s4 \stemUp c'8~ c16 c bes a bes8~ bes16 bes a g a8~
  | a16 a g f g8~ g16 c, f ees d c d4.~ d16 g, c4~
  %15
  | c16 f, bes4~ bes16 bes a g f ees d8. e!16 f8~ f16 f8 f e16
  | << { f1*12/8\fermata } \\ c1*12/8 >>
    \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | a4. a8\rest a\rest a bes4. b\rest
  | \change Staff = "upper"\stemDown\tieDown
    c4. c8\rest c\rest c d4. d8\rest d\rest d
  | e4~ e16 c f4 c8 d4~ d16 d e4.
  | f4 c8\rest g'16\rest c b a g f g4 b,8\rest e16\rest
    bes'_\markup {
      \concat \tiny \normal-text {
         \hspace #-0.8 "(" \raise #0.4 \musicglyph #"accidentals.natural" ")"
      }
    }
    a g f e
  %5
  | f4.~ f8 d g e4.~ e
  | d4.~ d8 e f e b\rest b\rest c4.\rest
  | e\rest e8\rest a c bes16 a g a bes c d e f! g a bes
  | s4. a, s2.
  | s1*12/8*2
  %11
  | gis8 b4~ b8. d16 c b a8 f\rest f\rest c4.\rest
  | fis8 a4~ a8. c16 bes a g8 e\rest e\rest
    \change Staff = "lower" \once\stemUp bes
    \change Staff = "upper" d g
  | \change Staff = "lower" \once\stemUp c,4 s8
    \change Staff = "upper" f'16 g a bes c ees,
    d4~ d16 g c,4~ c16 f
  | bes,4~ bes16 bes a4.~ a16 a g f g bes e,8. a16 f a
  %15
  | d,8. g16 e g c,4 b8\rest
    \change Staff = "lower" \stemUp c16\rest c bes8. a16 g8 a bes
  | a1*12/8
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | f4. b,8\rest b\rest f' g4. b,\rest
  | a'4. r8 r a bes4. r8 r bes~
  | \stemNeutral\tieNeutral bes16 bes a g a8~ a4.~ a16 a g f g8~ g4 c8
  | f, g a b, c d e f g a, b! c
  %5
  | d16 e d c b! a g a g f e d c8 e g c4.~
  | c16 e d c b! a b d c b a g c8 e g c4.~
  | c16 d c bes! a g fis a g fis e d g8 bes d \clef treble g4.~
  | g16 a g f! e d \clef bass cis e d cis b a d8 a f d4.~
  | d8 g bes c,!4.~ c8 fis a bes,! g' bes
  %10
  | cis, g' bes a, cis e d f a d4.~
  | d16 e d c b a gis a gis fis e d c8 e a c4.~
  | c16 d c bes a g fis g fis e d c bes8 d g bes4._~
  | bes8 a g a16 bes c8 f, bes g f e! f e
  | d e c f a, f bes4.~ bes8 a d
  %15
  | \stemDown f g bes e, f a, bes g a bes c c,
  | f1*12/8\fermata
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 901"
    title = \markup { "Praeludium" }
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
    \tempo 4. = 60
  }
}
