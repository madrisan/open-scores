\version "2.23.80"
\language "nederlands"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18\cm
% markup-system-spacing.basic-distance = #10
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 3)
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
  | f( e! d c! bes a gis a cis, g'! f e
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
    <a cis g'>8_. r16 <bes cis bes'>16_.
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
  | <f a d f>8_\markup {
      \dynamic f \italic\tiny "marcatissimo"
    }^\markup {
      \column {
        \tiny "largamente"
        \general-align #Y #-2.5
        \italic\tiny "breit"
      }
    }
    \stemDown a^>[ d,^>] \stemUp \autoBeamOff <f a d f>^!\fz g'^! s \autoBeamOff
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2.5)
    <e, g c e>8_\markup { \dynamic fz }
    \stemDown g^>[ c,^>]
    \stemUp \autoBeamOff
    \once\override Staff.TextScript.extra-offset = #'(0 . -2.6)
    <e g c e>^!_\markup { \dynamic fz }
    \once\override Staff.TextScript.extra-offset = #'(0 . -0.8)
    f'^!_\markup { \dynamic fz } s
    \autoBeamOff
  | <d, f bes d>8\fz \stemDown f^>[ bes,^>]
    \stemUp \autoBeamOff <d f bes d>^! <bes' e>^! s \autoBeamOn
  | <a, a'>^![ <d d'>^!]
    \override Stem.details.beamed-lengths = #'(6.5)
    d'16[ cis d b!] cis8 s
    \revert Stem.details.beamed-lengths
  %60
  | f8^\markup { \hspace #0.4 \italic\tiny "con bravura" }
    s <d, d'>^.^^ r16 s8 <d g>16[\< <f d'> <bes! bes'!>]\!
  | e8 s <c, c'>^.^^ r16 s8 <c f>16[ <e c'> <a a'>]
  | <f d'> <ees c'> <f d'> <d bes'> <bes bes'>8 r16 s8 <b! e!>16[ <d b'!> <g g'>]
  | s2.
    \bar "||"
  | <d f d'>16_._^^\markup {
      \column {
        \tiny "non affrettare!"
        \general-align #Y #-2.5
        \italic\tiny "nicht eilen!"
      }
    }
    \stemDown
    \once\override Staff.TextScript.extra-offset = #'(0.8 . 0.8)
    a'32[_\markup {
      \italic\tiny "sempre" \dynamic f
    }
    g f16^! \bottom \clef treble e_!]
    d_! \top c^! bes^! a^! r16 d''32[(\< c bes a g f]\!
  %65
  | e16^.\fz) \stemDown g,32[ f e16^! \bottom d_!]
    c_! \top bes^! a^! g^! r16 c''32[(\< bes a g f ees]\!
  | d16^.\fz) \stemDown f,32[ ees d16^! \bottom c_!]
    bes_! \top d32 c bes16^! \bottom a_!
    \top r16 bes''32(\< a g f e! d)\!
  | cis32( b!\< a b cis d e f  g a bes\! a g f e d  cis!16) e'32\<( d cis b! a g\!
  | f16^!) \stemUp d,32[ e f16\!_! a] f\!_! d\!_! f\!_! a\!_! bes32( c d e f g a bes^.)
  | bes16^! \stemUp c,,32[ d e16\!_! g_!] e\!_! c\!_! e\!_! g\!_! a32( bes c d e f g a^.)
  %70
  | a16^! \stemUp bes,,32[ c d16 f] d bes d f g32( a bes c d e f g^.)
  | <cis, g'>_._> bes'( a g f e d cis  bes a g f e d cis b!  a b cis d e f g e
  | \autoBeamOff f16^!)
    \bottom
    \once\shape #'((0 . -6) (0 . 0) (0 . 0) (0 . 0)) Slur
    d,8.^^^\markup {
      \dynamic ff
    }(
    \autoBeamOn
    \once\override Hairpin.Y-offset = #-4
    %\once\override Hairpin.rotation = #'(2 -1 0)
    \grace {
      e32\< f g a b! cis \top\stemUp d e f g a b! cis
    } \stemDown d32^.) bes( c! d e f g a bes16^.)\! s8.
  | \bottom
    \omit TupletNumber
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/16)
    \tuplet 12/8 {
      <c,,, c'>32^^(^\markup { \hspace #-0.5 \italic\tiny "ten." } \top
      \once\override Hairpin.rotation = #'(5 -1 0)
      \magnifyMusic 0.75 {
        d'\< e  fis g a  bes c d  e fis g
      }
    }
    \undo\omit TupletNumber
    \set subdivideBeams = ##f
    \tuplet 10/8 {
      a32^.)
      \once\shape #'((0 . 0) (0 . 2.5) (0 . 1.3) (0 . 0)) Slur
      fis!( g a bes c d e fis g\!
    }
    a16) s8.
  | \omit TupletNumber
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/16)
    \bottom
    \tuplet 12/8 {
      <bes,,,, bes'>32^^^\markup { \hspace #-2 \italic\tiny "ten." } \top
      \once\override Hairpin.rotation = #'(4 -1 0)
      \magnifyMusic 0.75 {
        g''(\< a  bes c d  e fis g a bes c
      }
    }
    \set subdivideBeams = ##f
    d^!) g,( a bes c d e fis
    \ottava #1
    g a\! bes a g f! e d
  %75
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/4)
    cis^.^>)[ a'( g f
      \once\override Staff.TextScript.extra-offset = #'(0 . -2.5)
      e_\markup {
      \italic\tiny "cresc. possibile"
    } d cis b!
    a b! cis d e f g a
    b! cis d e f g a bes^>)]
  | g[( e cis bes g e cis bes
    \ottava #0
    g e cis bes g e cis bes
    \bottom g e cis bes g e cis bes])
    \set subdivideBeams = ##f
    \top
  | %\break
    r16 \stemUp
    \once\override Staff.TextScript.extra-offset = #'(-1 . -0.4)
    a''_(^\markup { \dynamic mf \italic\tiny ", dolce espress." }_\markup {
      \italic\tiny  "tranquillo"
    }
    d e  f d bes a  gis b! d f)
    \clef bass
  | \bottom
    \once\shape #'((0 . 2) (0 . 0) (0 . -3) (0 . 0.5)) Slur
    c,16( \top e a c  e c a g  fis a c ees)
  | \bottom
    \once\shape #'((0 . 2) (0 . 0) (0 . -3) (0 . 0.5)) Slur
    bes,16( \top d g bes  d bes g f  e g bes cis)
  %80
  | r8 \clef treble \stemUp <d a' d>^.( r  <f a>^. r <e a>^.)
  | \stemDown r16
    \once\override Staff.TextScript.extra-offset = #'(-3 . -0.5)
    <f' bes>\(^\markup {
      \column {
        \small "Sostenuto, a tempo"
        \general-align #Y #-2.5
        \italic\tiny "dolente"
      }
    }_\markup {
      \italic\tiny "molto" \dynamic p
    }
    <f bes>( <d gis>)  <d gis>( <bes f'>) <bes f'>( <f d'>)
    \stemUp <f d'> <d b'!> <b! gis'> <gis e'>\)
  | \stemDown r16 <e'' a>\( <ees a>( <c! fis>)  <c fis>( <a ees'!>) <a ees'>( <ees c'>)
    \stemUp <ees c'> <c a'> <a fis'> <fis d'>\)
  | \stemDown r16 <d'' g>\( <cis g'>( <bes ees>)  <bes ees>( <g cis!>) <g cis>( <cis, bes'>)
    \stemUp <cis bes'> <bes g'> <g e'!> <e cis'!>\)
  | r16^\markup {
      \dynamic p \italic\tiny "sempre"
    } cis'( cis e  e g32 f g16 bes32 a  bes16 cis32 d e16 g,
  %85
  | <d f>8) \stemDown <d' gis>[( <f bes> <gis! d'> <b! f'>)] \stemUp <d,, b'>[(\<
  | <e e'>_\markup { \italic\tiny "poco" } fis'])\! s4. <c, a'>8(\<
  | <d d'>_\markup { \italic\tiny "poco" } ees')\! s4. <g,, cis~>8[
  | <g cis g'>16^!] \stemDown <bes' cis>[^\markup {
      \italic\small "fest"
    } <bes cis>( <g e'>])
    \once\override Staff.TextScript.extra-offset = #'(0 . 1)
    <g e'>^\markup {
      \italic\small "non legato"
    } <bes g'>32 <a f'> <bes g'>16 <g' bes>32 <f a>
    <g bes>16[ <e cis'>32 <f d'> <g e'>16] \stemUp <g,, cis! g'>
  | <f d' f>32^!\fz^\markup {
      \italic\small "con fuoco animato"
    }
    \stemDown a'[(\f b! cis]\< d[ cis b a]) r4 a'32^>[( g f e)] bes'[( a g f)]\!
  %90
  | r32 e[(\< fis gis] a[ gis fis e]) r4 e'32^>[( d c b!]) f'![( e d cis)]\!
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    d\ff[(^\markup {
      \italic\small "articolato assai"
    } e f e d f e d] f^>[ e d f e d f e]
    \set subdivideBeams = ##f
    d[) g( f e d c bes a]
  | \set subdivideBeams = ##t
    g[ a bes a g bes a g] bes^>[ a g bes a g bes a]
    \set subdivideBeams = ##f
    \stemUp g^>[ f e d cis b! a g])
  | \stemDown
    \once\override Staff.TextScript.extra-offset = #'(-2 . 1)
    f32^.[\(^\markup {
      \column {
        \small "tranquillo"
        \general-align #Y #-2.5
        \italic\small "sehr weich"
      }
    }\bottom d'_._(_\markup {
      \hspace #-2
      \column {
        \concat { \dynamic p \small\italic " subito" }
        \general-align #Y #-1.5
        \small\italic "II Ped."
      }
    }
    \top a'^. \bottom d,,_.]
    \top f32^.[ \bottom d'_. \top a'^. \bottom d,,_.]
    \top f32^.[ \bottom d'_. \top a'^. \bottom d,,_.]
    \top f32^.[ \bottom d'_. \top a'^. \bottom d,,_.]
    \top f32^.[ \bottom d'_. \top a'^. \bottom d,,_.]
    \top f32^.[ \bottom d'_. \top a'^.\) \bottom d,,_.])
  | \top e^.\([ \bottom d'_._( \top g^. \bottom d,_.]
    \top e^.[ \bottom d'_. \top g^. \bottom d,_.]
    \top e^.[ \bottom d'_. \top g^. \bottom d,_.]
    \top e^.[ \bottom d'_. \top g^. \bottom d,_.]
    \top e^.[ \bottom cis'_. \top g'^. \bottom d,_.]
    \top e^.[ \bottom cis'_. \top g'^.\) \bottom d,_.])
  %95
  | \override Beam.positions = #'(-8 . -8)
    \top d^.\([ \bottom bes'_._( \top f'^. \bottom d,_.]
    \top d^.[ \bottom bes'_. \top f'^. \bottom d,_.]
    \top d^.[ \bottom bes'_. \top f'^. \bottom d,_.]
    \top d^.[ \bottom bes'_. \top f'^. \bottom d,_.]
    \top d^.[ \bottom a'_. \top f'^. \bottom a,_.]
    \top d,^.[\) \bottom a'_.) \top f'( a,])
    \revert Beam.positions
    \top
  | r32 bes[( e bes)]
    \override Beam.positions = #'(7 . 7)
    \bottom a_.[ \top a( f' a,])
    \bottom g_.[ \top g( e' g,])
    \bottom f_.[ \top f( d' f,])
    \bottom e_.[ \top
    \once\shape #'((0 . 0.5) (0 . 0.7) (0 . 0.7) (0 . 0.5)) Slur
    e( d' e,])
    \bottom a_.[ \top
    \once\shape #'((0 . 0.8) (0 . 1.0) (0 . 1.0) (0 . 0.8)) Slur
    e( cis' e,])
    \revert Beam.positions
  | \stemUp\slurDown
    r32_\markup {
      \italic\small "sempre " \dynamic p
    }
    f( d' f  r f, d' f,  r f d' f,  r f d' f,  r f d' f,  r f d' f,)
  | r fis( ees' fis,  r fis ees' fis,  r fis ees' fis,  r fis ees' fis,  r fis ees' fis,  r fis ees' fis,)
  | r g(_> d' g,  r g d' g,  r f!_> d' f,  r f d' f,  r e!_> d' e,  r e d' e,)
  %100
  | r f( d' f,  r f d' f,  r e d' e,  r e d' e,  r e cis' e,  r e cis' e,)
  | \bottom d32[( f d'_.) \top d^.] \bottom d[( f, d_.) \top d^.]^\markup {
      \hspace #-5 \italic\small "distintamente"
    }
    \bottom d[( f a_.) \top a^-]^( <d f a>^-[ a f d])
    \bottom d[( f bes_.) \top bes^-]^( <d f bes>^-[ bes f d])
  | \bottom d[( fis c'_.) \top c^-]^( <fis c'>^-[ c fis, d])
    \bottom d[( fis bes_.) \top bes^-]^( <d fis bes>^-[ bes fis d])
    \bottom d[( fis a_.) \top a^-]^( <d fis a>^-[ a fis d])
  | \bottom d_-[g bes \top bes] <d g bes>[^\markup {
      \hspace #-9 \italic\small "simile"
    } bes g d]
    \bottom e_-[ cis' bes' \top bes] <cis bes'>[ bes \bottom cis, e,]
    \bottom f_-[ d' a' \top a] <d a'>[ a \bottom d, f,]
  | \bottom g_-[ d' g \top g] << { \top f[ \bottom f d g,] } \\ { \stemUp <f' bes d> } >>
    \bottom a,[ d e \top e] <a d e>[ e d a]
    \bottom a[ cis e \top e] <a cis e>[ e cis a]
    \top
  %105
  | \stemUp\slurUp
    \once\override Staff.TextScript.extra-offset = #'(10 . -1)
    r16_\markup {
      \italic\small "crescendo non troppo"
    }
    <d' f>^.( d,^. <d' f>^.)  r16 <d f>^.( <d, a'>^. <d' f>^.)  r16 <d f>^.( <d, bes'>^. <d' f>^.)
  | r16 <d fis> <d, c'> <d' fis>  r16 <d fis> <d, bes'> <d' fis>
    r16 <d fis> <d, a'> <d' fis>
  | r16 <d g> <d, bes'> <d' g>  r16 <d f!> <d, a'> <d' f!>
    r16 <a e'> <cis, g'> <a' e'>
  | r16 <d f> <d, a'> <d' f>  r16 <a cis> <a, e'> <a' cis>
    r16 <a cis> <a, e'> <a' cis>
  | s2.
  %110
  | s2.
  | s2.
  | \stemDown s16. d,,32 a'[ e' d d,]  s16. e32 cis'[ a'^> cis, e,]
    s8 cis'32[ g'^> cis, e,]
  | s8 a32[ f' a, d,]^\markup {
      \column {
        \italic\small "più cresc."
        \general-align #Y #-1.5
        \italic\small "poco accell."
      }
    }
    s8 a'32[_> fis' d d,]  s8 c'32^>[ fis d d,]
  | s8 bes'32^>[ g' bes, d,]  s8 b'!32[ gis'32 b, d,]  s8 d'32^>[ gis d e,]
  %115
  | \set subdivideBeams = ##t
    r32 d c'! c c'^^ c, c d,  r d b'! b <d b'!>^^ b b d,  r d b'! b <d b'>^^ b b d,
  | r cis bes' bes <cis bes'>^^ bes bes cis,  r d a' a <d a'>^^ a a d,  r cis g' g <cis g'>^^ g g cis,
  | \stemUp r d[ fis fis] <d' fis>[^^ fis, fis d] <a a'>4^^\ff <b! b'!>^^
  | <c c'>^^ <g g'>^^ <a a'>^^
  | s2.
  %120

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
  | s2
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <g bes d>16-\markup { \dynamic fz } a bes g
  | s2 <f a c>16 g a f
  | s2 <e g bes>16 f g e
  | s4 <d e a>8 <a' a'>^.^^ <a a'>16 <g g'> <a a'> <e e'>
  %60
  | <f d'> <e cis'> <f d'> a s2
  | <e c'>16 <d b'!> <e c'> g s2
  | s2.*6
  %68
  | s2
    \once\override Beam.positions = #'(-5.2 . -2)
    \once\override Hairpin.rotation = #'(10 -1 0)
    bes,8..\<[ f''32\!]
  | e16\fz s8. s4
    \once\override Beam.positions = #'(-6.2 . -2.5)
    \once\override Hairpin.rotation = #'(10 -1 0)
    a,,8..\<[ e''32\!]
  %70
  | d16\fz s8. s4
    \once\override Beam.positions = #'(-6.2 . -2.5)
    \once\override Hairpin.rotation = #'(10 -1 0)
    g,,8..\<[ d''32\!]
  | s2 s8.
    \once\override NoteColumn.force-hshift = #1.4 <a, a'>16_!
  | \once\override Staff.TextScript.extra-offset = #'(0 . 2.4)
    <a a'>16_!\fz^\markup {
      \column {
        \small "Un poco a piacere, ma sempre energico il ritmo"
        \general-align #Y #-1.4
        \italic\small "Etwas freier, doch stets mit rhythmischer Energie"
      }
    }
    s8. s2
  | s2.*11
  %84
  | s16 e g8  g8 cis!  cis g'16 e
  %85
  | s2.
  | s8 c'!( <ees a> <fis! c'> <a ees'>) s
  | s bes,( <cis g'> <ees! bes'> <g cis>)\< s16 s16\!
  | s2.*2
  %90
  | s2.*15
  %105
  | s8 d_- s d_- s d_-
  | s8 d_- s d_- s d_-
  | s8 d s d s cis
  | s8 d s a s a
  | s2 s16. d,32 s8
  %110
  | s16. d32 s8 s2
  | s4 s16. f32 s4
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
  | s2.*2
  | s4 c''16\rest s8. s4
  | s4 c16\rest s8. s4
  | s4 c16\rest s8. s4
  %55
  | s2.*5
  %60
  | s4 s8. <f, d'>16^\markup { \italic\tiny "m.d." }[ g] s8.
  | s4 s8. <e c'>16^\markup { \italic\tiny "m.d." }[ f] s8.
  | s4 s8. <d bes'>16^\markup { \italic\tiny "m.d." }[ e!] s8.
  | s2.*5
  %68
  | s2 g32( a bes c d e f g^.)
  | s2 f,32( g a bes c d e f^.)
  %70
  | f16^! s8. s4 e,32( f g a bes c d e^.)
  | s2 \stemDown
    \autoBeamOff
    \showStaffSwitch
    a8.^>_\markup { \italic\tiny "ten." }
    \top \once\override NoteColumn.force-hshift = #1.4 \hideNotes a,32 s \unHideNotes
    \hideStaffSwitch
    \autoBeamOn
  | \bottom s2 s16 <d, d'>^![^\markup { \italic\tiny "pesante" }
    \grace { c16[ d'] } <c, c'>^! <bes bes'>^!]
  | s2 s16 <c c'>^![ \grace { bes16[ c'] } <bes, bes'>^! <a a'>^!]
  | s2.*3
  %77
  | s8 \clef treble <a'' d f>^.(\p r <bes d f>^. r <b! d f>^.)
  | s8 \clef treble <a c e>^.( r <g c e>^. r <fis c' ees>^.)
  | s8 \clef treble <g bes d>^.( r <f! bes d>^. r <e bes' cis>^.)
    \once\shape #'((1 . 0.3) (0 . 0) (0 . -0.5) (0 . 0)) Slur
  %80
  | a,,16_( d f a  d a f d  a e' \top g cis)
  | \bottom s8 d,[( f gis b!)] s
  | s c,![( ees fis a)] s
  | s bes,![( cis\< ees_\markup {
      \italic\tiny "poco"
    } e!)]\! s
  | s2.*7
  %91
  | s2 s8 g''!^!
  | s2.*5
  %97
  | d,16_\markup {
      \italic\tiny "sempre pedale"
    }
    r a'_._(_\markup {
      \italic\small "poco marcato e tenuto"
    } d,_.)  r16 d[(^. a'^. d,^.])   r16 d[(^. bes'^. d,^.])
  | r16 ees[(^. c'^. ees,^.])  r16 ees[(^. c'^. ees,^.])  r16 ees[(^. c'^. ees,^.])
  | r16 d[(^. bes'^. d,^.])  r16 d[(^. bes'^. d,^.])  r16 d[(^. bes'^. d,^.])
  %100
  | r16 d[(^. a'^. d,^.])  a^.[( g'16\rest a^._>]) r16  a,^.[( g'16\rest g^._>]) r16
  | s2.*4
  %105
  | s8 f'^- s f^- s f^-
  | s8 fis^- s fis^- s fis^-
  | \autoBeamOff
    s g d,^- f' cis,^- e'
  | d,^- f' a,,^- cis' s cis
    \autoBeamOn
  | \once\shape #'((0 . -4) (0 . 0) (0 . 0.5) (0 . 0)) Slur
    \once\override Staff.TextScript.extra-offset = #'(0 . -1.5)
    \once\override Hairpin.rotation = #'(25 0 -5)
    d,32[(^\<_\markup {
      \column {
        \small "Pedale ogni quarto"
        \general-align #Y #-1.5
        \italic\small "Pedal zu jedem Viertel"
      }
    }
    f d' \top f]\!  \stemDown d'^>[\> f, d f,])\!
    \once\override Hairpin.rotation = #'(25 0 -5)
    \once\shape #'((0 . -4) (0 . 0) (0 . 1.5) (0 . -1)) Slur
    \bottom d,[(^\< a' f'] \top d\!
    a'^>[\> f'^\markup {
      \column {
        \concat {
          \italic\small "sempre più " \dynamic f \italic\small " poco a poco; animando il tempo"
        }
        \general-align #Y #-1.5
        \italic\small "non legg."
      }
    } a, d,])\!
    \once\shape #'((0 . -5) (0 . 0) (0 . 1.5) (0 . -2)) Slur
    \bottom d,( a' c f  \top a^>[ f' c d,])
  %110
  | \once\shape #'((0 . -5) (0 . 0.7) (0 . 0.8) (0 . -1)) Slur
    \bottom g,,( g' bes f'  \top g^>[ f' bes, d,])
    \once\shape #'((0 . -4) (0 . 1) (0 . 1.5) (0 . -2)) Slur
    \bottom g,[( bes e] \top d  g^>[ e' bes d,])
    \once\shape #'((0 . -3) (0 . 0.5) (0 . 1) (0 . 0)) Slur
    \bottom a,[( f' ees'] \top c  f^>[ ees' f, c])
  | \once\shape #'((0 . -4) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    \bottom bes,([ f' ees'] \top bes  f'[ ees' f, bes,])
    \once\shape #'((0 . -5) (0 . 1.5) (0 . 2.5) (0 . -2)) Slur
    \bottom bes,[( f' d' bes']  \top d[ bes'^> d, f,])
    \bottom bes,,32[ g' e'!] \top d  g[ e'!^> d d,]
  | \bottom a,32 e' a e'  s8  a,,32 e' cis' a'  s8  e,32[ cis' g'] \top e  s8
  | \bottom d,32[ a' f'] \top d  s8  \bottom d,32[ a' fis'] \top d  s8
    \bottom d,32[ c' fis] \top d  s8
  | \bottom d,32[ bes' g'] \top d  s8  \bottom d,32[ b'! gis'] \top d  s8
    \bottom e,32[ d' gis] \top e  s8
  %115
  | \bottom s8 \clef treble <fis d'>^^ s g^^ s f^^
  | s8 e^^ s f^^ s e^^
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
  | \stemDown g'^. e^. f^. cis^. d <c! c'!> <bes bes'> <a a'>_\markup {
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
  | <c c'>8 r16 c'' \stemDown <g e'>[ <f d'> <g e'>] g,16\rest <a, a'> <g g'> <a a'> <f f'>
  | <bes bes'>8 r8 <f'' d'>16[ <ees c'> <f d'>] g,16\rest <g, g'> <f f'> <g g'> <e e'>
  | \stemUp <a a'>_._^ \top <e''' cis'> <g e'> <cis g'>
    \bottom <a,, a'>_._^ \top <d' a'> <f d'> <a f'>
    \once\override Beam.positions = #'(7.5 . 7.5)
    \bottom <a, a'>_._^ \top <cis g'> <e cis'> <g e'>
  | \bottom
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <d,, d'>16_._^_\markup {
      \hspace #2
      \italic\tiny "staccatissimo"
    }
    s8. s4 bes''^\markup { \italic\tiny "ten." }\fz(
  %65
  | <c e c'>16_!^\fz) s8. s4 a^\markup { \italic\tiny "ten." }\fz(
  | <bes d bes'>16_!^\fz) s8. s4 g\fz(
  | <a e' a>8_!^\fz) r16. a32_!\< bes!8_!\! r16. g32_.\< a8_.\! r16. cis32_.\<
  | d16\!_! \clef bass <d,, d'>[ <f f'> <a a'>] <f f'> <d d'> <f f'> <a a'> \stemDown g8.. g'32
  | <c g'>16^. \stemUp <c,, c'>[ <e e'> <g g'>] <e e'> <c c'> <e e'> <g g'> \stemDown f8.. f'32
  %70
  | bes16 \stemUp <bes,, bes'>[ <d d'> <f f'>] <d d'> <bes bes'> <d d'> <f f'> \stemDown e8.. e'32
  | <a e'>16^.^>_\markup { \dynamic fz \italic\tiny "marcatiss." }
    a32[^( b! cis16^!) e^!] cis^! a^! cis^! e^! s8. \stemUp <a,,, a'>16_!
  | \stemDown\autoBeamOff
    <d d'>16
    \once\override Staff.TextScript.extra-offset = #'(0 . 0)
    <d, d'>8._\markup { \italic\tiny "ten." }(
    \autoBeamOn
    \grace { e'32 f g a b! cis d e f g a b! cis! }
    \stemUp \clef treble d16_._>) e32 f g a bes c! \stemDown d16^!
    \clef bass <d,,,, d'>16[ <c c'> <bes bes'>]
  | \omit TupletNumber
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/16)
    \tuplet 12/8 {
      <c c'>32_^( \magnifyMusic 0.75 {
        d'' e  fis g a  bes c d  e fis g
      }
    }
    \set subdivideBeams = ##f
    \clef treble
    \stemUp\slurUp
    \tuplet 10/8 {
      a16_.) bes32( c d e fis g a bes
    }
    \stemDown c16^.)
    \clef bass <c,,,,, c'>16[ <bes bes'> <a a'>]
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/16)
    \tuplet 12/8 {
      <bes bes'>32 \clef treble
      \magnifyMusic 0.75 {
        g'''( a  bes c d  e fis g a bes c
      }
    }
    \set subdivideBeams = ##f
    d32^!) bes( c d e fis g a  bes c d c bes a g f!
    \undo\omit TupletNumber
  %75
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/4)
    <a, e'>^.^>)[ a'_( g f e d cis b!  a b! cis d e f g a  b! cis d e f g a bes^>]
  | g[ e cis bes g e cis bes  \clef bass g e cis bes g e cis bes]  g e cis bes g e cis bes)
    \set subdivideBeams = ##f
  | \stemUp <d d'>2._\markup { \dynamic ffz ">" \dynamic p }
  | \clef bass \stemDown d'2.
  | \clef bass d2.
  %80
  | \clef bass d2.
  | \stemUp <d, d'>8_-\sustainOn s4 s8 s8\sustainOff \stemDown <d' d'>8[_(
  | <cis cis'>8 <c! c'!>)]\sustainOn
    s4. <c c'>8[_(\sustainOff
  | <b! b'!> <bes bes'>)]\sustainOn s8 s s\sustainOff <bes bes'>8_(
  | <a a'>) \stemUp <e' e'>_.[\pp_( <cis cis'>_. <bes bes'>_. <g g'>_. <cis,! cis'!>_.]
  %85
  | <d d'>16_.) \clef treble \slurDown bes''''_.[^\( <f bes>( <d gis>)]
    <d gis>( <bes f'>) <bes f'>( <gis d'>)
    \clef bass \stemDown <gis d'> <d b'!> <b! gis'!> <gis! e'>\)
  | \stemUp <cis,! cis'!>16_- \clef treble \slurDown a'''_.[\( <ees! a>( <c! fis>)]
    <c fis>( <a ees'!>) <a ees'>( <fis c'>)
    <fis c'> \clef bass <cis a'> <a fis'> <fis d'>\)
  | \stemUp <b,! b'!>16 \clef treble \slurDown g'''_.[\( <cis, g'>( <bes ees>)]
    <bes ees>( <g cis>) <g cis>( <ees bes'>)
    \clef bass \stemDown <ees bes'>
    \once\override Staff.TextScript.extra-offset = #'(0 . 1)
    <bes g'>^\markup { \italic\tiny "più" } <g e'!> <e! cis'>\)
  | \stemUp <a, a'>16_! \stemDown\slurUp <cis'' e>[^\markup {
      \italic\tiny "più cresc."
    } <cis e> <bes cis>]
    <bes cis>( <g e'>) <g e'>( <e cis'!>)   <e cis'>( <cis! bes'>) <cis bes'> <a a'>
  | \stemUp <d, d'>8 r \clef treble f'''32[(^> e d cis] d[ e f g]) r8
    \clef bass \stemDown <d,, f d'>^!
  %90
  | <c e a c>^!\fz r8  \clef treble c'''32[(^> b! a gis] a[ b! c d])
    r8 \stemUp\slurDown <c,, e a>_.
  | <b! f' a>8_. r
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \stemDown f''32^>[^( e d f e d f e] d16^.) r <d, bes' d>8
  | \stemUp <e bes' d>8_. r bes'32[_>( a g bes a g bes a] g16_.) r <a, e' a>_.\fz r
    \set subdivideBeams = ##f
  | s2.*3
  %96
  | \stemDown g2( a4)
  | s4 a_- bes_-
  | c_- bes_- a_-
  | bes_- a_- g_-
  %100
  | a_- a_- a_-
  | \new Staff = "ossia"
    \with {
      alignBelowContext = "lower"
      fontSize = #-3
      %\remove "Time_signature_engraver"
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      \omit Staff.TimeSignature
    } {
      %\key d \minor   % FIME: this introduces an empty stave at the end of the previous line
      \stemDown d32[^\markup {
        \hspace #-4 \tiny "ossia:"
      }_\markup {
        \hspace #-1 \italic\tiny "m.s."
      } f d']
      \stemUp d^\markup { \hspace #-1 \italic\tiny "m.d." } f[ d] \stemDown d[ f,] d[ f a]
      \stemUp a <d f a>[ a] \stemDown a[ f] d[ f bes] \stemUp bes <d f bes>[ bes] \stemDown bes[ f]
  |   \stemDown d[ fis c'] \stemUp c <fis c'>[ c] \stemDown c[ fis,] d[ fis bes]
      \stemUp bes <d fis bes>[ bes] bes[ fis] d[ fis a] \stemUp a <d fis a>[ a] \stemDown a[ fis]
  |   d[ g bes] \stemUp bes <d g bes>[ bes] \stemDown bes[ g] s2
  |   s4 a32[ d e] \stemUp e <a d e>[ e] \stemDown e[ d] a[ cis e] \stemUp e <a cis e>[ e cis] \stemDown a
    }
  %105
  | \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    d,32 a' f' a, f' a, d, a'  d, a' f' a, f' a, d, a'  d, bes' f' bes, f' bes, d, bes'
  | d, c' fis c fis c d, c'  d, bes' fis' bes, fis' bes, d, bes'
    d, a' fis' a, fis' a, d, a'
  | d, bes' g' bes, g' bes, d, bes'  d, a' f'! a, f' a, d, a'  cis, g' e' a, e' a, cis, a'
  | d, f f' a, f' a, d, a'  a, e' cis' e, cis' e, a, e'  a, e' cis' e, cis' e, a, e'
  | s4 \clef bass d, d
  %110
  | g,2*1/2 g'8 s a,4
  | bes bes bes
  | a a2*1/2 e'8 s
  | d4 d_> d
  | d d_> d_>
  %115
  | <fis, fis'> \clef bass <g g'> <f! f'!>
  | <e e'> <f f'> <e e'>
  << {
  %117 (lower)
  | r4 \clef treble r32 <d'' a'>[ <f! d'>] \stemUp <f'! d' f!>[ <f d' f>^^ a] \stemDown <f, d'>[ <d a'>]
    r32 <d g> <f! d'> \stemUp <f'! d' f!>[ <f d' f>^^ g] \stemDown <f, d'> <d g>
  | d4 e f
  }
  %117 (lowerlower)
  | \new Staff = "lowerlower"
    \with {
      alignBelowContext = "lower"
      \omit Staff.TimeSignature
      \clef bass
    } {
  |   \stemUp <d,, d'>4*1/2 d''8^^ <a,, a'>4_^\ff <b! b'!>_^
  |   <c c'>_^ <g g'>_^ <a a'>_^
    }
  >>
  | s2.
  %120

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
      \RemoveEmptyStaves
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 56
  }
}
