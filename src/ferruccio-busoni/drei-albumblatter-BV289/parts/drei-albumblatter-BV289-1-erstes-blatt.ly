Global = {
  \key e \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Andantino sostenuto."
    b2\( c16 b8.\) a16( g8.)
  | \stemUp\tieUp\slurUp
    fis8. dis16 e2^~ e8 fis
  | g8. e16 g8. a16 b8. g16 b8. cis16
  | dis8. e16^\markup { "m.s." } fis2~ \autoBeamOff fis8 fis~^\markup { "m.d." }
  %5
  | \autoBeamOn fis8. d16 a8. b16 c!8. d16 ees4^-~
  | dis8. b16 fis8. gis16 a8. b16 c!4~^-
  | c ees8.^\markup { "m.s." } des16^\<
    \once\override Hairpin.shorten-pair = #'(0 . 6)
    c4.(\> b!8)\!^\markup { "m.d." }
  | b8.( a16) c8.( b16) a4.( g8)
  | fis16\(^3^\markup { "dolce" } g a^5 b^4 c^5[ d!^4 e^5]\) dis,^1\( e^1 fis^2 g^3 a^4 b^5[ c^4 d!^5]\) cis,^1\(
  %10
  | d!^1 e fis g a[ b c!]\) b,\(
    \once\override Hairpin.rotation = #'(10 -1 0)
    c^\< d e fis g\! a b^- b^-\)
  | b4.\(^\markup { "più cantato" } a16 b c\arpeggio b8.\) a16( g8.)
  | \tempo "a tempo"
    fis8. dis16 e2~_\( e16 d c b\)
  | d'8\rest <e, c'>_.^\p <c' e>_. <e, c'>_. <c e>[_. <e b'>_.] <c e>_. <e a>_.
  | <dis fis> b'[(^. b^. <b, b'>^.] q^. q^.) q( <c! c'!>)
  %15
  | f'\rest <g, c> <c e!> <e, c'> r <f d'> <bes f'> <f bes>
  | r8 <e a> <a cis> <cis, a'> r <d b'> <g! d'> <d g>
  | r <cis fis> <fis ais> <ais, fis'> r <b gis'> <e! b'> <b e>
  | d'4\rest d8\rest <gis, e'>^.\( r <gis e'>^. r <fis dis'>^.\)
  | R1*15
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %\override Rest.staff-position = #0
  %1
  | s1*7
  | r8 c_. f_. c_. cis_. a_. c4~
  | c8 <c dis>_.[( <b g'>_.]) g\rest g\rest <b c>_.( <a fis'>) g\rest
  %10
  | r8 <a b>_.[( <g e'>_.)] g8\rest e4\rest dis'~
  | dis8 r <b e>4 <a e'>\arpeggio <a dis>

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  %1
  | r8 <e g>_.\p <g e'>_. <e g>_. <g e'>_.[ <e g>_.] <b' e>_.[ <e, b'>_.]
  | r4 r8 <e g>-.
    \change Staff = "upper" \voiceTwo <e b'>_.[
    \change Staff = "lower" \voiceThree <b e>^.]
    \change Staff = "upper" \voiceTwo <e c'>_.[
    \change Staff = "lower" \voiceThree <c e>^.]
  | \change Staff = "upper" \voiceTwo <c'>_.[
    \change Staff = "lower" \voiceThree <c, e>^.]
    <c' e>_. <e, c'>_. <g d'>_.[ <d b'>_.] <b g'>_. <g e'>_.
  | \change Staff = "upper" \voiceTwo
    d''8\rest <dis b'> <b a'> <dis b'> <dis c'>[ <c dis>] <dis a'> r8
  %5
  | \change Staff = "lower" \voiceThree
    \override Beam.positions = #'(6 . 5)
    a8\rest <fis a>_. <f d'>_.
    \change Staff = "upper" \voiceTwo
    \override Beam.positions = #'(-5 . -5)
    <d' f>_. <c! e>_.
    \change Staff = "lower" \voiceThree
    <e, c'>_. <c a'>_. r8
  | \override Beam.positions = #'(4.5 . 4.5)
    r8 <dis fis>_. <d b'>_.
    \change Staff = "upper" \voiceTwo
    <b' d>
    \override Beam.positions = #'(-6 . -5.5)
    <a cis>_.
    \change Staff = "lower" \voiceThree
    <cis, a'>_. <a fis'>_. r8
    \revert Beam.positions
  | \change Staff = "upper" \voiceTwo
    r8 <c' ees> <c aes'> <aes c> <des fes aes> <aes des fes> <d f>4
  | \change Staff = "lower" \voiceThree
    r8 f,_. a_. f_. fis cis e4(
  | dis) s2.
  %10
  | s1*2
  | r8 g\( c b a fis g e\)
  | \change Staff = "upper" \voiceTwo
    ais8.
    \change Staff = "lower" \voiceThree
    e16 g8. a!16 g8. e16 g8. a16
  | b8. cis16 dis2~ dis16
    \change Staff = "upper" \voiceTwo
    fis f e
  %15
  | eis8.
    \change Staff = "lower" \voiceThree
    c16 g8. a16 b8.\arpeggio c16 des4^-(
  | c8.) a16 e8. fis16 gis8.\arpeggio a16 bes4^-(
  | a8.) fis!16 cis8. dis16 eis8. fis16 g4^-~
  | \autoBeamOff g8
    \change Staff = "upper" \voiceTwo
    b_.( \autoBeamOn e8. dis16) cis8.
    \change Staff = "lower" \voiceThree
    b16 a8.( gis32 fis)
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-6
  %1
  | R1
  | r8 a16 b c b8. a16 g8.~ g4~
  | g r r2
  | fis4~ fis8. g16 a8. b16 c8. a16
  %5
  | <d, d'>2 a'4. fis8-.(
  | <b, b'>2-.) fis'4. ees8^.^(
  | <aes, aes'>2.^.) <a' gis'>4~
  | a1
  | a4 \stemNeutral\tieNeutral <a, a'>2.~
  %10
  | q4 q2 <a' fis' b>4~\arpeggio
  | q8 d\rest <g,, g'>4_-^\markup { "sostenuto" } <fis fis'>_- <b b'>_-
  | \stemDown <c c'>4.. <d d'>16 <b b'>8. <a a'>16 q8. <g g'>16
  | <fis fis'>2 a'4 c
  | b4. a8 fis8. g16 a8. b16
  %15
  | c2 g4.(\arpeggio gis8)
  | a2 e4.(\arpeggio eis8)
  | fis2 cis4..\( dis16
  | e!4_.\) r8 b'_.\( r a_. r b_.\)
  | R1*15
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
    composer = "Ferruccio Busoni - Zürich, 1917"
    opus = ##f % "BV 289"
    title = \markup { "Erstes Blatt" }
    subsubtitle = "An Herrn Albert Biolley"
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
    \tempo 4 = 100
  }
}
