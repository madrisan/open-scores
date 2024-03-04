Global = {
  \key d \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \repeat volta 2 {
  %1
  | fis32 e d8.~ d4 cis8.^\prall d16
  | \stemDown fis,16[ g a] \stemUp b32 c \stemDown a'2
  | \stemUp b,16 a b d~ d cis! e d cis b a g
  | \stemNeutral\tieNeutral fis16 a g fis g fis e fis e d8 e16
  %5
  | fis32 gis a8 gis16 a e32 d e16 cis'~ cis d e, b'
  | cis32 dis e8 dis16 e16 b32 a b16 gis'16~ gis a b, fis'
  | gis32 a b8 a32 gis fis e a16. gis32 fis e dis e fis8 a,16
  | \stemUp gis32 fis e16 d' b gis e \staffLower b gis e fis32 gis a b cis d
  | cis32 \staffUpper e a8 gis16 a16 e32 a cis b a gis a16 e32 a cis b a gis
  %10
  | \stemNeutral a32 cis d8 cis16 d16 a32 d fis e d cis d16 a32 d fis e d cis
  | d32 fis e d cis b cis e a16 gis32 fis e d cis b cis16 a e gis
  | \tieUp a4~ a16 a8 gis16 a4
  }
  \break
  \repeat volta 2 {
  | \stemUp\tieUp cis32 b a8.~ a4( g!8)^\prall fis16 g
  | \once\override TupletNumber.extra-offset = #'(0 . -8)
    \tuplet 6/4 { \staffLower \stemDown ais,16[ b cis d] \staffUpper \stemUp e[ fis] } \stemDown e'2
  %15
  | \stemUp\tieDown d16 cis b^\prall g'~ g32 fis e16 fis c~ c32 b ais16 b e~
  | e ais, b cis b ais gis ais gis fis8 ais32 cis
  | \stemNeutral\tieNeutral d cis b8 cis32 dis e dis cis8 dis32 e fis e dis8 e32 fis
  | g fis e16~ e32 b e fis g fis e d! cis b ais gis ais cis e8 g,16
  | fis32 g fis e e fis e d d e d cis cis d cis b b cis b ais e'16. d32
  %20
  | \appoggiatura cis b8~ b32 cis d e fis e d16~ d32 e fis g a32 g fis16~ fis32 g a b
  | c b a8 dis16 e b32 a b16 g'~ g a c, b
  | a32 g a8 g'16 fis32 e dis8 e32 g c32 b a8 gis32 a
  | b, a' g fis g16 e c f dis e~ e dis32 cis dis fis a16~
  | a g32 fis g8~ g32 fis e fis g fis e d cis b a b cis d e fis
  %25
  | g a, gis a b cis d e fis16 c32 b c16 g' a c, b a
  | b32 g fis g a b cis! d cis16 g32 fis g16 d' e g, fis e
  | \stemUp\tieDown fis32 a b cis d cis d16~ d32 gis a b a gis fis e d cis d16 b' d,
  | d cis8.^~ cis32 d e d cis d cis b b16 a8.
  | fis'32 e d8. d4( cis8.)^\prall d16
  %30
  | \stemDown fis,[ g a] \stemUp b32 c \stemDown a'2
  | \stemUp b,32 cis! d8 cis16 d a32 g a16 fis'~ fis g a, g'
  | \stemNeutral\tieNeutral fis32 g a8 g32 fis e fis g8 fis32 e d e fis8 e32 d
  | cis e d cis d cis b a~ a fis' e d e cis b a~ a g' fis e fis cis b a~
  | \once \override Beam.positions = #'(-4 . -3)
    a a' g fis g fis e d cis e d cis d cis b a g b a g a g fis e
  %35
  | fis a d,8 cis16 d16 a32 d fis e d cis d16 a32 d fis e d cis
  | d fis g8 fis16 g d32 g b a g fis g16 d32 g b a g fis
  | g b a g fis e fis a d16 cis32 b a g fis e
    \once\override Beam.positions = #'(2 . 1)
    fis16 d a cis
  | d4 \staffLower
    \once\override Beam.positions = #'(11.3 . 12.8)
    fis,16 \staffUpper \stemUp a d cis d4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemUp
  \override Rest.staff-position = #0
  %1
  | \shiftOn a4 \shiftOn g2
  | s2.*10
  %12
  | \stemDown d16\rest e fis d << { \stemDown cis8[ b] } \\ { \stemUp s d } >> \stemDown <a cis e>4
  | e' d e
  | s2.*15
  %29
  | \stemUp \shiftOn a4 g2
  | s2.*8
  %38
  | s4 s16 \stemDown a,8 \staffLower\stemUp g16 a4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  %1
  | \staffUpper\stemDown d4 e2
  | \staffLower\stemUp s2.*9
  %11
  | s2 e,4~
  | e8 d e f e4
  | s2.*16
  %29
  | \staffUpper\stemDown d'4 e2
  | \staffLower\stemUp\tieDown s2.*8
  %38
  | << {
      d,,16 fis a d_~ \stemDown \once\override NoteColumn.force-hshift = #0.3 d2
    } \\ {
      s4 \once\override NoteColumn.force-hshift = #0 fis8. e16
      fis4
    } >>
}

Bass = \context Voice = "four" \relative c'' {
  \voiceFour
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | s2.*2
  | \staffUpper\stemDown g8 fis e g \staffLower\stemUp a, cis
  | \stemDown d8 a d, a fis a
  %5
  | \stemUp d,8[ \stemDown d''16 b cis8 a b gis]
  | \stemNeutral a,8[ a'16 fis gis8 e fis dis]
  | e,8[ d'!16 b cis8 a fis dis']
  | e8 e, g4\rest g\rest
  | a'8 b cis e cis a
  %10
  | fis8 e fis a fis d
  | \tieDown b16 gis' a e cis b cis d \stemDown e8 e,
  | a2.
  }
  \repeat volta 2 {
  | a'4 b cis
  | s2.
  %15
  | \stemUp b8 \staffUpper\stemDown g' cis, dis \staffLower\stemUp g, \staffUpper\stemDown e'
  | \staffLower\stemUp fis,8 \staffUpper\stemDown g' fis e d cis
  | \staffLower\stemNeutral b8 a g a g fis
  | e8 d cis d cis b
  | ais8 b e g fis fis,
  %20
  | b8 cis d e fis g
  | a8 fis g e e' d
  | c8 a b g a fis
  | dis'8 e a, c fis, b
  | e,8 b e, b' e d
  %25
  | cis a d e fis d
  | g8 e a b cis a
  | d8 b \staffUpper\stemDown e fis gis e
  | a8 b a g! fis e
  | s2.*2
  %31
  | g8 e fis d e cis
  | d8 \staffLower\stemDown b cis a b gis
  | \stemNeutral a8 e g! cis, e a,
  | cis,4 r r8 cis'
  | d8 e fis a fis d
  | b8 a b d b g
  | e16 cis' d a fis e fis g a8 a,
  | \stemDown \shiftOn d2.
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 828"
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
