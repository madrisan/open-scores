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
  | g'8\( f16 e d e f d c8 e\) r c^.
  | b8( g') d^. b^. c\( e~ e16 d c b
  | a b c a b8\) g_. g8._- g16_. c8^. a^.
  | b^. <c g'>^. d^. <c a'>^. <b g'>4^- r8 <bes g'>^.
  %5
  | <a f'>8\( g'16 f e f g e d8 f\) r b,^.
  | cis( e) a,^. cis^. d4( a)
  | f'8\( g16 f e f g e d8 f\) r b,^.
  | cis( e) a,^. cis^. d4 <f, d'>
  | \stemUp c'8.\( d16 c8. d16 c8\) a'^. f^. d^.
  %10
  | \stemUp c8.\( d16 c8. d16 c8\) a'^. f^. g^.
  | \stemNeutral <e a>4-- <f a>-- <c a'>-- <d a'>--
  | r8 <cis a'>( <d b'>)[ <d gis>-.] <cis a'>4-- <f g>--
  | g8\( f16 e d e f d c8 e\) r c-.
  | b( g') d-. b-. c\( e~ e16 d c b
  %15
  | a b c a b8[\) g]_. g8._- g16_. c8-. a-.
  | b-. <c g'>-. d-. <c a'>^. <b g'>4-- r8 <bes g'>-.
  | <a f'>\( g'16 f e f g e d8 f\) r b,-.
  | cis( e) a,-. cis-. d4-- <f, d'>_-
  | g'8\( f16 e d e f d c8\) c-. g'4(
  %20
  | c,8) c-. g'-. g,-. c4 <e, c'>\fermata
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
  %1
  | <c e>8\( g <d' f> g, <c e> g <c e> g\)
  | <d' f>\( g, <d' f> g, <c e> g <c e>\) r
  | <c f>\( g <d' f> g, <c e>^.\) g^. a^. c^.
    \clef "treble"
  | d_. e_. fis_. d_. g_. e_. d_. cis_.
  %5
  | <d f>\( a <e' g> a, <d f> a <d f> a\)
  | <e' g>\( a, <e' g> a, <d f> a <d f> a\)
  | <d f>\( a <e' g> a, <d f> a <d f> a\)
  | <e' g>\( a, <e' g> a, \clef "bass" <d f>\) a^. b^. g^.
  | bes^. c^. e,^. c'^. f,^. c'^. a^. c^.
  %10
  | bes^. c^. e,^. c'^. f,^. r r4
    \clef "treble"
  | cis'8-. a'-. d,-. a'-. e-. a-. f-. a-.
  | e4 r8 e-. <a, e'>4-- <b d>--
    \clef "bass"
  | <c e>8\( g <d' f> g, <c e> g <c e> g\)
  | <d' f>\( g, <d' f> g, <c e>[ g] <c e>\) r
  %15
  | <c f>\( g <d' f> g, <c e>\) g^. a^. c^.
    \clef "treble"
  | d-. e-. fis-. d-. g-. e-. d-. cis-.
  | <d f>\( a <e' g> a, <d f> a <d f> a\)
  | <e' g>\( a, <e' g> a, <d f> a b g\)
    \clef "bass"
  | <c e>\( g <bes f'> g <c e> g <bes f'> g\)
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
  }
  \midi {
    \tempo 4 = 100
  }
}
