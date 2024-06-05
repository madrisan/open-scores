Global = {
  \key f \major
  \time 2/2
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #4
  \override Rest.staff-position = #0
  %1
  | R1*2
  | f8\rest f e a d, e16 f g8 g,
  | c d16 e f4~ f16 g e f d[ e f g]
  %5
  | e[ d e f] g[ f e g] f[ e d c] bes! a bes c
  | a4 f' e ees
  | d des c8 f4 e!8
  | f g\rest g4\rest f2\rest
  | s1
  %10
  | s4 c2 b4
  | bes8 g'16 f e[ d c bes] a4 d8\rest a
  | bes d g, bes c g'\rest g4\rest
  | d8\rest d16 c bes[ a g f] e! f d e f4~
  | f16 e f g e[ d ees8~] ees16 d ees f d[ c d f]
  %15
  | e!8 f4 e8~ e cis d4~
  | d cis d8 f e a
  | d,8 e16 f g8 g, c d16 e f4~
  | f16 g e f d[ e f g] e4 f
  | e ees d des
  %20
  | c8 f4 ees8~ ees16[ f d ees] c d ees f
  | d8 g4 f8~ f16[ g e! f] d e f g
  | d'8\rest c a d g,[ a16 bes] c8 \once\override NoteColumn.force-hshift = #0.8 c,
  | f g16 a bes4~ bes16 c a bes g[ a bes c]
  | a1
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | r8 c a d g, a16 bes c8 c,
  | f g16 a bes4~ bes16 c a bes g[ a bes c]
  | a b a b c4 b bes
  | a aes g8 c4 b8
  %5
  | c g e a d, e16 f g4~
  | g16[ g f e] f[ c' bes a] bes[ c bes a] g bes a g
  | a[ bes a g] f[ aes g f] e!8[ c' bes g]
  | c16[ d c bes] a[ g f e] f[ g f e] d e c d
  | \stemNeutral e f e d c[ ees d c] b8 g' f d
  %10
  | \stemDown e[ g] s2.
  | s1*11
  %22
  | e4. d8 c4 c8\rest \once\override NoteColumn.force-hshift = #0 f
  | f4 c8\rest g'~ g f d c
  | c1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \grayTextColor
  \showStaffSwitch
  %1
  | s1*5
  | c8\rest c a d g, a16 bes c8 c,
  | f g16 a bes4~ bes16[ c a bes] g a bes c
  | a g a bes c4 b bes
  | a aes g8 c4 b8
  %10
  | c4 \change Staff = "upper" \stemDown\tieDown d8\rest e f a d, f
  | g c,\rest c4\rest c8\rest c f4~
  | f e! ees8 c'16 bes a[ g f ees]
  | d8 c\rest c4\rest g\rest \change Staff = "lower" \stemUp c
  | b! bes a aes
  %15
  | g8 c bes4 a!16 bes g a f[ g a bes]
  | e,2 f8 c'\rest c4\rest
  | s1
  | a2\rest c8\rest c a d
  | g, a16 bes c8 c, f g16 a bes4~
  %20
  | bes16 c a bes g[ a bes c] a8 bes4 a8~
  | a16 c bes c a[ bes c d] b!8 c4 bes8~
  | bes16 bes a g f[ g a bes] c d c bes a[ c bes a]
  | \magnifyMusic 0.8 { bes c bes a g[ aes f g] } e8 f4 e8
  | f1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*5
  %6
  | \override MultiMeasureRest.staff-position = #-4 R1*2
  | b8\rest f' e a d,8 e16 f g8 g,
  | c8 d16 e f4~ f16 g e f d[ e f g]
  %10
  | c, b c d e[ d c e] d c d e f[ e d f]
  | e d e f g[ f e g] f e f g a[ g f a]
  | g f g a bes[ a g bes] a g a bes c[ bes a c]
  | bes a bes c d[ c bes d] c8 c, a d
  | g, a16 b c8 c, f g16 a bes4~
  %15
  | bes16 c a! bes g[ a bes c] f,8 a bes f
  | g16 a f g e[ f g a] d, a' d8~ d16 c bes a
  | \stemNeutral bes a' g f e[ d c bes] a g' f e d[ c b a]
  | \stemDown g8 c4 bes8~ bes16 a bes c d[ c bes a]
  | bes d c bes a[ bes c8~] c16 c bes a g[ aes g f]
  %20
  | e8 f bes c f g ees f
  | bes, ees c d g a f g
  | c,4 f e ees
  | d des c8 d bes c
  | f,1
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 901"
    title = \markup { "Fughetta *" }
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

\markup {
  \footnote ""
  \small\italic \concat {
    "*" \hspace #.3 \vspace #1
    "Compare with the Fugue XVII (BWV 886) in A-flat major from the second volume of the Well-Tempered Clavier"
  }
}