Global = {
  \key e \minor
  \time 2/4
  \include "../global.ly"
}

ritardando = {
  \override TextSpanner.bound-details.left.text = \markup {
    \small "ritard "
  }
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'KinderscenenXII
  %1
  | r4 b8[( fis'16 b,]
  | b16 g'8.^>) b,8[( fis'16 b,]
  | b16 g'8.^>) b,8[( fis'16 b,]
  | b16 e8.^>) b8[( fis'16 b,]
  %5
  | b16 b'8.) b,8[( fis'16 b,]
  | b16 g'8.^>) b,8[( fis'16 b,]
  | b16 g'8.^>) b,8[( fis'16 b,]
  | b16 e8.) b8[( fis'16 b,])
  \bar "||"
  \key e \major
  | \stemDown <b e gis b>4(
    \stemUp \shiftOn b16[ gis'8 fis16]
  %10
  | \stemDown <gis, b e>4) \stemUp \shiftOn b,16[( gis'8 fis16]
  | <gis, b e>4) \clef bass <b dis>(
  | cis8[ dis16 cis] b4) \clef treble
  | \stemDown <b' e gis b>4(
    \stemUp \shiftOn b16[ gis'8 fis16]
  | \stemDown <gis, b e>4) \stemUp \shiftOn b,16[( gis'8 fis16]
  %15
  | <gis, b e>4) \clef bass <b dis>(
  | cis8[ dis16 cis] b4)
  \bar "||"
  | \shiftOff d4 \once\override NoteColumn.force-hshift = #0 cis
  | \once\override NoteColumn.force-hshift = #1.3 e2
    \clef treble
  | a4 gis
  | ais
    \once\override NoteColumn.force-hshift = #-1 b
  | b4( a
  | fis g)
  | b( a
  | fis b) \key e \minor
  \bar "||"
  %25
  | r4 b8[( fis'16 b,]
  | b16[ g'8.]) b,8[( fis'16 b,]
  | b16[ b'8.]) c,8[( b'16 c,]
  | c16[ a'8.]) b,8[( a'16 b,]
  | b16[ g'8.]) a,8[( g'16 a,]
  %30
  | a16[ fis'8.]) e4~
  | e2~\fermata
  | e4 r
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s4 b
  | b b
  | b b
  | b b
  %5
  | b b
  | b b
  | b b
  | b b
  | s4 << <dis fis b> \\ a >>
  %10
  | s4 \stemUp <a, dis fis b>
  | s4 \stemDown fis16[ gis8 fis16]
  | <e ais>4 dis
  | s4 << <dis'' fis b> \\ a >>
  | s4 \stemUp <a, dis fis b>
  %15
  | s4 \stemDown fis16[ gis8 fis16]
  | <e ais>4 dis
  | \stemUp b'4~ b^~
  | \once\override NoteColumn.force-hshift = #0 b
    s
  | fis'4~ \hideNotes fis8 \unHideNotes s
  %20
  | \stemDown
    \once\override NoteColumn.force-hshift = #1 g8
    fis~
    \once\override NoteColumn.force-hshift = #-1 fis4
  | e4 e
  | c!8[ d!16 c] b16[ e8 d16]
  | e4 e
  | c!8[ d!16 c] b16[ g'8 fis16]
  %25
  | s4 b
  | b b
  | b c
  | c b
  | b a
  %30
  | a a~
  | a2~
  | a4 s
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set tieWaitForNote = ##t
  %1
  \repeat unfold 8 {
  | b8[( c16 b] b[ fis'8.])
  }
  | b,,8[( cis16 b] b16[ gis'8 fis16]
  %10
  | b,8[ cis16 b] b16[ gis'8 fis16])
  | b,8[( cis16 b] b4
  | fis4 <fis, fis'>16[ <gis gis'>8 <fis fis'>16])
  | <e e'>8[( cis''16 b] b16[ gis'8 fis16]
  | b,8[ cis16 b] b16[ gis'8 fis16])
  %15
  | b,8[( cis16 b] b4
  | fis4 <fis, fis'>16[ <gis gis'>8 <fis fis'>16])
  | \change Staff = "upper"
    \stemDown
    fis''2*1/2
    \once\override NoteColumn.force-hshift = #1
    b8 a!_~
  | \once\override NoteColumn.force-hshift = #1.3
    a gis <a cis>4
  | %\once\override Tie.staff-position = #-9
    cis2*1/2_~
    \once\override Beam.positions = #'(-3.3 . -3.6)
    fis8 e_~
  %20
  | <cis e>4 dis
    \change Staff = "lower"
  | \stemUp
    b8[ c!16 b] b16[ d!8 c16]
  | b8[ a]  g!16[ c!8 b16]
  | b8[ c!16 b] b16[_\markup {
      \small "ritard."
    }
    d!8 c16]
  | b8[ a]  g!16[ b8 a16]
  %25
  | g8[( c16 b] b[ fis'8.])
  | b,8[( c16 b] b[ fis'8.])
  | b,8[( c16 b] c[ b'8.])
  | c,8[( d16 c] b[ a'8.])
  | b,8[( c16 b] a[ g'8.])
  %30
  | \once\shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur
    a,8[\( b16 a_~] \stemDown \tieNeutral <e a c e>4~
  | <e a c e>2~_\fermata
  | <e a c e>4\) r
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat unfold 2 {
  | <e g>4 <dis fis>
  | <e g>4 <dis fis>
  | <e g>4 <d! fis>
  | <e g>4 <b dis>
  }
  | \key e \major
    e,4 e
  %10
  | e e
  | e fis16[ gis8 fis16]
  | fis4 s
  | s4 e
  | e e
  %15
  | e fis16[ gis8 fis16]
  | fis4 s
  | \stemUp
    \once\shape #'((0 . 1) (0 . -2) (0 . -2) (0 . 1)) PhrasingSlur
    b,8[\( cis16 b] fis16[ fis'8 fis,16]
  | e8[ fis16 e] a16[ a'8 gis16]
  | fis8[ gis16 fis] cis16[ cis'8 cis,16]
  | fis16[ fis'8 fis,16] b,16[ b'8 b16]\)
  %21
  | \stemDown
    \once\shape #'((0.5 . 1) (0 . 2) (0 . -1.5) (6 . 3)) PhrasingSlur
    c!2\(
  | d!4 g!\)
  | \once\shape #'((0.5 . 1) (0 . 2) (0 . -3) (6.5 . 2)) PhrasingSlur
    c,!2\(
  | d!4 dis\)
  | \key e \minor
  %25
  | e <dis fis>
  | <e g> <dis fis>
  | <e g> a
  | <d, fis>\> g
  | <c, e> fis
  %30
  | <b, dis> s
  | s2
  | a4\! s
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic p } s4
  | s2
  | s8 s\> s s
  | s s s\! s
  %5
  | s2*2
  | s8 s\> s s
  | s s s\! s
  | s4-\markup { \hspace #-1 \dynamic pp } s4
  %10
  | s2
  | s8 s s\> s
  | s s s\! s
  | s2*2
  %15
  | s8 s s\> s
  | s s s\! s
  | s4-\markup { \hspace #-0.2 \dynamic pp } s4
  | s2*3
  %21
  | s4-\markup { \hspace #-0.5 \dynamic p } s4
  | s2
  | s8 s s\> s
  | s s s\! s
  %25
  | s4\p s
  | s2
  | s8 s s s\ritardando
  | s\startTextSpan s s4
  | s2
  | s8 s s\stopTextSpan s
}

forceBreaks = {
  % page 1
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 3 { s2\noBreak } s2\pageBreak
  % page 2
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
  | \repeat unfold 6 { s2\noBreak } s2\pageBreak
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
    title = \markup { "12. Kind im Einschlummern" }
    subtitle = \markup {
      \column {
        \line { "(Child Falling Asleep)" }
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
    \tempo 8 = 92
  }
}
