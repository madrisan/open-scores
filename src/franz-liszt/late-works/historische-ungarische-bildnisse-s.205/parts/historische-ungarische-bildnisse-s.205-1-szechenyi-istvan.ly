Global = {
  \key d \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205
  \tempo Feroce 2 = 116
  %1
  | d1_\(
  | c2. d4
  | ees_.\) r bes_. r
  | ees_. r bes_. r
  %5
  | d1_\(
  | c2. d4
  | ees_.\) r bes_. r
  | ees_. r bes_. r
  \repeat unfold 2 {
  | f'1_\(
  | ees4_.\) r bes_. r
  | c1_\(
  | bes4_.\) r g_. r
  }
    \clef "bass"
  | r g-. g-. a-.
  | bes-. g-. g-. a-.
  | bes-. r g-. r
  %20
  | a-. r bes-. r
  | r gis-. a-. bes-.
  | cis-. gis-. a-. bes-.
  | cis-. r a-. r
  | bes-. r cis-. r
    \clef "treble"
  %25
  | r2 e~_^\(
  | e a,\)
  | r <a' e'>~\(
  | q a\)
  | r f~_^\(
  %30
  | f a,\)
  | r <a' f'>~\(
  | q a\)
  | r gis~_^\(
  | gis cis,\)
  %35
  | r <cis' gis'>~\(
  | q cis\)
  | r a~_^\(
  | a cis,\)
  | r <cis' a'>~\(
  %40
  | q cis\)
    \clef "bass"
  \repeat unfold 2 {
  | <f,, a d>^^ q^^
  | <e gis cis>^^ bes'4^> cis^>
  }
  %45
  \repeat unfold 2 {
  | <f, a d>2^^ <e gis bes>4^> <e gis cis>^>
  }
  | <f a d>2^^ a4 bes
  \repeat unfold 2 {
  | cis d gis, a8 bes
  }
  %50
  | cis4 d a bes
  \repeat unfold 2 {
  | <ges bes ees>2^^ q^^
  | <f a d>^^ b4^> d^>
  }
  %55
  \repeat unfold 2 {
  | <ges, bes ees>2^^ <f a b>4^> <f a d>^>
  }
  | <ges bes ees>2^^ bes4^> b^>
  \repeat unfold 2 {
  | d ees a, bes8 b
  }
  %60
  | d4 ees bes b
  \repeat unfold 2 {
  | <g b e>2^^ q^^
  | <fis a dis>^^ c'4^> dis^>
  }
  %65
  \repeat unfold 2 {
  | <aes c f>2^^ q^^
  | <g bes e>^^ des'4^> e^>
  }
  | <a, cis fis>2^^ q^^
  %70
  | <gis b eis>^^ d'4^> eis^>
  | <a, cis fis>2^^ q^^
  | <gis b eis>^^ d'4^> f^>
    \clef "treble"
  | b, cis d e
  | f gis f gis
  %75
  | <b, b'> <cis cis'> <d d'> <e e'>
  | <f f'> <gis gis'> <f f'> <gis gis'> 
  \repeat unfold 2 {
  | <b b'> <gis gis'> <b b'> <cis cis'>
  | <b b'> <a a'> <b b'> <cis cis'>
  }
    \bar "||"
    \key d \major
  %81
  | r2 <e a e'>~^^\(
  | q <a, e' a>\)
  | r <fis' a fis'>~^^\(
  | q <a, fis' a>\)
  %85
  | r <fis' ais fis'>~^^\(
  | q <ais, fis' ais>\)
  | <fis' b fis'>^^( <b, fis' b>)
  | <fis' cis' fis>^^(^\markup { "rit." } <cis fis cis'>)
    \bar "||"
  | \tempo "Più largo"
  \repeat unfold 2 {
    <d fis d'>2 q
  | <cis fis cis'> <a a'>4 <b b'>8 <cis cis'>
  }
  \repeat unfold 2 {
  | <d fis d'>2 <a a'>4 <b b'>8 <cis cis'>
  }
  | <d fis d'>2 <a a'>4 <b b'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <b b'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
    \bar "||"
    \key bes \major
  | \textMark \markup \italic \smaller { "Sempre più largo" }
    <ees g ees'>2 q
  %100
  | <d g d'> <bes d g bes>4 <c c'>8 <d d'>
  | <ees g ees'>2 q
  | <d g d'> <bes d g bes>4 <c c'>8 <d d'>
  \repeat unfold 2 {
  | <ees g ees'>2 <bes d g bes>4 <c c'>8 <d d'>
  }
  %105
  | <ees g ees'>2 <bes bes'>4 <c c'>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <c c'>
  }
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
    \bar "||"
    \key e \major
  | <gis' e'>8( e) <gis, e'>8[( e)] <gis e'>8[( gis')] <e' gis>( \ottava #1 e')
  %110
  | <gis, dis'>([ dis)] \ottava #0 <gis, dis'>( dis) <b b'>4 <cis cis'>8 <dis dis'>
  | <gis e'>8( e) <gis, e'>8[( e)] <gis e'>8[( gis')] <e' gis>( gis,)
  | <gis eis'>8( eis) <gis, eis'>8[( eis)] <cis cis'>4 <dis' dis'>8 <eis eis'>
  | <ais fis'>8( fis) <ais, fis'>8[( fis)] <ais fis'>8[( ais')] <fis' ais>( \ottava #1 fis')
  | <ais, eis'>8([ eis)] \ottava #0 <ais, eis'>8( eis) <cis cis'>4 <dis dis'>8 <eis eis'>
  %115
  | <ais fis'>([ fis)] <ais, fis'>( fis) <ais fis'>( ais') 
    <fis' ais>([ \ottava #1 fis')] \ottava #0
  | <cis, gis'>([ gis)] <cis, gis'>( gis) <cis' gis'>([ gis)] <cis, gis'>( gis)
    \bar "||"
    \key d \major
  | \tempo "Tempo I."
  | \ottava #1 
    a'''^^[( a,)] gis'[( gis,)] g'[( g,)] fis'[( fis,)]
  | e'[( e,)] d'[( d,)] cis'[( cis,)] b'[( b,)]
    \ottava #0
  | a'^^[( a,)] gis'[( gis,)] g'[( g,)] fis'[( fis,)]
  %120
  | e'[( e,)] d'[( d,)] cis'[( cis,)] b'[( b,)]
  | a'^^[( a,)] gis'[( gis,)] g'[( g,)] fis'[( fis,)]
  | e'[( e')] d,[( d')] cis,[( cis')] b,[( b')]
  | a,^^[( a')] gis,[( gis')] g,[( g')] fis,[( fis')]
  | e,[( e')] cis,[( cis')] a,[( a')] e,[( e')]
  %125
  | <d f bes>4 q8 q q4 q
  | <f bes d>2( <d f bes>4_.) \tupletDown\tuplet 5/4 { <f bes d>16^\( f' bes d f }
  | \ottava #1
    <d f bes>4\) q8 q q4 q
  | <f bes d>2( <d f bes>4^.) <f bes d>^.
    \ottava #0
  | <fis,,! a cis>4 q8 q q4 q
  %130
  | <a cis fis>2( <fis a cis>4_.) \tupletDown\tuplet 5/4 { <a cis fis>16^\( a' cis fis a }
  | \ottava #1
    <fis a cis>4\) q8 q q4 q
  | <a cis fis>2( <fis a cis>4^.) <a cis fis>^.
  | a'8^^[( a,)] gis'[( gis,)] g'[( g,)] fis'[( fis,)]
  | e'[( e,)] d'[( d,)] cis'[( cis,)] b'[( b,)]
    \ottava #0
  %135
  | a'^^[( a,)] gis'[( gis,)] g'[( g,)] fis'[( fis,)]
  | e'[( e,)] d'[( d,)] cis'[( cis,)] b'[( b,)]
  | a'^^[( a,)] gis'[( gis,)] g'[( g,)] fis'[( fis,)]
  | e'^^[( e')] d,[( d')] cis,[( cis')] b,[( b')]
  | a,^^[( a')] gis,[( gis')] g,[( g')] fis,[( fis')]
  %140
  | e,[( e')] cis,[( cis')] a,[( a')] e,[( e')]
  | <d f bes>4 q8 q q4 q
  | <f bes d>2( <d f bes>4_.) \tupletDown\tuplet 5/4 { <f bes d>16^\( f' bes d f }
  | \ottava #1
    <d f bes>4\) q8 q q4 q
  | <f bes d>2( <d f bes>4^.) <f bes d>^.
    \ottava #0
  %145
  | <fis,,! a cis>4 q8 q q4 q
  | <a cis fis>2( <fis a cis>4_.) \tupletDown\tuplet 5/4 { <a cis fis>16^\( a' cis fis a }
  | \ottava #1
    <fis a cis>4\) q8 q q4 q
  | <a cis fis>2( <fis a cis>4^.) <a cis fis>^.
    \ottava #0
  | <fis,, a d fis> <d fis a d>8 q q4 <fis a d fis>4
  %150
  | <fis a d fis> <a d fis a>2( <fis a d fis>4)
  | <fis' a d fis> <d fis a d>8 q q4 <fis a d fis>4
  | q4 <a d fis a>2( <fis a d fis>4)
  | <a, d fis a>^^ <gis gis'> <g g'> <fis fis'>8 <e e'>

  | <d d'>4 <cis cis'> <d fis a d> <fis fis'>8 <a a'>
  %155
  | <d fis a d>4^^ <cis cis'> <b b'> <a a'>8 <gis gis'>
  | <a a'>4 <g g'> <fis a d fis> <a a'>8 <d d'>
  | <fis a d fis>4^^ <e e'> <d d'> <cis cis'>8 <b b'>
  | <a a'>4 <gis gis'> <a d fis a> <d d'>8 <fis fis'>
  | <a d fis a>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  %160
  | <d fis a d>4 <cis cis'> <b d fis b> <a a'>8 <gis gis'>
  | <a d fis a>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d fis a d>4 <cis cis'> <b d fis b> <a a'>8 <gis gis'>
  | <a a'>4_. r <fis fis'>_._^ r
    \clef "bass"
  | <e e'>4^.^^ r <d d'>^.^^ r
  \repeat unfold 2 {
  | <cis cis'>1^^~
  | q4 r <fis fis'>^.^^ r
  }
  | <cis cis'>1^^~
  | q\fermata
    \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <d, d'>1_\(
  | <c c'>2. <d d'>4
  | <ees ees'>_.\) r <bes bes'>_. r
  | <ees ees'>_. r <bes bes'>_. r
  %5
  | <d d'>1_\(
  | <c c'>2. <d d'>4
  | <ees ees'>_.\) r <bes bes'>_. r
  | <ees ees'>_. r <bes bes'>_. r
  \repeat unfold 2 {
  | <f' f'>1_\(
  %10
  | <ees ees'>4_.\) r <bes bes'>_. r
  | <c c'>1_\(
  | <bes bes'>4_.\) r <g g'>_. r
  }
  | r4 <g g'>_. q <a a'>_.
  | <bes bes'>_. <g g'>_. q_. <a a'>_.
  | <bes bes'>_. r <g g'>_. r
  %20
  | <a a'>_. r <bes bes'>_. r
  | r <gis gis'>_. <a a'>_. <bes bes'>_.
  | <cis cis'>_. <gis gis'>_. <a a'>_. <bes bes'>_.
  | <cis cis'>_. r <a a'>_. r
  | <bes bes'>_. r <cis cis'> r
  %25
  | r2 <e e'>~_^\(
  | q <a, a'>\)
  | r2 e'''~\(
  | e a,\)
  | r2 <f, f'>~_^\(
  %30
  | q <a, a'>\)
  | r2 f'''~\(
  | f a,\)
  | r2 <gis, gis'>~_^\(
  | q <cis, cis'>\)
    \clef "treble"
  %35
  | r2 gis'''~\(
  | gis cis,\)
      \clef "bass"
  | r2 <a, a'>~^^\(
  | q <cis, cis'>\)
    \clef "treble"
  | r2 a'''~\(
  %40
  | a cis,\)
      \clef "bass"
  \repeat unfold 2 {
  | <d,, d'> q
  | <bes bes'> r
  }
  %45
  \repeat unfold 2 {
  | <f f'>2 <bes bes'>4 q
  }
  | <f f'>2 <a a'>4 <bes bes'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <bes bes'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
  \repeat unfold 2 {
  | <ees, ees'>2 <ees' ees'>
  | <b b'> r
  }
  %55
  \repeat unfold 2 {
  | <ges ges'> <b b'>4 q
  }
  | <ges ges'>2 <bes bes'>4_> <b b'>_>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <b b'>
  }
  %60
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
  \repeat unfold 2 {
  | <e e'> <b b'> <e e'> <b b'>
  | <c c'> <b b'> <c c'> <dis dis'>
  }
  %65
  | <f f'> <c c'> <f f'> <c c'>
  | <des des'> <c c'> <des des'> <e e'>
  | <f f'> <c c'> <f f'> <c c'>
  | <des des'> <c c'> <des des'> <e e'>
  | <fis fis'> <cis cis'> <a a'> <b b'>8 <cis cis'>
  %70
  | <d d'>4 <b b'>8 <cis cis'> <d d'>4 <eis eis'>
  | <fis fis'> <cis cis'> <a a'> <b b'>8 <cis cis'>
  | <d d'>4 <b b'>8 <cis cis'> <d d'>4 <f f'>
  \repeat unfold 2 {
  | <b, b'> <cis cis'> <d d'> <e e'>
  | <f f'> <gis gis'> <f f'> <gis gis'>
  }
  \repeat unfold 2 {
  | <b b'> <gis gis'> <b b'> <cis cis'>
  | <b b'> <a a'> <b b'> <cis cis'>
  }
    \bar "||"
    \key d \major
  | r2 <e a e'>~^^\(
  | q <a, e' a>\)
  | r <fis' a fis'>~^^\(
  | q <a, fis' a>\)
  %85
  | r <fis' ais fis'>~^^\(
  | q <ais, fis' ais>\)
  | <fis' b fis'>^^( <b, fis' b>)
  | <fis' cis' fis>^^( <cis fis cis'>)
  %89
  \repeat unfold 2 {
  | <d, d'>4 <a'' d fis> <fis, fis'> <a' cis fis>
  | <fis, fis'> <a' cis fis>8 q q4 r
  }
  \repeat unfold 2 {
  | <d,, d'> <a'' d fis> <fis, fis'> <a' cis fis>
  }
  | <d,, d'> <a'' d fis> <a, a'> <b b'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <b b'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
    \bar "||"
    \key bes \major
  %99
  \repeat unfold 2 {
  | <ees,, ees'> <bes'' ees g> <ees g bes> <g bes ees>
  | <g,, g'> <g'' bes d g>8 q q4 r
  }
  | <ees,, ees'> <bes'' ees g> <g, g'> <d'' g bes>
  | <ees, ees'> <g' bes ees> <g, g'> <bes' d g>
  %105
  | <ees, ees'> \clef "treble" <g' bes> \clef "bass" <bes,, bes'> <c c'>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <c c'>
  }
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
    \bar "||"
    \key e \major    
  | e,,8^\( b' e b' e b' \clef "treble" e b'\)
  %110
  | <gis, dis' dis'>4\arpeggio_> <b dis gis>8_> q_> q4_> r
    \clef "bass"
  | e,,,8^\( b' e b' e b' \clef "treble" b'4\)
    \clef "bass"
  | <cis,, gis' eis'>4^> \clef "treble" <cis''' eis gis>8^> q8^> q4^> r
    \clef "bass"
  | fis,,,,,8^\( cis' fis cis' fis cis' \clef "treble" fis cis'\)
  | <ais, eis' eis'>4\arpeggio_> <cis eis ais>8_> q_> q4_> r
    \clef "bass"
  %115
  | fis,,,8^\( cis' fis cis' fis cis' \clef "treble" fis cis'\)
    \clef "bass"
  | <eis,,,, eis'>8_\( cis'' gis' cis\) <e,,, e'>_\( cis'' gis' cis \)
    \bar "||"
    \key d \major
  | \ottava #-1
    a,,,_^[( a')] b,[( b')] cis,[( cis')] d,[( d')]
    \ottava #0
  | e,[( e')] fis,[( fis')] g,[( g')] gis,[( gis')]
  | a,_^[( a')] b,[( b')] cis,[( cis')] d,[( d')]
  %120
  | e,[( e')] fis,[( fis')] g,[( g')] gis,[( gis')]
  | a,^^[( a')] b,[( b')] cis,[( cis')] d,[( d')]
  | e,[( e')] fis,[( fis')] g,[( g')] gis,[( gis')]
  | a,^^[( a,)] b'[( b,)] cis'[( cis,)] d'[( d,)]
  | e[( e,)] cis'[( cis,)] a'[( a,)] e'[( e,)]
  %125
  | <d'' f bes>4 q8 q q4 q
  | <f bes d>2( <d f bes>4^.) 
    \tupletUp\tuplet 5/4 { <f bes d>16^\( \clef "treble" f' bes d f }
  | <d f bes>4\) q8 q q4 q
  | <f bes d>2( <d f bes>4^.) <f bes d>^.
    \clef "bass"
  | <fis,,! a cis>4 q8 q q4 q
  %130
  | <a cis fis>2( <fis a cis>4_.) 
    \clef "treble"
    \tupletUp\tuplet 5/4 { <a cis fis>16^\( a' cis fis a }
  | <fis a cis>4\) q8 q q4 q
  | <a cis fis>2( <fis a cis>4^.) <a cis fis>^.
    \clef "bass"
  | \ottava #-1
    a,,,,,8_^[( a')] b,[( b')] cis,[( cis')] d,[( d')]
    \ottava #0
  | e,[( e')] fis,[( fis')] g,[( g')] gis,[( gis')]
  %135
  | a,_^[( a')] b,[( b')] cis,[( cis')] d,[( d')]
  | e,[( e')] fis,[( fis')] g,[( g')] gis,[( gis')]
  | a,^^[( a')] b,[( b')] cis,[( cis')] d,[( d')]
  | e,[( e')] fis,[( fis')] g,[( g')] gis,[( gis')]
  | a,^^[( a,)] b'[( b,)] cis'[( cis,)] d'[( d,)]
  %140
  | e[( e,)] cis'[( cis,)] a'[( a,)] e'[( e,)]
  | <d'' f bes>4 q8 q q4 q
  | <f bes d>2( <d f bes>4^.) 
    \tupletUp\tuplet 5/4 { <f bes d>16^\( \clef "treble" f' bes d f }
  | <d f bes>4\) q8 q q4 q
  | <f bes d>2( <d f bes>4^.) <f bes d>^.
    \clef "bass"
  %145
  | <fis,,! a cis>4 q8 q q4 q
  | <a cis fis>2( <fis a cis>4_.) 
    \clef "treble"
    \tupletUp\tuplet 5/4 { <a cis fis>16^\( a' cis fis a }
  | <fis a cis>4\) q8 q q4 q
  | <a cis fis>2( <fis a cis>4^.) <a cis fis>^.
    \clef "bass"
  | <a,,, d fis a> <fis a d fis>8 q q4 <a d fis a>
  %150
  | q <d fis a d>2( <a d fis a>4)
    \clef "treble"
  | <a' d fis a> <fis a d fis>8 q q4 <a d fis a>
  | q <d fis a d>2( <a d fis a>4)
    \clef "bass"
  | <a, d fis a>^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <d fis a d> <fis fis'>8 <a a'>
  %155
  | <d fis a d>4^^ <cis cis'> <b b'> <a a'>8 <gis gis'>
  | <a a'>4 <g g'> <fis a d fis> <a a'>8 <d d'>
  | <fis a d fis>4^^ <e e'> <d d'> <cis cis'>8 <b b'>
  | <a a'>4 <gis gis'> <a d fis a> <d d'>8 <fis fis'>
  | <a d fis a>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  %160
  | <d fis a d>4 <cis cis'> <b d fis b> <a a'>8 <gis gis'>
  | <a d fis a>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d fis a d>4 <cis cis'> <b d fis b> <a a'>8 <gis gis'>
  | <a a'>4_. r <fis fis'>_._^ r
  | <e e'>4_._^ r <d d'>_._^ r
  %165
  \repeat unfold 2 {
  | <cis cis'>1_^~
  | q4 r <fis fis'>_._^ r
  }
  | <cis cis'>1_^~
  | q\fermata
    \fine
}

centerDynamics = {
 | s4\ff s2.
 | s1*15
 %17
 | s4 s\p s2
 | s1*7
 %24
 | s2 s\mf
 | s1
 | \override Hairpin.Y-offset = #2
   s2 s\>
 | s4 s\! s2
 %29
 | s s\mf
 | s1
 | s2 s\>
 | s4 s\! 
   \once\override TextScript.extra-offset = #'(-1 . 2)
   s2-\markup { "sempre cresc. " } 
 | s1*2
 %35
 | s2
   \once\override Hairpin.Y-offset = #-6
   s\>
 | s4 s\! s2
 | s1*2
 %39
 | s2 
   \once\override Hairpin.Y-offset = #-6
   s\<
 | s4 s\! s2
 | s2\f s
 | s1*5
 | s2
   \once\override TextScript.extra-offset = #'(-1 . 0)
   s-\markup { \whiteout "martellato" }
 | s1*2
 | \once\override Hairpin.Y-offset = #-2
   s4\< s2.
 | s4\! s2.
 | s1*8
 %60
 | \once\override Hairpin.Y-offset = #-3
   s4\< s2.
 | s4\! s2.
 | s1*24
 | s2 s\<
 | s1
 | s2 s\!
 %89
 | s2\ff s
 | s1*8
 | s4\< s2.
 | s4\! s2.
 | s1*8
 %108
 | s4\< s2.
 | s4\! s2.
 | s1*7
 | s4-\markup { "sempre" \dynamic ff } s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\pageBreak
  % page 4  
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 5  
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 6
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\pageBreak
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
    >>
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "I. Széchenyi István" }
    subtitle = ##f
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
    \tempo 2 = 116
  }
}
