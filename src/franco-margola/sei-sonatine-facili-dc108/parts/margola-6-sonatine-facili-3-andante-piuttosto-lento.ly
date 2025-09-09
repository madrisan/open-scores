Global = {
  \key c \major
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | d4\( d d
  | d4. e8 f[ e]
  | g4 f e
  | d2~ d8\) r
  %5
  | \once\override PhrasingSlur.positions = #'(2.5 . 0)
    a4.\( d8 g,4
  | d'4. f,8 d'4~
  | d8\) g,( bes) cis^. g^. bes^.
  | d8( g,) bes^. cis^. g^. bes^.
  | \stemUp c4(\( f) f
  %10
  | f2.\)
  | r4
    \once\override Slur.positions = #'(2.2 . 0)
    c( f)
  | f8( d) bes^. d^. bes^. f^.
  | a4\( bes a
  | a2.\)
  %15
  | a8 r b! r <g cis> r
  | <a d>4. f'8\rest f4\rest
  | \stemNeutral\tieNeutral
    d4\( d d
  | d4. e8 f[ e]
  | g4 f e
  %20
  | d2~ d8\) r
  | \once\override PhrasingSlur.positions = #'(2.5 . 0)
    a4.\( d8 g,4
  | d'4. f,8 d'4~
  | d8\) g,( bes) cis^. g^. bes^.
  | d8( g,) bes^. cis^. g^. bes^.
  %25
  | \stemUp c4(\( f) f
  | f2.\)
  | f
  | f
  | \stemNeutral r8 g,( d')[ b!^.] g'^. d^.
  %30
  | d( ees) r g,^. c4^-
  | r8
    \once\override Slur.positions = #'(3 . 2)
    a( c)[
    e!^. a,^. c^.]
  | <fis, a d>2~ q8 r
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s2.*8
  | a2.
  | bes4.\( c8 d4\)
  | s4 a2
  | bes4 d,\rest d\rest
  | fis2.
  | e4.\( g8 e4\)
  %15
  | f8 s g s e s
  | fis4.\( d8 \autoBeamOff d\) d\rest \autoBeamOn
  | s2.*8
  %25
  | a'2.
  | bes4.\( c8 d4\)
  | a4.\( bes8 c4\)
  | aes2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*6
  | ees2 e4
  | ees e ees
  | s2.*14
  %23
  | ees2 e4
  | ees e ees
  | s2.*7
  %32
  | d'4\rest
    \clef "bass" \tieNeutral
    <d,,, a'>4~ q8 r
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | bes8\( d c[ d] a d\)
  | bes\( d g,[ d'] c d\)
  | bes\( d a[ d] g, d'\)
  | f,\( d' cis[ d] c d\)
  %5
  | bes\( d c[ d] bes d\)
  | a\( d bes[ d] a d\)
  | \stemDown\tieDown g,2.~
  | g2.
    \clef "treble" \stemNeutral\tieNeutral\phrasingSlurNeutral
  | ees'8\( f ees[ f] ees f\)
  %10
  | d\( f d[ f] d f\)
  | ees\( f ees[ f] ees f\)
  | d4 r r
    \clef "bass"
  | c8\( d c[ d] c d\)
  | bes\( d cis[ d] bes d\)
  %15
  | <a d> r q r a, r
  | d2~ d8 r
  | bes'8\( d c[ d] a d\)
  | bes\( d g,[ d'] c d\)
  | bes\( d a[ d] g, d'\)
  %20
  | f,\( d' cis[ d] c d\)
  | bes\( d c[ d] bes d\)
  | a\( d bes[ d] a d\)
  | \stemDown\tieDown g,2.~
  | g2.
    \clef "treble" \stemNeutral\tieNeutral\phrasingSlurNeutral
  %25
  | ees'8\( f ees[ f] ees f\)
  | d\( f d[ f] d f\)
  | des\( f des[ f] des f\)
  | c\( ees c[ ees] c ees\)
  | <b! d>2.
  %30
  | <bes c ees>4 q2
  | <a d f>2 <a c e!>4
  | \stemDown d2.
    \fine
}

centerDynamics = {
  | s4\p s2
  | s2.*7
  | s4\< s2
  %10
  | s4\!\> s2
  | s4\! s\< s
  | s4\! s\> s
  | s4\! s2
  | s2.*4
  %18
  | s4\p s2
  | s2.*6
  %25
  | s4\< s2
  | s4\!\> s2
  | s4\!\> s2
  | s4\! s2
  | s4\mp s2
  %20
  | s2.
  | s4\p s4-\markup { "poco rit." }
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
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
    title = \markup { "3. Andante piuttosto lento" }
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
