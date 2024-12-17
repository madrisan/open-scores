Global = {
  \key a \major
  \time 3/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteICouranteII
  \repeat volta 2 {
  \partial 8 a8
  %1
  | a2. \stemNeutral e4 fis4.\mordent g8
  | fis4.\prall a8 d4.\mordent e8 cis4.\prall b8
  \noBreak
  | \once\stemUp b2. e4\mordent d4.\prall e8
  | cis4.\prall b8 a cis fis4 e4.\prallprall fis8
  %5
  | d4.\parenthesize\prall cis8 \stemUp b fis' b4 a4.\prall b8
  \noBreak
  | gis4.\prall a8 b gis a b cis,4.\prall a'8
  \noBreak
  | \grace e8 dis4.\prall cis8 b a gis e'
    \once\override Staff.Script.extra-offset = #'(0.5 . 0)
    fis,4.\upprall e8
  | e2.~ e2~ e8
  }
  \break
  \repeat volta 2 {
  \partial 8 \once\stemNeutral b'8
  | b2. gis4 \grace gis8 a4.\mordent b8
  %10
  | cis4. a8 fis'4.\mordent g8 \grace fis8 e4.\prall d16 cis
  \noBreak
  | \grace cis4 d2.\mordent b'4\arpeggio a4.\prall b8
  | g4. fis8 e g b,4 cis4.\arpeggio d8
  | cis4.\prall b8 a e' \stemNeutral a4 g4. a8
  | fis4. e8 d( cis) b( e) \once\stemUp \grace d8 cis4.\prallmordent d8
  \noBreak
  %15
  | \stemUp d2. fis4 \grace fis8 g4.\mordent fis8
  | e4.\prall d8 \grace d cis4 b8( ais)
    \once\override Staff.Script.extra-offset = #'(0.5 . 0)
    b4.\upmordent cis8
  | \grace b8 ais4. gis!8 fis cis' \stemNeutral fis4 e4.\prall fis8
  | d4.\prall cis8 \stemUp b( ais b cis) cis4.\prallmordent b8
  \noBreak
  | b2. b4\mordent e4.\arpeggio d8
  %20
  | \grace d8 cis4.\prall b8 a cis fis,4 gis4.\arpeggio a8
  | gis4.\prall fis8 e4 \stemNeutral b'8( cis16 d) cis4.\prall b8
  | \once\stemUp \appoggiatura b8 e4. fis8 g e \stemUp a4 g4.\prall a8
  | \grace g8 fis4. gis8 a d, cis b
    \once\override Staff.Script.extra-offset = #'(0.5 . 0)
    b4.\upmordent a8
  | a2.~ a2~ a8
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | << {
      \stemUp\tieUp d8\rest \once\stemDown e~ e2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest cis2
    } >>
    s2.
  | s1*3/2
  | << {
      \stemUp\tieUp e8\rest \once\stemDown gis~ gis2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest e'2
    } >>
    s2.
  | s1*3/2
  %5
  | s2 b'2 e4 fis
  | \tieDown b,1~ b8 b a4~
  | a2. b,4\rest dis2
  | s2.
    << {
      \shiftOn b2~ b8
    } \\ {
      gis2~ gis8
    } >>
  \partial 8 s8
  | << {
      \stemUp\tieUp e'8\rest \once\stemDown gis~ gis2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest e'2
    } >>
    e4 fis4. gis8
  %10
  | a4. a8~ a4 b~ b ais
  | b2. << { \stemDown b4\arpeggio } \\ { \stemUp \shiftOn fis'\arpeggio } >> fis2
  | e2 g,4\rest \stemUp \shiftOn g
    << a4. \\ { \shiftOn g4\arpeggio s8 } >>
    s8
  | \shiftOff \stemDown e2. s
  | s1*3/2
  %15
  | << {
      \stemUp\tieUp g8\rest \once\stemDown a~ a2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 b,4\rest fis'2
    } >>
    cis'4( d) cis
  | b a g2 fis4 g
  | cis,2. s
  | s2 d4\rest b' ais2
  | << {
      \stemUp\tieUp e8\rest \once\stemDown fis~ fis2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest d'2
    } >>
    s4 <e b'>2\arpeggio
  %20
  | e2. s4 \once\stemUp \shiftOn e2
  | b2 s1
  | s2. cis'4( d e~)
  | e d cis8 b a b gis2
  | s2. <cis, e>2~ q8

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1*3/2*3
  | s2. a4 b cis
  %5
  | b s s1
  | s1*3/2
  | s1 b2
  | e, b4 e2~ e8
  \partial 8 s8
  | s1*3/2*3
  | s2. \change Staff = "upper" \stemDown d'4 e\arpeggio fis
  %13
  | \change Staff = "lower" \stemUp
    s2. cis4 d e
  | d2. d4\rest a2
  | s1*3/2*2
  %17
  | s2. ais4 b cis
  | s1 fis,2
  | s1*3/2
  %20
  | s2. \change Staff = "upper" \stemDown a4 d\arpeggio cis
  | \change Staff = "lower" \stemUp
    s1*3/2
  | cis2 s1
  | s e,2
  | a, e4 a2~ a8
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
  | a4.( b16 cis) b8( cis16 d) cis4 b\prall a
  | d cis\prall b gis' a\mordent a,
  | e'4.( fis16 gis) fis8( gis16 a) gis4 fis\prall e
  | a b cis fis, gis ais
  %5
  | b cis dis gis, cis dis
  | e e,8 fis gis4 e a fis
  | b8 cis b a gis fis \stemDown\tieDown e4 b' b,
  | e,\rest e2~ e~ e8
  }
  \break
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral\tieNeutral
    e4~ e16 \once\slurDown b'( cis d cis8 d16 e) d4 cis\prall b
  %10
  | a cis d g cis, fis
  | b,4.( cis16 d) cis8( d16 e) d4 e8( dis cis\prall b)
  | e4 fis g fis e\prall d
  | a' b cis a b cis
  | d d,8 e fis4 g a a,
  %15
  | d4.( e16 fis) e8( fis16 g) ais,4( b) a
  | g fis e cis' d e
  | fis gis! ais fis gis ais
  | b8 cis b a g fis g e fis4 fis,
  | b4. d16( cis b8 cis16 d) gis,!4( fis\prall) e
  %20
  | a b cis d b\prall a
  | e' fis gis e a b
  | cis b a a,( b cis)
  | d b cis d e e,
  | \stemDown\tieDown a,\rest a2~ a~ a8
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
    title = \markup { "Courante II" \abs-fontsize #12 { "avec Deux Doubles" } }
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
