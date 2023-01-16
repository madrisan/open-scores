\version "2.23.80"
\language "nederlands"

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
  line-width = 18\cm
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
        \line { \abs-fontsize #50 \bold "Siciliano" }
        \null\null
        \line { \abs-fontsize #14 \bold "from the" }
        \null
        \line {
          \abs-fontsize #18 \bold "Sonata in E"
          \abs-fontsize #15 \bold \flat
          \abs-fontsize #18 \bold "major for flute and harpsichord"
        }
        \null\null\null
        \line { \abs-fontsize #24 \bold "BWV 1031" }
        \null\null
        \null\null
        \line { \abs-fontsize #15 \italic "transcribed for Piano Solo by" }
        \null\null
        \line { \abs-fontsize #33 \bold "Ludwig Stark" }
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key g \minor
  \time 6/8
  \include "./global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \tempo \markup { "Sehr zart und gesangvoll vorzutragen." }
  %1
  \repeat volta 2 {
  | d8.(^\p es16 d8) d( g es)
  | c2.
  | c8.( d16 c8) c( a' c,)
  | \acciaccatura c8 bes8.( a16 g8) s4.
  %5
  | bes8 d es~ es c'( es,)
  | es(^> d) f\rest f( bes f~)
  | f^\< g\! f f^\> es\! d
  | c16( f a c\< bes d\! \stemDown c\> bes a g f es\!)
  | \stemUp d8 g\rest g\rest
    \once\override Hairpin.Y-offset = #-2.7
    c,16\> bes a g f es\!
  %10
  | f'8.( g16 f8) f( bes g)
  | es2.
  | es8.( f16 es8) es( c' es,)
  | s4. d16( f bes8 d,)
  | d8( c4~) c8 a'( c,~)
  %15
  | \once\omit Flag\once\omit Stem
    \once\shape #'((0 . -2.5) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    c16( s s4 bes'8. a16 g8
  | a8. g16) f8~ \once\omit Flag\once\omit Stem f16 s s4
  | cis4^>( d8) \stemDown\slurDown e!16( gis a e f d)
  | \slurUp cis4^>( d8) \stemDown\slurDown e!16( gis a e f d)
  | \stemUp\slurUp cis16 d e!8( a,) \stemDown\slurUp bes16( d cis! d e d)
  %20
  | a( d cis d e! d) \stemUp g,( bes a g f e!)
  | f8[ d] \stemDown d' ees16( g fis g a g)
  | d( g fis g a g)  c,( ees d c bes a)
  }
  \break
  | \stemUp d8.( es16 d8) d( g es)
  | c2.
  %25
  | c8.( d16 c8) c( a' c,)
  | bes16( g a bes c d  ees f ees d c bes)
  | a( cis d a bes g)  fis4^>( g8)
  | a16( cis d a bes g)  fis4^>( g8)
  | <fis a>16(\< <e! g> <fis a> <g bes> <a c> <bes d>\!
    \stemDown <c ees>8\> <bes d> <a c>)\!
  %30
  | \stemUp bes16( d c bes a g)
    <g ees'>16.\> <a c>32 <g bes>8( <fis a>)\!
  | g8 d'( bes  g) g'( bes,)
  | \stemDown r16 <g bes>( <fis a> <g bes> <bes g'> <g bes>)
    \stemUp <g bes>16. <a c>32
    \acciaccatura bes8 \afterGrace a4^\startTrillSpan
    { g!16[ a]\stopTrillSpan }
  | g2.\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  %1
  | \slurDown\bottom bes16^.-\pp
    \once\shape #'((0 . -1.4) (0 . -1.4) (0 . -1.4) (0 . -1.4)) Slur
    g'( \top bes g \bottom fis g)
    bes,16^.
    \once\shape #'((0 . -1.4) (0 . -1.4) (0 . -1.4) (0 . -1.4)) Slur
    g'( \top bes g \bottom fis g)
  | \slurUp \once\shape #'((0 . 1) (0 . 0.3) (0 . 0.3) (0 . 1)) Slur
    a,16^.( c \top es c \bottom a c)
    \once\shape #'((0 . 1) (0 . 0.3) (0 . 0.3) (0 . 1)) Slur
    a16^.( c \top es c \bottom a c)
  | a16^. d \top a' fis \bottom e! fis
    \slurDown d^.( \top a' c a \bottom d, \top a')
  | e16\rest a( g fis g d
    \stemUp bes es d c d bes)
  %5
  | \stemDown e16\rest
    \once\shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . -1.8)) Slur
    g( bes g \bottom fis g)
    c, \top c' es c bes c
  | f,!^. c'(  bes a bes f)
    \bottom d \top bes' d bes \bottom \clef treble a bes \clef bass
  | \top g^.( bes es bes as bes)
    g^.( bes c a! bes g)
  | a8[ \bottom f] \top g\rest s4.
  | es16\rest f\< a c bes d\!
    s4.
  %10
  | \bottom d,16^. \top bes'( d bes \bottom a bes)
    d,16^. \top bes'( d bes \bottom a bes)
  | c,^. es( \top g es \bottom c es)
    c^. es( \top g es \bottom c es)
  | c^. f( \top c' a \bottom g a)
    \once\shape #'((1 . 0.6) (0 . 0.3) (0 . 0) (0 . 0)) Slur
    f^.( \top c' es c \bottom f, \top c')
  | \slurUp <bes d>( f g <f a> <g bes> <a c>)
    \slurDown \once\shape #'((0 . -0.5) (0 . -1.5) (0 . -1.5) (0 . -0.5)) Slur
    bes( c d bes \bottom f \top bes~)
  | bes g a e! f g  a bes c \bottom a d, \top a'
  %15
  | a <fis a>\< <g bes> <a d> <bes g'> <c a'>
    d\! d( g f! e! d
  | c c f e! d c
    <bes f'>) <c e>( <bes g'> <a f'> <g e'> <f d'>)
  | \slurUp e!( \bottom gis a e! f d)  cis4^>( d8)
  | e!16( gis a e! f d)  cis4^>( d8)
  | \top e!8 \bottom a, s2
  %20
  | s1*6/8
  | s1*6/8
  | s1*6/8
  | \slurDown\bottom
    \once\override Beam.positions = #'(7.5 . 7.5)
    bes16^.-\pp
    \once\shape #'((0 . -1.4) (0 . -1.4) (0 . -1.4) (0 . -1.4)) Slur
    g'( \top bes g \bottom fis g)
    \once\override Beam.positions = #'(7.3 . 7.3)
    bes,16^.
    \once\shape #'((0 . -1.4) (0 . -1.4) (0 . -1.4) (0 . -1.4)) Slur
    g'( \top bes g \bottom fis g)
  | \slurUp \once\shape #'((0 . 0) (0 . 0.3) (0 . 0.3) (0 . -1)) Slur
    \once\override Beam.positions = #'(5.5 . 5.5)
    a,16^.( c \top es c \bottom a c)
    \once\shape #'((0 . 0) (0 . 0.3) (0 . 0.3) (0 . -1)) Slur
    \once\override Beam.positions = #'(5.5 . 5.5)
    a16^.( c \top es c \bottom a c)
  %25
  | a16^. d \top a' fis \bottom e! fis
    \slurDown d^.( \top a' c a \bottom d, \top a')
  | g8. f!16 \bottom ees d  c8 \top c'16 bes a g
  | fis4 g8
    \slurUp \bottom a,16( cis d a bes g)
  | fis4^> g8  a16( cis d a bes g)
  | s1*6/8
  %30
  | \top g'4. s4.
  | c,16\rest \slurDown
    \once\shape #'((0 . 0) (0 . 0) (0 . -0.8) (0 . -1.5)) Slur
    g'( bes g \bottom fis g)
    bes, \top
    \once\shape #'((0 . 0) (0 . -0.8) (0 . -1.5) (0 . -1.5)) Slur
    g'( bes g \bottom fis g)
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set breathMarkType = #'caesura
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \slurDown
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  \repeat volta 2 {
  | g'4 r8 g4 r8
  | g4 r8 g4 r8
  | fis4 r8 fis4 r8
  | g4 r8 g,4 r8
  %5
  | g'4 r8 a4 r8
  | bes4 r8 \stemDown bes,4 s8
  | es4 r8
    \once\shape #'((0 . -2) (0 . 0) (0 . 0) (0 . -3)) Slur
    es4( e!8
  | f4 g8 a) \slurUp f( a
  | bes) f( g a) f a \clef treble
  %10
  | bes4 b8\rest bes4 b8\rest
  | bes4 e,8\rest bes'4 e,8\rest
  | a4 g8\rest a4 a8\rest
  | bes4 b8\rest \clef bass bes,4 d8\rest
  | f4 d8\rest fis4 d8\rest
  %15
  | g4 d8\rest g4 c8(
  | f,4) bes8( g4.) \clef treble
  | a4 a8\rest a4 g8\rest
  | a4 a8\rest a4 g8\rest \clef bass
  | a16 a,
    \once\shape #'((1 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
    a'( g f d g4) r8
  %20
  | f4 r8 \stemUp\slurDown e!8( cis a)
  | d16( a' \top d \bottom c! bes g  \stemDown c4) r8
  | bes4 r8 a( fis d)
  }
  | g4 r8 g4 r8
  | g4 r8 g4 r8
  %25
  | fis4 r8 fis4 r8
  | g4 r8 c,4 r8
  | d4 r8 d4 r8
  | d4 b8\rest d4 b8\rest
  | d4 r8 \stemUp fis,4 r8
  %30
  | g a( bes c) d d,
  | g4 r8 \stemDown ees'4 r8
  | \stemUp cis4 r8 <d, d'>8
    \clef treble \acciaccatura g''8 \afterGrace fis4^\startTrillSpan
    { e!16[ fis]\stopTrillSpan } \clef bass
  | <g,, g'>2.
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
    opus = \markup { "BWV 1031" }
    title = \markup { "Siciliano" }
    subtitle = \markup {
      \column {
        \line { "aus der 2. Sonate für Flöte une Clavier" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #11
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
