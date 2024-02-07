Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

pocopocorall = {
  \override TextSpanner.bound-details.left.text = \markup {
    \small "poco a poco rallent. "
  }
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \omit TupletBracket
  \tempo \markup { Moderato }
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  | \once\shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -1)) Slur
    g'4.^^(\(^\markup { "leg." }\> f8\!)
    \tuplet 5/4 {
      \once\shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . -0.8)) Slur
      d16[( ees16 b c g aes b c d ees])\)
    }
  | \once\shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -1)) Slur
    g4.^^(\( f8)
    \tuplet 5/4 {
      \once\shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . -0.8)) Slur
      d16[( ees16 b c g aes b c d ees])\)
    }
    \set subdivideBeams = ##f
  << {
  | \once\shape #'((0.5 . -0.4) (0 . 0) (0 . 0) (0 . -1)) Slur
    \once\shape #'((0 . 0) (0 . -2) (0 . -1) (0 . 3.8)) PhrasingSlur
    g4.^^(\(_\markup { "dolce" } f8)
    \once\stemUp\slashedGrace f \tuplet 3/2 { bes( f ees) } \tuplet 3/2 { bes'( ees, d) }
  | \omit TupletNumber
    \stemDown
    \tuplet 3/2 {
      bes'8
      \once\shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . -0.2)) Slur
      c,( ees
    }
    bes' aes \once\override Stem.length = #6 aes2)\)
  }
  \new Voice {
  | \stemUp\tieUp \omit TupletNumber
    s2.
    \once\shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 1.4)) Tie
    bes4~
  | \hideNotes \tuplet 3/2 { bes8 s4 } s2. \unHideNotes
  } >>
  %5
  | \tuplet 3/2 { bes8^^\( b, c } \tuplet 3/2 { aes'8^^ cis, d } g^^ c, c4~
  | \tuplet 3/2 { c8 aes c } g' f f2\)
  | \set subdivideBeams = ##t
    \once\shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -1)) Slur
    g4.^^(\(^\markup { "a tempo" } f8) \tuplet 5/4 { d16[( ees16 b c g aes b c d ees])\) }
  | \once\shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -1)) Slur
    g4.^^(\( f8) \tuplet 5/4 { d16[( ees16 b c g aes b c d ees])\) }
    \set subdivideBeams = ##f
  | \once\shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -1)) Slur
    \once\shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . -4) (0 . 1) (0 . 1) (0 . 0))
    ) PhrasingSlur
    g4.^^(\( f8) \once\stemUp\slashedGrace f \tuplet 3/2 { bes( f ees) } \tuplet 3/2 { bes'( c, ees)) }
  %10
  | << { bes'4~ \stemDown bes8 a } \\ { s4 \once\stemUp ees'4 } >>
    \stemUp <a, c> g\rest
  | <g bes d> g\rest <ees g a> d'\rest
  | \slashedGrace d,8 c2. bes8 c\)
  | \slurDown g4.(\( f8) \once\stemUp\slashedGrace f \tuplet 3/2 { bes( f ees) } \once\stemDown bes'4~
  | \tuplet 3/2 { bes8 c,( ees } bes' aes aes2)\)
  %15
  | \stemNeutral\slurNeutral
    \once\shape #'((0 . 1) (0 . -3) (0 . -2) (0 . 3)) PhrasingSlur
    d8(\( g4 f8)
    \undo\omit TupletNumber
    \tuplet 5/4 { f16( bes f ees d) } \tuplet 5/4 { ees( bes' ees, d c) }
    \break
  | \tuplet 9/4 { bes'8([ c, ees] \ottava #1 bes'[ c ees] bes'[ aes ees)] }
    \set subdivideBeams = ##t
    \stemUp \tuplet 6/4 { g[ d \ottava #0 bes g ees16 d ees f] }
    \set subdivideBeams = ##f
  | \hideNotes s2 s4. g8\) \unHideNotes
  | \stemNeutral
    \once\shape #'((0 . -2) (0 . 0.5) (0 . 0.5) (0 . 0)) PhrasingSlur
    bes,4.(\( a8) \tuplet 3/2 { d( a g) } bes16( g ees d)\)
  | \once \stemUp \slashedGrace d'8 <ees, g c>1^\markup { "ten." }
  %20
  | \stemUp bes'4.(\( a8) \tuplet 3/2 { d a g } bes16( g e d)
  | \slashedGrace a'8 g2.^^^\markup { "afflitto" } f8 g
  | \tieUp\slurUp <f, a d>2~ d'8 e f a\)
  | \stemDown \omit TupletNumber d4.(\(^\markup { "a tempo" } c8)
    \tuplet 3/2 { f( c bes) } \tuplet 3/2 { f'( bes, a) }
  | \stemUp f'2( ees4)\) a\rest
  %25
  | d,4.(\( c8) \tuplet 3/2 { f( c bes) } \tuplet 3/2 { f'( bes, g) }
  | d'4.( c8) \tuplet 3/2 { f( c bes) } \tuplet 3/2 { f'( bes, g)\) }
  | d'4.\( c8 \slurDown <d, d'>4.( <c c'>8)
  | <d d'>4.( <c c'>8) <d d'>8( <f f'>4 <ees ees'>8)\)
  | \undo\omit TupletNumber
    \stemDown \slurUp
    \once\shape #'((0 . 0.4) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
    <g g'>4.(\( <f f'>8)
    \stemUp \tuplet 6/4 { <d d'>[_( <ees ees'> <b b'> <c c'> <d d'> <ees ees'>)]\) }
  %30
  | \stemDown \slurUp
    \once\shape #'((0 . 0.4) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
    <g g'>4.(\( <f f'>8)
    \stemUp \tuplet 6/4 { <d d'>[_( <ees ees'> <b b'> <c c'> <d d'> <ees ees'>)]\) }
  | \stemDown
    \once\shape #'((0 . 0.4) (0 . -1) (0 . -1) (0 . 0.4)) PhrasingSlur
    <g g'>4.(\( <f f'>8) <aes aes'>4.( <g g'>8)
  | <bes bes'>4.( <aes aes'>8) <c c'>4.( <b b'>8)\)
  | \once\shape #'((0 . 0.4) (0 . -0.5) (0 . -0.5) (0 . 1.4)) PhrasingSlur
    <d d'>4.(\(^\markup { "affettuoso" } <c c'>8)
    \tuplet 6/4 { <bes bes'>[( <c c'> <fis, fis'> <g g'> <aes aes'> <a a'>)]\) }
  | \omit TupletNumber
    \once\shape #'((0 . 0.4) (0 . -0.5) (0 . -0.5) (0 . 0.4)) PhrasingSlur
    <bes bes'>4.(\( <aes aes'>8) \tuplet 6/4 { <g g'>[( <aes aes'> <ees ees'> <e e'> <f f'> <fis fis'>)]\) }
  %35
  | \once\shape #'((0 . 0.4) (0 . -0.5) (0 . -0.5) (0 . 0.4)) PhrasingSlur
    <g g'>4.(\( <f f'>8)
    \stemUp
    \tuplet 6/4 { <d d'>[( <ees ees'> <bes bes'> <b b'>_\markup { "rit." } <c c'> <cis cis'>)]\) }
  | \stemNeutral
    \once\shape #'((0 . 0.4) (0 . 0) (0 . 0) (0 . 0.4)) PhrasingSlur
    <cis cis'>4._(\( <d d'>8)
    \tuplet 6/4 { <ees ees'>[( <f f'> <aes aes'> <c c'> <d d'>8. <g g'>16)]\) }
  | \stemUp
    \once\shape #'((0.5 . 0) (0 . -0.5) (0 . -0.5) (-2 . -1)) Slur
    <aes b>2( q)
  | <ees g c>1^\markup { "ten" }
  | s1
  %40
  | \undo\omit TupletNumber
    \once\shape #'((0 . 0.4) (0 . 0) (0 . 0) (0 . 0.8)) PhrasingSlur
    aes,4.(^\markup { "dolente" }\( g8) \tuplet 10/8 { <ces, e>16[( f c! d bes ces c d e f)]\) }
  | \pocopocorall
    \once\shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 1)) PhrasingSlur
    g4.(\(\startTextSpan
    f8) \tuplet 9/8 { d16[( ees b! c g aes b c d)]\) }
  | g4.(\( f8) \tuplet 6/4 { d[_( ees b c cis d)]\) }
  | \once\shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 1.4)) PhrasingSlur
    g4.(\( f8) \tuplet 6/4 { d[( ees b c cis d~)]\)\stopTextSpan }
  | \once\shape #'((0 . 0) (0 . 0) (0 . 0) (-1 . 0)) PhrasingSlur
    d4\( f2 aes4
  %45
  << {
  | c b2 c4
  | g'1^^^\markup { \hspace #4 "rall. perdendosi" }
  }
  \new Voice {
  | \voiceTwo
    \omit Stem \hideNotes
    s2. \once\override NoteColumn.force-hshift = #0.6 c,4^~
  | \once\override NoteColumn.force-hshift = #0 c2 s
    \unHideNotes
  } >>
  | c'1\)\fermata
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \set baseMoment = #(ly:make-moment 1/8)
  \stemDown\slurUp
  %1
  | s1*9
  %10
  | \tuplet 3/2 { bes'8 c, ees } bes' a \tuplet 3/2 { g( fis a } c, g')
  | \tuplet 3/2 { f( ees g } bes, f') \tuplet 3/2 { d( c ees } g, d')
  | <ees, fis>2 s2
  | s2. \stemUp \tuplet 3/2 {
      \once\shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) Slur
      bes'8_( ees, d
    }
  | \tuplet 3/2 { \once\omit Flag \once\omit Stem bes') s4 } s2.
  | s1
  %16
  | \set subdivideBeams = ##t
    s2 \stemDown \tuplet 6/4 { d'16[ c bes aes g f ees d c b bes aes] }
  | <g ees' g>2. s4
  | s1*3
  %21
  | <bes, cis>2 s2
  | s g\rest
  | s1
  %24
  | \tieNeutral <g' bes>2~ q8 g
    \once\override Staff.TextScript.extra-offset = #'(0 . -3.5)
    bes_\markup { "rit." } ees
  | \slurDown e,\rest d4( c8) f4 f
  | e8\rest d4( c8) f4 f
  | e8\rest d4( c8) s2
  | s1*9
  %37
  | <f' f'>2^\( <ees ees'>4 <f f'>
  | d2( c)(
  | c)\) r
    \break
  %40
  | des,2 \once\override NoteColumn.force-hshift = #1.6 des8 g,\rest e4\rest
  | b'2 fis4 d\rest
  | b'2 e,\rest
  | <aes b>2 f4\rest
    \once\shape #'((0 . 1) (0 . 0) (0 . 0) (2 . 0.5)) Tie
    c'_~
  | <f, aes c>2 b\rest
  %45
  << {
  | <ees f>2 <d fis>4 <ees g>
  | <g c>2_\pp s
  }
  \new Voice {
  | \voiceTwo \omit Stem \hideNotes
    s2. \once\override NoteColumn.force-hshift = #0 g4_~
  | \once\override NoteColumn.force-hshift = #0 g2 s \unHideNotes
  } >>
}

Tenor = \context Voice = "three" \relative c' {
  \override Rest.staff-position = #0
  \voiceThree
  \stemUp\tieUp
  \omit TupletNumber
  \mergeDifferentlyDottedOn
  | s1*4
  %5
  | s2 \tuplet 3/2 { c8 ees g~ } g4
  | f4
    \once\shape #'((0 . -2.5) (0 . 0.5) (0 . 0) (0 . 0)) Slur
    d,8( aes' c[ \staffUpper\stemDown f aes c])
  | \staffLower s1*31
  %38
  | s2 \stemUp ees,4 fis8 aes
  | g4. f8 d ees4 c8\rest
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurUp
  %1
  | r8 b'(_\markup { "leg." } f aes,) ges'[( aes, ees aes,])
  | r8 b''( f aes,) ges'[( aes, ees aes,])
  | r8 ces''( d, aes) g[( d' ees bes')]
  | g( c, f,[ c'] \stemUp ees \staffUpper\stemDown aes c ees)
  %5
  | \staffLower f,, d' aes'[ b,] bes4~ bes8 a
  | aes ees d2.
  | g,8 b''( f aes,) ges'( aes, ees aes,)
  | r8 b''( f aes,) ges'( aes, ees aes,)
  | r8 ces''( d, aes) g[( d' ees bes')]
  %10
  | fis,( c' ees[ a]) d,,[( a'] ees' a)
  | d,,( g d'[ g]) d,[( a'] bes ees)
  | \stemUp <d,, d'>( a'' c d \staffUpper\stemDown ees_\markup { \raise #-4 "rall." }[ fis]) d4\rest
  | \staffLower \stemNeutral r8 ces( d, aes) g( d' ees bes')
  | ees,_( c f, c' ees c' \staffUpper\stemDown ees ees')
  %15
  | \staffLower r ces[( d, aes)] \tuplet 3/2 { g[( d' ees] } \tuplet 3/2 { bes'[ ees, c)] }
  | f,( c' bes'[ ees,)] <bes, aes'>[( d'] aes' bes,)
  | \stemNeutral
    \once\shape #'((0 . -1.5) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    ees,,( bes' ees bes' \staffUpper\stemDown ees g bes g')
  | \staffLower \stemNeutral\slurNeutral r fis,( c d,) bes'( d, bes d,)
  | a( a' ees' g b
    \once\override Staff.TextScript.extra-offset = #'(4 . 3.5)
    c^\markup { "rit." } \staffUpper \stemDown ees g)
  %20
  | \staffLower \stemNeutral\slurNeutral r fis( c d,) bes'( d, bes d,)
  | \slurDown <a a'>( e'' g a bes cis) r4
  | d,,8(^\markup { "rallent." } d' e f a2)
  | \slurNeutral r8 ees( a ges') d,( a' bes f')
  | \once\shape #'((0 . 0.4) (0 . 1.5) (0 . -8) (-0.6 . -5.8)) PhrasingSlur
    c,(^\( g' bes d ees4) r4*1/2
    \staffUpper \hideNotes \once\stemUp ees'8\) \unHideNotes \staffLower
  %25
  | r8 ees,,,( a ges') d,( a' bes f')
  | r ees( a ges') d,( a' bes f')
  | r ees,,( a ges') r ees( aes ges')
  | r ees,( aes f') r d,( aes' f')
  | <f, b>[( g,] g, <aes aes'>) <ges'' c>( ees aes, <ees ges'>)
  %30
  | <f' b>[( g,] g, <aes aes'>) <ges'' ces>( ees aes, <ees ges'>)
  | r <f' b>( d <aes, aes'>) r <ges'' c>( ees <aes,, aes'>)
  | r <f'' c' f>( d <aes, aes'>) r <aes'' c d fis>( d, <aes, aes'>)
  | r <aes'' d f bes>( d, <g,, g'>) r <g'' aes c ees>( c, <f,, f'>)
  | r <f'' aes ees'>( ces <f,, f'>) r <ees'' f ces'>( aes, <ees, ees'>)
  %35
  | r <d'' f c'>( aes <d,, d'>) r <d'' fis c'>( aes <d,, d'>)
  | r <f'' aes c>( aes, <g, g'>) r <d'' aes' c>( aes <g, g'>)
  | <f'' b d aes'> g,,[( g' d'] f b! d f)
  | c,,( c' g' d')
    %\once\shape #'((0 . 0) (0 . 2.5) (0 . 2.5) (0 . 0)) Slur
    ees_( g, fis' aes
  | g g, c f d ees) g, c,
  %40
  | r e( bes c,) r aes''( aes, c,)
  | r aes''( aes, c,) r aes''( aes, c,)
  | r aes''( des, c,) <bes' g'>( <a fis'>^~ <aes fis'>~) <aes f'>
  | <c, c'>( d' f aes) <a c>( <aes ces> <g bes>^\markup { "rall." } <fis a>)
  | g,, g' d' f aes c d f
  %45
  | <g,, g'>2. \tieNeutral <c, c'>4~
  | \once\shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    q8( g'' c \staffUpper \stemDown d ees g_\markup { \raise #-4 "ten." } c ees)
  | \staffLower R1\fermata
  \fine
}

centerDynamics = {
  %1
  | s16\p s s8-\markup { "(rubato)" } s4 s\< s
  | s1\!
  | s2 s4\< s
  | s4\! s\> s2^\markup { "rit." }
  %5
  | s4\! s\< s2^\markup { "rit." }
  | s4\! s\> s s_\markup { \hspace #-2 "rall." }
  | s2\! s8 s\< s4
  | s1\!
  | s2 s-\markup { "cresc." }
  %10
  | s4 s^\markup { "rit." } s\f\< s
  | s16 s8.\! s4\> s2
  | s1\!
  | s\p\<
  | s2\!\> s4\!^\markup { "rit." } s
  %15
  | s1\p\<
  | s4\!\< s s\!\> s8 s_\markup { "rit." }
  | s4\!\p s s_\markup { \hspace #2 "rit." } s
  | s16 s\mf s8 s s\< s2
  | \once\override Hairpin.Y-offset = #1
    s4\!\> s s8 s\! s4
  %20
  | s16 s\pp s8 s\> s s s s\! s_\markup { "rit." }
  | s4\> s s s
  | s s\! s\< s
  | s\!\p\< s^\markup { \hspace #-2 "dolce" } s s
  | s1\!\>
  %25
  | s4\!-\markup { "più" \dynamic f } s\< s s\!
  | s32 s\mf s8. s2.
  | s1\<
  | s4_\markup { "cresc. e rit." } s s8 s\! 4
  | s1-\markup { \dynamic f "(con passione)" }
  %30
  | s1
  | s4\< s s s^\markup { \whiteout "cresc. ed accel." }
  | s1
  | s16\! s\ff s8 s-\markup { "(rit.)" } s s2
  | s1
  %35
  | s1
  | s1\<
  | s8\!\ff s16 s-\markup { \whiteout "(poco meno mosso)" } s2.
  | s1\<
  | s1\!\>^\markup { \hspace #1 "dim. e rall." }
  %40
  | s4\!\p\< s s s8 s_\markup { \hspace #-0.5 "rit." }
  | s4\!\> s s8 s\!\< s4
  | s1\!
  | s1
  | s8 s\pp s4\< s s
  %45
  | s8 s\! s4 s\> s
  | s1\!
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
    title = "Prelude VII"
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
  \midi { \tempo 2=46 }
}
