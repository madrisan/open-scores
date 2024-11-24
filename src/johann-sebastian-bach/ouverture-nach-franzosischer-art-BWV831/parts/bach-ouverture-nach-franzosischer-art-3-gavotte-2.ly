Global = {
  \key b \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \label #'GavotteII
  \stemNeutral\tieNeutral
  \override Glissando.style = #'dashed-line
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 \clef bass fis4 a8 g
  %1
  | a4 d cis\prall b
  | a\prallup d2 cis8 b
  | a4 g8 fis e fis g e
  | g fis e d fis4 a8 g
  %5
  | a4 d cis\prall b
  | a\prallup fis'2 e8 d
  | cis d e4 e, gis\trill
  | a2
  }
  \break
  \repeat volta 2 {
  \partial 2 cis4 e8 d
  | e4 a,2 b8 cis
  %10
  | d e fis4 fis, fis'
  | d\prall cis8 d e d cis b
  | cis4 fis, \clef treble fis'8 g a f
  | \slurNeutral g_. e( dis e) fis_. e( dis e)
  | b_. e( dis e) a_. e( dis e)
  %15
  | g_. e( dis e) fis_. e( dis e)
  | \clef bass e,2 \clef treble b'4 d8 cis!
  | d4\prallup^\markup { \tiny\sharp } b'2 d,4
  | cis8( a b cis) d( e fis e)
  | g!( fis e d)\prallup a'4 g8 fis
  | \appoggiatura fis8 e2*1/2 \glissando
    \change Staff = "lower" \once\stemDown \once\omit Stem a,,4
    \change Staff = "upper" a'8_. g'( fis e)
  | a,8_. fis'( e d) a_. e'( d cis)
  | \clef bass a^. d( cis b) a( g fis e)
  | g( fis e d) e4 cis'\parenthesize\trill
  | d2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override Glissando.style = #'dashed-line
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 2 d4 e
  %1
  | fis2 e4 d
  | cis b8 a g fis e g
  | fis4 g a a,
  | d2 d'4 e
  %5
  | fis2 e4 d
  | cis d8 cis b a gis b
  | a4 cis e e,
  | a2
  }
  \repeat volta 2 {
  \partial 2 a'4 b
  | a g! fis^\prall e
  | fis8 e d cis b ais gis ais
  | b4 fis' ais, b
  | fis'8 e d cis dis e fis dis
  | e4 b a' b,
  | g' b, fis' b,
  | e c a b
  | e e,8 fis g4 e
  | fis8_. e'( d cis) gis_. d'( cis b)
  | a4 g! fis e
  | d b' fis g
  | \change Staff = "upper" \once\stemDown \once\omit Flag \once\omit Stem \grace fis''8 \glissando
    \change Staff = "lower" a,,8 gis a b cis4 a
  | d a g' a,
  | fis' a, cis a
  | d b g a_\markup { \hspace #-0.5 "Gavotte I da capo" }
  | d,2
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
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 831"
    title = \markup { "Gavotte II" }
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
