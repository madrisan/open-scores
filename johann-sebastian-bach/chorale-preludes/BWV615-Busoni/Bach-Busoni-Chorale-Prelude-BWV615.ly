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
        \line { \abs-fontsize #36 \bold "In dir ist Freude" }
        \null
        \line { \abs-fontsize #22 "(In You Is Joy)" }
        \null\null\null
        \line { \abs-fontsize #24 \bold "Chorale Prelude BWV 615" }
        \null
        \line {
          \abs-fontsize #16 "from «"
          \abs-fontsize #16 \italic "Das Orgelbüchlein"
          \abs-fontsize #16 "», Part III"
        }
        \null\null\null\null\null
        \line { \abs-fontsize #16 \italic "arranged for Piano Solo by" }
        \null
        \line { \abs-fontsize #33 \bold "Ferruccio Busoni" }
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key g \major
  \time 3/2
  \include "global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

calando = { \override TextSpanner.bound-details.left.text = \markup { \italic\small "calando " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \override TupletBracket.bracket-visibility = ##f
  \tempo \markup {
    \column {
      \line { "Allegro marcato" }
      \general-align #Y #-1
      \line { \hspace #2 \small "Lebhaft, doch gemessen; mit großer Pracht" }
    }
  }
  %1
  | R1*3/2
  | d2^^ d^^ c^^
  | b^^ f'8\rest g, d' g f8\rest a, d fis
  | <b, g'> <g d'> <fis a> <e c'> b' d g, b a d fis, a
  %5
  | d2^^ <b d>^^ <a c>^^
  | b8^^ <b g'> <c fis> <a e'> <b d> <fis c'> <g b> <e d'> <fis c'> <g b> <d a'> <fis c'>
  | <g b> d e fis g a b c <fis, d'> <g e'> <a fis'> <fis d'>
  | \stemDown <b g'>4 r r2 r2
  | \stemUp d2^^ <g, b d>^^ <d c'>^^
  %10
  | <d g b>2.^^ <c fis a>4^^ <b d g>2^^
  | <c d c'>^^ <b d g b>^^ <a c a'>^^
  | <g b d g>8^.^^ d'[ e fis] g a b c d e fis d
  | g e d c d b a g a g fis e
  | fis2. a4 g a
  %15
  | b2. e,4^.  a2~^-
  | a8 c b a g fis e fis g4 fis
  | <e, e'~>2 e'8\< fis g a b c d e\!
    \bar "||"
  | fis, c' b a b a g a fis a g fis
  | d'2^^ d^^ c^^
  %20
  | <b, b'>2^^ fis''8\rest g, d' g fis8\rest a, d fis
  | \stemDown <b, g'>^^ d <fis a> <e c'> <d b'> d' <b, g'> <d b'> <c a'> d' <a, fis'> <c a'>
  | \stemUp <d d'>2^^ <d b' d>^^ <c a' c>^^
  | <b g' b>8 \stemDown <b' g'>[ <c fis> <a e'>] <b d> <fis c'> <g b> <e d'> <fis c'> <g b> <d a'> <fis c'>
  | <b, g' b> <fis d'>[ <g e'> <a fis'>] <b g'> <c a'> <d b'> <e c'> <fis d'> <g e'> <a fis'> d
  %25
  | s1*3/2
  | s1*3/2
  | s1*3/2

  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \slurUp\tieUp
  %1
  | \stemDown s1*3/2
  | s1*3/2
  | d2_^ <b d>_^ <a c>_^
  | s1*3/2
  %5
  | g'8 d g a d,\rest b d g d\rest a d fis
  | s1.*3
  | s4 \stemUp <fis a> s2 \stemDown fis8 a g fis
  | s1*3/2
  %11
  | s2 b,8 c d e fis g e fis
  | s2 c8\rest\< fis g a b c a b\!
  | g1 s2
  | s1*3/2
  %15
  | \tieDown d8 f! e d c2~ c8 d b c
  | b1 e8 b dis a~
  | a c b a \bottom g fis e fis g a b c
  | \top d2_^ d_^ c_^
  | g'8 b fis a g b e, g fis a d, fis
  %20
  | g d g a <b, d b'>2_^ <a c a'>
  | s1*3/2
  | g''8 d g a e,\rest g d' g e,\rest a d fis
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  %1
  | \top d2^^ d^^ c^^
  | b8 \bottom d a c b d g, b a d fis, a
  | g d \top g a s1
  | \bottom s2 d8 c b d c b a c
  %5
  | b2 s1
  | \top g'8 \bottom d e fis g a, b c d e, fis d
  | \once\override NoteColumn.force-hshift = #0.4 g fis g a
    \once\override NoteColumn.force-hshift = #0.6 b \top c d e s2
  | \bottom s8 d s4. d8 s4. d8 s4
  | \top e8\rest e d c b a' g a
    \bottom \once\override NoteColumn.force-hshift = #-1.1 a,,2
  %10
  | r8 g a b c d e fis g a b g
  | a \top fis' g a s1
  | s1*3/2
  | \bottom b,2-- b-- \showStaffSwitch cis--
  | \top d2. c!4 b c \hideStaffSwitch
  %15
  | s1*3/2
  | \bottom dis,2 <e, e'>4 <g, g'>8 <a a'> <b b'> <a a'> <b b'>4
  | s1*3/2
  | s1*3/2
  | \top b''8 \bottom d a c b d g, b a d fis, a
  %20
  | d,4 s4 s1
  | s4 a''8 c b a g4 a8 g fis4
  | s1*3/2
  | a,8\rest d, e fis g a b c d e fis d
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override Rest.staff-position = #0
  %1
  | \stemNeutral
    r4^\f <d d'>4-! <g g'>-! <b, b'>8-! <c c'>-! <d d'>-! <c c'>-! <d d'>4-!
  | <g, g'>4 g'\rest_\markup {
      \column {
        \italic "non legato"
        \general-align #Y #-2
        \italic"robustamente"
      }
    } g2\rest g\rest
  | \stemDown
    g4\rest <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | \stemUp
    <g, g'> r b'2\rest b\rest
  %5
  | \stemDown g4\rest <d d'> <g g'> \stemUp <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'> g'\rest g2\rest g\rest
  | \stemDown <d' d'>2^^ <d d'>^^ <c c'>^^
  | <b b'>8\ff s <a a'> <c c'> <b b'> s <g g'> <b b'> <a a'> s <fis fis'> <a a'>
  | \stemUp <g g'>4 <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  %10
  | \stemDown <g, g'>4 c\rest g'2\rest g\rest
  | \stemUp b4\rest <d, d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'> s4 s1
  | s1*3/2
  | \stemDown r8 b'' a g a fis e d \stemUp e c b a
  %15
  | \stemUp gis2 \stemDown a8 b' a g! fis e dis e
  | e,4\rest <b b'>\ff s1
  | \stemUp <e, e'>2 s1
  | r4^\ff <d' d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'> g'4\rest g2\rest g\rest
  %20
  | e4\rest <d d'> <g g'> <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | <g, g'>4 \clef treble \stemDown fis'''8 e d c b4 c8 b a4
  | <b g'>4 \clef bass \stemUp <d,, d'> <g g'>
    <b, b'>8 <c c'> <d d'> <c c'> <d d'>4
  | \stemDown <g, g'> g'4\rest g2\rest g\rest
  | <d' d'>2^^ <d d'>^^ <c c'>^^
  %25
  | s1*3/2
  | s1*3/2
  | s1*3/2

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
    opus = \markup { "BWV 615" }
    title = \markup { "In dir ist Freude" }
    subtitle = \markup {
      \column {
        \line { "[" { \italic "In You Is Joy" } "]" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #12
    }
  }
  \midi {
    \tempo 4 = 35
  }
}
