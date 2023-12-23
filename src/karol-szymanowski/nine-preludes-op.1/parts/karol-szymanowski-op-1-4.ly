Global = {
  \key bes \minor
  \time 2/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
noshift = { \once\override NoteColumn.force-hshift = #0 }
staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurUp\tieUp
  \tempo \markup { Andantino con moto }
  %1
  \repeat volta 2 {
  | bes8^\markup { "(ben marcate le voci)" }\( b c des ees f
  | ees bes c f,4.\)
  | bes8\( b c des ees f
  | ees bes c f,4.\)
  %5
  | ges8\( aes a bes c des\)
  | ees,\( e f ges aes bes\)
  | aes\( ees f bes,4.
  }
  \alternative {
    { <f d'>2.\) \break }
    { <f a>4. r4. }
  }
  %10
  | bes'8\(^\markup { "a tempo" } c d ees f ges
  | f c d c4.~\)
  | c8\( d ees f g aes
  | g d ees d4.\)
  | d8\( ees e f ges aes
  %15
  | g des ees des4 bes!8\)
  | g\( aes a bes ces des
    \noBreak
  | ces ges aes ges4~ <ges aes>8\)
    \break
  | a\(^\markup { "a tempo" } bes ces c des ees
  | des aes bes aes4 fes8\)
  %20
  | \shape #'((0 . 0) (0 . 1.5) (0 . 1.8) (0 . 2)) PhrasingSlur
    ees\( e f ges g aes
  | << {
      ges des' ees
    } \\ {
      \once\omit Flag \once\omit Stem \once\override NoteColumn.force-hshift = #0 ges,8~ ges4
    } >>
    des'4\) des'8~\(
  | des c bes aes g f
  | aes des, ees des4 <des des'>8~\)\(
  | des' c bes aes g f
  %25
  | aes des, ees des4 <ces! ces'!>8~\)\(
  | ces' bes aes ges f ees
  | ges c, des ces4 <ces! ces'!>8~\)\(
  | ces' bes aes ges f ees
  | ges c, des ces4.~
  %30
  | ces8\)\( f, ges f4.
  | bes8 f ges f4.
    \break
  | \tempo \markup { Tempo I }
    bes8\)\( b c des ees f
  | ees bes c! f,4.\)
  | bes8\( b c des ees f
  %35
  | ees bes c\) f,4.
  | ges8\( aes a bes c des\)
  | ees,\( e f ges aes bes\)
  | aes\( ees f bes,4 ees8
  | <f, d'>2.\)
  %40
  | r1*6/8\fermata
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \grayTextColor
  \stemDown\tieDown
  %1
  | g4 ges8 f4 aes8
  | g4 ges8 ees d des
  | g4 ges8 f4 aes8
  | g4 ges8 ees d des
  %5
  | ees4 des8~ des4.
  | ces4. bes
  | c4 ces8 aes g ges
  | s2.
  | s2.
  %10
  | f'4. bes4 \once\override Arpeggio.positions = #'(-3 . 3) ees,8\arpeggio
  | bes'4 a8~ a4.
  | aes4 g8 c4 \once\override Arpeggio.positions = #'(-2.5 . 3.5) f,8\arpeggio
  | c'4 b8~ b4.
  | ces4. ces
  %15
  | ces8 bes beses aes aeses ges
  | fes4 fes8~ fes4 fes8
  | ees4 eeses8 des8 ces4
  | <bes ges'>4. ges'
  | ges8 f fes ees eeses des
  %20
  | ces4 ces8~ ces4 ces8
  | bes8 ges'4 aes8 ges des'
  | f4 e8 c4 aes8
  | des4 ges,8 f ees \staffLower\stemUp des
  | \staffUpper\stemDown f'4 e8 c4 aes8
  %25
  | des4 ges,8 f ees \staffLower\stemUp des!
  | \staffUpper\stemDown ees'4 d8 bes4 ges8
  | ces4 fes,8 ees des \staffLower\stemUp ces
  | \staffUpper\stemDown ees'4 d8 bes4 ges8
  | ces4 fes,8 ees des ces
  %30
  | ees2.
  | ees4. d
  | ees4. des4 aes'8
  | g4 ges8 ees d des
  | g4 ges8 f4 aes8
  %35
  | g4 ges8 ees d des
  | ees4 des8~ des4.
  | ces4. bes
  | c4 ces8 aes g ges
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \omit TupletBracket
  \override VoiceFollower.color = \grayTextColor
  %1
  | s2*10
  %11
  | f8 c' \tuplet 3/2 { ges' f fes }
  | s2
  | g,8 d' \tuplet 3/2 { aes' g ges }
  | ges4 <d aes'>
  %15
  | s2
  | ces8 bes aes aeses
  | ges f \tuplet 3/2 { fes ees eeses }
  | s4 <beses' ees>
  | s2
  %20
  | ges!8 f ees eeses
  | << {
      \once\override NoteColumn.force-hshift = #-1 des
      \once\override NoteColumn.force-hshift = #-1 a'
      bes ges'
    } \\ {
      \autoBeamOff
      \omit Flag \omit Stem
      \once\override NoteColumn.force-hshift = #-1 des,~
      \once\override NoteColumn.force-hshift = #-1 des
      \undo\omit Flag \undo\omit Stem
      \autoBeamOn
      s4
    } >>
  | <c, c'>8 g'' aes c
  | \hideNotes \showStaffSwitch \omit TupletNumber
    \tuplet 3/2 {
      f4 \staffUpper \once\override NoteColumn.force-hshift = #0 ges8
    }
    s4 \hideStaffSwitch \unHideNotes
  | \staffLower <c,,, c'>8 g'' aes c
  %25
  | \hideNotes \showStaffSwitch
    \tuplet 3/2 {
      f4 \staffUpper \once\override NoteColumn.force-hshift = #0 ges8
    }
    s4 \hideStaffSwitch \unHideNotes
  | \staffLower s ees
  | \hideNotes \showStaffSwitch
    \tuplet 3/2 {
      ees4 \staffUpper \once\override NoteColumn.force-hshift = #0 fes8
    }
    s4 \hideStaffSwitch \unHideNotes
  | \staffLower s ees
  | \hideNotes \showStaffSwitch
    \tuplet 3/2 {
      ees4 \staffUpper \once\override NoteColumn.force-hshift = #0 fes8
    }
    s4 \hideStaffSwitch \unHideNotes
  %30
  | \staffLower s4 \undo\omit TupletNumber \tuplet 3/2 { des8 c ces }
  | s4 \tuplet 3/2 { ces8 bes aes }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \omit TupletBracket
  %1
  \repeat volta 2 {
  | ees8\( bes4 ees,8~
  | ees bes f bes,\)
  | ees''\( bes4 ees,8~
  | ees bes f bes,\)
  %5
  | bes'' ees, f bes,
  | ges' ces, des ges,
  | aes ees'4 bes8
  }
  \alternative {
    { bes, f' bes f' }
    { f, c' f c' }
  }
  %10
  | d bes ges c,
  | \tieDown f4~ f
  | ees'8 c aes d,
  | g4~ g
  | ees'8 ges, d' ges,~
  %15
  | <ges des' fes> des4 ges,8
  | \stemDown g\rest ges4 ges8~
  | ges4 g8\rest eeses
  | \stemNeutral <des des'> des' beses' des,~
  | <des aes' ces> aes4 des,8
  %20
  | \stemDown g\rest \once\override Arpeggio.positions = #'(-4 . 2) des4\arpeggio des8~
  | des des'~ des4
  | \once\omit Flag \once\omit Stem \once\override NoteColumn.force-hshift = #0.5 \hideNotes c8~ \unHideNotes
    c4.
  | <ces' f>8 aes des, aes
  | \once\omit Flag \once\omit Stem \once\override NoteColumn.force-hshift = #0.5 \hideNotes c8~ \unHideNotes
    c4.
  %25
  | <ces' f>8 aes des, aes
  | \stemUp <bes, bes'> f'' \stemDown ges bes
  | <beses ees> ges ces, ges
  | \stemUp <bes, bes'> f'' \stemDown ges bes
  | <beses ees> ges ces, ges
  %30
  | \stemUp <bes, bes'> f''~ \once\stemDown \once\omit TupletNumber \tuplet 3/2 f4.
  | bes,8 f'~ \once\stemDown \once\omit TupletNumber \tuplet 3/2 f4.
  | \stemNeutral g8 ges f ees~
  | ees bes f bes,
  | ees'' bes4 ees,8~
  %35
  | ees bes f bes,
  | bes'' ees, f bes,
  | ges' ces, des ges,
  | aes ees'4 bes8
  | bes, f' bes f'^~
  %40
  | f2^\fermata
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-3 \dynamic pp "legatissimo rubato" } s\<
  | s16 s\!\> s8 s4
  | s4\!\< s4
  | s4\!\> s4
  %5
  | \tuplet 3/2 { s8\!\< s s \! } s4-\markup { "rit." }
  | \tuplet 3/2 { s8\< s s \! } s4-\markup { "rit." }
  | \tuplet 3/2 { s8\> s s \! } s4-\markup { "rall." }
  | s4\pp s
  | s2
  %10
  | s4\pp\< s
  | s s\!
  | s4\< s
  | \tuplet 3/2 { s8 s\! s-\markup { "rit." } } s4
  | s4-\markup { \dynamic pp "dolce" } s8\< s
  %15
  | s4\!\> \tuplet 3/2 { s8\! s_\markup { "rit." } s }
  | s4\< \tuplet 3/2 { s8\! s s }
  | s4\> \tuplet 3/2 { s8\! s-\markup { \hspace #-3 "rall." } s }
  | s4\< s
  | \tuplet 3/2 { s8 s\! s\> } s4
  %20
  | s4\!\< s
  | s\! s\<^\markup { "rit." }
  | \tuplet 3/2 { s8\!\f s\< s } s4
  | \tuplet 3/2 {
      s8 s
      \once\override Hairpin.rotation = #'(-15 -1 -5)
      \override Hairpin.Y-offset = #-0.5
      s\!\>
    } s8 s\!
  | s16 s8.\pp 4\<
  %25
  | \tuplet 3/2 { s16 s\! s s\> s8 } s4\!_\markup { "rit." }
  | s4\f\< s
  | \tuplet 3/2 { s8 s s\! } s4
  | s16 s8.\pp 4\<
  | \tuplet 3/2 { s8 s s\! } s4\>
  %30
  | \tuplet 3/2 { s8\!\p s s-\markup { "rit." } } s4
  | s4\> s4\!-\markup { \hspace #2 "rall." }
  | s16 s8.\pp 4\<
  | \tuplet 3/2 { s8 s s\! } s4\>
  | s\!\< s
  %35
  | \tuplet 3/2 { s8\! s s\> } s4
  | s\!\< s
  | s\!\< s
  | s\!-\markup { "rall. e dim." } s
  | s16 s8.\ppp 4
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \set Staff.timeSignatureFraction = 6/8
      \clef treble
      \scaleDurations 2/3 { \Sopran }
      \scaleDurations 2/3 { \Alto }
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
    title = "Prelude IV"
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1

      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14

      % Make the piano staves closer together
      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (padding . 0))

    }
  }
  \midi { \tempo 2=40 }
}
