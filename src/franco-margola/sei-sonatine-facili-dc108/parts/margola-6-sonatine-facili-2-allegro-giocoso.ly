Global = {
  \key c \major
  \time 2/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.raltcomma" }
  \set fingeringOrientations = #'(up)
  %1
  \partial 4 {
    \tempo "Allegro giocoso"
    f8^.-5 c^.-3
  }
  | bes4^- a_-
  | bes^- f'8^. c^_~
  | c8 bes4^- a8_.
  | bes4^- a16-1( c-3 f c
  %5
  | d4)-4 a16(-1 c-3 f c
  | bes4)-2 a16( c f c
  | d8)-4 bes^.-2 a_.-1 g_.-2
  | f_.[-1 g_. a_. bes_.]
  | c4.\(-5 g8-2
  %10
  | c4.-5 a8-3
  | c8\)-5 r
    \once\override PhrasingSlur.positions = #'(2 . 0)
    g4\(-1
  | c f\) \breathe
  | c4.\(-5 g8
  | c4. a8
  %15
  | c\)-5 r a'4\(-5
  | g f\)
  \repeat unfold 2 {
  | e4.\(-2 d8
  | e4 f\)
  }
  %21
  | e4 e16\(-5 d c b
  | a8[\) c_. b_. a_.]
  | b8^.
    \once\override Tie.extra-offset = #'(0 . 0.3)
    e~
    e16\( d c b
  | a8[\) c_. b_. a_.]
  %25
  | e'4-_ e,__
  | r4 f'8^. c^.
  | bes4^- a_-
  | bes4^- f'8^. c~^-
  | c bes4^- a8_.
  %30
  | bes4^- a16\( c f c
  | d4\) a16\( c f c
  | bes4\) a16\( c f c
  | d8\) bes-. a_. g_.
  | f_.[ g_. a_. bes_.]
  %35
  | c4.\( g8
  | c4. a8
  | c8\) r
    \once\override PhrasingSlur.positions = #'(2.5 . 2.5)
    g4\(
  | c f\) \breathe
  | c4.-5\( g8-2
  %40
  | c4. a8-3
  | c-5\) r c4-1\(
  | f bes\)
  | g8-4( ees) c^. g'-5(
  | ees-3) c^. f-5( d)
  %45
  | ees-4( c) a^. ees'(
  | c) a^. d-4( b!)
  | r c-1( ees) g^.
  | f( d) ees^. c^.
  | b4-2^. <ees,-1 b'-4>__
  %50
  | <f-2 bes-4> 2_-
    \fine
}

Tenor = \context Voice = "three" \relative c'' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
   \partial 4 { s4 }
   | s2*20
     \clef "treble"
   \repeat unfold 2 {
   | gis4 a
   | fis g
   }
   | gis \clef "bass" gis,
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\dotsNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %\override Fingering.staff-padding = #'()
  \set fingeringOrientations = #'(down)
  %1
  \partial 4 { \clef "treble" ees8_. f_. }
  | d_.[ f_. cis_. f_.]
  | d_.[ f_. ees_. f_.]
  | d_.[ f_. cis_. f_.]
  | d_.[ f_. c_. f_.]
  %5
  | bes,_.[ f'_. c_. f_.]
  | d_.[ f_. c_. f_.]
  | bes,_.[ g'_. f_. e_.]
  | e_.[ d_. c_. bes_.]
  \repeat unfold 4 {
  | a[\( e' bes d]
  | c[ e d f]\)
  }
  %18
  \repeat unfold 2 {
  | e[\( gis a b]\)
  | e,[\( gis a c]\)
  }
  %21
  \repeat unfold 4 {
  | \stemDown e,4 e
  }
  | e-3-5 \clef "bass" e,-2-4
  | r4 \clef "treble" \stemNeutral ees'8-.-2 f-.
  | d-.[-3 f-. cis-.-4 f-.]
  | d-.[-3 f-. ees-. f-.]
  | d-.[ f-. cis-. f-.]
  %30
  | d-.[ f-. c-. f-.]
  | bes,-.[ f'-. c-. f-.]
  | d-.[ f-. c-. f-.]
  | bes,-.[ g'-. f-. e-.]-3
  | e-.[-1 d-. c-. bes-.]
  %35
  | a[\(-5 e'-1 bes-4 d-2]
  | c-3[ e-1 d-2 f-1]\)
  \repeat unfold 2 {
  | a,[\( e' bes d]
  | c[ e d f]\)
  }
  %41
  | a,[\( f' ees-2 f]
  | cis[-3 f d-2 f]\)
  | <ees-4 g-2>2~
  | q4 <d-5 b'!-1>
  %45
  | <c-5 g'-2>2~
  | q4 <d f>
  | <ees g>2
    \clef "bass"
  | <f,-5 ees'-1>2
  | <bes-2 d-1>4^. <bes-2 c-3>^_
  %50
  | <bes-3 d-1>2^-
    \fine
}

centerDynamics = {
  \partial 4 { s4\mf }
  %1
  | s2*6
  | s8 s\p s4
  | s2
  | \once\override TextScript.extra-offset = #'(0.4 . 1)
    s4-\markup { \hspace #0.4 \normalsize\dynamic p "dolce" } s
  %10
  | s2
  | s4 s\<
  | s2
  | s2\!\p
  | s2*3
  %17
  | s4.\p s8\<
  | s2
  | s4.\p s8\<
  | s2
  | s2\!\p
  | s2*4
  %26
  | s4 s\mf
  | s2*6
  | s8 s\p s4
  | s2
  %35
  | \once\override TextScript.extra-offset = #'(0.4 . 1)
    s4-\markup { \normalsize\dynamic p "dolce" } s
  | s2
  | s4 s\<
  | s2
  | s2\!\p
  | s2
  %41
  | s4 s\<
  | s2
  | s2\!
  | s2*4
  | s8 s-\markup { \hspace #0.8 "poco rit." } s4
  | s4 s\pp
}

forceBreaks = {
  % page 1
  s4\noBreak \repeat unfold 6 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 9 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 7 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 7 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 8 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 7 { s2\noBreak } s2\break\noPageBreak
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franco Margola"
    opus = ##f % "dC 108"
    title = \markup { "2. Allegro giocoso" }
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
