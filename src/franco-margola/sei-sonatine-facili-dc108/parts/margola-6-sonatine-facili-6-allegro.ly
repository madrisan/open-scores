Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \textMark \markup { \hspace #3.5 "A" }
    a'8-.-5 d,-. fis-. a-. g( fis16 g e8) a-.
  | fis-. d-. a'-. fis e4 a,
  | a16(-1 b cis a d8) a-. d-.-4 e-.-5 e4~-5
  | e8 d-. a-. e'-. d4 a
  %5
  | a'8-. d,-. fis-. a-. g( fis16 g e8) a-.
  | fis-. d-. a'-. fis e4 a,
  | a16( b cis a d8) a-. d-. e-. e4~
  | e8 d-. a-. e'-. <fis, a d>2
  | \textMark \markup { \hspace #-2 "B" }
    \stemUp d'4---1-5 b-- \acciaccatura d8-5 cis-4 b-3 a4---2
  %10
  | b8( cis16 b g8) a-. d-.-5 b-.-3 e-.-5 cis-.-4
  | d4-- b-- \acciaccatura d8 cis b a4--
  | b8( cis16 b g8) b-. a-. dis-. e-. a,-.
  | \textMark \markup { "A" }
    \stemNeutral
    a'8-. d,-. fis-. a-. g( fis16 g e8) a-.
  | fis-. d-. a'-. fis e4 a,
  %15
  | a16( b cis a d8) a-. d-. e-. e4~
  | e8 d-. a-. e'-. d4 a
  | a'8-. d,-. fis-. a-. g( fis16 g e8) a-.
  | fis-. d-. a'-. fis e4 a,
  | a16( b cis a d8) a-. d-. e-. e4~
  %20
  | e8 d-. a-. e'-. <fis, a d>2
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | s1*8
  | g'4 g g8 g g4
  %10
  | g~ g8 g g g g g
  | g4 g g8 g g4
  | g4. g8 g r r4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  %1
  | s1*7
  | s2 e4\rest \once\slurDown \acciaccatura cis8-2 d4-1
  | \repeat unfold 2 { b'8\rest <d, e>4_1_2 q8 }
  \repeat unfold 2 {
  | \repeat unfold 2 { b'8\rest <d, e>4 q8 }
  }
  %12
  | b'8\rest <d, e>4 q8 <a cis e> b'\rest a4\rest
  | \override Rest.staff-position = #0
    <d, fis a>4 r8 q8 <d e b'>4 r8 q
  | <d fis a>4 r8 q8 <d e g>4 r
  %15
  | <cis d fis>_3 r8 q <b d fis>4_4 r8 q
  | <a d fis>4 r8 q <a c e>4 q
  | <d fis a>4 r8 q8 <d e b'>4 r8 q
  | <d fis a>4 r8 q8 <d e g>4 r
  | <cis d fis>_3 r8 q <b d fis>4 r8 q
  %20
  | <a d fis>4 <a c e> e'4\rest \once\slurDown \acciaccatura cis8-2 d4-1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \clef "treble"
    <d fis a>4-5 r8 q8 <d e b'>4-4-5 r8 q
  | <d fis a>4 r8 q8 <d e g>4-2-4-5 r
  | <cis d fis>-1-2-3 r8 q <b d fis>4-4 r8 q
  | <a d fis>4-5 r8 q <a c e>4 q
  %5
  | <d fis a>4-5 r8 q8 <d e b'>4 r8 q
  | <d fis a>4 r8 q8 <d e g>4 r
  | <cis d fis>-3 r8 q <b d fis>4-4 r8 q
  | <a d fis>4-5 <a c e>
    \clef "bass"
    <d, a'>2-2-5
    \clef "treble"
    \stemDown
  | g-5 a-4
  \repeat unfold 2 {
  | g a
  }
  %12
  | g s
  | s1*7
  | s2
    \clef "bass"
    <d a'>2-2-5
    \fine
}

centerDynamics = {
  | s4\mf s2.
  | s1*7
  %9
  | s4\f s2.
  | s1*2
  | s2 s8 s4.\>
  | s4\!\mf s2.
}

forceBreaks = {
  % page 1
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franco Margola"
    opus = ##f % "dC 108"
    title = \markup { "6. Allegro" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
    \context {
      \Score
      \override TextMark.color = #(x11-color "gray")
      \override TextMark.font-series = #'bold
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
