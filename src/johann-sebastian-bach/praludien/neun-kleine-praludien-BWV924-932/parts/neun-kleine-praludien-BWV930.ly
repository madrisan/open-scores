Global = {
  \key f \major
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | r8 d g bes g d
  | d'4 r r
  | r8 d bes g g' bes,
  | a g' f e f aes,
    \break
  %5
  | g bes g ees ees' g,
  | f ees' d c d f,
  | ees g ees c c' ees,
  | d c' a fis d e
  | fis c' a fis d e
  %10
  | fis c' a fis d c'
  | bes16\prall a bes c c4.\upprall d8
  | \stemUp d2.~
  | d4 c4. c8
  | bes2.
  %15
  | a4. d4 cis8
  | d2.
  }
  \pageBreak
  \repeat volta 2 {
  | \stemNeutral
    r8 a fis d fis a
  | c4 d,8 fis a c
  | bes d bes g bes d
  %20
  | f4 g,8 b d f
  | ees g ees c aes' c,
  | bes aes' g f g bes,
  | aes c aes f f' aes,
  | g f' ees d ees g,
  %25
  | f ees' d f aes c,
  | b g aes f d' f,
  | ees g c ees, d b'
  | c4^\mordent r r
  | r8 c, e! g e c
  %30
  | bes'4^\mordent bes4.^\prallprall a16 bes
  | a8 f a c a f
  | ees'4\mordent ees4.\prallprall d16 ees
  | d8 bes d f bes a
  | g^\prall fis g bes a g
  %35
  | fis a fis d a' c,
  | bes d bes g ees' g,
  | fis a fis d a' c,
  | bes d bes g ees' r
  | r d a' c <d, g bes>4
  %40
  | r8 a' a4.^\prall g8
  | g2 d'8\rest fis,
  | \omit Stem \grace {
      \hideNotes a4
      \once\override Staff.TextScript.extra-offset = #'(-0.4 . -6)
      d^\markup { \musicglyph "scripts.mordent" }
      \unHideNotes
    } \undo\omit Stem
    <b, d g>2.
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \mergeDifferentlyDottedOn
  \stemDown
  \override Rest.staff-position = #0
  %1
  | s2.*11
  | g8\rest a bes fis g4~
  | g8[ g~] g e fis4
  << {
  | e8\rest fis
    \stemUp g2^~
  %15
  | \stemDown g8[ g] fis4_\prall <e g>
  | g8\rest \stemUp\tieDashed a4.^~ a4
  }
  \new Voice {
    \stemDown
    s4 c,8\rest d4.
    s2.
    s4 << fis2 \\ { s8 d4. } >>
  } >>
  | s2.*22
  %39
  | << { \stemDown s4 a' s } \\ { \stemDown s8 d,4. } >>
  | \stemDown s4 fis2
  | << {
      \stemDown b,8\rest d ees c a4
    } \\ {
      \stemUp s8 d ees4. s8
    } \\ {
      \stemUp s4. c4.
    } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | s2.*10
  | s4 c8\rest fis, g a
  | bes2~ bes8 bes
  | a2.\prall
  | g2 bes8 g
  %15
  | c4\rest a bes
  | a2 a4\rest
  | s2.*18
  %35
  | c4\rest e,! fis
  | g a bes
  | a g fis
  | s2.*3
  %41
  | f4\rest << { c ees } \\ c2 >>

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | R1*3/4
  | r8 g bes d bes g
  | g'4^\mordent g,8 bes d g
  | d4 d' d,
  %5
  | ees ees,8 g bes ees
  | bes4 bes' bes,
  | c c,8 ees g c
  | fis,4 fis' r8 e
  | d4 d, r8 c'
  %10
  | bes4 bes' r8 a
  | g f ees2
  | d2.~
  | d2.~
  | d2.
  %15
  | d2.~
  | d2 \once\stemDown d,4
  }
  \repeat volta 2 {
  | d'4^\mordent d, r
  | r8 d' fis a fis d
  | g4^\mordent g, r
  %20
  | r8 g' b d b g
  | c4^\mordent c, c'
  | d, bes' e,!
  | f8 g f ees d c
  | b4 g' c,
  %25
  | aes' r f
  | g^\mordent d b
  | c^\mordent ees, g
  | c,8 ees g c g ees
  | c4 r r
  %30
  | r8 c' e! g e c
  | f4^\mordent f, r
  | r8 f' a c a f
  | bes4 bes, d
  | ees d c
  %35
  | d2.~
  | d2.~
  | d2.
  | g8 d bes g ees' g,
  | fis2^\prall g4
  %40
  | c4 d^\mordent d,
  | \stemDown g2.~
  | <g d' g>2.
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
    composer = ##f # "Johann Sebastian Bach"
    opus = "BWV 930"
    title = \markup { "Praeambulum VII" }
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
    \tempo 4 = 128
  }
}
