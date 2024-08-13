Global = {
  \key a \major
  \time 6/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 e8
  %1
  | a8 gis16 fis e d cis( d) d8.(\trill cis32 d)
  | e8 d16( cis b a) gis( a) a8.(\trill gis32 a)
  | b16( cis) cis8.(\trill b32 cis) d8. e16 \once\stemUp \grace d8 cis8~
  | cis16 d  b8.\prall e16 cis b a b cis d
  %5
  | e d cis d e fis g fis e fis g a
  | fis e d e fis gis a gis fis gis a b
  | gis fis e fis gis a b a gis fis e d
  | cis dis e fis gis e a gis fis e dis cis
  | b cis dis e fis dis gis fis e dis cis b
  %10
  | a b cis dis e cis fis e dis cis b a
  | gis e' dis cis b a gis( a32 b) fis8.\parenthesize\prall[ e16]
  | \once\override Staff.TextScript.extra-offset = #'(1 . -1)
    e_\markup { "piano" }
    fis gis a b gis cis b a gis fis e
  | dis e fis gis a fis b a gis fis e dis
  | cis dis e fis gis e a gis fis e dis cis
  %15
  | b a' gis fis e dis e( fis) fis8.\downprall e16
  | e4.~ e4
  }
  \pageBreak
  \repeat volta 2 {
  \partial 8 b'8
  | e,8 fis16 gis a b a( b) b8.(\trill a32 b)
  | cis16 d cis b a g fis fis' e d cis b
  | ais( b) b8.( ais32\trill b) cis16( d) d8.\trill( cis32 d)
  %20
  | e8. fis16 \once\stemUp \grace e8 d~ d16 e cis8.\prall fis16
  | dis16 b cis dis e fis e( fis) fis8.\trill^\markup { \tiny\natural }( e32 fis)
  | g16 a g fis e d c b' a g fis e
  | dis( e) e8.\trill( dis32 e) fis16( g) g8.\trill fis32 g
  | a8. b16 \once\stemUp \grace a8 g~ g16 a fis8.\prall b16
  %25
  | gis a gis fis e d cis b a b cis d
  | e d cis b a g fis e d e fis g
  | a d, d'4 ~ d16 b gis b e,8~
  | e16 a cis4~ cis16 a fis a d, cis'
  | b gis e gis cis, b' a fis d fis b, a'
  %30
  | gis e fis gis a b a( b) b8.\trill( a32 b)
  | cis16 a b cis d e d( e) e8.\trill( d32 e)
  | fis16 d e fis g a gis( a) a8.\trill( gis32 a)
  | b16 a gis fis e d cis b a b cis d
  | e d cis b a g fis e' d cis b a
  %35
  | gis e fis gis a gis a16( b) gis8.\trill( fis32 gis)
  | \once\override Staff.TextScript.extra-offset = #'(1 . -2)
    a16_\markup { "piano" }
    b cis d e cis fis e d cis b a
  | gis a b cis d b e d cis b a gis
  | fis gis a b cis a d cis b a gis fis
  | e d' cis b a gis a( b) b8.\trill a16
  %40
  | a4.~ a4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 8 s8
  %1
  | s1*6/8*15
  | e,8 gis b e4
  \partial 8 s8
  | s1*6/8*23
  | a,,8 cis e a4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \repeat volta 2 {
  \partial 8 r8
  %1
  | r4 e'8 a8 gis16 fis e d
  | cis( d) d8.(\trill cis32 d) e8 d16( cis b a)
  | gis( a) a8.(\trill gis32 a) b16 a gis e a gis
  | fis d e8 e,16 e' a8 gis16 fis e d
  %5
  | cis( d) d8.(\trill cis32 d) e16 a, a' g fis e
  | d( e) e8.(\trill d32 e) fis16 b, b' a gis fis
  | e( fis) fis8.(\trill e32 fis) gis16 fis e fis gis e
  | a b cis b a gis fis gis a gis a fis
  | gis a b a gis fis e fis gis fis gis e
  %10
  | fis gis a gis fis e dis e fis e fis dis
  | e( fis) fis\trill e32 fis gis16 a a\trill gis32 a b8[ b,]
  | e, e'16 d! cis b a8 a8.\trill( gis32 a)
  | b16 cis dis cis b a gis8_. gis8.\trill( fis32 gis)
  | a16 b cis b a gis fis gis a gis fis e
  %15
  | dis8 b' cis a b b,
  | \stemDown\tieDown e4.~ e4
  }
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral r4 r8 r4 e'8
  | a,8 b16 cis d e d( e) e8.\trill( d32 e)
  | fis8 e16 d cis b ais( b) b8.\trill( ais32 b)
  %20
  | cis16 fis, gis ais b cis d b fis'8 fis,
  | b4 r8 r4 b'8
  | e, fis16 g a b a( b) b8.\trill^\markup{ \tiny\natural }( a32 b)
  | c16 b a g fis e dis( e) e8.\trill dis32 e
  | fis16 b, cis dis e fis g e b'8\parenthesize\mordent b,
  %25
  | e, fis16 gis! a b a( b) b8.\trill( a32 b)
  | cis16 a b cis d e d16( e) e8.\trill( d32 e)
  | fis8. d16 b d gis,!8. e'16 gis e
  | a8. e16 a, cis d,8. fis16 gis8~
  | gis16 b cis8. e16 fis a b fis d b
  %30
  | e a gis fis e d cis d e d cis b
  | a d cis b a g fis g a g fis e
  | d fis g a b cis d e d cis b a
  | gis e fis gis a b a( b) b8.\trill( a32 b)
  | cis16 b a b cis a d cis b cis d b
  %35
  | e fis e d cis b cis d e8 e,
  | a a'16( gis fis e) d8 d8.\trill( cis32 d)
  | e16 fis gis fis e d cis8_. cis8.\trill( b32 cis)
  | d16 e fis e d cis b cis d cis b a
  | gis8 e' fis d e e,
  %40
  | \stemDown a,4.~ a4
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
    opus = ##f % "BWV 806"
    title = \markup { "Gigue" }
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
