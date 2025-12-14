Global = {
  \key e \minor
  \time 2/4
  \include "../global.ly"
}

refrainSopran = {
  \fixed c' {
  | \stemUp b4^.( b8. b16)
  | b8[( bes e' ees']
  | \stemUp d'[ g c'8. b!16]
  | <g b>4 <fis a>)
  | r8 \stemDown <b d' g'>[( <a d' fis'> <g cis' e'>]
  | \stemUp <a d'>2~
  | <a d'>8 d'[ c'8. b16]
  | <g b>4 <fis a>)
  }
}

refrainAlto = {
  | s2
  | s8 s4 \stemDown <c, ees a>8~
  | a'[ g fis g]
  | s2*2
  | fis2~
  | fis8[ g fis g]
  | s2
}

refrainTenor = {
  | \change Staff = "upper"
    \stemDown
    e8\rest
    \shape #'((0.5 . -0.5) (0 . -6) (0 . -7) (0 . -6)) PhrasingSlur
    <e g>[_\( <dis fis> <d! f!>]
  | <cis e>4. s8
  | \change Staff = "lower"
    \stemUp
    s2
  | d4 d
  | d4^.\) d8.^. d16^.
  | s2
  | c8[ d d8. d16]
  | d4 d
}

refrainBass = {
  | s2*2
  \fixed c {
  |  <b! d'>4 <a d'>8.[ <g d'>16]
  |  g8[ b d' d~]
  |  d2
  |  d'8[_( c'! e' d']
  |  c'[ b a8. g16]
  |  g8[ b d' d])
  }
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
    \refrainSopran
  }
  | \tempo \markup { \bold\italic Schneller }
    r16 <b e g>_. r <b e g>_. r <c e fis>_. r <c e fis>_.
  | r <b dis fis>_. r <b dis fis>_. r <b e g>_. r <g b d!>_.^>
  | r <g c e>_. r <g c e>_. r <a c d>_. r <a c d>_.
  | r <g b d>_. r <g b d>_. r \autoBeamOff <g_~ c e^~> <g b e>8^> \autoBeamOn
  \refrainSopran
  %\bar "||"
  \repeat volta 2 {
  | b'16[( c a b] g8) s8
  | s2
  | b16[( c a b] g8) s8
  | s2
  }
  %25
  | \stemDown g'4( fis
  | dis e)
  | d!( c
  | \stemUp ais \stemDown b)
  \bar "||"
  \refrainSopran
  \repeat volta 2 {
  | \tempo \markup { \bold\italic Schneller }
    r16 <b, e g>_. r <b e g>_. r <c e fis>_. r <c e fis>_.
  | r <b dis fis>_. r <b dis fis>_. r <b e g>_. r <g b d!>_.^>
  | r <g c e>_. r <g c e>_. r <a c d>_. r <a c d>_.
  %40
  | r <g b d>_. r <g b d>_. r \autoBeamOff <g_~ c e^~> <g b e>8^> \autoBeamOn
  }
  \fixed c' {
  | \stemUp b4^.( b8.^. b16)
  | b8[( bes e' ees']
  | \stemUp d'[ g c'8. b!16]
  | <g b>4 <fis a>)
  %45
  | r8 \stemDown <b d' g'>[( <a d' fis'> <g cis' e'>]
  | \stemUp <a d'>2~
  | <a d'>8 d'[ c'8.^. fis16^.])
  | <c fis>4( <b, g>)
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 { \refrainAlto }
  | s2*4
  \refrainAlto
  | g4 s8 <gis b e>
  | r <a c e> r <a c d>
  | g!4 s8 <ais cis fis>
  | r <b d fis> <a d fis>[ <b d g>]
  %25
  | s2*4
  \refrainAlto
  %37
  | s2*5
  | s8 bes4 \stemUp a4*1/2~
  | \stemDown a8[ g fis g]
  %40
  | s2
  | s2
  | fis~
  | fis8[ g~ g8. c,16]
  | s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
    \refrainTenor
  }
  | s2*4
  | \refrainTenor
  %21
  | d16[( e c e]) b8 s
  | s2
  | d16[( e c e]) b8 s
  | s2*5
  %29
  | \change Staff = "upper"
    \stemDown
    e8\rest
    \shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((1.5 . -3) (0 . -6) (0 . -7) (0 . -6))
    ) PhrasingSlur
    <e g>[_\( <dis fis> <d! f!>]
  | <cis e>4. s8
  | \change Staff = "lower"
    \stemUp
    s2
  | d4 d
  | d4^.\) d8.^. d16^.
  | s2
  | c8[ d d8. d16]
  | d4 d
  %37
  | s2*4
  | \change Staff = "upper"
    \stemDown
    e8\rest
    \shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . -1) (0 . -7) (0 . -8) (0 . -7))
    ) PhrasingSlur
    <e g>[_\( <dis fis> <d! f!>]
  | <cis e>4. <c! ees>8
  | \change Staff = "lower"
    \stemUp
    s2
  | d4 d
  | d4^.\) d8.^. d16^.
  | s2
  | c8[ d e8. a,16]
  | d,2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \slurUp
  %1
  \repeat volta 2 {
    \refrainBass
  }
  \repeat volta 2 {
  | e8[( fis16 g] a8[ a,]
  %10
  | \stemNeutral b[ b, e] g)
  | c[\( d16 e] f!8[ f,!]
  | g[ g, c] b_>\)
  }
  \refrainBass
  %\bar "||"
  \repeat volta 2 {
  | g''4 \autoBeamOff g8 <e e'>
  | \stemUp a, \stemDown <e' e'> d <d fis d'>
  | g4~ g8 <fis fis'>
  | \stemUp b, \stemDown <fis' fis'> <d d'>[ <g d'>]
  }
  %25
  | e[ <b' e g> a, <a' c fis>]
  | b,[ <fis' a dis> c <e g e'>]
  | d![ <fis d'!> e <g c>]
    << {
  |   s4 b_~
  |   \stemDown b2 s2
    } \\ {
  |   fis8[ <cis' e> b <dis fis>]
  |   \refrainBass
    } >>
  %37
  | e,8[( fis16 g] a8[ a,]
  | \stemNeutral b[ b, e]) g(
  | c[ d16 e] f!8[ f,!]
  %40
  | g[ g, c]) b^>
  | s2
  | s2
  \fixed c {
  |  <b! d'>4 <a d'>8.[ <g d'>16]
  |  g8[ b d' d~]
  %45
  |  d2
  |  d'8[_\( c'! e' d']
  |  c'[ b a8. d16]
  |  \once\shape #'((0 . 0.5) (0 . 1.5) (0 . 2.5) (0 . 2.5)) Slur
     <d a>4^( g,)\)
  }
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-0.8 \dynamic pp } s4
  | s2*3
  | s4-\markup { \dynamic p } s4
  | s2*3
  | s4-\markup { \dynamic pp } s4
  | s2*11
  %21
  | s4\f s8 s\sf
  | s8 s\sf s s\sf
  | s8 s s s\sf
  | s8 s\sf s\sf s
  %25
  | s4-\markup { \hspace #0.2 \normalsize \dynamic p } s4
  | s8\> s s s\!\override TextSpanner.bound-details.left.text = \markup {
      \small "ritard "
    }
  | s\startTextSpan s4.
  | s8 s\stopTextSpan s4
  | s4-\markup { \normalsize \dynamic p } s
  %30
  | s2*7
  | s4-\markup { \normalsize \dynamic pp } s
}

forceBreaks = {
  % page 1
  | \repeat unfold 6 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 6 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 5 { s2\noBreak } s2\pageBreak
  % page 2
  | \repeat unfold 5 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \new Devnull \forceBreaks
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "11. Fürchtenmachen" }
    subtitle = \markup {
      \column {
        \line { "(Frightening)" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 96
  }
}
