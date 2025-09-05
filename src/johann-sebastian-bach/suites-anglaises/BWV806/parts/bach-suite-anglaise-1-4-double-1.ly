Global = {
  \key a \major
  \time 3/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIDoubleI
  \repeat volta 2 {
  \partial 8 a8
  %1
  | a2. e4 \once\slurDown \appoggiatura e8 fis4.\mordent g8
  | \grace g16 fis\prall d e fis gis a b cis d4. e8 \grace d8 cis4.\prall b8
  | b2. e4\arpeggio d4.\downmordent e8
  | \stemNeutral\slurNeutral d8( cis) b( a) gis( fis) fis'4 e4.\downmordent fis8
  %5
  | e( dis) cis( b) a( gis) b'4 a4.\downmordent b8
  | gis\prall( fis gis a) b( gis) a( b) cis,\prall( b cis) a'
  | dis,(\prall cis dis e) fis( a,) gis( e') \stemUp g4\rest e8( dis)
  | \once\override Tie.extra-offset = #'(0 . 1)
    e2.~
    \once\override Tie.extra-offset = #'(0 . 0.4)
    e2~
    e8
  }
  \break
  \repeat volta 2 {
  \partial 8 b8
  | b2. gis4 \grace gis8 a4.\mordent b8
  %10
  | \grace b16 cis8 b16 a b cis d e fis4. g8
    %\once\override Slur.extra-offset = #'(0 . 0.3)
    fis^( e)
    %\once\override Slur.extra-offset = #'(0 . 0.3)
    d^( cis)
  | \appoggiatura cis4 d2. b'4\arpeggio a4.\downmordent b8
  | \stemNeutral a8( g) fis( e)
    \once\override PhrasingSlur.extra-offset = #'(0 . 0.4)
    d(\( cis) b( cis)\) d(\( fis) e( d)\)
  | cis8(\prall b) a( b)
    \once\override PhrasingSlur.extra-offset = #'(0 . 0.4)
    cis(\( d) e( fis)\) g(\( b) a( g)\)
  | fis( g fis e) d( cis b e) \once\stemUp \grace d8 cis4.\prallmordent d8
  %15
  | d2. fis8( g16 a) g4.\prall fis8
  \break
  | fis( e d cis) d( cis b ais) b( ais b cis)
  | ais( gis fis gis) ais( b cis d) e( g fis e)
  \break
  | d( e d cis) b( ais b cis) \stemUp cis4.\upprall b8
  | b2. \stemNeutral b4 e4.\atLeft\bachschleifer d8
  %20
  | cis( d cis b) a( gis fis gis) a( cis b a)
  | gis( fis e fis) gis( a b cis) d( cis b\prall a)
  | e'( d cis d) e( fis g fis) g( b a g)
  | fis( e fis gis) a d, cis\prall b \stemUp b4.\downmordent a8
  | \once\override Tie.extra-offset = #'(0 . 1)
    a2.~
    \once\override Tie.extra-offset = #'(0 . 0.4)
    a2~
    a8
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | << {
      \stemUp\tieUp d8\rest \once\stemDown e~ e2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest cis2
    } >>
    s2.
  | s2 g'8\rest b gis4 f8\rest b a4
  | << {
      \stemUp\tieUp e8\rest \once\stemDown gis~ gis2
      \shiftOn b4\arpeggio \stemDown b2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest e'2
      e4\arpeggio s2
    } >>
  | s1*3/2*3
  %7
  | \stemUp\tieUp \shiftOn s1
    << {
      \once\override Voice.Rest.X-offset = #-0.4 b'8\rest a4.
    } \\
      fis2
    >>
  | << {
      a8\rest b~
      \once\shape #'((0 . -0.5) (0 . -0.5) (-0.5 . -0.5) (-1 . -0.5)) Tie
      b2~ \shiftOn b~ b8
    } \\ {
      \stemUp\tieUp \shiftOn s4
      \once\shape #'((0 . -0.5) (0 . -0.5) (-0.5 . -0.5) (-1 . -0.5)) Tie
      gis2~ \shiftOnn
      \once\override Tie.extra-offset = #'(-0.3 . -0.2)
      gis~ gis8
    } \\ {
      \stemDown\tieDown b,4\rest c8\rest dis e4~ e2~ e8
    } >>
    \partial 8 s8
  | << {
      \stemUp\tieUp e8\rest \once\stemDown gis~ gis2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest e'2
    } >>
    \stemDown\tieDown e4 fis4. gis8
  %10
  | a4 d,\rest g8\rest d' b4~ b ais
  | << {
      \stemUp\tieUp
      \once\override Voice.Rest.X-offset = #0.6
      f8\rest \once\stemDown b~ b2
      \shiftOn fis'4\arpeggio
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 a,,4\rest fis'2
      b4\arpeggio
    } >>
    fis'2
  | s1*3/2*3
  | << {
      \stemUp\tieUp
      \once\override Voice.Rest.X-offset = #0.6
      g,8\rest \once\stemDown a~ a2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 a,4\rest fis'2
    } >>
    s2.
  | s1*3/2*2
  | s1 ais2
  %19
  | << {
      \stemUp\tieUp e8\rest \once\stemDown fis~ fis2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest d'2
    } >>
    s2.
  | s1*3/2*3
  | s1 gis2
  | << {
      d8\rest e~
      \once\shape #'((0 . -0.5) (0 . -0.5) (-0.5 . -0.5) (-1 . -0.5)) Tie
      e2~ \shiftOn e~ e8
    } \\ {
      \stemUp\tieUp \shiftOn s4
      \once\shape #'((0 . -0.5) (0 . -0.5) (-0.5 . -0.5) (-1 . -0.5)) Tie
      cis2~ \shiftOnn
      \once\shape #'((0 . -0.5) (0 . -0.5) (-0.5 . -0.5) (-1 . -0.5)) Tie
      cis~ cis8
    } \\ {
      \stemDown\tieDown e,4\rest f8\rest gis a4~ a2~ a8
    } >>

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  \partial 8 s8
  | s1*3/2*7
  %8
  | e2~ e4~ e2~ e8
  \partial 8 s8
  | s1*3/2*4
  %13
  | e'4\rest cis e cis d e
  | d s2. a2
  | s1*3/2*2
  | d4\rest ais cis ais b cis
  | s1*3/2*3
  %21
  | d4\rest gis, b2 s
  | g'4\rest e a cis, d e
  | d s s1
  | a,2~ a4~ a2~ a8
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
  | a4^~ a16 a'( gis fis e8 fis16 d cis8[ d16 e] d8 e16 cis b8[ cis16 a)]
  | d4 cis b e a, d,
  | e~ e16
    \once\shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) Slur
    e'( d cis b8 cis16 a gis8[ a16 b] a8 b16 gis fis8[ gis16 e])
  | a4 b cis fis, gis ais
  %5
  | b cis dis gis, cis dis
  | e fis gis e a fis
  | b cis dis e8 a, b4 b,
  | \stemDown\tieDown e2 e8 b e,2~ e8
  }
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral\tieNeutral
    e4~ e16 gis'( fis e d8 e16 cis d8[ e16 fis] e8 fis16 d cis8[ d16 b])
  %20
  | a4 cis d g cis, fis
  | b,4^~ b16 b'( a! g fis8 g16 e d8[ e16 fis] e8 fis16 dis cis8[ dis16 b])
  | e4 fis g fis e\prall d
  | \stemDown a'2. a4 b cis
  | d4 d,8 e fis4 g a a,
  %25
  | \stemNeutral d,4~ d16
    \once\shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) Slur
    fis'( e d cis8 d16 b ais8[ b16 cis] b8 cis16 a g8[ a16 fis])
  | g4 fis\prall e cis' d e
  | fis2. fis4 gis! ais
  | b8( cis b a!) g( fis g e) fis4 fis,
  | b,~ b16
    \once\shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) Slur
    e'( d cis b8 cis16 a gis8 a16 b a8 b16 gis fis8 gis16 e)
  %30
  | a4 b cis d8 cis b4\prall a
  | \stemDown\tieDown e'2. e4 a b
  | cis2. a4 b cis
  | d cis8 b cis4 d e e,
  | a,2 a8 e a,2~ a8
  }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 806"
    title = \markup { "Double I" }
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
