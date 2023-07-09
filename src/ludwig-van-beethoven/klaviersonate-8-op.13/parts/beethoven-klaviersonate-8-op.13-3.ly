Global = {
  \key c \minor
  \time 2/2
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \omit TupletBracket
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \tempo "Allegro"
  \partial 4. {
    g'8 c d
  }
  %1
  | ees4.( f8 d4. ees8)
  | c2 \once\stemUp \slashedGrace d8 c8( b c d
  | \once\stemUp \slashedGrace f8 ees8 d ees f) g4-! g-!
  | g2. f8(  g)
  %5
  | \slashedGrace { f16[ g] } aes2(  d,4) ees8( f)
  | \slashedGrace { ees16[ f] } g2( c,4) c8( d)
  | ees4-! es8( f) d4-! d8( ees)
  | c4 r r f8( g)
  | <aes aes,>2( d,4)-! ees8( f)
  %10
  | <g g,>2( c,4)-! c8( d)
  | ees4-! ees8( f) d4-! d8( ees)
  | c4-! bes'!2 bes4~
  | bes8( aes g f ees d c b)
  | c4-! <c' c,>2 bes!4~
  %15
  | bes!8( aes g f ees! d c  b)
  | c4-! d^\trill( \f \stemUp \slashedGrace { c16[ d] } \stemNeutral es4)-! <b' d, b>-!
  | <c es, c> r r2
  | <e,, c g>1\sfp
  | f8( c' aes f' c aes' f  c')
  %20
  | bes( g e c bes b c  g)
  | bes!2( aes4) r
  | <d, bes f>1\fp
  | ees8( bes' g ees' bes g' ees bes')
  | aes( g f ees d c bes aes)
  %25
  | g4_!
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    bes2_ \markup { "dolce" } bes4~
  | bes8( c d ees f g aes f)
  | aes( g f ees) ees( d c d)
  | f( ees d c) \stemUp bes4-! bes-!
  | \stemNeutral\tieUp bes1~
  %30
  | <ees, bes'>8( c' des ees f g aes f)
  | ges4
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    bes2_\markup { "cresc." } bes4~
  | bes( ees2 a,4)
  | \stemUp bes2~\p \tuplet 3/2 { bes8[ a bes] } \tuplet 3/2 { c[ bes a] }
  | bes2 ~ \tuplet 3/2 { bes8[ a bes] } \tuplet 3/2 { c[ bes a] }
    \omit TupletNumber
  %35
  | \tuplet 3/2 { b8\rest bes[ c] } \tuplet 3/2 { d[ c bes] }
    \tuplet 3/2 { b\rest d[ es] } \tuplet 3/2 { f[ ees d] }
  | \tuplet 3/2 { f[ ees d] } \tuplet 3/2 { c[ bes aes!] }
    \stemNeutral
    \tuplet 3/2 { g[ f ees] } d16[ c bes aes]
  | \tuplet 3/2 { g8[ ees f] } \tuplet 3/2 { g[ f ees] } aes2
  | \tuplet 3/2 { g8[ ees' f] } \tuplet 3/2 { g[ f ees] } aes2
  | \tuplet 3/2 { g8[ ees f] } \tuplet 3/2 { g[ f ees] }
    \tuplet 3/2 { bes'[ g aes] } \tuplet 3/2 { bes[ aes g] }
  %40
  | \tuplet 3/2 { des'8[( c bes] } \tuplet 3/2 { aes[ g f] }
    \tuplet 3/2 { ees[ d! ees] } \tuplet 3/2 { e[ f des)] }
  | r4 \tuplet 3/2 { c,8[( ees aes] } \tuplet 3/2 { c[ ees aes)] } c8[-! c-!]
  | c( bes) aes-! g-! g( f) ees-! d-!
  | ees4 r r bes,\p
  | <f' d>_.( <f d>_. <f d>_. <f d>)_.
  %45
  | <bes ees,>2. <bes ees,>4
  | <aes ees>2_! <a f ees>_!
  | <bes f d>2. bes4
  | <f' bes,>-.( <f bes,>-. <f bes,>-. <f bes,>)-.
  | \stemUp\slurUp bes2.( b4
  %50
  | <c, c'>^!) r <f, aes d> r
  | <g ees'>4\p r \tuplet 3/2 { r8 bes c } \tuplet 3/2 { d[ c bes] }


}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  \partial 4. { s4. }
  %1
  | s1*27
  | s2 aes'4 aes
  | \once\override NoteColumn.force-hshift = #1 aes8( g f ees) ees^( d c d)
  %30
  | s1*3
  | s4 <bes d f> <bes ees ges>2\sf
  | d4\rest <bes d f> <bes ees ges>2\sf
  %35
  | <bes d f>4 d\rest <bes f' aes>4 d\rest
  | <bes d f aes>4 d\rest s2
  | s1*12
  %49
  | bes'2(_\markup { "cresc." } des-\markup { \dynamic sf }
  | \hideNotes c4) \unHideNotes s2.

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
%1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \omit TupletBracket \omit TupletNumber
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \partial 4. {
    r8 r4
  }
  %1
  | c8( ees g c) c,( f g b)
  | c,( ees g c) ees g ees d
  | c g' <ees c> g <d b> g <c, aes> g'
  | g,( b d g)  g,( b d g)
  %5
  | f,( aes b  d) f,( aes b d)
  | ees,( g c ees) aes,( c ees fis)
  | g,( c ees g) g,( b d g)
  | r c,, ees g c4 r
  | r8 f,, b d f aes g f
  %10
  | r ees, g c ees g aes fis
  | g, g' c g g, g' b g
  | c,( c' b c e, c' g c
  | f, c' aes c g f' b, f'
  | aes, ees' c ees g, e' c e
  %15
  | f, f' c f g, g' g,  g')
  | c,4^! <b g>^! <c c,>^! <g g,>-!
  | <c, c,>-! r r2
  | <bes bes,>1
  | <aes aes,>4 r r2
  %20
  | r4 <c' e,> <c e,> <c e,>
  | <c f,>2~ q4 r4
  | <aes, aes,>1
  | <g g,>4 r r2
  | r4 <bes' d,> <bes d,> <bes d,>
  %25
  | ees,8 bes' ees bes aes bes d bes
  | g bes ees bes d, bes' d bes
  | ees, bes' ees bes aes bes f' bes,
  | g bes ees bes d, bes' d, bes'
  | ees, bes' ees, bes' aes bes aes bes
  %30
  | ges bes ges bes d, bes' d, bes'
  | ees,( bes' ges bes bes, bes' d, bes'
  | ces, bes' ees, bes' ces, a' ees a)
  | bes,4 \clef treble <f'' d bes>-. <ges \sf ees bes>2
  | r4 <f d bes>-. <ges \sf ees bes>2
  %35
  | <f d bes>4 r <aes f bes,> r
  | <aes f d bes> r r2 \clef bass
  | ees,4 r \tuplet 3/2 { r8 bes'[ c] } \tuplet 3/2 { d[ c bes] }
  | ees4 r \tuplet 3/2 {r8 bes[ c] } \tuplet 3/2 { d[ c bes] }
  | ees4 r ees r
  %40
  | <ees des bes g> r r2
  | \tuplet 3/2 { aes,,8[( c ees] } aes4) r2 \clef treble
  | <g' ees bes>4 r <aes f bes,> r
  | <g ees> r r2 \clef bass
  | <bes, aes>4^.( <bes aes>^. <bes aes>^. <bes aes>)^.
  %45
  | <bes g>2. g4
  | c2^! ces^!
  | bes2. r4
  | <d aes>^.( <d aes>^. <d aes>^. <d aes>)^.
  | <ees g,>1
  %50
  | <aes, ees'>4 r <bes, bes'> r
  | \clef treble \tuplet 3/2 { r8 ees' f } \tuplet 3/2 { g[ f ees] } aes2

}

centerDynamics = {
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
    title = "Rondo" % "Grande Sonate Pathétique"
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
