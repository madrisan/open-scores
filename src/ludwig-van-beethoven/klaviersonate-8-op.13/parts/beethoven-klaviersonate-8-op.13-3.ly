Global = {
  \key c \minor
  \time 2/2
  \include "../global.ly"
}

cresc = \markup { \italic "cresc." }
bottom = \change Staff = "lower"
top = \change Staff = "upper"

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
    bes2_\cresc bes4~
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
  | \stemNeutral <g ees'>4\p r \tuplet 3/2 { r8 bes c } \tuplet 3/2 { d[ c bes] }
  | ees4 r \tuplet 3/2 { r8 bes c } \tuplet 3/2 { d[ c bes] }
  | \tuplet 3/2 { ees8[ g f] ees[ d c] b[ c bes] aes[ g f] }
  | ees4 r \tuplet 3/2 { r8 bes[ c] d[ c bes] }
  %55
  | ees4 r \tuplet 3/2 { r8 bes[ c] d[ c bes] }
  | ees4 r \tuplet 3/2 { r8 b[_\cresc c] d[ c b] }
  | \tuplet 3/2 { f'8[ ees d] aes'[ g f] d'[ c b] f'[ es d] }
  | f'2.\ff \tuplet 3/2 { ees8[ d c] }
  | \tuplet 3/2 {  b8[ aes g] f[ ees d] c[ b aes] } \tuplet 5/4 { g16[ f ees d c] }
  %60
  | b1~\sf
  | b2^\fermata r8 g'8-! \p c-! d-!
  | ees4.( f8 d4. ees8)
  | c2 \once\stemUp \slashedGrace d8 c8( b c d
  | \once\stemUp \slashedGrace f8 ees8 d ees f) g4-! g-!
  %65
  | g2. f8(  g)
  | \slashedGrace { f16[ g] } aes2(  d,4) ees8( f)
  | \slashedGrace { ees16[ f] } g2( c,4) c8( d)
  | ees4-! es8( f) d4-! d8( ees)
  | c4 r r f8( g)
  %70
  | <aes aes,>2( d,4)-! ees8( f)
  | <g g,>2( c,4)-! c8( d)
  | ees4-! ees8( f) d4-! d8( ees)
  | c4-! bes'!2 bes4~
  | bes8( aes g f ees d c b)
  %75
  | c4-! <c' c,>2 bes!4~
  | bes!8( aes g f ees! d c  b)
  | c4-! d^\trill( \f \stemUp \slashedGrace { c16[ d] } \stemNeutral\slurNeutral\tieNeutral es4)-! <b' d, b>-!
  | <c es, c>-! r r2
  | c,,2(\p f
  %80
  | bes, ees)
  | aes,( des4 c
  | bes aes g) r
  | r c'2 f,4~
  | f bes2 ees,4~(
  %85
  | ees aes g f
  | ees d f ees)
  | c'2 <f, f'>
  | bes <ees, ees'>
  | \phrasingSlurUp\stemUp aes2\( des4 c
  %90
  | bes aes g ees\)
  | \stemNeutral r <c'' c,>2 f,4~
  | f <bes bes,>2 es,4~
  | \stemUp
    ees\( aes g f
  | ees d f ees\)
  %95
  | \stemNeutral\slurNeutral\tieNeutral r2 r4 ees\(
  | c des f g,\)
  | bes\( aes c d,!
  | ees\)_! bes''( ees  des)
  | c2( f
  %100
  | bes, ees)
  | aes,_\markup { "cresc."} <des des,>4-! <c c,>-!
  | <bes bes,>-! <aes aes,>-! <g g,>-! des-!
  | c'8\f bes aes g f ees des c
  | bes aes g f e des c bes
  %105
  | \bottom \stemUp\slurUp
    aes g f e f g aes g
  | f ees d! c b c d c
  | r16 g(^\cresc b d g4-!) r16 g,( c ees g4-!)
  | r16 g,( d' f g4-!) r16 g,( c ees g4-!)
  | \top \stemNeutral\slurNeutral
    r16 g( b d) g4_! r16 g,( c ees) g4_!
  %110
  | r16 g,( d' f g4-!) r16 g,( c ees g4-!)
  | r16 g(\ff b d) g4_! r16 g,( c ees) g4_!
  | r16 g,( d' f g4-!) r16 g,( c ees g4-!)
  | \undo\omit TupletBracket \undo\omit TupletNumber
    \tuplet 3/2 { r8 g,[ fis] } \tuplet 3/2 { g[ b d] } \tuplet 3/2 { g[ d b] } g4
    \omit TupletBracket \omit TupletNumber
  | \tuplet 3/2 { r8 b[( ais] b[ d g] b[\sf g d] } b4)-!
  %115
  | \tuplet 3/2 { r8 d[( cis] d[ g b] d[\sf b g] } d4)-!
  | \tuplet 3/2 { r8 f[( e] f[ b d] f[ d b] f'[ d b)] }
  | f'2. \ff \tuplet 3/2 { es!8[ d c] }
  | \tuplet 3/2 {  b8[ as g]  f[ es d]  c[ b as] }
    \undo\omit TupletNumber \tuplet 5/4 { g16[ f es d c] } \omit TupletNumber
  | b1\sf ~
  %120
  | b2\fermata r8 g'8-! \p c-! d-!
  | ees4.( f8 d4. ees8)
  | c2 \once\stemUp \slashedGrace d8 c8( b c d
  | \once\stemUp \slashedGrace f8 ees8 d ees f) g4-! g-!
  | g2. f8(  g)
  %125
  | \slashedGrace { f16[ g] } aes2(  d,4) ees8( f)
  | \slashedGrace { ees16[ f] } g2( c,4) c8( d)
  | ees4-! es8( f) d4-! d8( ees)
  | c4 r r2


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
  | bes'2(_\cresc des-\markup { \dynamic sf }
  | \hideNotes c4) \unHideNotes s2.
  | s1*38
  %89
  | ees,4 c f ees
  | des c bes s
  | s1*2
  | c'2 bes4 aes
  | g f aes g

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
  | \tuplet 3/2 { g8[ ees f] g[ f ees] } aes2
  | <g ees>4 \clef bass c, aes bes
  | \tuplet 3/2 { r8 ees,,[ f] g[ f es] } aes2\sf
  %55
  | \tuplet 3/2 { g8[ ees f] g[ f ees] } aes2\sf
  | \tuplet 3/2 { g8[ ees f] g[ f ees] } aes2~
  | as1
  | <g g,>~
  | <g g,>
  %60
  | <f' d g,>~
  | <f d g,>2\fermata r
  | c8( ees g c) c,( f g b)
  | c,( ees g c) ees g ees d
  | c g' <ees c> g <d b> g <c, aes> g'
  %65
  | g,( b d g)  g,( b d g)
  | f,( aes b  d) f,( aes b d)
  | ees,( g c ees) aes,( c ees fis)
  | g,( c ees g) g,( b d g)
  | r c,, ees g c4 r
  %70
  | r8 f,, b d f aes g f
  | r ees, g c ees g aes fis
  | g, g' c g g, g' b g
  | c,( c' b c e, c' g c
  | f, c' aes c g f' b, f'
  %75
  | aes, ees' c ees g, e' c e
  | f, f' c f g, g' g,  g')
  | c,4^! <b g>^! <c c,>^! <g g,>-!
  | <c, c,>-! r r8 aes[^\p c ees]
  | aes2\( des,
  %80
  | g c,\)
  | f4 bes,2 c4
  | des d ees ees,
  | aes2\( des
  | g, c\)
  %85
  | f,\( g4 aes
  | a bes ees,\) r
  | r <c'' aes!>2 <f, des>4~
  | <f des> <bes g>2 <es, c>4~
  | <ees c> <aes f> bes,_\( c
  %90
  | des d ees\) r
  | <c' aes>2( <f des>
  | <bes, g> <ees c>)
  | f,( g4 aes
  | a bes ees,) ees'(
  %95
  | d! ees ges a,
  | bes)^! r r <des ees,>(
  | <c aes!>) r r <aes bes,>(
  | <g ees>) r r8 \clef treble ees''8^! f^! g^!
  | aes g f ees des c bes aes
    \clef bass
  %100
  | g f ees des c bes aes g
  | f ees des c bes a bes c
  | des c des d ees f fis g
  | aes,2 des
  | g, c
  %105
  | \stemDown\slurDown f, <f, f'>~\sf
  | q <fis fis'>
  | g4 d'8\rest d16( b g4-!) d'8\rest ees16( c
  | g4_!) d'8\rest f16( d g,4_!) d'8\rest ees16( c
  | \slurNeutral\stemNeutral g4-!) d''8\rest d16( b g4-!) d'8\rest ees16( c
  %110
  | g4-!) d'8\rest f16( d g,4-!) d'8\rest ees16( c
  | g4-!) r8 d''16( b g4^!) r8 ees'16( c
  | g4-!) r8 f'16( d g,4^!) r8 ees'16( c
  | g4^!) r r \tuplet 3/2 { g8 d b }
  | g4 r r \tuplet 3/2 { g'8 d b }
  %115
  | g4 r r \tuplet 3/2 { g8 d b }
  | g4 r r2
  | <g g'>1~
  | q
  | <g' d' f>
  %120
  | q2\fermata r2
  | c8 ees g c c, f g b
  | c, ees g c ees g ees d
  | c g' <ees c> g <d b> g <c, aes> g'
  | g, b d g g, b d g
  %125
  | f, aes b d f, aes b d
  | ees, g c ees aes, c ees fis
  | g, c ees g g, b d g
  | r c,,, ees g c ees f g


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
