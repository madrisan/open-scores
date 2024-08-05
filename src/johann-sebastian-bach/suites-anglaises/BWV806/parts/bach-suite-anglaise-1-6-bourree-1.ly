Global = {
  \key a \major
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4 e4
  %1
  | a8( gis) b( a) cis( b a gis)
  \repeat volta 2 {
  | a4 e cis8 e a b
  | cis( b) d( cis) e( d cis b)
  | d( cis b cis) a b cis d
  %5
  | e4 \once\stemUp \once\slurDown \appoggiatura g8 f4 g!4.\mordent a8
  | fis4 \once\stemUp \once\slurDown \appoggiatura a8 gis4 a4.\mordent b8
  | gis( a) gis( a) a4.(\prallprall gis16 a)
  | b2 r4 e,,
  | a8( gis) b( a) cis( b a gis)
  %10
  | a4 e cis8 e a b
  | cis8( b) d( cis) e( d cis b)
  | d( cis b cis) a( gis) b( a)
  | cis( b a gis) fis( e) gis( fis)
  | a( gis fis e) dis( cis) e( dis)
  %15
  | fis b, b'4 gis\prall fis8 e
    \alternative {
      { e2. e4 | a8( gis) b( a) cis( b a gis) }
      { e2. }
    }
  }
  \break
  \repeat volta 2 {
    \partial 4 e4
    | b'8( a) cis( b) d( cis) e4
    %20
    | cis4\prall b8 cis a( b cis d)
    | e( d) fis( e) g( fis) a4
    | fis4\prall e8 fis d4 fis
    | fis8( d cis b) d( cis) e( d)
    | e( cis b ais) cis( b) d( cis)
    %25
    | e( d cis b) d( cis b ais)
    | b2. b4
    | fis'8( e) gis( fis) a( gis) b4
    | gis4\prall fis8( gis) e4 e,
    | b'8( a) cis( b) d( cis) e4
    %30
    | cis4\prall b8 cis a( b cis d)
    | e( cis b a) e'( d) fis( e)
    | g( cis, b a) d( cis) e( d)
    | fis( cis b a) e'( d) fis( e)
    | g( cis, b a) d( cis) e( d)
    %35
    | fis( d cis b) fis'( e) gis( fis)
    | a( dis, cis b) e( dis) fis( e)
    | gis( dis cis b) fis'( e) gis( fis)
    | a( dis, cis b) e( dis) fis( e)
    | gis( fis e fis) gis( fis) a( gis)
    %40
    | b( a gis fis) a( gis fis e)
    | a4. b8 gis4.\downmordent a8
    | a2. e4
    | e8( cis b a) cis( b) d( cis)
    | d( b a gis) b( a) cis( b)
    %45
    | d( cis b a) cis( b a gis)
    | a e( fis gis) a b cis d
    | e( cis b a) cis( b) d( cis)
    | d( b a gis) b( a) cis( b)
    | d( cis b a) cis( b a\prall gis)
    %50
    | a2.\mordent
  }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s1*17
  | e2.
  \partial 4 s4
  | s1*31
  | r4 e, a
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \partial 4 r4
  %1
  | R1
  \repeat volta 2 {
  | r2 r4 e
  | a8( gis) b( a) cis( b a gis)
  | a4 e cis8 e a b
  %5
  | cis( b) d( cis) e( d cis b)
  | d( cis) e( d) fis( e dis b)
  | e( fis e d) cis( b) cis( a)
  | e'( dis) fis( e) gis( fis e d)
  | cis( b) d( cis) e( d cis b)
  %10
  | cis( d cis b) a4 e
  | a8( gis) b( a) cis( b a gis)
  | a4 e cis e
  | a, e' a8( gis) b( a)
  | cis( b a gis) fis( e) gis( fis)
  %15
  | a( gis fis e) b'4 b,
    \alternative {
      { e8( dis) fis( e) gis( fis e d) | cis4\prall b8 cis a4 r }
      { \stemDown g4\rest b e, }
    }
  }
  \repeat volta 2 {
    \partial 4 r4
    | \stemNeutral r2 r4 e'
    %20
    | a8( gis) b( a) cis( b) e4
    | cis4\prall b8( cis) a4 a,
    | d8( cis) e( d) fis( d) d'4
    | g,,2 r4 cis'
    | fis,,2 r4 b'
    %25
    | g d e fis
    | b,8( ais) cis( b) d( cis) e4
    | dis2\prall r4 b
    | e8( dis) fis( e) gis( fis) a4
    | gis2\prall r4 e
    %30
    | a8( gis) b( a) cis( b) e4
    | cis\prall d cis b
    | a2 a
    | a a
    | a4( g) fis e
    %35
    | d e d cis
    | b2 b
    | b b
    | b4 a gis fis
    | e2 e
    %40
    | d! d4 d'
    | cis d\downmordent e e,
    | a8 e'( fis gis) a( b) cis4
    | fis,,2 r4 b'
    | e,,2 r4 a'
    %45
    | fis cis d e
    | a,8 gis a b cis d e cis
    | fis2 r4 b,
    | e2 r4 a,
    | fis cis d e
    %50
    | \stemDown a,2.
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
    title = \markup { "Bourrée I" }
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
