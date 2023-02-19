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
  ragged-last-bottom = ##t
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

cresc = \markup { \small "cresc." }
md = \markup { \hspace #-1 \small "m.d." }
ms = \markup { \hspace #-0.5 \small "m.s." }
parenthesizems = \markup { \hspace #-2 \small "(m.s.)" }

%Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }
%crescendo = { \override TextSpanner.bound-details.left.text = \markup { \small "crescendo " } }
%dotteddim = \markup { \small "dim." }
%intempo = \markup { \small "in tempo" }
%parenthesizems = \markup { \hspace #-0.8 \small "(m.s.)" }
%rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. " } }

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
    a'4( d e2)
  | a,4( d e2)
  | a,4( d e f
  | g f8 g f4 e)
  | d( g a2)
  %35
  | d,4( g a2)
  | d,4( g a bes
  | c! bes8 a g4 e)
  | d2 d
  | d4 <d f! bes d>^.^> q^.^> q^.^>
  %40
  | s1
  | s1
  | s1
  | s1
  | s1
  %45
  | s1
  | s1
  | s1
  | s1
  | s1
  %50
  | s1
  | s1
  | s1
  | s1
  | s1
  %55
  | s1
  | s1
  | s1
  | s1
  | s1
  %60
  | s1
  | s1
  | s1
  | s1
  | s1
  %65
  | s1
  | s1
  | s1

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
    a'8[( f! \bottom d a] g[ bes cis \top e])
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
}

AltoSecond = \context Voice = "twotwo" \relative c' {
  \voiceThree
  \mergeDifferentlyHeadedOn
  %1
  | s1*24
  %25
  | s4 \stemDown\slurDown a ais b
  | c!( ais) s2
  | s1*11
  %38
  | \once\override NoteColumn.force-hshift = #1 c'4( bes8 a g4 e)
  | d s2.
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
  | <bes' bes'>-. <bes, bes'>-. r8 <ees'' ees'>[( c' a])
  | r8 <bes, bes'>[( f' d]) r <ees, ees'>[( c' a])
  | bes,-. r <bes' des ges>4( q q
  | q) \stemDown <ges, bes ges'>_( q q
  %45
  | q) <bes' des ges>( q q
  | q) <ges, bes ges'>_( q q
  | q) <bes' ges' bes> q \stemNeutral <ges, bes ges'>(
  | q) <bes' ges' bes> q \stemNeutral <ges bes e!>-.
  | <des bes' f'>\arpeggio r \clef treble <f'' f'>4.^>( \tuplet 3/2 { c'16 des ees }
  %50
  | des4^.) r \clef bass <f,,, f'>4._>( \tuplet 3/2 { c'16 des ees }
  | <des, des'>4) r \clef treble <aes''' aes'>4.^>( \tuplet 3/2 { ees'16 f ges }
  | f4^.) r \clef bass <aes,,, aes'>4.^>( \tuplet 3/2 { ees'16 f ges }
  | <f, f'>4) <f, f'> <ges ges'> <ges' ges'>
  | <g! g'!> <g, g'> <aes aes'> <aes' aes'>
  %55
  | <a! cis a'!> <a, cis a'> <ais' cis ais'> <ais, cis ais'>
  | <b'! d b'!> <b,! d b'!> <bis dis bis'!> <bis' dis bis'!>
  | <cis e cis'> <cis, e cis'> <d eis d'> <d' eis d'>
  | <ees ges ces ees>^> <ees, ees'>-. <des' e! bes'! des>^> <des, des'>-.
  | <c'! f! a! c!> <c, c'>-. <a' c f a>^> <a, a'>-.
  %60
  | <f f'>-. r \clef treble <bes'''! bes'!>4.( \tuplet 3/2 { e!16 f g! }
  | f4^.) r \clef bass <bes,,,, bes'>4._>( \tuplet 3/2 { e16 f g }
  | \omit TupletNumber
    f,2~)( \tuplet 10/16 { f32[ g a bes c d! e f g a] }
  | \tuplet 11/16 { bes[ c d e f g a bes c d e] } f8^.) r r4
  | <bes,,,! des g>1~
  %65
  | \stemDown \tuplet 10/16 { q32[ aes' bes ces des ees f ges aes bes] }
    \clef treble \tuplet 11/16 { ces[ des ees f ges aes bes ces des ees f] }
  | fis,8 r r4 r2 \clef bass \key d \major
  | r2 s

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
