Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.raltcomma" }
  \override Fingering.staff-padding = #'()
  %1
  | \tempo "Allegro"
    e16-5\( d c b a8
    c-3
    b d-4 c b
  | a4-1 a-2 a2-1\)
  | e'16\( d c b a8 c b d c a
  | e'2 e,4~ e8\) r
  %5
  | a'16-5\( g f e d8 g-5 e-3 c-1 f-4 d-2\)
  | e16-5\( d c b a8 d-5 b-3 g-1 c-4 a-2\)
  | b4~\( b16 c b a\) b4~\( b16 c b a\)
  | b8 e~^-\( e16 d c b d-4 c b a c-4 b a g
  | a2~-2 a8\) g-1\( a b
  %10
  | c4\) b-1\( c d\)
  | e4.\( f8 d4. e8
  | c8\) b\( c d e c e fis\)
  | g8( d) \breathe g[( e]) \breathe g( d) \breathe g[( c,]) \breathe
  | g'8( b,) \breathe g'[( e]) \breathe g( d) \breathe g[( c,]) \breathe
  %15
  | g'\( b, c\) d^. e[( a,]) b( fis)
  | g8 r <d a'>4_- q_- <d gis>_-
  | e'16-5\( d c b a8
    c-3
    b d-4 c b
  | a4-1 a-2 a2-1\)
  | e'16\( d c b a8 c b d c a
  %20
  | e'2 e,4~ e8\) r
  | a'16-5\( g f e d8 g-5 e-3 c-1 f-4 d-2\)
  | e16-5\( d c b a8 d-5 b-3 g-1 c-4 a-2\)
  | b16\( c b a b8 d c-4 a-2 e-1 g!-2
  | %\set fingeringOrientations = #'(up)
    <e-1 a-3>8\) r <d-1 a'-5> r <cis-2 e-3 a-5>2_-
    \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | f8\( a, e' a, d a c a\)
  | b\( a c a d a e' a,\)
  | f'\( a, e' a, d a c a\)
  | b\( a c a d a b a\)
  %5
  | c r b r c r d r
  | e r f, r g r a r
  | d,16-5\( e f g a8\) r \clef "treble" d16-5\( e f g a8\) r
  | \clef "bass" d,,4^.-5 f^--3 e^--5 e'^-
  | a,16-5\( b c d e8 c d b c d\)
  %10
  | e\( c d c e-1 c-4 f-1 c-4\)
    \clef "treble"
  | g'-1\( c, a'-1 c, f-2 c g' c,\)
  | e4.-3\( d8 c-5 e-2 d c
  | b4\) \clef "bass" c^--1 b^- a^-
  | g^- c^- b^- a^-
  %15
  | g^- r8 b^. c4^- d^-
  | <g, b>8 r <f! b>4^- q^- <e b'>^-
  | f'8-1\( a, e'-1 a, d-2 a c-3 a\)
  | b\(-4 a c-3 a d-2 a e'-1 a,\)
  | f'8\( a, e' a, d a c a\)
  %20
  | b\( a c a d a b a
  | c\) r b r c r d r
  | e r f,-4 r g r a r
  | <d,-5 f-3 a-1>4^- r8 <e-4 g-2>^. <f-3 a-1>4^- <e-5 b'-1>^-
  | <a-3 cis-2>8 r <e-4 g-2 b-1> r <a,-5 e'-1>2_-
    \fine
}

centerDynamics = {
  %1
  | s4\p s2.
  | s1*8
  %10
  | s4 s\< s2
  | s2\! s4\> s
  | s2\! s4\< s
  | s8\! s\mf s2.
  | s1
  %15
  | s2 s8 s\> s4
  | s4\!
    \once\override TextScript.extra-offset = #'(-0.5 . -1)
    s-\markup { \dynamic p "poco rit." } s2
  | s4-\markup { \dynamic p "a tempo" } s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = "Franco Margola"
    opus = ##f % "dC 108"
    title = \markup \smallCaps { "Sei Sonatine Facili" }
    subtitle = \markup { "per pianoforte" }
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
