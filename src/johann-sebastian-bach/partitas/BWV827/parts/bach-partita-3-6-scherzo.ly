Global = {
  \key a \minor
  \time 2/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 e16 c a8~
  %1
  | a gis16 a b c d b
  | d c b a e' d c b
  | a e a c b e, b' d
  | c e c a c a g f
  %5
  | e g a b c f, e d
  | c g' a b c b c a
  | c b c g c b c f,
  | e g a b c d e8~
  | e16 d e f e d c b
  %10
  | a g a b c d e f
  | g8 c, e16 d c b
  | c4\mordent
  }
  \break
  \repeat volta 2 {
  \partial 4 g'16 e c8~
  | c b16 c d e f d
  | f e d c a' f d8~
  %15
  | d cis16 d e f g e
  | g f e d bes' c bes g
  | a d a f g a g e
  | f d' f, d ees bes' g ees
  | cis a a'8 d,\prallmordent e16 cis
  %20
  | d4\mordent f16 d a8~
  | a b16 c d e f d
  | c b a g e' c gis8~
  | gis a16 b c d e c
  | b a gis a d f, e d
  %25
  | d' gis, fis e d' b a gis
  | d' c b f' e d c b
  | c b d c b a gis a
  | b gis fis e e' c a8~
  | a gis16 a b c d e
  %30
  | f e d f e d c b
  | c d e a, c b a gis
  | a4\parenthesize\mordent
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 <a c e a>8 r
  %1
  | <c e a> r <e gis> r
  | a r <a, c e a> r
  | <c e a> r <e gis> r
  | a r a, a'
  %5
  | g[ g, f f']
  | e[ e, a f']
  | e[ g, f d']
  | c[ e, g c]
  | f,[ a d f~]
  %10
  | f16 e d c b a g f
  | e8[ a f g]
  | c,4
  }
  \repeat volta 2 {
  \partial 4 <c' e g c>8 r
  | <e g c> r <g b> r
  | c r <f, a d> r
  %15
  | <g bes> r <cis, e a> r
  | <d a'> r d' d,
  | c[ c' bes bes,]
  | a[ a' g g,~]
  | g16 e' f g a8 a,
  %20
  | d16 a f a d,8 f16 a
  | d8[ c b a]
  | g a16 b c d e c
  | f8[ e d c]
  | d[ c b a]
  %25
  | b[ a gis fis]
  | gis[ e' fis gis]
  | a[ f d f]
  | e d <c e gis a> r
  | <b d f b> r <a b d f> r
  %30
  | << { \stemDown gis16 a b c } \\ { \stemUp <b d>16 s8. } >> d16 e fis gis
  | a8[ c, d e]
  | \stemNeutral a,4
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
    opus = ##f % "BWV 827"
    title = \markup { "Scherzo" }
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
