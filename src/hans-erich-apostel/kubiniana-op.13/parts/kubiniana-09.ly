Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc " } }

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set tieWaitForNote = ##t
  \stemNeutral\slurNeutral
  %1
  \tempo \markup { \bold "Moderato" } 4 = 63-69
  | R1
  | ees2~( ees8\< <a! bes>)\! r4
  | ees32^>( <a! bes> ees8.~ ees2) d'!8--~[(\mp d32\> cis a! f!])
  | e!2--\!\p a!32^>[( dis a!16 e!8~] e4~)
  %5
  | e32^>( <ais b!> e!8.~ e2) \clef treble cis'32([\< d! <fis g!>16_.])\! r8
  | r4 \stemUp cis'32[^( dis
    \shape #'((0 . 0) (0 . 0) (0 . -0.4) (-0.8 . -0.5)) Tie
    cis!8.~])
    \once\omit Flag \once\omit Stem
    \once\override NoteColumn.force-hshift = #-0.5
    \once \hideNotes cis16
    s4 s16
    \stemNeutral <e! a!>32[( bes' a!16^.])
  | <f! c'!>16^.[\mf r32 <a,! d!>^.^> q8~^>]( \tupletDown\tuplet 6/4 { q16 des c! b! c! cis }
    <a! d!>8^.) r f'!32[(\< a! <b! cis>16^.])\! r8
  | r2 r4 <a,! bes>~
  | q\< <dis e!>8^.\! r r <g,! fis'>8~^-
    q16[ e'!^.\< \once\omit TupletBracket \tuplet 3/2 { dis( a!_~ dis!_~ }]
  %10
  | <a dis gis>2.)^>\!\mf g'!8~[( g32 f! cis b!])
  | ais'8^. <a,! dis gis>4.^> fis'32^>[( cis fis16 <cis_~ fis_~ b!~>8])
    <cis_~ fis~ b!~>[ <cis fis b!>16 c32\rest e!](
  | dis'8)^\markup {
      \small "poco a poco accel."
    }
    r \tuplet 6/4 { r16 b!(\< bes a! ais b!)\! }
    r16. <g! e'!>32^.^>[\f q8^>]( \tuplet 6/4 { q16 ees' d cis d! dis) }
  | <g,! e'!>32[( ees' d! des c! cis d! dis]) e![( ees d! des c! cis d! dis])
    e![(\< ees d! des c! cis d! dis]) e![( ees d! des c! cis d! ees!]\!
  \omit Staff.TimeSignature
  << {
  %14-upper
  | \tempo \markup { \bold "Tempo I" } 4 = 63
    <b! f'!>8^.)\ff r r4 r r8 r16. \once\override Stem.length = #12 <d! ees>32^>\sfz(
  %15-upper
  | a!4~^- a16) r r8 r2
  }
  \new Staff = "middle" \with {
    alignAboveContext = "lower"
  } {
    \omit Staff.TimeSignature
    \clef "bass"
  %14-middle
  | r4\ff s8 r r4 s8 r
  %15-middle
  | r4 s8 r r4 s8 r
  }
  >>
  | s1
  | s1
  | s1
  | s1
  %20
  | s1
  | s1
  | s1
  | s1
  | s1
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*5
  %6
  | s4 <g'!~ fis'^~>4 <g cis fis>16[ r32 g'!](
    \stemUp
    \once\override Staff.TextScript.extra-offset = #'(-1 . -3)
    aes,4)_\markup {
      \small "cresc."
    } s8
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1
  | s1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \stemNeutral\slurNeutral\tieNeutral
  %1
  | cis,8[ \acciaccatura fis g!-.] r4 aes32[( c! d!16-.]) r8 r4
  | r cis,8-.[ \acciaccatura fis g!-.] r4 aes32[( c! d!16-.]) r8
  | r4 cis,8-.[ \acciaccatura fis g!-.] aes32[( c! d!16-.]) r8 r4
  | r4 cis,8-.[ \acciaccatura fis g!-.] r4 aes32[( c! d!16-.]) r8
  %5
  | r4 cis,8-.[ \acciaccatura fis g!-.] aes32[( c! d!16-.]) r8 r r16. ees32^.^\p
  | d'!4.--~ d16( dis32 e! f!8^.)
    \clef treble r16. c!32_( b'!4)(
  | <ges bes>16-.)[ r32 <des f!>_> q8_>~]( \tupletNeutral\tuplet 6/4 { q16 d! dis e! ees d! }
    <des f!>8-.) r c'!32[( bes fis16-.]) r8 \clef bass
  | r4 cis,8^.^\p[ \stemUp\slurDown \acciaccatura fis \stemNeutral\slurNeutral g!^.]
    aes32[( c! d!16^.]) r8 r4
  | cis,8^.[ \stemUp\slurDown \acciaccatura fis \stemNeutral\slurNeutral g!^.]
    r8 r16 aes32[( c!] d!16)[ a16\rest a16.\rest e'!32]( f,8) r \clef treble
  %10
  | r4 cis'8-.[ \acciaccatura fis g!-.] aes32[( c! d!16^.]) r8 r4
  | r4 cis,8[ \acciaccatura fis g!-.] r4 aes32[( c! d!16^.]) r8
  | r16. cis32[ <fis,~ g!~>8]( \tuplet 6/4 { q16 ais b! c! b! bes) }
    r16. <gis d'!>32^.^>[ q8~^>]( \tuplet 6/4 { q16 dis' e! f! e! ees }
  | <gis, d'!>16^.[) r16 \clef bass <b,!~ f'!~>8^-] q16[ r32 <dis, a'!>^. q8~^>]
    q8 <b,! f'! b!>4_- aes8( \clef bass
  | <cis, g'!>8)[ \acciaccatura cis' d!_.]
    \slurDown
    <fis c'!>32_>[( \change Staff = "middle" <bes e!> <d! aes'>16^.)] \change Staff = "lower"
    r16.
    \shape #'((-0.2 . -1) (0 . -2.2) (0 . -1.2) (0 . 0)) Slur
    \once\override Stem.length = #12
    aes,32(
    <cis, g'!>8)[ \acciaccatura cis'! d!]
    <fis! c'!>32_>[( \change Staff = "middle" <bes! e!> <d! aes'!>16^.)] \change Staff = "lower"
     r16.
     \shape #'((0 . -1) (0 . -2.2) (0 . -1.2) (0 . 0)) Slur
     \once\override Stem.length = #12
     aes,!32(
  %15
  | <cis, g'!>8)[ \acciaccatura cis' d!_.]
    \slurDown
    <fis c'!>32_>[( \change Staff = "middle" <bes e!> <d! aes'>16^.)] \change Staff = "lower"
    r16.
    \shape #'((-0.2 . -1) (0 . -2.2) (0 . -1.2) (0 . 0)) Slur
    \once\override Stem.length = #12
    aes,32(
    <cis, g'!>8)[ \acciaccatura cis'! d!]
    <fis! c'!>32_>[( \change Staff = "middle" <bes! e!> <d! aes'!>16^.)] \change Staff = "lower"
     r16. \once\override Stem.length = #12 aes,!32(
  | <cis, g'!>16_.) r r8 <d'! gis d'!>_._>[ \acciaccatura e'! <b! f'! b!>_._>] r \clef treble
    <a'! dis a'!>_._>[ \acciaccatura a'! <e! bes'! e!>_._>] r8
  | c'!16[ r <b! e!>8~] q16 g16\rest g8\rest cis^>[ \acciaccatura fis g!^>~] g16[ gis] g,8\rest
  | s1
  | s1
  %20
  | s1
  | s1
  | s1
  | s1
  | s1
  \fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    s4-\markup { \dynamic pp } s2.
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
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
    %composer = "Hans Erich Apostel"
    %opus = "Op. 13"
    title = \markup { "IX" }
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
    \tempo 4 = 65
  }
}
