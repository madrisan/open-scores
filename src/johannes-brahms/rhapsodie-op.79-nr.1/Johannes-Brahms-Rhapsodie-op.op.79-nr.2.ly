\version "2.23.80"
\language "nederlands"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 8\mm
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
        (stretchability . 25))
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
        \line { \abs-fontsize #30 \bold "Johannes" }
        \null
        \line { \abs-fontsize #80 \bold "Brahms" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #48 \bold "Rapsodie h-moll" }
        \null\null\null
        \line { \abs-fontsize #34 \bold "op. 79 nr. 1" }
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
        \fill-line { \abs-fontsize #12 "Based on the Edizioni Curci - Milano" }
        \null\null
      }
    }
  }
}

Global = {
  \key b \minor
  \time 4/4
  \include "./global.ly"
  %\override Staff.BreathingSign.text =
  %  \markup { \magnify #1.5 \musicglyph "scripts.rcomma" }
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }
cresc = \markup { \small "cresc." }
md = \markup { \hspace #-1 \small "m.d." }
ms = \markup { \hspace #-0.5 \small "m.s." }
parenthesizems = \markup { \hspace #-2 \small "(m.s.)" }
pocorit = { \override TextSpanner.bound-details.left.text = \markup { \small "poco rit. " } }
pocoapocorit = {
  \override TextSpanner.bound-details.left.text = \markup {
    \small "poco a poco ritardando"
  }
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \override Parentheses.font-size = #1
  \tempo
  \markup {
    \column {
      \bold "Agitato"
      " "
    }
  }
  %1
  \repeat volta 2 {
  | fis4.^>\(\tuplet 3/2 { cis16 d e } d4. b8
  | ais4. cis8 fis,4. gis8
  | ais4. fis8\) <e cis' e>[_( fis <d b' d> fis])
  | <cis ais' cis>4.( fis8) <g e' g>[( b <fis d' fis> b])
  %5
  | <e, cis' e>4_.\f <a cis e a>2-- <a_~ d~ f!~ a~>4--
  | q8 <g e'>[( <a f'!> <bes g'>]) r <gis f'>[( <e cis'> <f! d'>])
  | \stemDown r <e cis' e>--[(\parenthesize\mf gis a]) r <g! e' g!>--[( a <f! d' f!>--])
  | r <e cis' e>--[(_\cresc gis a]) r <bes! g' bes!>--[( d <a f'! a>--])
  | <g e' g>4-. <c! e g c!>2->\parenthesize\f <c_~ f!~ aes~ c~>4--\<
  %10
  | q <cis eis gis b cis>2-> <cis_~ fis~ a!~ cis~>4--
  | q\!\f <fis cis' fis>-. <d fis d'>-. <b d b'>-.
  | <cis gis' cis>-. <a cis a'>-. <eis cis' eis>-. <fis cis' fis>-.
  | \stemUp\slurDown r8_\parenthesize\mf <d d'>[( <cis cis'> <bis bis'>])
     r <cis cis'>[(\< <dis dis'> <eis eis'>])
  | \stemDown\slurUp r <fis fis'>[( <gis gis'> <a a'>]) r <b b'>[( <cis cis'> <d d'>])
  %15
  | \stemUp\slurDown r\!\parenthesize\f <eis, eis'>-.[ r <fis fis'>-. r <bis, bis'>-. r <cis cis'>-.]
  | s1
  | s1
  | s4 <d fis>8_.[(^\ms g\rest <cis, eis>_. g'\rest <c,! e!>_.]) g'\rest
  | <b, dis>_.( r s4 <gis d'!>8_.) r s4
  %20
  | <ais cis>8 r <d fis>_.[( r <cis eis gis>_. r <c! e! ais>_.]) r
  | <b dis b'>8_.( r s4 <gis b d!>8_.) r s4
  | \slurUp <ais cis>8 r <a! d fis>4(^\<^\markup {
      \small "sostenuto sempre"
    }
    q q
  | q4. \tuplet 3/2 { cis16\! d e } d4. bes8)
  | a4
    \shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 2.8) (0 . 2.5) (0 . 3) (0 . 2))
    ) Slur
    <d fis>2( <d_~ fis^~>4\<
  %25
  | q q2 q4~\!
  | q4.) \tupletDown\tuplet 3/2 { cis16( d e } d2~\>
  | d4. \tuplet 3/2 { cis16 d e } d4. bes8)
  | s4\!\p\> s2.
  | s2. s4\!
  }
  \break
  %30
  | \key d \minor
    a'4( d^\< e2)\!\>
  | a,4(\! d^\< e2)\!\>
  | a,4(\! d e f
  | g f8 g f4 e)
  | d( g^\< a2)\!\>
  %35
  | d,4(\! g^\< a2)\!\>
  | d,4(\! g a bes\pocorit
  | c!\startTextSpan bes8 a g4 e)
  | d2 d
  | d4\stopTextSpan^\markup { \small\bold "in tempo" }
    <d f! bes d>^.^> q^.^> q^.^>
  %40
  | q4. \stemNeutral
    \tupletNeutral\tuplet 3/2 { a'16( bes c } <bes, ges' bes>4.) <ges ees' ges>8
  | <f d' f>4 r8
    \once\override DynamicText.X-offset = #-1
    bes'_\parenthesize\mf <a, ges'>4.--( <c ees>8)
  | <f, d'>4._-( bes8) <a, ges'>4._-( <c ees>8)
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    r8_\markup { \dynamic p \small "mezza voce" } s <des ges bes>4 q q
  | q2 s
  %45
  | s4. <bes ges' bes>4_( <ces ges' bes> <c!_~ ges'^~ bes^~>8
  | q <des ges bes>4) s2 s8
  | s4. <d! ges bes>4_( <ees ges bes>) s8
  | s4. <ees bes'>4_(\parenthesize\< <e! bes'>8) <bes' e! bes'>4^.
  | \ottava #1
    <bes' des bes'>4.^>\!\parenthesize\f \tuplet 3/2 { e!16[ f ges] } <a, c f>4^. \ottava #0 r
  %50
  | <bes,, des bes'>4._>( \tuplet 3/2 { e!16 f ges } <a, c f>4_.) r
  | \ottava #1
    <des'' f des'>4.^>\f( \tuplet 3/2 { g!16[ aes beses] } <c, ees aes>4^.) \ottava #0 r
  | <des,, f des'>4._>( \tuplet 3/2 { g16[ aes beses] } <c, ees aes>4_.) r
  | <f' f'>4.^> \tuplet 3/2 { e,!16[( f ges] } <f, f'>4.)_\markup { \hspace #2 \small "sempre cresc." }
    <f''_~ f'^~>8^-
  | q4. \tuplet 3/2 { e,16[( f ges] } <f, f'>4.) <eis''_~ cis'~ eis~>8^-
  %55
  | q4. <fis_~ cis'~ fis~>8^- q4. <fis d' fis>8^-~
  | q4. \tuplet 3/2 { eis,16[( fis gis] } <fis, fis'>4.) <fis'' e'! fis~>8^-~
  | q4. \tuplet 3/2 { eis,16[( fis gis] } <fis, fis'>4.) <ges''_~ ces~ ges'~>8^-
  | q4. \ottava #1 <g! bes! e! g>8^>\< q4. <a!_~ c!_~ f~ a!~>8
  | q4. <c_~ f~ c'~>8^> q4. <f a f'>8^^
  %60
  | q4.(\!\ff \tuplet 3/2 { c'16[ des ees] } <e,! des'>4^.) \ottava #0 r
  | <f,,, a f'>4.( \tuplet 3/2 { c'16[ des ees] } <e,! des'>4_.) r
  | \omit TupletNumber
    \clef bass
    \once\override DynamicText.Y-offset = #-5
    f,2~(\f \tuplet 10/16 { f32[ g a bes c d! e f g a] }
  | \clef treble \tuplet 11/16 { bes[ c d e f g a bes c d e] } f8^.) r r4\parenthesize\breathe
  | \clef bass
    \once\override DynamicText.Y-offset = #-5
    <bes,,, des g>1~^>\ff(
  %65
  | \stemDown \tuplet 10/16 { q32[ aes' bes ces \clef treble des\< ees f ges aes bes] }
    \tuplet 11/16 { ces[ des ees f ges aes bes ces des ees f] }
  | \stemUp fis8)\!\fz d\rest d4\rest d2\rest
  | \key d \major
    \stemDown fis,4.^( \undo\omit TupletNumber \tupletDown \tuplet 3/2 { cis16[ d e] } \stemUp\slurDown d4. b8
  | ais4. cis8 fis,4. gis8
  | ais4. fis8) <e cis' e>[( fis <d b' d> fis])
  %70
  | <cis ais' cis>4.( fis8) <g e' g>8[( b <e, cis' e> b'])
  | \once\override DynamicText.Y-offset = #-5
    <cis, ais' cis>4_.\f \stemDown <fis ais cis fis>2^- <fis b d fis>4^-
  | \stemUp r8 <e cis'>[( <fis d'> <g e'>]) r <fis d'>[( <cis ais'> <d b'>])
  | r8 <cis ais' cis>[( eis fis]) \stemDown\slurUp r <g e' g>[( b <fis d' fis>])
  | r8 <cis ais' cis>[( eis fis]) \stemDown\slurUp r <b g' b>[( cis <g e' g>])
  %75
  | <e cis' e>4 <a cis e a>2^- <ais cis fis ais>4^-~\<
  | q4 <b d fis b>2^- <d fis b d>4^-~
  | q4\!\f \ottava #1 <b' fis' b>^. <g b g'>^. \ottava #0 <e g e'>^.
  | <fis cis' fis>^. <d fis d'>^. <ais fis' ais>^. <b fis' b>^.
  | r8 <g g'>[(_\parenthesize\mf <fis fis'> <eis eis'>]) r
    \once\override Hairpin.Y-offset = #-3.5
    <fis fis'>[(\< <gis gis'> <ais ais'>])
  %80
  | r <b b'>[( <cis cis'> <d d'>]) r <e e'>[( <fis fis'> <g g'>])
  | r\!_\markup { \hspace #-2.5 \small "più" \dynamic f } <a, a'>[( <g g'> <fis fis'>]) r <g g'>[( <a a'> <b b'>])
  | r <c! c'!>[( <d d'> <ees ees'>]) r <f! f'!>[( <g g'> <aes aes'>])
  | r \stemUp bis,,_._- r cis_._- r \stemDown <fis' fis'>[(\parenthesize\< <gis gis'> <a a'>])\!
  | r \stemUp cis,,_._- r d_._- r \stemDown <g' g'>[(\parenthesize\< <a a'> <bes bes'>])\!
  %85
  | r \stemUp ees,,_._- r \ottava #1 cis''!4. \ottava #0 r8 e,,!_._-
  | r \ottava #1 cis''!4. r4 \stemDown
    \once\override DynamicText.Y-offset = #-5
    <b fis' b>^.\sf \ottava #0
  | r8 <eis, eis'>^.[ r <fis b fis'>^. r <b, b'>^. r <c! g' c!>^.]
  | r8 \stemUp\slurDown <ais ais'>_.[ r <b d b'>_. r <eis,, eis'>_. r <fis ais cis fis>_.]
  | \once\override DynamicText.Y-offset = #-4.5
    \once\override Hairpin.Y-offset = #-4
    r2\f\> \clef bass fis,4^>( b^>)
  %90
  | <fis cis'>1^>
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    r8\!_\markup { \small "dim." } \stemDown\slurUp fis'4^-( b^- cis^- d8^-)
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    r2_\markup { \concat { \small "rit. ( " \dynamic p \small " )" } }
    \clef treble r8 \stemUp\slurDown <fis, fis'>4(\< <b b'>8)\!
  | <cis fis cis'>1\fermata
    \bar "||"
  | \key b \major
    fis'1
  %95
  \repeat volta 2 {
  | fis1
  | fis1
  | fis1
  | b,2 ais!
  | fis'1
  %100
  | fis1
  | cis'1
  | cis1
  | cis1
    \alternative {
      \volta 1 { fis,1 }
  %105
      \volta 2 { fis1 }
    }
  }
  \repeat volta 2 {
  | fis1
  | fis1
  | b2. a4~
  | 4 2 4~
  %110
  | 4 2 4~
  | 4 2 4~
  | 4 2 d,4_~
  | 4\< d! cis b
  | \once\override NoteColumn.force-hshift = #0.9 fis'1^>\!
  %115
  | fis1
  | b1
  | b1*1/2 \stemDown ais4 gis
  | \stemUp \slurUp fis4( dis^\< d!2)\!\>
  | \tupletUp\tuplet 3/2 { dis4(\! fis dis)\< } d!2\!\>
  %120
  | \tupletUp\tuplet 3/2 { dis2(\< fis\!\> d!)\! }
  | \shape #'((0.5 . 0.5) (0 . 0) (0 . 0) (0 . -2.4)) Slur
    cis2( dis4 e
  | \alternative {
      \volta 1 { dis1) fis }
      \volta 2 { dis1 }
    }
  }
  %125
  | cis2( dis4 e)
  | dis2(^\markup { \hspace #3 \small "poco rit." } d!
  | cis)( dis4 e
  | dis1
  | <dis fis>)
  %130
  | <d! fis>~^-
  | q1
    \bar "||"
    \pageBreak
  | \key b \minor
  | fis4.^>^\markup {
      \small\bold "in tempo"
    } \(\tuplet 3/2 { cis16 d e } d4. b8
  | ais4. cis8 fis,4. gis8
  | ais4. fis8\) <e cis' e>[_( fis <d b' d> fis])
  %135
  | <cis ais' cis>4.( fis8) <g e' g>[( b <fis d' fis> b])
  | \once\override DynamicText.Y-offset = #-4
    <e, cis' e>4_.\f <a cis e a>2-- <a_~ d~ f!~ a~>4--
  | q8 <g e'>[( <a f'!> <bes g'>]) r <gis f'>[( <e cis'> <f! d'>])
  | \stemDown r <e cis' e>--[(\mf gis a]) r <g! e' g!>--[( a <f! d' f!>--])
  | r_\cresc <e cis' e>--[( gis a]) r <bes! g' bes!>--[( d <a f'! a>--])
  %140
  | <g e' g>4-.
    \once\override DynamicText.Y-offset = #-4
    <c! e g c!>2->\f <c_~ f!~ aes~ c~>4--\<
  | q <cis eis gis b cis>2-> <cis_~ fis~ a!~ cis~>4--
  | q\!\f <fis cis' fis>-. <d fis d'>-. <b d b'>-.
  | <cis gis' cis>-. <a cis a'>-. <eis cis' eis>-. <fis cis' fis>-.
  | \stemUp\slurDown r8_\parenthesize\mf <d d'>[( <cis cis'> <bis bis'>])
     r <cis cis'>[(\< <dis dis'> <eis eis'>])
  %145
  | \stemDown\slurUp r <fis fis'>[( <gis gis'> <a a'>]) r <b b'>[( <cis cis'> <d d'>])
  | \stemUp\slurDown r\!\parenthesize\f <eis, eis'>-.[ r <fis fis'>-. r <bis, bis'>-. r <cis cis'>-.]
  | s1
  | s1
  | s4 <d fis>8_.[(^\ms g\rest <cis, eis>_. g'\rest <c,! e!>_.]) g'\rest
  %150
  | <b, dis>_.( r s4 <gis d'!>8_.) r s4
  | <ais cis>8 r <d fis>_.[( r <cis eis gis>_. r <c! e! ais>_.]) r
  | <b dis b'>8_.( r s4 <gis b d!>8_.) r s4
  | \slurUp <ais cis>8 r <a! d fis>4(^\<^\markup {
      \small "sostenuto sempre"
    }
    q q
  | q4. \tuplet 3/2 { cis16\! d e } d4. bes8)
  %155
  | a4
    \shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 2.8) (0 . 2.5) (0 . 3) (0 . 2))
    ) Slur
    <d fis>2( <d_~ fis^~>4\<
  | q q2 q4~\!
  | q4.) \tupletDown\tuplet 3/2 { cis16( d e } d2~\>
  | d4. \tuplet 3/2 { cis16 d e } d4. bes8)
  | s4\!\p\> s2.
  %160
  | s2. s4\!
    \bar "||"
  | \key d \minor
    a'4( d^\< e2)\!\>
  | a,4(\! d^\< e2)\!\>
  | a,4(\! d e f
  | g f8 g f4 e)
  %165
  | d( g^\< a2)\!\>
  | d,4(\! g^\< a2)\!\>
  | d,4(\! g a bes\pocorit
  | c!\startTextSpan bes8 a g4 e)
  | d2 d
  %170
  | d4\stopTextSpan^\markup { \small\bold "in tempo" }
    <d f! bes d>^.^> q^.^> q^.^>
  | q4. \stemNeutral
    \tupletNeutral\tuplet 3/2 { a'16( bes c } <bes, ges' bes>4.) <ges ees' ges>8
  | <f d' f>4 r8
    \once\override DynamicText.X-offset = #-1
    bes'_\parenthesize\mf <a, ges'>4.--( <c ees>8)
  | <f, d'>4._-( bes8) <a, ges'>4._-( <c ees>8)
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    r8_\markup { \dynamic p \small "mezza voce" } s <des ges bes>4 q q
  %175
  | q2 s
  | s4. <bes ges' bes>4_( <ces ges' bes> <c!_~ ges'^~ bes^~>8
  | q <des ges bes>4) s2 s8
  | s4. <d! ges bes>4_( <ees ges bes>) s8
  | s4. <ees bes'>4_(\< <e! bes'>8) <bes' e! bes'>4^.
  %180
  | \ottava #1
    <bes' des bes'>4.^>\!\f \tuplet 3/2 { e!16[ f ges] } <a, c f>4^. \ottava #0 r
  | <bes,, des bes'>4._>( \tuplet 3/2 { e!16 f ges } <a, c f>4_.) r
  | \ottava #1
    <des'' f des'>4.^>\f( \tuplet 3/2 { g!16[ aes beses] } <c, ees aes>4^.) \ottava #0 r
  | <des,, f des'>4._>( \tuplet 3/2 { g16[ aes beses] } <c, ees aes>4_.) r
  | <f' f'>4.^> \tuplet 3/2 { e,!16[( f ges] } <f, f'>4.)_\markup { \hspace #2 \small "sempre cresc." }
    <f''_~ f'^~>8^-
  %185
  | q4. \tuplet 3/2 { e,16[( f ges] } <f, f'>4.) <eis''_~ cis'~ eis~>8^-
  | q4. <fis_~ cis'~ fis~>8^- q4. <fis d' fis>8^-~
  | q4. \tuplet 3/2 { eis,16[( fis gis] } <fis, fis'>4.) <fis'' e'! fis~>8^-~
  | q4. \tuplet 3/2 { eis,16[( fis gis] } <fis, fis'>4.) <ges''_~ ces~ ges'~>8^-
  | q4. \ottava #1 <g! bes! e! g>8^>\< q4. <a!_~ c!_~ f~ a!~>8
  %190
  | q4. <c_~ f~ c'~>8^> q4. <f a f'>8^^
  | q4.(\!\ff \tuplet 3/2 { c'16[ des ees] } <e,! des'>4^.) \ottava #0 r
  | <f,,, a f'>4.( \tuplet 3/2 { c'16[ des ees] } <e,! des'>4_.) r
  | \omit TupletNumber
    \clef bass
    \once\override DynamicText.Y-offset = #-5
    f,2~(\f \tuplet 10/16 { f32[ g a bes c d! e f g a] }
  | \clef treble \tuplet 11/16 { bes[ c d e f g a bes c d e] } f8^.) r r4\parenthesize\breathe
  %195
  | \clef bass
    \once\override DynamicText.Y-offset = #-5
    <bes,,, des g>1~^>\ff(
  | \stemDown \tuplet 10/16 { q32[ aes' bes ces \clef treble des\< ees f ges aes bes] }
    \tuplet 11/16 { ces[ des ees f ges aes bes ces des ees f] }
  | \stemUp fis1~)\!\fz
  | \key d \major
    \stemDown
    fis4.^( \undo\omit TupletNumber \tupletDown \tuplet 3/2 { cis,16[ d e] } \stemUp\slurDown d4. b8
  | ais4. cis8 fis,4. gis8
  %200
  | ais4. fis8) <e cis' e>[( fis <d b' d> fis])
  | <cis ais' cis>4.( fis8) <g e' g>8[( b <e, cis' e> b'])
  | \once\override DynamicText.Y-offset = #-5
    <cis, ais' cis>4_.\f \stemDown <fis ais cis fis>2^- <fis b d fis>4^-
  | \stemUp r8 <e cis'>[( <fis d'> <g e'>]) r <fis d'>[( <cis ais'> <d b'>])
  | r8 <cis ais' cis>[( eis fis]) \stemDown\slurUp r <g e' g>[( b <fis d' fis>])
  %205
  | r8 <cis ais' cis>[( eis fis]) \stemDown\slurUp r <b g' b>[( cis <g e' g>])
  | <e cis' e>4 <a cis e a>2^- <ais cis fis ais>4^-~\<
  | q4 <b d fis b>2^- <d fis b d>4^-~
  | q4\!\f \ottava #1 <b' fis' b>^. <g b g'>^. \ottava #0 <e g e'>^.
  | <fis cis' fis>^. <d fis d'>^. <ais fis' ais>^. <b fis' b>^.
  %210
  | r8 <g g'>[(_\parenthesize\mf <fis fis'> <eis eis'>]) r
    \once\override Hairpin.Y-offset = #-3.5
    <fis fis'>[(\< <gis gis'> <ais ais'>])
  | r <b b'>[( <cis cis'> <d d'>]) r <e e'>[( <fis fis'> <g g'>])
  | r\!_\markup { \hspace #-2.5 \small "più" \dynamic f } <a, a'>[( <g g'> <fis fis'>]) r <g g'>[( <a a'> <b b'>])
  | r <c! c'!>[( <d d'> <ees ees'>]) r <f! f'!>[( <g g'> <aes aes'>])
  | r \stemUp bis,,_._- r cis_._- r \stemDown <fis' fis'>[(\parenthesize\< <gis gis'> <a a'>])\!
  %215
  | r \stemUp cis,,_._- r d_._- r \stemDown <g' g'>[(\parenthesize\< <a a'> <bes bes'>])\!
  | r \stemUp ees,,_._- r \ottava #1 cis''!4. \ottava #0 r8 e,,!_._-
  | r \ottava #1 cis''!4. r4 \stemDown
    \once\override DynamicText.Y-offset = #-5
    <b fis' b>^.\sf \ottava #0
  | r8 <eis, eis'>^.[ r <fis b fis'>^. r <b, b'>^. r <c! g' c!>^.]
  | r8 \stemUp\slurDown <ais ais'>_.[ r <b d b'>_. r <eis,, eis'>_. r <fis ais cis fis>_.]
  %220
  | \once\override DynamicText.Y-offset = #-4.5
    r2\fp
    \clef bass
    \once\override Hairpin.Y-offset = #-4
    fis,4^>(\> b^>
  | cis d)\! r2
  | \once\override DynamicText.Y-offset = #-5
    r2\p
    \stemNeutral\slurNeutral \tuplet 3/2 { fis,8( cis' fis } \tuplet 3/2 { b,\> d b' }
  | \omit TupletNumber \tuplet 6/4 { cis,[ fis cis' d, b' d] }
    \clef treble \tuplet 6/4 { fis,[ cis' fis b, d b']) }
  | s1\!\pp
  %225
  | s1
  | \stemUp\slurUp cis4( d ais b)
  | g( g2 fis4)
  | \tuplet 3/2 { fis8( a,! dis } \tuplet 3/2 { g g, b) }
    \tuplet 6/4 { cis![( e, ais cis e ais]) }
  | dis4 e ais, s
  %230
  | b'( c! a g)
  | dis e c ais\pocoapocorit
  | \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(0 . -1)
      b8(^\startTextSpan _\markup {
        \small "dim. a poco a poco"
      }
      b, dis
    } \clef bass \stemDown \tuplet 3/2 { e e, b' }
    \tuplet 6/4 { c![ e, g ais e fis]) }
  | \clef treble fis''4( b) r2
  | fis4( b) r2
  %235
  | fis4( b) r2
  | fis4(\pp b\stopTextSpan)( b2)\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | fis2 eis
  | e! d
  | cis s
  | s1*19
  %23
  | \bottom a8\rest fis4^\ms 8 a\rest g4 e8
  | a8\rest fis4^\md 4 4 8~
  %25
  | fis8 4 4 4 8
  | fis8 4 8 <g b>4^( g)
  | g2 e
  | s1*2
  %30
  | \top\slurUp
    \shape #'((1 . -0.8) (0 . -1.2) (0 . -0.8) (0 . 0)) Slur
    \once\override DynamicText.Y-offset = #-5
    a'8[(\pp f! \bottom d a] g[ bes cis \top e])
  | \shape #'((1 . -0.8) (0 . -1.2) (0 . -0.8) (0 . 0)) Slur
    a[( f! \bottom d a] g[ bes cis \top e])
  | \shape #'((0.6 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
    a[( f! \bottom d a] g[ d bes g])
  | e[( e' bes' d] a,[ a' cis \top a'])
  | \shape #'((0.8 . -0.6) (0 . -1.2) (0 . -0.8) (0 . 0)) Slur
    bes[( g \bottom e cis] <d, c'!>[ ees' fis \top a])
  %35
  | bes[ g \bottom e cis] <d, c'!>[ ees' fis \top a]
  | \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
    bes[( g \bottom e cis] bes[ g e cis])
  | \shape #'((0 . 0) (0 . 0) (0 . -0.8) (0 . -0.4)) Slur
    <d, a'>[( d' fis c'] <d, bes'>[ d' \top g bes])
  | <fis a>[_( \bottom d c d,] bes'[ d, cis d,])
  | s1*4
  %43
  | \top s8 bes''[ des bes] des[ bes des bes]
  | des bes4 \bottom <bes, bes'>4(^\< <ces bes' ces> <c!^~ bes'~ c!^~>8
  %45
  | q <des bes' des>4)\! s2 s8
  | s4. <c bes' c>4( <des bes' des> <d! bes' d!>8^~
  | q8 <ees bes'( ees>4) s8 \once\omit Stem bes'4) s8 q8^~(
  | q <e,! bes'( e!>4) s8 \once\omit Stem bes'4) s
  | s1*17
  %66
  | \top fis''1_>^~
    \bar "||"
  | \once\omit Stem fis4 s eis,2
  | e! d
  | cis s
  | s1*15
  %85
  | s4. <g'' g'>8[_\markup {
      \small "(sempre cresc.)"
    }
    <a a'> <bes bes'>] s4
  | s8 <g g'>8[ <a a'> <ais ais'>] s2
  | s1*5
  %92
  | \bottom r2 fis,,,4( b)
  | s1
  | \top\slurDown
    fis''4(_\markup {
      \small "molto dolce espress."
    } b cis dis
  %95
  | e dis8[ e] dis4 cis
  | b ais8[ b] ais4 gis)
  | fis4( gis8 ais b4 cis8 dis
  | e4 gis cis,2)
  | fis,4( b cis dis
  %100
  | e4 dis8 cis e4 dis)
  | cis( eis fis\< gis
  | b4 ais8\! b ais4 gis
  | fis\> dis cis\! b)
  | ais( fis b cis)
  %105
  | ais( fis gis ais
  | b ais8 gis b4 ais)
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    e4\rest_\markup { \small "cresc." } gis( ais b
  | d! cis8 b d!4 cis)
  | g\rest a!( d! e
  %110
  | g! fis8 g fis4 e)
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    d!(_\markup { "dim." } cis8 d cis4 b)
  | a!( b8 cis d!4 e8 fis
  | g!4 b e,2^~_>
  | \once\override NoteColumn.force-hshift = #0 e1)
  %115
  | s1
  | b
  | 1
  | 1
  | fis
  %120
  | 1
  | \once\override Hairpin.Y-offset = #-2
    1\>
  | 1
  | \once\override DynamicText.Y-offset = #-3.5
    f4\rest\!\p fis( gis ais)
  | fis2( gis4_\markup { "dim." } a!
  %125
  | gis2 g!)
  | fis(\> gis4 a!
  | gis2 g!)
  | \once\override DynamicText.Y-offset = #-3
    fis1\!\pp
  | 1
  %130
  | 1~_\markup { \hspace #-1 "(" \dynamic p ")" }
  | 1
  | \once\override DynamicText.Y-offset = #-5
    fis2\f eis
  | e! d
  | cis s
  %135
  | s1*19
  | \bottom a8\rest fis4^\ms 8 a\rest g4 e8
  %155
  | a8\rest fis4^\md 4 4 8~
  | fis8 4 4 4 8
  | fis8 4 8 <g b>4^( g)
  | g2 e
  | s1*2
  %161
  | \top\slurUp
    \shape #'((1 . -0.8) (0 . -1.2) (0 . -0.8) (0 . 0)) Slur
    \once\override DynamicText.Y-offset = #-5
    a'8[(\pp f! \bottom d a] g[ bes cis \top e])
  | \shape #'((1 . -0.8) (0 . -1.2) (0 . -0.8) (0 . 0)) Slur
    a[( f! \bottom d a] g[ bes cis \top e])
  | \shape #'((0.6 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
    a[( f! \bottom d a] g[ d bes g])
  | e[( e' bes' d] a,[ a' cis \top a'])
  %165
  | \shape #'((0.8 . -0.6) (0 . -1.2) (0 . -0.8) (0 . 0)) Slur
    bes[( g \bottom e cis] <d, c'!>[ ees' fis \top a])
  | bes[ g \bottom e cis] <d, c'!>[ ees' fis \top a]
  | \shape #'((0.8 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
    bes[( g \bottom e cis] bes[ g e cis])
  | \shape #'((0 . 0) (0 . 0) (0 . -0.8) (0 . -0.4)) Slur
    <d, a'>[( d' fis c'] <d, bes'>[ d' \top g bes])
  | <fis a>[_( \bottom d c d,] bes'[ d, cis d,])
  %170
  | s1*4
  | \top s8 bes''[ des bes] des[ bes des bes]
  %175
  | des bes4 \bottom <bes, bes'>4(^\< <ces bes' ces> <c!^~ bes'~ c!^~>8
  | q <des bes' des>4)\! s2 s8
  | s4. <c bes' c>4( <des bes' des> <d! bes' d!>8^~
  | q8 <ees bes'( ees>4) s8 \once\omit Stem bes'4) s8 q8^~(
  | q <e,! bes'( e!>4) s8 \once\omit Stem bes'4) s
  %180
  | s1*17
  %197
  | \top fis''1~
    \bar "||"
  | \once\omit Stem fis4 s eis,2
  | e! d
  %200
  | cis s
  | s1*15
  %216
  | s4. <g'' g'>8[_\markup {
      \small "(sempre cresc.)"
    }
    <a a'> <bes bes'>] s4
  | s8 <g g'>8[ <a a'> <ais ais'>] s2
  | s1*6
  %224
  | \omit TupletBracket \omit TupletNumber
    \tuplet 6/4 { cis,8[(^\markup {
      \small "leggiero"
    }
    e, ais d d, fis] } \tuplet 6/4 { ais[ e g ais e' g]) }
  | \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 0)) Slur
    \tuplet 6/4 { cis[( e, ais d d, fis] } \tuplet 6/4 { ais[ g e ais, g e]) }
  | \tuplet 6/4 { cis'[ e, ais d d, fis] } \tuplet 6/4 { ais[ e g b d, fis] }
  | \tuplet 3/2 { g b, cis } \tuplet 3/2 { b\rest b cis }
    \tuplet 3/2 { b\rest b cis } \tuplet 3/2 { b\rest ais e' }
  | fis4 g cis,2
  | \tuplet 6/4 { dis'8[( a! c! e g, b]) } \tuplet 6/4 { ais[( e g a! e' g]) }
  %230
  | \tuplet 6/4 { b[ dis, a'! c! e, g] } \tuplet 6/4 { ais[ c,! dis g b, e] }
  | \tuplet 6/4 { dis[ fis, c'! e e, b'] } \tuplet 6/4 { c[ e, g ais e fis] }
  | s1
  | s2 \bottom \tuplet 3/2 { c8\rest g(^\md c) } \tuplet 3/2 { c8\rest e,( ais) }
  | s2 \tuplet 3/2 { c8\rest g( c) } \tuplet 3/2 { c8\rest e,( ais) }

}

AltoSecond = \context Voice = "twotwo" \relative c' {
  \voiceThree
  %1
  | s1*24
  %25
  | s4 \stemDown\slurDown a ais b
  | c!( ais) s2
  | s1*11
  %38
  | \once\override NoteColumn.force-hshift = #1 c'4( bes8 a g4\> e)
  | d s4\!\f s2
  | s1*74
  %114
  | ais'!4\>( fis b cis\!\p
  | e dis8 cis
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    e4_\markup { \small "cresc." } dis)
  | dis,\rest
    \once\override Hairpin.Y-offset = #-2
    dis'^(\< e fis\!
  | \once\override NoteColumn.force-hshift = #1.2 b ais8 b~
    \stemUp b2*1/2 \once\omit Stem gis4)
  | s1*38
  %156
  | s4 \stemDown\slurDown a,, ais b
  | c!( ais) s2
  | s1*11
  %??
  | \once\override NoteColumn.force-hshift = #1 c'4( bes8 a g4\> e)
  | d s4\!\f s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  %1
  | s1*7
  %8
  | a4.( cis,8) s2
  | s1*7
  %16
  | \override Stem.details.beamed-lengths = #'(4.4)
    r8 fis[^. s fis^. s fis^. s fis^.]
  | r8 fis[^. s fis^. s fis^. s fis^.]
  | g8\rest fis[ g8\rest^\< fis g8\rest fis g8\rest fis]
  | g8\rest\!\> fis[ b8\rest fis b8\rest fis\! b8\rest fis]
  %20
  | g8\rest fis[ g8\rest^\< fis g8\rest fis g8\rest fis]
  | g8\rest\!\> fis[ b8\rest fis b8\rest fis\! b8\rest fis]
    \revert Stem.details.beamed-lengths
  | g8\rest^\md fis[ \top a! \bottom fis \top a \bottom fis \top a \bottom fis]
  | d,4( a' bes g)
  | a
    \shape #'((0.5 . 1) (0 . 0) (0 . 0) (-0.5 . 1)) Slur
    fis( g gis
  %25
  | a) s2.
  | s2 \once\override Voice.Rest.X-offset = #1.4 g8\rest d4 8~
  | \once\override NoteColumn.force-hshift = #1 8 4 4 4 8
  | r4 <d' fis a>2 q4
  | r4 <d fis>2 q4
  %30
  | s1*51
  %81
  | ees'4( <b d>8[ <a c!>]) d4( <a c>8[ <g b>])
  | g'4( <d f!>8 <c ees>]) c'!4( <g bes>8[ <f aes>])
  | s2 cis'4( <gis b>8[ <fis a>])
  | s2 d'4( <a c!>8[ <g bes>])
  | s1*6
  %91
  | fis,,4^-( b^- cis^- d^-)
  | b,1
  | s1*46
  %139
  | a''4.( cis,8) s2
  | s1*7
  %147
  | \override Stem.details.beamed-lengths = #'(4.4)
    r8 fis[^. s fis^. s fis^. s fis^.]
  | r8 fis[^. s fis^. s fis^. s fis^.]
  | g8\rest fis[ g8\rest^\< fis g8\rest fis g8\rest fis]
  %150
  | g8\rest\!\> fis[ b8\rest fis b8\rest fis\! b8\rest fis]
  | g8\rest fis[ g8\rest^\< fis g8\rest fis g8\rest fis]
  | g8\rest\!\> fis[ b8\rest fis b8\rest fis\! b8\rest fis]
    \revert Stem.details.beamed-lengths
  | g8\rest^\md fis[ \top a! \bottom fis \top a \bottom fis \top a \bottom fis]
  | d,4( a' bes g)
  %155
  | a
    \shape #'((0.5 . 1) (0 . 0) (0 . 0) (-0.5 . 1)) Slur
    fis( g gis
  | a) s2.
  | s2 \once\override Voice.Rest.X-offset = #1.4 g8\rest d4 8~
  | \once\override NoteColumn.force-hshift = #1 8 4 4 4 8
  | r4 <d' fis a>2 q4
  %160
  | r4 <d fis>2 q4
    %\break
  | s1*51
  %212
  | ees'4( <b d>8[ <a c!>]) d4( <a c>8[ <g b>])
  | g'4( <d f!>8 <c ees>]) c'!4( <g bes>8[ <f aes>])
  | s2 cis'4( <gis b>8[ <fis a>])
  | s2 d'4( <a c!>8[ <g bes>])
  | s1*4
  %220
  | % it seems a lilypond bug... the b1 note is much bigger than the b2 one
    \magnifyMusic 0.9 { b,,,1 }
  | s1*3
  | fis'4( b) cis2
  %225
  | fis,4( b) cis2
  | fis,4( b cis d)
  | e( d8 e d4 cis)
  | s1*2
  %230
  | <b, b'>4( e' fis g)
  | a( g8 fis e4 c!)
  | b2 b
  | \omit TupletNumber \omit TupletBracket
    \tuplet 6/4 { b,8[( dis' fis b dis, fis]) } b,2
  | \tuplet 6/4 { b,8[( dis' fis b dis, fis]) } b,2
  %235
  | \tuplet 6/4 { b,8[( dis' fis b dis, fis]) }
    \tuplet 6/4 { r dis[( fis b dis, fis]) }
  | \tuplet 6/4 { b,,8[( dis' fis b dis, fis]) } s2

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \stemNeutral\slurNeutral
  \repeat volta 2 {
  | r2 r8 <b b'>[( gis' eis])
  | r8 <fis, fis'>[( cis' ais)] r8 <b, b'>[( fis' d)]
  | r8 <fis, fis'>[( cis' ais)] r8 <b b'>[( fis' d)]
  | r8 <fis fis'>[( cis' ais)] r8 <e e'>[( b' g)]
  %5
  | <a a'>4.^> \tuplet 3/2 { e'16( f! g } <f,! f'>4.) <d d'>8
  | <cis cis'>4.--( <cis' e a>8) <d, d'>4.--( <d' gis b>8)
  | <a, a'>4.--( cis8) <d d'>4.--( gis8)
  | \stemDown a2 \stemNeutral <g d'>8 d''[( bes g)]
  | <c,! c'!>4.-- \tuplet 3/2 { g'16( aes bes } <aes, aes'>4.) <f! f'!>8
  %10
  | <cis! cis'!>4.-- \tuplet 3/2 { gis'16( a b) } <a, a'>4. <fis fis'>8
  | <d d'>4.--( <d'' fis a>8) <gis,, gis'>4.--( <d '' fis gis>8)
  | <eis,, eis'>4.--( <cis'' eis! a>8) <a, a'>4.--( <cis' fis a>8)
  | <d, d'>4( <cis cis'>8 <bis bis'>) <cis cis'>4( <dis dis'>8 <eis eis'>)
  | <fis fis'>4( <gis gis'>8 <a a'>) <b b'>4 (<cis cis'>8 <d d'>)
  %15
  | <eis, eis'>4-. <fis fis'>-. <bis, bis'>-. <cis cis'>-.
  | \stemDown <fis, fis'>^\fp^\< <eis'' gis>8-.[ s <cis a'>-.\!\> s <eis gis>-. s]\!
  | fis, e\rest^\< <eis' gis>8-.[ s <d b'>-.\!\> s <eis gis>-. s]\!
  | fis, d\rest s2.
  | s4 eis'8_\parenthesizems b\rest s4 eis8 b\rest
  %20
  | s1
  | s4 eis8_\parenthesizems b\rest s4 eis8 b\rest
  | s4 <d,, d'> q q
  | d'2 d2_\<
  | d4\! d2 d4~
  %25
  | \slurDown d <fis, fis'>( <g g'> <gis gis'>
  | <a a'> <c! c'!>) <b b'>2(
  | <bes bes'>2 <g g'>)
  | <d d'>1(
  | <d d'>1)
  }
  %30
  | \key d \minor
    \stemNeutral\slurNeutral d'4 s d'2
  | d,4 s d'2
  | d,4 s2.
  | s1
  | d8 r s2.
  %35
  | d8 r s2.
  | d8 r s2.
  | s1
  | s1
  | d'4 <bes, bes'>-. <d d'>-. <f f'>-.
  %40
  | <bes bes'>^. <bes, bes'>-. <ees ees'>-. <ees, ees'>-.
  | <bes' bes'>-. <bes, bes'>-. r8 <ees'' ees'>[( c'^\parenthesize\> a])
  | r8 <bes, bes'>[( f' d]) r <ees, ees'>[( c'\! a])
  | bes,-. r <bes' des ges>4( q q
  | q) \stemDown <ges, bes ges'>_( q q
  %45
  | q) <bes' des ges>( q q
  | q) <ges, bes ges'>_( q q
  | \stemDown q) <bes' ges' bes> q <ges, bes ges'>_(
  | q) <bes' ges' bes> q \stemNeutral <ges bes e!>-.
  | <des bes' f'>\arpeggio r \clef treble <f'' f'>4.^>( \tuplet 3/2 { c'16 des ees }
  %50
  | des4^.) r \clef bass <f,,, f'>4._>( \tuplet 3/2 { c'16 des ees }
  | <des, des'>4) r \clef treble <aes''' aes'>4.^>( \tuplet 3/2 { ees'16 f ges }
  | f4^.) r \clef bass <aes,,, aes'>4.^>( \tuplet 3/2 { ees'16 f ges }
  | <f, f'>4)^\markup {
      \dynamic sf \concat { "(" \dynamic mp ")" }
    }
    <f, f'> <ges ges'> <ges' ges'>
  | <g! g'!> <g, g'> <aes aes'> <aes' aes'>
  %55
  | <a! cis a'!> <a, cis a'> <ais' cis ais'> <ais, cis ais'>
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <b'! d b'!>^\markup { \small "(più" \dynamic f \small ")" }
    <b,! d b'!> <bis dis bis'!> <bis' dis bis'!>
  | <cis e cis'> <cis, e cis'> <d eis d'> <d' eis d'>
  | <ees ges ces ees>^> <ees, ees'>-. <des' e! bes'! des>^> <des, des'>-.
  | <c'! f! a! c!> <c, c'>-. <a' c f a>^> <a, a'>-.
  %60
  | <f f'>-. r \clef treble <bes'''! bes'!>4.(^> \tuplet 3/2 { e!16 f g! }
  | f4^.) r \clef bass <bes,,,, bes'>4._>( \tuplet 3/2 { e16 f g }
  | \omit TupletNumber
    f,2~)( \tuplet 10/16 { f32[ g a bes c d! e f g a] }
  | \tuplet 11/16 { bes[ c d e f g a bes c d e] } f8^.) r r4
  | <bes,,,! des g>1~->(
  %65
  | \stemDown \tuplet 10/16 { q32[ aes' bes ces des ees f ges aes bes] }
    \clef treble \tuplet 11/16 { ces[ des ees f ges aes bes ces des ees f] }
  | fis,8) r r4 r2
  | \clef bass \key d \major
    r2 r8 <b,, b'>[( gis' eis])
  | \stemUp r8 <fis, fis'>[( cis' ais]) r <b, b'>[( fis' d])
  | r <fis, fis'>[( cis' ais]) r <b b'>[( fis' d])
  %70
  | r <fis fis'>[( cis' ais]) r <e e'>[( b' g])
  | \stemNeutral
    <fis fis'>4.( \undo\omit TupletNumber \tupletDown\tuplet 3/2 { cis'16 d e } <d, d'>4.) <b b'>8
  | <ais ais'>4.( <ais' cis fis>8) <b, b'>4.( <b' eis gis>8)
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <fis, fis'>4.(^\cresc
    ais8) <b b'>4.( d8)
  | <fis fis'>4.( ais8) <e b'> b''[( g e])
  %75
  | \omit TupletNumber  <a, a'>4. \tuplet 3/2 { e'16( fis g } <fis, fis'>4.) <e e'>8
  | <d d'>4. \tuplet 3/2 { ais'16( b cis } <b, b'>4.) <a a'>8
  | <g g'>4.( <d'' fis b>8) <cis, cis'>4.( <e' g b>8)
  | <ais,, ais'>4.( <d' fis ais>8) <d, d'>4.( <d' fis b>8)
  | <g, g'>4( <fis fis'>8 <eis eis'>) <fis fis'>4( <gis gis'>8 <ais ais'>)
  %80
  | <b b'>4( <cis cis'>8 <d d'>) <e e'>4( <fis fis'>8 <g g'>)
  | \once\override Arpeggio.positions = #'(-1 . 4)
    <c,! fis a>8\arpeggio_\Ped r s4
    \once\override Arpeggio.positions = #'(-1.5 . 3.5)
    <b d g>8\arpeggio_\Ped r s4
  | \once\override Arpeggio.positions = #'(0 . 5)
    <ees! g c!>8\arpeggio_\Ped s4. \clef treble \stemDown
    \once\override Arpeggio.positions = #'(-5 . 1)
    <aes c! f!>8\arpeggio_\Ped s4. \clef bass
  | \stemUp <bis,, bis'>8_._- r <cis cis'>_._- r \clef treble \stemDown
    \once\override Arpeggio.positions = #'(-5 . 1)
    <a''! cis fis>8\arpeggio\sustainOn s8 s8 s16 s16\sustainOff
    \clef bass
  | \stemUp <cis,, cis'>8_._- r <d d'>_._- r \clef treble \stemDown
    \once\override Arpeggio.positions = #'(-4 . 2)
    <bes'' d g>8\arpeggio\sustainOn s8 s8 s16 s16\sustainOff
  %85
  | \clef bass \stemUp <ees,, ees'>8_._- r \clef treble <cis''! bes' cis!>2_>\sustainOn
    \clef bass <e,,! e'!>8_._-\sustainOff r
  | \clef treble <cis'' ais' cis>2_>_\Ped \clef bass r4 <b,, d b' d>4\arpeggio
  | \stemNeutral eis''^. <dis, fis a b fis'>^.\arpeggio b'^. <e, g c! e!>^.\arpeggio
  | ais^. <gis, d' eis b'>\arpeggio eis_. <fis, ais cis fis>_.\arpeggio
  | <b, b'>1\arpeggio
  %90
  | q\arpeggio
  | \once\override Arpeggio.positions = #'(-5 . -2)
    b'\arpeggio
  | \stemDown
    \once\override Arpeggio.positions = #'(-9 . -4)
    b,2\arpeggio s
  | <b' fis' cis'>1\arpeggio\fermata
    \bar "||"
  | \key b \major
    b'8[(_\markup {
      \concat { \small "col " \musicglyph #"pedal.Ped" }
    } b' dis b e b fis' b,]
  %95
  | gis'[ b, fis' gis fis b, e b])
  | dis[( b cis dis cis b, b' b,]
  | ais'[ b, e' b dis b a'! b,])
  | gis'[( b, e b fis' b, e b]
  | b,[ b' dis b e b fis' b,]
  %100
  | gis'[ b, fis' e gis b, fis' b,])
  | \stemUp cis,[( \clef treble eis' gis cis, ais' cis, b' cis,]
  | dis'[ cis, cis' dis cis cis, b' cis,]
  | ais'[ cis, fis cis] \clef bass \stemDown eis[ cis dis cis,]
  | cis'[ fis, e'! fis, dis' fis, b b,])
  %105
  \repeat volta 2 {
  | cis'[( fis, ais fis b fis cis' fis,]
  | d'![ fis, cis' b d fis, cis' fis,])
  | \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 1)) Slur
    fis,[( fis' b fis cis' fis, d'! fis,]
  | fis'[ fis, e' d! fis fis, e' a,!])
  | a,![_( a'! cis a fis' a, g' a,]
  %110
  | \clef treble \stemUp b'[ a,! a'! b a a, g'! a,]
  | fis'[ a,! e' fis e a, d a]
  | cis[ a! g'! a, fis' a, \clef bass c! d,!])
  | \stemDown b'[( g,! g'! g, a'! a,! g' g,]
  | fis'[ fis, e' fis, dis'! fis, fis' fis,]
  %115
  | cis''[ b, b' ais cis b, b' b,])
  | \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    b,[( b' b' b, cis' b, dis' b]
  | gis'[ b, fis' gis fis b, e b])
  | dis[( fis, b fis,] b'[ fis b fis,])
  | b'[( fis b fis,] b'[ fis b fis,])
  %120
  | b'[( fis b fis,] b'[ fis b fis,])
  | b'[( fis b fis,] ais'[ fis ais fis,]
  | \alternative {
      \volta 1 {
        b'[ fis b b, fis' fis, b b,])
        \shape #'((0 . 3) (0 . 0) (0 . 0) (0 . 0.5)) Slur
        fis[( fis' ais' fis b fis cis' fis,])
      }
      \volta 2 {
        \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
        b[( fis b b, fis' fis, b b,])
      }
    }
  }
  %125
  | \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    b''[( e, b' b, e e, b' b,])
  | \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    b''[( fis b b, fis' fis, b b,])
  | \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    b''[( eis, b' b, e! e, b' b,])
  | \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    b''[(\sustainOn fis b b, fis' fis, b b,])
  | \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    b''[( fis b b, fis' fis, b b,])\sustainOff
  %130
  | R1
  | R1
  | \key b \minor
    \stemNeutral\slurNeutral
    r2 r8 <b' b'>[( gis' eis])
  | r8 <fis, fis'>[( cis' ais)] r8 <b, b'>[( fis' d)]
  | r8 <fis, fis'>[( cis' ais)] r8 <b b'>[( fis' d)]
  %135
  | r8 <fis fis'>[( cis' ais)] r8 <e e'>[( b' g)]
  | <a a'>4.^> \tuplet 3/2 { e'16( f! g } <f,! f'>4.) <d d'>8
  | <cis cis'>4.--( <cis' e a>8) <d, d'>4.--( <d' gis b>8)
  | <a, a'>4.--( cis8) <d d'>4.--( gis8)
  | \stemDown a2 \stemNeutral <g d'>8 d''[( bes g)]
  %140
  | <c,! c'!>4.-- \tuplet 3/2 { g'16( aes bes } <aes, aes'>4.) <f! f'!>8
  | <cis! cis'!>4.-- \tuplet 3/2 { gis'16( a b) } <a, a'>4. <fis fis'>8
  | <d d'>4.--( <d'' fis a>8) <gis,, gis'>4.--( <d '' fis gis>8)
  | <eis,, eis'>4.--( <cis'' eis! a>8) <a, a'>4.--( <cis' fis a>8)
  | <d, d'>4( <cis cis'>8 <bis bis'>) <cis cis'>4( <dis dis'>8 <eis eis'>)
  %145
  | <fis fis'>4( <gis gis'>8 <a a'>) <b b'>4 (<cis cis'>8 <d d'>)
  | <eis, eis'>4-. <fis fis'>-. <bis, bis'>-. <cis cis'>-.
  | \stemDown <fis, fis'>^\fp^\< <eis'' gis>8-.[ s <cis a'>-.\!\> s <eis gis>-. s]\!
  | fis, e\rest^\< <eis' gis>8-.[ s <d b'>-.\!\> s <eis gis>-. s]\!
  | fis, d\rest s2.
  %150
  | s4 eis'8_\parenthesizems b\rest s4 eis8 b\rest
  | s1
  | s4 eis8_\parenthesizems b\rest s4 eis8 b\rest
  | s4 <d,, d'> q q
  | d'2 d2
  %155
  | d4 d2_\< d4~\!
  | \slurDown d <fis, fis'>( <g g'> <gis gis'>
  | <a a'> <c! c'!>) <b b'>2(
  | <bes bes'>2 <g g'>)
  | <d d'>1(
  %160
  | <d d'>1)
    \bar "||"
  | \key d \minor
    \stemNeutral\slurNeutral d'4 s d'2
  | d,4 s d'2
  | d,4 s2.
  | s1
  %165
  | d8 r s2.
  | d8 r s2.
  | d8 r s2.
  | s1
  | s1
  %170
  | d'4 <bes, bes'>-. <d d'>-. <f f'>-.
  | <bes bes'>^. <bes, bes'>-. <ees ees'>-. <ees, ees'>-.
  | <bes' bes'>-. <bes, bes'>-. r8 <ees'' ees'>[( c'^\parenthesize\> a])
  | r8 <bes, bes'>[( f' d]) r <ees, ees'>[( c'\! a])
  | bes,-. r <bes' des ges>4( q q
  %175
  | q) \stemDown <ges, bes ges'>_( q q
  | q) <bes' des ges>( q q
  | q) <ges, bes ges'>_( q q
  | \stemDown q) <bes' ges' bes> q <ges, bes ges'>_(
  | q) <bes' ges' bes> q \stemNeutral <ges bes e!>-.
  %180
  | <des bes' f'>\arpeggio r \clef treble <f'' f'>4.^>( \tuplet 3/2 { c'16 des ees }
  | des4^.) r \clef bass <f,,, f'>4._>( \tuplet 3/2 { c'16 des ees }
  | <des, des'>4) r \clef treble <aes''' aes'>4.^>( \tuplet 3/2 { ees'16 f ges }
  | f4^.) r \clef bass <aes,,, aes'>4.^>( \tuplet 3/2 { ees'16 f ges }
  | <f, f'>4)^\markup {
      \dynamic sf \concat { "(" \dynamic mp ")" }
    }
    <f, f'> <ges ges'> <ges' ges'>
  %185
  | <g! g'!> <g, g'> <aes aes'> <aes' aes'>
  | <a! cis a'!> <a, cis a'> <ais' cis ais'> <ais, cis ais'>
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <b'! d b'!>^\markup { \small "(più" \dynamic f \small ")" }
    <b,! d b'!> <bis dis bis'!> <bis' dis bis'!>
  | <cis e cis'> <cis, e cis'> <d eis d'> <d' eis d'>
  | <ees ges ces ees>^> <ees, ees'>-. <des' e! bes'! des>^> <des, des'>-.
  %190
  | <c'! f! a! c!> <c, c'>-. <a' c f a>^> <a, a'>-.
  | <f f'>-. r \clef treble <bes'''! bes'!>4.(^> \tuplet 3/2 { e!16 f g! }
  | f4^.) r \clef bass <bes,,,, bes'>4._>( \tuplet 3/2 { e16 f g }
  | \omit TupletNumber
    f,2~)( \tuplet 10/16 { f32[ g a bes c d! e f g a] }
  | \tuplet 11/16 { bes[ c d e f g a bes c d e] } f8^.) r r4
  %195
  | <bes,,,! des g>1~->(
  | \stemDown \tuplet 10/16 { q32[ aes' bes ces des ees f ges aes bes] }
    \clef treble \tuplet 11/16 { ces[ des ees f ges aes bes ces des ees f] }
  | fis,8) r r4 r2
  | \clef bass \key d \major
    r2 r8 <b,, b'>[( gis' eis])
  | \stemUp r8 <fis, fis'>[( cis' ais]) r <b, b'>[( fis' d])
  %200
  | r <fis, fis'>[( cis' ais]) r <b b'>[( fis' d])
  | r <fis fis'>[( cis' ais]) r <e e'>[( b' g])
  | \stemNeutral
    <fis fis'>4.( \undo\omit TupletNumber \tupletDown\tuplet 3/2 { cis'16 d e } <d, d'>4.) <b b'>8
  | <ais ais'>4.( <ais' cis fis>8) <b, b'>4.( <b' eis gis>8)
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <fis, fis'>4.(^\cresc
    ais8) <b b'>4.( d8)
  %205
  | <fis fis'>4.( ais8) <e b'> b''[( g e])
  | \omit TupletNumber  <a, a'>4. \tuplet 3/2 { e'16( fis g } <fis, fis'>4.) <e e'>8
  | <d d'>4. \tuplet 3/2 { ais'16( b cis } <b, b'>4.) <a a'>8
  | <g g'>4.( <d'' fis b>8) <cis, cis'>4.( <e' g b>8)
  | <ais,, ais'>4.( <d' fis ais>8) <d, d'>4.( <d' fis b>8)
  %210
  | <g, g'>4( <fis fis'>8 <eis eis'>) <fis fis'>4( <gis gis'>8 <ais ais'>)
  | <b b'>4( <cis cis'>8 <d d'>) <e e'>4( <fis fis'>8 <g g'>)
  | \once\override Arpeggio.positions = #'(-1 . 4)
    <c,! fis a>8\arpeggio_\Ped r s4
    \once\override Arpeggio.positions = #'(-1.5 . 3.5)
    <b d g>8\arpeggio_\Ped r s4
  | \once\override Arpeggio.positions = #'(0 . 5)
    <ees! g c!>8\arpeggio_\Ped s4. \clef treble \stemDown
    \once\override Arpeggio.positions = #'(-5 . 1)
    <aes c! f!>8\arpeggio_\Ped s4. \clef bass
  | \stemUp <bis,, bis'>8_._- r <cis cis'>_._- r \clef treble \stemDown
    \once\override Arpeggio.positions = #'(-5 . 1)
    <a''! cis fis>8\arpeggio\sustainOn s8 s8 s16 s16\sustainOff
    \clef bass
  %215
  | \stemUp <cis,, cis'>8_._- r <d d'>_._- r \clef treble \stemDown
    \once\override Arpeggio.positions = #'(-4 . 2)
    <bes'' d g>8\arpeggio\sustainOn s8 s8 s16 s16\sustainOff
  | \clef bass \stemUp <ees,, ees'>8_._- r \clef treble <cis''! bes' cis!>2_>\sustainOn
    \clef bass <e,,! e'!>8_._-\sustainOff r
  | \clef treble <cis'' ais' cis>2_>_\Ped \clef bass r4 <b,, d b' d>4\arpeggio
  | \stemNeutral eis''^. <dis, fis a b fis'>^.\arpeggio b'^. <e, g c! e!>^.\arpeggio
  | ais^. <gis, d' eis b'>\arpeggio eis_. <fis, ais cis fis>_.\arpeggio
  %220
  | \stemDown
    \once\override Arpeggio.positions = #'(-8 . -3)
    b,2\arpeggio b\rest
  | b'1
  | b1
  | b1
  | b2 b
  %225
  | b b
  | b b
  | b' b
  | \stemUp <b, b'>4( \stemDown e') <b fis'>2
  | \stemUp <b, b'>4( \stemDown e') <b fis'>2
  %230
  | s2 b
  | b b
  | \slurDown a!4( g8 fis e4 c!)
  | b2 e4( c!)
  | b2 e4( c!)
  %235
  | b2 b
  | b \stemUp <b, b'>\fermata
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic f }
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
      \AltoSecond
    >>
    \context Dynamics <<
      \Global \centerDynamics
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
    composer = "Johannes Brahsm"
    opus = "Op. 79 Nr. 1"
    title = \markup { "Rapsodie h-moll" }
    subtitle = \markup {
      \concat {
        \small "(" { \italic\small "Frau Elisabeth von Herzogenberg gewidmet" } \small ")"
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 110
  }
}
