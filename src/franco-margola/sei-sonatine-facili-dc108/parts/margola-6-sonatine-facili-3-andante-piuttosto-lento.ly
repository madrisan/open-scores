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
  | d4\(-2 d d
  | d4. e8 f[ e]
  | g4 f e
  | d2~ d8\) r
  %5
  | \once\override PhrasingSlur.positions = #'(2.5 . 0)
    a4.\(-2 d8-5 g,4-1
  | d'4. f,8 d'4~
  | d8\) g,( bes) cis^. g^. bes^.
  | d8( g,) bes^. cis^. g^.-1 bes^.-2
  | \stemUp c4(\( f) f
  %10
  | f2.\)
  | r4
    \once\override Slur.positions = #'(2.2 . 0)
    c( f)
  | f8(-5 d) bes^.-3 d^. bes^. f^.-1
  | a4\(-2-3 bes a
  | a2.\)-1-4
  %15
  | a8-2-4 r b!-2-4 r <g cis>-1-2-4 r
  | <a d>4.-2-3-4 f'8\rest f4\rest
  | \stemNeutral\tieNeutral
    d4\(-2 d d
  | d4. e8 f[ e]
  | g4 f e
  %20
  | d2~ d8\) r
  | \once\override PhrasingSlur.positions = #'(2.5 . 0)
    a4.\(-2 d8-5 g,4-1
  | d'4. f,8 d'4~
  | d8\) g,( bes) cis^. g^. bes^.
  | d8( g,) bes^. cis^. g^.-1 bes^.-2
  %25
  | \stemUp c4(\( f) f
  | f2.\)
  | f
  | f
  | \stemNeutral r8 g,(-1 d'-5)[ b!^.]-1 g'^.-5 d^.-2
  %30
  | d(-3 ees)-4 r g,^.-1 c4^--4
  | r8
    \once\override Slur.positions = #'(3 . 2)
    a(-1 c)[
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
  | bes4-2 d,\rest d\rest
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
  | bes8\(-3 d c[-2 d] a-4 d\)
  | bes\( d g,[ d'] c d\)
  | bes\( d a[ d] g,-5 d'\)
  | f,\(-5 d' cis[-2 d] c-2 d\)
  %5
  | bes\(-3 d c[ d] bes d\)
  | a\(-4 d bes[ d] a d\)
  | \stemDown\tieDown g,2.~-2-5
  | g2.
    \clef "treble" \stemNeutral\tieNeutral\phrasingSlurNeutral
  | ees'8\(-2 f ees[ f] ees f\)
  %10
  | d\( f d[ f] d f\)
  | ees\( f ees[ f] ees f\)
  | d4 r r
    \clef "bass"
  | c8\(-2 d c[ d] c d\)
  | bes\( d cis[ d] bes d\)
  %15
  | <a d>-1-4 r q r a, r
  | d2~ d8 r
  | bes'8\(-3 d c[-2 d] a-4 d\)
  | bes\( d g,[ d'] c d\)
  | bes\( d a[ d] g,-5 d'\)
  %20
  | f,\(-5 d' cis[-2 d] c-2 d\)
  | bes\(-3 d c[ d] bes d\)
  | a\(-4 d bes[ d] a d\)
  | \stemDown\tieDown g,2.~-2-5
  | g2.
    \clef "treble" \stemNeutral\tieNeutral\phrasingSlurNeutral
  %25
  | ees'8\(-2 f ees[ f] ees f\)
  | d\( f d[ f] d f\)
  | des\(-4 f-1 des[ f] des f\)
  | c\(-4 ees-2 c[ ees] c ees\)
  | <b! d>2.-3-5
  %30
  | <bes c ees>4-2-3-5 q2
  | <a d f>2-1-2-5 <a c e!>4
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
