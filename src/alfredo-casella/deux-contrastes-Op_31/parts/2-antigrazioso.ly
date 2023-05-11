Global = {
  \key c \major
  \time 2/4
  \include "./../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2

  \stemNeutral\slurNeutral
  \tempo \markup { \bold "Allegro vivace e grottesco" }
  \partial 32*9 \ottava 1 c'32( des'8^.) aes^. \ottava 0
  %1
  | d,8..^> g,32 des'8^. aes^.
  | d,8..^> g,32
    des'16_.[ aes_. d,_.]
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/4)
    %\set beatStructure = 1,3,2,2
    \clef bass \stemDown g,16-.[
    \break
  | des'-. aes-. d,-.] <des ges>-.[\< <c f>-. <bes ees>-. <a d!>-. <aes des>-.
  | <g c>-. <ges ces>-. <f bes>8-.] \stemUp <f bes>_.[\!\sf q_.
    \set subdivideBeams = ##t
  %5
  | q_. q_. q_.] f_.[
  | \time 3/4
    \override Hairpin.Y-offset = #-3.5
    \once\override Hairpin.X-offset = #-2.5
    f_. f_. f_.] r8 r4
  | \time 2/4 \stemDown
    <ges' bes>16-.[ q-. q-. q-.] <fes aes>8-.[ <ges bes>-.]
  | <des ges>-.[ <ges bes>-.] \stemUp \acciaccatura des'8
    \stemDown <f,! g b! e>4
  | <ges bes>16-.[ q-. q-. q-.] <fes aes>8-.[ <g bes>-.]
  %10
  | <d! ges>-.[ <ees aes>-.] <f a! b>4
  | \clef treble
    \stemUp <bes ees aes>16_.[\f q_. q_. q_.]
    \override Staff.TextScript.extra-offset = #'(-1.5 . -2.5)
    <bes ees aes>8_. s
  | s1*1/2
  | \stemNeutral <b'' e a>16-.[ q-. q-. q-.] <b e a>8-.
    \stemUp <f, bes ees>16[ <aes des>
  | <f bes ees> <aes des> <f bes ees>8^.]
    \clef bass \stemDown <a, d>8[ <fis b>
  %15
  | \time 5/8 r8 <a, d g>] r4 r8 \clef treble
  | \time 2/4 \stemUp <ges'' bes>16[( <f a> <ges bes>8_.]) <f a des>_.[ <fes aes>_.
  | <ees g b!>_. <f! bes c>_.] <d gis cis e>4
  | <ges bes>16[( <f a> <ges bes>8_.]) <f a des>_.[ <e gis b!>_.
  | <ees g!>_. <d e! gis c>_.] <a ces des f>4
  %20
  | \stemDown <c' ees g>16-.[ q-. q-. q-.]
    <c ees g>8-.[ <bes d f a>-.
  | <c ees g>-. <bes des f>-. <c ees g>-. <b d! f a>-.]
    \break
  | \ottava 1
    \once\override Staff.TextScript.extra-offset = #'(-4.8 . -3.8)
    a''32[(^\markup { \small "(sotto)" }
    \once\override Staff.TextScript.extra-offset = #'(-4.5 . -2)
    d^\markup { \small "stringendo" } b g e16-.])
    \ottava 0
    r16 a,32[( d b g e16-.]) r16
  | \stemUp a,32[( d b g e16_.)] r16
    \once\override Beam.positions = #'(1.5 . 1.2)
    a,32[^( d b g \bottom e16_.)] \top \once\override Voice.Rest.X-offset = #1 r16
  | \tempo \markup { \small\bold "Più mosso" }
    \time 5/8
    c'16-.[ c-. c-. c-. c8-.] e-.[ des-.
    \break
  %25
  | \time 2/8 \bottom <fis, b>-. <ees aes>-.
  | \time 3/4 fis-. ees-.] \top r4 r
  | \tempo \markup {
      \hspace #4
      \small \dynamic mp \normal-text \italic\small "ingenuamente"
    }
    \time 2/4 r4 bes'_\(
  | bes des
  | ees4. des8
  %30
  | \time 3/4
    \acciaccatura { des16[ ges] } ees8[ des]\) bes16[\( ees des ees] aes8[ g]
  | \time 2/4 \stemDown aes[ des des \stemUp \acciaccatura ges8 \stemDown ees]
  | \time 3/4 \stemNeutral des4^- aes^- ees^-\)
  | \tempo \markup {
      \hspace #5
      \normal-text\italic\small "un poco capriccioso"
    }
    \time 2/4 ges8_.[ aes16( ges] ees16[ ges des8_.)]
  | ees_.[ des16( ees] \clef bass bes[ aes bes8^.])
  %35
  | \time 2/8 ges16( g! aes a!
  | \time 3/8 bes8^.) b! g~\(
  | \time 2/4 g2~
  | g4 e
  | cis ees~
  %40
  | \tupletDown\tuplet 6/4 { ees!16 cis ees cis ees cis } ees4~
  | ees cis8[_\markup {
      \hspace #2 \whiteout
      \italic\small "perdendosi"
    } ees~]
  | ees2
  | \once\override Hairpin.Y-offset = #1
    cis4_~\> \tupletUp\tuplet 3/2 { cis4\! ees8~ }
  | ees2~
  %45
  | 4~ 8\)\fermata r\fermata
  | \tempo \markup { \small\bold "Tempo I" }
    r8 r16. \clef treble \ottava 1 c'''32( des'8^.) aes^. \ottava 0

  | d,8..^> g,32 des'8^. aes^.
  | d,8..^> g,32
    des'16_.[ aes_. d,_.]
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/4)
    %\set beatStructure = 1,3,2,2
    \clef bass \stemDown g,16-.[
    \break
  | des'-. aes-. d,-.] <des ges>-.[ <c f>-. <bes ees>-. <a d!>-. <aes des>-.
  %50
  | <g c>-. <ges ces>-. <f bes>8-.] \stemUp <f bes>_.[ q_.
    \set subdivideBeams = ##t
  | q_. q_. q_.] f_.[
  | \time 3/4 f_. f_. f_.] r8 r4
    \clef treble
  | \time 2/4 <ges'' bes>16[( <f a> <ges bes>8_.)] <f a des>8_.[ <fes aes>_.
  | <ees g b!>_. <f! bes c>_.] <d gis cis e>4
  %55
  | <ges bes>16[( <f a> <ges bes>8_.]) <f a des>_.[ <e gis b!>_.
  | <ees g!>_. <d e! gis c>_.] <a ces des f>4
  | \stemDown <c' ees g>16-.[ q-. q-. q-.] <c ees g>8-.[ <bes d f a>-.
  | <c ees g>-. <bes des f>-. <c ees g>-. <b d! f a>-.]
  | \ottava 1 a''32[( d b g e16-.]) \ottava 0 r16 a,32[( d b g e16-.]) r16
  %60
  | \stemUp a,32[( d b g e16_.)] r16
    \once\override Beam.positions = #'(1.5 . 1.2)
    a,32[^( d b g \bottom e16_.)] \top \once\override Voice.Rest.X-offset = #1 r16
  |  \set subdivideBeams = ##f
     \clef bass r8 \stemDown <ees g>16-.[ q-. q-. q-. <ees g>8-.]
  | \time 3/8 <d ges>-.[ <des f>-. c-.]
  | \time 2/4 r8
    \appoggiatura {
      \override Stem.details.beamed-lengths = #'(5.8)
      \stemUp ges,32[ aes bes]
    } a8_! r4\fermata
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 32*9 s32*9
  %1
  | s2*5
  | s1*3/4
  | s2*8
  | s1*5/8
  | s2
  | s4 g16[( ees g8)]
  | s2
  | s4 ees16[( c! ees8-.)]
  | s2*4
  %24
  | \stemUp
    \omit Beam
    \crossStaff {
      <des g>16[ q q q <des g>8] <fis b> <ees aes>
    }
    \undo\omit Beam
  | s1*2/8
  | s1*3/4
  | s1*1/2*3
  | s1*3/4
  | s1*1/2
  | s1*3/4
  | s1*1/2*2
  | s1*2/8
  | s1*3/8
  | s1*1/2*9
  %46 (Tempo I)
  | s1*1/2*6
  | s1*3/4
  | s1*1/2
  %54
  | s4 g16[( ees g8-.])
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral
  \partial 32*9 \clef treble cis32( d'16^.)[ a^. g'^. bes,^.]
  %1
  | ees8..^> aes,32 d,16-.[ e'!-. a,!-. d,-.]
  | des8.. aes32 d!16[ a! \clef bass ees] aes,-.[
  | d-. a!-. ees-.] g-.[ ges-. f-. e-. ees-.
  | d-. des-. c8-.] c-.[ c-.
  %5
  | c-. c-. c-.] c-.[
  | \time 3/4 c-. c-. c-. c-. c-. c-.]
  | \time 2/4 <c aes'>-.[ <aes' des>-. <c, aes'>-. <aes' des>-.]
  | <c, aes'>-.[ <aes' des>-. <c, aes'>-. <aes' d>-.]
  | <c, aes'>-.[ <aes' des>-. <c, aes'>-. <aes' des>-.]
  %10
  | <c, aes'>-.[ <aes' des>-. <c, aes'>-. <aes' d>-.]
  | <g c f>16-.[ q-. q-. q-.] <g c f>8-.
    \stemUp
    \once\override Beam.positions = #'(5.8 . 9)
    \once\shape #'((0 . 0) (0 . 2) (0 . 1) (0 . 0)) PhrasingSlur
    bes32[^\( ees ges aes
  | \tupletUp\tuplet 20/16 {
      \override Hairpin.Y-offset = #0
      \once\override Hairpin.rotation = #'(2 -1 0)
      \top\stemDown <a b>32\< d g f \bottom\stemUp \clef treble bes, ees ges aes
      \top\stemDown <a b> d g f \bottom\stemUp bes, ees ges aes \top\stemDown <a b> d g f]\)\!
    }
    \bottom
  | \stemNeutral <gis,, cis fis>16^.[ q^. q^. q^.] <gis cis fis>8^.
    \clef bass <g, c>16[ <a d>]
  | <g c> <a d> <g c>8] \stemUp <b, e>-.[ <gis cis>-.
  %15
  | f-. e-. ees-. ges-. des-.]
  | \stemDown <c g'>^.[ <g' ees'>^. <ees bes'>^. <bes' ges'>^.
  | <fis cis'>^. <cis' a'>^.] <bes aes' ces>4
  | <c, g'!>8^.[ <g' ees'>^. <ees bes'>^. <bes' ges'>^.
  | <fis cis'>^. <cis' a'>^.] <bes ges'>4
  %20
  | \clef treble \stemUp <des' fes aes>16-.[ q-. q-. q-.] <des fes aes>8-.[ <aes c ees ges>-.
  | <des fes aes>-. <aes c ees ges>-. <des fes aes>-. <aes c ees ges>-.]
  | \stemDown \ottava 1
    <aes''' des>16^.[_\markup { \small "(sopra)"
    }
    f\rest <ees bes'>^.] r16
    \ottava 0
    <aes, des>16^.[ f\rest <ees bes'>^.] r16
  | \stemUp <aes, des>16-.[ a\rest <ees bes'>-.] r16
    \clef bass \stemDown
    <aes, des>16[ f\rest <ees bes'>] \once\override Voice.Rest.X-offset = #1 r16
  | \time 5/8 <e,! a>16-.[ q-. q-. q-. <e a>8-.] <g c>8-.[ <f bes>-.
  %25
  | \time 2/8 <g c>-. <f bes>-.
  | \time 3/4 <g c>-. <f bes>-. <g c>-._\markup {
      \italic\small "(sempre molto stacc.)"
    }
    <f bes>-. <g c>-. <f bes>-.]
  | \stemUp \time 2/4 <g c>-.[ <f bes>-. <g c>-. <f bes>-.]
  | <g c>-.[ <f bes>-. <g c>-. <f bes>-.]
  | <g c>-.[ <f bes>-. <g c>-. <f bes>-.]
  %30
  | \time 3/4
    % workaround to avoid two time signes (why?)
    \grace { \hideNotes c16 c \unHideNotes }
    <g' c>8-.[ <f bes>-. <g c>-. <f bes>-. <g c>-. <f bes>-.]
  | \time 2/4 <g c>-.[ <f bes>-. <g c>-. <f bes>-.]
  | \time 3/4 <g c>-.[ <f bes>-. <g c>-. <f bes>-. <g c>-. <f bes>-.
  | <g c>-. <f bes>-.] <g c>-.[ <e b'!>-.
  | <g c>-. <e b'>-. <g c>-. <e b'>-.
  %35
  | \time 2/8 <g c>-. <e b'>-.]
  | \time 3/8 \stemDown <ees' aes>^.[ <c f>^. <a d>^.]
  | \time 2/4 \stemUp <f bes>-.[ <d a'>-. <f bes>-. <d a'>-.]
  | <f bes>-.[ <d a'>-. <f bes>-. <d a'>-.]
  | <f bes>-.[ <d a'>-. <f bes>-. <d a'>-.]
  %40
  | <f bes>-.[ <d a'>-. <f bes>-. <d a'>-.
  | <f bes>-. <d a'>-.] r4
  | <f bes>8-.[ <d a'>-. <f bes>-. <d a'>-.]
  | \tupletUp\tuplet 3/2 { r4 <f bes>8-.[ r <d a'>-.] r }
  | <f bes>8-.[ r <d a'>-.] r
  %45
  | r <f bes>8-. r4\fermata
  | r8 r16. \stemNeutral \clef treble cis''32( d'16^.)[ a^. g'^. bes,^.]
  | ees8..^> aes,32 d,16-.[ e'!-. a,!-. d,-.]
  | des8.. aes32 d!16[ a! \clef bass ees] aes,-.[
  | d-. a!-. ees-.] g-.[ ges-. f-. e-. ees-.
  %50
  | d-. des-. c8-.] c-.[ c-.
  | c-. c-. c-.] c-.[
  | \time 3/4 c-. c-. c-. c-. c-. c-.]
  | \time 2/4 \stemDown <c g'>^.[ <g' e'>^. <ees bes'>^. <bes' ges'>^.
  | <fis cis'>^. <cis' a'>^.] <bes aes' ces>4
  %55
  | <c, g'!>8^.[ <g' ees'>^. <ees bes'>^. <bes' ges'>^.
  | <fis cis'>^. <cis' a'>^.] <bes ges'>4
  | \clef treble \stemUp <des' fes aes>16-.[ q-. q-. q-.] <des fes aes>8-.[ <aes c ees ges>-.
  | <des fes aes>-. <aes c ees ges>-. <des fes aes>-. <aes c ees ges>-.]
  | \stemDown \ottava 1 <aes''' des>16^.[ f\rest <ees bes'>^.] r16 \ottava 0
    <aes, des>16^.[ f\rest <ees bes'>^.] r16
  %60
  | \stemUp <aes, des>16-.[ a\rest <ees bes'>-.] r16
    \clef bass \stemDown
    <aes, des>16[ f\rest <ees bes'>] \once\override Voice.Rest.X-offset = #1 r16
  | r8 \stemUp <f, b>16-.[ q-. q-. q-. <f b>8-.]
  | \time 3/8 <ees a>-.[ <d aes'>-. <des g>-.]
  | \override Stem.details.beamed-lengths = #'(8.5)
    \time 2/4 r8 \appoggiatura { d,!32[ des] } <c g'>8_! r4\fermata
  \fine
}

centerDynamics = {
  \override Parentheses.font-size = #1
  \partial 32*9 s32(_\markup {
      \dynamic f \small "allegramente"
    } s4
  | s2*4
  %5
  | s8\sf s4 s8\sf
  | s8\> s8 s8 s8 s8 s8\!
  | \once\override Staff.TextScript.extra-offset = #'(-2 . 1.5)
    s8_\markup { \dynamic p \small "leggiero" } s4.
  | s4 s4\sf\>
  | s4\! \parenthesize\p s4
  %10
  | s4 s4\sf\>
  | s4\! s16 s8.\mf
  | s2
  | s4\f s8 s\parenthesize\f
  | s4 s4\parenthesize\f
  %15
  | s8\> s2
  | s8\!\p s4.
  | s4 s4\sf\>
  | s8\!\parenthesize\p s4.
  | s4 s4\sf\>
  %20
  | s8\!\f s s\< s
  | s2
  | s2\!\ff
  | s2
  | s4.-\markup { \hspace #-2 \dynamic sf }
    \after 16 \< s4-\markup { \hspace #-2 \dynamic sf }
  %25
  | s4
  | s4 s4\!\p s4
  | s2*3
  %30
  | s4 s4\< s4
  | s2
  | s4\!\> s2
  | s4\! s4
  | s2
  %35
  | \override Hairpin.to-barline = ##f
    s4\<
  | s8\!\sf\> s4
  | s4\!\p s4
    \override Hairpin.to-barline = ##t
  | s4 s4-\markup { \italic\small "dim." }
  | s4-\markup { \hspace #-1.5 \italic\small "(senza rall.)" } s4

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
    %composer = "Alfredo Casella"
    %opus = "Op. 31"
    title = \markup {
      \fill-line {
        \center-column {
          \line { "II. ANTIGRAZIOSO" }
          \null\null
        }
      }
    }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
