\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 15\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 17\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  top-margin = 20\mm
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
        \line { \abs-fontsize #30 \bold "Domenico" }
        \null
        \line { \abs-fontsize #75 \bold "Scarlatti" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Sonata in F minor" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 387" }
        \null\null\null
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line \abs-fontsize #12 {
          \concat {
            "Based on the score published by Heugel & C" \super "ie"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key f \minor
  \time 6/8
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tieNeutral\stemNeutral\slurNeutral
  \tempo \markup {
    \bold\concat { "Veloce e fugato" }
  }
  \repeat volta 2 {
  %1
  \partial 4. c'4.
  | f, c
  | f, c''
  | f,\prall c\prall
  | f,\prall aes'
  %5
  | f ees,
  | aes, aes''
  | f\prall ees,\prall
  | aes,\prall ees''
  | <des e!> <des f>
  %10
  | <c g'>4. aes'8\prall g aes
  | g\prall f g f\prall e! f
  | e!4.\prall bes'8 g c,
  | bes' aes c, aes' f b,
  | aes' g c, g' ees aes,
  %15
  | g' f aes, f' d! g,
  | f' ees g,~ g c ees~
  | ees d! f~ f b, c
  %\pageBreak
  | d! b! g f aes c
  | d! b! g f aes c,
  %20
  | b!4.\prall d'!\prall
  | d! d
  | d! aes'~
  | aes8 <ees g> <d! f>~ q <c ees> <b! d>
  | c4. d!
  %25
  | d! d
  | d! \stemUp\slurDown \appoggiatura bes'16 \stemNeutral\slurNeutral aes4.~
  | aes8 <ees g> <d! f>~ q <c ees> <b! d>
  | c4 g'8 aes <c, c'> <b! b'!>
  | <c c'>4 g'8 aes <c, c'> <b! b'!>
  %30
  | <c c'>4 g'8 aes <c, c'> <b b'>
  | \stemUp c' g f!~ \stemNeutral <d f> <c ees> <b d>
  | c4 g8 aes <c, c'> <b b'>
  \repeat unfold 2 {
  | <c c'>4 g'8 aes <c, c'> <b b'>
  }
  %35
  | c' g f^~ <d f> <c ees> <b! d>
  | c4.
  }
  \pageBreak
  \repeat volta 2 {
  \partial 4. c''4.
  | c, \clef bass bes,
  | ees, \clef treble c'''
  | c,\prall \clef bass bes,\prall
  %40
  | ees,\parenthesize\prall \clef treble <g' bes>
  | <aes b!> <aes c>
  | <aes d> q
  | <g ees'> <aes f'>
  | \stemUp g'8 f ees \stemNeutral g4.
  %45
  | <f g> \stemUp g8 aes bes
  | aes g f aes c aes
  | \stemNeutral g bes g f aes f
  | e! f g e,! g bes
  | aes f c' b! d,! f
  %50
  | e! g bes des bes g
  | aes f d!~ d c b!
  %\pageBreak
  | c4.\prall g''
  | g g
  | g des'~
  %55
  | <f, des'>8 <aes c> <g bes>~ q <f aes> <e! g>
  | f4. g
  | g g
  | g \stemUp\slurDown
    \override Slur.positions = #'(2.5 . 2.3)
    \appoggiatura ees'16 \stemDown\slurNeutral des4.~
  | <f, des'>8 <aes c> <g bes>~ q <f aes> <e! g>
  %60
  | f4 c'8 des <f, f'> <e e'>
  \repeat unfold 2 {
  | <f f'>4 c'8 des <f, f'> <e e'>
  }
  | f' <aes, c> <g bes>~ q <f aes> <e! g>
  | f4 c8 des <f, f'> <e e'>
  \repeat unfold 2 {
  | <f f'>4 c'8 des <f, f'> <e e'>
  }
  | \stemUp f' c bes^~ <g bes> <f aes> <e! g>
  | f4.
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4. s4.
  %1
  | s1*6/8*30
  %31
  | c'4 d!8~ \hideNotes d8 \unHideNotes s4
  | s1*6/8*3
  %35
  | c,4 d!8~ \once\omit Flag \once\omit Stem d8 \unHideNotes s4
  | s1*6/8*8
  %44
  | bes'4. s
  | s e!
  | f f
  | s1*6/8*20
  %67
  | f,4 g8~ \once\omit Flag \once\omit Stem g s4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4. s4.
  %1
  | s1*6/8*22
  %23
  | c'4. s
  | s1*6/8*3
  | c4. s
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  \partial 4. { f8 aes f }
  %1
  \repeat unfold 2 {
  |  des bes des c, c, c'
  |  f,,4. f'''8 aes f
  }
  %5
  | des f des ees,, ees' ees,
  | aes,4. f'''8 aes f
  | des f des ees,, ees' ees,
  | aes,4. \clef treble aes'''8 c aes
  | g bes g f bes f
  %10
  | e! g e f4.
  | bes, des
  | c e!
  | f d!
  | ees! c
  %15
  | d! b!
  | c \clef bass ees,
  | f aes
  | g aes
  | g aes,
  %20
  | g4. g'8 d' f
  | aes, f' aes \clef treble b,! d! f
  | c f aes d,! f b!
  | \stemDown ees,4 f8 \stemNeutral g4 g,8 \clef bass
  | c,4. g'8 d'! f
  %25
  | aes, f' aes \clef treble b,! d! f
  | c f aes d,! f b!
  | \stemDown ees,4 f8 \stemNeutral g4 g,8
  | c d! ees f4.
  | ees8^\prall d! c f4.
  %30
  | ees8^\prall d! c f4.
  | ees4 f8 g4 g,8
    \clef bass
  | <c,, c'> <d d'> <ees ees'> <f f'>4.
  \repeat unfold 2 {
  | <ees ees'>8 <d d'> <c c'> <f f'>4.
  }
  %35
  | <ees ees'>4 <f f'>8 g'4 g,8
  | c,4.
  }
  \repeat volta 2 {
  \partial 4. c''8 ees c
  | aes c aes bes, bes, bes'
  | ees,4. c''8 ees c
  | aes c aes bes, bes, bes'
  %40
  | ees,4. ees''8 g ees
  | d! f d c ees c
  | bes d bes aes f' aes,
  | g ees' g, f d'! f,
  | ees4. \clef treble ees'8 g bes
  %45
  | des, f bes c,4.
  | f \clef bass aes,
  | bes des
  | c c,,
  \repeat unfold 3 {
  | c c
  }
  %52
  | c4. \clef treble c''8 g' bes
  | des,! g bes e, g bes
  | f bes des g, bes e
  %55
  | aes,4 bes8 c4 c,8
  | f,4. c'8 g' bes
  | des, g bes e,! g bes
  | f bes des g, bes e!
  | aes,4 bes8 c4 c,8
  %60
  | f g aes bes4.
  \repeat unfold 2 {
  | aes8 g f bes4.
  }
  | aes4 bes8 c4 c,8
  | \clef bass
    <f,, f'> <g g'> <aes aes'> <bes bes'>4.
  %65
  \repeat unfold 2 {
  | <aes aes'>8 <g g'> <f f'> <bes bes'>4.
  }
  | <aes aes'>4 bes8 c4 c,8
  | f4.
  }
  \fine
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = "Domenico Scarlatti"
    opus = #f
    title = \markup { "Sonata in F minor" \italic "(K. 387)" }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4. = 158
  }
}
