Global = {
  \key d \minor
  \time 12/16
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | d16 cis d e cis d f cis d g cis, d
  | a' cis, d bes' a g f e d gis a b
  \break
  | c8 r16 gis8 r16 a8 r16 b8 r16
  | d8 r16 d e f e d c c b a
  \break
  %5
  | a g! fis fis8\prallprall e!32 fis g16 a bes bes a g
  | \stemUp\tieUp a2.~\trill
  \break
  | a8 r16 g'8.\rest g4.\rest
  | a,16 gis a b gis a c gis a d gis, a
  \break
  | e' gis, a f' e d cis b a dis e fis
  %10
  | g a bes ees, d c b a g cis d ees
  \break
  | f g a~ a fis g~ g e f~ f d e~
  | e cis d~ d b c~ c a bes~ bes a g
  \break
  | f8 d'16\rest cis,8 d'16\rest d,8 d'16\rest e,8 d'16\rest
  | f,8 d'16\rest cis8 d16\rest c8 d16\rest b8 d16\rest
  \break
  %15
  | a8 d16\rest b8 d16\rest bes8 d16\rest a!8 d16\rest
  | g,8 d'16\rest a'8.\rest a4.\rest
  \break
  | e16 dis e fis dis e gis dis e a dis, e
  | \stemNeutral b' dis, e c' b a gis fis e bes' a g
  \break
  | fis e d f e d \stemUp c b a dis e fis~
  %20
  | fis e f~ f dis e~ e dis e~ e cis d~
  \break
  | d cis d~ d b c~ c b c~ c a bes~
  | bes a bes~ bes gis a~ a gis a~ a fis gis
  \break
  | a gis a b gis a cis gis a d gis, a
  | e' gis, a f' e d cis d gis a8.
  }
  \pageBreak
  \repeat volta 2 {
  %25
  | R1*12/16*2
  \break
  | s1*12/16*3
  \break
  %30
  | e16 f e d f e c f e b f' e
  | a, f' e gis, a b cis d e bes a g
  \break
  | f8 d'16\rest fis,8 d'16\rest g,8 d'16\rest a8 d16\rest
  | bes8 d16\rest c8 d16\rest d8 d16\rest b8 d16\rest
  | cis8 d16\rest d8 d16\rest e8 d16\rest cis8 d16\rest
  \break
  %35
  | d2.~\trill
  | d8 r16 r8. r4.
  \break
  | \stemNeutral
    a'16 bes a g bes a f bes a e bes' a
  | d, bes' a cis, d e fis g a ees d c!
  | b a gis dis' e fis gis a b f e d
  \break
  %40
  | cis d e bes a g fis g a f e d
  | cis4. d8 r16 e8 r16
  | \stemUp f8 r16 bes8 f'16\rest a,8 f'16\rest c8 f16\rest
  \break
  | b,8 f'16\rest f e d e f g g a bes
  | a2.~\trill
  %45
  | a~
  \break
  | a~
  | \stemNeutral
    a16 bes a g bes a f bes a e bes' a
  | d, bes' a cis, d e f g a ees d cis
  | d cis d e,! cis' d f, cis' d g, cis d
  %50
  | a cis d bes a g f e d f' e d
  \break
  | \stemUp
    cis b a bes'! a g f e d g a bes~
  | bes a bes~ bes gis a~ a gis a~ a fis g~
  | g fis g~ g e f!~ f e f~ f d ees~
  | ees d ees~ ees cis d~ d cis d~ d b cis
  %55
  | d2.~
  | d
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*12/16*5
  | f8 e16\rest cis8 e16\rest d8 e16\rest e8 e16\rest
  | f8 s16 g a bes a g f f e d
  | e2.~\trill
  | e8 d16\rest gis8 e16\rest g8 d16\rest fis8 e16\rest
  %10
  | e8 e16\rest fis8 e16\rest f8 c16\rest e8 e16\rest
  | d8 e16\rest bes'!8 e,16\rest a8 e16\rest g8 e16\rest
  | f8 e16\rest fis8 e16\rest g8 e16\rest cis8 b16\rest
  | a2.~\trill
  | a8 c16\rest e8 c16\rest d8 c16\rest f!8 c16\rest
  %15
  | ees8 c16\rest d8 c16\rest c8 c16\rest ees8 c16\rest
  | d8 c16\rest a' b cis d e f b,8.~
  | b a
    \change Staff = "lower" \voiceThree
    d,!8 d16\rest c8 d16\rest
  | b8 d16\rest dis8 d16\rest d8 d16\rest cis8 d16\rest
  | c!8 d16\rest b8 d16\rest a8
    \change Staff = "upper" \voiceTwo
    a'16~ a8.
  %20
  | gis8 e16\rest g8 e16\rest fis8 e16\rest f8 e16\rest
  | e8 e16\rest a8 e16\rest dis8 e16\rest d8 e16\rest
  | cis8 e16\rest c8 d16\rest b8 d16\rest d8 c16\rest
  | \change Staff = "lower" \voiceThree
    cis b cis d b cis e b cis f e d
  | cis b cis d e8 e4.
  %25
  | \change Staff = "upper" \voiceTwo
    s1*12/16*2
  | \stemNeutral a16 bes a g bes a f bes a e bes' a
  | d, bes' a cis, d e fis g a ees d c
  | d8^\mordent r16 dis e fis gis a b f e d
  %30
  | \stemDown
    c8 c16\rest f8 c16\rest e8 c16\rest d8 c16\rest
  | c8 c16\rest
    \change Staff = "lower" \voiceThree
    b a gis a b cis cis d e
  | \change Staff = "upper" \voiceTwo
    d2.~\trill
  | d8 c16\rest ees8 c16\rest f8 c16\rest d8 c16\rest
  | g'8 c,16\rest f8 c16\rest g'8 c,16\rest e8 c16\rest
  %35
  | a'8 e16\rest
    \change Staff = "lower" \voiceThree
    c,8 b'16\rest d,8 b'16\rest e,8 b'16\rest
  | fis8 b16\rest f8 b16\rest e,8 c'16\rest bes!8 d16\rest
  | a8 s16 d8.~^\trill d4.~
  | d8 d16\rest bes8 d16\rest c8 d16\rest a8 d16\rest
  | d8 d16\rest c8 d16\rest d8 d16\rest b8 d16\rest
  %40
  | e8 e16\rest
    \change Staff = "lower" \voiceThree
    a,, b cis d e fis gis a b
  | a2.~\trill
  | a8 c16\rest
    \change Staff = "upper" \voiceTwo
    g'8 f16\rest d8 f16\rest a8 f16\rest
  | e8 f16\rest d'8 g,16\rest a8 g16\rest cis8 g16\rest
  | d'8 g,16\rest g8.\rest g4.\rest
  %45
  | s1*12/16*6
  | s4. s8 \once\omit Flag \once\omit Stem d'16^~ \stemUp \shiftOn d8.
  | cis8 e16\rest \stemDown c8 r16 b8 r16 bes8 r16
  | a8 g16\rest d'8 g,16\rest gis8 g16\rest g8 g16\rest
  | fis8 g16\rest f8 g16\rest e!8 g16\rest g8.~
  %50
  | g16 fis g a fis g bes fis g c fis, g
  | \stemUp s4. s16 bes8 a8.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  | s1*12/16*43
  %45
  | f8 c'16\rest fis,8 c'16\rest g8 gis16\rest gis8 c16\rest
  | a8 c16\rest e,8 c'16\rest bes8 c16\rest b8 c16\rest
  | c!8 e16\rest cis8 e16\rest d8 e16\rest a,8 e'16\rest
  | bes cis d a'16\rest cis, d g16\rest cis, d f16\rest cis d
  | s1*12/16*8
  %56
  | \change Staff = "upper" \voiceTwo
    d'16 a bes c bes a g bes e, fis8.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | R1*12/16*2
  | a16 gis a b gis a c gis a d gis, a
  | e' gis, a f' e d c b a dis e fis
  %5
  | e8 r16 ees d c bes a g cis d e
  | d,16 cis d e cis d f cis d g cis, d
  | a' cis, d bes' a g f e d gis a b
  | c8 r16 gis8 r16 a8 r16 b8 r16
  | c8 r16 b8 r16 a8 r16 c!8 r16
  %10
  | bes8 r16 a8 r16 g8 r16 a8 r16
  | d,2.~\trill
  | d
  | d,16 cis d e cis d f cis d g cis, d
  | a' cis, d bes' a g fis e d gis a b
  %15
  | c d ees aes, g f e! d c fis g a!
  | bes a g cis d e f e d gis a b
  | \stemDown\tieDown c4. b8 c,16\rest a'8 c,16\rest
  | gis'8 c,16\rest fis8 c16\rest e8 c16\rest a'8 c,16\rest
  | d8 c16\rest gis'8 c,16\rest a'8 c,16\rest fis8 c16\rest
  %20
  | \stemNeutral\tieNeutral e2.~\trill
  | e~
  | e
  | \stemDown\tieDown a~
  | a
  }
  \repeat volta 2 {
  %25
  | \stemNeutral\tieNeutral
    e'16 f e d f e c f e b f' e
  | a, f' e gis, a b cis d e bes a g
  | f8 r16 bes8 r16 a8 r16 g8 r16
  | f8 r16 e d cis d e fis fis g a
  | a b c c8.^\mordent b16 a gis gis a b
  %30
  | a2.~\trill
  | a8 r16 b,8.\rest b4.\rest
  | d16 ees d c! ees d bes ees d a ees' d
  | g, ees' d fis, g a b c d aes g f
  | e! d cis gis' a b cis d e bes a g
  %35
  | fis e d
    \stemDown\tieDown
    e16\rest fis! e e16\rest g fis e16\rest a g
  | e16\rest bes' a e16\rest c' b e,16\rest d' cis~ cis d e
  | f8 r16 bes8 r16 a8 r16 g8 r16
  | f8 r16 g8 r16 a8 r16 fis8 r16
  | gis8 r16 a8 r16 b8 r16 gis!8 r16
  %40
  | a8 r16 d,,8.\rest d4.\rest
  | a'16 bes! a g bes a f bes a e bes' a
  | d, bes' a \stemNeutral cis, d e fis g a dis, e fis
  | g a b gis a b cis d e bes a g
  | \stemDown
    b16\rest a gis b16\rest bes! a b16\rest bes a b16\rest c b
  %45
  | b16\rest c b a16\rest d cis b16\rest d cis b16\rest e dis
  | c16\rest e dis c16\rest f! e c16\rest f e c16\rest g' fis
  | g8 r16 bes8 r16 a8 r16 g8 r16
  | f cis' d bes a g f e d g a bes
  | a bes a g bes a f bes a e bes' a
  %50
  | d, bes' a cis, d e f g a b cis d
  | \change Staff = "upper" \voiceTwo
    e f g a bes c d8 c16 bes!16 a g
  | a8 e16\rest
    \change Staff = "lower" \voiceFour
    c8.\rest a8 r16 r8.
  | \stemNeutral a,2.~^\trill
  | a
  %55
  | d16 ees d c! ees d bes ees d a ees' d
  | g, ees' d fis, g a bes g cis d,8.
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 811"
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
