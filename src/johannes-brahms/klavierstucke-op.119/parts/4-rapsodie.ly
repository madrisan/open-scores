Global = {
  \key ees \major
  \time 2/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }

Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }
cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc. " } }
dolce = \markup { \hspace #-1.3 \italic\small "dolce" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \slurNeutral\stemNeutral
  %1
  \tempo \markup { \bold Allegro risoluto }
  | <g bes ees g>4^> <f bes d f>8^.[ <g bes ees g>^.]
  | <aes c ees aes>4^> <g bes ees g>8^.[ <f c' ees f>^.]
  | <g bes ees g>4^> <f aes d f>8^.[ <ees g bes ees>^.]
  | <f d' f>8^.[ bes^.] <ees, c' ees>4_>
  %5
  | <ees bes' d ees>_> <ees aes c ees>_>
  | <ees g bes ees>4_> <d f bes d>8_.[ <ees g bes ees>_.]
  | <g c ees g>4^> <f aes d f>8^.[ <ees g c ees>^.]
  | <d g bes d>4_> <c ees g c>8_.[ <bes d g bes>_.]
  | <a! fis' a!>8_.[ d_.] <g, g'>4_>
  %10
  | <g fis' g>4_> <g f'! g>4_>
  | <g' bes ees g>4 <f bes d f>8[ <g bes ees g>]
  | <aes c ees aes>4 <g bes ees g>8[ <f c' ees f>]
  | <g bes ees g>4 <f aes d f>8[ <ees g bes ees>]
  | <f d' f>8[ bes]
    \once\override Hairpin.self-alignment-Y = #6
    <ees, ees'>4_>\<
  %15
  | <ees des' ees>4_> <ees ces' ees>_>\!
  | \once\override Staff.TextScript.extra-offset = #'(-0.5 . -2)
    <ees' ges bes ees>4_>_\markup { \dynamic ff }
    <d ges bes d>8_.[ <ees ges bes ees>_.]
  | <ces ees ges ces>4 <bes ees ges bes>8[ <ces ees ges ces>]
  | <aes ces ees aes>4 <g! ces ees g!>8[ <aes ces ees aes>]
  | <ges a! c! ges'>4\sf f'16^>[( d bes a])
  %20
  | d_>[( bes f e!]) bes'_>[( f d c])
  | s2
  | s2
  | s2
  | bes''4\rest f'16[( d bes a!])
  %25
  | d[( bes f e!]) bes'[( f d c])
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #22
    \once\override Stem.flag-style = #'no-flag
    bes4^>(<g bes>_>
  | <ees g bes>_> <c ees g c>_>
  | <c ees aes! c>_>
    \once\override Staff.TextScript.extra-offset = #'(0.2 . -2.7)
    <f aes c f>^>)_\markup { \dynamic f }
  | \stemUp\slurUp bes'4\rest d16[( b! g fis])
  %30
  | b![( g d cis]) g'[( d b! a!])
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #22
    \once\override Stem.flag-style = #'no-flag
    \stemDown g4 <f g>
  | \stemNeutral <ees g> <d f g>
  | <c ees g>
    \once\override Staff.TextScript.extra-offset = #'(0.2 . -1)
    <c ees a!>_\markup { \dynamic f }
  | \stemUp\slurUp d''4\rest f16[( d bes a!])
  %35
  | d[( bes f e!]) bes'[( f d c])
  | \stemDown
    \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #22
    \once\override Stem.flag-style = #'no-flag
    bes4( \stemNeutral <ges bes>
  | <ees ges bes> <ees ges ces ees>
  | <ees aes ces ees> <aes ces fes aes>)
  | e''4\rest \stemUp <ees, ees'>4
  %40
  | <ees ees'>4 <ees ees'>
  | \stemDown <ees g! bes ees>_\sf <f, bes d f>8[ <g bes ees g>]
  | \stemNeutral <aes c ees aes>4^> <g bes ees g>8^.[ <f c' ees f>^.]
  | <g bes ees g>4^> <f aes d f>8^.[ <ees g bes ees>^.]
  | <f d' f>8^.[ bes^.] <ees, c' ees>4_>
  %45
  | <ees bes' d ees>_> <ees aes c ees>_>
  | <ees g bes ees>4_> <d f bes d>8_.[ <ees g bes ees>_.]
  | <g c ees g>4^> <f aes d f>8^.[ <ees g c ees>^.]
  | <d g bes d>4_> <c ees g c>8_.[ <bes d g bes>_.]
  | <a! fis' a!>8_.[ d_.] <g, g'>4_>
  %50
  | <g fis' g>4_> <g f'! g>4_>
  | <g' bes ees g>4 <f bes d f>8[ <g bes ees g>]
  | <aes c ees aes>4 <g bes ees g>8[ <f c' ees f>]
  | <g bes ees g>4 <f aes d f>8[ <ees g bes ees>]
  | <f d' f>8[ bes]
    \once\override Hairpin.self-alignment-Y = #6
    <ees, ees'>4\<
  %55
  | <ees d' ees> <ees c' ees>\!
  | \once\override Staff.TextScript.extra-offset = #'(-0.2 . -2.5)
    <g' c ees g>_\markup { \dynamic ff }
    <d b'! d>8[ <ees c' ees>]
  | <b! ees aes b!>4\sf <c ees aes c>8[ <g e'! g>]
  | <aes c f aes>4\sf <e! cis' e!>8[ <f d' f>]
  | <ees_~ fis_~ a!~ ees'~>4\sf q16[ d' c b!]
  %60
  | <c, ees fis c'>8_. r <b! d g>_. r
    \clef bass
  | <c, c'_~>2\sfp(\>
  | <d c' d>)
  | \clef treble
    <ees'_~ c'~ ees~>
  | q
    \clef bass
  %65
  | \slurNeutral\phrasingSlurDown
    \tuplet 3/2 { <ees, c'>8^>\!\(( g <ees c'>) } <d g d'>4^>\)
  | \tuplet 3/2 { <ees ees'>8^>\(( g <ees ees'>) } <d g d'>4^>\)
  | \tuplet 3/2 { <g g'>8^>\(( ees' <f, f'>) } d'4^>\)
  | \tuplet 3/2 { <ees, ees'>8^>\(( g <des des'>) } bes'4^>\)
    \clef treble
  | \tuplet 3/2 { <c c'>8\>\( aes' <bes, bes'> } g'4\)\!
  %70
  | \omit TupletBracket \omit TupletNumber
    \tuplet 6/4 { <c, c'>8[(\> aes' <bes, bes'> g' <aes, aes'> f'])\! }
  | \tuplet 3/2 { <fis, fis'>( ees' <fis, fis'> } <g d' g>4)
  | \tuplet 3/2 { <a! a'!>8( ees' <a,! a'!> } <g d' g>4)
  | \tuplet 3/2 { <c c'>8_>(\< g' <c, c'> } <d g d'>4_>)
  | \tuplet 3/2 { <e! e'!>8_>( g <e e'> } <d g d'>4_>)\!
  %75
  | \stemUp
    \tuplet 3/2 { <g g'>8[( <e! e'!> <f f'>] } <d g d'>4)
  | \tuplet 3/2 { <e! e'!>8[( c' <d, d'>] } <bes! e bes'!>4)
  | \stemNeutral
    \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(-0.2 . -2)
      <c' c'>8[(_\markup {
      \dynamic f \italic\small "ben marcato"
    } <f a!> <c c'>] } <e! g>4)
  | \tuplet 3/2 { <a,! a'!>8[( <d f> <a a'>] } <c e!>4)
  | \tuplet 6/4 { <g g'>8[( <c e!> <g g'> <d' f> <g, g'> <c e>] }
  %80
  | \tuplet 3/2 { <g g'>[ <a! c> <g g'>]) } <g b! d g>4
  | \tuplet 6/4 {
      \once\override Staff.TextScript.extra-offset = #'(-0.2 . -0.5)
      <c c'>8[(_\markup {
      \italic\small "più" \dynamic f
    }
    <g' b!> <c, c'> <f a!> <c c'> <e! g>]) }
  | \tuplet 6/4 { <a,! a'!>8[( <e'! g> <a, a'> <d f> <a a'> <c e>]) }
  | \tuplet 6/4 { <g g'>8[( <c e!> <g g'> <d' f> <g, g'> <a! c>]) }
  | <g b! d g>4^>(\sf <c, c'>_.)
    \clef bass
  %85
  | <c, c'~>2\fp(\>
  | <d c' d>)
    \clef treble
  | <ees'!~ c'~ ees!~>
  | q
    \clef bass
  | \stemUp c\!
    \clef treble
  %90
  | c'
  | \stemDown <ees_~ c'_~ ees~>
  | q
    \key aes \major
    %\break
  | \stemUp
    \once\shape #'((0 . 0) (0 . 1) (0 . 1.5) (0 . -2)) Slur
    <c, ees aes c>8[^(_\markup {
      \dynamic p \italic\small "grazioso"
    }
    \arpeggio des'\< <c, aes' c d!>\arpeggio ees']\!
  | \once\override NoteColumn.force-hshift = #0.5 <c c'>^. d'\rest
    \once\override NoteColumn.force-hshift = #0.5 <c, aes' c>^. c'\rest)
  %95
  | <c, aes' c>^. g'\rest
    \once\override Arpeggio.positions = #'(-0.2 . 4)
    <c, aes' c>^.\arpeggio g'\rest
  | \slurDown \acciaccatura { \stemUp bes16 g } \stemDown des8[^( c
    \acciaccatura { \stemUp g'16 ees } \stemDown bes8 c]
  | \acciaccatura { \stemUp aes'16 f } \stemDown des8[ c
    \acciaccatura { \stemUp f16 des } \stemDown bes8 aes])
  | \stemUp
    \acciaccatura { \stemUp ees'16 bes }
    \once\shape #'((0.3 . 0) (0 . -1) (0 . -1.5) (0 . 0)) PhrasingSlur
    g8[_\( f \acciaccatura { \stemUp des'16 bes } ees,8 f]
  | \acciaccatura { \stemUp ees'16 des } g,8[ bes \acciaccatura { \stemUp ees16 des } f,8 aes]
  %100
  | \acciaccatura { \stemUp ees'16 c } ees,8[ g \acciaccatura { \stemUp ees'16 bes } des,8 f]\)
  | <aes c>8 f'\rest <aes, c> f'\rest
  | \once\override Arpeggio.positions = #'(-3.8 . 1.8)
    <c, ees'>\arpeggio f'\rest
    \once\override Arpeggio.positions = #'(-2.8 . 1.8)
    <c ees>\arpeggio f\rest
  | <c ees> f\rest
    \once\override Arpeggio.positions = #'(-0.3 . 2.6)
    <c ees g>\arpeggio f\rest
  | \stemDown \acciaccatura { \stemUp b16 g } \stemDown ees8[^( d!
    \acciaccatura { \stemUp g16 ees } \stemDown c8 g]
  %105
  | \acciaccatura { \stemUp f'16 d! } bes!8[ aes \acciaccatura { \stemUp d16 b! } g8 f])
  | \acciaccatura { \stemUp b!16 g } ees8[( d! \acciaccatura { \stemUp g16 ees } c8 g])
  | \acciaccatura { \stemUp g'16 ees } c8( bes) \acciaccatura { \stemUp ees16 c } aes4
    \clef bass
  | <ces d!>2
    \clef treble
  | \stemNeutral\slurNeutral\phrasingSlurNeutral
    <g ees' g>4\p( <a! fis' a!>)
  %110
  | <bes g' bes>2_\dolce
  | <g' ees' g>4( <a! fis' a!>)
  | <bes g' bes>2_\dolce
  | <g, e'! g>4^\( <a! fis' a!>
  | <bes g' bes> <c a'! c>
  %115
  | <des! bes' des!> <e! c' e!>
  | \stemUp <f f'> <g g'>\)
  | <aes' c>8 c\rest <aes c> c\rest
  | <c, c'> c'\rest <c, aes' c> c'\rest
  | \once\override Arpeggio.positions = #'(-0.5 . 4.5)
    <c, aes' c>\arpeggio a'\rest
    \once\override Arpeggio.positions = #'(-0.5 . 4.5)
    <c, aes' c>\arpeggio a'\rest
  %120
  | \slurDown \acciaccatura { \stemUp bes16 g } \stemDown des8[^(_\dolce c
    \acciaccatura { \stemUp g'16 ees } \stemDown bes8 c]
  | \acciaccatura { \stemUp aes'16 f } \stemDown des8[ c
    \acciaccatura { \stemUp f16 des } \stemDown bes8 aes])
  | \stemUp
    \acciaccatura { \stemUp ees'16 bes }
    \once\shape #'((0.3 . 0) (0 . -1) (0 . -1.5) (0 . 0)) PhrasingSlur
    g8[_\( f \acciaccatura { \stemUp des'16 bes } ees,8 f]
  | \acciaccatura { \stemUp ees'16 des } g,8[ bes \acciaccatura { \stemUp ees16 des } f,8 aes]
  | \acciaccatura { \stemUp ees'16 c } ees,8[ g \acciaccatura { \stemUp ees'16 bes } des,8 f]\)
  %125
  | \once\override Arpeggio.positions = #'(-3.5 . 1.5)
    <aes c>8\arpeggio f'\rest
    \once\override Arpeggio.positions = #'(-3.5 . 1.0)
    <aes, c>\arpeggio f'\rest
  | \once\override Arpeggio.positions = #'(-3.8 . 1.8)
    <c, ees'>\arpeggio f'\rest
    \once\override Arpeggio.positions = #'(-2.5 . 1.5)
    <f, aes c>\arpeggio f'\rest
  | s2*8
  %135
  | \stemUp\slurUp \tuplet 3/2 { g8( ees f } d4)
  | \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #0.3 ees8( c des
    }
    \once\override NoteColumn.force-hshift = #0.4 bes4)
  | \stemDown \tuplet 3/2 { <c c'>8(\> aes'\! <bes, bes'> } g'4)
  | \tuplet 6/4 { <c, c'>8[(\> aes'\! <bes, bes'> g' <aes, aes'> f')] }
  | \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(0 . -1)
      <fis, fis'>(_\markup {
        \italic\small "cresc."
      }
      ees' <fis, fis'>)
    }
    <g d' g>4
  %140
  | \tuplet 3/2 { <a a'>8( ees' <a, a'>) } <g d' g>4
  | \tuplet 3/2 {
      \once\override Staff.TextScript.extra-offset = #'(0 . -1)
      <c c'>8(_\markup {
        \dynamic f \italic\small "cresc."
      }
      g' <c, c'>)
    }
    <d g d'>4
  | \tuplet 3/2 { <e! e'!>8( g <e e'>) } <d g d'>4
  | \tuplet 3/2 { <g g'>8( e'! <f, f'>) } \stemUp <d, g d'>4
  | \stemDown \tuplet 3/2 { <e'! e'!>8( g <d d'>) } \stemUp <bes,! e! bes'!>4
  %145
  | \stemDown \tuplet 3/2 { <c' c'>8(\ff <f a!> <c c'>) } <g e'! g>4
  | \tuplet 3/2 { <a! a'!>8( <d f> <a a'>) } <e! c' e!>4
  | \tuplet 6/4 { <g g'>8[( <c e!> <g g'> <d' f> <g, g'> <c e>] }
  | \tuplet 3/2 { <g g'> <a! c> <g g'>) } <g b! d g>4
  | \tuplet 6/4 { <c c'>8[( <g' b!> <c, c'> <f a!> <c c'> <e g>]) }
  %150
  | \tuplet 6/4 { <a,! a'!>8[( <e'! g> <a, a'> <d f> <a a'> <c e>]) }
  | \tuplet 6/4 { <g g'>8[( <d' f> <g, g'> <c e!> <g g'> <a! c>]) }
  | <g c e! g>4^>\sf <g b! d g>8\sf r
    \clef bass
  | \once\override Staff.TextScript.extra-offset = #'(0.3 . -3)
    r8_\markup {
      \dynamic pp \italic\small "ma ben marc."
    }
    <g, c e!>^.[ <g b d>^. <g c e>^.]
  | r8 <a c f>^.[ <g c e!>^. <a c d>^.]
  %155
  | r8 <g c e!>^.[ <f b! d>^. <e! c'>^.]
  | <d b'! d>^.[ g^.] r s \clef treble
  | s2
  | r8 <e''! g c>^.[ <d g b!>^. <e! g c>^.]
  | r <a! c e!>^.[ <f a d>^. <e! a c>^.]
  %160
  | r <e! g b!>^.[ <c e a!>^. <b! e g>^.]
  | <fis dis' fis>^. b!^. r s
  | s2
  | \once\override Staff.TextScript.extra-offset = #'(0.3 . -2)
    r8_\markup { \italic\small "dim." }
    <g, c e!>^.[ <g b! d>^. <g c e>^.]
  | r <a! c f>^.[ <g c e!>^. <a c d>^.]
  %165
  | r <g c e!>^.[ <f b! d>^. <e! c'>^.]
  | <d b'! d>^.[ g^.] r s
  | \clef treble
    s2
  | \once\override Staff.TextScript.extra-offset = #'(0.3 . -2)
    r8_\markup {
      \dynamic pp
    }
    \stemUp \once\override NoteColumn.force-hshift = #0.3 g''4.
  | r8 <ees g>[( <d f> <ees g>])
  %170
  | r8 <c ees>[( <b! d> <c ees>])
  | c4 <aes c>
  | q cis
  | r8 \once\override NoteColumn.force-hshift = #0.3 aes'4.
  | r8 <g bes>[( <f aes> <g bes>])
  %175
  | r8 <ees g>[( <d f> <ees g>])
  | ees4 <c ees>
  | q <aes f'>
  | r8 \ottava #1 \once\override NoteColumn.force-hshift = #0.3 d'4.
  | r8 <c ees>[( <bes d> <c ees>]) \ottava #0
  %180
  | r8 <aes c>[( <g bes> <aes c>])
  | aes4( <f aes>
  | <f aes> <d aes'>)
  | s2*19
  %202
  | \stemNeutral s4
    \once\override Staff.TextScript.extra-offset = #'(-1.5 . -1)
    <des, des'>_\markup {
      \italic\small "cresc."
    }
  | <des bes' des> <ges bes ees ges>
  | <ges ces ees ges> <ces ees aes ces>
  %205
  | f'4\rest \ottava #1 \stemUp f'16[( d f, d] \ottava #0
  | bes[ d, bes8]) s4
  | <f' bes d f>2^>
  | s2
  | a'4\rest \ottava #1 aes'16[( f aes, f] \ottava #0
  %210
  | des[ f, des8]) s4
  | s4 \stemDown <aes des! f aes>~
  | <des f aes> <aes des fes aes>~
  | <des fes aes>
    \ottava #1
    <aes' des fes aes>^>\ff
  | <ges bes des ges>^> <f! bes des f!>^>
  %215
  | <fes bes des fes>^> \stemUp <ees ces' ees>_> \ottava #0
  | \stemDown <ees bes' ees>^> <ees a! ees'>^>
  | \stemNeutral <ees g! bes ees>->\ff <f, bes d f>8-.[ <g bes ees g>-.]
  | <aes c! ees aes>4-> <g bes ees g>8-.[ <f c' ees f>-.]
  | <g bes ees g>4-> <f aes d f>8-.[ <ees g bes ees>-.]
  %220
  | <f d' f>8-.[ bes-.] <ees, c' ees>4_>
  | <ees bes' d ees>_> <ees aes c ees>_>
  | <ees g bes ees>4 <d f bes d>8[ <ees g bes ees>]
  | <g c ees g>4 <f aes d f>8[ <ees g c ees>]
  | <d g bes d>4 <c ees g c>8[ <bes d g bes>]
  %225
  | <a! fis' a!>8[ d] <g, g'>4
  | <g fis' g>4 <g f'! g>4
  | <g' bes ees g>4 <f bes d f>8[ <g bes ees g>]
  | <aes c ees aes>4 <g bes ees g>8[ <f c' ees f>]
  | <g bes ees g>4 <f aes d f>8[ <ees g bes ees>]
  %230
  | <f d' f> bes <ees, ees'>4\<
  | <ees des' ees> <ees bes' ees>
  | <aes' ces ees aes>->\!\ff <d,! bes' d!>8-.[ <ees ces' ees>-.]
  | <ces fes aes ces>4-> <g! ees' g!>8-.[ <aes fes' aes>-.]
  | <fes aes des fes>4-> <c! aes' c!>8_.[ <des fes des'>_.]
  %235
  | <ces d! f! ces'>4\sf \stemUp bes'^>
  | bes^> bes^>
  | \stemNeutral <ges, bes ees>8_. r16 <bes' bes'>16^>^.  f8^.[ r16 <ges ges'>^.]
  | ees8^.[ r16 <bes' bes'>16^>^.]  f8^.[ r16 <ges ges'>^.]
  | ees8^.[ r16 <ees' ees'>16^>^.]  f,8^.[ r16 <f' f'>^>^.]
  %240
  | ges,8^.[ r16 <ges' ges'>16^>^.]  a,!8^.[ d16\rest <a'! a'!>^.]
  | \stemNeutral <bes ees ges bes>4^> <d,, aes' bes d>_>
  | <ees ges ees'>8 r16 <ces' ces'>\sf ges!8^.[ r16 <g! g'!>^.]
  | ees8_. r16 <ces' ces'>^.\sf ges!8^.[ r16 <g! g'!>^.]
  | ees8_. r16 <ges' ges'>^>^. f,8^.[ r16 <f' f'>^>^.]
  %245
  | ees,8^.[ r16 <ees' ees'>^>^.] a,,!8^.[ r16 <a''! a'!>^.]
  | <bes ees ges bes>4-> <ees, aes ces ees>->
  | <ees, a! c! ees>_> <aes, bes d f bes>_>
  | s2
  | s2
  %250
  | \tuplet 3/2 { d'8\rest d,_. ees_. } \tuplet 3/2 { d'\rest ees,_. d_. }
  | \tuplet 3/2 { d'8\rest <d, f>_. <ees g>_. } \tuplet 3/2 { e'\rest <ees, g>_. <d f>_. }
  | s2
  | r2
  | \tuplet 3/2 { <ges' bes ees ges>8^. <f f'>^. <ges ges'>^. }
    \tuplet 3/2 { <aes ces ees aes>^. <ges ges'>^. <f f'>^. }
  %255
  | \tuplet 3/2 { <ges bes ees ges>^. <f f'>^. <ges ges'>^. }
    \tuplet 3/2 { <aes ces ees aes>^. <ges ges'>^. <f f'>^. }
  | \tuplet 3/2 { <ges bes ees ges>^. <f f'>^. <ees ees'>^. }
    \tuplet 3/2 { <ges ces ees ges>^. <f f'>^. <ees ees'>^. }
  | \tuplet 3/2 { <ges a! c! ees ges>^. <f f'>^. <ees ees'>^. }
    <f bes d f>8^.[ <bes, bes'>^.]
  | <ees ees'>^. r <ees ges ces ees>4^>
  | <des ges bes des>^> <ces ees aes ces>^>
  %260
  | <bes ees ges bes>2^>~
  | \stemUp <bes ees ges bes>2
  | \stemDown
    \once\override Staff.OttavaBracket.minimum-length = 3
    \ottava #1 <ees' ges bes ees>2\fermata \ottava #0
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2*23
  %24
  | \bottom <f, bes d>2^~ q
  | s2*3
  | \top <d' g b! d>2~\fp
  %30
  | q
  | s2*3
  | <bes d bes'>2~
  %35
  | q
  | s2*3
  | <ges' ces ees ges>2*1/2
    \once\shape #'((0 . 0) (0 . 0.4) (0 . 0.2) (0 . 0)) Slur
    ces'4(
  %40
  | \once\shape #'((0.2 . 0.4) (0 . 1.2) (0 . 0.4) (0 . 0)) Slur
    bes)( a!)
  | s2*48
  %89
  | \once\override Hairpin.Y-offset = #-3.5
    <c,,, c'>4\<^( <d d'>\!
  | <f' f'>\> <fes fes'>\!)
  | s2*3
  | \once\override Arpeggio.positions = #'(-0.5 . 4)
    aes'8\arpeggio[\> g
    \once\override Arpeggio.positions = #'(-0.2 . 4)
    f\arpeggio\! fes]
  %95
  | \once\override Arpeggio.positions = #'(-0.2 . 4)
    ees2\arpeggio
  | s2*5
  %101
  | \once\override Arpeggio.positions = #'(-3.5 . 1.5)
    c,8[\arpeggio( des
    \once\override Arpeggio.positions = #'(-3.5 . 1.5)
    d!\arpeggio\< ees]\!
  | c'[\> aes\! f fis])
  | \once\override Arpeggio.positions = #'(-2 . 1.5)
    g2\arpeggio
  | s2*4
  | g,4(\> f)\!
  | s2*7
  %116
  | des''2
  | \once\override Arpeggio.positions = #'(0 . 4.5)
    \once\override Staff.TextScript.extra-offset = #'(0 . -3)
    c8\arpeggio[_\markup { \dynamic p } des
    \once\override Arpeggio.positions = #'(0 . 4.5)
    d!\arpeggio ees]
  | \once\override Arpeggio.positions = #'(0 . 4.5)
    aes\arpeggio[ g
    \once\override Arpeggio.positions = #'(0 . 4.5)
    f\arpeggio fes]
  | ees2
  %120
  | s2*5
  %125
  | c,8[( des d!\< ees]\!
  | c'[\> aes\! f fes])
  | \stemUp
    \once\override Hairpin.Y-offset = #-5
    <c ees aes c>\arpeggio[(\< <des bes' des> <d! b'! d!> <ees c' ees>])\!
  | \stemDown <ees' ges ees'>[^(\f\> <c aes' c> <aes f' aes> <ges ees' ges>])\!
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <f des' f>4_\markup { \dynamic p \italic\small "dim." }
    <fes des' fes>
  %130
  | \stemUp <ees c' ees>2
  | <aes, ees' aes>4 <g! ees' g!>
  | <fis ees' fis>2
    \bar "||"
    \key ees \major
  | \stemDown <g' c g'>4^>^(\p <g d' g>^>
  | <g ees' g>^> <g d' g>^>)
  %135
  | \omit TupletBracket \omit TupletNumber
    <g g'> q
  | q q
  | s2*31
  %168
  | s8 <ees'! c'>[^(\( <d b'!> <ees c'>])
  | s8 c4.
  %170
  | s8 g4.
  | aes!4 f
  | c f\)
  | s8 <f'! d'>[^(\( <ees c'!> <f d'>])
  | r8 d4.
  %175
  | r8 bes4.
  | c4 aes
  | ees \once\omit Stem aes\)
  | s8 <bes' g'>[ <aes f'> <bes g'>]
  | s8 g4.
  %180
  | s8 ees4.
  | f4 d
  | aes s
  | <c ees fis a!>^( q
  | q q)
  %185
  | \stemNeutral\slurUp
    r
    \once\shape #'((0 . 0) (0 . -5.5) (0 . 3) (0 . 3.5)) Slur
    ees'16[(\< c a! fis]
  | c[ a! fis ees]
    \bottom s16 s\! s \stemDown \once\omit Flag \once\omit Stem c,) \top
  | s2*3
  %190
  | \stemNeutral r4 \ottava #1 f''''16[( d f, cis] \ottava #0
  | d[ bes d, a!] bes[ f d c])
  | s2*3
  %195
  | r4 \ottava #1 ges''''16[( ees ges, d!] \ottava #0
  | ees[ ces ees, bes] ces[ ges ees des])
  | s2*3
  %200
  | r4 \ottava #1 aes''''!16[( f aes, e!] \ottava #0
  | f[ des f, c] des[ aes f ees])
  | s2*3
  %205
  | \stemDown <bes' d! f bes>2
  | s4 <ges' bes ees ges>^>
  | f,\rest <f bes d f>~
  | <bes d f>4 <ees ges ces ees>^>
  | <des f aes des>2_>
  %210
  | s4 \ottava #1 <bes' des ges bes>^>
  | << {
      \stemUp \once\override Stem.length = #9 <aes des f aes>2*1/2^>
    } \\ r4 >>
    \ottava #0
    s4
  | s2*23
  %235
  | s4 <bes,, ees>8_.[ <ces ees aes>_.]
  | <bes ees ges>4_. <aes d! f>_.
  | s2*13
  %250
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #10
    \once\override Stem.flag-style = #'no-flag
    ees'4
    \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #10
    \once\override Stem.flag-style = #'no-flag
    f
  | \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #14
    \once\override Stem.flag-style = #'no-flag
    ges4
    \once\override Stem.cross-staff = ##t
    \once\override Stem.length = #14
    \once\override Stem.flag-style = #'no-flag
    aes

  | s2*10
  %261
  | \stemDown \once\override NoteColumn.force-hshift = #1.7 <ees' ges bes ees>8^. r
    <ees ges bes ees>8^. r
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2*20
  %21
  | bes'4^>( bes^>
  | bes^> <a! bes>^>
  | <g bes>^> <ees a! c>^>)
  | \stemDown <bes, bes'>2~
  %25
  | \once\override Stem.length = #10
    \stemUp \once\override NoteColumn.force-hshift = #0
    <bes bes'>2
  | \stemDown
    bes''4_( <g bes>
  | \stemNeutral <ees g> <c ees g>
  | <aes! c ees aes!> <f aes c f>)
  | \stemUp <g b! d g>2~
  %30
  | q
  | \stemDown g'4 <f g>
  | <ees g> <d f g>
  | <c ees g> \stemUp <f, c' f>
  | <bes d f>2~
  %35
  | q
  | \stemDown bes'4 <ges bes>
  | <ees ges bes> <ces ees ges ces>
  | <aes ces ees aes> <fes aes ces fes>
  | \stemUp\slurDown <ces' ees ges ces>2*1/2 ees,,16[( ges ces ees])
  %40
  | ges16[( ces ees ges]) \clef treble ces16[( ees ges ces])
  | s2*24
  %65
  | \slurUp \tuplet 3/2 { c,,8( g c } g4)
  | \tuplet 3/2 { c8( g c } g4)
  | \tuplet 3/2 { ees'8( g, d' } g,4)
  | \tuplet 3/2 { c8( g bes } g4)
  | \omit TupletBracket \omit TupletNumber
    \tuplet 3/2 { aes8( c g } bes4)
  %70
  | \tuplet 6/4 { aes8([ c g bes f aes)] }
  | \tuplet 3/2 { ees8( aes ees } g4)
  | \tuplet 3/2 { ees8( a! ees } g4)
  | \tuplet 3/2 { e'!8( g, e'! } <g d>4)
  | \tuplet 3/2 { c,8( g c } <g' d>4)
  %75
  | \tuplet 3/2 { e!8(^\markup { \italic\small "cresc." } g, d' } <g d>4)
  | \tuplet 3/2 { c,8 g bes! } <c g'>4
  | s2*4
  %81
  | \tuplet 6/4 {
      c,8( c' <f a!>~
      \once\override NoteColumn.force-hshift = #0.1 <f a!>4
      <e! g>8)
    }
  | \tuplet 6/4 {
      a,,!8( a'! <d_~ f_~>
      \once\override NoteColumn.force-hshift = #0.1 <d f>4
      <c e!>8)
    }
  | s2*7
  % 90
  | f4( fes)_\Ped
  | s2*42
  %133
  | \once\undo\omit TupletNumber
    \tuplet 3/2 { c8( g c) } s4
  | \once \undo \omit TupletNumber
    \tuplet 3/2 { ees8( g, ees') } s4
  %135
  | \tuplet 3/2 { ees8( g, d') } s4
  | \tuplet 3/2 { ees8( g, bes!) } s4
  | \tuplet 3/2 { aes8( c g' } bes4)
  | \tuplet 6/4 { aes,8[( c g' bes f aes]) }
  | \tuplet 3/2 { ees,8( aes ees') } g4
  %140
  | \tuplet 3/2 { ees,8( a! ees') } g4
  | \slurUp s4 \tuplet 3/2 { <c, d g>8( g <c d g>) }
  | s4 \tuplet 3/2 { <c d g>8( g <c d g>) }
  | e![( d]) \tuplet 3/2 { <c d g>8( g <c d g>) }
  | c[( bes!]) \tuplet 3/2 { <c g'>( g <c g'>) }
  %145
  | s2*4
  | s4 \tuplet 3/2 { \once\override NoteColumn.force-hshift = #0.4 <c c'>4. }
  | s4 \tuplet 3/2 { \once\override NoteColumn.force-hshift = #0.4 <a! a'!>4. }
  | s2*17
  %168
  | g,4( c'
  | ees! g
  %170
  | c ees)
  | s2
  | s4 aes,
  | g,,( d''
  | g bes
  %175
  | ees g)
  | s2
  | s4 c,
  | g,,( g''
  | c ees
  %180
  | aes c)
  | s2
  | s4 f,
  | ees c
  | a! fis
  %185
  | <g, c ees>8_.\arpeggio r <g c ees>_.\arpeggio r
  | <g c ees>_.\arpeggio r a'16[ fis ees c]
  | <g g'>4(^\markup { \dynamic f \hspace #-0.4 \dynamic pp } g'
  | g <f g>
  | <ees g> <ces ees a!>)
  %190
  | << { <bes~ d~ bes'~>2 } \\ { <bes, f' bes>2 } >>
  | << { <bes' d bes'>2 } \\ >>
  | <bes bes'>4(^\markup {
      \dynamic pp \italic\small "sempre ma ben marc."
    } bes'
  | <ges bes> <ees ges ces>
  | <ees aes ces!> <aes ces fes>)
  %195
  | << { <ges~ ces~ ees~>2 } \\ { <ces,, ces'~>2 } >>
  | << { <ges'' ces ees>2 } \\ { \once\override Stem.length = #3.5 ces,2 } >>
  | <b b'>4( b'
  | b! <a! b>
  | <g b!> <fis bis>)
  %200
  | << { <des~ f~ des'~>2 } \\ { <des, aes'! des>2 } >>
  | << { <des' f des'>2 } \\ >>
  | des'4 s
  | s2*2
  %205
  | f,4\rest^\markup {
      \dynamic f \italic\small "sempre più"
    }
    \clef treble \tieDown <bes d! f bes>~
  | <bes d f> <ees, ges bes ees>_>
  | <bes' d f bes>2^>
  | s2
  | <des,, f aes des>2^>
  %210
  | s2
  | <des'' f aes des>2^>
  | s2*3
  %215
  | \slurDown s4 ces'16[( ges ees ces])
  | ges[( ees ces ges]) ees[( ces ges ees])
  | <bes''' ees g!>4_> s
  | s2*19
  %237
  | \slurUp ees,,16[( bes' ees ges] \once\omit Stem aes4)
  | \slurUp ees,16[( bes' ees ges] \once\omit Stem aes4)
  | ees,4 s4
  %240
  | ees4 s4
  | s2*7
  %248
  | \tuplet 3/2 { b''8\rest d,^. ees^. } \tuplet 3/2 { c'8\rest ees,^. d^. }
  | \tuplet 3/2 { d'8\rest <d, f>^. <ees ges>^. } \tuplet 3/2 { e'8\rest <ees, ges>^. <d f>^. }
  | s2*10
  %260
  | \stemDown <ees~ ges~ bes~ ees^~>2^>_\Ped
  | \stemUp <ees ges bes ees>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \omit TupletBracket
  %1
  | <ees, bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <aes, aes'>4 <ees' ees'>8[ <aes, aes'>]
  | <ees' ees'>4 <bes bes'>8[ <ees, ees'>]
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4
  %5
  | <ees' bes' d> <ees aes c>
  | <ees, bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <c c'>4 <f f'>8[ <c c'>]
  | <g' bes d g>4 <c, c'>8[ <g g'>]
  | <d d'>8[ <d' d'>] <g, g'>4
  %10
  | <g' fis'>4 <g f'!>
  | <ees bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <aes, aes'>4 <ees' ees'>8[ <aes, aes'>]
  | <ees' ees'>4 <bes bes'>8[ <ees, ees'>]
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4
  %15
  | <des ees des'> <ces ees ces'>
  | <bes ees ges bes>4 <ges' ges'>8[ <ees ees'>]
  | <ces' ees ges ces>4 <ees, ees'>8[ <ces ces'>]
  | <aes' ces ees aes>4 <ces, ces'>8[ <aes aes'>]
  | <ees' a! c! ees>4( <bes, bes'>_.)
  %20
  | <bes bes'>_. <bes bes'>_.
  | <bes'' bes'>(^\markup { \hspace #0.1 \dynamic fp } \stemDown <a! bes>
  | <g bes> <f bes>
  | <ees bes'> <c bes'>)
  | \tweak X-offset #0.2 bes,\rest_\Ped
    <bes bes'>_.
  %25
  | \once\override NoteColumn.force-hshift = #1 <bes bes'>_.
    <bes bes'>_.
  | s2*3
  | g'4\rest g_.
  %30
  | g_. g_.
  | s2
  | s2
  | s2
  | bes4\rest_\Ped <bes, bes'>_.
  %35
  | q_. q_.
  | s2
  | s2
  | s2
  | a'4\rest_\Ped ees
  %40
  | ges'_\Ped ces'_\Ped
  | \stemUp <bes ees g! bes> \clef bass <bes, bes'>8[ <ees, ees'>]
  | \stemNeutral <ees' aes c ees>4 <ees, ees'>8[ <aes, aes'>]
  | <ees' bes' ees>4 <bes bes'>8[ <ees, ees'>]
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4
  %45
  | <ees' bes' d> <ees aes c>
  | <ees, bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <c c'>4 <f f'>8[ <c c'>]
  | <g' bes d g>4 <c, c'>8[ <g g'>]
  | <d d'>8[ <d' d'>] <g, g'>4
  %50
  | <g' fis'>4 <g f'!>
  | <ees bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <aes, aes'>4 <ees' ees'>8[ <aes, aes'>]
  | <ees' bes' ees>4 <bes bes'>8[ <ees ees'>]
  | <bes bes'>8[ <bes' bes'>] <ees, ees'>4
  %55
  | <d ees d'> <c ees c'>
  | <g c ees g> <ees' ees'>8[ <c c'>]
  | <aes' ees' aes>4 <c, c'>8[ <aes aes'>]
  | <f' aes c f>4 <aes, aes'>8[ <f f'>]
  | <c'' ees fis a! c>4( <g, g'>)
  %60
  | q_. q_.
  | <aes! c aes'!>2~_\Ped
  | q2
  | <ees''~ aes^~ c^~>_\Ped
  | q
  %65
  | \stemDown c,4 c
  | c c
  | c c
  | c c
  | \omit TupletNumber \tuplet 3/2 { c4~ 8~ } 4
  %70
  | \tuplet 6/4 { c c c }
  | c4 g
  | c g
  | c_>( <g' c>_>
  | c,_> <g' c>_>
  %75
  | c,) <g' c>
  | c, <g' c>
  | \stemNeutral\slurNeutral\phrasingSlurNeutral
    \tuplet 3/2 {
      <c, f a!>8( c')
      \once\shape #'((-0.8 . 1.6) (0 . 1.2) (0 . 1) (0 . 0)) PhrasingSlur
      <c~ e!~ g^~>\(
    }
    <c e g c>4\)
  | \tuplet 3/2 {
      <d, f a!>8( d')
      \once\shape #'((-0.8 . 2.8) (0 . 2.2) (0 . 1.6) (0 . 0.2)) PhrasingSlur
      <a~ c~ e!~>\(
    }
    <a c e a!>4\)
  | \tuplet 6/4 { g,8[( g' <c e!> <g g'> <d' f> <g, g'>] }
  %80
  | \tuplet 3/2 { <c e!>8 <g g'> <a! c>) } <g b! d g>4
  | s4 \tuplet 3/2 { <c c'>4. }
  | s4 \tuplet 3/2 { <a a'>4. }
  | \tuplet 6/4 { g,8[ g' <c e!> <g g'> <a c> <g g'>] }
  | <g, b! d g>4( <c c'>8)[ <bes bes'>_.]
  %85
  | <aes!^~ c^~ aes'!^~>2-\Ped
  | <aes c aes'>-\Ped
  | <ees''!~ aes^~ c^~>-\Ped
  | q
  | <aes,, c aes'>-\Ped
  %90
  | \stemDown <aes' c>2
  | <ees'~ aes~ c^~ ees^~>2-\Ped
  | <ees aes c ees>2
    \bar "||"
    \key aes \major
  | <aes,, aes'>8^.\arpeggio[ c'^. <aes aes'>^.\arpeggio c'^.]
  | <aes aes'>^.\arpeggio[ c^. <aes, aes'>^.\arpeggio c^.]
  %95
  | <aes, aes'>^.\arpeggio[ c'^. <aes aes'>^.\arpeggio c'^.]
  | <aes ees'>^.\arpeggio[ g'^. <aes, des>^.\arpeggio ees'^.]
  | <aes, f'>^.\arpeggio[ aes'^. <aes, des>^.\arpeggio f'^.]
  | <aes,, des>^.\arpeggio[ ees'^. <aes, ees' g>^.\arpeggio aes'^.]
  | <aes, ees' bes'>^.\arpeggio[ des'^. <aes, ees' aes>^.\arpeggio c'^.]
  %100
  | <aes, ees' g>^.\arpeggio[ bes'^. <aes, ees' aes>^.\arpeggio g'^.]
  | <aes, aes'>^.\arpeggio[ c^. <aes, aes'>^.\arpeggio c'^. ]
  | <aes aes'>^.\arpeggio[ c^. <aes, aes'>^.\arpeggio c'^. ]
  | <g, g'>^.\arpeggio[ c'^. <g g'>^.\arpeggio c'^.]
  | \once\override Arpeggio.positions = #'(0 . 3)
    <f, g>^.\arpeggio[ b!^.
    \once\override Arpeggio.positions = #'(-0.5 . 3.5)
    <ees, c'>^.\arpeggio ees'^.]
  %105
  | \once\override Arpeggio.positions = #'(0 . 3.5)
    <f, d'!>^.\arpeggio[ f'^.
    \once\override Arpeggio.positions = #'(0.5 . 3)
    <g, b!>^.\arpeggio d'^.]
  | \once\override Arpeggio.positions = #'(-3 . 2)
    <f,, g'>^.\arpeggio[ b'!^.]
    \stemUp
    \once\override Arpeggio.positions = #'(-3.5 . 0)
    <ees,, c'>_.\arpeggio[ ees'_.]
  | <ees, des'!>_.\arpeggio[ ees'_.]
    \once\override Arpeggio.positions = #'(-2.5 . 0)
    <aes, c>_.\arpeggio[ ees'_.]
  | \once\override Arpeggio.positions = #'(-6 . -2)
    <aes,, ees'>_.\arpeggio[ aes'_.] r4
  | \stemNeutral
    ees'8_.[ ees,_. ees,_. ees'_.]
  %110
  | <ees' des'>2
  | des8_.[ des,_. des,_. des'_.]
  | <e'! des' e!>2
  | c8_.[ c,_.\cresc c,_.\startTextSpan c''_.]
  | \once\override Arpeggio.positions = #'(-1.5 . 1.5)
    <c e!>8_.\arpeggio[ c_. c,_. e'_.]
  %115
  | \once\override Arpeggio.positions = #'(-1.5 . 1.5)
    <bes f'>8_.\arpeggio[ bes_. bes,_. f''_.]
  | \once\override Arpeggio.positions = #'(-0.5 . 3)
    <ees! bes'>8_.\arpeggio[ ees,_. ees,_. ees''_.]\stopTextSpan
  | \stemDown
    <aes,, aes'>^.\arpeggio[ c'^. <aes aes'>^.\arpeggio c'^.]
  | <aes aes'>^.\arpeggio[ c^. <aes, aes'>^.\arpeggio c^.]
  | <aes, aes'>^.\arpeggio[ c'^. <aes aes'>^.\arpeggio c'^.]
  %120
  | <aes ees'>^.\arpeggio[ g'^. <aes, des>^.\arpeggio ees'^.]
  | <aes, f'>^.\arpeggio[ aes'^. <aes, des>^.\arpeggio f'^.]
  | <aes,, des>^.\arpeggio[ ees'^. <aes, ees' g>^.\arpeggio aes'^.]
  | <aes, ees' bes'>^.\arpeggio[ des'^. <aes, ees' aes>^.\arpeggio c'^.]
  | <aes, ees' g>^.\arpeggio[ bes'^. <aes, ees' aes>^.\arpeggio g'^.]
  %125
  | <aes, aes'>^.\arpeggio[ c^. <aes, aes'>^.\arpeggio c'^. ]
  | <aes aes'>^.\arpeggio[ c^. <aes, aes'>^.\arpeggio c'^. ]
  | <aes aes'>^.\arpeggio[ ees'^. <aes,, aes'>^.\arpeggio c'^. ]
  | <aes' aes'>^.\arpeggio[ ees'^. <aes,, aes'>^.\arpeggio c^. ]
  | \stemUp <des,, des'>_.\arpeggio[ aes''_. <des, des'>_.\arpeggio aes''_.]
  %130
  | \stemDown <aes c aes'>2
  | \stemUp <c,,, c'>8_.\arpeggio[ aes''_. <c, c'>_.\arpeggio aes''_.]
  | \stemDown <c, aes' c>2
    \key ees \major
  | c,4 <d' g d'>
  | c,4 <d' g d'>
  %135
  | c,4 \stemUp <g' c g'>
  | \stemDown c,4 \stemUp <g' c g'>
  | \stemDown \tuplet 3/2 { c,4 c'8^~ } c4
  | \tuplet 6/4 { c,4 c' c }
  | c,4 <g' c d>
  %140
  | c,4 <g' c d>
  | \stemUp <c, g' e'!> s
  | <c g' c> s
  | \stemDown <c g'> s
  | <c g'> s
  %145
  | \stemNeutral <c f a! c>4 \tuplet 3/2 { <e'! g c>8( c <e g c>) }
  | <d, f a! d>4 \tuplet 3/2 { <c' e! a!>8( a <c e a>) }
  | \tuplet 3/2 { <g, g'>4 <c' e!>8_( } \tuplet 3/2 { <g g'> <d' f> <g, g'> }
  | \tuplet 3/2 { <c e!> <g g'> <a! c>) } <g b! d g>4
  | \tuplet 3/2 { c,8( c' <f_~ a!^~> } \tuplet 3/2 { q4 <e! g>8) }
  %150
  | \tuplet 3/2 { a,,!( a'! <d_~ f^~> } \tuplet 3/2 { q4 <c e!>8) }
  | \tuplet 3/2 { g, g' <d' f> } \tuplet 3/2 { <g, g'> <c e!> <g_~ g'^~> }
  | <g a! c g'>4 <g b! d g>8\arpeggio r
  | c,8_. r g_.[ c_.]
  | f,_. r c'[ f,_.]
  %155
  | c'_. r g[ c_.]
  | g_. g'_. c,_. \top <c' a'! c>^.
  | \bottom <c g' b!>_. \top <c' g' b! c>^. \bottom \clef treble <c f a!>_. \top <c' f a c>^.
  | \bottom <c, e! g>_. r g_. c_.
  | a!_. r d_.[ a_.]
  %160
  | e'!_. r a,!_. e'_.
  | b!_. r e!_.[ \top e'!^.]
  | \bottom
    \clef bass
    <dis,, e! dis'>_. \top <e'! dis' e!>^. \bottom <d,,! e! d'>_. \top \clef bass <e'! d'! e!>
  | \bottom
    <c,, c'>_. r g'_.[ c_.]
  | f,_. r c'_.[ f,_.]
  %165
  | c'_. r g_.[ c_.]
  | g_.[ g'_.] c,_.[ \top <c' c'>^.]
  | \bottom <bes! c bes'!>_.[ \top <c' bes'! c>^. ] \bottom <aes! c aes'!>_. \top <c' aes'! c>^.
  | \bottom \stemDown g,,,2
  | g'2*1/2 \hideNotes g'4~ \unHideNotes
  %170
  | g2
  | \stemUp g,,
  | \stemDown g'
  | g,
  | g'
  %175
  | g'
  | \stemUp g,,
  | \stemDown g'
  | g,2
  | \stemNeutral\slurDown \acciaccatura g'8 \stemDown g2
    \clef treble
  %180
  | g'
    \clef bass
  | \stemUp g,,
  | \stemDown g'
  | g'~
  | g4 s
  %185
  | s2
  | s4 <g, c ees>8 g\rest
  | g4 <f g>
  | <ees g> <d g>
  | <c g'> <ces ees ces'>
  %190
  | \once\override Voice.Rest.X-offset = #0.5 b,4\rest <bes bes'>_.
  | q_. q_.
  | bes'' ges
  | ees ces
  | aes <fes fes'>
  %195
  | \once\override Voice.Rest.X-offset = #0.5 ces\rest_\Ped <ces ces'>_.
  | \once\override NoteColumn.force-hshift = #0 q_. q_.
  | b''! <a! b>
  | <g b!> <fis b>
  | <e! b'!> <d fis d'>
  %200
  | \once\override Voice.Rest.X-offset = #0.5 d,\rest_\Ped <des des'>_.
  | q_. q_.
  | \stemNeutral <des'' des'> <bes bes'>
  | <ges bes ges'> <ees bes' ees>
  | <ces ees ces'> <aes ees' aes>
  %205
  | \stemDown\slurUp <bes d! f bes>2_\Ped
  | s2
  | d'4\rest_\Ped \clef bass
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/4)
    bes,16[( f' bes d
    \set subdivideBeams = ##f
  | bes' d f8]) \stemUp <ces,, ees ges ces>4_>
  | f,\rest \clef treble <des''' f aes des>~
  %210
  | <des f aes> <ges, bes des ges>_>
  | e\rest_\Ped \clef bass
    \stemDown \set subdivideBeams = ##t
    des,16[( aes' des f
  | des' f aes8]) des,,,16[( aes' des fes
  | des' fes aes8]) \stemUp ges,,,16[_(_\Ped bes des ges])
    \stemDown \set subdivideBeams = ##f
  | bes[(_\Ped des ges bes]) \clef treble \stemUp des[_(_\Ped ges bes des])
  %215
  | \stemDown <ges, bes des ges>8 r ces4_\Ped \clef bass
  | ges,4_\Ped ees,_\Ped \clef treble
  | s4 \clef bass \stemNeutral <bes' bes'>8^.[ <ees, ees'>^.]
  | <ees' aes c! ees>4 <ees, ees'>8[ <aes, aes'>]
  | <ees' bes' ees>4 <bes bes'>8[ <ees, ees'>]
  %220
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4_>
  | <ees' bes' d> <ees aes c>
  | <ees, bes' ees>4 <bes bes'>8[ <ees, ees'>]
  | <c'' ees g c>4 <f, f'>8[ <c c'>]
  | <g' bes d g>4 <c, c'>8[ <g g'>]
  %225
  | <d d'>8[ <d' d'>] <g, g'>4
  | <g' fis'>4 <g f'!>
  | <ees' g bes ees>4 <bes bes'>8[ <ees, ees'>]
  | <aes ees' aes>4 <ees ees'>8[ <aes, aes'>]
  | <ees' bes' ees>4 <bes bes'>8[ <ees, ees'>]
  %230
  | <bes' bes'>8[ <bes' bes'>] <ees, ees'>4
  | <des ees des'>4 <bes ees bes'>
  | <aes ees' aes>_> <ces ces'>8_.[ <aes aes'>]_.
  | <fes' aes ces fes>4_> <aes aes'>8_.[ <fes fes'>_.]
  | <des' fes aes des>4^> <fes, fes'>8_.[ <des des'>_.]
  %235
  | <aes' d! f! aes>4^> <ges ees' ges>8_.[ <f f'>_.]
  | <bes bes'>4^. <bes, bes'>_.
  | s4 <bes' d aes'>
  | s4 <bes d aes'>
  | \stemDown\slurDown ees,16[( ces' ees ges] <ces, ees a!>4)
  %240
  | ees,16[( c'! ees a!] <ees ges c>4)
  | \stemNeutral <bes, ees ges bes>4_> <bes' f' aes bes>^>
  | ces,16[( ges' ces ees]) <ces fes bes>4
  | ces,16[( ges' ces ees]) <ces fes bes>4
  | ces,16[( ges' ces ees^~] <c! ees a!>4)
  %245
  | f,,16[ f' a! c~] <f, c' ees>4
  | <bes, ees ges bes>4_> <bes' ees aes ces>^>
  | <bes f' c'!>^> <bes, bes'>_>
  | \stemDown <ees ges bes ees>8_.\arpeggio^\markup {
      \dynamic fp \italic\small "cresc."
    }
    g\rest <ees aes ces f>_.\arpeggio g\rest
  | <ees bes' ges'>_.\arpeggio g\rest <ees ces' aes'>_.\arpeggio g\rest
  %250
  | \once\override Arpeggio.positions = #'(-0.5 . 4)
    <ees' ges bes>8_.\arpeggio r
    \once\override Arpeggio.positions = #'(-0.5 . 4)
    <ees aes ces>_.\arpeggio r
  | \once\override Arpeggio.positions = #'(-0.5 . 4)
    <ees bes'>_.\arpeggio r
    \once\override Arpeggio.positions = #'(-0.5 . 4)
    <ees ces'>_.\arpeggio r
    \clef treble
  | <ees' ges bes ees>8^.\arpeggio g\rest <ees aes ces f>^.\arpeggio g\rest
  | <ees bes' ges'>^.\arpeggio r <ees ces' aes'>^.\arpeggio r
  | \stemNeutral <ees ges bes ees>_.[^\f <ees, ees'>_.] <ees' aes ces ees>_.[^\sf
    \clef bass <aes,, aes'>_.]
  %255
  | \stemDown <ees' ges bes ees>^.[ <ees, ees'>^.] <ees' aes ces ees>^.[^\sf <aes,, aes'>^.]
  | \stemUp <bes' ees ges bes>_.[ <ees,, ees'>_.]
    <ces'' ees ges ces>_.[ <ees,, ees'>_.]
  | \stemDown <c''! ees ges a! c!>4^\sf \stemDown <bes f' bes d>8^.\arpeggio[ <bes, bes'>^.]
  | \stemNeutral <ees, ees'>_. r <ces' ees ges ces>4_>^\ff
  | <ges' bes des ges>4-> <aes ces ees aes>^>
  %260
  | s2
  | \stemDown <ees, ees'>8_. r <bes'' ees ges bes>_. r
  | \clef treble
    <ges'' bes ees ges>2\fermata
  \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-2 \dynamic f } s2.
  | s2*23
  %26
  | s32 s32
    \once\override Hairpin.self-alignment-Y = #8
    s8.\< s4
  | s2
  | s8 s8\! s8 s8
  | s2
  %30
  | s2
  | s8
    \once\override Hairpin.self-alignment-Y = #6
    s8\< s4
  | s2
  | s8 s8\! s8 s8

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
    opus = "Op. 119 No. 4"
    title = \markup { "Rapsodie Es-Dur" }
    %subtitle = \markup { "Op. 119, No 4" }
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
