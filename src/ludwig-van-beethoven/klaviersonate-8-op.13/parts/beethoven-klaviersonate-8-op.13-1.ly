Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Hairpin.minimum-length = #7
  \override Parentheses.font-size = #1
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
    \autoBeamOff <f c aes>)^! \stemNeutral aes~\sf \autoBeamOn
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
    <cis cis'>8[(_\markup { \italic "cresc."  }
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
  | <ees c'>_! <e c'>2 <bes' e>4^!
  | <aes f'>^! <e' g>^! <f aes>^! <d b'>^!
  %15
  | <c ees g c>2 \stemUp g'
  | ees d
  | <ees, c'>1~
  | <ees a c>2 <d f b>
  | \once\override Staff.TextScript.extra-offset = #'(-0.8 . 0)
    <c ees c'>4_\markup { "(" \dynamic p ")" } c2 <bes e>4_!
  %20
  | <aes f'>_! <e' g>_! <f aes>_! <d b'>_!
  | <ees c'>_! <e c'>2 <bes' e>4^!
  | <aes f'>^! <e' g>^! <f aes>^! <d b'>^!
  | <c ees g c>2 \stemUp g'
  | ees d
  %25
  | <ees, c'>1~
  | <ees a c>1
  | \stemNeutral <d g b>4\p r <g g'>2~\sf
  | q4 r q2~\sf
  | q8 f' d b g f d b
  %30
  | \stemUp c ees c \bottom g fis c' aes fis
  | g4 \top\stemNeutral r <g' g'>2~
  | q4 r q2~
  | q8 f' d b g f d b
  | \stemUp c ees c \bottom g fis c' aes fis
  %35
  | g4 \top\stemNeutral\slurNeutral
    \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    fis'_!_\markup { \italic "cresc." }
    g_! <fis c'>_!
  | <g b>_! <c fis>-! <b g'>-! <fis' c'>-!
  | <g b>^! r r2
  | <bes,, des ees>1_(\sf
  | <c ees>4) des'-! c-! <d g>-!
  %40
  | <c aes'>-! <g' des'>-! <aes c>-! <g des'>-!
  | <aes c>-! r r2
  | <c,, ees ges>1\sf(
  | <d f>4) <a' ees'>-! <bes d>-! <ees a>-!
  | <d bes'>-! <a' ees'>-! <bes d>-! <a ees'>-!
  %45
  | <bes d>-! r <ees, a>2\sf(
  | <d bes'>4) r <ees, a>2\sf(
  | <d bes'>4) r <a e'>2^\sf(
  | <bes d>4) a bes a
  | bes a\p( bes a
  %50
  | bes a bes a)
  }

}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  %1
  | s1*3
  | \override Stem.length = #24
    s4.
    \omit Flag
    \once\override Staff.TextScript.extra-offset = #'(0.6 . -1)
    e8_\markup {
      \whiteout \italic "cresc."
    }
    f s4 s8
  %5
  | s1*4
  | s4 f8\rest f'16 f ees8 s4.
  %10
  | s1*5
  %15
  | \revert Stem.length
    s2
    \once\override Staff.TextScript.extra-offset = #'(-3 . -2)
    <g b f'>_\markup { \italic "cresc." }
 | <g c>2 <f a>
  | g fis
  | s1*5
  %23
  | s2
    \once\override Staff.TextScript.extra-offset = #'(-3 . -2)
    <g, b f'>_\markup { \italic "cresc." }
  | <g c>2 <f aes>
  | g fis

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  %1
  | \override Stem.length = #16
    \omit Flag \autoBeamOff
    <ees g>4~ q16. g32 16. 32 a4 b8 s
  | s1*3
  %5
  | s2. <f aes b>16. q32 <f aes c>16. q32
  | <f aes d>8 s4. s8. s32 g a16. 32 bes16. 32
  | a8 s s2.
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
  | ees'4 ~ 16.[ 32 d16. c32] c4( b16^!)[ b32\rest ees32 d16. c32]
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
  | <g b f'>8 r r \clef treble <g'' d'>16[(^! <g d'>)^!] <aes c>8 r r4
  %10
  | r r8 \clef bass <f, c' d>16[(^. q^.])
    <g c es>8 r <f d g,>8*1/2
    \once\override Staff.TextScript.extra-offset = #'(6 . 0)
    s16_\markup {
      \italic\small "attacca subito il Allegro"
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
  | R1 \clef treble
  }
}

centerDynamics = {
  %1
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
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
