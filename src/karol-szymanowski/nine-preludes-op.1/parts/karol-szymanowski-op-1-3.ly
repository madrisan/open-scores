Global = {
  \key des \major
  \time 3/4
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
  \tempo \markup { Andantino }
  %1
  | aes8^\markup { "legato" } \( bes4 g8 aes[ des~]
  | des ees4 c8 des[ ees~]
  | ees f4 bes,8 c[ des]
  | aes2 ges8 aes\)
  %5
  | aes\( bes4 g8 aes \tieNeutral <des, des'>~
  | q <ees ees'>4 <c c'>8 <aes aes'>4~
  | q8 <g g'>4 <aes aes'>8~ q4~
  | q2 <ees' aes>4\)
  | \tieUp aes8\( bes~ bes4 c
  %10
  | des8 f4 ees8 bes4\)
  | a\( ges f
  | g8 a bes2\)
  | aes8\( f4 g8 f[ g]
  | aes \slashedGrace ees' des4 bes8 f[ g]\)
  %15
  | aes\( bes4 c8 des[ bes]
  | aes bes4 c8 ees[ c]\)
  | aes^\markup { "a tempo" }\( bes4 g8 aes[ des~]
  | des ees4 c8 des[ ees~]
  | ees f4 bes,8 c[ des]
  %20
  | aes2 ges8 aes\)
  | aes\( bes4 g8 aes[ \tieNeutral <des, des'>~]
  | q8 <ees ees'>4 <c c'>8 <aes aes'>[ f'^~]
  | <aes, f'> <g g'>4 <aes aes'>8 c[ f]
  | <ges, ees'>4~ \stemDown ges8 f_~ f4
  %25
  | \hideNotes \noshift b2.\)\unHideNotes
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \grayTextColor
  \stemDown\tieDown
  %1
  | c4\rest c\rest aes'~
  | aes2 ges4
  | aes4. bes8 ees,4
  | ees c c
  %5
  | des2 aes'4
  | ges g ees8 f
  | des2^~ \override Beam.positions = #'(-6 . -6) des8 des~
  | \override Beam.positions = #'(-5.2 . -5.7) des bes \revert Beam.positions c2
  | aes'4_~^\markup { "a tempo" } aes8 ges~ ges4
  %10
  | f ges ees~
  | ees2 c4
  | f8[ ees~] ees des4 ees8~
  | ees2 des4
  | ees des des
  %15
  | c8 ees4 ees8 f[ f]
  | c8 ees4 ees8 ges[ aes]
  | \staffUpper\stemDown f4 e2_(
  | \staffLower\stemUp e4) \showStaffSwitch \staffUpper\stemDown ees^( \hideStaffSwitch \staffLower\stemUp ees)
  | \showStaffSwitch des \staffUpper\stemDown <g, des'> ees'
  %20
  | des \once\stemUp c c \hideStaffSwitch
  | \staffLower\stemUp f, \showStaffSwitch\staffUpper\stemDown fes \staffLower\stemUp ees8 f
  | s4 ees c8 des
  | f4 \staffUpper\stemDown e c'
  | \hideStaffSwitch des8 c \staffLower s4 \stemUp des,^~
  %25
  | \hideNotes des2. \unHideNotes
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  %1
  | \clef treble f4^\markup { "legato" } e2~
  | e4 ees2
  | \clef bass des2 beses4
  | aes8 bes c4 bes8^\markup { "rit." } aes
  %5
  | f4 e4. f8~
  | f4 ees~ ees8 des~
  | des4 ees4. f8
  | des4 d8 ees4 aes8
  | des2~ des8 c
  %10
  | bes2 b8 c~
  | c des4 aes8 a[ c]
  | bes c f,4 fes8 ees
  | aes2 bes4
  | c aes bes
  %15
  | aes8 g4 aes8 bes[ bes]
  | aes g4 aes8 c[ ees]
  | s2.
  | \staffUpper \stemDown aes2 ges4
  | aes4. bes8 \staffLower\stemUp beses,4
  %20
  | aes8[ \staffUpper\stemDown bes] c4 \staffLower\stemUp bes8 aes
  | \staffUpper\stemDown des2 aes'4
  | ges g
    << {
      \stemDown ees8 <aes, f'>
  |   des2 s4
    } \\ {
      \omit Flag \omit Stem \autoBeamOff \hideNotes \noshift aes8~ aes~
   |  aes4 s2 \unHideNotes \autoBeamOn
    } >>
  | \stemUp s4 <aes des>2~
  %25
  | \noshift <f aes des>2.\fermata
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurNeutral\tieDown
  \omit TupletBracket
  %1
  | des2 c4
  | bes2 beses4
  | aes g ges
  | f4. ees8~ ees4
  %5
  | des2 c4
  | bes2 c8 des
  | bes2 aes4~
  | aes2.
  | r8 ges'4 ees a8
  %10
  | des,4 ees ges~
  | ges f ees
  | des8 c bes2
  | c4 des fes8 ees
  | ees4 bes e
  %15
  | f8 ees des[ c] bes des
  | f ees des[ c] \once\override Arpeggio.positions = #'(-2 . 3.5) aes\arpeggio aes'
  | \stemNeutral <aes des>4 <aes,, aes'>^^_\markup { "vibr. (quasi campana)" } c''
  | bes <aes,, aes'>^^ beses''
  | aes <aes,, aes'>_^ ges''!
  %20
  | << {
      f <aes,, aes'>8_^ ees''~ ees4
    } {
      s2 \stemDown aes,4
    } >>
  | des \once\stemUp <aes, aes'>_^ c'
  | <bes bes'> \once\override Arpeggio.positions = #'(-6 . 1) <aes, aes'>_^\arpeggio s
  | s \stemUp <aes aes'>_^ ees''8 aes
  | <des,, aes'>2.~
  %25
  | \noshift <des aes' des>2.\fermata
  \fine
}

centerDynamics = {
  %1
  | s4\pp\< s s
  | s2.
  | s8 s\!\> s4 s
  | s s\! s
  %5
  | s4\< s2
  | s4\! s\> s
  | s2.
  | s4\! s\ppp s^\markup { \hspace #-2 "rall." }
  | s4\p\< s2
  %10
  | s4\!-\markup { "cresc. rit." } s2
  | s4\> s2
  | s4\!\< s\!\>^\markup { \hspace #4 "rit." } s
  | s\!\< s s
  | s16 s8.\! s4-\markup { \hspace #2 "rit." } s
  %15
  | s4\< s\!\> s
  | s\!\pp\< s8 s\!-\markup { \hspace #2 "rall." } s4
  | s4\pp\< s2
  | s2.
  | s16 s8.\! s4 s4\>
  %20
  | s4 s8 s\! s-\markup { "rit." } s
  | s4\< s2
  | s8 s\! s s\> s4
  | s2.-\markup { "rall." }
  | s4 s\!\ppp s
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
    title = "Prelude III"
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
