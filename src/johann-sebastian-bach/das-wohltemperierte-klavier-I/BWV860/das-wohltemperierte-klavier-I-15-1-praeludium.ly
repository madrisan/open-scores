Global = {
  \key g \major
  \time 24/16
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \label #'Praeludium15
  %1
  | g'16 b d  g d b  d b g  b g d  e g c  e c g  c g e  g e c
  | a c fis  a fis c  fis c a  c a fis  g b d  g d b  d b g
    \change Staff = "lower" \voiceOne b g d
  | \change Staff = "upper" a' cis e  a e cis  e cis a
    cis a \change Staff = "lower" e
    \change Staff = "upper" \tuplet 2/3 { \oneVoice d'8 r r d }
  | d16 cis d  e cis d  fis cis d  g cis, d  a' cis, d  b' cis, d  a' cis, d  g dis e
  %5
  | \tuplet 2/3 { fis8-.[ g-.] a-.[ b-.]  a-.[ g-.] fis-.[ a-.] }
  | gis16 b d  f d b  d b gis!  b gis f  d f gis  b gis f  gis f d  f d b
  | \tuplet 2/3 { c8^.[ e'^. c^. a^.]  e^.[ e'^. c^. a^.] }
  | dis16 fis a  c a fis  a fis dis  fis dis c  a c dis  fis dis c  dis c a  c a fis
  | \tuplet 2/3 { g8^.[ a^. b^. c^.]  b^.[ a^. g^. b^.] }
  %10
  | a16 gis a  b gis a  cis gis  a d gis, a  e' gis, a  fis' gis, a  g'! e cis  a cis e
  | \tuplet 2/3 { fis8 r }  a16 fis d  c! d fis  \tuplet 2/3 { a8[( g]) }
    g16 e cis  a cis e
  | \tuplet 2/3 { g8[( fis]) }  fis16 d b  g b d  \tuplet 2/3 { fis8[( e]) }
    e16 cis a  g a cis |
  | \tuplet 2/3 { e8[( d]) r d }  d16 c b  b a g  g b d  f e d |
  | d16 e f  \tuplet 2/3 { e8 r e }  e16 d cis  cis b a  a cis e  g fis e |
  %15
  | e16 fis g  \tuplet 2/3 { fis8 r a }  a16 g fis  fis e d  d fis a  c! b a |
  | a16 b c  \tuplet 2/3 { b8~ } b16 a g  f e d  c e g  a fis d  b d fis  g e c |
  | a16 c e  fis d b  g b d  e c a  fis a c  d b g  e g b  c a fis |
  | d16 fis a  b g e  c e g  a fis d  b d fis  g e b  a e' g  fis d c |
  | \tuplet 2/3 { <b d g>1\fermata } 
    \fine
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  \tuplet 2/3 {
  | g8-.[ g,-.] r g'^.  g-.[ g,-.] r g'^.
  | g-.[ g,-.] r g'^.  g-.[ g,-.] r g'_.
  | g-.[ g,-.] r g'^.
  }
    fis16 a cis  d a fis  a fis d  fis d b
  | \tuplet 2/3 { e8-.[ e,-.] r e'^.  cis-.[ a-.] b-.[ cis-.] }
  %5
  | d16 cis' d  e, cis' d  fis, cis' d  g, cis d  fis, cis' d  e, cis' d  d, cis' d  
    fis, cis' d
  | \tuplet 2/3 { b,8^.[ b'^.] r a^.  gis-.[ gis,-.] r gis'^. }
  | a16 c e  a e c  e c a  c a e  c e a  c a e  a e c  e c a
  | \tuplet 2/3 { fis8-.[ fis'-.] r e^.  dis-.[ dis,-.] r dis'^. }
  | e16 dis' e  fis, dis' e  g, dis' e  a, dis e  g, dis' e  fis, dis' e  e, dis' e
    g, dis' e
  %10
  | \tuplet 2/3 { cis,8^.[ d^. e^. fis^.]  cis-.[ b-. a-. cis-.] }
  | d16 fis a  d a fis  \tuplet 2/3 { d8^.[ d'^.] }  d,16 g b  d b g
    \tuplet 2/3 { d8[^. d']^. }
  | d,16 a' cis  d a fis  \tuplet 2/3 { d8^.[ d'^.] }  d,16 e g  b g e
    \tuplet 2/3 { d8[^. d']^. }
  | d,16 fis a  d a fis  a fis d  fis d c!  b d fis  g d b  d b g  b g f
  | e16 g b  c e g  c g e  g e d  cis e g  a e cis  e cis a cis a g
  %15
  | fis16 a cis  d fis a  d a fis a fis d  fis d a  d a fis
    \tuplet 2/3 { d8[-. d']-. }
  | \tuplet 2/3 { g,8~ } g16 b d  g a b  b c d  \tuplet 2/3 { e8 }  c16 a fis!
    \tuplet 2/3 { d'8^. } b16 g e |
  | \tuplet 2/3 { c'8^. } a16 fis d  \tuplet 2/3 { b'8^. }  g16 e c 
    \tuplet 2/3 { a'8^. } fis16 d b  \tuplet 2/3 { g'8^. }  e16 c a 
  | \tuplet 2/3 { fis'8^. }  d16 b g  e' c a  fis' d b
    \tuplet 2/3 { g'8^.[ e^. c^. d^.] }
  | \tuplet 2/3 { g,1_\fermata }
    \fine
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 860"
    title = \markup { "Praeludium XV" }
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
