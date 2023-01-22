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
        \line { \abs-fontsize #50 \bold "Ciaccona" }
        \null\null
        \line { \abs-fontsize #14 \bold "from the" }
        \null
        \line { \abs-fontsize #18 \bold "Partita in D minor for Solo Violin" }
        \null\null\null
        \line { \abs-fontsize #24 \bold "BWV 1004" }
        \null\null
        \null\null
        \line { \abs-fontsize #13 \italic "transcribed for Piano Solo by" }
        \null
        \line { \abs-fontsize #33 \bold "Ferruccio Busoni" }
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key d \minor
  \time 3/4
  \include "./global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo \markup {
    \column {
      "Andante maestoso, ma non troppo lento"
      \general-align #Y #-1
      \italic "Feierlich gemessen, doch nicht schleppend"
    }
  }
  \partial 2
    r4 r4
  | R1*3/4
  | R1*3/4 \clef bass
  | g,,4 a cis,
  | d r r
  %5
  | R1*3/4
  | r4 r r8 \stemDown d''8^-
  | <bes d bes'>4^^ \stemUp a'8. g32 f g8. e16
  | s4 a,8.^^ a16\rest s8. a16
  | s8 a\rest <a e'>^^ s s8. <a e'>16
  %10
  | <a f'>8^^ a\rest d8. f16 e8. <bes d>16
  | <a d>8 a\rest <a cis> a16\rest s
    % workaround for moving left the clef
    \autoBeamOff
    \once\omit Flag \once\omit Stem
    f8. \clef treble <a cis a'>16
    \autoBeamOn
  | f'8.^\markup { \italic\small "sempre assai marcato" }
    s16 <d a'>8.^^ s16 s8. <d f>16
  | <e bes' e>8.^^ s16 <e a e'>8.^^ s16 s8. <a e'>16^!
  | <a e'>4^^ <d, f d'>8. <a' f'>16 <g e'>8. <cis, e cis'>16\<
  %15
  | <d f d'>8. <e g e'>16\! <d a' d>4^> <cis cis'>8. d'16
  | d8.^\markup { \italic\small "ten." } e16( f8. g32 a bes8.) f16
  | e'8.\rest <bes, bes'>16_( <a a'>8. <g g'>16 <a a'>8.) fis'16
  | g8. f!16 e8.( d32 cis d8.) <bes e>16
  | \stemDown <a f'>8.(_\markup { \italic\small "dolce" }
    <b! g'>16 <cis e>8. <d f>16 <e g>8. <cis e>16
  %20
  | \autoBeamOff <d f>8.) \autoBeamOn d32(\pp e f8. g32 a \stemUp bes8.) f16
  | e8. bes'16( a8. g16 a8.) fis16
  | g8.( f!16  e8. d32 cis d8.) <gis, d' e>16\mf
  | f'8. g!16 e4~ \autoBeamOff e8. <a,, g'>16_.
  | <d f>8_. \autoBeamOn \stemDown f'[^\markup {
      \italic\tiny "molto espress. e legato"
    } e d cis d]
  %25
  | \stemUp g,8 a16 bes cis,8 bes' a g
  | f8. g32 a bes,8[ d g d'16 cis]
  | d8 f, e16 f g bes a g f e
  | <d f>^-( a' d f) f( e g f e d cis d
  | g, bes fis g) cis, e g bes a g e' g,
  %30
  | f cis d a bes^- d g a bes ees cis d
  | gis, b! d f e g! cis, d a,( e' d' cis
  | d8) \stemDown <d f>^.[(\p\<^\markup { \italic\tiny "poco espress." }
    <d g bes>^.\! <d f a>^.\> <d f gis>^.])\!
    \stemUp <bes,! f' gis>8^.^-[(
  | <a e' a>^.^-]) \stemDown <a' e'>^.[( <c! e a>^. <c ees g>^. <c ees fis>^.])
    \stemUp <aes, ees' fis>^.^-([
  | <g d' g>^.^-]) \stemDown <g' d'>^.([ <bes d g>^. <bes cis f!>^. <bes cis e>^.)]
    \stemUp <g, cis e>_._(^\>
  %35
  | <f d' f>16_.) \stemDown f''[\!( e d] cis8[ a e'])
    \stemUp <g,, cis g'>_._-[_(
  | <f d' f>16_.]) d'_._( f_. a_.) d[ f bes a] gis[( b! gis e]
  | a, e') a^. g^. fis( a fis c! a fis d c
  | b!) d g^\< fis g ees' d cis\! bes'->^\> a gis a\!
  | f( e! d c! bes a gis a c, g'! f e
    \bar "||"
    \break
  %40
  | <f, d' f>8_.)^\markup {
      \column {
        \small "Più mosso, ma misurato"
        \general-align #Y #-1.4
        \italic\small "Bewegter, doch immer gemessen"
      }
    }
    r <f a d>_.\p r r8. <a d e>16
  | <e a d e>8_. r <fis a d fis> r r8. <d' fis!>16
  | \once\override Staff.TextScript.extra-offset = #'(-0.6 . -0.8)
    <d fis>8_._\markup { \italic\tiny "poco cresc." } r
    <bes d g>_. r r8. <bes ees g>16
  | <a e'! g>8_.^\markup { \italic\tiny "più cresc" } r <a d a'>_. r r8. <a a'>16
  | <a a'>8^. s <bes d bes'>^. r r8. <bes d bes'>16
  %45
  | <bes e bes'>8^!^\markup { \hspace #2.4 \italic\tiny "dim." } r
    <a d a'>^! r r8. <a c a'>16
  | <a d a'>8^! r <g bes g'>^! r r8. <d' f!>16^\markup {
      \italic\tiny "più dim."
    }
  | <d f>8_. r <bes! d e> r r8. <g e' a>16_.\p_(
  | <f d' a'>16) \stemDown <d'' d'>[( a') <g, g'>^.]
    \stemUp <f f'>_. <e e'>_. <d d'>_. <c c'>_. <bes bes'> r
    \clef bass \stemDown <d, bes'>8^.
  | <c bes'>16^. \clef treble \stemUp <c'' c'>[( g') <f, f'>_.]
    <e e'>[ <d d'> <c c'> <bes bes'>] <a a'> r \clef bass \stemDown <c, a'>8^.
  %50
  | <bes a'>16^. \clef treble \stemUp <bes'' bes'>[_( f') <ees, ees'>_.]
    <d d'>[ <c c'> <bes bes'> <a a'>] <g g'> r \clef bass <bes, g'>8
  | <a g'>8 r16 \clef treble <g' bes d>16_. <g bes cis>8_. r16 <a e' a>16_.
    <a c g'>8_. r16 <bes c bes'>16_.
  | <a d a'>^.
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    d_\markup { \italic\tiny "cresc." }[ f a]
    <d, d'>^>[ <d a'> <f d'> <a f'>] bes\< <g g'> <a a'> <bes bes'>
  | <e, e'>^. c[\! e g] <c, c'>^> <c g'> <e c'> <g e'>
    a\< <f f'> <g g'> <a a'>
  | <d, d'>^. bes[\! d f] <bes, bes'>^> <bes f'> <d bes'> <f d'>
    g\< <e e'> <f f'> <g g'>
  %55
  | <e cis'> a[\!\< cis e] <a, a'>[ <g e'> <cis a'> <e cis'>]
    \stemDown <a e'> \stemUp <g, g'>[ <f f'> <e e'>]\!
  | <f a d f>8_\markup { \dynamic f \italic\tiny "marcatissimo" }
    \stemDown a^>[ d,^>] \stemUp \autoBeamOff <f a d f>^!\fz g'^! s \autoBeamOff
  | <e, g c e>8\fz \stemDown g^>[ c,^>] \stemUp \autoBeamOff <e g c e>^!\fz f'^!\fz s \autoBeamOff
  | <d, f bes d>8\fz \stemDown f^>[ bes,^>]
    \stemUp \autoBeamOff <d f bes d>^! <bes' e>^! s \autoBeamOff
  | <a, a'>^![ <d d'>^!]
    \override Stem.details.beamed-lengths = #'(6.5)
    d'16[ cis d b!] cis8 s
    \revert Stem.details.beamed-lengths
  %60
  | f8^\markup { \hspace #0.4 \italic\tiny "con bravura" }
    s <d, d'>^.^^ r16 s8 <d g>16[\< <f d'> <bes! bes'!>]\!

  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  %1
   s2
  | s2.*6
  %7
  | s4 <a cis>2
  | <a d f>8.^^-\markup {
      \column {
        \concat { \dynamic f \small " sempre" }
        \general-align #Y #-2
        \small "molto energico"
      }
    }
    a16\rest s2
  | <bes e>8^^ s s2
  %10
  | s2.*2
  | d8. e16 f8. g32 a bes8. a16
  | g8. f16
    \once\override NoteColumn.force-hshift = #1.6 g8. bes16
    a8. g16
  | f8. e16 s2
  %15
  | s2.
  | s4 d'4. s16 d
  | \stemUp << { e2 s4 } \\ { cis4 s s8. c!16 } >>
  | \stemDown b!4 bes s4
  | \bottom
    \once\override NoteColumn.force-hshift = #-1 d,4 s2
  %20
  | \top s2 s8. d'16
  | cis8. s16 c!8. s16 s8. c16
  | b!8. s16 bes8. s16 s4
  | <a d>8 s
    << { \stemDown a4. s8 } \\ {
      \once\override NoteColumn.force-hshift = #1
      d8. cis32 b! cis8. s16
    } >>
  | s2.*2
  %26
  | s4. d,4.~
  | d4 e s
  | s f2~
  | f4 s16 e2*14/16~
  %30
  | e8 s s2
  | d4
    \once\shape #'((0 . -0.8) (0 . -3.5) (0 . -3.5) (0 . -1)) Tie
    g!2~_>
  | g8 s s2
  | s2.*3
  %36
  | s4. bes8( b!4)
  | \mergeDifferentlyHeadedOff
    a2 s8 a~
  | a[ d,( ees f!]
    \once\override Arpeggio.positions = #'(-2 . 4)
    g)\arpeggio f\rest
  | a8_\markup {
      \italic\tiny "dimin."
    } d,[( cis) cis] bes[ <g! cis>]
  %40
  | s2.*4
  | \once\override NoteColumn.force-hshift = #1.6 g'16_.\f\< e_. f_. cis_.\! s2
  | s2.*7
  %52
  | s4 d16_. s8. s8 \once\override NoteColumn.force-hshift = #1.3 d'8_>
  | \once\override NoteColumn.force-hshift = #1.7 d16_> s8.
    c,16_. s8. s8 \once\override NoteColumn.force-hshift = #1.3 c'_>
  | \once\override NoteColumn.force-hshift = #1.7 c16_> s8.
    bes,16_. s8. s8 \once\override NoteColumn.force-hshift = #1.3 bes'_>
  %55
  | \once\override NoteColumn.force-hshift = #1.7 bes16_> s8.
    a16_. s8. s8 \once\override NoteColumn.force-hshift = #1.3 a_>
  | s2 <g bes d>16\fz a bes g
  | s2 <f a c>16 g a f
  | s2 <e g bes>16 f g e
  | s4 <d e a>8 <a' a'>^.^^ <a a'>16 <g g'> <a a'> <e e'>
  %60
  | <f d'> <e cis'> <f d'> a
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
    s2
  | s2.*2
  | s2 g16^-( f^- e^- f^-)
  | g16^-( e^- f^- d^-) s2
  | s2.*3
  %8
  | d8. e16 f8. g32 a \top bes8.^> \bottom f16
  | g8. f16 g8. \top bes16 a8. \bottom g16
  %10
  | f8. e16 f8. \top a16 g8. \bottom f16
  | e8. d16 e8. \top g16 f8. \bottom e16
  | f8.^\markup { \hspace #1.4 \italic\small "più" \dynamic f } s16
    <d a'>8^^ s s8. <d f>16^!
  | <d bes' d>8 s <cis a' cis>4 s8. <cis e'>16^!
  | <d e'>4 s2
  %15
  | s2.
  | \autoBeamOff \top d'8._\markup {
      \hspace #5 \dynamic p \italic\small subito
    }
    \showStaffSwitch \bottom e16( \autoBeamOn
    f8. g32 a bes8.) f16
    \hideStaffSwitch
  | s2 s8. fis16
  | g8. f!16 <cis e>8.( d32 cis d8.) cis16^.
  | \once\override NoteColumn.force-hshift = #0 a8.(
    b!16 <cis e>8. <d f>16 <e g>8. <cis e>16
  %20
  | \stemDown \once\omit Flag \once\omit Stem f8) s16
    \once\omit Flag \once\omit Stem d,16( s4 \stemUp bes'8.) f16
  | e8. bes'16( a8. g16 a8.) fis16
  | g8.( f!16 e8. d32 cis d8.) s16
  | f'8. g16
    << { e4~ e8. s16 } \\ { d8. cis32 b } >>
  | s2.*6
  %30
  | s4 d,^- s
  | s2.*8
  %39
  | s8 <d f>^.[_\<
    \once\override Staff.TextScript.extra-offset = #'(0 . -0.5)
    <e g>^._\markup {
      \italic\tiny "poco"
    } <f a>^. g^.]\! s8
  %40
  | s2.*8
  %48
  | s2 s8 <g, g'>16 <f f'>
  | <e e'>16 s8. s2
  %50
  | s2.*10
  | s4 s8. <f' d'>16^\markup { \italic\tiny "m.d." }[ g]
  }


Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set Staff.pedalSustainStyle = #'mixed
  %1
  \partial 2
    <d f a>4.^\f q8^-
  | <d g bes e>4 <cis g' a e'>4. q8^-
  | <d f a f'>4 <bes f' d'>4. c'8^-
  | <g bes>4^^ <f a> a,
  | a <d f a>4. q8^-
  %5
  | <d g bes e>4 <cis g' a e'>4. q8^-
  | <d f a f'>4 <bes f' d'>4. r8
  | \stemUp <g e'>4^^ <a e'>2^^
  | \stemDown d8 s d s r8. d16
  | d8 s cis s r8. cis16
  %10
  | d8 s bes s r8. g16
  | a8 s a8. a16\rest a8.\rest a16
  | d8. e16 f8. g32 a bes8. a16
  | g8. f16 g8.bes16 a8. g16
  | f8. e16 <bes f' a>8. <a' f'>16 <g e'>8. <bes, g' bes>16
  %15
  | \set tieWaitForNote = ##t
    \stemUp <a f' a>8. <g e' g>16 \grace { a32~ e'~ a~ } <a, e' a e'>2^>
    \set tieWaitForNote = ##f
  | <d, d'>8_. e'16\rest \clef treble e'16 \stemDown d4. s16 d16
  | \stemUp <cis e>4_.( <c! e>4._.) r16 \stemDown <c ees>16
  | <b! d>4_.( bes4_.) s8. bes16
  | a4_.( a4_.) s8. a16
  %20
  | \autoBeamOff <d f>8. \clef bass \autoBeamOn
    d,32\sustainOn e f8. g32 a s8. d,16
  | cis8._- s16 c!8._- s16 s8. c16
  | b!8._- s16 bes8._- s16 s8.\sustainOff \clef treble \stemUp <gis' d' e>16
  | \stemDown <a d>8 s a4( \autoBeamOff cis8.) \clef bass <a, g'>16^.^( \autoBeamOn
  | <d f>8^.) r <d a' f'>4^- r8 <d a' f'>^-
  %25
  | <d bes' f'>4^- <d bes' e>4^- r8 <d bes' e>^-
  | <d a' e'>4^- <bes f' d'>4 r8 <a f' bes>\arpeggio
  | <g f' bes>4\arpeggio <a cis a'> r8 <a cis a'>
  | <d a'>8. r16 \stemUp <d, bes' f'>4_\markup {
      \dynamic p \italic\tiny "molto dolce, non arpegg."
    }
    r8 <d bes' f'>
  | <d bes' f'>4_- <d bes' e>4_- r8 <d bes' e>
  %30
  | <d a' e'>4 \stemDown <g, g'>_.( g'8\rest <a, a'>_.)
  | \stemUp <b! b'!>4( <bes bes'> <a a'>)
  | <d d'>8_-
    \clef treble <d'' f>8_.[(^\p^\< <d f bes>_.\! <d f a>_.^\> <d f gis>_.)]\!
    \clef bass <d,, d'>_._-[(^\markup {
      \hspace #-3 \italic\tiny "quasi" \dynamic f
    }
  | <cis cis'>_._-)]
    \clef treble <cis'' e>_.[(^\p <c! e a>_. <c ees g>_. <c e fis>_.])
    \clef bass <c,, c'>_._-[(^\markup {
      \hspace #-3.3 \italic\tiny "quasi" \dynamic f
    }
  | <b! b'!>8_._-]) \clef treble <b'' d>[ <bes d g> <bes cis f!> <bes cis e>]
    \clef bass <bes,, bes'>8_.(\>
  %35
  | <a a'>_.)\!
    \stemDown <f'' a d>^.[^(\< <g bes e>^._\markup {
      \italic\tiny "poco"
    } <a cis f>^. <bes cis g'>^.)]\!
    \stemUp <a,, a'>_.[(
  | <d a'>8_.]) \stemDown <d' f>^.[^(\< <d f bes>^.\!\> <d f a>^. <d f gis>^.])\!
    \stemUp <d, b' e>_.\arpeggio[(_\markup { \italic\tiny "dolce" }
  | <cis a' e'>_.\arpeggio])
    \stemDown <c'! e>^.^[(\< <c! ees a>^.\!\> <c! ees g>^. <c ees fis>^.)]\!
    \stemUp <c,! a' d>\arpeggio
  | <b! g' d'>\arpeggio
    \stemDown <bes' d>^.[^(\< <bes ees g>^.\!\> <bes d f>^. <bes cis e>^.)]\!
    \stemUp <bes, e! c'>_.[(
  | <f d' d'>_.]) \stemDown a'2 \stemUp <a, a'>8_.(
  %40
  | \stemUp <d f>16_.)
    \stemDown <d, d'>[_\markup {
      \hspace #-0.8
      \italic\tiny "leggiero ma marcato"
    } <e e'> <f f'>] <g g'> <a a'> <b! b'!> <cis cis'>
    <d d'> <f f'> <e e'> <d d'>
  | <a a'>_( e') <d d'> <cis cis'> <d d'> <fis fis'> <a a'> <c! c'!>
    <c c'> <bes! bes'!> <c c'> <a a'>
  | <bes bes'> <g g'> <f! f'!> <ees ees'> <d d'> <c! c'!> <bes bes'> <a a'>
    <g g'> bes' <ees, ees'> <d d'>
  | \stemUp <cis cis'> e'! <a, a'> <g g'> <f f'> d' <e,! e'!> <d d'>
    <a a'>(\< e'' <d d'>_.) <cis! cis'!>_.\!
  | \stemDown g'^. e^. f^. cis^. d <c! c'!> <b b'> <a a'>_\markup {
      \hspace #-1.5 \italic\tiny "dim."
    }
    \stemUp <g g'> <f f'> <e e'> <d d'>
  %45
  | <cis cis'> <bes' bes'> <a a'> <g g'> <fis fis'> <d d'> a' <d, d'>
    <c! c'!> <bes bes'> <c c'> <a a'>
  | <bes bes'> <g g'> <a a'> <bes bes'> <c c'> <d d'> <e e'> <fis fis'>
    <g g'> <a a'> <bes bes'> <a a'>
  | <gis gis'> <a a'> <e e'> <f f'> <g! g'!> <cis, cis'> <d d'> <gis, gis'>
    <a a'> <f' f'> <e e'> <cis cis'>
  | <d d'>_. \stemDown d''[^(^\markup { \italic\tiny "leggiero" } a) g^.]
    f^. e^. d^. c^. bes d g, f
  | e c''[^( g) f^.] e d c bes a[ c] \stemUp <f, f'> <ees ees'>
  %50
  | <d d'> \stemDown bes''[^( f) ees^.] d c bes a g[ bes] \stemUp <ees,! ees'!>[ <d d'>]
  | <cis cis'>^\markup {
      \italic\tiny "poco cresc."
    }
    <a a'>  <cis cis'>  <e! e'!> a <e! e'!> a cis e g, a <e e'>
  | \stemDown <f f'>^. <d d'>[ <f f'> <a a'>] d_._> f a d, g bes, g d'
  | \stemUp <c, c'>8 <e e'>16[ <g g'>] \stemDown c_._> e g c, f a, f c'
  | \stemUp <bes, bes'>8_. <d d'>16[ <f f'>] \stemDown bes_._> d f bes, e g, e bes'
  %55
  | \stemUp <a, a'>_. \stemDown a''[ cis e] a,^.^>[ bes' a g] f r <a,, a'>8^.^>
  | <d a' d> <a a'>^>[ <d, d'>^>] <d' a' d>^!
    <bes g' bes>16 <a a'> <bes bes'> <g g'>
  | <c c'>8 \stemUp <g g'>_>[ <c, c'>_>] \stemDown <c' g' c>^!
    <a f' a>16 <g g'> <a a'> <f f'>
  | <bes bes'>8 \stemUp <f f'>_>[ <bes, bes'>_>]
    \stemDown <bes' f' bes> <g e' g>16[ <f f'> <g g'> <e e'>]
  | \stemUp <f f'> <e e'> <f f'> <d d'> <a a'>8 \stemDown e'''^.[ a,^. cis^.]
  %60
  | <d, d'>8 r16 \stemUp d' \stemDown <a f'>[ <g e'> <a f'>]
    g,16\rest
    \stemUp \once\override NoteColumn.force-hshift = #0.3 <bes, bes'> <a a'> <bes bes'> <g g'>

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
    composer = \markup {
      \column {
        \line { " " }
        \fill-line {
          \line { "" }\line { "Johann Sebastian Bach" }
        }
        \general-align #Y #-1
        \fill-line {
          \line { "" }\line {
            \italic \tiny "Zum Konzertvortrage für Pianoforte bearbeitet von"
          }
        }
        \general-align #Y #-3
        \fill-line {
          \line { "" }\line { "Ferruccio Busoni" }
        }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }

    %opus = "Op. NN"
    title = \markup { "Chaconne für violine allein" }
    subtitle = ""
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 56
  }
}