Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo "Andante"
  | r4 r8 c\( b c d e
  | cis_- d\) r f\( e dis g fis
  | f_- e\) r16 g\( fis e g8_- ees\) r16 g\( f e
  | g8_- cis,\) r16 g'\( f ees\) bes'4^~^>^\( bes16 a aes g\)
  %5
  | f( e) f( e) g( fis) g( fis) aes( g) g( fis) fis( f) f( e)
  | dis( d) d( fis) b8\( d f, des'\) f[\( aes]
  | c,^> b\) bes[\( des] a!_> gis a c16 b\)
  | \stemUp\tieUp\phrasingSlurUp b8 bes a2~ a8 a
  | a aes g4\( gis8 a bes b
  %10
  | c des16\) des^.\( des^. des^. des^. des^.\)
    \stemNeutral
    \set maximumBeamSubdivisionInterval = \musicLength 8
    \set subdivideBeams = ##t
    <bes des>16^.\( <bes des>^. <bes d>^. <bes d>^. <bes ees>^. <bes ees>^.^\< <bes e>^. <bes f'>^.\!\)
  | <bes f'>16^.\( <bes f'>^. <b f'>^. <b f'>^. <c! f>^. <c f>^. <des f>^. <des f>^.\)
    <des f>16^.\( <des f>^. <des fis>^. <des fis>^. <des g>^. <des g>^.^\< <c g'>^. <c aes'>^.\!\)
  | <aes c ees aes>4.\(_\markup { "sempre sotto voce" }
    <g c ees g>8\) \stemUp\slurUp <c ees>4 r
  | <f, f'>4.\( <fes fes'>8\) q\( <ees ees'>\) r4
  | s1
  %15
  | \once\override Voice.Rest.X-offset = #-0.5
    f'2\rest g4\rest g8\rest c,\(^\markup { \hspace #-4 "cantabile" }
  | b c d e!\) cis^-( d) g\rest f\(
  | \time 2/4 e[ dis g fis]\)
  | \time 4/4 f^-( e) s2.
  | <aes, d>8_-_([ <g c>)] r8 c\( c b a b\)
  %20
  | \override Hairpin.to-barline = ##f
    <f b>4_(\< <cis cis'>2)\!\> q4
  | q2\! <e b'!>
  | \tieNeutral q1~
  | q\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*7
  | s4 d16( cis) d( cis) ees( d) d( cis) cis( c) c( b)
  | b( bes) bes( d f e ees d) d\( des c! fis f e dis ais'
  %10
  | a\< aes g8\)\! c(\> c)\! s2
  | s1
  | s2 <g g'>8^( <ges ges'>) s4
  | <beses c>2 <ges ces>4 s
  | \stemNeutral <d! g b d!>4.^\( <des f! bes des>8 <c e fis c'> <b d f b>\) r4
  %15
  | <b cis g' b>4. <bes cis e bes'>8 \once\stemUp
    \once\shape #'((1.5 . 1.2) (0 . 1.4) (0 . 1.2) (-1 . 0.2)) Slur
    bes'4.( \stemDown aes8)
  | g4 gis a bes
  | b c
  | cis r8 <cis e>^\( <c ees> <b d> <bes f'> <a! ees'!>\)
  | s4. fis8 f2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieNeutral
  \override Rest.staff-position = #0
  %1
  | s1*7
  | c'16( b) c( b) s2.
  | s1*6
  %15
  | \change Staff = "upper" \voiceTwo
    s2 <c ees>4( <b d>)
  | c8 b\rest
    \override Voice.Rest.X-offset = #0.6
    a4\rest a2\rest
    \revert Voice.Rest.X-offset
  | \change Staff = "lower" \voiceThree
    s2
  | s1*4
  %22
  | \tieNeutral <e g>1~
  | q
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3
  | r4 r8 g\( fis g a b!
  %5
  | gis^- a\) r c\( b ais d cis
  | c^- b\) r16 d\( cis b d8^- bes\) r16 d \(c b
  | d8^- gis,\) r16 d'( c bes) f'4~\( f16 e ees d\)
  | b,4\rest b8\rest_\markup { \hspace #-4 "sotto voce" }
    <c, c'>\( <b b'> <c c'> <d d'> <e! e'!>\)
  | <cis cis'>( <d d'>) r <f f'>\( <e e'> <dis dis'> <g g'> <fis fis'>\)
  %10
  | <f f'>( <e e'>) r16 <g g'>_.( <fis fis'>_. <e e'>_.) <g g'>8_. <ees ees'>_. r16 <g g'>_.( <f f'>_. <e e'>_.)
  | <g g'>8_. <cis, cis'>_. r16 <g' g'>_.( <f f'>_. <ees ees'>_.)
    <bes' bes'>4~^>\( q16 <a a'>^. <aes aes'>^. <g g'>^.\)
  | \stemUp <ges ges'>_\markup { "legg." } <f f'> <ges ges'> <f f'> <aes aes'> <g g'> <aes aes'> <g g'>
    <beses beses'> <aes aes'> q <g g'> q <ges ges'> q <f f'>
  | <ges ges'> <f f'> <ges ges'> <f f'> <aes aes'> <g g'> <aes aes'> <g g'>
    <beses beses'> <aes aes'> q <g g'> q <ges ges'> q <f f'>
  | \repeat unfold 2 {
      <f f'> <e! e'!> <f f'> <e e'> <g g'> <fis fis'> <g g'> <fis fis'>
      <aes aes'> <g g'> q <fis! fis'!> q <f f'> q <e e'>
    }
  %16
  | \stemNeutral <e e'> g' g c e c c e, f a a c! fis cis cis fis,
  | \time 2/4 g c! c e e c c gis
  | \time 4/4 a cis cis\< g'! \clef treble g b b bes\!
    \once\override Hairpin.Y-offset = #-1.65
    bes\> a a aes aes g\! g fis
  | fis f f e e ees ees d d des des c \clef bass c g g c,
  %20
  | <c g'>4( <bes f'>2) <a e'>4
  | q2 <e' gis>
  | s1
  | <c, c,!>1\pp\fermata
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s2\noBreak s1\break\noPageBreak
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
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Ferruccio Busoni ‒ Rome, 1921"
    opus = ##f % "BV 289"
    title = \markup { "Zweites Blatt" }
    subtitle = ##f
    subsubtitle = \markup { \normal-text "An Francesco Ticciati" }
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
