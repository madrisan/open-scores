Global = {
  \key b \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override Glissando.style = #'dashed-line
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 <d fis>4 <e g>8 <cis e>
  %1
  | <d fis>4 d'4 d8( cis b ais)
  | \appoggiatura ais8 b2*1/2\glissando \change Staff = "lower" g,16( fis e d)
    \change Staff = "upper" e'4 fis8 d
  | e4.\mordent( fis16 g) fis8 e d cis
  | d4 \appoggiatura \parenthesize cis8 b4 <d fis> <e g>8 <cis e>
  %5
  | <d fis>4 d' 	d8( cis b ais)
  | b4 a16( g fis e) a4 g16( fis e d)
  | g8 e fis d e4 cis\trill
  | d2
  }
  \break
  \repeat volta 2 {
  \partial 2 \stemUp d'4 e8 cis
  | d4 fis, g8( fis e d)
  %10
  | <e b'>2 gis4\mordent a16( gis fis e)
  | \stemNeutral e'4 d8 cis b cis d b
  | cis4\mordent a cis d8 b
  | cis4 \stemUp fis, d'8 cis b ais
  | \stemNeutral <eis b'>4 fis'16( eis dis cis) fis4 e16( d cis b)
  %15
  | \stemUp a8 b cis fis, a4 gis\prall
  | fis2 a4\mordent b16( a g fis)
  | \stemNeutral c'4\mordent d16( c b a) dis4\parenthesize\mordent e16( dis cis b)
  | \once\stemUp e2\mordent fis,8 gis ais b
  | cis d e cis e d cis b
  %20
  | cis4 fis, fis' g8 e
  | fis4 b, g'8 fis e dis
  | \stemUp e4 a,16( g fis e) ais4 b16( ais gis fis)
  | e'8 cis d b cis4 ais\parenthesize\trill
  | b2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 2 s2
  %1
  | s1*7
  | \partial 2 fis,2
  | \partial 2 a'2~
  %10
  | a4 s2.
  | s1*3
  | s4 \once\omit Stem fis~ fis2
  | s1
  %16
  | s4 e8\rest fis~ fis4 eis
  | s1
  | s2. s8. \once\omit Flag \once\omit Stem b'16~
  | b2 s
  | s1*4
  %24
  | d,4\rest fis e cis
  | d2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 2 s2
  %1
  | s1*2
  | f4\rest cis2.
  | s1*2
  %6
  | d'4\rest cis d b
  | <g cis> a g e
  \partial 2 s2
  \partial 2 s2
  | s1*2
  %12
  | a4\rest a2 gis4
  | a4 s8 a8~ a4 b8 gis
  | a4 s2 d4~
  %15
  | d b cis gis!
  | fis s2.
  | s1
  | fis4( g) a2
  | s2 f'4\rest cis
  | fis2. e4
  | ais, s8 d~ d4 e8 cis
  | d4 e16 dis cis b e4 fis
  | b, c\rest a2\rest
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override Glissando.style = #'dashed-line
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 b'2~
  %1
  | b4 g e fis
  | \change Staff = "upper"\once\stemDown \once\omit Flag \once\omit Stem \grace ais'8\glissando
    \change Staff = "lower" g,,4 s cis b
  | \stemDown ais2 ais4 fis
  | \stemNeutral b4 d8 fis b2~
  %5
  | b4 g e fis
  | \stemDown gis2 fis4 b
  | e, d g, a
  | d,2
  }
  \repeat volta 2 {
  \partial 2 \stemNeutral fis'4 g8 e
  | fis4 d d, <d' fis>~
  %10
  | <d gis> e16( d cis b) e4 d
  | \stemDown\tieDown cis fis d e
  | a, cis'16_( b a gis) fis2~
  | fis4 b16( a gis fis) b4 d
  | gis,2 a!4 cis,
  %15
  | d \stemNeutral a b cis
  | fis, a'16 g! fis e! <dis fis>4 q
  | \stemDown\tieDown dis_( e) fis b,
  | g' a16 g fis e ais2~
  | ais4 ais b g!
  %20
  | fis fis'16_( e d cis) b2~
  | b4 c,\rest c\rest a'!
  | g8 fis e d! cis d cis b
  | \stemNeutral ais4 b e, fis
  | b,2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 831"
    title = \markup { "Gavotte I" }
    subtitle = ##f
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
