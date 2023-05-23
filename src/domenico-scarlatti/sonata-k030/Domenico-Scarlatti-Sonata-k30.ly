\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
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
  top-margin = 15\mm
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
        \line { \abs-fontsize #35 \bold "Sonata in G minor" }
        \null\null
        \line { \abs-fontsize #22 \bold\italic "nicknamed “Cat fugue”" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 30" }
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

\markup {
  \general-align #Y #DOWN {
    \epsfile #X #96 #"domenico-scarlatti-sonata-k30-manuscript-berlin.ps"
  }
}

Global = {
  \key g \minor
  \time 6/8
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemNeutral\slurNeutral
  \tempo \markup {
    \bold\concat { "Moderato" }
  }
  %1
  | s2.
  | ees4. fis
  | bes4. cis
  | d8 c! bes a g fis
  %5
  | \stemUp g g' f e! d cis
  | d4. s
  | d,8 g bes4 a8 e'!~
  | e d f4 e!8 d
  | cis4 d8 g4.
  %10
  | f8 b,! c d ees f
  | ees4.~ 8 d c
  | bes a g~ g d \bottom bes
  | g[ c] \top ees4 d8[ a'~]
  | a g bes4 a8 g
  %15
  | \stemNeutral fis4 g8 c4.
  | \stemUp bes4.~ bes8 a g
  | f e! d_~ d a' f
  | \stemNeutral d g bes4 a8 e'!~
  | e d f4 e!8 d
  %20
  | cis4 d8 g f e!
  | \stemUp f4. s
  | ees s
  | bes8 cis d e! fis g
  | fis g a d, g fis
  %25
  | g4. s
  | \stemNeutral g,8 c ees4 d8 fis,
  | \stemUp g4. bes
  | ees fis
  | bes cis,
  %30
  | d8 c! bes a g fis
  | g d' c g' s4
  | f8 s2 f8
  | ees8 s2 ees8
  | s2.*3
  %37
  | a,4 bes8 ees4.
  | d8 bes c d4 e!8
  | f4.~ f
  %40
  | ees8 c d ees4 fis8
  | g4.~ g
  | f8 a g f e! d
  | s4. a'~
  | a8 g4~ g8 f e!
  %45
  | f e! d~ d a f
  | d g bes4 a8 e'!~
  | e d f4 e!8 d
  | cis4 d8 g4.
  | f4. s
  %50
  | \stemUp\tieUp ees4. s
  | bes4. s
  | fis g8 a bes
  | c d ees4 d8 c
  | b!4. c~
  %55
  | c8 d ees4 d8 c
  | f4. d8 ees f
  | \stemNeutral\tieNeutral ees\trill d c~ c g ees
  | c f aes4 g8 b,!
  | c4.~ <c~ ees>
  %60
  | <c aes'> <d b'!>
  | <g ees'> <a! fis'>
  | \stemUp\tieUp g'8 a bes~ bes4 8
  | aes g f~ f c' aes
  | f e! f g4.
  %65
  | f4.~ f
  | ees8 a bes c4.
  | d,8 g a bes4.
  | c,8 fis g a4.
  | bes,8 e! f! g4.
  %70
  | a,8 d e! f4.
  | g,8 cis d e!4 cis8
  | d4.~ d
  | c8 d ees d4 c8
  | bes^\trill a g~ g d \bottom bes
  %75
  | g c \top ees4 d8 a'~
  | a g bes4 a8 g
  | f a f'4 ees8 d
  | ees g c4 bes8 a
  | bes4.~ bes8 a g
  %80
  | f4.~ f8 e! d
  | cis4. d8 e! f
  | g4. s
  | f s
  | ees s
  %85
  | \stemNeutral <f, d'>4. <g e'!>
  | <c aes'> <d, b'!>
  | <g ees'> <a, fis'>
  | <d bes'> <e! cis'>
  | <f d'>8 <g e'!> <a f'>4 <g e'>8 <f d'~>
  %90
  | \stemUp d'8 cis bes~ bes a g
  | f4 g8 a4 b!8
  | c4.~ c~
  | c8 bes a <bes d>4 <cis e!>8
  | f g a~ a a f
  %95
  | d\trill cis d e! f g
  | \stemNeutral\tieNeutral f\trill e! d4 a8 f
  | d g bes4 a8 e'!~
  | e8 d f4 e!8 d~
  | d c <ees c'>4 <d bes'>8 <c a'>~
  %100
  | q <a fis'> <bes g'>4 <a f'!>8 <g e'>~
  | q <f c'> <aes f'>4 <g ees'>8 <f d'>~
  | q <d b'!> <ees c'>4 <d bes'>8 <c a'>~
  | q \stemUp\tieUp <a fis'> <bes g'>4 a'8 bes~
  | bes a ees' d4 g8~
  %105
  | g f s2
  | bes8 a g4 f8 ees
  | d4 e!8 f4.~
  | \stemNeutral\tieNeutral <aes, f'>8 <bes g'> <c aes'>4 <bes g'>8 <aes f'>~
  | q <g e'!> <f des'>~ q <e! c'> \stemUp\tieUp <des bes'~>
  %110
  | bes' a! bes c4.~
  | c8 bes f'4 ees8 bes'
  | \stemDown <des, bes'> <c aes'> <bes g'>4 <aes f'>8 <g ees'>
  | \stemUp d' bes c d4 e!8
  | f4.~ f
  %115
  | ees8 g f g4 <a, fis'>8
  | s2.
  | d4.~ d
  | c8[ d] ees d4 c8
  | bes a g~ g d bes
  %120
  | g[ c] ees4 d8[ c']
  | bes a g~ g d' bes
  | g g' d cis e! g
  | <a, f'> <g e'> <f d'>4 q8 <ees c'>
  | <d b'!> <ees c'> <f d'>4 <ees c'>8 <d b'>
  %125
  | \stemNeutral <ees c'> <f d'> <g ees'>4 <a fis'>8 <bes g'>
  | <a fis'> <bes g'> <c a'>4 <bes g'>8 <a fis'>
  | <bes g'> <c a'> <d bes'>4 <c a'>8 <bes g'~>
  | \stemUp g'8 fis g a4.
  | bes,8 ees f g4.
  %130
  | a,8 d ees f4.
  | g,8 c d ees4.
  | d4.~ d8 c bes
  | a bes c bes a cis
  | d4 c!8 g'4 f8
  %135
  | ees f g~ g f ees
  | d ees f~ f ees d
  | c d ees~ ees d c
  | bes c d4 c~
  | c8 bes c d c <bes g'>
  %140
  | fis' g a bes a g
  | fis ees d c bes a
  | g4.~ g8 e! g
  | fis a c b! d f
  | cis e! g fis a c
  %145
  | bes fis g f! cis d
  | ees b! c c4.
  | \shape #'((0 . 0.7) (0 . 1) (0 . 1) (0 . 0.5)) Tie
    g'4.~ g8 f ees
  | <bes d> c bes~ bes c a
  | g g' f~ f ees d~
  %150
  | d b! c4 c~
  | c8 b! a4 g8 fis
  | <d g>2.
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s2.*4
  %5
  | s8 bes a g f e!
  | f e! d~ d a' f
  | s2.*4
  %11
  | ees'8 g, fis g4.
  | s2.*4
  %16
  | bes8 d, cis d4.
  | s2.*4
  %21
  | f'8 b, c d ees f
  | ees fis, g a bes c
  | \bottom\stemUp g, \top\stemDown\tieUp g' f e! d cis
  | s4. d'8 g, a
  %25
  | bes c d~ d d bes
  | s2.*2
  | s4 ees, d8 a'_~
  | a g bes4 a8 g
  %30
  | fis4 g8 c,4 d8
  | s4. bes'8 a g
  | a b! c b c d
  | g, a bes a bes c
  | d c bes~ bes f' d
  %35
  | bes ees g4 f8 c'~
  | c bes d,4 c8 bes
  | s4. a8 bes c
  | \tieDown f,4.~ f4 g8
  | a c bes a g f
  %40
  | g4.~ g4 a8
  | bes d c bes a g
  | a4. s
  | cis4. a'8 d, c!
  | bes4. a
  %45
  | a4.~ a8 s4
  | s2.
  | f4. gis
  | a8 g f s4.
  | f'8 b,! c d ees f
  %50
  | ees fis, g a bes c
  | bes cis, d e! fis g
  | s4. g~
  | g f!~
  | f8 ees d s4 d8
  %55
  | ees f g aes4.~
  | aes8 b! c g4.
  | s2.*2
  | c,4. c
  | s2.*2
  %62
  | bes'8 c d e! f g
  | c,4. aes
  | des g8 c, bes
  %65
  | a! g a bes c d
  | ees4.~ ees8 f ees
  | d4.~ d8 ees d
  | c4.~ c8 d c
  | bes4.~ bes8 c bes
  %70
  | a4.~ a8 bes a
  | g4.~ g8 a g
  | fis g a g a bes
  | a4 g8 fis g a
  | s2.*3
  %77
  | f4. g
  | ees' d~
  | \stemUp \once\override NoteColumn.force-hshift = #0.4 d8 cis d \stemDown e!4.
  %80
  | s b!
  | s2.
  | g'8 cis, d e! f g
  | f b, c d ees f
  | ees a, bes c d ees
  %85
  | s2.*4
  | s2 s8 \once \omit Flag f,~
  %90
  | f e! d cis4.
  | d4 e!8 f4.~
  | f8 ees d <ees g>4 <fis a>8
  | <d g>4. g8 f! e!
  | <a d>4. a
  %95
  | bes4. cis!
  | s2.*7
  %103
  | s2 fis,!8 g~
  | g fis4 g8 a bes
  %105
  | c f <ees c'>4 <d bes'>8 <c a'>
  | \stemUp bes4. s4 \stemDown\tieDown c8~
  | c bes4~ bes8 aes g
  | s2.*2
  %110
  | c,8 f4~ f8 ees c
  | des4 aes'8 g4 des'8~
  | \once\omit Flag des s s2
  | f,4.~ f4 g8
  | aes c bes << { \stemDown aes g f } \\ { s4 \stemUp b!8 } >>
  %115
  | << {
      \stemDown\tieDown g4.~ g
    } \\ {
      \stemUp
      \once\override NoteColumn.force-hshift = #0.4 c8 s4
      \once\override NoteColumn.force-hshift = #0.6 ees8
      d
      \once\override NoteColumn.force-hshift = #1 c
    } >>
  | <bes g'>8 <d bes'> <c a'> <bes g'> <a f'> <g ees'>
  | fis4. g8 a bes
  | a4 g8 fis g a
  | g4. s
  %120
  | s2 s8 ees
  | d c bes d4.
  | e!4. e
  | d~ d
  | s2.*4
  %128
  | c'4.~ c8 d c
  | bes4.~ bes8 c bes
  %130
  | a4.~ a8 bes a
  | g4.~ g8 a g
  | fis g a d,4 g8
  | fis g a g fis e!
  | fis g a bes c d~
  %135
  | d c bes a bes c~
  | c bes a g a bes~
  | bes a g fis g a~
  | a g f ees d c
  | fis g a bes a g
  %140
  | a bes c d c bes
  | a g fis ees d c
  | bes a g cis4.
  | d f!
  | g c!
  %145
  | d8 c bes a g fis
  | g f! ees \stemUp \once\override NoteColumn.force-hshift = #0.3 fis g a
  | << {
      \once\override NoteColumn.force-hshift = #0.6
      \override Stem.details.beamed-lengths = #'(3.6)
      bes c d \stemDown ees d c
    } \\ {
      g2.
    } >>
  | \stemDown g8 a g~ g a fis
  | g4 aes8 g4 f8~
  %150
  | f8 d ees4 c8 ees
  | d4 c8 b!4 a8
  | b!2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2.*23
  | d,8 d' c! s4.
  | s2.*14
  %39
  | s4. f8 ees d
  | s2.
  | s4. g8 f e!
  | s2.*7
  %49
  | d,8 d' c! s4.
  | s2.*2
  | d,8 d' c bes a g
  | s4. \stemDown d'4.~
  | \stemUp d8 c b! c4 s8
  %55
  | c4.~ c8 f ees
  | f g aes s4.
  | s2.*9
  %66
  | c,8 c' bes s4.
  | bes,8 bes' a s4.
  | a,8 a' g s4.
  | g,8 g' f! s4.
  %70
  | f,8 f' e! s4.
  | e,8 e'! d s4.
  | d,8 d' c! s4.
  | s2.*4
  %77
  | s4. d
  | \top\stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0 g
    \once\override NoteColumn.force-hshift = #0 d
  | d \once\override NoteColumn.force-hshift = #0 a'~
  %80
  | a8 gis a \once\override NoteColumn.force-hshift = #0 e!4.
  | \bottom\stemUp a,8 \top\stemDown a' g! s4.
  | \bottom s2.*3
  %85
  | s2 s8 \stemUp bes,
  | c4 s4. f,8
  | g4 s4. c,8
  | d4 s2
  | s2.*15
  %104
  | d8 d' c s4.
  | s2.*3
  %108
  | c4. des
  | s2.*5
  %114
  | s4. f8 ees d
  | s2 s8 c
  | s2.
  | d,8 d' c s4.
  | s2.
  | s4. g
  | s2.*5
  %125
  | \tieUp c4.~ c
  | d d
  | d g
  | a,8  a' g fis4.
  | g,8  g' f ees4.
  %130
  | f,8  f' ees d4.
  | ees,8  ees' d c4.~
  | c8 bes a bes a g
  | s2.*13
  %146
  | \top s4. \stemDown d'8 e! fis
  | \bottom\stemUp g,4.~ g4 c8
  | d,4. ~ <d, d'>
  | g4._~ <g b!>
  | ees' fis
  | g s
  | s2.

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \mergeDifferentlyDottedOn
  %1
  | g4. bes
  | s2.*4
  %6
  | d,4. f
  | bes cis
  | \top\stemDown f gis
  | a8 g! f e! d cis
  %10
  | d f ees \bottom\stemDown d c b!
  | c ees d c bes a
  | \stemUp g,4. \stemDown bes
  | ees fis
  | bes cis
  %15
  | d8 c! bes a g fis
  | g bes a g f e!
  | \stemNeutral d,4. f
  | bes! cis
  | f gis
  %20
  | a8 g f! e! d cis
  | \stemDown d4. b'!8 a g
  | c,4. a'8 g fis
  | g4. s
  | d bes'4 a8
  %25
  | g4. bes
  | ees c
  | bes8 a g~ g g bes
  | c g s2
  | s2.*2
  %31
  | g4. g'8 f ees
  | d f ees d c b!
  | c ees d c bes a
  | \stemNeutral bes,4. <d bes'>
  %35
  | <g bes> <a c>
  | <d f> <e! g>
  | f8 ees d c bes a
  | bes d c bes a g
  | f4._~ f
  %40
  | c'8 ees d c bes a
  | \tieDown g4.~ g
  | d'8 f e! d c bes
  | a a' g f4.^~
  | f8 e! d cis4.
  %45
  | d,4. f
  | bes cis
  | s2.
  | s4. e!8 d cis
  | d,4. b'!8 a g
  %50
  | \stemDown c,4.a'8 g fis
  | g bes a g fis e
  | d4.~ d
  | a'8 bes c s4.
  | g4.aes8 g f
  %55
  | ees d c f4.
  | d'4 c8 b!8 a g
  | c,4. ees
  | \stemNeutral\tieNeutral aes b,!8 c d
  | ees d c~ c c g'
  %60
  | g f aes4 g8 d'~
  | d c ees4 d8 c
  | bes a g c d e!
  | f4. s
  | s e!
  %65
  | \clef treble ees d8 c bes
  | \stemDown c4. a'
  | bes, g'
  | a, fis'
  | g, e'!
  %70
  | \clef bass f, d'
  | e, cis'8 b! a
  | d,4. bes'8 a g
  | a bes c d e! fis
  | \stemUp g,,4. \stemDown bes
  %75
  | ees <fis a>
  | <bes d> <cis e!>
  | d b!
  | c fis,
  | g cis
  %80
  | d gis,
  | a f'8 e! d
  | e! g f e d cis
  | d f ees d c b!
  | c ees d c bes a
  %85
  | bes, bes' d4 c8 g~
  | g f aes4 g8 d~
  | \tieDown d c ees4 d8 a~
  | a g \stemNeutral bes'4 a8 g
  | f e! d g,4.
  %90
  | a a'
  | bes8 a g f ees d
  | c4.~ \stemDown c
  | g'~ g
  | d' f
  %95
  | s2.
  | \stemNeutral <d,, d'>4. <f f'>
  | <bes bes'> <cis cis'>
  | <f f'> <gis gis'>
  | <a a'> <fis fis'>
  %100
  | <g g'> <cis, cis'>
  | <d d'> <b! b'!>
  | <c c'> <fis, fis'>
  | <g g'> cis
  | d4. bes'8 a g
  %105
  | <a c>4. <bes d>4 <c ees>8
  | \top\stemDown <d f>4 <ees g>8 <f a>4 \bottom a,8
  | bes4 c8 des c bes
  | aes g f bes4.
  | c4. e,!
  %110
  | f4 g8 a4.
  | bes <ees, bes'>
  | <aes, aes'> <aes' c>
  | bes8 d c bes aes g
  | f4.~ f
  %115
  | c'8 ees d c bes a
  | \tieNeutral <g d'>4.~ q4 <c, c'>8
  | d4. bes'8 a g
  | a bes c d e! fis
  | g,4. bes,
  %120
  | ees fis
  | g bes
  | s a
  | d, f
  | g, g'
  %125
  | ees c
  | \tieDown d~ d
  | bes' g
  | a~ a
  | g~ g
  %130
  | \stemNeutral f~ f
  | ees~ ees
  | d d
  | d, d
  | <d d'>8 <e! e'!> <fis fis'> <g g'> <a a'> <bes bes'>
  %135
  | <c, c'> <d d'> <ees ees'> <f f'> <g g'> <a a'>
  | <bes bes'> <c c'> <d d'> <ees, ees'> <f f'> <g g'>
  | <a a'> <bes bes'> <c c'> <d, d'> <e! e'!> <fis fis'>
  | <g g'> <a a'> <bes bes'> <c, c'> <d d'> <ees ees'>
  | \tieNeutral <d d'>4.~ q
  %140
  | q~ q
  | q~ q
  | q~ q
  | q q
  | q q
  %145
  | q q
  | q q
  | \stemDown\tieDown g8 a bes c4.
  | s2.*2
  %150
  | g4.~ g
  | g4.~ g
  | <g d' g >2.
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
    title = \markup { "Sonata K. 30" \italic "(“Cat fugue”)" }
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
    \tempo 4 = 100
  }
}
