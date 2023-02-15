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
        \line { \abs-fontsize #48 \bold "Rapsodie g-moll" }
        \null\null\null
        \line { \abs-fontsize #34 \bold "op. 79 nr. 2" }
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
  \key g \minor
  \time 4/4
  \include "./global.ly"
  %\override Staff.BreathingSign.text =
  %  \markup { \magnify #1.5 \musicglyph "scripts.rcomma" }
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }
crescendo = { \override TextSpanner.bound-details.left.text = \markup { \small "crescendo " } }
dotteddim = \markup { \small "dim." }
intempo = \markup { \small "in tempo" }
ms = \markup { \small "m.s." }
parenthesizems = \markup { \hspace #-0.8 \small "(m.s.)" }
rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit. " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \tempo
  \markup {
    \column {
      \bold "Molto passionato, ma non troppo allegro"
      " "
    }
  }
  \partial 4
    d,4
  %1
  \repeat volta 2 {
  | ees g^\ms bes e,!
  | f a^\ms c f^>
  | e! c g a
  | b! d2 fis,4^\intempo
  %5
  | g b!^\ms d gis,
  | a cis!^\ms e! a^>
  | gis e! b cis
  | dis fis2
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <b,,! b'!>4(_\markup {
      \dynamic f \whiteout \pad-markup #0.2 \small ", in tempo"
    }
  | <e! g! b! e!>^.) <d_~ a'~ d~>4_> \tuplet 3/2 { <d a' d>4 <d a'>8_. }
    \tuplet 3/2 { <d g b>_.[ r <d g>_.] }
  %10
  | \omit TupletNumber
    \tuplet 3/2 { <d fis a>_.[ g\rest d_.] } \tuplet 3/2 { <d g b!>_.[ g\rest <d g>_.] }
    \tuplet 3/2 { <d fis a>_.[ g\rest d_.] } \tuplet 3/2 { <d g b>_.[ g\rest <d g>_.] }
  | \stemDown
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <g c ees! g>4^._\markup {
      \dynamic f
    }
    <fis_~ a_~ d~ fis~>4^>
    \stemUp \undo\omit TupletNumber \tuplet 3/2 { <fis a d fis>8[ r <d a' d>_.] }
    \tuplet 3/2 { <d g bes>_.[ r <d g>_.] }
  | \omit TupletNumber
    \tuplet 3/2 { <d fis>_.[ g\rest <d a' d>_.] } \tuplet 3/2 { <d g bes>_.[ g\rest <d g>_.] }
    \tuplet 3/2 { <d fis a>_.[ g\rest <d a' d>_.] } \tuplet 3/2 { <d g bes>_.[ g\rest <bes, d g>_.] }
  | <fis d' fis>4_- <gis b! f'!>_- <cis e!>\fermata
    \once\override Staff.BreathingSign.text = \markup {
      \translate #'(0 . 1)
      \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
    }
    \breathe
    \stemDown \tuplet 3/2 { <a' a'>8\< <bes bes'> <a a'>\! }
  | \stemUp gis'4~\> \tuplet 6/4 { gis8[(\! d e!] f[ g f]) } e4
  %15
  | \stemUp gis4~\> \tuplet 6/4 { gis8[(\! d e!] f[ g f]) } e4
  | g!4~\> \tuplet 9/6 { g8[\!( cis, d e! f e d e d] }
  | \tuplet 6/4 { c![ d bes a bes a] } e'!4)
    \once\override Hairpin.Y-offset = #-5.5
    \tuplet 3/2 { d8\>( e d\! }
  | \tuplet 3/2 { c! d bes } \tuplet 3/2 { a bes a } e'!4) \tuplet 3/2 { a,8( bes a) }
  | f'4\< \tuplet 3/2 { a,8( bes a) } gis'4 \tuplet 3/2 { a,8( bes a)\! }
  %20
  | <a cis e! a>2.^-
    \clef bass \stemDown\slurDown
    \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(-0.5 . -1.5)
      a,8_\markup {
        \dynamic p \whiteout \pad-markup #0.4 \small "mezza voce"
      }(
      bes a)
    }
  | \stemUp\slurUp d4^. d^. d^. \tuplet 3/2 { a8( bes a) }
  | \stemUp\slurUp d4^. d^. d^. \tuplet 3/2 { a8( bes a) }
  | <d f>4 q q <g, e'!>
  | <f d'> <e! cis'> <f d'> \clef treble \tuplet 3/2 { a'8( bes a) }
  %25
  | <d, d'>4^.( q^. q^.) \tuplet 3/2 { a'8( bes a) }
  | <d, d'>4^.( q^. q^.) \tuplet 3/2 { a'8( bes a) }
  | <d f>4 q q <g, e'!>
  | <f e'!> <f d'> <e! d'> <e cis'>
  | <f' a> q q <e! g>
  %30
  | <e! f> <d f> <d e> <cis e>
  | d \tuplet 3/2 { r8 <cis e!>4 }
    \tuplet 3/2 { r8 \once\override NoteColumn.force-hshift = #0.3 d4 }
    \tuplet 3/2 {
      \ottava #1
      r8 <cis'! e!>4
      \ottava #0
    }
  | s2. d,,4(
  }
  \break
  %33
  | c ees^\ms g) bes,(
  | a c^\ms f) aes,(
  %35
  | g des'^\ms c \once\override NoteColumn.force-hshift = #-0.4 g'^\ms
  | f \once\override NoteColumn.force-hshift = #-0.4 c'^\ms bes)
    \once\override NoteColumn.force-hshift = #-0.4 f'(^\ms
  | e! des^\ms bes) e(
  | f d!^\parenthesizems bes) f'(
  | e! des^\parenthesizems bes) g'4(
  %40
  | aes f d bes)
    \bar "||"
    \key b \minor
  | gis4( b^\ms dis) fis,(
  | eis gis4^\parenthesizems cis) e,!(
  | dis a'!4^\parenthesizems gis
    \once\override NoteColumn.force-hshift = #-0.4 dis'^\parenthesizems
  | cis
    \once\override NoteColumn.force-hshift = #-0.4 gis'4^\parenthesizems
    fis
    \once\override NoteColumn.force-hshift = #-0.4 cis'^\parenthesizems)
  %45
  | bis2. 4
  | b2. 4
  | ais2. 4
  | b fis dis d!
  | cis2._\dotteddim 4
  %50
  | b2. 4
  | ais2. 4
  | b4 fis dis d!
  | cis2 r4 \clef bass \stemDown \tuplet 3/2 { fis,8(\parenthesize\> g fis)\! }
  | \stemUp b4^.( 4^. 4^.)
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #-4
      fis8(\> g fis)\!
    }
  %55
  | b4^.( 4^. 4^.)
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #-4
      fis8(\> g fis)\!
    }
  | <b d>4 q q \tuplet 3/2 { b8( cis b) }
  | <a cis>4 q q \tuplet 3/2 { a8( b a) }
  | <g b>4( q <g bes> q)
  | bes2 a4. g8
  %60
  | g2 fis
    \bar "||"
    \key g \minor
    \clef treble
  | \override NoteColumn.force-hshift = #0.3 <b! g' b!>2
    <bes g' bes>
  | <bes bes'>2
    <a a'>4. g'8
    \revert NoteColumn.force-hshift
  | g1
  | fis
  %65
  | g'4\rest bes,^.(^\ms d^.) g\rest
  | g4\rest d^.( g^.) g\rest
  | g4\rest bes,^.( d^.) g\rest
  | g4\rest bes,^.( d^.) g\rest
  | f4\rest bes,^.( d^.) f\rest
  %70
  | b\rest d,^.( g^.) f\rest
  | g\rest d^.( f^.) g\rest
  | d\rest a^.( d^.) d\rest
  | f\rest b,!^.( d^.) f\rest
  | f\rest b,!^.( d^.) f\rest
  %75
  | f\rest b,!^.( d^.) f\rest
  | f\rest b,!^.( d^.) f\rest
  | g\rest d^-( f^-) g\rest
  | g\rest fis^- g\rest g^-
  | a\rest gis^.^> b!^.^> a\rest
  %80
  | a\rest f^.^> a^.^> a\rest
  | e\rest gis,^.^-^\ms b!^.^- e\rest
  | e\rest f,^.^-^\ms a^.^- \clef bass s
  | <g, bes!>2~ \tuplet 6/4 { q8[ \clef treble bes\< d g bes d]\! }
  | \stemDown
    \tuplet 6/4 {
      \once\override Hairpin.Y-offset = #-4
      g[\> bes d, a' bes, g']\!
    }
    \tuplet 6/4 { a,[_\dotteddim d g, bes d, a'] }
  %85
  | \stemUp
    \set tieWaitForNote = ##t
    \tuplet 6/4 {
      bes,[ g' a, d g,~
      \once\override Staff.TextScript.extra-offset = #'(0.5 . 0)
      bes~]^\markup { \small "lunga" }
    }
    <g bes>4\fermata
    \once\override Staff.BreathingSign.text = \markup {
      \translate #'(0 . 0.3)
      \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
    }
    \breathe
    s4^\intempo
  | \stemUp ees'4 g^\ms  bes e,!

  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \partial 4
    \tuplet 3/2 { d8 \bottom d, a' } \top
  %1
  | ees'2. \omit TupletNumber \tuplet 3/2 { e!8 \bottom e,! bes' }
  | \top \once\override Stem.length = #4.5 f'2. \tuplet 3/2 { f'8 f, c' }
  | \tuplet 3/2 { e! e,! g } \tuplet 3/2 { c c, e }
    \tuplet 3/2 { g g, e' } \tuplet 3/2 { a a, <ees' fis> }
  | s1
  %5
  | \top \once\override Stem.length = #5 g2. s4
  | \once\override Stem.length = #5 a2. \tuplet 3/2 { a'8\f a, e' }
  | \tuplet 3/2 { gis gis, b! } \tuplet 3/2 { e! e,! gis }
    \tuplet 3/2 { b b,! gis' } \tuplet 3/2 { cis cis, <g'! ais> }
  | \rit
    \tuplet 9/6 {
      dis'\startTextSpan[ dis, <fis b!> fis' fis, <b!_~ d^~> <b d> fis <b dis>\stopTextSpan]
    }
    \once\override Staff.BreathingSign.text = \markup {
      \override #'(direction . 1)
      \override #'(baseline-skip . 2)
      \dir-column {
        \translate #'(-0.025 . 0.3)
        \center-align \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
        \center-align \musicglyph "scripts.ufermata"
      }
    }
    \breathe s4
  | s1*5
  | gis2. \tuplet 3/2 { <a a'>8[(\< <bes bes'> <a a'>])\! }
  %15
  | gis2. \tuplet 3/2 { <a a'>8[(\< <bes bes'> <a a'>])\! }
  | g!2. f4
  | \undo\omit TupletNumber \tuplet 3/2 { e!4\< d8 } cis4 g'\! f
  | \tuplet 3/2 { e!4\< d8 } cis4\! g'\>
    \once\override Staff.TextScript.extra-offset = #'(1.6 . 1)
    cis,\!_\markup {
      \small "cresc."
    }
    \omit TupletNumber
  | gis'4 cis, b' cis,
   %20
  | s1
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \once\override Hairpin.Y-offset = #-3
    \tuplet 3/2 { a8(\< bes a) }
    \tuplet 3/2 {
      a8( bes
      \once\override Hairpin.Y-offset = #-3
      a)\!\>
    }
    \tuplet 3/2 { a8( bes a) }
    \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1.5
      a8( bes a)\!
    }
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } e'!4
  %25
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) } a4
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \crescendo
    \tuplet 3/2 { a8_\startTextSpan( bes a) }
    \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1.5
      a8( bes a)
    }
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
  | \tuplet 3/2 { r8 bes( a) } \tuplet 3/2 { r8 bes( a) }
    \tuplet 3/2 { r8 bes( a) } \tuplet 3/2 { a( bes a) }
  %30
  | \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a) }
    \tuplet 3/2 { a8( bes a) } \tuplet 3/2 { a8( bes a)\stopTextSpan }
  | \tuplet 3/2 { a8(\f bes a) }
    \override Parentheses.font-size = #1
    \tuplet 3/2 {
      s8 \once\override NoteColumn.force-hshift = #1.7
      <bes bes'> <a a'>\parenthesize\<
    }
    \tuplet 3/2 { s8 <bes bes'> <a a'> }
    \tuplet 3/2 {
      s8 \once\override NoteColumn.force-hshift = #1.7
      <bes' bes'> <a a'>\!
    }
  | \slurUp \tuplet 9/6 {
      f'8[( d a f d a f d a\parenthesize\mf ])
    }
    \tuplet 3/2 {
      d8 \bottom d, a'
    }
    \revert Parentheses.font-size\top
  %33
  | c2. s4
  | a2. s4
  %35
  | g2 s2
  | s1
  | e''!2. s4
  | f2. s4
  | e!2. s4
  %40
  | s1
  | gis,2. s4
  | eis2. s4
  | dis2 s2
  | s1*17
  %61
  | \slurDown \tuplet 3/2 { d8(\< e! d) } \tuplet 3/2 { d( e d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  | \tuplet 3/2 { d(\!\ff\> g d) } \tuplet 3/2 { d( g d) }
    \tuplet 3/2 { ees( g ees) } ees[( c])\!
  | \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 1)) PhrasingSlur
    \tuplet 3/2 { d(^\(_\markup {
      \dynamic p \small "dim."
    } ees d) } \tuplet 3/2 { d( ees d)\> }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  | \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
    \tuplet 3/2 { d( ees d)\)\!\ppp } \tuplet 3/2 { \bottom d, \top d' \bottom d, }
    \top
  %65
  | \stemUp \override NoteColumn.force-hshift = #0.4 <g g'>2._\markup {
      \hspace #-0.5 \small "sottovoce"
    }
    <a a'>4
  | \stemUp <bes bes'>2. <a a'>4
  | \stemUp <g g'>2. <ges ges'>4
    \revert NoteColumn.force-hshift
  | f'2. s4
  | \slurUp <g, g'>2. <a a'>4(
  %70
  | <bes bes'>2.) d4(
  | <gis, gis'>2.) <a a'>4
  | s2. d4(
  | <g, g'>2.) <aes aes'>4(
  | <f f'>) s2 \bottom \stemDown d4 \top
  %75
  | \stemUp <g g'>2. <aes aes'>4(
  | <f f'>4) s2 \bottom \stemDown d4 \top
  | \stemUp <b'! b'!>2. 4
  | 2 <b g' b>
  | <b gis' b>1
  %80
  | <a a'>2. d4
  | \stemDown
    \tuplet 3/2 { d8 e d } \tuplet 3/2 { d e d } \tuplet 3/2 { d e d } \tuplet 3/2 { d e d }
  | \tuplet 3/2 { d8 e d } \tuplet 3/2 { d e d } \tuplet 3/2 { d e d } \tuplet 3/2 { d,( e d) }
  | \tuplet 6/4 { d8[ e! d e d e] } \bottom \tuplet 6/4 { d8[ e! d e d e] }
  | \tuplet 6/4 { d8[( e! d e d e] } \tuplet 6/4 { d8[ e d e d e] }
  %85
  | \set tieWaitForNote = ##t
    \tuplet 6/4 { d8[ e! d e d_~ e^~] } <d e>4)
    \tuplet 3/2 { <d fis a d>8^.^\f d[( \top d']) }

    % \top
}

AltoSecond = \context Voice = "twotwo" \relative c' {
  \voiceThree
  \mergeDifferentlyHeadedOn
  \partial 4
    s4
  %1
  | s1*34
  %35
  | \override NoteColumn.force-hshift = #0
    s2. bes4
  | s ees s aes
  | s1*6
  %43
  | s2. fis4
  | s b! s e!
  | s1*23
  %68
  | s2. \bottom \stemDown
    \once\override NoteColumn.force-hshift = #1
    d,,4
  | \top \omit TupletBracket \omit TupletNumber
    \revert NoteColumn.force-hshift
    \once\override NoteColumn.force-hshift = #2
    \tuplet 3/2 { d'8 ees d }
    \tuplet 3/2 { d ees d } \tuplet 3/2 { d ees d }
    \tuplet 3/2 { \once\override NoteColumn.force-hshift = #1.5 d\< ees d }
  | \tuplet 3/2 { \once\override NoteColumn.force-hshift = #2 d ees d }
    \tuplet 3/2 { d ees d } \tuplet 3/2 { d ees d } \tuplet 3/2 { d d' d,\! }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyHeadedOn
  \partial 4
    s4
  %1
  | \omit TupletNumber
    \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead ees8[ \bottom\tieDown ees, bes'~  bes ees, bes'~  bes ees, bes']
    } s4
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead f'8[ \bottom\tieDown f, c'~  c f, c'~  c f, c']
    } s4
  | s1\rit
  | \tuplet 9/6 { \top b'!8[\startTextSpan b,! <d g>  d' d, <g_~ b^~>  <g b> d <g b>\stopTextSpan] }
    \once\override Staff.BreathingSign.text = \markup {
      \translate #'(0 . 0.3)
      \concat { \tiny "( " \musicglyph "scripts.rcomma" \tiny " )" }
    }
    \breathe
    \tuplet 3/2 { fis \bottom fis, cis' }
  %5
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead g'[ \bottom g, d'~ d g, d'~ d g, d' ]
    }
    \tuplet 3/2 { \top gis \bottom gis, d' }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead a'[ \bottom a, e'^~ e a, e'^~ e a, e' ]
    }
    s4
  | s1*6
  %13
  | s2
    \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #22
    \once\override Stem.flag-style = #'no-flag
    e,!4 s
  | s1*6
  %20
  | \hideNotes g,1^\f \unHideNotes
  | s1*12
  %33
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead
      c'8[ \bottom\tieDown c, g'~  g c, g'~  g c, g']
    }
    \tuplet 3/2 { \top bes \bottom des, g }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead
      a8[ \bottom\tieDown c, f~  f c f~  f c f]
    }
    \tuplet 3/2 { \top aes \bottom ces, f }
  %35
  | \tuplet 6/4 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead
      g8[ \bottom\tieDown bes, ees~ ees bes ees]
    }
    \tuplet 6/4 { \top c'[ \bottom c, g' \top bes \bottom c, g'] }
  | \tuplet 6/4 { \top f'[ \bottom f, a \top ees'! \bottom f, a] }
    \tuplet 6/4 { \top bes'[ bes, d aes'\> bes, d]\! }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead
      e'!8[\p e,! g~  g e g~  g e g]
    }
    \tuplet 3/2 { e' e, g }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead
      f'8[ f, aes~  aes f aes~  aes f aes]
    }
    \tuplet 3/2 { f' f, aes }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead
      e'8[ e,! g~  g e g~  g e g]
    }
    \tuplet 3/2 { g'\< g, des' }
  %40
  | \tuplet 12/8 {
      aes'[ aes, d\!\> f f, bes d d,\! aes' bes bes, f']
    }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\hide NoteHead gis[ \bottom gis, dis'~ dis gis, dis'~ dis gis, dis' ]
    }
    \tuplet 3/2 { \top fis \bottom a,! dis }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\override Beam.positions = #'(-4.5 . -3.5)
      \once\hide NoteHead eis[ \bottom gis, cis~ cis gis cis~ cis gis cis ]
    }
    \tuplet 3/2 { \top eis \bottom g,! cis }
  | \tuplet 6/4 {
      \top \once\override NoteColumn.force-hshift = #0.5
      \once\override Beam.positions = #'(-5 . -3.5)
      \once\hide NoteHead dis[ \bottom fis, b~ b fis b ]
    }
    \tuplet 6/4 {
      \top
      \once\override Beam.positions = #'(-3.5 . -3.5)
      gis'[ \bottom gis, dis' \top fis \bottom gis, dis' ]
    }
  | \tuplet 6/4 {
      \top cis'[ cis, eis b'! cis, eis ]
    }
    \tuplet 6/4 {
      fis'[ fis, ais e'! fis, ais ]
    }
  %45
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #2.4
      \shape #'(
        ((0 . 0) (0 . 1) (0 . 1.5) (0 . 0))
        ((0 . 0) (0 . 1.5) (0 . 2.5) (0 . 0))
      ) Slur
      bis'[( bis, dis a'! bis, dis fis bis, dis ]
    }
    \tuplet 3/2 { bis' bis, dis }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #2.4
      b'[ b,! d! gis b, d eis b d ]
    }
    \tuplet 3/2 { b' b, d }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #2.4
      ais'[ ais, cis g' ais, cis e! ais, cis ]
    }
    \tuplet 3/2 { ais' ais, cis }
  | \tuplet 12/8 {
      b'[\< b, dis fis fis, b\!\> dis dis, fis d'! d,! b'\! ])
    }
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #2.4
      \shape #'(
        ((0 . 0) (0 . 1) (0 . 3) (0 . 3.5))
        ((0 . 2) (0 . 2) (0 . 7) (0 . -3))
      ) Slur
      cis[( cis, e!~ e cis e~ e cis e ]
    }
    \tuplet 3/2 { cis' cis, e }
  %50
  | \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #2.4
      b'[ b, d!~ d b d~ d b d ]
    }
    \tuplet 3/2 { b' b, d }
  | \tieUp \tuplet 9/6 {
      \top \once\override NoteColumn.force-hshift = #2.4
      ais'[ \bottom ais, cis~ cis ais cis~ cis ais cis ]
    }
    \tuplet 3/2 { \top ais' \bottom ais, cis }
  | \tuplet 12/8 {
      \top
      \once\override Beam.positions = #'(-3 . -5)
      b'[ \bottom b, dis \top fis \bottom fis, b \top dis \bottom dis, fis \top d'! \bottom d,! gis])
    }
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #20
    \once\override Stem.flag-style = #'no-flag
    <cis, ais'>2 s
  | \top\slurDown
    \tuplet 3/2 { fis8( g fis) } \tuplet 3/2 { fis8( g fis) } \tuplet 3/2 { fis8( g fis) } fis4
  %55
  | \tuplet 3/2 { fis8( g fis) } \tuplet 3/2 { fis8( g fis) }
    \tuplet 3/2 { fis8( g fis) } fis4
  | \once\override Hairpin.Y-offset = #-4
    \tuplet 3/2 { fis8(\< g fis) } \tuplet 3/2 { fis8( g fis)\! }
    \once\override Hairpin.Y-offset = #-4
    \tuplet 3/2 { fis8(\> g fis) } <e g>4\!
  | \once\override Hairpin.Y-offset = #-4
    \tuplet 3/2 { e8(\< fis e) }
    \tuplet 3/2 { e( fis e)\! }
    \tuplet 3/2 { e(\> fis e) } <d fis>4
  | \tuplet 3/2 { d8(\!\< e d) } \tuplet 3/2 { d( e d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  | \tuplet 3/2 { d(\!\ff\> g d) } \tuplet 3/2 { d( g d) }
    \tuplet 3/2 { ees( g ees) } ees[ c!\! ]
  %60
  | \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  % bar ||
  | s1*3
  | \bottom\stemDown s2.
    \shape #'((0 . 5) (0 . 6) (0 . 2) (0 . 1)) Slur
    d4^(
  %65
  | \top \tuplet 3/2 { d'8)( ees d) } \tuplet 3/2 { d( ees d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  | \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  | \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
  | \tuplet 3/2 { d( ees d) } \tuplet 3/2 { d( ees d) }
    \tuplet 3/2 { d( ees d) } \tuplet 3/2 { \bottom d,^( \top d' \bottom d,) }

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \partial 4
    <d,, d'>4
  %1
  \repeat volta 2 {
  | <g g'>_\Ped s2 <c, c'>4
  | <a' a'> s2 \stemNeutral <a, a'>4
  | <c' c'>2 <c, c'>4^\< <c'' ees! fis>
  | <g, g'> <b'! d g>\! <d g b!> \stemDown <fis,, fis'>
  %5
  | <b! b'!> s2 <e,! e'!>4
  | <cis' cis'> s2 \stemUp <cis, cis'>4
  | <e'! e'!>2 <e, e'>4^\< \stemNeutral <e'' g! ais>
  | <b,! b'!> <dis' fis b!>\! <fis b dis> <b,, b'>(
  | <e,! e'>_.) <fis fis'>2_> \tupletUp\tuplet 3/2 { <g g'>8_.[ <b! b'!>_.] r }
  %10
  | \omit TupletNumber
    \stemNeutral
    \tuplet 3/2 { <d d'>8-.[ <fis fis'>-.] r }
    \tuplet 3/2 { <g g'>8^.[ <b! b'!>^.] r }
    \tuplet 3/2 { <d d'>8^.[ <d, d'>^.] r }
    \tuplet 3/2 { <g g'>8-.[ <g, g'>-.] r }
  | <c, c'>4_. <d d'>2_>
    \undo\omit TupletNumber
    \override TupletNumber.direction = #-1
    \tupletUp\tuplet 3/2 { <g g'>8_. <bes bes'>_. r }
  | \omit TupletNumber
    \tuplet 3/2 { <d d'>-.[ <fis fis'>-.] r }
    \tuplet 3/2 { <g g'>^.[ <bes bes'>^.] r }
    \tuplet 3/2 { <d d'>^.[ <d, d'>^.] r }
    \tuplet 3/2 { <g g'>-.[ <g, g'>-.] r }
  | \tuplet 3/2 { <a' a'>-.[ <a, a'>-.] r }
    \tuplet 3/2 { <d d'>-.[ <d, d'>-.] r }
    \stemDown\slurUp \tuplet 3/2 { <a' a'>_. <a, a'>4\fermata }
    r4^\mp
  | \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tuplet 9/6 { d'8[( bes' d f bes d, b'! d, b!]) }
    \stemUp\slurDown \tuplet 3/2 { cis,( cis' e!) }
  %15
  | \stemDown\slurUp
    \shape #'((0 . 4) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tuplet 9/6 { d,8[( bes' d f bes d, b'! d, b!]) }
    \stemUp\slurDown \tuplet 3/2 { c,!( c'! e!) }
  | \stemDown\slurUp
    \shape #'((0 . 4) (0 . 0) (0 . 0) (0 . 0)) Slur
    \tuplet 9/6 { bes,!8[( bes' d g bes g cis bes cis,]) }
    \stemUp\slurDown \tuplet 3/2 { a,( a' d }
  | \tuplet 3/2 { g,, g' e'!) }
    \shape #'((0 . 2) (0 . 0) (0 . 1) (0 . 0)) Slur
    \stemDown\slurUp \tuplet 6/4 { a,,[( a' e' a e cis]) }
    \stemUp\slurDown \tuplet 3/2 { a,( a' d }
  | \tuplet 3/2 { g,, g' e'!) }
    \shape #'((0 . 2) (0 . 0) (0 . 1) (0 . 0)) Slur
    \stemDown\slurUp \tuplet 6/4 { a,,[( a' e' a e cis]) }
    \stemUp\slurDown \tuplet 3/2 { a,( a' e' }
  | \stemDown \tuplet 3/2 { b'! f d) }
    \shape #'((0 . 2) (0 . 0) (0 . 1) (0 . 0)) Slur
    \slurUp \tuplet 6/4 { a,[( a' e' d' b f]) }
    \stemUp\slurDown \tuplet 3/2 { a,,( a' e' }
  %20
  | \slurUp \tuplet 9/6 {
      \top e'![ cis \bottom a^\> e! cis a e! cis gis])\!
    }
    \tuplet 3/2 { <a a'>\arpeggio(_\> bes' a)\! }
  | <d,, d'>4_._( <f f'>_. <g g'>_.)
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | <d,, d'>4_._( <f f'>_. <g g'>_.)
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | <d,, d'>8.[ <e! e'!>16 <f f'>8. <d d'>16] <bes' bes'>4_- <g g'>8.[ <e e'>16]
  | <a a'>4 q q
    \stemDown
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a' e'! a>8\!\arpeggio(^\> bes' a)\!
    }
  %25
  | \stemUp <d,, d'>4 <f f'> <g g'>
    \stemDown
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | \stemUp <d,, d'>4 <f f'> <g g'>
    \stemDown
    \tuplet 3/2 {
      \once\override Hairpin.Y-offset = #4
      <a a'>8\!\arpeggio(^\> bes' a)\!
    }
  | \stemNeutral <d,, d'>8.[ <e! e'!>16 <f f'>8. <d d'>16] <bes' bes'>4^- <g g'>8.[ <e e'>16]
  | <a a'>4 <f f'>8.[ <d d'>16] <a' a'>4 <a, a'>
  | <d d'>8.[ <e! e'!>16 <f f'>8. <d d'>16] <bes' bes'>4^- <g g'>8.[ <e e'>16]
  %30
  | <a a'>4 <f f'>8.[ <d d'>16] <a' a'>4 <a, a'>
  | <d d'> <a' e'! a> <d f d'> \clef treble <a' e'! a>
  | <d f d'> r \clef bass <d,,, d'>2
  }
  %33
  | \stemDown\slurDown <ees! ees'>2. <e! e'!>4(
  | <f f'>2.) <d d'>4(
  %35
  | <ees ees'>) s4 <e! e'!> s
  | <f f'> s4 <bes bes'> s
  | \stemUp bes2._\Ped 4~
  | 2. 4~
  | 2. 4~
  %40
  | \stemDown\slurUp 8[( f' bes d f bes aes d,])
    \bar "||"
    \key b \minor
  | <b,! b'!>2.<bis bis'>4
  | <cis cis'>2.<ais ais'>4
  | <b b'> s <bis bis'> s
  | <cis cis'> s <fis fis'> s
  %45
  | \stemUp\slurDown fis,_\Ped \clef treble a'''!_.( fis_.) \clef bass fis,,,~
  | fis \clef treble gis'''!_.( eis_.) \clef bass fis,,,~
  | fis \clef treble g'''!_.( e!_.) \clef bass fis,,,~
  | \shape #'((0 . 4) (0 . 0) (0 . 1) (0 . 0)) Slur
    \stemDown\slurUp fis8[( fis' b dis fis b gis eis ])
  | \stemNeutral fis,,4 ais''^.( g!^.) fis,,~
  %50
  | fis gis''^.( eis^.) fis,,~
  | \slurDown fis g''_.( e_.) fis,,~
  | \stemDown fis8[( b dis fis b b, eis eis,])
  | <fis fis'>4
    \tuplet 3/2 {
      fis'8[(^\markup {
        \dynamic p \small "mezza voce"
      }
      g! fis])
    }
    \tuplet 3/2 { fis[( g fis]) } \tuplet 3/2 { fis8[( g fis]) }
  | \stemUp <b, b'>4 <d d'> <e e'> \tuplet 3/2 { fis8[( g fis]) }
  %55
  | <b, b'>4 <d d'> <e e'> \tuplet 3/2 { fis8[( g fis]) }
  | <b, b'>8.[ <cis cis'>16 <d d'>8. <b b'>16] g'2
  | <a, a'>8.[ <b b'>16 <cis cis'>8. <a a'>16] fis'2
  | <g, g'>4. <a a'>8 <bes bes'>4. <g g'>8
  | <ees' ees'>2 <c! c'!>4. <a a'>8
  %60
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    <d a'>2^\markup { \dynamic p } q
    \bar "||"
    \key g \minor
  | <g, g'>4. <a a'>8 <bes bes'>4. <g g'>8
  | <ees' ees'>2 <c c'>4. <a a'>8
  | <d_~ a'^~>1
  | q2. <d, d'>4(
  %65
  | <g d' g>2.)_\markup { \small "col Ped." } <a d a'>4(
  | <bes d bes'>2.) <a d a'>4(
  | <g d' g>2.) <ges d' ges>4(
  | <f d' f>2.)
    \once\override NoteColumn.force-hshift = #1.4 <d d'>4
  | <g d' g>2. <a d a'>4
  %70
  | <bes d bes'>2. <d d'>4(
  | <gis, d' gis>2.) <a d a'>4
  | \stemDown <d, d'>2 f4\rest q(
  | \stemUp <g d' g>2.) <f d' f>4(
  | <aes d aes'>) r r <d, d'>(
  %75
  | <g d' g>2.) <f d' f>4(
  | <aes d aes'>) r r <d, d'>(
  | <g g'>2.) q4
  | <fis fis'>2_> <f! f'!>_>
  | <e! e'!>1_>
  %80
  | <f f'>2._> <d' d'>4
  | <e,! e'!>1
  | <f f'>2. d'4
  | <g, g'>2_- \stemDown <g' bes!>~
  | <g bes>1~
  %85
  | <g bes>2~ q4\fermata <d, d'>8_. d'\rest
  | <g g'>4_\Ped s2.

  \fine
}

centerDynamics = {
  \partial 4
    s4-\markup { \hspace #-2 \dynamic f }
  %1
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
    opus = "Op. 79 Nr. 2"
    title = \markup { "Rapsodie g-moll" }
    %subtitle = \markup { "Op. 79, No 2" }
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
    \tempo 4 = 100
  }
}