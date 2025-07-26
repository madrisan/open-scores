\version "2.25.26"

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
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #42 \bold { "Konzert für Orgel" }
        \null\null
        \line \abs-fontsize #24 \bold { "in e-Moll" }
        \null\null
        \line \abs-fontsize #16 \italic {
          "Nach Antonio Vivaldi “L'estro armonico”"
        }
        \null\null\null
        \line \abs-fontsize #22 \bold { "BWV 596" }
        \null\null\null\null
        \line { \abs-fontsize #16 \italic "für Klavier zu zwei Händen" }
        \null
        \line { \abs-fontsize #16 \italic "bearbeitet von Aleksandr Nemerovsky" }
        \null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on an unidentified publisher, Russia"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key d \minor
  \time 12/8
  \include "global.ly"
}

hshiftm = { \override NoteColumn.force-hshift = #-0.3 }
hshiftl = { \once\override NoteColumn.force-hshift = #-0.8 }
nohshift = { \override NoteColumn.force-hshift = #0 }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Hairpin.self-alignment-Y = #3
  %1
  | \tempo "Largo e spiccato"
    <f d'>8.\(_\markup {
      \hspace #-1 \dynamic p "con grande espressione"
    } <g e'>16 <f d'>8 q4 q8\)
    <g e'>8.\( <a f'>16 <g e'>8 q4 q8\)
  | <f f'>4\( <f d'>8 <g ees'>8. <a f'>16 <g ees'>8\)
    ees'4\( ees8 <f, d'>8. <g ees'>16 <f d'>8\)
  | d'4\( d8 <e, cis'>4 q8\)
    \stemNeutral
    <f d' a'>8.\arpeggio\(\mf g'16 f8 f8. e16 d8\)
  | bes'8.\( d,16 bes'8 c,4\< bes'8\! bes4\>\prall a8\)\! r8 d\( d,\)
  %5
  | g8.\(\< a16 bes8\! bes8.\> a16 g8\! fis4.~ fis8. e16 d8\)
  | aes'4.~\( aes8. g16 fis8 g4 a8 d,8.g16 fis!8\)
  | g4. r8 r g aes8.\( g16 f8 f4 f8
  | \override Hairpin.self-alignment-Y = #5
    f4\<\prall e!8 f4.\) bes8.\(\! c16 bes8 c,4 bes'8
  | aes8.\> g16 f8\! f4 c8\) aes'4\(\< g8 fis8. e16 d8\!
  %10
  | bes'!8. a16 gis8 a4.~ a8. g16 f8\) e4\( d8
  | c8. b!16 a8 a4.\mordent\) a'8.\(\> g16 f8\! f8. e16 d8
  | bes'8. d,16 bes'8 c,4\< bes'8\! bes4\prall\> a8\)\! r d\( d,
  | g8.\< a16 bes8\! bes8.\> a16 g8\! g4\prall f8\) a8.\( f16 d8
  | b8. c16 b8\) b'8.\(\< gis16 e8 cis8. d16 cis8\) a'8.\( f16 d8\!
  %15
  | ees8.\> cis16 d8\! f4\prall e8 d4.\) a'8.\( f16 d8
  | b8. c16 b8\) b'8.\( gis16 e8 cis8. d16\< cis8\) a'8.\( f16 d8
  | ees8. cis16\! d8 f4\prall^\markup { "" }\> e8\)\!
    \tempo "a tempo"
    <f, d'>8.\( <g e'>16 <f d'>8 q4 q8\)
  | \stemUp <g e'>8.\( <a f'>16 <g e'>8 q4 q8\)
    <f f'>4\( <f d'>8 <g ees'>8. <a f'>16 <g ees'>8\)
  | ees'4\( ees8 <f, d'>8. <g ees'>16 <f d'>8\)
    d'4\( d8 <e, cis'>4 q8\)
  %20
  | d'1*12/8\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \hshiftm
  %1
  | a4 \hshiftl a8 a4 \hshiftl a8 bes4 \hshiftl bes8 bes4 \hshiftl bes8
  | a4 \hshiftl a8 bes4. \nohshift a4 a8 \hshiftm a4 \hshiftl a8
  | \nohshift bes8. c16 bes8 \hshiftm a4 \hshiftl a8 s4. s4.
  | s1*12/8*13
  %17
  | s4. s a\mf \hshiftm a4 \hshiftl a8
  | bes4 \hshiftl bes8 bes4 \hshiftl bes8
    a4 \hshiftl a8 bes4 \hshiftl bes8
  | \nohshift a4 a8 \hshiftm a4 \hshiftl a8
    \nohshift bes8. c16 bes8 \hshiftm a4 \hshiftl a8
  | \nohshift <f a>1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*12/8
  | s2. c4 c8 s4.
  | e4 e8 s4. s4. s4.
  | s1*12/8*15
  %19
  | c4 c8 s4. e4 e8 s4.
  | d,1*12/8
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <d, d'>4_\markup {
      "con" \musicglyph #"pedal.Ped"
    }
    q8 q4 q8 q4 q8 <cis cis'>4 q8
  | <d d'>4 d'8 <g, g'>4 g'8 fis8. g16 fis8 f4 f8
  | g8. a16 g8 a4 a,8 <d, d'>8 <d'' f>8^.[^\( q^.]  q^. q^. q^.\)
  | <g, d' f>8_\markup { "simile" }
    q q <c e> q q <f, c' e> q q <f a d> q q
  %5
  | <e g d'>8 q q <e g cis> q q <d a' c> q q q q q
  | <d aes' c> q q q q q <cis e bes'> q q <d bes'> <d g bes> <d a' c>
  | <g bes> q q <e bes' c> q q <f aes c> q q <f aes des> q q
  | \clef "treble" <bes des g> q q q q q <c e> q q <c e g> q q
  | <f, c' f> q q
    \clef "bass" <f aes c> q q <c ees c'> q q <c d a'> q q
  %10
  | <bes d g> q <b d f> <c e> q <c e c'> <d f b> q <d a' b> <e gis b> q q
  | <a c> q q <g cis> q q <f a d> q q <f d' f> q q
  | <g d' f> q q <c e> q q <f, c' e> q q <f a d> q q
  | <e g d'> q q <e g cis> q q <d a' d> q q <f a d> q q
  | <g d' g> q q <gis b e> q q <a e' a> q q <f a d> q q
  %15
  | <g bes d> q q <a a'> <a d a'> <a cis a'> <d f> q q <f, a d> q q
  | <g d' g> q q <gis b e> q q <a e' a> q q <f a d> q q
  | <g bes d> q q <a a'> <a d a'> <a cis g'> <d,, d'>4 q8 q4 q8
  | q4 q8 <cis cis'>4 q8 <d d'>4 d'8 <g, g'>4 g'8
  | fis8. g16 fis8 f4 f8 g8. a16 g8 a4 a,8
  %20
  | d,1*12/8\fermata
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 596"
    title = \markup { "Konzert für Orgel" }
    subtitle = \markup { "Nach Antonio Vivaldi “L'estro armonico”" }
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
    \tempo 4 = 45
  }
}
