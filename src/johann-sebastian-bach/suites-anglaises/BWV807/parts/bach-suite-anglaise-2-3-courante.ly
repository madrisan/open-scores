Global = {
  \key a \minor
  \time 3/2
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIICourante
  \repeat volta 2 {
  \partial 8 a8
  %1
  | a4. b8 c( d e f) e( d c b)
  | c4.\prallprall b8 a4 a' gis( a8)\mordent b
  | \stemUp e,4. g!8 f e d f e d e f
  | \once\slurDown\appoggiatura c8 b2 r4 \stemNeutral gis8 a a4.\prallprall gis16 a
  %5
  | b4. c8 d b c d d4.\prallprall c16 d
  | e4. f8 g e f g g4.\prallprall f16 g
  | a8( bes a g) f( e d c) f4.\mordent f8
  | \stemUp f4.\arpeggio s8 \stemNeutral e( f g a) g( f e d)
  | e4.\upmordent d8 c e( d c) b a b c
  %10
  | \slurDown \appoggiatura g8 f4.\prall e8 f( d e f) g( a bes g)
  | a4. g8 f e d d' b4.\prallprall c8
  | \stemUp\tieUp c2.~ c2~ \once\override Stem.length = #7 c8
  }
  \break
  \repeat volta 2 {
  \partial 8 e8
  | \stemUp e4. d8 c b a g fis gis a b
  | \stemNeutral\slurNeutral gis4.\prall a8 b4 e, d'\prall c8 b
  %15
  | c4. b8 a b c d e f g e
  | cis4.\prallprall d8 e4 a a8( g f e)
  | f4.\turn g8 a4 d,8( e) g( f e d)
  | d2.\mordent f8( e d c d b)
  | g'4. f8 e d c b c[ a] d4
  %20
  | c8( b\prall a g) a( b c d e) b c a
  | fis\prall e fis a b c d e f![ e] a4
  | gis4.\prall a8 b e, c'4 c8( b a gis)
  | a e f d e4.\mordent f8 \stemUp b,4.\prallprall a8
  | a2.~ a2~ \once\override Stem.length = #7 a8
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | <c e>4. s8 s1
  | s1.
  | e8\rest e a2 gis4 a2
  | d,8\rest a' gis4 s1
  | s1.*3
  %8
  | \once\override NoteColumn.force-hshift = #-0.4 d'4.\arpeggio d8 s1
  | s1.*3
  %12
  | s2.
    << {
      \stemUp \override NoteColumn.force-hshift = #0.2 g,2~ g8
      \revert NoteColumn.force-hshift
    } \\ {
      e2~ e8
    } >>
  \partial 8 s8
  | << {
      \once\override NoteColumn.force-hshift = #-0.3 \once\stemDown c'4.
    } \\
      g4.
    >>
    s8 s1
  | s1.*9
  %23
  | s1 gis2
  | s2.
    << {
      \override NoteColumn.force-hshift = #0.2 e2~ e8
    } \\ {
      c2~ c8
    } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s1.*7
  %8
  | \change Staff = "upper" \stemDown \once\override NoteColumn.force-hshift = #0 g'4\arpeggio s s1
  | \change Staff = "lower" \stemUp a,8\rest g c4 s1
  | s1.*2
  | c,2 g4 c2~ c8
  \partial 8 s8
  | s1.*11
  %24
  | f4\rest c e a2~ a8
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | a4 e a, a' gis e
  | a8 a, a' b c d e f e d c b
  | c4. cis8 d4 b c d
  | e4. e8 d c b d c b c d
  %5
  | gis,( b a gis) fis( e a! g) f e f g
  | c, f e d c bes a c bes a bes c
  | f,4 f'8 g a g f e d c b! a
  | b g a b c d e f g4 g,
  | \stemDown c4. d8 e4 f g a
  %10
  | \stemNeutral b8 c d c b a g f e c d e
  | f e f g a4 f g g,
  | \stemDown\tieDown d4\rest c2~ c~ c8
  }
  \repeat volta 2 {
  \partial 8 r8
  | \stemNeutral\slurNeutral c'4 d e c d b
  | e8 d f e d c b a gis fis gis e
  %15
  | a gis a b c d e f g! a bes g
  | a g bes a g f e d cis b! cis a
  | d4 bes' f g a a,
  | d, a''8 g f( e d c) b a g f
  | e( g a b) c d e fis g( fis e d)
  %20
  | g4 f! e d c a
  | d e d c b c8 d
  | e( d) f( e) d c b a d4 e
  | f8 cis d a' gis e a d, e4 e,
  | \stemDown\tieDown a2.~ a2~ a8
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
    opus = ##f % "BWV 807"
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
