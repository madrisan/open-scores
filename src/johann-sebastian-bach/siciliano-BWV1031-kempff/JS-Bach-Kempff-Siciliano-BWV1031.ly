\version "2.25.12"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  %inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  %left-margin = 10\mm
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  %outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %right-margin = 10\mm
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "d.madrisan@proton.me"
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
        \line { \abs-fontsize #33 \bold "Wilhelm Kempff" }
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key g \minor
  \time 6/8
  \include "global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Andante semplice" 8 = 104
    bes16(_\p g' bes_.) g_. fis_. g_. c,( g' bes_.) g_. fis_. g_.
  | d16( g bes_.) g_. fis_. g_. ees( g bes_.) g_. fis_. g_.
  | a,16( g'\> a_.) g_. fis_. g_. d( fis a_.) fis_. e_. fis_.\!
    %\bar "||"
    \break
  \repeat volta 2 {
  | \stemUp\slurUp\tieUp d'8.^\markup { \dynamic mf "cantabile" }( ees16 d8 d g ees
  %5
  | c2.)
  | c8.( d16 c8 c a' c,
  | \acciaccatura c8 bes8. a16 g8) d'4\rest d8\rest
  | bes\( d ees~ ees c' ees,
  | ees d\) f\rest f\( bes f~
  %10
  | f g f~ f ees d
  | c16\)^\p f\( a c bes d \stemNeutral c bes a g f ees
  | d\) f,[_(_\pp a_. c_. bes_. d_.] c_. bes_. a_. g_. f_. ees_.)
  | \stemUp f'8.^\markup { "dolce" }( g16 f8 f bes f
  | ees2.
  %15
  | ees8.) f16 ees8 ees c' ees,
  | \once\shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -2)) Slur
    d16( f, g a bes c d f bes8 d,
  | d8) c4~ c8 a'( c,~
  | c16 a bes d g a bes8. a16 g8
  | a8. g16 f8~ f16 e g f e d)
  %20
  | cis4( d8) e!16( gis a) e^. f^. d^.
  | cis4( d8) e!16( gis a) e^. f^. d^.
  | cis( d e!8^. a,^.) \stemNeutral bes16( d) cis^. d^. e( d)
  | a( d) cis^. d^. e!( d) \stemNeutral g,( bes a g f e!)
  | f8[ d] \stemNeutral d'
    \once\override TextScript.extra-offset = #'(0 . -2)
    ees16[(_\markup { "dim." } g) fis^. g^. a( g)]
  %21
  | d[( g) fis^. g^. a( g)] c,( ees d c bes a)
  }
  \break
  %26
  | \stemUp \once\shape #'((0 . 0) (0 . 0) (0 . 0) (-4 . -1)) Slur
    d8.( ees16 d8 d 8 g ees
  | c2.
  | c8.)( d16 c8 c8 a' c,
  | bes16) g( a bes c d ees f ees d c bes)
  %30
  | a16( cis d) a bes g
    \once\shape #'((0 . 1) (0 . 2) (0 . 2) (0 . 1.5)) Slur
    fis4( g8)
  | a16( cis d) a^. bes^. g^.
    \once\shape #'((0 . 1) (0 . 2) (0 . 2) (0 . 1.5)) Slur
    fis4( g8)
  | a16( g a bes c! d ees8 d c)
  | bes16( d c bes a g ees'16.[ c32] bes16[ a8.]
  | \tempo "Più andante"
    g8) d'[( bes] g[ g' bes,])
  %35
  | \tempo "Adagio"
    g'16\rest bes,( a bes g' bes,) bes16.( c32 bes16[ a8 g16]
  | g2.)
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*6/8*3
  | \staffLower\stemUp bes16( \staffUpper\stemDown g' bes) g_. fis_. g_.
    \staffLower\stemUp bes,16( \staffUpper\stemDown g' bes) g_. fis_. g_.
  %5
  | \staffLower\stemUp a,16( \staffUpper\stemDown c ees) c_. a_. c_.
    \staffLower\stemUp a16( \staffUpper\stemDown c ees) c_. a_. c_.
  | \staffLower\stemUp a16( \staffUpper\stemDown d a') fis_. e!_. fis_.
    d16( a' c) a_. d,_. a'_.
  | d,16\rest a'( g fis g d bes ees d c d bes)
  | \staffLower\stemUp g16( \staffUpper\stemDown g' bes) g_. fis_. g_.
    \staffLower\stemUp c,16( \staffUpper\stemDown c' ees) c_. bes_. c_.
  | f,!( c' bes a bes f) d( bes' d) bes_. a_. bes_.
  %10
  | g( bes ees) bes_. aes_. bes_. g( bes c a! bes g
  | aes8 \staffLower\stemUp f) f\rest f4\rest f8\rest
  | s2.
  | \staffUpper\stemDown d16( bes' d) bes_. a_. bes_.
    \staffLower\stemUp d,( \staffUpper\stemDown bes' d) bes_. a_. bes_.
  | \staffLower\stemUp c,( \staffUpper\stemDown ees g) ees_. \staffLower\stemUp c^. \staffUpper\stemDown ees_.
    \staffLower\stemUp c( \staffUpper\stemDown ees g) ees_. \staffLower\stemUp c^. \staffUpper\stemDown ees_.
  %15
  | \staffLower\stemUp c( \staffUpper\stemDown f c') a_. g_. a_. f( c' ees) c_. f,_. c'_.
  | \once\override Beam.positions = #'(-5.2 . -6)
    bes8[ c,16\rest f g a] bes c d bes \staffLower\stemUp f \staffUpper\stemDown bes
  | bes g a e f g a bes c a d, a'~
  | a fis g a bes c d d g f! e! d
  | c c f e! d c bes c bes a g f
  %20
  | e(_\f gis a) e_. f_. d_. \staffLower\stemUp\slurUp cis4(^\p d8)
  | \staffUpper\stemDown\slurDown e16(_\mf gis a) e_. f_. d_. \staffLower\stemUp\slurUp cis4(^\pp d8)
  | \staffUpper\stemDown e!8 \staffLower\stemUp a, d\rest^\mf s4.
  | s2.
  | \staffLower\stemUp
    \once\shape #'((0 . -2.2) (0 . -4) (0 . -2) (-1 . -4)) Slur
    d,16[( \staffUpper\stemDown a' d \staffLower\stemUp c!]
    \hideNotes bes a c4) \unHideNotes s8
  %25
  | s2.
  | \slurDown bes16( \staffUpper\stemDown g' bes)
    \once\override TextScript.extra-offset = #'(-1.5 . -4)
    g_._\markup { "più dolce" } fis_. g_.
    \staffLower\stemUp bes,16( \staffUpper\stemDown g' bes) g_. fis_. g_.
  | \staffLower\stemUp a,( \staffUpper\stemDown c ees) c_. \staffLower\stemUp a^. \staffUpper\stemDown c_.
    \staffLower\stemUp a( \staffUpper\stemDown c ees) c_. \staffLower\stemUp a^. \staffUpper\stemDown c_.
  | \staffLower\stemUp a( \staffUpper\stemDown d a') fis_. e!_. fis_. d( a' c) a_. d,_. a'_.
  | \once\shape #'((0 . 0.2) (0 . -0.5) (0 . -1) (0 . 1.2)) Slur
    g8.( f!16 \staffLower\stemUp ees d c8 \staffUpper\stemDown c'16 bes a g)
  %30
  | fis4( g8) a16( cis d) a_. bes_. g_.
  | fis4( g8) a16( cis d) a_. bes_. g_.
  | fis( e! fis g a bes c8 bes a)
  | \once\shape #'((1.4 . 1) (0 . 1.2) (0 . 0.8) (0 . 0.8)) Tie
    g4.~ g16. a32 g16[ fis8.]
  | \once\override Voice.Rest.X-offset = #1
    c16\rest g'_. bes_. g_. fis_. g_. bes,_. g'_. bes_. g_. fis_. g_.
  %35
  | g16\rest g( fis g bes g) g16.( a32 fis8.[ g16]
  | g2.)
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp\slurDown
  \override Rest.staff-position = #0
  %1
  | s2.*32
  %33
  | \staffUpper\stemDown
    \magnifyMusic #0.8 {
      \once\override NoteColumn.force-hshift = #0.4 bes8( c d
      \once\override Beam.positions = #'(-5.2 . -5.8)
      ees d c
  | \once\override NoteColumn.force-hshift = #-0.4 bes)
    }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <g, g'>4 r8 <a a'>4 r8
  | <bes bes'>4 r8 <c c'>4 r8
  | <d d'>4 r8 <d, d'>4 r8
    %\bar "||"
  \repeat volta 2 {
  | \stemDown g'4 b8\rest g4 b8\rest
  %5
  | g4 b8\rest g4 b8\rest
  | fis4 b8\rest fis!4 b8\rest
  | \stemNeutral g4 r8 <g, g'>4 r8
  | \stemDown g'4 b8\rest a4 b8\rest
  | <bes bes'>4 r8 \stemNeutral bes4 r8
  %10
  | <ees, ees'>4 r8 <ees ees'>4 <e e'>8
  | \stemDown <f f'>4 <g g'>8 <a a'> <f f'> <a a'>
  | \stemNeutral <bes bes'> <f, f'> <g g'> <a a'> <f f'> <a a'>
  | <bes bes'>4 r8 \stemDown bes'4 r8
  | bes4 b8\rest bes4 b8\rest
  %15
  | a4 r8 <a a'>4 r8
  | \stemNeutral <bes bes'>4 r8 <bes, bes'>4 r8
  | <f' f'>4 r8 <fis fis'>4 r8
  | <g g'>4 r8 <g g'>4 <c c'>8
  | <f, f'>4 <bes bes'>8 <g g'>4.
  %20
  | <a a'>4 r8 a'4 b,8\rest
  | <a a'>4 r8 a'4 b,8\rest
  | \stemDown\tieDown a'16( a,~ a <g g'> <f f'> <d d'>) <g g'>4 r8
  | \stemNeutral\slurNeutral <f f'>4 r8 <e e'>^.^( <cis cis'>^. <a a'>^.)
  | \stemDown\slurDown d16( a' d c <bes bes'> <a a'>) \stemNeutral\slurUp <c c'>4 r8
  %21
  | <bes bes'>4 r8 <a a'>8^.( <fis fis'>^. <d d'>^.)
  }
  | \stemDown g4 r8 g4 r8
  | g4 b8\rest g4 b8\rest
  | fis4 r8 \stemNeutral <fis fis'>4 r8
  | <g g'>4 b8\rest \stemDown c4 <c, c'>8
  %30
  | \stemNeutral <d d'>4^\f r8 d'4^\p r8
  | <d, d'>4^\mf r8 d'4^\pp r8
  | <d, d'>4 r8 <fis, fis'>4 r8
  | <g g'>8(^\markup { "rit." } <a a'> <bes bes'> <c c'> <d d'> <d, d'>)
  | <g g'>4 r8 <ees' ees'>4^\markup { "rit." } r8
  %35
  | <cis cis'>4. <d d'>4 <d, d'>8
  | <g g'>2.
  \fine
}

Sustain = {
  %1
  | s2.*3
  | s8\sustainOn s\sustainOff s s\sustainOn s\sustainOff s
  %5
  | s4\sustainOn s2
  | s8\sustainOff\sustainOn s\sustainOff s s\sustainOn s\sustainOff s
  | s8\sustainOn s\sustainOff s s4.
  | s8\sustainOn s\sustainOff s s\sustainOn s\sustainOff s
  | s4. s8\sustainOn s\sustainOff s
  %10
  | s2.
  | s4-\markup { \hspace #-1 \magnify #1 { \musicglyph #"pedal.Ped" " sempre port" } } s2
  | s2.
  | s8\sustainOn s\sustainOff s s\sustainOn s\sustainOff s
  | s4-\markup { \hspace #-1 \magnify #1 { \musicglyph #"pedal.Ped" } } s2
  %15
  | s8\sustainOn s\sustainOff s s\sustainOn s\sustainOff s
  | s4. s8\sustainOn s4
  | s8\sustainOff s s s\sustainOn s\sustainOff s
  | s4. s8\sustainOn s\sustainOff s
  | s8\sustainOn s s\sustainOff s4.
  %20
  | s8\sustainOn s s s\sustainOff\sustainOn s4
  | s8\sustainOff\sustainOn s s s\sustainOff\sustainOn s4
  | s8\sustainOff s4 s4.\sustainOn
  | s8\sustainOff\sustainOn s4 s4.\sustainOff
  | s4. s8\sustainOn s4
  %25
  | s8\sustainOff\sustainOn s s s\sustainOff s s
  | s8\sustainOn s s s\sustainOff\sustainOn s s
  | s8\sustainOff\sustainOn s s s\sustainOff\sustainOn s s
  | s8\sustainOff\sustainOn s s s\sustainOff\sustainOn s s
  | s8\sustainOff s s2
  %30
  | s2.
  | s8\sustainOn s s s\sustainOff\sustainOn s s
  | s8\sustainOff s s2
  | s8\sustainOn s\sustainOff s2
  | s2.
  %35
  | s4. s8 s s\sustainOn
  | s\sustainOff
}

\score {
  <<
    \accidentalStyle Score.piano
    \new PianoStaff <<
      \new Staff = "upper" <<
        \clef treble
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Soprano
        }
        \new Voice {
          \Global
          \Alto
        }
      >>
      \new Staff = "lower" <<
        \clef bass
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Tenor
        }
        \new Voice {
          \Global
          \Bass
        }
        \new Voice {
          \Sustain
        }
      >>
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 1031"
    title = \markup { "Siciliano from the Flute Sonata No. 2" }
    subtitle = "To Albert Schweizer"
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
    \tempo 4 = 100
  }
}
