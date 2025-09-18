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
  \set fingeringOrientations = #'(up)
  %1
  | \textMark \markup { \hspace #2 "A" }
    g'8\(-5 f16 e d e f d c8 e\) r c^.-2
  | b8( g') d^. b^. c\(-3 e~ e16 d c b
  | a-1 b-3 c a-2 b8\) g_.-1 g8._--2 g16_.-1 c8^.-4 a^.-1
  | b^.-2 <c g'>^.-1-5 d^. <c a'>^. <b g'>4^-
    \textMark \markup { "B1" }
    r8 <bes g'>^.-1-5
  %5
  | <a f'>8\(-1-4 g'16 f e f g e d8 f\) r b,^.-2
  | cis( e) a,^. cis^. d4( a)
  | \textMark \markup { "B2" }
    f'8\(-4 g16 f e f g e d8 f\) r b,^.-2
  | cis( e) a,^. cis^. d4-4 <f, d'>-1-5
  | \textMark \markup { "C" }
    \stemUp c'8.\(-1-2 d16 c8. d16 c8\) a'^. f^. d^.-3
  %10
  | \stemUp c8.\( d16 c8. d16 c8\) a'^. f^.-3 g^.
  | \stemNeutral <e a>4---2-5 <f a>---3-5 <c a'>---1-5 <d a'>---2-5
  | r8 <cis a'>(-1-4 <d b'>)[-1-5 <d gis>-.]-1-3 <cis a'>4---1-4 <f g>---2-3
  | \textMark \markup { "A" }
    g8\(-5 f16 e d e f d c8 e\) r c-.
  | b( g') d-. b-. c\(-3 e~ e16 d c b
  %15
  | a-1 b-3 c a-2 b8[\) g]_.-1 g8._--2 g16_.-1 c8-.-4 a-.-1
  | b-.-2 <c g'>-.-1-5 d-. <c a'>^. <b g'>4--
    \textMark \markup { \hspace #-1 "B1b" }
    r8 <bes g'>-.
  | <a f'>\(-4 g'16 f e f g e d8 f\) r b,-.-2
  | cis( e) a,-. cis-. d4-- <f, d'>_-
  | \textMark \markup { \hspace #-1.5 "D" }
    g'8\(-5 f16 e d e f d c8\)-1 c-.-2 g'4(
  %20
  | c,8)-1 c-.-2 g'-. g,-. c4 <e, c'>\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | s1*8
  | gis2( a8) g\rest g4\rest
  %10
  | gis2( a8) g\rest g4\rest
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set fingeringOrientations = #'(down)
  %\override Fingering.staff-padding = #'()
  %1
  | <c e>8\(-1-3 g-5 <d' f>-1-2 g,-5 <c e> g <c e> g\)
  | <d' f>\( g, <d' f> g, <c e> g <c e>\) r
  | <c f>\( g <d' f> g, <c e>^.\) g^.-5 a^.-4 c^.-2
    \clef "treble"
  | d_.-1 e_.-3 fis_. d_. g_.-1 e_.-2 d_. cis_.
  %5
  | <d f>\(-1-3  a <e' g> a, <d f> a <d f> a\)
  | <e' g>\( a, <e' g> a, <d f> a <d f> a\)
  | <d f>\( a <e' g> a, <d f> a <d f> a\)
  | <e' g>\( a, <e' g> a, \clef "bass" <d f>\) a^.-5 b^.-3 g^.-5
  | bes^.-2 c^. e,^. c'^. f,^. c'^. a^. c^.
  %10
  | bes^. c^. e,^. c'^. f,^. r r4
    \clef "treble"
  | cis'8-.-5 a'-. d,-. a'-. e-. a-. f-. a-.
  | e4 r8 e-.-2 <a, e'>4---5-1 <b d>--
    \clef "bass"
  | <c e>8\(-2-1 g <d' f> g, <c e> g <c e> g\)
  | <d' f>\( g, <d' f> g, <c e>[ g] <c e>\) r
  %15
  | <c f>\( g <d' f> g, <c e>\) g^. a^. c^.
    \clef "treble"
  | d-.-1 e-.-3 fis-. d-. g-. e-.-2 d-. cis-.
  | <d f>\(-2-1 a <e' g> a, <d f> a <d f> a\)
  | <e' g>\( a, <e' g> a, <d f> a b-3 g\)-5
    \clef "bass"
  | <c e>\( g <bes f'>-3 g <c e> g <bes f'> g\)
  %20
  | <c e>\( g <bes f'> g <c e>4\) <c,, g'>\fermata
    \fine
}

centerDynamics = {
  | s4\mf s2.
  | s1*7
  | s1-\markup { "scherzando" }
  | s1*2
  %12
  | s2 s\>
  | s1\!
  | s1*5
  %19
  | s4 s8
    \set decrescendoText = \markup { \italic\small { rall. } }
    \set decrescendoSpanner = #'text
    s\> s2
  | s4 s s\! s
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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
    title = \markup { "4. Allegro giusto" }
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
