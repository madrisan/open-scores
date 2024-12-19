Global = {
  \key e \minor
  \time 3/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVCourante
  \repeat volta 2 {
  \partial 8 \once\stemNeutral b8
  %1
  | b4.\arpeggio \stemNeutral c8 b a g fis e dis \stemUp <a' c>4
  | b4.\arpeggio \stemNeutral g'8 fis e dis e e4.\prall( dis16 e)
  | fis4 b, \once\stemUp e4.\arpeggio fis8 fis4.\prall( e16 fis)
  | g4 b, \once\stemUp e4.\arpeggio d8 c4.\prall b8
  %5
  | c4. b8 a g! fis g g4.\prall fis16 g
  | a4. a'8 g fis e d \stemUp c b a'4^!
  | \appoggiatura c,8 b4. \stemNeutral g'8 fis e d c \stemUp b a g'4^!
  | \appoggiatura b,8 a4. \stemNeutral c8 b a g fis e d c'4^!
  | b4.\prall a8 g fis g a \once\stemUp a4.\prall g16 a
  %10
  | g4 b e4.\prall fis8 g e cis d
  | s2 c'4\rest \stemUp b^! cis,!4.\prall b8
  | b2.~ \once\tieDashed b2~ \magnifyMusic 0.8 { b8 }
  }
  \break
  \repeat volta 2 {
  \partial 8 \stemNeutral fis'8
  | \once\stemUp fis4 e8 dis! cis b cis dis e[ fis fis8.\prall e32 fis]
  | \stemUp g4.\arpeggio e,8 fis gis a b c[ d~] d d
  %15
  | \appoggiatura d8 c4. d8 e d e f b,4.\prall a8
  | a4.\arpeggio \stemNeutral b8 cis d e fis \stemUp g a~ a[ a]
  | \stemNeutral b c b a g fis e d cis[ d d8.\prall cis32 d]
  | e4 \stemUp a,8 b16 cis cis2\prall~ cis4. b16 cis
  | d1~\prall d4. cis16 d
  %20
  | e4. fis8 d cis d e cis4.\prall d8
  | d4\arpeggio \stemNeutral fis a4. b8 a g fis e
  | dis b cis dis e fis g a g fis e d
  | c4. b8 a c b a \stemUp g4. fis8
  | fis4. \stemNeutral a'8 g fis e dis \stemUp cis b g'4^!
  %25
  | a,4.\prall \stemNeutral g'8 fis e dis cis \stemUp b a fis'4^!
   \break
  | g,4. b8 cis dis e fis g[ a~] a4~
  | a4. b8 g4. fis8 fis4.\prall e8
  | e2.~  \once\tieDashed e2~ \magnifyMusic 0.8 { e8 }
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | <e g>4.\arpeggio s2. \once\omit Flag \once\omit Stem dis8~ dis4
  | <e g>4.\arpeggio s8 s1
  | s2 <g b>4.\arpeggio s8 s2
  | s2 <e gis b>4.\arpeggio s8 s2
  %5
  | s1.
  | fis4. s8 s2 d4\rest <fis a c>
  | g2 s \magnifyMusic 0.8 { d4\rest } <g b>
  | fis4. s8 s1
  | s1 fis2
  %10
  | s1.
  | e'8 g fis e d cis~ cis4 ais2
  | b2. \once\tieDashed <dis, fis>2~ \magnifyMusic 0.8 { q8 }
  \partial 8 s8
  | <b' dis>4 s s1
  | <b e>4.\arpeggio s8 s2 d,4\rest gis!
  %15
  | a1 gis2
  | <c, e>4.\arpeggio s8 s2 g'4\rest <c d>
  | s1.
  | s4 a~ a1
  | a1.~
  %20
  | a1 g2
  | <fis a>4\arpeggio s s1
  | s1.
  | s1 e2
  | dis4. s2. \once\omit Flag \once\omit Stem b'8^~ \once\stemUp \shiftOn b4 \shiftOff
  %25
  | <dis, fis>4. s2. \once\omit Flag \once\omit Stem a'8^~ \once\stemUp \shiftOn a4 \shiftOff
  | e2 e\rest g4\rest cis!
  | \once\stemUp \appoggiatura cis8 dis2 e dis
  | e2. \once\tieDashed <g, b>2~ \magnifyMusic 0.8 { q8 }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1.*2
  | s1 c4\rest c^!
  | b4. c8\rest c2\rest b4\rest f!^!
  %5
  | a8\rest e a b c d e d c b a g
  | s1.*4
  %10
  | s1 a4\rest g^!
  | fis2. g4 fis2
  | a4\rest dis,4 fis \once\tieDashed b2~ \magnifyMusic 0.8 { b8 }
  \partial 8 s8
  | s1 s8 \once\omit Flag \once\omit Stem a~ a4
  | s1 s4 e~
  %15
  | e8 gis a4~ a2 e
  | s1.*2
  | s1 fis8 g~ g4
  | \once\slurDown \appoggiatura g8 fis4. b,8 cis d e fis g a~ a4~
  %20
  | a8 fis g e fis4. e8 e4.\prall d8
  | d4. s8 s1
  | s1.*2
  | \change Staff = "upper" \stemDown s1 d'4\rest e
  %25
  | s1 d4\rest <dis fis>
  | \change Staff = "lower" \stemUp
    s1.*2
  | e,2 b4 \once\tieDashed e2~ \magnifyMusic 0.8 { e8 }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  \partial 8 r8
  %1
  | e4 e, r2 r
  | r8 e' fis g a b c b a g fis e
  | b'4. c8 b a g fis \stemDown\tieDown e dis~ dis4
  | e4. f8 e d c b a gis~ gis4
  %5
  | a4 a\rest g2\rest g\rest
  | d''4 d, r2 r4 d'
  | d d, r2 r4 d'
  | d d, r2 \stemNeutral r8 d e fis
  | g a g fis e d e c d4 d,
  %10
  | g4 g'8 a g fis e d \stemDown cis b~ b4
  | ais fis b e fis fis,
  | b2.~ \once\tieDashed b2~ \magnifyMusic 0.8 { b8 }
  }
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral b'4. b,8 cis dis e fis g a dis,!4
  | e8 fis e d c b a gis fis e~ \stemDown e4
  %15
  | a4. b8 c4 d e e,
  | \stemNeutral a a' g! fis e fis
  | g4. a8 b a g fis e fis e d
  | a'4. a,8 b cis d e g,4\rest \stemDown a~
  | a4. s8 s2 g4\rest b
  %20
  | cis2 d4 g, a2
  | d,4. \stemNeutral d''8 c b a g fis g a fis
  | b4. a8 g fis e dis e fis g e
  | a b a g fis e' dis b e b cis ais
  | b4 b, r2 r4 b'
  %25
  | b4 b, r2 r4 b'
  | b4
    \once\override Tie.staff-position = #-3.5
    b,~ b8
    b cis dis e fis g a
  | b cis dis b e4 a, b b,
  | e,\rest \stemDown e2~ \once\tieDashed e2~ \magnifyMusic 0.8 { e8 }
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
    opus = ##f % "BWV 810"
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
