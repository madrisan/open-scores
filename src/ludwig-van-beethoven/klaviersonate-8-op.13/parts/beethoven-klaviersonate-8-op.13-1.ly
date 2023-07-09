Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"
cresc = \markup { "cresc." }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  %\override DynamicText.Y-offset = #-2.4
  \override Hairpin.minimum-length = #7
  \override MultiMeasureRest.staff-position = #0
  \override Parentheses.font-size = #1
  \override Rest.staff-position = #0
  \stemUp\slurUp\tieUp
  \tempo "Grave"
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    c4~_\markup { \dynamic fp }
    c16.[ c32 <b d>16. <c ees>32] <c ees>4( d8) r
  | \tieNeutral
    <f d b>4~_\markup { \dynamic fp }
    <f d b>16.[ <f d b>32 <g d b>16. <aes d, b>32] <aes d, b>4( <g ees c>8) r
  | <c a fis>4~\fp
    <c a fis>16.[ q32 <d a fis>16. <ees a, fis>32]
    <ees a, fis>4(\sf <d g, d>16[)_! r32 <c a fis>32 <d a fis>16. <ees a, fis>32]
  | <ees a, fis>4(\sf\> <d g, d>8[\!\p <e c g>8]
    \autoBeamOff <f c aes>)-! \stemNeutral aes~\sf \autoBeamOn
    aes32[( g64 aes bes aes g f] ees[ d c bes]
    \tuplet 9/8 { aes128[ g f ees! d f aes f d]) }
  %5
  | \autoBeamOff ees8_!\p \stemDown <ees' ees,>8~ \autoBeamOn q16.[ q32 <f f,>16. <g g,>32]
    q8[( <f f,>16)] \stemUp r32 f,\ff f16.[ f32 f16. f32]
  | \stemNeutral\autoBeamOff f8 <f f'>~ \autoBeamOn q16.[ q32 <g g'>16. <aes aes'>32] q8[( <g g'>16)]
    r32
    \once\override Staff.TextScript.extra-offset = #'(-1.8 . 0)
    <cis, e g>32_\markup { \dynamic ff }
    <cis e a>16.[ q32 <cis e bes'>16. q32]
  | \autoBeamOff <d fis a>8 <a' a'>8~ \autoBeamOn q16.[ q32 <b b'>16. <c c'>32]
    q8[( <b b'>16)] r r8 q16.[ <c c'>32]
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <cis cis'>8[(_cresc
    <d d'>)] r q16.[ <ees ees'>32] <e e'>8( <f f'>4) q8
  | <f f'>8~\sfp
    q32[ ees'!64 d f ees d c!] \stemUp b16[-.( b-. b-. b)-.] c8 r r4
  %10
  | \stemNeutral
    c8~\p 32[ b64( c] \tuplet 6/4 { d[ c bes as g bes)] } aes16[-.( aes-. aes-. aes)-.]
    \break
    g16[( ees')] ~ \tuplet 6/4 { ees64[ d des c b bes] } \tuplet 7/8 { a128[ aes g fis f e ees] }
    d[( cis c b bes a aes g fis f e ees d des c b)]
    aes'16.\sf[^\fermata b,32]
    \bar "||"
    \pageBreak
    \time 2/2
  \repeat volta 2 {
  | \bar ".|:"
    \tempo "Allegro di molto e con brio"
    c2.\p <bes e>4_!
  | <aes f'>_! <e' g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2 <bes' e>4-!
  | <aes f'>-! <e' g>-! <f aes>-! <d b'>-!
  %15
  | <c ees g c>2 \stemUp g'
  | ees d
  | <ees, c'>1~
  | <ees a c>2 <d f b>
  | \once\override Staff.TextScript.extra-offset = #'(-0.8 . 0)
    <c ees c'>4_\markup { "(" \dynamic p ")" } c2 <bes e>4_!
  %20
  | <aes f'>_! <e' g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2 <bes' e>4-!
  | <aes f'>-! <e' g>-! <f aes>-! <d b'>-!
  | <c ees g c>2 \stemUp g'
  | ees d
  %25
  | <ees, c'>1~
  | <ees a c>1
  | \stemNeutral <d g b>4\p r <g g'>2~\sf
  | q4 r q2~\sf
  | q8 f' d b g f d b
  %30
  | \stemUp
    \override Beam.positions = #'(1.5 . 1.5)
    c ees c \bottom g \revert Beam.positions fis c' aes fis
  | g4 \top\stemNeutral r <g' g'>2~
  | q4 r q2~
  | q8 f' d b g f d b
  | \stemUp
    \override Beam.positions = #'(1.5 . 1.5)
    c ees c \bottom g \revert Beam.positions fis c' aes fis
  %35
  | g4 \top\stemNeutral\slurNeutral
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    fis'_!_cresc
    g_! <fis c'>_!
  | <g b>_! <c fis>-! <b g'>-! <fis' c'>-!
  | <g b>-! r r2
  | <bes,, des ees>1_(\sf
  | <c ees>4) des'-! c-! <des g>-!
  %40
  | <c aes'>-! <g' des'>-! <aes c>-! <g des'>-!
  | <aes c>-! r r2
  | <c,, ees ges>1\sf(
  | <d f>4) <a' ees'>-! <bes d>-! <ees a>-!
  | <d bes'>-! <a' ees'>-! <bes d>-! <a ees'>-!
  %45
  | <bes d>-! r <ees, a>2\sf(
  | <d bes'>4) r <a ees'>2\sf(
  | <bes d>4) r <ees, a>2\sf(
  | <d bes'>4) r <a ees'>2^\sf(
  | <bes d>4) a\p( bes a
  %50
  | bes a bes a)
    \pageBreak
  | r4 \clef bass bes,_! ees-! f-!
  | ges-! \clef treble bes'-! ees-! f-!
  \repeat unfold 2 {
  | \stemUp \slashedGrace bes,8 \stemNeutral ges'2.\sf ees4
  }
  %55
  | d \clef bass bes,,_! f'-! ges-!
  | aes-! \clef treble bes'( aes' ges)
  | ges\prall( f) f\prall( ees)
  | ees\prall( d) c-! d-!
  | ees-! \clef bass bes,,_! es-! f-!
  %60
  | ges-! \clef treble bes'-! ees-! f-!
  \repeat unfold 2 {
  | \stemUp \slashedGrace bes,8 \stemNeutral ges'2.\sf( ees4)
  }
  | c-! \clef bass aes,,-! ees'-! f-!
  | ges-! \clef treble aes'( ges' f)
  %65
  | f^\prall( es) es^\prall( des) | des^\prall( c) bes-! c-!
  | des \clef bass aes,,_! des-! ees-!
  | f-! \clef treble aes'-! des-! ees-!
  \repeat unfold 2 {
  | \stemUp \slashedGrace aes,8 \stemNeutral f'2.\sf( des4)
  }
  %71
  | c-! \clef bass aes,,-! ees'-! f-!
  | ges-! \clef treble
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    aes'(_\markup{ "(rinf.)" } ges' f)
  | f^\prall( ees) ees^\prall( des)
  | des^\prall( c) bes-! c-!
  %75
  | des \clef bass des,,( aes') ces,_!
  | bes_! \clef treble bes''( aes' ges)
  | ges^\prall( f) f^\prall( es)
  | ees^\prall( d!) c-! d-!
  | ees-! \clef bass
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    ees,,_\markup{ "rinf." } ( bes') des,-!
  %80
  | c_! \clef treble c''( bes' as)
  | aes^\prall( g!) g^\prall( f)
  | f^\prall( e) d!( e)
  | g^\prall( f) f^\prall( es!)
  | ees^\prall( d) c( d)
  %85
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    f^\prall_\markup{ "decresc." }( ees) ees^\prall( d)
  | d^\prall( c) c^\prall( b)
  | c^\prall( bes!) bes-! bes-!
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    c^\prall(_\markup { \dynamic pp } bes) bes-! bes-!
  | \stemUp\tieUp s2 ees~
  %90
  | ees ees
  | s2 ees~
  | ees ees
  | \stemNeutral
    ees8_![ ees, aes ees]
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    e'_![_cresc e, c' e,]
  | f'[-! f, c' f,] g'[-! g, c g]
  %95
  | aes'[-! aes, c aes] a'[-! a, c a]
  | bes'[-! bes, f' bes,] c'[-! c, f c]
  | des'[-! des, f des] d'[-! d, f d]
  \break
  | ees'[-! ees, g ees] b'[-! b, ees b]
  | r\f c[ ees c] c'[ c, ees c]
  %100
  | r f,[ aes f] d'[ f, aes f]
  | \stemUp\tieUp s2 ees'~
  | ees ees
  | s2 ees~
  | ees ees
  %105
  | \stemNeutral
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    ees8_![_cresc ees, aes ees] e'_![ e, c' e,]
  | f'[-! f, c' f,] g'[-! g, c g]
  | aes'[-! aes, c aes] a'[-! a, c a]
  | bes'[-! bes, f' bes,] c'[-! c, f c]
  | des'[-! des, f des] d'[-! d, f d]
  %110
  | ees'[-! ees, bes' ees,] e'[-! e, bes' e,]
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    r_\markup { \dynamic f } aes[ c aes] f'[ aes, c aes]
  | r f[ aes f] d'[ f, aes f]
  | g4
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    ees'2\(_\markup { \dynamic p } d8[ ees]
  | f[ ees d c] b[ c d c]
  %115
  | bes![ aes g f] e[ f g f]
  | ees![ d c bes] a[ bes c aes]
  | g4-!\)
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <ees' ees'>2_\cresc d'8 ees
  | f[ ees d c] b[ c d c]
  | bes![ aes g f] e[ f g f]
  %120
  | ees![ d c bes] a[ bes c aes]
  | ees'4\f ees,2 <des g>4_!
  | <c aes'>_! <g' bes>_! <aes c>-! <aes d!>-!
  | <g ees'>-! ees'2 <des g>4-!
  | <c aes'>-! <g' bes>-! <aes c>-! <aes d!>-!
  %125
  | <g ees'>1\f
  | <g, ees'>
  | <g' ees'>
  | <g, ees'>
  | <c' ees>\f
  %130
  | <c, ees>\f
    \alternative {
      \volta 1 {
        <a' c d>\f
        <b,, d>\ff\fermata
      }
      \volta 2 {
        <a'' c d>\f
        <a,, c d>\ff
      }
    }
    \bar "||"
    \time 4/4
  }
  \break
  %135
  | \tieNeutral\stemUp
    \tempo "Tempo I"
    <g bes d g>4\fp ~ q16.[ <d' g>32 <d fis a>16. <d g bes>32] <e g bes>4( <fis a>8) r
  | <fis a c>4\fp~ q16.[ q32 <fis a d>16. <fis a ees'>32] q4( <g bes d>8) r
  | <fis a c>4\fp~ q16.[ q32 <fis a d>16. <fis a dis>32] q4^(\p <e g e'>
  | <a fis dis>_\markup { "decresc." } <g e b> <dis fis>
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    dis)\fermata_\markup {
      \whiteout \dynamic pp
    }
    \key a \minor
    \time 2/2
  | \stemNeutral e!4_!\p a!_!
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    g_!_\cresc <a dis>-!
  %140
  | <g e'>-! <dis' a'>-! <e g>-! <a dis>-!
  | <g e'>-!\f r <e, e'> r
  | r\p q_! <fis fis'>-! <g g'>-!
  | q2( <fis fis'>4) r
  | r q-! <g g'>-! <a a'>-!
  %145
  | q
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    g_!_\cresc fis_! <g cis>_!
  | <fis d'>_! <cis' g'>-! <d fis>-! <g cis>-!
  | <fis d'>\f r <fis, fis'> r
  | r q-!\p <g g'>-! <a a'>-!
  | q2( <g g'>4) r
  %150
  | r <g g'>-! <a a'>-! <bes bes'>-!
  \repeat unfold 4 {
  | \repeat tremolo 2 { bes8 bes' } \repeat tremolo 2 { bes, bes' }
  }
  \repeat unfold 4 {
  | \repeat tremolo 2 { a,8 a' } \repeat tremolo 2 { a, a' }
  }
  %159
  \repeat unfold 3 {
  | \repeat tremolo 2 { aes,8 aes' } \repeat tremolo 2 { aes, aes' }
  }
  | aes,8 aes' g, g' g, g' f, f'
  | f, f' e,! e'! e, e' des, des'
  | des, des' c, c' c, c' bes, bes'
  %165
  | bes,\p bes' aes, aes' aes, aes' g, g'
  | \stemUp
    \override Beam.positions = #'(2 . 2)
    g, g' \bottom f, \top f'
    \override Beam.positions = #'(13.5 . 13.5) \bottom f, \top f' \bottom ees, \top ees'
  | \override Beam.positions = #'(13 . 13)
    \bottom ees, \top ees' \bottom d, \top d' \bottom d, \top d' \bottom ees, \top ees'
  | \bottom ees, \top ees' \bottom d, \top d' \bottom d, \top d' \bottom c, c' \top
    \revert Beam.positions
  %169
  | s1*4
  | \stemNeutral s4 e!_!
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    f_!_\cresc <e cis'>_!
  | <f d'>_! <cis' e>-! <d f>-! <e cis'>-!
  %175
  | <f d'>-! <cis' e>-! <d f>2~\sf
  | q \afterGrace <c! ees>\trill { \stemUp d16 ees }
  | \stemNeutral <d f>4 r \clef bass cis,,,8\pp\( aes' e! cis
  | d aes' f d c aes' ees c
  | b g' d b cis aes' e cis
  %180
  | d aes' f d c aes' ees c
  | <b d g>4\) \clef treble e'!_! f_! <e cis'>_!
  | <f d'>_! <cis' e>-! <d f>-! <e cis'>-!
  | <f d'>-! <cis' e>-! <d f>2~\sf
  | q \afterGrace <c! ees>\trill { \stemUp d16 ees }
  %185
  \repeat unfold 2 {
  | <b d>4-! <cis e>-! <d f>2~\sf
  | q \afterGrace <c! ees>\trill { \stemUp d16 ees }
  }
  | \stemNeutral <b d>8\sf f' d c b f' d c
  %190
  | b f' d c b d b g
  | aes bes aes g f aes f ees
  | d f d c b! d b g
  | aes bes aes g f aes f ees
  | d f d c \bottom \stemUp b! d b g
  %195
  | aes bes aes g f ees d c
  | b! c b aes f'2\rest
    \break
  | \top \key c \minor
    c'2.\p <bes e!>4
  | <aes f'>_! <e' g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2\sf <bes' e>4-!
  %200
  | <aes f'>-! <e' g>-! <f aes>-! <d b'>-!
  | <c ees g c>2 <g b! f'g>
  | <g c ees>-! <f aes d>_!
  | <ees c'>1~
  | <ees a c>2 <d f b>
  %205
  | \once\override Staff.TextScript.extra-offset = #'(-0.8 . 0)
    <c ees c'>4_!_\p c2 <bes e>4_!
  | <aes f'>_! <e' g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2\sf <bes' e>4-!
  | <aes f'>-! <e' g>-! <f aes>-! <d b'>-!
  | <c ees g c>2-! <aes ees' aes>-!
  %210
  | <aes des f>-! <ges c ees>
  | <f aes des>_! <des ges bes>_!
  | aes'1
  | \stemNeutral <d,! f bes>2_!\p
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <bes' f' bes>-!_\cresc
  | <bes ees ges>-! <aes d f>-!
  %215
  | <ges bes ees>-! <ees aes ces>_!
  | bes'1
  | <e, g c>2_!\p
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <c' g' c>-!_\cresc
  | <c f aes>-! <bes e g>-!
  | <aes c f>-! <f des'>_!
  %220
  | <f c'>_! <f b>_!
  | <ees c'>4 b_\(\p c b
  | c b c b\)
    \break
  | r4 \clef bass c,4_! f-! g-!
  | aes-! \clef treble c'4-! f-! g-!
  %225
  \repeat unfold 2 {
  | \stemUp \slashedGrace c,8 \stemNeutral aes'2.(\sf f4)
  }
  | e4 \clef bass c,,_! g'-! aes-!
  | bes-! \clef treble c'( bes' aes)
  | aes\prall( g) g\prall( f)
  %230
  | f\prall( e) d-! e-!
  | f \clef bass c,,_! f-! g-!
  | aes-! \clef treble c'-! f-! aes-!
  | \stemUp \slashedGrace c,8 \stemNeutral c'2.(\sf f,4)
  | \stemUp \slashedGrace f8 \stemNeutral f'2.(\sf c4)
  %235
  | b4 \clef bass g,,,_! d'-! ees-!
  | f-! \clef treble g'( f' ees)
  | ees\prall( d) d\prall( c)
  | c\prall( b) a_! b-!
  | c \clef bass g,,_! c_! d-!
  %240
  | ees-! \clef treble g''-! c-! d-!
  \repeat unfold 2 {
  | \stemUp \slashedGrace g,8 \stemNeutral ees'2.(\sf c4)
  }
  | b \clef bass g,,,_! d'-! ees-!
  | f-! \clef treble g''( f' ees)
  %245
  | ees\prall( d) d\prall( c)
  | c\prall( b) a( b)
  | \stemUp\slurUp\tieUp d\prall( c) c\prall( bes)
  | bes\prall( a) g( a)
  | c\prall( bes) bes\prall( aes)
  %250
  | aes\prall( g) f( g)
  | bes\prall( aes) aes\prall( g)
  | g\prall( fis) fis-! fis-!
  \repeat unfold 2 {
  | aes\prall( g) g-! g-!
  }
  %255
  \repeat unfold 2 {
  | \stemUp r8 c,, ees c c'2~
  | c c
  | r8 des, e des des'2~
  | des2 des
  | \stemNeutral c8^!
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    c,_\cresc f c  e'^! e, c' e,
  %260
  | f'-! f, c' f,  g'-! g, c g
  | aes'-! aes, c  aes a'-! a, c a
  | b'-! b, f' b,  c'-! c, f c
  | d'-! d, f d  e'-! e, g e
  | f'-! f, aes f  d'-! f, aes f
  %265
  | r8\f ees! g ees  c' ees, g ees
  | r8 d f d  b' d, f d
  }
  %279
  | c4\p c'2\( b8 c
  | d c bes aes  g aes bes aes
  | g f ees d  cis d ees d
  | c b aes g  fis g aes g
  | ees4\) <c' c'>2 b'8\( c
  | d c bes aes  g aes bes aes
  %285
  | g f ees d  cis d ees d
  | c b aes g  fis g aes g\)
  | c4\f c,2 <bes e>4_!
  | <aes f'>_! <e' g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2 <bes' e>4-!
  %290
  | <aes f'>-! <e' g>-! <f aes>-! <d b'>-!
  | <c ees c'>1\f
  | <c, ees c'>
  | <c' ees c'>1
  | <c, ees c'>
  %295
  | <ees' a c ees>\ff
  | <fis,, a c ees>\ff\fermata
  | \tempo "Grave"
    \stemNeutral r4 r16. <fis' a c>32\p <fis a d>16. <fis a ees'>32 q4( <g b d>8) r
  | r4 r16. <b d f>32 <b d g>16. <b d aes'>32 q4( <c ees g>8) r
  | r4 r16.
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <bes e g bes>32_\cresc <c e g c>16. <des e g des'>32 q4\sf\> <c c'>8 <bes bes'>\!
  %300
  | <aes aes'>8_\markup { "decresc." }
    <g g'> <f f'> <ees ees'> r <f aes d>\pp r \bottom \stemUp <d, g b> \top
  | \tempo "Allegro molto e con brio"
    c'2.\p <bes e>4_!
  | <aes f'>_! <e'! g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2 <bes' e>4-!
  | <aes f'>-! <e'! g>-! <f aes>-! <d b'>-!
  %305
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <ees c'>2-!_\cresc <c ees c'>-!
  | q-! q-!
  | <ees a c ees>4\ff r r2
  | <fis, a c ees>4 r r2
  | \stemUp <ees' g>4 r r2
  %310
  | b,!4_\markup { \whiteout \dynamic ff } r r2
  | c4 r r2
  | R1\fermata
   \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  %1
  | s1*3
  | \override Stem.length = #16
    s4.
    \omit Flag
    \once\override Staff.TextScript.extra-offset = #'(0.6 . -1)
    e8_\markup { \whiteout "cresc." }
    f s4 s8
  %5
  | s1*4
  | \override Stem.length = #26
    s4 f8\rest f'16 f ees8 s4.
    \revert Stem.length
  %10
  | s1*5
  %15
  | s2
    \once\override Staff.TextScript.extra-offset = #'(-3 . -2)
    <g, b f'>_cresc
  | <g c>2 <f a>
  | g fis
  | s1*5
  %23
  | s2
    \once\override Staff.TextScript.extra-offset = #'(-3 . -2)
    <g b f'>_cresc
  | <g c>2 <f aes>
  | g fis
  | s1*63
  %89
  | r8\p ees[ g ees] ees'[ ees, g ees]
  | g[ ees g ees] g\rest ees[ g ees]
  | r8 ees[ g ees] ees'[ ees, g ees]
  | g[ ees g ees] g\rest ees[ g ees]
  | s1*8
  %101
  | r8\p ees[ g ees] ees'[ ees, g ees]
  | g[ ees g ees] g\rest ees[ g ees]
  | r8 ees[ g ees] ees'[ ees, g ees]
  | g[ ees g ees] g\rest ees[ g ees]
  | s1*98
  %203
  | g2 fis
  | s1*8
  %212
  | <des f>2( <c ees>)
  | s1*3
  %216
  | <ees ges>2\( <d f>\)
  | s1*30
  %247
  | e4\rest <ees g> q q
  | e4\rest <ees f> q q
  | e4\rest <des f> q q
  | e4\rest <des ees> q q
  \repeat unfold 3 {
  | e4\rest <c ees> q q
  }
  | e4\rest <b d> q q
  %255
  \repeat unfold 2 {
  | s2 c'8 c, ees c
  | ees c ees c  e\rest c ees c
  | s2 des'8 des, e des
  | e des e des  e\rest des e des
  | s1*8
  }
  | s1*30
  %309
  | <g c>4 s2.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  %1
  | \override Stem.length = #20
    \omit Flag \autoBeamOff
    <ees g>4~ q16. g32 16. 32 a4 b8 s
  | s1*3
  %5
  | s2. <f aes b>16. q32 <f aes c>16. q32
  | <f aes d>8 s4. s8. s32 g a16. 32 bes16. 32
  | a8 s s2. \revert Stem.length \undo\omit Flag \autoBeamOn
  | s1*43
  %51
  \repeat unfold 4 {
  | c'4\rest <ees, ges> q q
  }
  %55
  \repeat unfold 4 {
  | c'4\rest <f, aes> q q
  }
  \repeat unfold 8 {
  | c'4\rest <ees, ges> q q
  }
  %67
  \repeat unfold 4 {
  | c'4\rest <des, f> q q
  }
  %71
  \repeat unfold 4 {
  | c'4\rest <ees, ges> q q
  }
  %75
  | c'4\rest <f, aes> c'\rest q
  \repeat unfold 3 {
  | c4\rest <f, aes> q q
  }
  | c'4\rest <ges bes> c\rest <f, bes>
  %80
  \repeat unfold 3 {
  | c'4\rest <g bes> q q
  }
  | c4\rest aes aes aes
  | c4\rest <f, aes> q q
  %85
  | c'4\rest <ees, g> q q
  | c'4\rest <ees, f> q q
  | c'4\rest <ees, g> q q
  | c'4\rest <d, f> q q
  \repeat unfold 2 {
  | c8\rest bes[ g bes] g[ bes g bes]
  | g[ bes g bes] c8\rest bes[ g bes]
  }
  %93
  | s1*8
  %101
  \repeat unfold 2 {
  | c8\rest bes[ g bes] g[ bes g bes]
  | g[ bes g bes] c8\rest bes[ g bes]
  }
  %105
  | s1*9
  %114
  | c'4\rest <ees, g> q q
  | c'4\rest <ees, f> q q
  | c'4\rest <d, f> q q
  | c4\rest <g ees'> q q
  | c4\rest <ees, g c> q q
  | c'4\rest <ees, f aes> q q
  %120
  | c'4\rest <d, f bes> q q
  | s1*17
  %136
  | \override Stem.length = #20
    s2 <a' c>4 <fis a>
    \revert Stem.length
  | s1*30
  %169
  | <b,! b'!>4 a'\rest
    \shape #'(
      ((0 . 1) (0 . 2) (0 . 2) (-0.2 . 2))
      ((0 . 4) (0 . -6) (0 . -6) (0 . 0))
    ) PhrasingSlur
    cis,8[\(^\pp as' e cis]
    \break
  | d[ as' f d] c![ as' es c]
  | b[ g' d b] cis[ as' e! cis]
  | d[ as' f d] c![ as' es c]
  | <bes d g>4\) s2.
  | s1
  %175
  | g,4 g'2 4~
  | 4 2 4
  | s1*6
  %183
  \repeat unfold 3 {
  | g,4 g'2 4~
  | 4 2 4
  }
  | s1*34
  %223
  \repeat unfold 4 {
  | c''4\rest <f, aes> q q
  }
  \repeat unfold 4 {
  | c'4\rest <g bes> q q
  }
  \repeat unfold 2 {
  | c4\rest <f, aes> q q
  }
  \repeat unfold 2 {
  | c'4\rest <c, f> q q
  }
  \repeat unfold 4 {
  | c'4\rest <d, f> q q
  }
  \repeat unfold 4 {
  | c'4\rest <c, ees> q q
  }
  \repeat unfold 4 {
  | c'4\rest <d, f> q q
  }
  | s1*8
  %255
  | a8\rest^\p g[ ees g]  ees[ g ees g]
  | ees[ g ees g]  a8\rest g[ ees g]
  | a8\rest g[ e g]  e[ g e g]
  | e[ g e g]  a8\rest g[ e g]
  | s1*8
  %267
  | a8\rest g[ ees g]  ees[ g ees g]
  | ees[ g ees g]  a8\rest g[ ees g]
  | a8\rest g[ e g]  e[ g e g]
  | e[ g e g]  a8\rest g[ e g]
  | s1*9
  %280
  | f'4\rest <c ees> q q
  | e4\rest <c d> q q
  | e4\rest <b d> q q
  | a\rest <ees c'>
    \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    q^\cresc q
  | a\rest <c, ees aes> q q
  %285
  | a'\rest <c, d f> q q
  | a'\rest <b, d g> q q
  | s1*23
  %310
  | \override Stem.length = #20
    <d f g>4 s2.
  | <ees g>4 s2.
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurDown\tieDown
  %1
  | <c ees g c>4~ q16. ees'32 d16. c32 fis4( g8) r16. \stemUp aes,32
  | \stemNeutral\tieNeutral\slurNeutral
    aes'4~ 16.[ 32 g16. f!32] ees4~ 8 r16. ees32-.
  | ees'4 ~ 16.[ 32 d16. c32] c4( b16-!)[ b32\rest ees32 d16. c32]
  | c4_( b8 <bes c> <aes! c>)_! r
    \once\override Staff.TextScript.extra-offset = #'(-3.2 . 2)
    <bes, bes,>4_\markup { \dynamic sf }
  %5
  | \stemDown <ees ees,>16 <ees g bes>[ q q] q[ q q q] <ees aes c>[ q q q] <d d,>[ q <c c,> q]
  | <b b,> <b d f aes>[^\p q q] <bes d f aes>[ q q q] <bes cis e g>[ q q q] <a a,>[ q <g g,> q]
  | <fis fis,>
    \once\override Staff.TextScript.extra-offset = #'(0 . 9)
    <fis' a d>[-\markup { \dynamic p } q q] q[ q q q] <f as d>[ q q q] <d f b>[ q q q]
  | \stemNeutral <b d aes'>[ q q q] <aes b f'>[ q q q] <g b f'>[ q q q] <aes c f>[ q q q]
  | <g b f'>8 r r \clef treble <g'' d'>16[(-! <g d'>)-!] <aes c>8 r r4
  %10
  | r r8 \clef bass <f, c' d>16[(^. q^.])
    <g c es>8 r <f d g,>8*1/2
    \once\override Staff.TextScript.extra-offset = #'(5 . 0)
    s16_\markup {
      "attacca subito il Allegro"
    }
    r8^\fermata
   \bar "||"
   \time 2/2
  \repeat volta 2 {
  | \bar ".|:"
    c,8[ c' c, c'] c,[ c' c, c']
  \repeat unfold 3 {
  | \repeat tremolo 2 { c,8 c' } \repeat tremolo 2 { c,8 c' }
  }
  %15
  | \repeat tremolo 2 { c,8 c' } \repeat tremolo 2 { d,8 d' }
  | \repeat tremolo 2 { ees,8 ees' } \repeat tremolo 2 { f,8 f' }
  | \repeat tremolo 2 { g,8 g' } \repeat tremolo 2 { aes,8 aes' }
  | \repeat tremolo 2 { fis,8 fis' } \repeat tremolo 2 { g,8 g' }
  %20
  \repeat unfold 4 {
  | \repeat tremolo 2 { c,,8 c' } \repeat tremolo 2 { c,8 c' }
  }
  | \repeat tremolo 2 { c,8 c' } \repeat tremolo 2 { d,8 d' }
  %25
  | \repeat tremolo 2 { ees,8 ees' } \repeat tremolo 2 { f,8 f' }
  | \repeat tremolo 2 { g,8 g' } \repeat tremolo 2 { aes,8 aes' }
  | \repeat tremolo 2 { fis,8 fis' } \repeat tremolo 2 { fis,8 fis' }
  | <g, g'>4 <b' d> q q
  | g <c ees> q q
  %30
  | <d f> r r2
  | \stemDown r2 aes,,8[ aes' aes, aes']
  | <g, g'>4 <b''! d> q q
  | g <c ees> q q
  | <d f> r r2
  %35
  | \stemDown r2 aes,,8[ aes' aes, aes']
  \repeat unfold 4 {
  | \repeat tremolo 2 { g,8 g' } \repeat tremolo 2 { g,8 g' }
  }
    \stemNeutral
  %40
  \repeat unfold 3 {
  | \repeat tremolo 2 { aes,8 aes' } \repeat tremolo 2 { aes,8 aes' }
  }
  | \repeat tremolo 2 { a,8 a' } \repeat tremolo 2 { a,8 a' }
  \repeat unfold 6 {
  | \repeat tremolo 2 { bes,8 bes' } \repeat tremolo 2 { bes,8 bes' }
  }
  | <bes, bes'>4 r r2
  %50
  | R1 \clef treble \stemDown\tieDown
  \repeat unfold 12 {
  | bes''1
  }
  %63
  \repeat unfold 12 {
  | aes1
  }
  %75
  | des2 ces
  \repeat unfold 3 {
  | bes1
  }
  | ees2 des
  %80
  \repeat unfold 3 {
  | c1
  }
  | f1
  | bes,2 b2
  %85
  | c1
  | aes1
  | bes1
  | bes1
    \clef bass
  | ees,1~
  %90
  | ees2 ees
  | des1~
  | des2 des
  | \stemNeutral\tieNeutral c8-! aes' ees aes bes,-! g' c, g'
  | aes,-! aes' c, aes' g,_! g' c, g'
  %95
  | f,_! f' c f ees,_! ees' f, ees'
  | d,_! d' f, d' c,_! c' f, c'
  | bes,_! bes' f bes aes,_! aes' f aes
  | g,_! g' ees g g,_! g' ees g
  | <aes, aes'>4 r r2
  %100
  | <bes bes'>4 r r2
  | \tieDown ees'1~
  | ees2 ees
  | des1~
  | des2 des
  %105
  | \stemNeutral\tieNeutral c8-! aes' ees aes bes,-! g' c, g'
  | aes,-! aes' c, aes' g,_! g' c, g'
  | f,_! f' c f ees,_! ees' f, ees'
  | d,_! d' f, d' c,_! c' f, c'
  | bes,_! bes' f bes aes,_! aes' f aes
  %110
  | g,_! g' ees g g,_! g' g, g'
  | <aes, aes'>4 r r2
  | <bes bes'>4 r r2
  | <ees ees'>4 \clef treble <ees'' g> q q
  | c1
  %115
  | aes1
  | bes1
    \clef bass
  | ees,1
  | c1
  | aes1
  %120
  | bes1
  | ees,8[ ees' ees, ees'] ees,[ ees' ees, ees']
  \repeat unfold 4 {
  | \repeat tremolo 2 { ees,8 ees' } \repeat tremolo 2 { ees, ees' }
  }
  %126
  | \repeat unfold 2 { \repeat tremolo 2 { d, d' } }
  | \repeat unfold 2 { \repeat tremolo 2 { c, c' } }
  | \repeat unfold 2 { \repeat tremolo 2 { bes, bes' } }
  | \repeat unfold 2 { \repeat tremolo 2 { aes, aes' } }
  %130
  | \repeat unfold 2 { \repeat tremolo 2 { g, g' } }
  | \alternative {
      \volta 1 {
        <fis, fis'>1
        <g g' f'!>\fermata
      }
      \volta 2 {
        <fis fis'>1
        <fis' fis'>\fermata
      }
    }
    \bar "||"
    \time 4/4
  }
  %135
  | <g, bes d g>4~ q16.[ bes''32 a16. g32] cis4 d8 r16. ees,32
  | ees'4~ 16. 32 d16. c32 bes4. r16. ees,32
  | ees'4~ 16. 32 d16. c32 c8( b4) 8~
  | 8_\markup { "attacca subito" } b,4 4 b, b8\fermata
    \key a \minor
    \time 2/2
  | e!8[ e'! e, e'] e,[ e' e, e']
  %140
  | \repeat tremolo 2 { e,8 e' } \repeat tremolo 2 { e, e' }
  | <e, e'>4 <g' b> q q
  | e4 <g b> q q
  | e4 <a c> q q
  | ees4 <a c> q q
  %145
  | d,,8[ d' d, d'] d,[ d' d, d']
  | \repeat tremolo 2 { d,8 d' } \repeat tremolo 2 { d, d' }
  | <d, d'>4 <a'' c> q q
  | d,4 <a' c> q q
  | d,4 <g bes> q q
  %150
  | des4 <g bes> q q
  | <c, c,> des( c) f(
  | e) des'( c) f(
  | e) fis( g) r
  | R1
  %155
  | r4 ges,,( f) des'(
  | c) ges'( f) des'(
  | c) e( f) r
  | R1
  | r4 c,( b d)
  %160
  | f-! c'( b d)
  | f-! r d-! r
  | b-! r g-! r
  | <des' des,> r <bes bes,> r
  | <g g,> r <e e,> r
  %165
  | <f f,>4 r r2
  | \stemDown <f, f,>4 d\rest d2\rest
  \repeat unfold 2 {
  |\stemDown <fis fis,>4 d\rest d2\rest
  }
  \repeat unfold 4 {
  | \stemDown
    \repeat tremolo 2 { g,8 g' } \repeat tremolo 2 { g, g' }
  }
  | \repeat tremolo 2 { g,8 g' } \repeat tremolo 2 { g, g' }
  | \repeat tremolo 2 { g,8 g' } \repeat tremolo 2 { g, g' }
  %175
  | \slurDown g,2( b
  | c fis,)
  \repeat unfold 6 {
  | \repeat tremolo 2 { g8 g' } \repeat tremolo 2 { g, g' }
  }
  %183
  \repeat unfold 3 {
  | g,2( b
  | c fis,)
  }
  | \stemNeutral <g g'>4 r r2
  %190
  | R1*4
  | \override MultiMeasureRest.staff-position = #-4
    R1
  %195
  | R1
  | d'2\rest \stemDown g8[ f ees d]
  \pageBreak
  | \key c \minor
    \stemNeutral c c' c, c' c, c' c, c'
  \repeat unfold 3 {
  | \repeat tremolo 2 { c,8 c' } \repeat tremolo 2 { c,8 c' }
  }
  %201
  | c,
    \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    c'^\cresc c, c' d, d' d, d'
  | \repeat tremolo 2 { ees,8 ees' } \repeat tremolo 2 { f, f' }
  | \repeat tremolo 2 { g, g' } \repeat tremolo 2 { aes, aes' }
  | \repeat tremolo 2 { fis, fis' } \repeat tremolo 2 { g, g' }
  %205
  \repeat unfold 4 {
  | \repeat tremolo 2 { c,, c' } \repeat tremolo 2 { c, c' }
  }
  | c, c'
    \once\override Staff.TextScript.extra-offset = #'(0 . 2)
    c,^\cresc c' c, c' c, c'
  %210
  | \repeat tremolo 2 { des,8 des' } \repeat tremolo 2 { ees, ees' }
  | \repeat tremolo 2 { f, f' } \repeat tremolo 2 { ges, ges' }
  | \repeat unfold 2 { \repeat tremolo 2 { aes, aes' } }
  | \repeat tremolo 2 { aes, aes' } \repeat tremolo 2 { d,,! d'! }
  | \repeat tremolo 2 { ees, ees' } \repeat tremolo 2 { f, f' }
  %215
  | \repeat tremolo 2 { ges, ges' } \repeat tremolo 2 { aes, aes' }
  | \repeat unfold 2 { \repeat tremolo 2 { bes, bes' } }
  | \repeat tremolo 2 { bes, bes' } \repeat tremolo 2 { e,, e' }
  | \repeat tremolo 2 { f, f' } \repeat tremolo 2 { g, g' }
  | \repeat tremolo 2 { aes, aes' } \repeat tremolo 2 { bes, bes' }
  %220
  | \repeat tremolo 2 { c, c' } \repeat tremolo 2 { des, des' }
  | <c, c'>4 r r2
  | \override MultiMeasureRest.staff-position = #0 R1
    \clef treble
  %223
  \repeat unfold 10 {
  | c'1
  }
  %233
  | aes
  | aes
  \repeat unfold 12 {
  | g
  }
  | \clef bass
  %247
  | c
  | f,
  | bes
  %250
  | ees,
  | aes
  | aes
  | g^\pp
  | g
  %255
  \repeat unfold 2 {
  | \stemDown\tieDown c,~
  | c2 c
  | bes1~
  | bes2 bes
  | \stemNeutral aes8-! aes' c, aes'  bes,-! bes' c, bes'
  %260
  | aes,-! aes' c, aes'  g,_! g' c, g'
  | f,_! f' c f  ees,! ees'! c ees
  | d, d' g, d'  c, c' g c
  | b, b' g b  bes, bes' c, bes'
  | aes, aes' c, aes'  f, f' c f
  %265
  | <g, g'>4 r r2
  | <g' g'>4 r r2
  }
  % 279
  | c4 <c' ees> q q
  | aes1
  | f
  | g
  | c,
  %275
  | aes
  | f
  | g
  | c,8 c' c, c'  c, c' c, c'
  \repeat unfold 4 {
  | \repeat tremolo 2 { c, c' } \repeat tremolo 2 { c, c' }
  }
  | \repeat tremolo 2 { bes, bes' } \repeat tremolo 2 { bes, bes' }
  | \repeat tremolo 2 { aes, aes' } \repeat tremolo 2 { aes, aes' }
  | \repeat tremolo 2 { g, g' } \repeat tremolo 2 { g, g' }
  %295
  | <fis, fis'>1
  | <fis' a c ees>\fermata
    \break
    \time 4/4
    \stemNeutral\slurNeutral
  %297
  | r4 r16. ees''32 d16. c32 c4( b8) r
  | r4 r16. \clef treble aes'32 g16. f32 f4( ees8) r
  | r4 r16. <des e g>32 <c e g>16. <bes e g>32 <aes bes e g>4(^\( <aes c f aes>8) <g c e>
    \clef bass
  %300
  | <f c' f> <ees! g c> <d g b> <c g' c>\) \stemDown f r <g,, g'> c\rest
    \time 2/2
  | \stemNeutral c c' c, c' c, c' c, c'
  \repeat unfold 3 {
  | \repeat tremolo 2 { c,8 c' } \repeat tremolo 2 { c,8 c' }
  }
  %305
  | \stemNeutral c, c' c, c' bes,! bes'! bes, bes'
  | \repeat tremolo 2 { aes,8 aes' } \repeat tremolo 2 { g,8 g' }
  | <fis, fis'>4 r r2
  | <fis'' a c ees>4 r r2
  | <g c ees>4 r r2
  %310
  | \stemDown <g,, b d g>4 r r2
  | <c ees g c>4 r r2
  | R1\fermata
    \bar "|."
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
    composer = #f % "Ludwig van Beethoven"
    opus = #f % "Opus 13"
    title = "Grande Sonate Pathétique"
    subtitle = \markup {
      \abs-fontsize #10 \normal-text\italic
      "Dem Fürsten Carl von Lichnowsky gewidmet"
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
