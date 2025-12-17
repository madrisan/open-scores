Global = {
  \key c \major
  \time 3/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'KinderscenenIX
  \repeat volta 2 {
  %1
  | \stemDown
    r8 <c g'>4 8 <c a'>4^>
  | r8 <c g'>4 8 <c e>4^>
  | r8 <c f>4 8 <d g>4^>
  | r8 <c e>4 8 \stemUp <g c>4^>
    \break
  %5
  | r8 <g c>4 8 <a c>4^>
  | r8 <g c>4 8 <e c'>4^>
  | r8 <f g>4 8 <g g>4^>
  | r8 <e g>4 8 <e g>4^>
  }
  \break
  \repeat volta 2 {
  | b'8\rest <e, g c>4 8 <e a c>4^>
  %10
  | b'8\rest <e, bes' c>4 8 <f bes c>4^>
  | b8\rest <g bes c>4 8 <g bes cis>4^>
  | b8\rest \stemDown <g bes d>4 8 <g bes e>4^>
  | b8\rest <a d f>4 8 <g bes e>4^>
  | b8\rest \stemUp <f a d>4 8 <e a cis>4^>
  %15
  | b'8\rest <f a d>4 8 <ees fis c'!>4^>
  | b'8\rest <d, f c'>4 8 <d f b!>4^>
  | b'8\rest <g c>4 8 <a c>4^>
  | b8\rest <g c>4 8 <e g c>4^>
  | b'8\rest <f g c>4 8 <g g c>4^>
  %20
  | b8\rest <e, g c>4 8 <c g' c>4^>
  | b'8\rest <e, g c>4 8 <f g c>4^>
  | b8\rest <e, g c>4 8 <c g' c>4^>
  | b'8\rest <d, g c>4 8 <e g c>4^>
  | b'8\rest <c, g' c>4 <c c'>8 4^>
  }
  \fine
}

Tenor = \context Voice = "two" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <e g>2 <dis fis>4
  | <e g>2 <c g'>4
  | <d g>2 <b g'>4
  | <c g'>2 <c e>4
  %5
  | e2( f4
  | e2 c4
  | d2 e4
  | c2 4)
  | f4\rest c2~
  %10
  | c4 2~
  | c4 c cis~
  | cis d e!
  | \shape #'((0 . 0.8) (0 . 1.5) (0 . 1) (0 . 0.5)) Slur
    d,( d') <g,, g'>
  | \shape #'((0 . 0.8) (0 . 1.5) (0 . 1) (0 . 0.5)) Slur
    a( a') <a,, a'>
  %15
  | \shape #'((0 . 0.8) (0 . 1.5) (0 . 1) (0 . 0.5)) Slur
    d( d') <aes, aes'>
  | <g g'> s <g g'>
  | c s2
  | e'2 c4
  | d2 e4
  %20
  | c2 g4
  | <g e'>2 <a f'>4
  | <g e'>2 <e c'>4
  | <f d'>2 <g e'>4
  | <e c'>2 c'4
}

Bass = \context Voice = "three" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | \clef treble g4\rest g2~
  | g4 g2~
  | g4 g2~
  | g4 g2~
  %5
  | g4 g2~
  | g4 g2~
  | g4 g2~
  | g4 g2
  \clef bass
  }
  \repeat volta 2 {
  | bes2 a4
  %10
  | g2 f4
  | e2 ees4
  | d2 cis4
  | d2 s4
  | a2 s4
  %15
  | d,2 s4
  | s4 g' s
  | s4 e f
  | c,4\rest c2
  | c4\rest c2
  %20
  | c4\rest c2
  | b4\rest c2
  | b4\rest c2
  | a4\rest c2
  | g4\rest c2
  }
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic mf } s2
  | s2.*15
  | s4-\markup { \dynamic ff } s2
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
    title = \markup { "9. Ritter vom Steckenpferd" }
    subtitle = \markup {
      \column {
        \line { "The Knight of the Rocking Horse" }
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
    \tempo 2. = 80
  }
}
