Global = {
  \key a \major
  \time 3/2
  \include "../global.ly"
}

\include "../macros-schleifer.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 a8
  %1
  | a2. e4 \appoggiatura e8 fis4.\mordent g8
  | fis4.\prall a8 d4. e8 cis4.\prall b8
  | b2. e4\arpeggio d4.\downmordent e8
  | cis4.\prall b8 a cis \stemNeutral fis4 e4.\downmordent fis8
  %5
  | dis4.\prall cis8 b fis' b4 a4.\downmordent \stemUp\slurUp b8
  | \once\override Staff.Script.extra-offset = #'(5 . -1)
    gis4.^\turn
    a8 b( gis a b) cis,4.\prall a'8
  | dis,4.\prall cis8 b( a) gis( e')
    \once\override Staff.Script.extra-offset = #'(0.5 . 0)
    fis,4.\downmordent e8
  | e2.~ e2~ e8
  }
  \pageBreak
  \repeat volta 2 {
  \partial 8 b'8
  | b2. gis4
    \once\slurDown
    \once\shape #'((-0.1 . 0.4) (-0.3 . 0.7) (-0.5 . 0.7) (-0.8 . 0.5)) Slur
    \appoggiatura gis8 a4.\mordent b8
  %10
  | cis4. a8 fis'4. g8 e4.\prall d16 cis
  | d2. b'4\arpeggio a!4.\downmordent b8
  | g4.\prall fis8[ e g] b,4 cis4.\arpeggio d8
  | cis4.\prall b8 a e' a4 g4.\downmordent a8
  | fis4.\prallprall e8 \slurDown d( cis) b( e)
    \once\override Staff.Script.extra-offset = #'(0.5 . 0)
    cis4.\downmordent d8
  %15
  | d2. \stemNeutral fis4\mordent \once\stemUp \grace fis8 g4.\mordent fis8
  | \once\stemUp \grace fis8 e4.\prall d8
    \once\stemUp \grace d8 cis4\parenthesize\prall b8 ais
    \once\stemUp \grace a8 b4.\mordent cis8
  | ais4.\prall gis8 fis cis' fis4 \stemUp e4.\prall fis8
  | d4.\prall cis8 b ais b cis cis4.\downprall b8
  | b2. \schleifer b4 e4. d8
  %20
  | cis4.\prall b8[ a cis] fis,4 	gis4.\arpeggio a8
  | gis4.\prall fis8 \stemNeutral\slurNeutral e4 b'8( cis16 d) cis4.\prall b8
  | \stemUp e4. fis8 g e a4\arpeggio g4.\downmordent a8
  | \once\override Staff.Script.extra-offset = #'(3 . -1)
    fis4.^\turn
    gis8 \slurUp a( d,) cis( b)
    \once\override Staff.Script.extra-offset = #'(0.5 . 0)
    b4.\downmordent a8
  | a2.~ a2~ a8
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
  | s2 g'8\rest cis b4~ b a
  | << {
      \stemUp\tieUp e8\rest \once\stemDown gis~ gis2
      \shiftOn b4\arpeggio s2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest e'2
      e4\arpeggio b'2
    } >>
  | a2 s1
  %5
  | s1*3/2
  | e8 dis e fis gis e fis gis a gis a fis
  | b2 s dis,
  | << {
      \stemUp b8\rest \once\stemDown b~ \shiftOn b2~ b~ b8
    } \\ {
      \once\override Voice.Rest.X-offset = #0.4 d,4\rest
      gis2~ gis~ gis8
    } >>
  \partial 8 s8
  | << {
      \stemUp\tieUp e'8\rest \once\stemDown gis~ gis2
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 g,4\rest e'2
    } >>
    e4 fis4. gis8
  %10
  | a4. a8~ a4 d~ d cis
  | << {
      \stemUp\tieUp
      g8\rest \once\stemDown b~ b2
      \shiftOn fis'4\arpeggio
    } \\ {
      \once\override Voice.Rest.X-offset = #0.6 b,,4\rest fis'2
      b4\arpeggio
    } >>
    fis'2
  | e g,4\rest d
    << {
      \stemDown e4.\arpeggio fis8
    } \\ {
      \stemUp \shiftOn <g a>4.\arpeggio s8
    } >>
  | e2 a4~ a d e
  | a,1 g2
  %15
  | << { \stemDown fis2. } \\ { \stemUp \shiftOn a } >>
    s2.
  | s1*3/2
  | s1 b4 cis
  | e,2 e\rest ais
  | << { \stemDown d,2. } \\ { \stemUp \shiftOn fis } >>
    d4\rest b'2
  %20
  | a c,4\rest a
    << { \stemDown <b d>4.\arpeggio } \\ { \stemUp \shiftOn e4.\arpeggio } >>
    cis8
  | b2 s1
  | \once\stemUp \appoggiatura b'8 b4 a g\rest
    << { \stemDown a\arpeggio } \\ { \stemUp \shiftOn e'\arpeggio } >>
    e2
  | a,4. b8 cis f,\rest d4\rest gis2
  | << {
      \stemUp d8\rest \once\stemDown e~ \shiftOn
      \once\shape #'((0 . -0.5) (0 . -0.5) (-0.5 . -0.5) (-1 . -0.5)) Tie
      e2~ e~ e8
    } \\ {
      \once\override Voice.Rest.X-offset = #0.4 f,4\rest
      cis'2~ cis~ cis8
    } >>
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1*3/2*7
  | s4. b8[ e, b'] e2~ e8
  \partial 8 s8
  | s1*3/2*15
  | s4. e,8[ a, e'] a2~ a8
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | a4. a,8[ b cis16 d] cis8[( e) d( cis b a)]
  | d[ e d cis] b[ a gis e] a[ e cis a]
  | e'4. e'8[ fis a] gis[ b a gis fis e]
  | a b a gis fis gis a fis gis b ais cis
  %5
  | b cis b a gis a b gis cis \change Staff = "upper" \stemDown d dis fis
  | \change Staff = "lower" \stemNeutral
    s1*3/2
  | r8 b,, cis dis e fis gis a b a b b,
  | \stemDown\tieDown e4. s8 e,4~ e2~ e8
  }
  \break
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral
    e4. b'8[ cis e] d[ fis e d cis b]
  %10
  | a a' b cis d cis b a gis! b ais cis
  | b[ ais b d cis e] d[ fis e dis cis b]
  | e[ fis e d cis b] a[ g fis e fis d]
  | a' b a g fis e d cis b d cis e
  | d fis e g fis a g b a g a a,
  %15
  | d[ a' b d cis e] d[ fis e d cis b]
  | ais[ b cis d] e[ d e fis] g fis g e]
  | fis[ g fis e] d[ cis b a] gis[ b ais cis]
  | b[ cis b a] g[ fis g e] fis[ e fis fis,]
  | b[ cis d cis b a] gis![ b a gis fis e]
  %20
  | a[ b a gis fis e] d[ e d cis b a]
  | e'[ d e fis gis fis] gis[ e a gis a b]
  | cis[ b cis a] b[ cis16 d] cis8[ e d cis b a]
  | d[ fis e d cis b] a[ d e d e e,]
  | \stemDown a4. s8 a,4~ a2~ a8
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
    title = \markup { "Double II" }
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
