Global = {
  \key aes \major
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #4
  \override Rest.staff-position = #0
  %1
  | s1*2
  | a'8\rest aes g c f, g16 aes bes8 bes,
  | ees f16 g aes4~ aes16 bes g aes f g aes bes
  | g f g aes bes aes g bes aes g f ees des c des ees
  %5
  | c8 ees aes4 g ges
  | f fes ees8 aes4 g8
  | aes8 b\rest b4\rest c2\rest
  | s1*13
  %22
  | f,8\rest ees c f bes, c16 des ees8 ees,
  | aes8 bes16 c des4~ des16 ees c des bes c des ees
  | c8 e f4 e ees
  %25
  | d des c8 f4 ees8~
  | ees ees, d[ d'~] d d,! c[ c'~]
  | c c, b[ b'] c16 b c d ees d c ees
  | d c d ees f ees d f e d e f g f e g
  | f8 c f2 e8 ees~
  %30
  | ees c'16 bes a g f ees des4 f8\rest des
  | ees8 ges c, f bes, c'\rest b4\rest
  | g4\rest bes, ~bes16 bes aes ges! f ges aes f
  | ges aes ges f ees f ges ees f8 ges! aes f
  | bes[ d] ees8. f16 des8 c bes ees
  %35
  | c f des ges c, des16 ees f8 f,
  | bes c16 des ees4~ ees16 f des ees c des ees f
  | bes,4 c des2
  | c4 ces bes beses~
  | beses8 aes~ <fes aes>4~ q8 g! aes bes
  %40
  | c! d! ees16 fes des ees ces des ees fes! des ees ces! des
  | bes ees f g aes4~ aes16 aes g f g8 ges~
  | ges16 ges f ees f8 fes ees2~
  | ees16 ees d! c d8 des~ des16 des c bes c8 ces
  | bes c! des!4~ des4. c8
  %45
  | <beses des>4 g'\rest fes g\rest
  | g! g\rest bes\fermata b16\rest des, c bes
  | c aes bes c des ees f g aes ees f des c f d! ees
  | aes,8. f32 g g8.\prall f32 g aes8. bes16 c8. d16
    \break
  | ees2~ ees8 des16 c bes g aes8
  %50
  | bes aes4 g8 <aes, c ees aes>2
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  %1
  | \stemNeutral\tieNeutral r8 ees c f bes, c16 des ees8 ees,
  | aes8 bes16 c des4~ des16 ees c des bes c des ees
  | \stemDown\tieDown c bes c d ees4 d! des
  | c ces bes8 ees4 d8
  %5
  | ees bes g c f, g16 aes bes4~
  | bes16 bes aes g aes ees' des c des ees des c bes des c bes
  | c des c bes aes ces bes aes g!8 ees' des bes
  | ees16 f ees des \stemUp\tieUp c bes aes g aes bes aes g f g ees f
  | g aes g f ees ges f ees d8 bes' aes f
  %10
  | g8 bes ees2 d8 des~
  | des bes'16 aes g f ees des c4 f8\rest c
  | des f bes, ees aes, c'\rest b4\rest
  | f8\rest f16 ees des c bes aes g aes f g aes g aes8~
  | aes16 g aes bes g f ges8~ ges16 f ges! ees f g! aes f
  %15
  | g8 aes4 g8~ g e f4~
  | f e f8 aes g c
  | f, g16 aes bes8 bes, ees f16 g aes4~
  | aes16 bes g aes f g aes bes g8 ees aes4
  | g ges f fes
  %20
  | ees8 aes4 ges8~ ges16 aes f ges! ees f ges aes
  | f8 bes4 aes8~ aes16 bes g! aes f g aes bes
  | g4 \stemDown\tieDown e8\rest f g4 g8\rest \once\override NoteColumn.force-hshift = #1.4 aes
  | aes e\rest e\rest bes'~ bes aes f ees~
  | ees c' aes des g, aes16 bes c8 \change Staff = "lower" \once\stemUp c,
  %25
  | \change Staff = "upper" f8 g16 aes bes4~ bes16 c aes bes g aes bes c
  | aes bes g aes f g aes bes g aes f g ees f g aes
  | f g ees f d ees f g ees4 \change Staff = "lower" \stemUp g8\rest ees
  | f[ aes d, g] c, d'\rest c4\rest
  | g16\rest e f \change Staff = "upper" \stemDown g
    aes g \change Staff = "lower" \once\stemUp f \change Staff = "upper" aes
    g \change Staff = "lower" \once\stemUp f \change Staff = "upper" g aes bes aes g bes
  %30
  | a g a bes c bes a c bes8 f bes4~
  | bes a8 aes~ aes f'16 ees d c bes aes
  | ges aes ges f ees f ges ees f ges f ees d ees f d
  | ees f ees des c d ees c d8 ees4 d8
  | ees[ aes ges c] f, e\rest e\rest ges
  %35
  | f g\rest bes4 a! aes
  | g! ges f8 bes4 aes8
  | ges4. ees8 aes16 ges! f aes ges aes ges f
  | ees f ges ees f ges f ees des ees f des ees fes ees des
  | \stemUp \shiftOn c4 s4. ees4 ees8
  %40
  | \stemDown aes f! ges g aes16 bes ges aes f! g! aes bes
  | g4 r16 ees' d c d8 bes~ bes16 des c bes
  | c8 aes~ aes16 ces bes aes g!8 aes bes g
  | aes f~ f16 aes g f g8 ees~ ees16 bes' aes ges
  | f8 beses <fes aes>[ <des! fes!>] <ees beses'!>[ <fes aes> <ges beses!> <ees aes>]
  %45
  | s4 a\rest <beses! des> a\rest
  | <des fes> a\rest <bes des ees> e,\rest
  | e2\rest g4\rest e8\rest \change Staff = "lower" \stemUp bes
  | c ces bes des
    \override Beam.positions = #'(6.5 . 6.8)
    \once\override NoteColumn.force-hshift = #-0.2 c16
    \change Staff = "upper" \stemDown f8.~
    \stemUp \override Beam.positions = #'(2.5 . 2.8) f16 ees aes8
    \revert Beam.positions
  | \once\stemDown bes4 beses aes \stemDown s4
  | \stemUp ees2 s
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \grayTextColor
  \showStaffSwitch
  %1
  | s1*5
  %6
  | r8 ees c f bes, c16 des ees8 ees,
  | aes8 bes16 c des4~ des16 ees c des bes c des ees
  | \stemUp\tieUp c bes c ees ees4 \change Staff = "upper" \stemDown\tieDown d des
  | c ces bes8 ees4 d!8
  %10
  | ees4 e8\rest g aes c f, bes
  | ees, e\rest e4\rest e8\rest ees aes4~
  | aes g8 ges~ ges ees'16 des c bes aes ges!
  | f8 f\rest e4\rest b\rest ees
  | d des c ces
  %15
  | bes8 ees des bes c16 des bes c aes bes c des
  | g,2 aes8 a\rest a4\rest
  | s1
  | c2\rest b8\rest ees c f
  | bes, c16 des
    \hideStaffSwitch
    ees8 \change Staff = "lower" \once\stemUp ees,
    \showStaffSwitch
    \change Staff = "upper" \stemDown\tieDown aes8 bes16 c des4~
  %20
  | des16 ees c des bes c des ees c8 des4 c8~
  | c16 ees des ees c des ees f d8 ees4 des8~
  | \hideStaffSwitch
    des16 \change Staff = "lower" \stemUp\tieUp des c bes aes bes c d ees f ees des c ees des c
    \showStaffSwitch
  | des ees des c bes ces aes bes g!8 aes4 g8~
  | g a\rest c16\rest f, g aes bes8 g'\rest f4\rest
  | s1*7
  %32
  | c8\rest bes ges ces f, ges!16 aes bes8 bes,
  | \stemNeutral ees f16 ges aes4~ aes16 bes ges! aes f ges aes bes
  | ges aes f ges ees f g! a bes c aes bes g a bes c
  %35
  | a f g a bes c des ees f ges f ees d bes c d
  | ees f ees des! c a! bes c des8 bes f'4~
  | \stemUp f16 f ees des ees des c bes aes8[ des] bes c\rest
  | c c\rest aes c\rest bes c\rest e4\rest
  | \hideStaffSwitch
    \change Staff = "upper" \stemDown\tieDown f,8\rest ees'~ ees[ aes,] des[ bes] ces a\rest
  %40
  | s1
  | \change Staff = "lower" \stemUp\tieUp a8\rest ees' c f bes, c16 d ees8 ees,
  | aes8 bes16 c des4~ des16 ees c des bes c des ees
  | c4 bes~ bes aes16 ges' f ees
  | \override Beam.positions = #'(5.7 . 6.2)
    d8[ \change Staff = "upper" \stemDown\tieDown \once\override NoteColumn.force-hshift = #-0.5 ees] s2.
    \revert Beam.positions
  %45
  | fes4 b,\rest s b\rest
  | s b\rest s \change Staff = "lower" \stemUp\tieUp c\rest
  | d2\rest d4\rest d8\rest \once\override NoteColumn.force-hshift = #1.1 aes
  | \override NoteColumn.force-hshift = #0.6 aes4 g8 bes aes[ \revert NoteColumn.force-hshift des]
    << aes4 \\ { \stemUp \once\override NoteColumn.force-hshift = #-0.5 c8 f } >>
  | \once\override NoteColumn.force-hshift = #0 bes,8 c16 des
    \change Staff = "upper" \stemDown ees8 \change Staff = "lower" \stemUp ees,
    \showStaffSwitch
    \override NoteColumn.force-hshift = #0 aes bes16 c \change Staff = "upper" \stemDown\tieDown des4~
  %50
  | des16 ees c des bes c des ees s2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*5
  | s1*2
  %8
  | r8 aes g c f, g16 aes bes8 bes,
  | \stemNeutral\tieNeutral ees f16 g aes4~ aes16 bes g! aes f g aes bes
  %10
  | ees, d ees f g f ees g f ees f g aes g f aes
  | g f g aes bes aes g bes aes g aes bes c bes aes c
  | bes aes bes c des c bes des c bes c des ees des c ees
  | des c des ees f ees des f ees8 ees, c f
  | bes, c16 d ees8 ees, aes bes16 c des4~
  %15
  | des16 ees c des bes c des ees aes,8 c des aes
  | bes16 c aes bes g aes bes c f, c' f8~ f16 ees des c
  | des c' bes aes g f ees des c bes' aes g f ees d c
  | bes8 ees4 des8~ des16 c des ees f ees des c
  | \stemDown\tieDown des f ees des c des ees8~ ees16 ees des c \stemNeutral\tieNeutral bes ces aes bes
  %20
  | g8 aes des ees aes bes ges aes
  | des, ges ees f bes c aes bes
  | ees,4 aes g ges
  | f fes ees8 f! des ees
  | \stemDown\tieDown aes,16 c bes aes des4~ des16 des' c bes a bes c a
  %25
  | bes c bes aes g aes bes g aes8 des bes c
  | f,4 r8 bes ees,4 r8 aes
  | d, f g g, c[ g'] c4~
  | c b8 bes~ bes g'16 f e d c bes
  | aes4 r8 aes bes des g, c
  %30
  | \stemNeutral\tieNeutral f,8 r r4 r16 a, bes c des c bes des
  | c bes c des ees des c ees d c d ees f ees d f
  | ees4 g,\rest g2\rest
  | s1*4
  %37
  | \stemDown\tieDown b4\rest b8\rest aes' f bes ees, f16 ges
  | aes8 aes, des ees16 f ges4~ ges16 aes
    \once\omit Accidental
    fes^\markup {
      \concat \small \normal-text {
         \hspace #0.3 \raise #0
         \musicglyph #"accidentals.flat"
      }
    }
    ges
  | \stemNeutral ees
    \once\omit Accidental
    fes^\markup {
      \concat \small \normal-text {
         \hspace #0.3 \raise #0
         \musicglyph #"accidentals.flat"
      }
    }
    ges aes des, ees ces des bes ces des ees aes, bes ges aes
  %40
  | f! ges aes bes ees,8 r r2
  | \override MultiMeasureRest.staff-position = #-4
    R1
  | \stemDown g2\rest b8\rest aes' g c
  | f, g16 aes bes8 bes, ees f16 g aes4~
  | aes16 bes ges aes fes ges! aes beses ges aes fes ges ees fes ges! aes
  %45
  | \stemNeutral des, des' ces des beses des fes, beses des, beses'! aes beses fes! beses des, fes
  | bes,! fes' ees fes des fes bes, des g,4\fermata b16\rest ees f! g
  | aes c bes aes g f ees des \stemDown c8 des ees f
  | ees d ees e f8. g16 aes8 f
  << {
  | \stemDown ees4 g,8\rest c
    \stemDown des4 g,16\rest bes ces des
  %50
  | g,8 aes ees4 aes2
  } \\ {
    \stemUp\tieUp \once\override NoteColumn.force-hshift = #0.6 g'4 ges
    \once\override NoteColumn.force-hshift = #0.6 f4 fes
    ees2~ ees
  } \\ {
    s2. r8 aes
  } >>
    \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 886"
    title = \markup { "Fuga XVII (BWV 886)" }
    subtitle = "Das wohltemperierte Klavier – Zweiter Teil"
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 90
  }
}
