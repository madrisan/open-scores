Global = {
  \key b \minor
  \time 3/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \label #'Courante
  \stemUp\tieUp\slurDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 fis8
  %1
  | fis4.\arpeggio b8 \appoggiatura b8 ais4 b g4.\prall fis8
  | \appoggiatura fis8 g4. fis8 e4 fis8 g fis e d cis
  | d[ cis b cis] d e fis4~ fis8 ais b cis
  | \appoggiatura b8 <fis ais>2. \stemNeutral cis'4  \appoggiatura g8 fis4. cis'8
  %5
  | <fis, b d>4.\arpeggio cis'8 b4 e8 gis, \stemUp a4.\mordent b8
  | \stemNeutral <e, a cis>4.\arpeggio b'8 a^( b cis dis) dis4.\prallprall cis16 dis
  | e2~ e8 d e cis fis4.\mordent e8
  | \stemUp e4. e8 cis2~ cis8 fis, b\mordent b
  | b2~ b8 gis a b a^( gis) a ^( fis)
  %10
  | eis4.\prall fis8 gis a b gis cis4.\arpeggio b8
  | \once\slurUp \appoggiatura b8 <fis a>4. gis8 fis eis fis gis gis4.\parenthesize\prallprall fis8
  | fis2.~\mordent <ais, cis fis>2
  }
  \break
  \repeat volta 2 {
  \partial 8 \stemNeutral cis'8
  | \stemUp\slurUp cis4.\arpeggio b8  a b cis fis, fis'4.\arpeggio e8
  | \appoggiatura e8 <b d>4. cis8 b4 fis8 e fis4.\mordent g8
  %15
  | <d a'>4 \stemNeutral b'8 cis! d e fis d \stemUp \appoggiatura cis8 b4. e8
  | cis4.\prall b8 a4( b8 cis) d( cis b a)
  | g( fis e d) a'4. b8 e,4.\prallprall d8
  | d2.\arpeggio d'8 cis b cis ais4
  | \appoggiatura ais8 b4. e,8 dis4 a'~ a8 g ais fis
  %20
  | g2~ g8 e g b e b e fis
  | \appoggiatura fis8 g4. fis8 e d cis d e d16 cis d8 cis16 b
  | \appoggiatura b8 ais4.\prall \stemNeutral b8 cis d e cis \stemUp fis4.\arpeggio e8
  | \appoggiatura e8 <b d>4. cis8 b ais b cis cis4.\prallprall b8
  | \once\stemDown b2.~\parenthesize\mordent <d, fis b>2_-
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 8 s8
  %1
  | <b d>2\arpeggio cis4 d dis2
  | e4. d8 cis4 d8 e ais,2
  | s2. cis4 d e
  | s1*3/2
  %5
  | s1 e2
  | s1*3/2*2
  | g8\rest b fis4 eis fis s2
  | c4\rest e8\rest gis eis2 fis4 c\rest
  %10
  | s1 <cis~ gis'>2\arpeggio
  | cis4. eis8 fis a,\rest s4 eis'2
  | s2. s2
  \partial 8 s8
  | <fis ais>4.\arpeggio s2
    \once\omit Flag \once\omit Stem \once\override Tie.staff-position = -5 fis8~ <fis~ cis'>2\arpeggio
  | fis4. e8 d4 d d2~
  %15
  | \once\omit Stem d4 s2. c4\rest e8\rest g
  | e2 fis1
  | s2 b,8\rest cis d4 cis2
  | a2.\arpeggio fis'4 g fis~
  | fis4. s8 s2 fis
  %20
  | b,8\rest s b4~ b8 s4. g'8\rest b4.~
  | b8 b a4 g2~ g
  | s1 <fis~ cis'>2\arpeggio
  | fis4.ais8 b d,\rest c4\rest ais'2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1*3/2*2
  | g4\rest d fis2 b,4.\prallprall ais16 b
  | s1*3/2
  | s2 c'8\rest a( gis b) s2
  %5
  | s1*3/2*2
  | s1 fis4. a8\rest
  | s1*3/2*2
  %11
  | s1 cis,2~
  | cis4 cis fis~ fis2
  \partial 8 s8
  | s1*3/2
  | a4\rest d, fis \once\stemDown b c b
  %15
  | a g a2 g4 b
  | a b8 cis d1
  | s1 a2
  | fis\arpeggio s1
  | s1*3/2*3
  %22
  | cis'4 s s1
  | s1 fis,2
  | b, fis4^. b2^-

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | b2. b,8 fis' b2~
  | b4 b,8 fis' b2. b,8 fis'
  | \stemDown b2. a!4 g2
  | \stemNeutral <fis cis'>4 fis'8 g \once\stemUp \appoggiatura g8 fis4. e8 d cis b ais
  %5
  | b4 cis \stemDown d2 cis8( b a gis)
  | \stemNeutral a4 b cis b8_( a g fis) b4
  | a8( g fis e) ais2~^\mordent ais8 gis ais fis
  | b2~^\mordent b16 cis b a b8 cis \stemDown d4. fis,8
  | \stemNeutral eis gis cis cis cis2.^\mordent cis,4
  %10
  | cis'8( b d cis) b a gis fis eis cis' dis eis
  | fis4 cis d b \stemDown c,\rest cis
  | fis2. fis2
  }
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral fis4 fis' cis e! b8( ais gis fis)
  | \stemDown\tieDown\slurUp b2. s4 a'! g!
  %15
  | fis e fis d g e
  | a g fis g8 a b2~
  | b8 a g fis g e fis g a4 a,
  | d8 cis d e fis4 d e fis
  | g8 fis a!( g fis e dis cis) \stemNeutral dis4 b
  %20
  | e4 e,8 b' e2. e,8 b'
  | e2. e,8 b' e2~
  | \stemDown e8 fis^\( g fis \stemNeutral e d_( cis b)\) ais fis' gis ais
  | b4 fis g! e \stemDown f,\rest fis
  | b,4\rest b2~_- b2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    opus = ##f % "BWV 831"
    title = \markup { "Courante" }
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
