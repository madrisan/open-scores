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
  \set baseMoment = #(ly:make-moment 1/8)
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
  | \set subdivideBeams = ##t
    <fis fis'~>2 fis'16 g,32( a <b, b'> g' fis g) <cis, cis'>( g' fis g) <d d'>( g fis g)
  | e'( g, fis e) fis16( d')
    \set subdivideBeams = ##f
    cis8.( d16) d4 r4
  %15
  | b16\rest e32( d cis16 e) b( e) a,( e') g,( e b'8^.) r4
  | r16 fis'32( e d e fis16) cis( fis) b,( fis')
    \set subdivideBeams = ##t
    r16 cis32( b a cis d cis) gis( cis d cis) fis,( cis' d cis)
  | \stemNeutral b16\rest cis32( b a cis d cis) gis( cis d cis) fis,( cis' d cis)
    cis( eis fis gis) <a, a'>( fis' cis a') <gis, gis'>( eis' cis gis') <fis, fis'>( dis' bis fis')
  | cis( eis fis gis) <a, a'>( fis' cis a') <gis, gis'>( eis' cis gis') <fis, fis'>( dis' bis fis')
    \set subdivideBeams = ##f
    <eis, eis'>16_( cis'32 dis) <eis, eis'>16_( cis') <fis, fis'>( cis') <gis! gis'!>( cis)
  | \stemUp
    \set subdivideBeams = ##t
    <a a'~>2 a'16 b,32( cis <d, d'> cis' b16)
    \set subdivideBeams = ##f
    <e, e'>( b') <fis fis'>( b)
  %20
  | \set subdivideBeams = ##t
    <gis gis'~>2 gis'16 a,32( b <cis, cis'> a' gis! a) <d, d'>( a' gis a) <e e'>( a gis a)
    \set subdivideBeams = ##f
  | <fis fis'>4 r8 \tieNeutral <d d'>~ q16( <e e'>32 <fis fis'>
    \once\override Hairpin.X-offset = #2
    \once\override Hairpin.Y-offset = #-7
    <e e'>16\> <d d'>32 <cis cis'>)
    <b gis'! b>8.( <a a'>16)\!
  |\tieUp q( a'32 b c!16 a) dis,( c'! a'8~) a16 b,32( cis dis16 b) e( a, c!8~)
  | c!16( b g'8~) g32( fis e d! c! b a g) c8.( a16)
    \once\override Arpeggio.positions = #'(-5 . 0.5)
    <e b'>8(\arpeggio <dis b'>16. <e b'>32)
  | q8( b' e a) fis( a, d g)
  %25
  | e( g, c! f!) dis16( a' g fis) fis8.( e16)
  | e16^. e32( fis g16 e) a, e' c'!8~ c16 d,32( e fis16 d) g,( d' b'8~)
  | b16 c,!32( d e16 c) f,!( c' a'8~) a16( dis, e fis) dis!8.( e16)
  | e8 r g4\rest c16\rest a,32( b <c, c'>16 a') <d,! d'!>( a') <e e'>( a)
  | <fis fis'~>2\marcato fis'16 g,32( a <b, b'> a' g16) <c,! c'!>( g') <d d'>( g)
  %30
  | \shape #'((0 . 0.6) (0 . 1.2) (0 . 1.2) (-0.8 . 1)) Tie
    <e e'>2~\marcato q16( d'32 e <fis, fis'> d' cis d) <g, g'>( d' cis d) <a a'>( d cis d)
  | b'32( a g fis g16 e) fis8.( g16) g8 a\rest a4\rest
  | r16 a32( g fis16 a) e( a) d,( a') c,!( a! e'8^.) a4\rest
  | r16 b32( a g a b16) fis( b e, b') d,( b fis'8)^. r4
  | r16 fis32( e d fis g fis) cis( fis g fis) b,( fis' g fis) ais,8( b' ais gis)
  %35
  | fis32( e d cis) d( b fis d') cis( ais! fis cis') b( gis! eis b') ais!8 r r4
  | r16 b32( cis <d, d'>16 b') <e,! e'!> b' <fis fis'> b <g g'~>2\marcato
  | g'16 a,32( b <cis, cis'> b' a16) <d, d'>16( a') <e e'>( a) <fis fis'~>2\marcato
  | fis'16^. g,32( a <b, b'> g' fis g) <cis, cis'>( g' fis g) <d d'>( g fis g)
    <e e'>16( g fis d') e,( d' cis e,)
  | cis'( e, d b') cis,( b' a c,!) a'( c, b g') a,( g' fis a,)
  %40
  | fis'( a, g e') fis,16
    \once\override NoteColumn.force-hshift = #-1.5 e'
    \once\override NoteColumn.force-hshift = #0.1 d
    b' ais8( fis b e)
  | cis( e, a d) b( d, g c!)
  | ais16( g' fis e) d8( cis16 b) b16^. b32( cis d16 b) e,( b' g'8~)
  | g16( a,32 b cis16 a) d,( a' fis'8~) fis16 g,32( a b16 g) c,!( g' e'8~)
  | e16( ais,! b cis) cis8.( b16) b4\fermata s8 cis16( d32 e)
  %45
  | ais,8( b16 cis) ais!8.( b16) b2
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
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
    d16 \staffLower e,32 fis \staffUpper gis!16 e \staffLower a,^( e' \staffUpper cis'8~)
  | cis16 \staffLower d,32^( e fis16 d) g,!^( d' \staffUpper b'8~)
    b16 \staffLower eis,^( fis gis) eis8. \staffUpper fis16
  | fis8[ \staffLower cis] \staffUpper fis[ b] gis![ \staffLower b,] \staffUpper e[ a]
  %10
  | fis[ \staffLower a,] \staffUpper d[ g] eis16 b' a gis eis8. fis16
  | fis16 fis32( gis <ais, ais'>16 fis') <b, b'>( fis') <cis cis'>( fis)
    \shape #'((0 . -0.5) (0 . -0.6) (0 . -0.4) (-0.5 . -0.3)) Tie
    <d d'~>2
  | d'16 e,32( fis g! fis e16) <a,! a'!>( e') <b b'>( e) <cis cis'~>2
  | \set subdivideBeams = ##t
    cis'16 d,32^( e <fis, fis'> d' cis d) <g, g'>^( d' cis d) <a a'>^( d cis d)
    \set subdivideBeams = ##f
    <b b'>4 f8\rest \once\override NoteColumn.force-hshift = #1.3 g'
  | \set subdivideBeams = ##t
    g16 a32 b a16 g32 fis
    \set subdivideBeams = ##f
    e8. d16 d16_. a'32(\> g fis16 a) e( a) d,( a')\!
  %15
  | \staffLower cis,^(^\p a e'8^.) s4 \staffUpper r16 b'32( a g a b16) fis( b) e,( b')
  | \staffLower d,^( b fis'8^.) f4\rest \staffUpper a16( fis cis'8_.) r4
  | \staffLower eis,8 fis eis dis\cresc eis^\startTextSpan fis eis dis
  | eis fis eis dis
    \hideNotes \omit Beam \omit Stem a4 8 16 16\stopTextSpan
    \unHideNotes \undo\omit Beam \undo\omit Stem
  | \staffUpper r16 fis'32( gis <a, a'>16 fis') <b, b'>( fis') <cis cis'>( fis) <d! d'!~>2
  %20
  | \set subdivideBeams = ##t
    d'16 e,32( fis <gis, gis'!> fis' e16)
    \set subdivideBeams = ##f
    <a, a'> e' <b b'> e
    \shape #'((0 . 0) (0 . -6) (0 . -3) (0 . 0)) Tie
    <cis cis'~>2
  | \set subdivideBeams = ##t
    cis'16 d,32( e <fis, fis'> d' cis d) <gis, gis'>( d' cis d) a'( d, cis d)
    \set subdivideBeams = ##f
    b'[ \staffLower d, cis b] cis16 \staffUpper a' s4
  | a,4\p r16 dis'32( e fis16 c!) b8 r r16 dis!32( e fis16 a,)
  | g_.\< g32( a b16 g)\! \staffLower
    \once\override Staff.TextScript.extra-offset = #'(-1 . 2)
    e^\markup { \normalsize \dynamic f }(
    \staffUpper a
    \shape #'((0.2 . 1.2) (0 . 1.2) (0 . 1) (0 . 1)) Tie
    e'8~) e32 d! c! b a g fis e g,8 fis16. g32
  | \once\override Staff.TextScript.extra-offset = #'(-2.5 . 3)
    g16_._\markup { \normalsize \dynamic p } e'32( fis g16 e) \staffLower a,16^( e' \staffUpper c'!8~)
    c16 \staffLower d,32( e \staffUpper fis16 d) \staffLower g,16^( \staffUpper d' b'8~)
  %25
  | b16 c,!32( d e16 c) \staffLower f,!^( \staffUpper c' a'8~)
    a16 \staffLower dis, e fis dis!8. \staffUpper e16
  | \staffLower e8^\p b e \staffUpper a \staffLower fis a, d \staffUpper g
  | \staffLower e8 g, c! \staffUpper f! \staffLower dis16 \staffUpper a'\> g fis fis8. e16\!
  | e16_._\f e32( fis <g, g'>16 e') <a, a'>( e') <b b'>( e) <c c'~>2_\marcato
  | c'16 d,32( e <fis, fis'> e' d16) <g, g'>( d') <a a'>( d)
    \shape #'((0 . -0.6) (0 . -5) (0 . -4) (0 . 0)) Tie
    <b b'~>2_\marcato
  %30
  | b'16 c,32( d <e, e'> c' b c) <fis, fis'>( c' b c) <g g'>( c b c) <a a'>4 \staffLower d8\rest d^~
  | d16 \staffUpper g32( a b g c!16) b8\> a16 g g16_. d'32(\!\p c b16 d) a( d) g,( d')
  | \staffLower fis,^( d \staffUpper a'8) r4 r16 e'32( d c d e16) b( e) a,( e')
  | \staffLower g,^( e \staffUpper b'8) r4 r16 fis'32( e d fis g fis) cis( fis g fis b, fis' g fis)
  | ais,8 b ais gis fis32 ais! b cis d b \staffLower fis \staffUpper d'
    cis ais \staffLower fis \staffUpper cis' b gis! \staffLower eis \staffUpper b'
  %35
  | ais8 b ais gis fis16_. fis32(\f gis <ais,! ais'!>16 fis') <b, b'>( fis') <cis cis'>( fis)
  | \shape #'((0 . 0) (0 . -0.3) (0 . -0.3) (-0.5 . -0.5)) Tie
    <d d'~>2_\marcato\f d'16 e,32( fis <g,! g'!> fis' e16) <a,! a'!>( e') <b b'>( e)
  | \shape #'((0 . 0) (0 . -0.3) (0 . -0.3) (0 . -0.5)) Tie
    <cis cis'~>2_\marcato cis'16 d,32( e <fis, fis'> d' cis d) <g, g'>( d' cis d) <a a'>( d cis d)
  | <b b'>4 r8 \once\override NoteColumn.force-hshift = #-0.6 b' a4 g
  | fis\ff e d c!
  %40
  | b8 e e16 fis32_\> g fis e d16 cis4\mf\! r8 b
  | e a fis \staffLower a, \staffUpper d g e \staffLower g,
  | \slurUp fis16( ais b cis) ais8.( b16) b8^\p \staffUpper
    fis'[
    \once\override Staff.TextScript.extra-offset = #'(-0.5 . -2)
    b_\markup { "cantabile" } e]
  | cis e, a d b[ \staffLower d,] \staffUpper g[ c!]
  | ais16\> e' d cis ais!8. b16\! \once\stemUp \slashedGrace fis8 eis4 b'8\rest e,!~
  %45
  | \once\override Staff.TextScript.extra-offset = #'(-0.5 . -1)
    e8_\markup {
      "rit. " \normalsize \dynamic pp
    }
    d16 e cis8. b16 b2
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
  | \stemNeutral <a a'> <g'! g'!> <fis fis'> <e e'> <dis dis'>^\< <b b'> <cis! cis'!> <dis dis'>
  | \stemDown <e e'>\! <d! d'!> c'! <b, b'>^\>
    \stemNeutral <a a'> <fis' fis'> <b, b'>\! \ottava #-1 <b, b'> \ottava #0
  | <e e'> r \stemDown c''! r d! r b r
  %25
  | c! r a r b e b' b,
  | e c\rest c! c\rest d! c\rest b c\rest
  | c! c\rest a c\rest b <e, e'> <b' b'> <b, b'>
  | \stemUp <e, e'> <e' e'> <fis fis'> <g g'> <a a'> <a, a'> <b b'> <c! c'!>
  | <d d'> q <e e'> <fis fis'> <g g'> <g, g'> <a a'> <b b'>
  %30
  | <c c'> <b b'> <a a'> <g g'> \stemDown <fis fis'> <d' d'> <e e'>
    \once\override Arpeggio.positions = #'(-3 . 4)
    <fis fis'>\arpeggio
  | <g g'> <c,! c'!> <d d'> <d, d'> \stemUp <g g'> <g' g'> <fis fis'> <e e'>
  | \stemDown d' <d, d'> <c! c'!> <b b'> \stemUp <a a'> <a' a'> <g g'> <fis fis'>
  | \stemDown <e e'> q <d d'> <cis cis'> \stemUp <b b'> <b' b'> <a a'> <g g'>
  | <fis fis'> r r4 q8 r r4
  %35
  | <fis fis'>8 r r4 r8 q8 <gis gis'> <ais ais'>
  | <b b'> <b,b'> <cis cis'> <d d'> <e e'> q <fis fis'> <g! g'!>
  | <a a'> <a, a'> <b b'> <cis cis'> <d d'> q <e e'> <fis fis'>
  | <g g'> <g, g'>^\< <a a'> <b b'> <cis cis'> <d d'> <a' a'>\! <ais ais'>
  | <b b'> <d, d'> <e e'> <fis fis'> <g g'> <b, b'> <c! c'!> <dis, dis'>
  %40
  | <e e'> <cis' cis'> <ais ais'> <b b'> <fis fis'>16( fis'' e fis) \stemDown\slurDown d( b' g8~)
  | g16( a cis, a') d,( a' fis8~) fis16( g b, g') c,!( g' e8~)
  | e16 cis d b fis'8 fis, b r \stemNeutral <g, g'> r
  | <a a'> r <fis fis'> r <g g'> r <e e'> r
    \break
  | <fis fis'> <b b'> <fis' fis'> <fis, fis'> <gis gis'>4^\fermata r8 <g g'>
  %45
  | <fis fis'> <b b'> <fis' fis'> <fis, fis'> <b, b' b'>2\arpeggio
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
      \sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn s8\sustainOff\sustainOn
      \once\override Staff.TextScript.extra-offset = #'(1.5 . -1.5)
      s8\sustainOff_\markup { "et cetera" }
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
      \override TextScript.font-size = #0
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4 = 88
  }
}
