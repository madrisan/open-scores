Global = {
  \key b \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | fis4 cis'4.\mordent( d16 e)
  | d8[ cis d e] fis4~
  | fis8[ b, e d! cis b]
  | ais2.
  %5
  | b4 fis4.\mordent( g16 a)
  | g8[ e gis b] e4~
  | e8 fis d4\prall cis8 d
  | cis2.~
  | cis4 b8[ a gis fis]
  %10
  | b4. d,8 cis4~
  | cis8 cis' fis, eis b' a
  | \alternative {
      { \appoggiatura gis8 fis2. }
      { fis2. }
    }
  }
  \break
  \repeat volta 2 {
  | cis'4 fis\mordent~ fis16 e d cis
  %15
  | d4 dis2~
  | dis8 e g, fis e' dis
  | e2.~
  | e8 e, a fis g! e'
  | g, fis e d d'4~
  %20
  | d8 e d c\prall b c
  | b2.
  | b,4 b'~\mordent b16 a g fis
  | gis8. ais32 b ais8 cis e4~
  | e8 cis d fis g b,
  %25
  | <fis ais> <e fis> <d gis> <fis ais> <gis b> <ais cis>
  | <b d> <a! b> <g cis> <fis d'> <g e'> <e cis'>
  | b' ais g' e fis4~
  | fis8 b, d cis b ais
    \alternative {
      { b2. }
      { b }
    }
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | d4 e fis~
  | fis8[ e fis g] a! b16 c
  | b8 a g2~
  | g16 fis e d e8( fis16 g fis g e8)
  %5
  | fis4 b,2~
  | b8 a\rest a4\rest e'8\rest gis!
  | a2 gis4~
  | gis8 eis fis4. gis8
  | a16 gis fis eis fis4 b,~
  %10
  | b8 a gis4 e\rest
  | e\rest d'~ d8 cis
  | \appoggiatura b8 ais4. ais8 b[ cis]
  | ais2.
  | R1*3/4
  %15
  | g'16\rest g fis e fis g a! b c8 b~
  | b4. \once\override NoteColumn.force-hshift = #1.4 a8 a4~
  | a8 g16 fis gis d'! cis b a b gis8
  | a4 cis, b\rest
  | a\rest g\rest g'8\rest c
  %20
  | b4. a~
  | a8 fis g e dis e
  | b4 c\rest c\rest
  | c8\rest b e4. g!8
  | fis2 g8\rest g
  %25
  | s2.*2
  | d8 cis f4\rest f8\rest cis'
  | fis,4. e8 d[ cis]
  | d2.
  | d


}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | b8 a g4 fis
  | b ais dis~
  | dis b e8 d!
  | cis2.
  %5
  | b8\rest fis~ fis[ a! g fis]
  | e g b2
  | b8\rest cis[ b a] b4
  | a e'8\rest b a gis!
  | fis[ a] gis fis4.~
  %10
  | fis4 gis b\rest
  | b\rest b eis,
  | fis4. fis8 gis[ ais]
  | <cis, fis>2.
  | g''16\rest e! fis g! fis e d cis b8 ais
  %15
  | b4 fis'2
  | b,4 c b
  | b2.
  | e,
  | a2~ a8 fis
  %20
  | g2 d'4~
  | d b2
  | fis4 b\rest b\rest
  | b8\rest e,16 fis g!4~ g16 fis e d
  | cis4 b c'8\rest d
  %25
  | cis ais b cis \change Staff = "upper" \stemDown d e
  | fis4 e b\rest
  | \change Staff = "lower" \stemUp c4\rest c\rest c8\rest <e, ais>
  | <fis b>4 g fis
  | fis2 d'4\rest
  %30
  | fis,2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b2 ais4
  | b4 fis'4. g16 a!
  | g2 e4
  | fis cis4.( d16 e)
  %5
  | d4 dis2
  | e4 b4.( cis16 d!)
  | cis8 d e2
  | a,4 a'8 gis fis e!
  | dis4 d2~
  %10
  | d8 b eis4~ eis8 fis16 gis
  | a,4 b cis
  | \alternative {
      % We need a phantom appoggiatura here to workaound a known lilypond bug
      { \appoggiatura s8 fis,4 fis'8 e! d cis }
      { fis,2. }
    }
  }
  \repeat volta 2 {
  | ais'2 fis4
  %15
  | b, b'~ b16 a g fis
  | g4 a b
  | e, b4. cis16 d
  | cis4 a4. b8
  | c d c b c a
  %20
  | b4 e fis
  | g, g'~ g16 g fis e
  | dis8 cis dis e16 fis b,8 cis
  | d4 cis4. b8
  | ais4 b e
  %25
  | fis2~ fis16 e d cis
  | b4 e2~
  | e8 g cis, d e cis
  | d4 e fis
    \alternative {
      {
  |      b,8 cis e d fis gis
      }
      {
  |      b,2.
      }
    }
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
  \fine
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
    title = \markup { "Sarabande" }
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
