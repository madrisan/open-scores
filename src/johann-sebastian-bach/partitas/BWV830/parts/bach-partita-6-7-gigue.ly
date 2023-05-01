Global = {
  \key e \minor
  \time 8/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemNeutral\tieUp
  \tempo \markup { \bold "(Furioso)" }
  \repeat volta 2
  {
  %1
  | R1*8/4
  | R1*8/4
  | r4 r8 b^. cis4.^- ais8 g'4. e8 fis4. dis8
  | c'!4. ais8 b4. e,8 d!4 r cis2\prallprall
  %5
  | b8[ cis] d4~ d8[ f,!] d'4~ d8[ b] c!4~ c8[ ees,] c'4~
  | c8[ a] b4~ b8[ fis'] g4~ g8[ g,] a4~ a8[ e'] fis4~
  | fis8[ fis, g c!~] \stemUp c[ a] b4~ b8[ gis]
    \once\shape #'((0 . 1) (0 . 1.5) (0 . 1.5) (0 . 1)) Tie
    a4~ a8[ d,!] d'4~
  | d8[ b] c4~ c8[ a]
    \once\shape #'((0 . 2) (0 . 2.5) (0 . 2) (0.4 . 1.5)) Tie
    b4~ \once\override NoteColumn.force-hshift = #0 b8[ e,]
    e'4~ e8[ cis] dis4
  | s1*8/4
  %10
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %15
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %20
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  }
  \repeat volta 2
  {
  %25
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %30
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %35
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %40
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %45
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %50
  | s1*8/4
  | s1*8/4
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*8/4*6
  | s2 dis4. fis8 e4. c'8 f,!4 s8 b8
  | gis4. a16[ fis] g!4. dis'8
    \once\override NoteColumn.force-hshift = #1.2 e4.
    c8 a4. b8

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*8/4*6
  | e2 s1.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieUp
  %1
  \repeat volta 2
  {
  | \clef treble r4 r8 e'^. fis4.^- dis8  c'4. a8  b4. gis8
  | f'4. dis8  e4. a,8  g!4 r  fis!2^\prallprall
  | e8[ fis] g4~  g8[ e] fis4~ fis8[ dis] e4~ e8[ a,!] a'!4~
  | a8[ fis] g4~ g8[ e] fis4~ fis8[ b,] b'4~ b8[ gis] ais4
  %5
  | b4. a!8 gis4. e8 a4. g!8 fis4. d8
  | g4. fis8 e!4. cis8 fis4. e8 dis4. b8
  | g4\rest g8\rest \clef bass e^. fis4.^- dis8 c'4. a8 b4. gis8
  | f'!4. dis8 e4. a,8 g!4 r fis2^\prallprall
  | s1*8/4
  %10
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %15
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %20
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  }
  \repeat volta 2
  {
  %25
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %30
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %35
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %40
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %45
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  | s1*8/4
  %50
  | s1*8/4
  | s1*8/4
  }
  \fine
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 830"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Gigue"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 60
  }
}
