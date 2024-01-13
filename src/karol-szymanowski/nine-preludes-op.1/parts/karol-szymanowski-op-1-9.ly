Global = {
  \key bes \minor
  \time 4/4
  \include "../global.ly"
}

pocopococrescendo = {
  \override TextSpanner.bound-details.left.text = \markup {
    \hspace #-1.5 \small "poco  a  poco  cresc. "
  }
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieNeutral\slurUp
  \omit TupletBracket \omit TupletNumber
  \set baseMoment = #(ly:make-moment 1/8)
  \tempo \markup { Lento - mesto }
  %1
  | r8^\markup { \hspace #-2 "legat." } f~^^( f[ ees~] ees des ees4)
  | f8\rest f~^^( f[ ees~] ees des ees4)
    \noBreak
  | \stemNeutral r8 <f, f'>4^^( <ees ees'> <des des'>8 <ees ees'>4)
  | r8 <f f'>4( <ees ees'> <des des'> <c c'>8)
  %5
  | \slurNeutral r8 <c c'>4^^^\markup { "sospirando" }( <bes bes'>8) r <bes bes'>4^^( <aes aes'>8)
  | r8 <aes aes'>4^^^( <ges ges'>8) r <f f'>4^^^( <e e'>8)
  | \clef bass \slurUp r8 <ges ges'>4^^( <f f'>8) r <f f'>4^^( <ees ees'>8)
  | r <ees ees'>4^^( <des des'>8) r <ees ees'>4^^( <des des'>8)
  | r <des des'>4^^( <ces ces'>8)
    \stemUp\slurDown
    \once\undo\omit TupletNumber \tuplet 11/8 { bes'16^( c) des( e) \clef treble f( a) bes( c!) ees( d des) }
  %10
  | \tieUp f8\rest f^^~ f[ ees~] ees des ees4
  | \slurUp f8\rest f4^^( ees des8 ees4)
  | \stemNeutral r8 <f, f'>4( <ees ees'> <des des'>8 <ees ees'>4)
  | r8 <f' f'>4( <ees ees'> <des des'> <c c'>8)
  | \slurNeutral
    \tuplet 6/4 { <bes des bes'>16[ a, bes] c[( des) e(] } \tuplet 6/4 { a)[ bes( c)] des[( e) a(] }
    \tuplet 6/4 { bes[) c( ees)] des[( c) bes(] } \tuplet 6/4 { ees,)[ des( c)] bes[( c) <e,, e'>] }
  %15
  | \tieNeutral r8 <des' des'>4~^^\(^\markup { \hspace #4 "espressivo" }
    <des des'>16 <c c'> <bes bes'> <c c'>\pocopococrescendo <des des'>4.\)_\startTextSpan
  | r8 <ees ees'>4~^^\( <ees ees'>16 <des des'> <c c'> <des des'> <ees ees'>4.\)
  | r8 <f f'>4~^^\(\stopTextSpan <f f'>16 <ees ees'> <des des'> <ees ees'> <f f'>4.\)
  | <ees ees'>16( <f f'> <ges ges'>4.) <f f'>16( <ges ges'> <aes aes'>4.)
  | \set subdivideBeams = ##t
    <ges ges'>16( <aes aes'> \tuplet 3/2 { <bes bes'> <c' c'> <bes bes'> }
    \tuplet 6/4 { <aes aes'> <ges ges'> <ees ees'> <c c'> <bes bes'>16. <ges ges'>32 }
    <ges ges'>4~  \tuplet 6/4 { q16 <aes' aes'> <ges ges'> <des des'> <bes bes'>16. <ges ges'>32) }
  %20
  | q4( <e e'> <f f'> <bes, bes'>8. <des des'>16
  | <ges, ges'>2^\markup { "ten." } q4.._\markup { \hspace #2 "dim. e rall" } <f f'>16)
  | \stemUp\slurUp f''4. ees8 des ees fes4^^^~(
  | \set subdivideBeams = ##f
    fes8 ees des ees) \stemDown \undo\omit TupletNumber \tuplet 6/4 { e16( f c' aes ges fes } bes,4~)
  | <f, d' bes'>1\arpeggio\fermata
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurDown
  %1
  | s8 ges~ ges4 ges2
  | ges4~ ges4 ges2
  | s1*6
  %9
  | s2 <des, ges>4 s
  | \once\stemUp \slashedGrace bes'8 ges'4~ ges ges2
  | ges ges
  | s1
  | s8 \stemUp bes'2 ges4.
  %15
  | s1*8
  %22
  | \stemDown ges,2. ges4~
  | ges2 s
  | \stemUp ees8. f16 f2.^\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \override Rest.staff-position = #0
  \voiceThree
  \stemUp\tieUp
  \omit TupletBracket \omit TupletNumber
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  | \clef treble
    \tuplet 3/2 { bes8( c aes') } \tuplet 3/2 { des,( ees bes') }
    \tuplet 3/2 { bes,( c aes') } \tuplet 3/2 { des,( ees bes') }
  | \tuplet 3/2 { des,( ees gis) } \tuplet 3/2 { des( ees a) }
    \tuplet 3/2 { c,( ees aes) } \tuplet 3/2 { c,( ees bes') }
  | \tuplet 3/2 { c,( des aes') } \tuplet 3/2 { c,( des ges) }
    \tuplet 3/2 { bes,( c ges') } \tuplet 3/2 { bes,( c ges') }
  | \clef bass
    \tuplet 3/2 { bes,( c a') } \tuplet 3/2 { bes,( c ges') }
    \tuplet 3/2 { a,( bes ges') } \tuplet 3/2 { gis,( a f') }
  %5
  | \tuplet 3/2 { a,( bes f') } \tuplet 3/2 { e,( f des') }
    \tuplet 3/2 { e,( f des') } \tuplet 3/2 { c,( des des') }
  | \tuplet 3/2 { c,( des des') } \tuplet 3/2 { c,( des bes') }
    \tuplet 3/2 { b,( c aes') } \tuplet 3/2 { b,( c ges') }
  | \tuplet 3/2 { b,( c bes') } \tuplet 3/2 { b,( c aes') }
    \tuplet 3/2 { b,( c aes') } \tuplet 3/2 { g,( aes aes') }
  | \tuplet 3/2 { g,( aes aes') } \tuplet 3/2 { g,( aes f') }
    \tuplet 3/2 { f,!( ges ges') } \tuplet 3/2 { f,( ges bes) }
  | \tuplet 3/2 { f!( ges^\markup { "dim." } ges') } \tuplet 3/2 { f,( ges ees') } s2
  %10
  | \stemDown\slurNeutral \set subdivideBeams = ##t
    \tuplet 6/4 { f,16( ges ees' c des bes') } \tuplet 6/4 { f( ges ees' c des bes') }
    \tuplet 6/4 { f,,( ges ees' c des bes') } \tuplet 6/4 { f( ges ees' c des bes') }
  | \stemUp \tuplet 6/4 { gis,,( a ges' d ees c') }
    \stemDown \tuplet 6/4 { f,( ges ees' gis, a ges') }
    \tuplet 6/4 { r16 bes,[( a] bes)( ees, d } \tuplet 6/4 { ees)( bes a! bes a bes) }
  | \stemNeutral
    \tuplet 6/4 { <c, ges' bes>( e' f c ges' bes) } \tuplet 6/4 { ges( d' ees c ges' bes) }
    \tuplet 6/4 {
      ees,,,( a ges'
      \once\override Staff.TextScript.extra-offset = #'(0 . 1)
      a,^\markup { "cresc." } ges' a,)
    }
    \tuplet 6/4 { ges'( bes, ees,_~ ees des_~ des) }
  | \tuplet 6/4 { c c' bes' ges c bes } \tuplet 6/4 { ees c ees aes ges ees }
    \tuplet 6/4 { c bes ges f ees c } \tuplet 6/4 { ges' c, bes ees, c' bes }
  | <fes bes ges'>4 r r2
  %15
  | \stemDown
    \tuplet 6/4 { f16( ees' aes ges ees' c } \tuplet 6/4 { bes ges f ees aes ges) }
    \tuplet 6/4 { f,( ees' ges f des' bes } \tuplet 6/4 { ges f des bes aes' ges) }
  | \tuplet 6/4 { f,( ees' aes ges ees' c } \tuplet 6/4 { bes ges f ees f ees) }
    \tuplet 6/4 { f,( f' bes ges c aes } \tuplet 6/4 { des c bes aes e f) }
  | \tuplet 6/4 { f,( f' bes aes f' des } \tuplet 6/4 { bes aes f des ges f) }
    \tuplet 6/4 { f,( f' bes ges c aes } \tuplet 6/4 { des bes aes ges e f) }
  | \tuplet 6/4 { f,( ges' c aes des bes } \tuplet 6/4 { ees c bes aes e f) }
    \tuplet 6/4 { f,( aes' ees' des aes' ges } \tuplet 6/4 { f des bes aes f des) }
  | \stemNeutral\slurUp
    \tuplet 6/4 { <f,, f'>( c'' ges' ees bes' ges) } \tuplet 6/4 { c( bes ees c ges' ees) }
    \tuplet 6/4 { f,,( des' ges fes bes ges) } \tuplet 6/4 { des'( bes ees bes des ges,) }
  %20
  | \set subdivideBeams = ##f
    \tuplet 6/4 { <f,, f'>16( des'' ges fes bes ges) } \tuplet 6/4 { r des( ges fes bes ges) }
    \stemDown \tuplet 6/4 { f,( des' bes' ges des' bes) } \tuplet 6/4 { r des,( bes' ges fes' bes,) }
  | \stemUp
    \tuplet 6/4 { f,_( des'\[ bes' fes'^\markup { "m.d." } bes, des,)\] }
    \tuplet 6/4 { r c_(\[ a' ees'^\markup { "m.d." } a, c,)\] }
    \stemDown
    \undo\omit TupletBracket \undo\omit TupletNumber
    \tuplet 5/4 { e\rest des_( bes'^\markup { "m.d." } fes' bes,) }
    c,( a'^\markup { "m.d." } ees' a,)
  | \stemNeutral\slurNeutral <bes,, bes'>( des' ees aes) \tupletDown\tuplet 5/4 { r ees( f bes c) }
    r4 <bes,, bes'>16( c' des bes')
  | \tupletDown\tuplet 5/4 { r fes( ges bes fes') } r4 r2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletNumber
  \stemDown
  %1
  | bes2_\markup { \hspace #-6 "legato" } bes
  | a ges
  | f f
  | ees ees
  %5
  | des ces
  | bes bes
  | aes ges4 \tuplet 3/2 { s8 aes4 }
  | f2 fes
  | ees \once\stemNeutral fes
  %10
  | s1
  | ees4 s4. \stemUp bes''8 ees,4
  | s1*9
  %21
  | \stemDown f,2_\markup { "(ten. con ped.)" } f
  | s1*2
  | <bes, bes'>1\arpeggio\fermata
  \fine
}

centerDynamics = {
  %1
  | s4\pp\< s s8\! s\> s4
  | s4\!\< s2.
  | s1\!\<
  | s8\!\mf s8 \once\override Hairpin.rotation = #'(-1 3 0) s4\> s2
  %5
  | s8\! s\> s4 s8 s\! s8 s\<
  | s8 s\! s4 s\> s8 s\!
  | s s\< s2.
  | s8\! s\> s4 s s8 s_\markup { "rit." }
  | s4\! s8 s \tuplet 11/8 { s16\pp\< s s s s\! s s-\markup { "rall." } s s s s }
  %10
  | s4\p\< s s8 s\! s4\>
  | s4\!\< s8 s\!\> s4 s8\! s-\markup { \hspace #-4 "rit." }
  | s8 s\< s4 s s
  | s4\!\f s8 s\> s4 s8\! s-\markup { "rit." }
  | s8\p\< s s s s16 s\! s8\> s4
  %15
  | s1\!\pp
  | s1
  | s1
  | s1
  | s4\ff s8-\markup { "rit." } s16\> s s4\!\< s8\! s-\markup { "rit." }
  %20
  | s8\f s-\markup { \hspace #-5 "espr." } s2.
  | s4 s s\> s
  | s8\!\p s16 s\< s8 s16 s\! s4-\markup { "rit." } s
  | s8 s-\markup { "rit." } s4 s-\markup { \hspace #8 "rall." } s
  | s1\pp
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
      \new Dynamics = "dynamics" {
        % Will use self-alignment-Y to place element
        \override TextScript.Y-offset = #self-alignment-interface::y-aligned-on-self
        % Use negative value of direction,
        % i.e. CENTER -> align to center, UP -> align to bottom, DOWN -> align to top
        \override TextScript.self-alignment-Y = #(lambda (grob) (- (ly:grob-property grob 'direction)))
        % use CENTER as default direction instead of DOWN
        \override TextScript.direction = #CENTER
        \centerDynamics
      }
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
    composer = ##f % "Karol Szymanowski"
    opus = ##f % "Op. 1"
    title = "Prelude IX"
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
      % Make the piano staves closer together
      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (padding . 0))
    }
  }
  \midi { \tempo 2=40 }
}
