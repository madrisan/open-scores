Global = {
  \key ees \minor
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc " } }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral\slurNeutral
  \omit TupletBracket
  \tempo \markup { Andante ma non troppo }
  \partial 4 {
    \once\shape #'((0 . 0.4) (0 . -1) (0 . -3) (0 . -0.4)) PhrasingSlur
    ees8(\(^\markup { "(leg.)" } ges
  }
  %1
  | aes bes4 ges8) ges[( ces ges' ces,])
  | f( ces) f[ ces bes f' ees ges,]
  | ces ges4 ces8 bes f\) ees[(\( bes']
  | aes ees) ges( des) ces( ges' f ces)
  %5
  | f( ces) bes( f' ees bes) ces ges_(
  | \clef bass ges) ces bes f\) \stemUp\slurUp aes4.(\( bes8)
  | aes4.( bes8) aes4.( bes8)\)
  | \clef treble \stemNeutral ces(^\markup { "poco ravviv." } ges' des' ges, ces ges ces bes'
    \noBreak
  | aes ees f ces \stemUp ees aes,)
    \once\shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . -1) (0 . 1) (0 . 1) (0 . 1))
    ) Slur
    bes( ees
  %10
  | \stemNeutral ges ees ges des' c c, des f
  | ees a, bes des c c, des f
  | ees c des f ees[ c)] bes\( des
  | ees^\markup { "ravvivando" } f4 des8~ \slurDown des( ges des' ges,)
  | c[( ges]) c cis4 a8\) \slurUp a[( d
  %15
  | a' d, gis d)] gis,[( cis gis' cis,
  | fis cis)] e,[( b' fis' b, e b)]
  | \slurNeutral e,[( b' e a, d a)] e[( a]
  | a' e a gis' fis cis dis b
  | \time 3/4 a e dis dis,) e[( a]
  %20
  | \time 4/4 a' e a gis' fis cis dis b
  | \time 3/4 a e dis dis,) \slurUp e[^(^\markup { "ravviv." } a]
  | \time 4/4 gis[ fis)] fis[( b d a'] gis[ bis,]
  | cis e d eis, fis[ a)] fis( b
  | a8[ gis)]
    \once\shape #'((0 . 0.5) (0 . -1) (0 . -2) (0 . 0)) Slur
    aes[( des fes ces'] bes![ d,]
  %25
  | \time 5/4 ees ges fes[ g, aes ces bes des,)]
    \once\shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 1)) PhrasingSlur
    ees[(\( ges]
  | \time 4/4 aes bes4 ges8~) ges[( ces ges' ces,]
  | f[ ces)] f[ ces bes f' ees bes]
  | ces ges4 ces8 bes[ f]\) ees( bes'
  | ees bes' aes[ ees] ges[ des ges, des)]
  %30
  | ces[( ges' ces ges'] f[ ces bes f]
  | \stemUp f'[ bes, ees ees,)] \stemNeutral ces[(^\markup { "a tempo (poco accel.)" } aes' ces aes']
  | ces, ges' aes, fes' aes, ees' ces, fes')
  | aes,,( fes' ces' ces' fes, bes ces, aes'
  | ces, ges' aes, aes') \stemUp\slurNeutral ces,,(\( aes' ces aes')
  %35
  | aes,,( fes' aes fes') aes,,( ees' aes ees')
  | aes,,( d aes' d) aes,( ees' aes ees')
  | aes,,( d aes' d) d,( ges d' ges)
  | \slashedGrace bes,,8 <bes ges' ees'>2.\arpeggio\)^\markup { "a tempo" }
    \once\shape #'((0 . 0.4) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
    ees8^(\( ges
  | aes bes4 g8~) g[( des' ces'! g)]
  %40
  | <c, aes'>[( <ces ees>) <bes ges'>( <a c>^~)] c d
    \hideNotes \grace c \unHideNotes <d ges>\arpeggio d
  | \slashedGrace bes,8 <bes ges' ees'>2.\)\arpeggio^\markup { "a tempo" }
    \once\shape #'(
      ((0 . -3) (0 . 1) (0 . 1) (0 . -1))
      ((0 . 3) (0 . 2) (0 . 1) (0 . 0))
    ) PhrasingSlur
    ees8^(\( ges
  | aes bes4 g8~) g[( des' ces'! g)]
  | \tuplet 3/2 { <des bes'>( <c aes'> <ces ees>~) } \tuplet 3/2 { <ces aes'>( <bes ges'> <a c>^~) }
    c d \hideNotes \grace c \unHideNotes <d ges>\arpeggio d
  | \slashedGrace bes,8 <bes ges' ees'>2.\)\arpeggio^\markup { "a tempo" } ees8^(\( ges
  %45
  | aes bes4 ges8~) \stemDown ges[ ces ges' ces,]
  | \stemUp f\arpeggio ees\) ges,[^( ces!
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    ges'_\markup { "rallent." } ces,] f\arpeggio ees
  | ges1)
  | <ges bes ges'>\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \set baseMoment = #(ly:make-moment 1/8)
  \stemDown\slurDown
  \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
  \partial 4 {
    \once\shape #'((0 . 0.2) (0 . 0.5) (0 . 5) (-0.5 . 1.5)) Slur
    ees4(
  }
  %1
  | \staffLower \hideNotes
    \once\omit Stem \once\override NoteColumn.force-hshift = #-1 ees2.) s4
    \unHideNotes \staffUpper
  | s1*4
  %6
  | s2 aes,8 ees d bes'
  | aes ees d bes' aes ees d bes'
  | s1*11
  %19
  | s2.
  | s1
  | s2.
  %22
  | dis4 s2.
  | s1
  | eis4 s2.
  %25
  | s1*5/4
  | s1*4
  %30
  | \staffLower s2.
    \once\shape #'((1 . 1) (0 . 4) (0 . -2) (0 . 0)) Slur
    \once\omit Stem d4(
  | \staffUpper s4.
    \once\override Staff.TextScript.extra-offset = #'(0 . -4)
    ees8)_\markup { \hspace #-1.6 "rall." } s2
  | s1*8
  %40
  | \omit Flag \omit Stem
    \hideNotes s4. a8~ a4 s \unHideNotes
  | s1*2
  | s4 \tuplet 3/2 { s \hideNotes a8~ \unHideNotes } \undo\omit Stem a4 s
  | \staffLower s2. \stemUp des,4
  %45
  | \staffUpper s2. s8 \undo\omit Flag ces'
  | \stemDown <ges c>4~\arpeggio ges2 <ges ces!>4\arpeggio
  | <ges bes>1
}

Tenor = \context Voice = "three" \relative c' {
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \grayTextColor
  \voiceThree
  \stemUp\tieUp
  \showStaffSwitch
  \partial 4 { s4 }
  %1
  | \once\override NoteColumn.force-hshift = #-1 ees2.( ees4
  | d2 d4 ees)
  | bes( a bes) ges
  | f4.( ges8) ees4 d~
  %5
  | d d ees bes
  | a bes4. <ces, f>8~ \tieNeutral <bes f'>4~
  | \tieUp q8 <ces f>~ <bes f'>4. <ces f>8~ <bes f'>4
  | aes4 bes''_( aes~) \once\stemDown <aes ees' ges>
  | s4 ges' \staffUpper \stemDown f ges
  %10
  | \hideStaffSwitch \staffLower s1
  | s4 \stemUp <ees, ges'>_^ s2
  | s4 \showStaffSwitch bes'2 \staffUpper\stemDown
    \once\shape #'((0 . 0.2) (0 . 0.5) (0 . 5) (-0.5 . 1.5)) Slur
    bes4_( \hideStaffSwitch
  | \staffLower\stemUp bes2.) bes4
  | a4~ a2 b4_~
  %15
  | \stemDown b2 \once\stemUp\tieDown a4~ a~
  | a \once\stemUp g~ g2
  | \once\stemUp fis4~ fis2 \once\stemUp fis4~
  | fis2 \stemUp
    \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 2)) Slur
    fis8[( a dis gis]
  | s4. \hideNotes \once\omit Flag b,8) \unHideNotes fis4^~
  %20
  | \once\stemDown fis2
    \once\shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 2) (0 . 2.5) (0 . 3) (0 . 3.5))
    ) Slur
    fis8[( a dis gis]
  | s4. \hideNotes \once\omit Flag b8) \unHideNotes fis,4(
  | b8 a) s2 fis'4\arpeggio
  | eis s2 gis,4(
  | cis8 b) s2 aes'4\arpeggio
  %25
  | g4 s2. \staffUpper \once\stemDown
    \once\shape #'((0 . 0.2) (0 . 0.5) (0 . 5) (-0.5 . 1.5)) Slur
    ees4_(
  | \staffLower ees2.)( ees4
  | d2 d4 ees)
  | bes( a bes) \tieUp ges~
  | ges f~ f ges
  %30
  | \staffUpper\once\stemDown ces \showStaffSwitch \staffLower bes \hideStaffSwitch e\rest d
  | d,( ees) s2
  | s1*6
  %38
  | s2. \staffUpper\stemDown des'4
  | ces_( bes_\markup { \hspace #2 "disperato" })
    \staffLower\stemUp fes'( ees^\markup { \hspace #1 "rit." })
  %40
  | s2 \staffUpper\once\stemDown \once\override NoteColumn.force-hshift = #0 a4
    \showStaffSwitch \staffLower aes^\markup { "rit." } \hideStaffSwitch
  | s2. \staffUpper\stemDown des,4
  | ces_( bes) \staffLower\stemUp fes'(
    \once\override Staff.TextScript.extra-offset = #'(0 . 3)
    ees^\markup { "rit." })
  | s1
  | s2. \staffUpper\stemDown
    \once\shape #'((0 . 0.2) (0 . 0.5) (0 . 5) (-0.5 . 1.5)) Slur
    ees4_(
  %45
  | \staffLower\stemUp ees2.) \tieNeutral <ees, ees'>4~
  | q2 q
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  \partial 4 {
    des4_\markup { "ben ten. il basso" }
  }
  %1
  | ces bes aes2~
  | aes4 ges2.
  | f8 ees~ ees4 d ces~
  | ces bes aes2
  %5
  | ges2. f8 ees~
  | ees4 d4. s4.
  | s1
  | s4 aes'2 \once\override Voice.Rest.X-offset = #0.6 a4\rest
  | \stemNeutral\slurDown des, <aes'' ces> des, ges,(
  %10
  | <c' ees bes'>) f,( <c' ees a>) f,,(
  | f,) bes''^( a) f,(
  | f,)\stemDown  ges''_( f) aes_(
  | ges f) ees2~
  | ees4 d cis \slurNeutral
    \once\shape #'((0 . 1) (0 . 0) (0 . 0) (0 . -1)) Slur
    cis(
  %15
  | \stemUp fis' eis) \stemDown
    \once\shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . -1)) Slur
    cis,( \stemUp e'
  | d) \once\stemDown
    \once\shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . -1)) Slur
    cis,( d' cis)
  | \once\stemDown
    \once\shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . -1)) Slur
    cis,( cis' b) \once\stemDown c,(
  | e' a,) \once\stemDown b, b\rest
  | \clef treble \time 3/4 fis''8 cis' b b, \clef bass \once\stemDown c,4(
  %20
  | \time 4/4 e' a,) \once\stemDown b, b\rest
  | \clef treble \time 3/4 fis''8 cis' b b, \clef bass \once\stemDown c,4
  | \time 4/4 \stemDown b
    \once\shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . 2)) Slur
    <d gis>( fis' <cis, gis' b>~\arpeggio
  | <gis' b>) r r d
  | cis
    \once\shape #'((0 . 0.5) (0 . -0.5) (0 . -0.5) (0 . 2)) Slur
    <fes bes>( aes'! <ees,! bes'! des!>^~\arpeggio
  %25
  | \time 5/4 <bes' des>) r2. des4
  | \time 4/4 ces bes aes2~
  | aes4 ges2.
  | f8 ees~ ees4 d ces~
  | ces2 bes
  %30
  | <aes ees'>4 a\rest aes'2
  | \stemNeutral <ges, bes'>\arpeggio
    \once\shape #'((0 . 3) (0 . 2) (0 . 1) (0 . 0)) Slur
    bes,4( <aes'' fes'>)
  | q( bes,) <fes' ces'>( bes,)
  | <bes, bes'>( <ces'' aes'>) <aes fes'>( bes,)
  | <fes' ces'>( bes,) <bes, bes'>( <aes'' fes'>)
  %35
  | <fes ces'>( <bes,, bes'>) <fes''( ces' fes>( <bes,, bes'>)
  | <f'' ces' f>( <bes,, bes'>) <ges'' ces ges'>( <bes,, bes'>)
  | <f'' ces' f>( <bes,, bes'>) <aes'' bes ges' bes>( <bes,, bes'>)
  | ees,8[( ees'_\markup { "pesante" } ges' bes,^\markup { "affett." } bes' ees,^~)] ees4
  | ees,,8[( ees' bes' ees~)] ees2
  %40
  | ees,8 ees' bes' c~ <c ges'>4 <bes aes'!>\arpeggio
  | ees,,,8[( ees' ges' bes, bes' ees,^~)] ees4
  | ees,,8[( ees' bes' ees~)] ees2
  | ees,8( ees' bes' c~) <c ges'>4 <bes aes'!>\arpeggio
  | ees,,,8[( ees' ges' bes, bes' ees,_~)] ees4
  %45
  | ces' bes aes2
  | a4 aes2 a4
  | \once\override Beam.positions = #'(3.6 . 8)
    ees,,8[(_\markup { \hspace #-0.5 \musicglyph #"pedal.Ped" } ees' ges' bes, bes' ees, ges' bes,)]
  | \clef treble
    \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <ees bes' ees>1^\fermata^\markup { "ten." }
  \fine
}

centerDynamics = {
  \partial 4 { s4-\markup { \hspace #-9.5 "(rubato)" \dynamic pp } }
  %1
  | s4\< s s\! s-\markup { "rit." }
  | s s\> s2
  | s8 s\! s4-\markup { "rit." } s2\<
  | s8\! s\> s2.
  %5
  | s1\!-\markup { "dim." }
  | s1
  | s1-\markup { "rallent." \dynamic ppp }
  | s1\<
  | s1\!_\markup { "rit." }
  %10
  | s4\< s s\f s\>
  | s1
  | s1\!-\markup { "rit." }
  | s4 s\cresc s\startTextSpan s
  | s s s s\stopTextSpan
  %15
  | s4\f s8 s\> s2
  | s4 s\! s2
  | s8 s-\markup { "dim." } s4 s\< s
  | s s8 s\! s8\f s s\> s
  | s4_\markup { "rit." } s\! s4
  %20
  | s4\ppp\< s s8 s\! s4
  | s4\> s\! s\<
  | s16 s\! s8 s2\< s4\!
  | s4\> s s s8\!\< s
  | s8 s\!
    \once\override Hairpin.rotation = #'(8 -1 0)
    s4\< s s
  %25
  | s\! s s s s\p\<
  | s1
  | s4 s s\! s
  | s\> s s\! s\<
  | s4\!-\markup { "cresc." } s s\> s
  %30
  | s8\! s\< s4 s\! s\>
  | s8 s\! s2.
  | s1*3
  %35
  | s4 s-\markup { "(con pass.)" } s2
  | s4 s-\markup { "cresc" } s s-\markup { "rall." }
  | s4 s s s-\markup { "rall." }
  | s4\ff s s s\f
  | \once\override Hairpin.rotation = #'(10 -1 0) s4\< s2.
  %40
  | s4\!\> s s\! s
  | s-\markup { \hspace #-2 "più" \dynamic p } s2.
  | \once\override Hairpin.rotation = #'(10 -1 0)
    s4\< s s8 s\! s4
  | s4-\markup { \dynamic p "dim." } s\> s\! s
  | s4\pp\< s s8 s\! s4
  %45
  | s4\< s s\! s
  | s1
  | s16 s8.\pp s2.

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
    title = "Prelude VIII"
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
