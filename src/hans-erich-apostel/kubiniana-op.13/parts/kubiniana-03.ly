Global = {
  \key c \major
  \time 2/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower"\stemUp }
top = { \change Staff = "upper"\stemDown }
crescmolto = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc molto " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \stemNeutral
  %1
  \tempo \markup { \bold "Allegretto" } 4 = 66-70
  | \tuplet 3/2 { r8. dis16( a'!8)] } d!16[ cis,] r8
  | \tuplet 3/2 {
      \once\override TrillSpanner.bound-details.left.text = \markup{
        \musicglyph "scripts.trill" \raise #0.65 \teeny \sharp
      }
      \afterGrace e!4\startTrillSpan\< { \stemUp dis32[_(\stopTrillSpan e!] }
      \stemNeutral bes'8^.)
    }
    \breathe ees4^>~\!\mf
  | \omit TupletBracket
    \tupletDown\tuplet 3/2 { ees16[\> des^. aes }
    \tuplet 3/2 { c!^> g! d!] } b!8^-[(\!\p\< <e! f!>16])\! r16
  | r16 bes[(\p\< \stemUp\slurDown \acciaccatura dis8 \stemNeutral e!16^.])\! r
    gis,32[(\p cis d!16_.) r32 f,!32( b! c!])
  %5
  | des,4~\sfz \stemUp\tupletUp
    \tuplet 3/2 {
      des16
      \shape #'((-0.2 . -0.5) (0 . -1.5) (0 . -1) (0 . 0)) Slur
      d'!_>( ees,)
    }
    \bottom \tuplet 3/2 { c,!( f! b!) }
  | \top \clef bass \stemUp bes,4.^> \tuplet 3/2 { b!16[^( d! b!)] }
  | \shape #'((0 . 0) (0 . 1.2) (0 . 1.2) (0 . 0)) Tie
    bes2^>~\p
  | bes
  | \clef treble \stemDown
    \once\override TupletBracket.positions = #'(8.8 . 8.8)
    \once\undo\omit TupletBracket \tuplet 3/2 {
      \override DynamicText.X-offset = #0.2
      \override DynamicText.Y-offset = #-4
      r8.\ff <fis''' cis' g'!>16^! <dis, gis d'!>8^!
    } \stemUp b!4_>~
  %10
  | b8[ \tuplet 3/2 { a!16_.\mf\< d!_. g!] } aes4_-~\!\f
  | \tuplet 3/2 { aes16[ c,!_.\p f!_.} \tuplet 3/2 { b,!_. e!_. a!] } bes8.(\< <e,! fis>16_.)\!
  | r16
    \shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . -0.3)) Slur
    b'![(\p\< \acciaccatura g!8 f!16])\! r c'!32[(\p bes fis16) r32 d'!( cis gis])
  | \stemDown\tupletDown g'!4^>~ \tuplet 3/2 { g16[ cis, fis } \tuplet 3/2 { b,!^> e! a!] }
  | \once\undo\omit TupletBracket
    \tuplet 3/2 {
      bes8 r16
      \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
      ees,^(\pp a!8)
    }
    d!16 cis, r8
  %15
  | \once\override TrillSpanner.bound-details.left.text = \markup{
      \musicglyph "scripts.trill" \raise #0.65 \teeny \sharp
    }
    \afterGrace e2\startTrillSpan { dis32(\> e!\stopTrillSpan }
  | ees'8^.) r\! r4
  \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  | s2*5
  %6
  | e,8\rest g16\rest\mf <ges aes>[ g\rest <f! g!>] d8\rest
  | e\rest e32\rest aes[( ges16])\crescmolto f!32[(_\startTextSpan g! f16) aes!32( ges aes ges])
  | f![( g! f g) aes( ges aes ges]) f![( g! f g) aes( ges aes ges])\stopTextSpan
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  %1
  | \clef treble
    \stemNeutral\tupletNeutral
    <f'! g! bes>8 r r <e! fis b!>[
  | <ees f! c'!>] r \tuplet 3/2 { r8. cis'16[( g!8]_.) }
  | d!_. r r16 <fis g!>16[( cis_.)] r16
  | r <f! ges>[( c!_.]) r16 ees[ a,!_. d! a!_.]
  %5
  | \clef bass r8 <e! aes c!>\p[ <ees g! b!>] e,\rest
  | r <f,! b!>[ <ges c!>_.] r
  | r8 f!16[_. b!] ges[_. c! f,!_. b!]
  | ges[ c!_. f,! b!] ges[ c! f,!_. b!]
  | c,!4_> \tuplet 3/2 { r8. fis'16(\mf c'!8_.) }
  %10
  | f!16_._>[ e,!] r8 r <d'! e! a!>[\p
  | <des ees bes'>] r r <gis a!>16[^( d'!])
  | r16 <aes bes>16[^( ees'^.]) r16 a,! e'! bes!^. f'!
    \clef treble
  | \tuplet 3/2 { r8. b,!16( fis'8) } c'!8 r
  | <f,! g!>8_. r r <e'! fis b!>[
  %15
  | \tuplet 3/2 { <ees f! c'!>] r16 d'16^( gis,8) } c,!16[ b'!] r8
  | <b,! bes'> r r4
  \fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-2 . -2)
    s4-\markup { \dynamic pp } s4
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
      \Bass
    >>
  >>
  \header {
    %composer = "Hans Erich Apostel"
    %opus = "Op. 13"
    title = \markup { "III" }
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
    \tempo 4 = 68
  }
}
