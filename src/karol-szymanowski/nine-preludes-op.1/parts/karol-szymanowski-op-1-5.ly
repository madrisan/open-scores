Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

sfff = #(make-dynamic-script "sfff")

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \autoBeamOff
  \omit TupletBracket \omit TupletNumber
  \stemNeutral
  \tempo \markup { Allegro molto - impetuoso }
  \clef bass
  \partial 8
    \once\shape #'((0 . -2) (0 . 1.5) (0 . 1.5) (0 . 0)) PhrasingSlur
    d8~[\(
  %1
  \tuplet 3/2 {
  | d <f d'>] f4 <a f'>8 a4  <d a'>8 \clef treble \tieNeutral d~[
  | d <f d'>] f4 <a f'>8 e4 <a e'>8 d,~[
  | d <a' d>]
    \once\override TextScript.outside-staff-priority = ##f
    \override TextScript.extra-offset = #'(0 . 1)
    a,4^\markup { "simile" } <d a'>8 g,4 <d' g>8 \clef bass f,~[
  | f <c' f>] d,4 <b' d>8 d,4 <bes' d>8\) d,~[
    \break
  %5
  | \once\shape #'((0 . -1) (0 . 2) (0 . 1.5) (0 . 0)) PhrasingSlur
    d\( <a' d>] \clef treble f4 <d' f>8 a4 <f' a>8 d~[
  | d <f d'>] d'4 <f d'>8 c4 <f c'>8 b,~[
  | b <d b'>] f,4 <b f'>8 d,4 <b' d>8 e,~[
  | e <b' e>] fis4 <b fis'>8 gis4 <b gis'>8\) a~[
    \break
  | \once\shape #'((0 . -1) (0 . 2) (0 . 1.5) (0 . 0)) PhrasingSlur
    a\( <c a'>] c4 <e c'>8 e4 <a e'>8 \ottava #1 a~[
  %10
  | a <c a'>] c4 <e c'>8 b4 <dis b'>8\) a~[
  | a
    \once\shape #'((0 . 0.5) (0 . -1) (0 . -2) (0 . 0)) PhrasingSlur
    <c a'>]\( \ottava #0 ees,4 <a ees'>8 d,4 <a' d>8 c,~[
  | c <ees c'>] a,4 <c a'>8 ees,4 <a ees'>8\) \ottava #1 a'~[
    \break
  | \once\shape #'((0 . 0.5) (0 . -1) (0 . -2) (0 . 0)) PhrasingSlur
    a\( <ees' a>] \ottava #0 ees,4 <a ees'!>8 a,4 <ees' a>8 ees,~[
  | ees <a ees'>] d,4 <gis d'>8 ees4 <a ees'!>8\) f~[
  %15
  | f <aes f'>] ges4 <beses ges'>8 f4 <ces' f>8 ees,~[\(
  | ees <ces' ees>] d,4 <bes' d>8 ees,4 <ces' ees>8\) \stemUp f,~[
    \break
  | \once\shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . -0.5)) PhrasingSlur
    f\( <ces' f>] \stemNeutral ges4 <ces ges'>8 f,4 <ces' f>8 ees,~[
  | ees <ces' ees>] d,4 <ces' d>8 ees,4 <ces' ees>8\) f,~[
  | \once\shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -1)) PhrasingSlur
    f\( <ces' f>] ges4 <a ges'>8 f4 <a f'>8 ees~[
  %20
  | ees <ces' ees>] d,4 <ces' d>8 ees,4 <ces' ees>8\) \stemUp f,~[
    \break
  | f\( <ces' ees f>] \stemNeutral ges4 <ces ees ges>8 f,4 <ces' ees f>8 ees,~[
  | ees <ces' ees>] d,4 <ces' d>8 ees,4 <ces' ees>8\) f,~[
  | \once\shape #'((0 . -1) (0 . 1.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur
    f\( <c' f>] aes4 <c aes'>8 ges4 <c ges'>8 a8~[
  | a <c a'>] gis4 <c gis'>8 a4 <c a'>8\) c~[
    \break
  %25
  | \once\shape #'((0 . -1) (0 . 1.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur
    c\( <ees c'>] b4 <ees b'>8 c4 <ees c'>8 ees~[
  | ees <ges a! ees'>] d4 <ges a d>8 ees4 <ges a ees'>8\) \ottava #1 aes~[
  | \once\shape #'(
      ((0 . 4) (0 . -7) (0 . -6.5) (0 . 0.5))
      ((0 . -2) (0 . -1.5) (0 . -1.5) (0 . -5))
    ) PhrasingSlur
    \once\override PhrasingSlur.outside-staff-priority = #300
    aes\( <ces ees aes>] g4 <ces ees g>8 aes4 <ces ees aes>8 ces~[
  | ces <d f ces'>] bes4 <des f bes>8 ces4 <des f ces'>8 ees~
    \break
  | <ees aes ces ees>[ <cis cis'> <d d'>] <ges ges'>[ <e e'> <f f'>] <a a'>[ <g g'> <aes aes'>]
  }
  %30
  | <ces ces'>
    \ottava #0
    r <bes,,, bes'>4
    \fermata <a! a'>8 -\tweak extra-offset #'(0 . -0.6)\fermata\)
    \once\shape #'(
      ((0 . 1) (0 . 1.5) (0 . 1.5) (0 . 1.5))
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
    ) PhrasingSlur
    d[\(
    \break
  \tuplet 3/2 {
  | d <f d'>] f4 <a f'>8 a4 <d a'>8 d~[
  | d <f d'>] f4 <a f'>8 e4 <a e'>8\) ees~[
  | \once\shape #'((0 . 0) (0 . 1.5) (0 . 1.5) (0 . -1)) PhrasingSlur
    ees\( <g ees'>] bes,4 <ees bes'>8 a,4 <ees' a>8 g,~[
  | g <bes g'>] f4 <bes f'>8 ees,4 <g ees'>8\) fis8~[
    \break
  %35
  | \once\shape #'(
      ((0 . 3) (0 . -3) (0 . -3) (0 . 1))
    ) PhrasingSlur
    fis\( <a fis'>] a4 <c a'>8 bes4 <ees bes'>8 c~[
  | c <fis c'>] fis4 <a fis'>8 a4 <c a'>8 bes~[
  | bes <ees bes'>] g,4 <bes g'>8 f4 <bes f'>8 ees,~[
  | ees <g ees'>] bes,4 <ees bes'>8 g,4 <bes g'>8\) \ottava #1 bes'~[
    \break
  | bes\( <cis e bes'>] g4 <bes cis g'>8 f4 <bes cis f>8 e,~[
  %40
  | e <bes' cis e>] d,4 <g bes d>8 cis,4 <g' bes cis>8 bes
  | \slurNeutral <cis e bes'>[\) g(\( <bes cis g'>]) e,[( <g bes e>) d]( <g bes d>)[ cis,( <e g cis>)]
    \ottava #0
  | bes[( <cis e bes'>) f,]( <g bes f'>)[ e( <g bes e>)] d[( <g a d>) <a, a'>]\)
    \break
  | d[(\( <f a d>) f]( <a f'>)[ a( <d a'>]) d([ <f d'>) f]
  | <a f'>[ e( <g bes e>)] d[( <f a d>) a,]( <d f a>)[ <f, f'>( <e e'>)]\)
  %45
  | d[(\( <f d'>) a,]( <d a'>)[ d( <f d'>)] f[( <a f'>) e](
    \break
  | <g e'>)[ d( <g d'>)] a,[( <d a'>) g,]( <d' g>)[ <f, f'>( <e e'>]\)
  }
  | <d d'>4) r
    \undo\omit TupletNumber \tupletDown\tuplet 5/4 { <g g'>16[( <fis fis'> <f f'> <e e'> <ees ees'>] }
  | <d d'>4) \ottava #1 <d''' a' d> \ottava #0 r
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  \partial 8
    s8
  %1
  | s2.*29
  %30
  | s4 <cis g'>4. s8
}

Tenor = \context Voice = "three" \relative c' {
  \override Rest.staff-position = #0
  \voiceThree
  \stemUp
  \partial 8
    s8
  %1
  | s2.*24
  %25
  | <ees ges a>2.
  | s2.*4
  %30
  | s4 bes,\fermata a8\fermata r
    \break
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \partial 8
    r8
  %1
  | <d, d'>4 <c c'> <b b'>
  | <bes bes'> <a a'> <g g'>
  | <f f'> <d d'> <bes' bes'>
  | <a a'> <gis gis'> <g g'>
  %5
  | \ottava #-1 <f f'> <e e'> <d d'>
  | <c c'> <b b'> \ottava #0 <a' a'>
  | <gis gis'>8( b' d e f b)
  | <gis,, gis' e'!>4\arpeggio <fis fis' e'>\arpeggio <e e' e'>\arpeggio
  | a8( e' a b c e)
  %10
  | \clef treble <fis c' e a>4 <f c' e a> <f b dis b'>
  | <f c' ees a> \clef bass <f,, f'> <c' c'>
  | <f f'> <c' c'> <f f'>
  | <f,, f'> <ces' ces'> <f f'>
  | <ces' ces'> <f f'> <ces ces'>
  %15
  | <d d'> <ces ces'> <aes' aes'>
  | <bes, bes'> <ges' ges'> <bes, bes'>
  | <a! a'!> <a'! a'!> <a, a'>
  | <aes aes'> <aes' aes'> <ges, ges'>
  | <aes' aes'> <f, f'> <ees' a ees'>
  %20
  | <bes, bes'> <f'' aes ces> <bes,, bes'>
  | <f'' aes ces ees> <bes,, bes'> <f'' aes ces ees>
  | <bes,, bes'> <f'' aes ces> <bes,, bes'>
  | <ges'' a c ees> <bes,, bes'> <ges'' a c ees>
  | <bes,, bes'> <ges'' a! c! ees> <bes,, bes'>
  %25
  | \clef treble \stemDown c'' b c
  | \clef bass <ees, ees'> <d d'> <ees ees'>
  | \once\stemUp <bes, bes'>^^ \clef treble \stemNeutral <g''! g'!> <aes aes'>
  | <ces ces'> <bes bes'> <ces ces'>
  | \omit TupletBracket \omit TupletNumber
    \tuplet 3/2 { <ees aes ces ees>8 <cis cis'> <d d'> }
    \tuplet 3/2 { <ges ges'> <e e'> <f f'> } \tuplet 3/2 { <a a'> <g g'> <aes aes'> }
  %30
  | <ces ces'> r \clef bass \stemDown <a,,, ees' g>2\fermata
  | \stemNeutral\phrasingSlurUp a8\( a' d e f a
  | f' e d a f a,\)
  | a,\( a' ees' f g bes
  | ees bes aes g ees bes\)
  %35
  | a, a' bes c ees a
  | ees' c bes a ees d
  | <a, a'> bes' ees f g bes
  | <ees g> bes aes g ees d
  | \ottava #-1 <a,, a'> <e' e'> <g g'> <a a'> <bes bes'> <cis cis'> \ottava #0
  %40
  | <e e'> <f f'> <g g'> <e' e'> <f f'> <g g'>
  | \clef treble
    \tuplet 9/6 { <bes bes'> <g g'>4 \clef bass <e e'>4 <d d'> <cis cis'> }
  | \tuplet 9/6 { <bes bes'> <f f'> <e e'> <d d'> <a a'>8 }
  | \tuplet 9/6 { <d d'>8 <d' d'> <cis cis'> <d, d'> <cis' cis'> <c c'> <d, d'> <c' c'> <b b'> }
  | \tuplet 9/6 { <d, d'>8 <b' b'> <bes bes'> <d, d'> <a' a'> \tieNeutral <d, d'>~ q <a a'> <g g'> }
  %45
  | \ottava #-1
    \tuplet 9/6 { <f f'> <d d'> <d' d'> <cis cis'> <d, d'> <c' c'> <b b'> <d, d'> <b' b'> }
  | \tuplet 9/6 { <bes bes'> <d, d'> <bes' bes'> <a a'> <d, d'> <g g'>~ q <f f'> <e e'> }
  | <d d'>4 r \undo\omit TupletNumber \tuplet 5/4 { <g g'>16( <fis fis'> <f f'> <e e'> <ees ees'> }
  | <d d'>4) \ottava #0 \clef treble <f''' a d a'>4 r
  \fine
}

centerDynamics = {
  \partial 8
  s8
  %1
  | s4\f\<_\markup { \hspace #2 "basso marcato" } s2
  | s2.
  | s4\! s8 s\> s4
  | s s8 s s\! s
  %5
  | s4\< s2
  | s8 s s\! s s\> s
  | s4 s8 s\! s\< s
  | s4_\markup { "rit. e cresc." } s2
  | s2.\!\ff\<
  %10
  | s4 s8 s s\! s
  | s4 s\> s
  | s s8 s s\! s
  | s4\ff s\> s
  | s2.
  %15
  | s4\!\mf\< s2
  | s4\!\> s2
  | s4\!\< s2
  | s4\!\> s2
  | s4\!\< s2
  %20
  | s4\!\> s2
  | s4\!\< s2
  | s4\! s2
  | s4 s\< s
  | s2.
  %25
  | s2.
  | s2.
  | s2.
  | s2.
  | s4_\markup { "cresc. strepitoso" } s s\!\fff
  %30
  | s s\fff s
  | s\p\< s2
  | s2.
  | s2.\!\>
  | s2.
  %35
  | s2.\!\f\<
  | s2.
  | s2.
  | s2.
  | s2.\!\ff
  %40
  | s2.
  | s2.
  | s4 s-\markup { \hspace #2 "rit." } s
  | s-\markup { "sempre" \dynamic ff } s s\<
  | s s\!\> s
  %45
  | s2.\!\<
  | s8 s\! s4 s_\markup { "rit." }
  | s2.
  | s4 s\sfff s
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
      \new Dynamics = "dynamics" {
        % Will use self-alignment-Y to place element
        \override TextScript.Y-offset = #self-alignment-interface::y-aligned-on-self
        % Use negative value of direction,
        % i.e. CENTER -> align to center, UP -> align to bottom, DOWN -> align to top
        \override TextScript.self-alignment-Y = #(lambda (grob) (- (ly:grob-property grob 'direction)))
        % use CENTER as default direction instead of DOWN
        \override TextScript.direction = #CENTER
        \centerDynamics
      }
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
    composer = ##f % "Karol Szymanowski"
    opus = ##f % "Op. 1"
    title = "Prelude V"
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
      % Make the piano staves closer together
      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (padding . 0))
    }
  }
  \midi { \tempo 2=40 }
}
