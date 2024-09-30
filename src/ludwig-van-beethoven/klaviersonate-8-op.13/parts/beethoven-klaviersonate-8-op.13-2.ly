Global = {
  \key aes \major
  \time 2/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"
cresc = \markup { "cresc." }
decresc = \markup { "decresc." }
rinf = \markup { "rinf." }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  %\override DynamicText.Y-offset = #-2.4
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurDown\stemUp\slurDown\tieUp
  \tempo "Adagio cantabile"
  %1
  | c4\( bes
  | ees4. des8\)
  | c8[\( ees aes bes]\)
    \noBreak
  | ees,4.\( e8
    \break
  %5
  | f4\) bes,8.\( c32 des\)
  | ees4\( a,
  | des\) c16_.\( bes_. aes_. g_.\)
    \noBreak
  | <g bes>4
    \override Beam.positions = #'(0.5 . 0.5)
    \tuplet 3/2 { aes16[ \bottom ees_! aes_!] }
    \top \override Beam.positions = #'(2.5 . 2.8)
    \tuplet 3/2 { c_![ ees_! aes_!] }
    \revert Beam.positions
    \break
  | \phrasingSlurUp c4\( bes
  %10
  | ees4. des8\)
  | c8[\( ees aes bes]\)
  | ees,4.\( e8
  | f4\) bes,8.\( c32 des\)
  | ees4\( a,
  %15
  | des\) c16_.\( bes_. aes_. g_.\)
  | bes4\( aes8\) r16. c,32
  | \slurNeutral\stemNeutral\tieNeutral
    c'4~ c16( aes' g f)
  | c'4~ c16( aes g f)
  | c4~ c16( aes' g f)
  %20
  | ees8( d~) \after 16 \turn d8( f16. ees32)
  | ees4
    \after 16
    {
      \once\set suggestAccidentals = ##t
      \once\override AccidentalSuggestion.avoid-slur = #'inside
      \once\override AccidentalSuggestion.font-size = -3
      \once\override AccidentalSuggestion.script-priority = -1
      \once \hideNotes
      c!8\turn \noBeam
    }
    f,8.[_( aes32 c)]
  | \grace { \stemUp b( c d!) } \stemNeutral c[ bes g'16~] g\( f32 ees d c bes a c bes aes f\)
  | ees8 r16 \bottom \phrasingSlurNeutral\slurNeutral\stemUp\tieUp bes g[ bes g ees]
  | <f aes>8[ q q q]
  %25
  | <bes, ees g> \top r8 r8 bes'16.( ees32)
  | ees16( d) d( c)  c( ces) ces( bes)
  | bes2~
  | bes
  | c4\( bes
  %30
  | ees4. des8\)
  | c[ ees aes bes]
  | ees,4. e8
  | f4 bes,8.( c32 des)
  | ees4\( a,
  %35
  | des\)  c16_!( bes_! aes_! g_!)
  | <g bes>4( \autoBeamOff aes8) ees' \autoBeamOn
  | aes[^( ces bes aes])
  | \slurUp g( des') d4\rest
  | aes8[( ces bes aes])
  %40
  | aes( g) d'4\rest
  | aes8[( ces bes aes])
  | <fis fis'>8~
    \omit TupletBracket \omit TupletNumber
    \stemNeutral\slurNeutral
    \tuplet 3/2 { fis'16[ dis-! b-!] } <b b'>8~ \tuplet 3/2 { b'16[ gis-! e-!] }
  | <e e'>8~ \tuplet 3/2 { e'16 cis-! ais-! } \autoBeamOff <b, b'>8 dis,-! \autoBeamOn
  | \tuplet 3/2 { \once\omit Flag e16 \hideNotes e e \unHideNotes } s4.
  %45
  | e8[( gis fis e])
  | dis( a') r4
  | e8[( gis e dis])
  | d4. d8
  | d4. d8
  %50
  | des4. des8
    \break
  | c4\( bes
  | ees4. des8\)
  | c[\( ees aes bes]
  | ees,4.\)\( e8
  %55
  | f4\) bes,8.( c32 des)
  | ees4\( a,
  | des\) \tuplet 3/2 { des16[( c) bes] } \tuplet 3/2 { bes[ aes g] }
  | <g bes>4
    \tuplet 3/2 { \once\omit Flag aes16 \hideNotes a a \unHideNotes }
    \tuplet 3/2 { c_![ ees_! aes_!] }
  | \phrasingSlurUp\stemUp\slurUp c4\( bes
  %60
  | ees4. des8\)
  | c8[\( ees aes bes]\)
  | ees,4.\( e8
  | f4\) bes,8.\( c32 des\)
  | ees4\( a,
  %65
  | des\) \tuplet 3/2 { des16[( c) bes] } \tuplet 3/2 { bes[( aes) g] }
  | \stemNeutral\slurNeutral\tieNeutral <c, aes'>8 r r ees'16.( e32)
  | f8~ \tuplet 3/2 { f16[( ees) d-.]\( } \tuplet 3/2 { c-.[ bes-. aes-.]\) } g32[( des' bes g])
    \override Staff.Script.extra-offset = #'(0 . 2.5)
    \after 16 \turn aes16.( c32 ees,8) r
    \revert Staff.Script.extra-offset
    <ees' ees'>16.[( <e e'>32])
  | <f f'>8~ \tuplet 3/2 { q16[( <ees ees'>) <des des'>-.]\( }
    \tuplet 3/2 { <c c'>-.[ <bes bes'>-. <aes aes'>-.]\) } \tuplet 3/2 { <g g'>[( <des' des'> <g, g'>]) }
  %70
  | <aes aes'>8 r \once\stemUp \slashedGrace ees'8 \tuplet 3/2 { des16[( c des]) }
    \tuplet 3/2 { f( ees) des-! }
  | c8 r \stemUp\slurUp
    \slashedGrace c8 \tuplet 3/2 { bes16[( a bes]) } \tuplet 3/2 { des16[( c) des-!] }
  | \stemNeutral\slurNeutral
    aes8 r \slashedGrace c,8 \tuplet 3/2 { bes16[( a bes]) } \tuplet 3/2 { des16[( c) bes_!] }
  | R1*1/2
    \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  %1
  | s2*8
  %9
  | c16 ees c ees  bes ees bes ees
  | ees aes ees aes  ees bes' ees, bes'
  | ees, aes ees bes'  aes c aes d
  | g, bes g bes  g bes g bes
  | g bes g bes  g ees g ees
  | aes ees aes ees  ees c ees c
  %15
  | f des f des  des des des des
  | des ees des ees  c8 s
  | s2*10
  %27
  | \bottom \stemUp\tieUp \override Stem.length = #18 g2~
  | g
    \revert Stem.lenght \top
  | s2*8
  %37
  | \stemDown \omit TupletBracket
    \repeat unfold 4 {
      \tuplet 3/2 { <ces ees>16[ q q] }
    }
    \omit TupletNumber
  | \repeat unfold 4 {
      \tuplet 3/2 { <des ees>16[ q q] }
    }
  | \repeat unfold 4 {
      \tuplet 3/2 { <ces ees>16[ q q] }
    }
  %40
  | \repeat unfold 2 {
      \tuplet 3/2 { <bes ees>16[ q q] }
    }
    \repeat unfold 2 {
      \tuplet 3/2 { <g bes ees>16[ q q] }
    }
  | \repeat unfold 4 {
      \tuplet 3/2 { <ces ees>[ q q] }
    }
  | s2*17
  %59
  | \slurUp \repeat unfold 2 { \tuplet 3/2 { c16[( ees) ees] } }
    \repeat unfold 2 { \tuplet 3/2 { bes[( ees) ees] } }
  | \repeat unfold 2 { \tuplet 3/2 { ees[( aes) aes] } }
    \tuplet 3/2 { ees[( bes') bes] } \tuplet 3/2 { ees,[ bes' bes] }
  | \tuplet 3/2 { ees,[ aes aes] } \tuplet 3/2 { ees[ bes' bes] }
    \slurDown \tuplet 3/2 { aes[( c) c] } \tuplet 3/2 { aes[( d) d] }
  | \repeat unfold 4 { \tuplet 3/2 { g,[( bes) bes] } }
  | \repeat unfold 2 { \tuplet 3/2 { g[( bes) bes] } }
    \tuplet 3/2 { g[ ees ees] } \tuplet 3/2 { g[( ees) ees] }
  | \repeat unfold 2 { \tuplet 3/2 { aes[( ees) ees] } }
    \repeat unfold 2 { \tuplet 3/2 { ees[( c) c] } }
  | \repeat unfold 2 { \tuplet 3/2 { f[( des) des] } }
    \tuplet 3/2 { g[( des) des] } \tuplet 3/2 { des[ des des] }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
%1
  | aes'16 ees aes ees  g ees g ees
  | aes ees aes ees  bes' ees, bes' ees,
  | aes ees bes' ees,  c' aes d aes
  | g bes g bes  g bes g bes
  %5
  | g bes g bes  g ees g ees
  | aes ees aes ees  ees c ees c
  | f des f des  des des des des
  | des ees des ees
    \omit TupletNumber
    \tuplet 3/2 {
      \once\omit Flag \once\override Stem.length = #20 c8
      s4
    }
  | aes'16 ees aes ees  g ees g ees
  %10
  | aes ees aes ees  g ees g ees
  | aes ees g ees  f aes, f' aes,
  | \stemNeutral\phrasingSlurNeutral
    \once\override Beam.positions = #'(3 . 3.5)
    ees\( g bes ees  g bes g bes\)
  | des,,\( g bes des\)  g\( bes g des\)
  | \stemUp c ees c ees  c f c f
  %15
  | des f des f  bes, ees bes ees
  | a\rest ees g ees  aes8 s
  | s2*7
  %24
  | \stemDown\slurDown
    \once\override NoteColumn.force-hshift = #1
    ees16( d) d( c)  c( b) b( bes)
  | s2
  | \stemUp <f' aes>4 q
  | \stemDown
    \once\override NoteColumn.force-hshift = #1.2
    f16( fes) fes( ees)  ees( d) d( ees)
  | \once\override NoteColumn.force-hshift = #1.2
    ees( fes) fes( ees)  ees(^\pp d) d( des)
  | \stemUp <c aes'> ees aes ees  g ees g ees
  %30
  | aes ees aes ees  bes' ees, bes' ees,
  | aes ees bes' ees,  c' aes d aes
  | g bes g bes  g bes g bes
  | g bes g bes  g ees g ees
  | aes ees aes ees  ees c ees c
  %35
  | f des f des  des des des des
  | des ees des ees
    \once\omit Flag \once\override Stem.length = #20 c8
    s
  | s2*6
  %43
  | s4. \once\omit Flag \once\override Stem.length = #20 <fis a b>8
  | \omit Beam
    \override Stem.details.beamed-lengths = #'(6 11.5 11.5)
    \tuplet 3/2 {
      <gis b>16[ q q]
    }
    \revert Stem.details.beamed-lengths
    \undo\omit Beam
    \repeat unfold 3 {
      \tuplet 3/2 { <gis b>[ q q] }
    }
  %45
  | \repeat unfold 4 {
      \tuplet 3/2 { <gis b>[ q q] }
    }
  | \repeat unfold 4 {
      \tuplet 3/2 { <a b>[ q q] }
    }
  | \repeat unfold 4 {
      \tuplet 3/2 { <gis b>[ q q] }
    }
  | \tuplet 3/2 { <d aes'! ces>[ q q] }
    \repeat unfold 7 {
      \tuplet 3/2 { <d aes' ces>[ q q] }
    }
  %50
  | \tuplet 3/2 { <des aes' bes>[ q q] } \tuplet 3/2 { <des aes' bes>[ q q] }
    \tuplet 3/2 { <des g bes>[ q q] } \tuplet 3/2 { <des ees g bes>[ q q] }
  | \slurUp
    \tuplet 3/2 { c[( ees) ees] } \tuplet 3/2 { aes[( ees) ees] }
    \repeat unfold 2 { \tuplet 3/2 { g[( ees) ees] } }
  | \repeat unfold 2 { \tuplet 3/2 { aes[( ees) ees] } }
    \repeat unfold 2 { \tuplet 3/2 { bes'[( ees,) ees] } }
  | \tuplet 3/2 { aes[( ees) ees] } \tuplet 3/2 { bes'[( ees,) ees] }
    \tuplet 3/2 { c'[( aes) aes] } \tuplet 3/2 { d[( aes) aes] }
  | \repeat unfold 4 { \tuplet 3/2 { g[( bes) bes] } }
  %55
  | \repeat unfold 2 { \tuplet 3/2 { g[( bes) bes] } }
    \repeat unfold 2 { \tuplet 3/2 { g[( ees) ees] } }
  | \repeat unfold 2 { \tuplet 3/2 { aes[( ees) ees] } }
    \repeat unfold 2 { \tuplet 3/2 { ees[( c) c] } }
  | \repeat unfold 2 { \tuplet 3/2 { f[( des) des] } }
    \tuplet 3/2 { g[( des) des] }
    \once\omit Beam
    \override Stem.details.beamed-lengths = #'(10 10 9)
    \tuplet 3/2 { des des des }
    \revert Stem.details.beamed-lengths
  | \repeat unfold 2 { \tuplet 3/2 { des[( ees) ees] } }
    \omit Beam
    \override Stem.details.beamed-lengths = #'(10 11 8)
    \tuplet 3/2 { c_![ ees_! aes_!] } s8
    \revert Stem.details.beamed-lengths
    \undo\omit Beam
  \repeat unfold 2 {
  | \repeat unfold 2 { \tuplet 3/2 { aes16[( ees) ees] } }
    \repeat unfold 2 { \tuplet 3/2 { g[( ees) ees] } }
  }
  %61
  | \tuplet 3/2 { aes16[( ees) ees] } \tuplet 3/2 { aes16[( ees) ees] }
    \repeat unfold 2 { \tuplet 3/2 { f[( aes,) aes] } }
  | s2*3
  | s4 \once\override Beam.positions = #'(3.6 . 4) \tuplet 3/2 { bes16[ ees ees] }
    \once\override Beam.positions = #'(3.6 . 4)
    \tuplet 3/2 { ees,[ ees' ees] }
  | s2*6
  | s4 g
  | aes16 a\rest <c, ees aes> a'\rest <aes, c aes'>4\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurDown\stemDown\slurDown\tieDown
  %1
  | aes4\( des
  | c g\)
  | aes8\( g f f'\)
  | ees4\( ees,
  %5
  | des des'\)
  | c\( f,
  | bes, ees\)
  | aes,8[ aes' aes,] r
  | aes'4\( des
  %10
  | c g\)
  | aes8[\( g f f\)]
  | s2*2
  | c'8 c f,4\(
  %15
  | bes ees,\)
  | aes4. r8
  | r16 c' c c  c c c c
  | <e, g c> q q q  <f aes c> q q q
  | <g bes e> q q q  <aes c f> q q q
  %20
  | \clef treble <bes f' aes> q q q  <b f' aes> q <b d aes'> q
  | <c ees g> q q q  <aes ees'> q q q
  | r16 <bes ees g> q q  \clef bass r <bes, d aes'> q q
  | <ees g>8 g,\rest g4\rest
  | \once\override NoteColumn.force-hshift = #-0.6 bes,2
  %25
  | ees8 \stemNeutral r16 bes'\( g bes g ees\)
  | \stemDown\slurNeutral\tieUp bes4 bes'
  | \shiftOff
    \once\shape #'((0 . -0.4) (0 . -1.2) (0 . -1.2) (0 . 0)) Tie
    ees,2_~
  | ees
  | <aes, aes'>4\( des'
  %30
  | c g\)
  | aes8[ g f f']
  | ees4\( ees,
  | des des'\)
  | c\( f,
  %35
  | bes, ees\)
  | aes,8[ aes' aes,] r
  | <aes' aes'>4 r
  | bes'8~ \tuplet 3/2 { bes16[ bes( a)] }
    \tuplet 3/2 { bes^.[( bes^. aes^.]) } \tuplet 3/2 { g^.[( f^. ees^.]) }
  | aes8 r r4
  %40
  | \omit TupletBracket \omit TupletNumber
    \slurDown\stemNeutral\tieNeutral
    ees8~ \tuplet 3/2 { ees16[ ees( d)] }
    \tuplet 3/2 { ees^.[( fes^. ees^.]) } \tuplet 3/2 { des-.[( ces-. bes-.]) }
  | aes8 r r4
  | \repeat unfold 2 {
      \tuplet 3/2 { <a b dis fis>16[( q) q] }
    }
    \repeat unfold 2 {
      \tuplet 3/2 { <gis b e gis>[ q q] }
    }
  | \repeat unfold 2 {
      \tuplet 3/2 { <cis e fis ais>[ q q] }
    }
    \tuplet 3/2 { <b e gis b>[ q q] } \stemDown\tieDown \tuplet 3/2 { <b, b'> q q }
  | <e e'>8 g\rest g4\rest
  %45
  | <e e'>8 g\rest g4\rest
    fis'8~ \tuplet 3/2 { fis16 fis( eis) }
    \tuplet 3/2 { fis-.[( fis-. e-.]) } \tuplet 3/2 { dis-.[( cis-. b-.]) }
  | e8 g,\rest g4\rest
  | \tuplet 3/2 { f,16\rest f!-![ aes!-!] } \tuplet 3/2 { ces-! d-! f-! } aes8 g\rest
  | \tuplet 3/2 { f,16\rest f-![ aes-!] } \tuplet 3/2 { ces-! d-! f-! } aes8 g\rest
  %50
  | \tuplet 3/2 { d16\rest fes-![ aes-!] } bes8-!
    \tuplet 3/2 { d,16\rest ees-![ g-!] } bes8-!
  | <aes, aes'>4\( des'
  | c g\)
  | aes8[\( g f f']
  | \shape #'(
      (( 0 . -3) (0 . -1) (0 . 0) (0 . 1))
      (( 0 . 0) (0 . -1) (0 . -2) (0 . -3))
    ) PhrasingSlur
    ees4\)\( ees,
  %55
  | des des'\)
  | c\( f,
  | bes, ees\)
  | aes,8[ aes' aes,] r
  | aes'4\( des
  %60
  | c g\)
  | aes8[\( g f f]\)
  | \stemNeutral \tuplet 3/2 { ees16-![ g-! bes-!] } \tuplet 3/2 { ees16^! g^! bes^! } ees4
  | \tuplet 3/2 { des,,16-![ g-! bes-!] } \tuplet 3/2 { des16^! g^! bes^! } des4
  | c4 f,
  %65
  | bes, \stemDown ees,8[ ees]
  | \stemNeutral\slurNeutral \tuplet 3/2 { aes16[ ees'-.(^\pp ees-.]) }
    \tuplet 3/2 { ees^.[( ees^. ees^.]) }
    \repeat unfold 2 {
      \tuplet 3/2 { ees[ ees ees] }
    }
  | \repeat unfold 4 {
      \tuplet 3/2 { <ees, des' ees>[ q q] }
    }
  | \tuplet 3/2 { <aes c ees>[ ees'-.( ees-.]) }
    \tuplet 3/2 { ees^.[( ees^. ees^.]) }
    \repeat unfold 2 {
      \tuplet 3/2 { ees[ ees ees] }
    }
  | \repeat unfold 4 {
      \tuplet 3/2 { <ees, des' ees>[ q q] }
    }
  %70
  | <aes c ees>8 r \clef treble <ees'' g>4_(
  | <aes aes'>8) r \clef bass <ees, des'>4_(
  | \stemDown <aes c>8) r <ees, des'>4_(
  | <aes c>16\pp) c,\rest aes c\rest aes4\fermata
    \bar "|."
}

centerDynamics = {
  %1
  | s4\p s
  | s2*22
  %24
  | s8 s8-\cresc s4
  | s4\p s
  | s8-\cresc s4.
  | \once\override Staff.TextScript.extra-offset = #'(-0.5 . 1)
    s16-\markup { \dynamic p } s8.\< s4
  | s8 s16\!\> s s4
  | s4\!\p s
  %30
  | s2*7
  %37
  | s4-\markup { \hspace #-2 \dynamic pp } s
  | s2*3
  | s8 \tuplet 3/2 { s16 s-\cresc s } s4
  | \override Staff.TextScript.extra-offset = #'(-1 . 1)
    s8-\markup { \dynamic sf } s8
    s-\markup { \dynamic sf } s
  | s8-\markup { \dynamic sf } s4.
  | \override Staff.TextScript.extra-offset = #'(-2 . 0)
    s4-\markup { \dynamic fp }
    \revert Staff.TextScript.extra-offset
    s4-\decresc
  %45
  | s4\pp s
  | s2*4
  %50
  | s4-\cresc s
  | s4\p s
  | s2*15
  %67
  | s8\< s \tuplet 3/2 { s16 s\! s } s8\>
  | s4\! s
  | s8\< s \tuplet 3/2 { s16 s\!\> s } s8
  %80
  | s4\! s-\rinf
  | s s-\rinf
  | s s-\rinf
  | s4\pp s
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
    composer = #f % "Ludwig van Beethoven"
    opus = #f % "Opus 13"
    title = #f % "Grande Sonate Pathétique"
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
