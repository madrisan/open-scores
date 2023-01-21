\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 13\mm
  first-page-number = 0
  indent = 0.0
  line-width = 16.8\cm
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  %system-system-spacing = #'((basic-distance . 2) (padding . 10))
  top-margin = 13\mm
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "davide.madrisan@gmail.com"
  }

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #28 \bold "Ich ruf zu dir, Herr Jesu Christ" }
        \null
        \line { \abs-fontsize #18 "(I call on Thee, Lord Jesus Christ)" }
        \null\null\null
        \line { \abs-fontsize #24 \bold "Chorale Prelude BWV 639" }
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #18 \italic "arranged for Piano Solo by" }
        \null\null
        \line { \abs-fontsize #36 \bold "Ferruccio Busoni" }
        \null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key aes \major
  \time 4/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

calando = { \override TextSpanner.bound-details.left.text = \markup { \italic\small "calando " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \override TupletBracket.bracket-visibility = ##f
  \set baseMoment = #(ly:make-moment 1/16)
  \set breathMarkType = #'caesura
  \tempo \markup {
    \column {
      \line { "Andante" }
      \line { \italic\small { \roman "Mit andacht" } }
      \general-align #Y #-1
      \line { \hspace #2 \small "Die Oberstimme sehr ausdrucksvoll und gehalten" }
      \general-align #Y #-2
      \line { \hspace #2 \italic\small "Molto espressivo e tenuto il canto" }
    }
  }
  \partial 4
    c4
  %1
  | aes4 bes aes8. g16 f8. g16
  | aes16[ bes aes bes]
    \set subdivideBeams = ##t
    \tuplet 3/2 { c32[( bes c } \tuplet 3/2 { bes c bes } \tuplet 3/2 { c bes] r) } aes32[( bes]
    \set subdivideBeams = ##f
    c4) c8.( des16
  | ees4) \appoggiatura des16 c8.[ bes16] aes4 bes8[ c]
  | des4~ des16[^\markup { \tiny\italic "poco slentando" }
    ees32 f des16 c] c4\fermata c4
  %5
  | aes4 bes aes8. g16 f8. g16
  | aes16[ bes aes bes]
    \set subdivideBeams = ##t
    \tuplet 3/2 { c32[( bes c } \tuplet 3/2 { bes c bes } \tuplet 3/2 { c bes] r) } aes32[( bes]
    \set subdivideBeams = ##f
    c4) c8.des16
  | ees4 \appoggiatura des16 c8.[ bes16] aes4 bes8[ c]
  | des4~ des16[ ees32 f des16 c] c4\fermata ees4
  | f4 ees8_~[ \grace { ees16[ des ees] } des32 c des16] c8[ bes aes bes]
  % 10
  | c4 bes aes\fermata <c, c'>^-
  | c'^- <c, c'>^- <bes bes'>^- <aes aes'>^-
  | <g g'>2^- <f f'>\fermata_\pp
  | <aes aes'>4^- <g g'>^- <f f'>2^-
  | <ees ees'>2.^- ees'4^\markup { \italic\small "poco aumentando" }
  % 15
  | aes aes bes bes
  | c2.^\markup { \italic\small "ten." }\calando <des, des'>4^-\startTextSpan
  | <c c'>^- <bes bes'>^- <aes aes'>^- <f f'>8.^-[ g'16]\stopTextSpan
  | <aes, aes'>4^- <g g'>^- <f aes f'>
    \clef bass ees!^\markup { \italic\small "più oscuro, ma sempre calando" }
  | aes aes bes bes
  %20
  | c2. <des, des'>4
  | <c c'> <bes bes'> <aes aes'> f'8.[ g16]
  | \stemDown <aes, d! aes'>4^-\pp <bes! des g>^- \stemUp <a! c f>2^-
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \slurUp\tieUp
  \partial 4
    \once\override Arpeggio.positions = #'(-4.5 . 0.5)
    aes16(\arpeggio_\markup {
      \column {
        \line { \hspace #-2 \tiny "leise und gebunden" }
        \general-align #Y #-2
        \line { \hspace #-2 \italic\tiny "sotto voce e legato" }
      }
    }
    [ c f e!)]
  %1
  | f[ c aes \bottom\stemUp f]
    \top\stemDown g[ bes des c]
    \bottom\stemUp f,[ \top\stemDown aes c bes]
    aes[ \bottom\stemUp f \top\stemDown aes c]
  | f[ e! f aes] g[_( f e f])
    e![ c \bottom\stemUp g bes]
    \once\override Beam.positions = #'(4.5 . 5.5)
    aes[ \top\stemDown c f aes]
  | g[ ees aes g] aes[ ees f ges] f[ des f aes] g![ des c ges'!]
  | f[ \bottom\stemUp bes, \top\stemDown des f]
    bes[ aes g aes] g[ c, e! bes]
    \once\override Arpeggio.positions = #'(-4.5 . 0.5)
    aes[\arpeggio c f e]
  %5
  | f[ c aes \bottom\stemUp f] \top\stemDown g[ bes des c]
    \bottom\stemUp f,[ \top\stemDown aes c bes] aes[ \bottom\stemUp f \top\stemDown aes c]
  | f16[ e! f aes] g[_( f e f])
    e[ c \bottom\stemUp g bes]
    \once\override Beam.positions = #'(4.5 . 5.5)
    aes[ \top\stemDown c f aes]
  | g[ ees aes g] aes[ ees f ges] f[ des f aes] g![ des c ges']
  | f[ \bottom\stemUp bes, \top\stemDown des f] bes[ aes g aes]
    g[ bes, aes f']\breathe \bottom\stemUp
    g,[^\markup {
      \column {
        \line { \hspace #-1 \tiny "etwas heller" }
        \general-align #Y #-2
        \line { \hspace #-1 \tiny\italic "poco più sonoro" }
      }
    }
    des' aes c]
  | aes[ c bes des] bes[_( des \top\stemDown aes' g])
    aes[ ees des g] c,[ f \shiftOn aes g]
  % 10
  | aes[ ees aes, ges'] f[ aes, g! des']
    c[ aes c ees]_\markup { \hspace #1 \italic "più" \dynamic p }
    \tweak X-offset -0.5 g16\rest g![ bes, g']
  | \once\override Arpeggio.positions = #'(-4.5 . 0.5)
    a,![\arpeggio c f g] a![ f ees a]
    \once\override NoteColumn.force-hshift = #-0.3 des,[ g aes g]
    \once\override NoteColumn.force-hshift = #-0.4 c,[ f g f]
  | des[ f g f] e![ bes des c] aes[ c f e!] f[ c aes f]
  | \once\override NoteColumn.force-hshift = #-0.4 bes[ f' g f]
    \once\override NoteColumn.force-hshift = #-0.4 bes,[ ees f ees]
    \once\override NoteColumn.force-hshift = #-0.4 c[ ees f ees]
    d![ g, b! d]
  | \once\override NoteColumn.force-hshift = #-0.4 g,[ c ees des]
    g,[ bes des c] ees,[ aes c bes] des[ bes ees, des']
  % 15
  | \bottom\stemUp
    \shape #'((0.3 . 0.8) (0 . 0.8) (0 . 0) (0 . 0)) Slur
    f,[_( \top\stemDown aes des c])
    \bottom\stemUp
    \shape #'((0.3 . 0.8) (0 . 0.8) (0 . 0) (0 . 0)) Slur
    f,[_( \top\stemDown aes c bes])
    \bottom\stemUp
    \shape #'((0.5 . 0.8) (0 . 1) (0 . 0.6) (0 . 0)) PhrasingSlur
    f[_\( \top\stemDown aes bes aes_(]\)
    \once\override Arpeggio.positions = #'(-4.5 . 0.5)
    g[\arpeggio) bes des c~]
  | c16 s8. s2
    \bottom\stemUp bes16[ \top\stemDown g'! \bottom\stemUp aes, \top\stemDown f']
  | \bottom\stemUp g,[ \top\stemDown e'! f ees]
    \bottom\stemUp f,[ \top\stemDown des' ees des]
    \bottom\stemUp ees,[ \top\stemDown c' des c]
    \once\override NoteColumn.force-hshift = #-0.4 bes16[ aes g8]
  | d'!16[ f g f] e![ des bes! g]
    \bottom\stemUp f,[ c' aes f]
    \top\stemDown des'16[-\markup { \hspace #0.6 \italic\small "molto legato" }
    \bottom\stemUp bes ees, des']
  | f,[ aes des c] \top\stemDown f[ \bottom\stemUp aes, c bes]
    \top\stemDown f'[ \bottom\stemUp aes, bes aes] \top\stemDown ees'4_~
  %20
  | ees8 s s2 g,16\rest g'!8[( f16])
  | \slurDown f,16\rest e'![( f ees]) e,16\rest des'![( ees des])
    d,16\rest c'![^( des c] bes[ aes \bottom\stemUp g f])
  | s1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \slurDown
  \partial 4
    s4
  %1
  | \autoBeamOff
    \once\omit Dots \once\omit Flag \once\omit Stem f,8
    \once\hide Flag \once\hide Stem f,16(
    \once\override NoteColumn.force-hshift = #0 \once\omit Flag f'~)
    \once\omit Flag \once\omit Stem f8 s
    s4
    \once\hide Flag \once\hide Stem
    f,16^(
    \once\override NoteColumn.force-hshift = #0
    \once\omit Flag f') s8
  | s1
  | s1
  | \once\hide Flag \once\hide Stem bes,16(
    \once\override NoteColumn.force-hshift = #0 \once\hide Flag \once\hide Stem bes')
    s8 s2.
    \autoBeamOn
  %5
  | s1
  | aes,4
    \shape #'((0 . -0.5) (0 . -0.3) (0 . -0.3) (-0.5 . -0.5)) Tie
    g~ g s
  | s1
  | s8 f'[ des bes] c[ c] s4
  | s1
  %10
  | s1
  | \top\stemUp s16 c'8 s16 s2.
  | s1*4
  %16
  | \bottom\stemUp aes16[\( \top\stemDown c\< ees aes]
    ees[ bes' c\! bes]%_\markup { \italic\tiny "poco" }
    a![\> ees ges\! \bottom\stemUp a,!]\)^(
    \stemDown \once\override NoteColumn.force-hshift = #0 \once\omit Stem bes4)
  | \autoBeamOff
    \tieDown
    s8 \once\omit Flag \once\omit Stem aes,~ <aes des>
    \once\omit Flag \once\omit Stem g~ <g c>
    s s8
    \stemUp \once\omit Flag \once\omit Stem des'16( f)
    \autoBeamOn
  | s1
  | s2. g,16[ bes des c]
  %20
  | \shape #'((0 . -1) (0 . -1.5) (0 . 1) (0 . 1)) Slur
    aes16[^( c \top\stemDown ees aes] ees[ bes' c bes]
    a![ ees ges \bottom\stemUp\slurUp\tieUp a,!]) s4
  | g8[( aes]) f[( g]) ees![( f~]) f s
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Staff.SustainPedalLineSpanner.outside-staff-priority = #1000
  \override Staff.SustainPedalLineSpanner.staff-padding = #8
  \stemUp
  \partial 4
    <f, f'>8_-[(_\markup {
      \column {
        \line { \italic\small "Con Pedale" }
        \general-align #Y #-1
        \line { \hspace #2 \tiny "Der Baß weich and getragen" }
        \general-align #Y #-3
        \line { \hspace #2 \italic\tiny "Il basso dolce e sostenuto" }
      }
    }
    <f f'>])_-
  %1
  | \stemDown
    <f' f'>[ f] <f f'>[ <e! e'!>] <f f'>[ <f f'> f <ees ees'>]
  | <des des'>8[ <des des'> <des des'> <des des'>]
    <c c'> c' f\sustainOn <f, f'>\tweak X-offset 4 \sustainOff
  | <c' c'>[ <c c'> <c c'> <c c'>] <c c'>[ <c c'>] <bes bes'>[ <a! a'!>]
  | bes[ <aes aes'> <g g'> <f f'>]
    \stemUp <e! e'!>[ <c c'>]
    <f, c' f>[^\markup { \tiny\italic "più dolce" }_\markup { \tiny "sehr weich" }
    <f c' f>]
  %5
  | \stemDown <f' c' f>[ <f c'>] <f des' f>[ <e! c' e!>]
    <f c' f>[ <f c' f>] <f c'>[ <ees c' ees>]
  | <des des'>[ <des des'> <des des'> <des des'>]
    <c c'>[ c'] <f, c' aes'>[ <f' aes>]
  | <c g' c>[ <c aes' c> <c aes' c> <c aes' c>]
    <c aes' c>[ <c aes' c> <bes g' bes> <a! ges' a!>]
  | <bes f'>[ <aes aes'> <g g'> <f f'>] <e! e'!>[ <f f'>] c'^-[( c^-])
  | des des ees ees <aes, aes'> <ees ees'> <f f'> <des des'>
  % 10
  | \stemUp
    <ees ees'>[ <c c'> <des des'> <ees ees'>] <aes, aes'>[ <aes aes'>] <e! e'!>[ <e e'>]
  | <f f'>[ <f f'> <f' f'> <f f'>] <f f'>[ <e! e'> <f f'> <des des'>]
  | <bes bes'>[ <g g'> <c c'> q] <des f aes des>\ppp[ q q q]
  | <d! bes' d!>[ q] <ees bes' ees>[ q] <a,! f' a!>[ q] <b! g' b!>[ q]
  | <c g' c>[ q] <bes ees bes'>[ q] <aes ees' aes>[ q] <g ees' g>[ q]
  % 15
  | \stemDown <f' aes c f>[ q] <ees aes c f>[ q] <d! aes' bes f'>[ q] <ees bes' ees>[ q]
  | <aes c ees aes>[ q] <ges c ees ges>[ q] <f c' ees f>[ <f c' ees>]
    <bes f' bes>[ <bes f' aes!>]
  | <bes e!>8 <aes, aes'>4_-( <g g'>_- <f f'>8_.) <des' des'>[ q]
  | \stemUp <b! b'!>[ q] <c c'>[ q] \stemDown f4 g8 g
  | f[ f] ees[ ees] d![ d] ees[ ees]
  %20
  | aes[ aes] <ges c>([ <ges c>]) <f c'>[( <f c'>]) \stemUp bes[( aes!])
  | \stemDown bes,[ aes~] aes[ g~] g[ f] des'4
  | \stemUp <b! f' b!>4^- <c e! c'>^- <f, f'>2^-
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
      \Sopran
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
    composer = "Johann Sebastian Bach"
    opus = \markup { "BWV 639" }
    title = \markup { "Ich ruf zu dir, Herr Jesu Christ" }
    subtitle = \markup {
      \column {
        \line { "[" { \italic "I call on Thee, Lord Jesus Christ" } "]" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 35
  }
}
