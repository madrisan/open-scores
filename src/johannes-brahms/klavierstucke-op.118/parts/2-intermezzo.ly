Global = {
  \key a \major
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo "Andante teneramente."
  \partial 4 { cis'8( b) }
  | <fis d'>2 cis'8( b)
  | a'2\arpeggio a,8.\(( b16)
  | b8.( e16) e4 d
  | <cis, a'> <b gis'>\) cis'8( b)
  %5
  | <a d>2 cis8( b)
  | a'2 cis,8.\(( dis16)
  | dis8.( e16) e4 <a,, dis fis>
  | <a dis a'> <gis e' gis>\) cis'8( b)
  | <fis d'>2 cis'8( b)
  %10
  | a'2\arpeggio <fis, a>8.\(( <f b>16)
  | <f b>8.( <e e'>16) <e e'>4 <fis d'>\)
  | <cis a'>( <b gis'>) cis'8( b)
  | <a d>2 cis8( b)
  | \stemNeutral <a b fis' a>2 \stemUp <gis cis>8.\(( <fis b dis>16)
  %15
  | <fis b dis>8.( <e bis' e>16) <e e'>4 dis8( a')\)
  | <a, dis a'>4( <gis e' gis>) e'(
  | fis e) e(
  | fis e)
    \once\shape #'((0 . -0.6) (0 . -1) (0 . -2) (-0.8 . -2.5)) Slur
    e\((
  | b') a gis~
  %20
  | <gis b> e\) a\(
  | b  a\) a\(
  | c a\) <c, fis! a>
  | fis'!\( c4. a8\)
  | gis2\( fis8 e8
  %25
  | gis2\)\(^\markup { \italic "legato" } a4 |
  | ais2 gis!8 fis
  | b2 bis4
  | cis2 b!8 a_~
  | <a d>4. \) << { cis4( b8) } \\ gis!4. >>
  %30
  | \stemNeutral <fis a'>2\arpeggio \stemUp <a, e' a>4_\markup { \whiteout "espress." }
  | gis'( fis) e8( d)
  | cis4_( b) a'
  | g( f) e8^\markup { \italic calando } ( d)
  | c4_( b) gis''!8( a
  %35
  | <d, fis!>2) gis8( a)
  | b,2 b8.( cis16)
  | cis8.( d16) d8( cis d gis,)
  | <d gis>4(  <cis a'>) a'\(
  | b  a\) a\(
  %40
  | b  a\) a(
  | d) cis4.( b8)
  | gis4( a) a(
  | b a) a(
  | b  a) <d, fis a>(
  %45
  | \stemNeutral fis'->) d4.( b8)
  | \stemUp gis4( a) e~->^\markup { "più lento" }
  | e2 e4~->
  | \once\override NoteColumn.force-hshift = #0.3 e2 \stemNeutral cis'4~\(
    \bar "||"
    \break
  \repeat volta 2 {
  | cis8^\markup { "in tempo" } fis e4 d
  %50
  | cis b8 d gis fis
  | b,4 a8 cis fis e
  | a, gis e' d b gis\)
  | <a cis>( a' gis4 fis)
  | \stemUp e\( a,8 cis e d
  %55
  | cis4 fis,8 gis a fis
  | eis4 gis4. cis8~\)
  }
  | cis fis \stemNeutral <eis, ais eis'>4 <dis ais' dis>
  | <cis ais' cis> <fis ais fis'> <eis ais eis'>
  | <dis ais' dis> <cis ais' cis> <c ges' bes c>~
  %60
  | <f a c> \stemUp cis'2~
  | cis8 fis \stemNeutral <eis, ais eis'>4 <dis a' dis>
  | <cis gis' cis> <fis gis bis fis'> <eis gis cis eis>
  | <dis gis b dis> \stemUp cis'2~
  | cis4 cis4.\fermata d8\rest
  %65
  | d4\rest cis( fis
  | e d) d\rest

  | R1*3/4*49
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 4 { a8 gis }
  %1
  | fis[( d)
    \change Staff = "lower" \voiceThree
    a( fis)]
    \change Staff = "upper" \voiceTwo
    a' gis
  | fis2\arpeggio fis4
  | <e gis> <e a> fis
  | s2 e4
  %5
  | a8[( d,)
    \change Staff = "lower" \voiceThree
    a( fis)]
    \change Staff = "upper" \voiceTwo
    <e' a>4
  | <a b fis'>2 <fis b>4
  | <fis b> <e cis'> s
  | s2 a8 gis
  | fis[( d)
    \change Staff = "lower" \voiceThree
    a( fis)]
    \change Staff = "upper" \voiceTwo
    a' gis
  %10
  | fis2\arpeggio a4
  | gis! gis8 a s4
  | s2 e4
  | a8[( d,)
    \change Staff = "lower" \voiceThree
    a( fis)]
    \change Staff = "upper" \voiceTwo
    <e' a>4
  | s2.
  %15
  | s4 bis'8 cis a,4
  | s2 <g c>4~
  | q2 <g cis>4~
  | q2 <gis d'>4~
  | <d' e> q q
  %20
  | d2 <c f>4~
  | q2 \tieNeutral <c dis>4~
  | q2 s4
  | s2.*2
  %25
  | gis'8_\( b, gis
    \change Staff = "lower" \voiceThree
    e c' a\)
  | \change Staff = "upper" \voiceTwo
    ais'_\( cis, ais
    \change Staff = "lower" \voiceThree
    e e' cis\)
  | \change Staff = "upper" \voiceTwo
    b'_\( d, b
    \change Staff = "lower" \voiceThree
    e, dis' bis\)
  | \change Staff = "upper" \voiceTwo
    cis'\( e, cis
    \change Staff = "lower" \voiceThree
    e, g' cis,\)
  | \change Staff = "upper" \voiceTwo
    a'_\( d,
    \change Staff = "lower" \voiceThree
    a e, e' gis!\)
  %30
  | s2.
  | \change Staff = "upper" \voiceTwo
    <a b>2
    \change Staff = "lower" \voiceThree
    <e a>4
  | <fis a>2
    \change Staff = "upper" \voiceTwo
    <a e'>4
  | <a b>2
    \change Staff = "lower" \voiceThree
    <e a>4
  | <f a>2
    \change Staff = "upper" \voiceTwo
    <a' e'>4~
  %35
  | a8( gis a fis) <a e'>4~
  | <fis a>8( gis <b, a'> fis') <e a>4
  | <e gis> <d fis> <d e>
  | s2 <cis fis>4~
  | fis2 <d fis>4~
  %40
  | q2 q4(
  | <fis a>) <e gis>2
  | d4 cis <cis fis>~
  | q2 <d fis>4~
  | q2 s4
  %45
  | s2.
  | <cis e>2 cis8( b)
  | d2 cis8( b)
  | \crossStaff { \stemDown a'2\arpeggio } s4
  | s2.*8
  %57
  | <fis ais>4 s2
  | s2.*2
  | s4 \stemUp \shiftOn cis8[ eis ais gis]
  | \stemDown fis4 s2
  | s2.
  | s4 <cis gis' b cis> <cis fis b>
  | <cis fis ais> <cis eis gis>4.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyHeadedOff
  \partial 4 s4
  %1
  | s2.*3
  | s4 e8 fis g!4
  %5
  | s2.*2
  | s2 b,4
  | e,8( b'4 e8~) e4
  | s2.*3
  %12
  | s4 e8 fis g4
  | s2.*2
  | b,8 gis' fis[ a] b, fis'
  | e, b' e b e,[ g]
  | c e c g e[ g
  | cis e cis g] s4
  | gis' a b
  %20
  | a,8 e' gis e a,[ c
  | f a f c] f,[ c'
  | dis a' dis, c] dis,[\( c']
  | s2 s8 \once\omit Stem \once\omit Flag c'\)
  | s2.*6
  %30
  | s2 a,4~
  | a8 a4 a8~
    \once\override NoteColumn.force-hshift = #0.3 a4~
  | \once\override NoteColumn.force-hshift = #0.3 a8
    a4~ a8~ a4~
  | a8 a4 a8~
    \once\override NoteColumn.force-hshift = #0.3 a4~
  | \once\override NoteColumn.force-hshift = #0.3 a8
    a4 a8 s4
  %35
  | s2 e''4
  | s2.*2
  | a,,8[( e' a gis]) fis[( a
  | cis a fis e]) d[( fis
  %40
  | a fis d cis]) b[( d
  | fis a]) e[( gis b d])
  | a,4 s fis
  | s2 d4
  | s2 b4
  %45
  | s2.
  | s2 gis''4
  | s2 << { e,8 d' } \\ { \stemUp gis4 } >>
  | \crossStaff { \stemDown a2\arpeggio } s4
  | s2.*11
  %60
  | \change Staff = "upper" \voiceTwo
    << {
      s4 \once\override NoteColumn.force-hshift = #1 cis_~ \stemDown cis
    } \\ {
      s4. \once\omit Flag \once\omit Stem eis8_~ eis4
    } >>
  | s2.*3
  | s2 s8 cis~
  | cis fis
    \change Staff = "lower" \voiceThree
    e4 d!
  }

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4 { <a, e'>4 }
  %1
  | a, s <a' d>
  | a,8[^( d') a^( fis)] d^( d')
  | <d e gis>8[( b')] <cis, e>[( a')] b,,( d')
  | e,( e') \stemDown e4 e
  %5
  | \stemNeutral fis, s e
  | dis8[( b')] <dis fis>[( b')] <a, b>( a')
  | \stemDown <gis, b>[( gis')] <a, fis'>[( a')] b, fis'
  | e,2 a4
  | \stemNeutral a, s4 <a' d>
  %10
  | a,8[^( d') a^( fis)] d( d')
  | <d f gis>8[( b')] <cis, e b'>[( a')] b,,( d')
  | e,[( e')] e4 e
  | fis, s e
  | dis8[( b')]  <dis fis>[( b')] <a, b>( a')
  %15
  | \stemDown\tieDown gis,4 a b
  | e,2 e4~
  | e2 e4~
  | e2 \stemNeutral <e b'>8 e'\(
  | \stemDown gis!8 e a e b' e,
  %20
  | a,2 a4\)~
  | a2 f4~
  | f2 dis4
  | a''8 dis, a' c fis c
  | a\( c a e c a\)
  %25
  | \stemNeutral e4 s2
  | e4 s2
  | e4 s2
  | e4 s2
  | \once\stemDown fis4 s2
  %30
  | d8^\( fis' <d a'> <fis d'>\) \stemDown\slurDown cis,[( b]
  | d2) cis8[( b]
  | d2) cis8[( b]
  | d2) c8[( b]
  | d2) <cis'! e a e'>4
  %35
  | \stemNeutral\slurNeutral <d, a'> <dis' fis>8( a') <cis, e a>4
  | <dis, b'> <dis' fis>8 a' e,[( e'])
  | <e gis> cis' <b, fis'>[ b'] <e,, b'> e'
  | \stemDown a,2 a4~
  | a2 a4~
  %40
  | a2 a4~
  | a a2
  | a8( e' a gis,) fis[( cis'
  | a' cis, fis, e)] d[ a'
  | fis' a, d, cis] b[ b'
  %45
  | d fis a d fis d]
  | e,,[ cis' e a] \stemNeutral e,,4
  | \stemDown\slurDown e8( e' a d) e,4
  | <a, cis'>2\arpeggio r4
    \bar "||"
  \repeat volta 2 {
  | \slurDown \phrasingSlurNeutral
    \omit TupletBracket
    \tuplet 3/2 { fis'8\([ cis' a'] } \omit TupletNumber \tuplet 3/2 { cis[ a fis fis' a, fis] }
  %50
  | \tuplet 3/2 { e'([ a, fis] d'[\) a fis b, fis' a]) }
  | \tuplet 3/2 { d^.\(([ a fis] cis'^.[\) a fis cis e a]) }
  | \tuplet 3/2 { cis^.\([ fis, d] b'^.[\) fis gis, cis eis b'] }
  | \tuplet 3/2 { fis,[ a' fis] cis'[ a fis a' a, fis] }
  | \tuplet 3/2 { d,[\( a' d fis a d,]\) fis,[\( d' a']\) }
  %55
  | \tuplet 3/2 { gis,[\( e' gis]\) gis,[\( dis' fis bis fis dis]\) }
  | \tuplet 3/2 { cis,[\( gis' cis eis gis b]\) } eis8 r
  }
  | \phrasingSlurDown \stemNeutral
    <fis,, cis' ais'>4\( <cis' ais' cis> <fis ais fis'>
  | <eis ais eis'> <dis ais dis'> <cis ais' cis>
  | <fis ais fis'> <eis ais eis'> <ees ges bes ees>
  %60
  | <f a! c> <ais, eis' ais> <cis eis b'>\)
  | <fis, cis' ais'>\( <cis' ais' cis> <fis a fis'>
  | <eis gis eis'> <dis gis dis'> <cis gis' cis>
  | <fis gis b! fis'> <eis gis b eis> <dis fis dis'>
  | <cis fis cis'>\) <cis eis gis b>4.\fermata r8
  %65
  | \stemDown \slurUp
    \tuplet 3/2 { fis,( cis' a'!) \slurDown e'( a, fis) d'( a fis) }

  | R1*3/4*51
    \fine
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
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
    composer = ##f % "Johannes Brahms"
    opus = ##f % "op. 118"
    title = \markup { "2. Intermezzo" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
