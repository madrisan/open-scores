Global = {
  \key a \major
  \time 12/8
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

voiceOneOssia = \relative c'' {
  %1
  | \key a \major
    \stemUp
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \override TextScript.padding = #3
    a32[(^\markup { \italic "ossia" } gis a8.)] a8  a32[( gis a8.)] a8
    a32 b cis b cis b cis b cis b cis b  cis b cis b cis b cis b cis b a b\laissezVibrer
    \stopStaff
    \override Staff.Clef.break-visibility = #all-invisible
    \override Staff.KeySignature.break-visibility = #all-invisible
  | s1*12/8*19
  %21
  | \stemNeutral\omit TupletBracket
    \set subdivideBeams = ##f
    s4 \startStaff s8 a16 d cis b e8~
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/16)
    \tuplet 3/2 { e32[ fis e } \tuplet 3/2 { d e fis } cis8 \tuplet 3/2 { b32 cis b } a16]
    a4.\fermata
    \fine
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | a4\mordent a8 a4\mordent a8 b2.~\upmordent
  | b16 a gis a b cis  d cis d fis e d  cis a cis e a fis  dis b dis fis a fis
  | gis a gis fis e dis  cis dis e dis cis b  a cis e cis a cis  fis, a cis a fis a
  | dis,8 fis dis  b16 dis fis a gis fis  e gis b e b gis e4 r8
  %5
  | e'4\mordent e8  e4\mordent e8  e16 a e cis a cis  e16 a e cis a cis
  | d4\mordent d8  d4\mordent d8  d16 b' gis d b d  gis b gis d b d
  | cis8 r r  r16 d, fis a d cis  b8 r r  r16 cis, eis gis cis b
  | a8 r r  r16 b, d fis b a  gis fis b a gis fis  eis gis cis b a gis
  | fis8 fis' fis,  fis cis fis  gis2.~\prallmordent
  %10
  | gis16 fis eis fis gis a  b a b d cis b  a fis a cis fis dis  bis gis bis dis fis dis
  | e fis e dis cis b  a b cis b a gis  fis a cis a fis a  dis, fis a fis dis fis
  | bis,8 dis fis a gis bis  cis16 e gis e cis e  gis e cis e gis e
  | cis e fis e cis e  fis e cis e fis ais,  b d fis d b d  fis d b d fis d
  | b d e d b d  e d b d e gis,  a4\mordent a8  a4\mordent a8
  %15
  | a16 dis b a fis a  b dis b a fis a  g4\mordent g8 g4\mordent g8
  | g16 e' cis g e g  cis e cis g e g  fis8 r r  r16 gis, b d gis fis
  | e8 r r
    r16
    \override Beam.positions = #'(12.5 . 13.5)
    \stemUp \staffLower fis, a cis
    \staffUpper fis e  d8 r r  r16
    \override Beam.positions = #'(12 . 13)
    \staffLower e, gis b \staffUpper e d
  | \stemNeutral \revert Beam.positions
    cis a cis e a e  cis' a cis e a fis  d fis a fis d fis  b, d fis d b d
  | gis,8 b d  fis( e) b  fis'( e) a,  e'( d) gis,
  %20
  | d'( cis) e,  fis16 gis a b cis d  gis, e gis b e b  gis' e b' gis e gis
  | a8 e cis  a16 d cis b e8~  e16\turn fis cis8 b16\prall a  a4.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \stemNeutral\tieNeutral
  %1
  | a16 b cis b a gis  fis gis a gis fis e  d fis a fis d fis  b, d fis d b d
  | gis,8 b gis  e fis gis  a4 r8  r4 r8
  | e'4\mordent e8  e4\mordent e8  fis2.\upmordent~
  | fis16 e dis e fis gis  a gis a cis b a  gis e gis b e b  gis e gis b d! b
  %5
  | cis d e d cis b  a b cis b a gis  fis8 fis' cis  a fis a
  | b16 cis d cis b a  gis a b a gis fis  e8 b gis  e4 r8
  | r16 a' cis e a gis  fis8 r r  r16 gis, b dis gis fis  eis8 r r
  | r16 fis, a cis fis e  d8 r r  r16 b, d fis b a  gis cis, eis gis cis b
  | a b a gis fis e  d e fis e d cis  b d fis d b d  gis, b d b gis b
  %10
  | eis,8 gis eis  cis dis eis  fis fis' dis  gis fis gis
  | cis,4\mordent cis8  cis4\mordent cis8  dis2.~\upmordent
  | dis16 cis bis cis dis e  fis e fis a gis fis  e cis e gis cis gis  e cis e gis cis b
  | ais fis ais cis fis cis  ais fis ais cis fis e  d b, d fis b fis  d b d fis b a
  | gis e gis b e b  gis e gis b e d  cis d e d cis b  a b cis b a gis
  %15
  | fis8 a dis~  dis cis b  e16 fis g fis e d  cis d e d cis b
  | a8 e cis  a4 r8  r16 d fis a d cis  b8 r r
  | r16 cis, e gis cis b  a8 b,\rest b\rest  r16 b d fis b a  gis8 b,\rest b\rest
  | a4\mordent a8  a4\mordent a8  b2.~\upmordent
  | b16 a gis a b cis  d cis d fis e d  cis b cis e d cis  b a b d cis b
  %20
  | a gis a b cis a  d4\mordent d8  d2.\upmordent
  | cis16 d cis b a gis  fis fis' e d cis b  cis d e8 e,  a4._\fermata
    \fine
}

\score {
  <<
  \new Staff = "ossia" \with { \include "../ossiasetup.ly" }
  { \voiceOneOssia }
  \new PianoStaff
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceTwo
      >>
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 783"
    title = \markup { "Invention XII" "(A-Dur)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4. = 72
  }
}
