Global = {
  \key e \minor
  \time 2/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritard " } }
top = \change Staff = "upper"

refrainSopran = {
  %1
  \fixed c' {
  | \stemUp b4^.( b8. b16)
  | b8[( bes e' ees']
  | \stemUp d'[ g c'8. b!16]
  | <g b>4 <fis a>)
  %5
  | r8 \stemDown <b d' g'>[( <a d' fis'> <g cis' e'>]
  | \stemUp <a d'>2~
  | <a d'>8 d'[ c'8. b16]
  | <g b>4 <fis a>)
  }
}

refrainAlto = {
  %1
  | s2
  | s8 bes4 \stemUp a4*1/2~
  | \stemDown a8[ g fis g]
  | s2
  %5
  | s2
  | fis~
  | fis8[ g fis g]
  | s2
}

refrainTenor = {
  | \change Staff = "upper"
    \stemDown
    e8\rest
    \shape #'((0 . 0) (0 . -5) (0 . -6) (0 . -6)) PhrasingSlur
    <e g>[_\( <dis fis> <d! f!>]
  | <cis e>4. <c! ees>8
  | \change Staff = "lower"
    \stemUp
    s2
  | d4 d
  %5
  | d4^.\) d8.^. d16^.
  | s2
  | c8[ d d8. d16]
  | d4 d
}

refrainBass = {
  %1
  | s2
  | s2
  \fixed c {
  |  <b! d'>4 <a d'>8.[ <g d'>16]
  |  g8[ b d' d~]
  %5
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
  \repeat volta 2 { \refrainSopran }
  \break
  | \tempo \markup { \bold\italic Schneller }
    r16 <b e g>^. r <b e g>^. r <c e fis>^. r <c e fis>^.
  | r <b dis fis>^. r <b dis fis>^. r <b e g>^. r <g b d!>^.^>
  | r <g c e>^. r <g c e>^. r <a c d>^. r <a c d>^.
  | r <g b d> r <g b d> r \autoBeamOff <g_~ c e^~> <g b e>8^> \autoBeamOn
  \break
  \refrainSopran
  \bar "||"
  \break
  | b'16[( c a b] g8) s8
  | s2
  | b16[( c a b] g8) s8
  | s2
  %25
  | \stemDown g'4( fis
  | dis e)
  | d!( c
  | \stemUp ais \stemDown b)
  \bar "||"
  \break
  \refrainSopran
  \repeat volta 2 {
  | \tempo \markup { \bold\italic Schneller }
    r16 <b, e g>^. r <b e g>^. r <c e fis>^. r <c e fis>^.
  | r <b dis fis>^. r <b dis fis>^. r <b e g>^. r <g b d!>^.^>
  | r <g c e>^. r <g c e>^. r <a c d>^. r <a c d>^.
  %40
  | r <g b d> r <g b d> r \autoBeamOff <g_~ c e^~> <g b e>8^> \autoBeamOn
  }
  \break
  \fixed c' {
  | \stemUp b4^.( b8. b16)
  | b8[( bes e' ees']
  | \stemUp d'[ g c'8. b!16]
  | <g b>4 <fis a>)
  %45
  | r8 \stemDown <b d' g'>[( <a d' fis'> <g cis' e'>]
  | \stemUp <a d'>2~
  | <a d'>8 d'[ c'8. fis16])
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
  \repeat volta 2 { \refrainTenor }
  | s2*4
  | \refrainTenor
  %21
  | d16[( e c e]) b8 s
  | s2
  | d16[( e c e]) b8 s
  | s2*5
  | \refrainTenor
  %37
  | s2*4
  | \change Staff = "upper"
    \stemDown
    e8\rest
    \shape #'((0 . 0) (0 . -5) (0 . -6) (0 . -6)) PhrasingSlur
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
  \repeat volta 2 { \refrainBass }
  \repeat volta 2 {
  | e8[( fis16 g] a8[ a,]
  %10
  | \stemNeutral b[ b, e]) g(
  | c[ d16 e] f!8[ f,!]
  | g[ g, c]) b^>
  }
  \refrainBass
  \bar "||"
  | g''4 \autoBeamOff g8 <e e'>
  | \stemUp a, \stemDown <e' e'> d <d fis d'>
  | g4~ g8 <fis fis'>
  | \stemUp b, \stemDown <fis' fis'> <d d'>[ <g d'>]
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
  |  d'8[_( c'! e' d']
  |  c'[ b a8. d16])
  |  <d a>4( g,)
  }
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic pp } s4
  | s2*3
  | s4-\markup { \hspace #-1 \dynamic p } s4
  | s2*3
  | s4-\markup { \hspace #-1 \dynamic pp } s4
  | s2*11
  %21
  | s4\f s8 s\sf
  | s8 s\sf s s\sf
  | s8 s s s\sf
  | s8 s\sf s\sf s
  %25
  | s4-\markup { \hspace #0.2 \dynamic p } s4
  | s8\> s s s\!\ritardando
  | s\startTextSpan s4.
  | s8 s\stopTextSpan s4
  | s4-\markup { \hspace #-1 \dynamic p } s4
  %30
  | s2*7
  | s4-\markup { \dynamic pp } s4

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
    \tempo 4 = 100
  }
}
