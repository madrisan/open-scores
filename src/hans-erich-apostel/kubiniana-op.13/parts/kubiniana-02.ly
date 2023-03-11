Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

HigherSoprano = \context Voice = "five" \relative c' {
  \voiceOne
  \override Rest.staff-position = #0
  %4
  | r4 \tuplet 3/2 { a!16_.[\mf\< a_. gis'8_. dis_.] }
    \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) Tie
    c'!2~\!\f^>
  | c8 r r4\< r4 \acciaccatura e!8 a!^.\!\sfz r
  | r2 \acciaccatura a!8 <dis, d'!> r s4
  | \stemDown\omit TupletBracket
    <a'! d! g!>4~^-\f q8.[ \tupletNeutral\tuplet 3/2 { des32^>( ges f!)] } g,16^.[ f'!32^>( e!] fis,4^-)
    \stemUp \tuplet 5/4 { aes32( bes aes g! aes! }
  | bes8^.) \stemNeutral r8 r4 r b!32[(\f cis e! fis g! fis e! cis!] c!8^.) r r4
    r8. <g,! fis'>16^.[\mf <gis g'!>8^. r16 <a! gis'>16]
  | <b! a'! bes!>8[ r16 q^.] q8[ r16 q16^.] q8[ r16 q16^.] q8[\< r16 q16^.]
  %10
  | q8^.\!\f r r4 r4 \tuplet 3/2 { <c! b'!>8^.\f <cis c'!>^. <d! cis'>^. }
  | <e! d'! ees>8^.[ r16 q32^. q^.] q4~^> q8[ e16.\rest <dis d'!>32^.]
    <e! dis'>8^.[ f16\rest <f! dis'! e!>32^.\< q^.]
  | <fis e'! f!>8^.\!\ff r r4 r4 b!32[(\ff cis e! fis g! fis! e! cis!]
  | c!8^.) r16 \tuplet 3/2 { e!32^>( a! gis } bes,4~^-
    bes16)[ b32\rest g'!64( aes a,!16^.) b32\rest fis'64( g!] aes,16^.)[ b32\rest f'!64( ges g,!8^.)]
  | <f! b! e!>8^.[ e16.\rest \ottava #1 fis'32](\< g'!8^.)[\! \ottava #0
     g,,8*3/4\rest \top <e,,! g! b! dis>32\fff ]
     \change Staff = "higher" r2
  %15
  | r2 \stemUp \acciaccatura a''!8 <dis, d'!>^. r r4
  | d4\rest \tuplet 3/2 { aes16\< aes f'!8 d!_. } \acciaccatura e!8\!\mf a! r
    \tuplet 3/2 { \acciaccatura e,!\p d!_. \acciaccatura ees des_. \acciaccatura d! c!_. }
  | <b! cis>8 r <g! d'! fis g!>4_-~\mf\>
    \stemDown q8[\! \top c16\rest <bes c! e!>16^. <aes c! d!>8^. g16\rest <bes! c! e!>16]
}

HigherAlto = \context Voice = "six" \relative c' {
  \voiceTwo
  %4
  | s2 r8. <a'! b!>32^.\mf q^.
    \tuplet 3/2 {
      q8^.\> \stemUp \acciaccatura bes \stemDown aes \stemUp \acciaccatura a! \stemDown g!
    }
  | \acciaccatura gis8\!\p fis_. s s2 <f! b!>8_. s
  | s2\< <g! cis>8_.\!\sfz s4.
  | \stemDown
    \once\override NoteColumn.force-hshift = #0.3
    \magnifyMusic 0.8 { <g! des' f!>4\repeatTie } s2 s8 f'!
  | e!_. s s2.
  | s1*7
  %16
  | s2 <g,! cis>8 s4.
  | e2\rest <f! b!>8_. s4.
}

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemNeutral\tupletNeutral
  %1
  \tempo \markup { \bold "Marcia moderato" } 4 = 84
  | R1
  | <b! dis g!>8^.^-[ r <c! e! aes>^.^- r <d! fis bes>^.^-] r <dis a'! b!>4^>(\mf\>
  | <e! gis c!>8^.)[\!\p f16\rest f'!16]( <gis,_~ c!~ e!~>4
    q8)[ f16\rest <a! b! dis>16^. <g! b! cis>8^. f16\rest <a! b! dis!>^.]
    \break
  \omit Staff.TimeSignature
  << {
  %4
  | <g cis f!>8^. r r4 r8. <des' f!>32^.[ q^.] \tuplet 3/2 { q8^. <c! e!>^. <ces ees>^. }
  | <bes d!>8^.[ a32\rest
    \shape #'((0 . 0) (0 . 1) (0 . 0) (0 . 4)) Slur
    b!\p( e! d!] fis,2^-~ fis8)[ f32\rest b!(\p e! d!)]
  | f,!2~^> f8
    \once\override DynamicText.X-offset = #2
    r\p
    s4
  | s4 g''8.\rest \stemUp <a,! ees'>16 <gis d'!>8^. <g! des'>4^- <fis c'!>8^.
  | <f! ces'>8^. r \clef bass \stemDown <ees, a!>4~^-\p\> q8\! r c'!32[( ees f! g! a! g! f! ees!]
  | \omit TupletBracket
    des8^.)[ c16\rest d!\p]( aes8~ \tuplet 3/2 { aes16\> g ges } f!8\!) r r4
    \clef treble
  %10
  | \stemNeutral e'!8[ r16 gis,32_( d'!] g!4_-~) g8 r f![ g16\rest d!16_.]
  | cis'8 r\mf r4 r2
  | a!8[ r16 cis,32( g'!]
    \shape #'((0 . -1.5) (0 . -3) (0 . 0) (0.8 . -4.5)) PhrasingSlur
    c!4_\(~^>) c8\) r fis,8_.[ r16 b!32( ais]
  | d!8^.) r r4 r4 c!32[( ees f! g! a! g! f! ees]
  | des8^.) r <g,! b! f'!>4.^- <ges bes fes'>8^. <f! a! ees'>8_.[ <e! gis d'!>_.]
  %15
  | <ees g! des'>8 r \clef bass r8 r16. s32 r4 r8 r32 b!32[(\mf e! d!])
  | \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 3)) Slur
    f,!2~^>^\<( f8\!\sfz) r r r32 b![(\p e! d!])
  | ges,2~^- ges8 r \tuplet 3/2 { <ges bes>8^. <f! a!>^. <e! gis> }
  | <ees g!>^. r g4\rest s2
  }
  \new Staff = "higher" \with {
    alignAboveContext = "upper"
  } {
    \omit Staff.TimeSignature
    \clef "treble"
    <<
    \HigherSoprano
    \HigherAlto
    >>
  }
  >>
  \break
  | <fis c'! f!>8^.[ r <f! bes ees>^. r <ees a! des>^.] r <d! fis c'!>4^-(
  %20
  | <dis g! b!>8) r r4 r2
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*6
  %7
  | \stemDown \magnifyMusic 0.8 { <a! b! e!>8.\repeatTie[ } \clef treble e''!32^>^( d!]
    f,!4) e!8_. ees4_- d!8_.
  | des8
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*4
  %5
  | s4 des,( c!~ c8) r
  | c!4( b!~ b8) r s4
  | s1
  | s4 <e,! bes'>~ q8 s8 s4
  | s4 <e! bes'>^-( <d! aes'>8^.) s8 s4
  %10
  | s1
  | c''8.\rest <cis e!>16[( <f,! b!>8.)] a16\rest a2\rest
  | s2 <e! a! dis>8^. s s4
  | s1*3
  %16
  | c!4( b!~ b8) s4.
  | des4( c!~ c8) s4.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tupletNeutral
  %1
  | r4 r8^\pp \tuplet 3/2 { e,,!16( cis d! } aes'8_.) r r8. fis16^\p(
  | c'!8_._-)[ g'\rest bes,_._- g'\rest aes,_._-] r f!8_-[ \tuplet 3/2 { ges16( f! ges! }]
  | g!8_.) r r8. bes16 f'!4_-( ees8_.)[ g16\rest cis,16_.]
  | <b! a'!>8_. r r4 r2
  %5
  | \stemDown r4 <d! aes'>2~ q8 r
  | <des g!>2~ q8 r
    %\set tieWaitForNote = ##t
    \override TupletBracket.bracket-visibility = ##t
    \tupletUp\tuplet 3/2 {
      \tuplet 3/2 8 {
        \tupletNeutral
        \stemUp g!16\laissezVibrer[^( des'\laissezVibrer f!^\laissezVibrer
        \top \stemDown a!\laissezVibrer b!\laissezVibrer e!^\laissezVibrer
        \change Staff = "higher" g!\laissezVibrer des'\laissezVibrer f!])
      }
    }
  | \bottom
    \stemUp \magnifyMusic 0.8 { <g,,, des' f>4\repeatTie } r r2
  | \stemDown r4 c,!( b!8_.) r r4
  | r4 b!~ b8 r r4
  %10
  | r2 \stemUp <cis g'>8_. r r4
  | f4\rest f8\rest \stemDown bes16[( <dis, a'!>8.]) f8\rest f4\rest
  | r2 <c! fis b!>8_. r r4
  | r8. \stemUp <fis' bes e!>16[^\f <e,! gis c!>8 r16 <d'! fis! gis!>16]( <bes, e!>8_.) r r4
  | R1
  %15
  | r2 <a! c! e! gis>4^~_> q8 r
  | \stemDown <des g!>2~ q8 r r4
  | <d! aes'>2~ q8 r r4
  | \stemUp r4 r8. e,!16_.^\p
    \override Stem.details.beamed-lengths = #'(4.4)
    bes'8_.[ e16\rest fis16_. e!8 e16\rest d!16]
  | ees,8_.[ e'\rest f,!_. e'\rest g,!] r aes_-[ \omit TupletBracket \tuplet 3/2 { bes16( aes bes! }]
  %20
  | c!8) r r \tuplet 3/2 { f,!16(^\pp g! fis } c!8_.) r r4
  \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
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
    %composer = "Hans Erich Apostel"
    %opus = "Op. 13"
    title = \markup { "II" }
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
