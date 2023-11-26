\version "2.24.1"

#(ly:set-option 'relative-includes #t)

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
  line-width = 18.4\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
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
        \line \abs-fontsize #42 \bold { "Sonate 4 für Orgel" }
        \null\null
        \line \abs-fontsize #24 \bold { "in e-Moll" }
        \null\null
        \line \abs-fontsize #38 \bold { "Andante" }
        \null\null\null
        \line \abs-fontsize #22 \bold { "BWV 528" }
        \null\null\null\null
        \line { \abs-fontsize #16 \italic "für Klavier zu zwei Händen" }
        \null
        \line { \abs-fontsize #16 \italic "bearbeitet von August Stradal" }
        \null\null
        \null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null
        \fill-line \abs-fontsize #10 {
          "Based on the score published by Muzgiz, n.d. Plate 23481 - Moscow"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key b \minor
  \time 4/4
  \include "global.ly"
}

cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc. " } }

staffLower = { \change Staff = "lower" \stemUp }
staffUpper = { \change Staff = "upper" \stemDown }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \stemNeutral\tieNeutral\slurUp
  %1
  | r8 fis\( b e cis e, a d
  | b d, g c! ais16 e' d cis\> cis8. b16\)
  | \stemUp\tieUp b\!^. b32( cis d16 b) e,( b' g'8~) g16 a,32( b cis16 a) d,( a' fis'8~)
  | fis16 g,32( a b16 g) c,( g' e'8~) e16( ais,! b cis) ais8.( b16)
  %5
  << {
  |   b8^. r r16 d32( cis d16 b') cis,8^. r r16 cis32( b fis'16 a)
  |   b,16^. b32( cis d16 b) gis16( d' b'8~) b16( a32 gis a16 fis) eis!8.( fis16)
    } \\ {
  |   s2. s8 \hideNotes fis~
  |   fis s s2. \unHideNotes
    } >>
  | fis8( cis fis b) gis( b, e a)
  | fis( a, d g!) eis16( b' a gis) gis8.( fis16)
  | fis16^. fis,32( gis a16 fis) b,( fis' d'8~) d16^. e,32( fis gis!16 e) a,16( e' cis'8)
  %10
  | cis16 d,32( e fis16 d) g,!( d' b'8~) b16( eis, fis gis) gis8.( fis16)
  | fis8^. r r4 r16 b32( cis\cresc <d, d'>16_\startTextSpan b') <e,! e'!>( b') <fis fis'>( b)
  | <g! g'!~>2 g'16 a,32( b <cis, cis'> b' a16) <d, d'>( fis) <e e'>( a)\stopTextSpan
  | <fis fis'~>2 fis'16 g,32( a <b, b'> g' fis g) <cis, cis'>( g' fis g) <d d'>( g fis g)
  | e'( g, fis e) fis16( d') cis8.( d16) d4 r4
  %15
  | b16\rest e32( d cis16 e) b( e) a,( e') g,( e b'8^.) r4
  | r16 fis'32( e d e fis16) cis( fis) b,( fis')
    r16 cis32( b a cis d cis) gis( cis d cis) fis,( cis' d cis)
  | \stemNeutral b16\rest cis32( b a cis d cis) gis( cis d cis) fis,( cis' d cis)
    cis( eis fis gis) <a, a'>( fis' cis a') <gis, gis'>( eis' cis gis') <fis, fis'>( dis' bis fis')
  | cis( eis fis gis) <a, a'>( fis' cis a') <gis, gis'>( eis' cis gis') <fis, fis'>( dis' bis fis')
    <eis, eis'>16_( cis'32 dis) <eis, eis'>16_( cis') <fis, fis'>( cis') <gis! gis'!>( cis)
  | \stemUp <a a'~>2 a'16 b,32( cis <d, d'> cis' b16) <e, e'>( b') <fis fis'>( b)
  %20
  | <gis gis'~>2 gis'16 a,32( b <cis, cis'> a' gis! a) <d, d'>( a' gis a) <e e'>( a gis a)
  | <fis fis'>4 r8 \tieNeutral <d d'>~ q16( <e e'>32 <fis fis'> <e e'>16 <d d'>32 <cis cis'>)
    <b gis'! b>8.( <a a'>16)

  | s1*26
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \stemDown\tieDown\slurDown
  %1
  | s1*2
  | r8 fis_\markup { "sempre" \dynamic p "e cantabile" } b e cis e, a d
  | b d, g c ais16 e' d cis cis8. b16
  | b b32 cis d16 b \staffLower e, \staffUpper b' gis'8~
    gis16 a,32( b cis16 a) \staffLower d,16 \staffUpper a' cis8
  %5
  | fis8 eis r16 gis32 fis gis16 eis! cis8. d16 gis,!8. fis16
  | fis_. fis32( gis a16 fis) \staffLower b,( \staffUpper fis' d'8~)
    d16 \staffLower e,32 fis \staffUpper gis16 e \staffLower a,^( e' \staffUpper cis'8~)
  | cis16 \staffLower d,32^( e fis16 d) g,! d' \staffUpper b'8~
    b16 \staffLower eis,^( fis gis) eis8. \staffUpper fis16
  | fis8[ \staffLower cis] \staffUpper fis[ b] gis![ \staffLower b,] \staffUpper e[ a]
  %10
  | fis[ \staffLower a,] \staffUpper d[ g] eis16 b' a gis eis8. fis16
  | fis16 fis32( gis <ais, ais'>16 fis') <b, b'>( fis') <cis cis'>( fis)
    \shape #'((0 . -0.5) (0 . -0.6) (0 . -0.4) (-0.5 . -0.3)) Tie
    <d d'~>2
  | d'16 e,32( fis g! fis e16) <a,! a'!>( e') <b b'>( e) <cis cis'~>2
  | cis'16 d,32^( e <fis, fis'> d' cis d) <g, g'>^( d' cis d) <a a'>^( d cis d)
    <b b'>4 f8\rest \once\override NoteColumn.force-hshift = #1.3 g'
  | g16 a32 b a16 g32 fis e8. d16 d16_. a'32(\> g fis16 a) e( a) d,( a')\!
  %15
  | \staffLower cis,^(^\p a e'8^.) s4 \staffUpper r16 b'32( a g a b16) fis( b) e,( b')
  | \staffLower d,^( b fis'8^.) f4\rest \staffUpper a16( fis cis'8_.) r4
  | \staffLower eis,8 fis eis dis\cresc eis^\startTextSpan fis eis dis
  | eis fis eis dis
    \hideNotes \omit Beam \omit Stem a4 8 16 16\stopTextSpan
    \unHideNotes \undo\omit Beam \undo\omit Stem
  | \staffUpper r16 fis'32( gis <a, a'>16 fis') <b, b'>( fis') <cis cis'>( fis) <d! d'!~>2
  %20
  | d'16 e,32( fis <gis, gis'!> fis' e16) <a, a'> e' <b b'> e
    \shape #'((0 . 0) (0 . -6) (0 . -3) (0 . 0)) Tie
    <cis cis'~>2
  | cis'16 d,32( e <fis, fis'> d' cis d) <gis, gis'>( d' cis d) a'( d, cis d)
    b'[ \staffLower d, cis b] cis16 \staffUpper a' s4

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieUp\slurNeutral
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \stemNeutral\tieDown\slurNeutral
  \override Rest.staff-position = #0
  %1
  | b8^\markup { \dynamic p "molto cantabile" }
    r g r a r fis r
  | g r e r fis\( b, fis' fis,\)
  | b r g r a r fis r
  | g r e r fis b fis' fis,
  %5
  | b b' gis e a, a' fis d
  | gis, gis' eis cis fis b cis cis,
  | \stemDown fis r d r e r cis r
  | d r b r cis fis cis' cis,
  | fis r d^\markup { "sempre" \dynamic p } r e! r cis r
  %10
  | d r b r \stemNeutral cis fis, cis' cis
  | <fis,, fis'>^\mf <fis' fis'> <gis gis'> <ais ais'> <b b'> <b, b'> <cis cis'> <d d'>
  | <e e'> q <fis fis'> <g! g'!> <a a'> <a, a'> <b b'> <cis cis'>
  | \once\override Staff.TextScript.extra-offset = #'(-2.5 . 3.5)
    <d d'>^\markup { \normalsize \dynamic f } q <e e'> <fis fis'> <g, g'> <g' g'> <a a'> <b b'>
  | <cis, cis'> <d d'> <a' a'> <a, a'> <d, d'> d'' cis b
  %15
  | a a' g fis e e d cis
  | b b' a gis fis fis e d
  | \stemDown cis b\rest b4\rest cis8 b\rest b4\rest
  | cis8 b\rest b4\rest r8 \stemNeutral <cis, cis'> <dis dis'> <eis eis'>
  | \once\override Staff.TextScript.extra-offset = #'(0 . 0.5)
    <fis fis'>^\markup { \normalsize \dynamic f } q <gis gis'> <a a'> <b b'> <b, b'> <cis cis'> <d d'>
  %20
  | <e e'> q <fis fis'> <gis gis'> <a a'> <a, a'> <b b'> <cis cis'>
  | <d d'> q <e e'> <fis fis'> \stemDown <gis, gis'>
    \once\override Arpeggio.positions = #'(-5.5 . 3)
    <a a'>\arpeggio <e' e'> <e, e'>

  | s1*26
    \fine
}

Sustain = {
  \set Staff.pedalSustainStyle = #'mixed
  %\override Staff.SustainPedal.color = \grayTextColor
  %1
  | %\override Staff.SustainPedalLineSpanner.staff-padding = #1
    %\set Staff.pedalSustainStyle = #'bracket
    s4\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
  %5
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
  %10
    \sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff
    \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s4\sustainOff\sustainOn s8\sustainOff
      \sustainOn s8\sustainOff\sustainOn s4\sustainOff
    \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s4\sustainOff\sustainOn s8\sustainOff
      \sustainOn s8\sustainOff\sustainOn s4\sustainOff
    \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s4\sustainOff\sustainOn s8\sustainOff
      \sustainOn s8\sustainOff\sustainOn s8\sustainOff
    \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s4\sustainOff\sustainOn s8\sustainOff
      \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff
   %15
    \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff
      \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff

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
      \Sustain
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 528"
    title = \markup { "Adagio" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4 = 88
  }
}
