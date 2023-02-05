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
  | \tuplet 3/2 { <ees c'>8^>\(( g <ees c'>) } <d g d'>4^>\)
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
      \once\override Staff.TextScript.extra-offset = #'(-0.2 . -2.5)
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
  | s2
  | s2
  | s2
  %130
  | s2
  | s2
  | s2
  | s2

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
  | s2

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
