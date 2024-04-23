Global = {
  \key a \minor
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | a8 b b\prall a16 b c8 gis
  | a4\mordent e a
  | b8 c c\prall b16 c d8 a
  | b4\mordent e d
  %5
  | d16 c b c_~ \stemUp <c f>4^. <b e>^.
  | b16 a gis a_~ <a d>4^. <g c>^.
  | f'16\rest b, a gis a b c d e d e f
  | gis,4.\prall fis8 e4
  | \tieUp c'2.~
  %10
  | c16 c b c e c b c a' c, b c
  | d2.~
  | d16 d c d e d c d b' d, c d
  | e4 fis8 gis a b
  | c16 a g a \stemNeutral b g fis g a fis e fis
  %15
  | g e dis e \stemUp fis4 dis
  }
  \alternative {
    { e2. }
    { e2. }
  }
  \break
  \repeat volta 2 {
  | \stemNeutral b8 c c\prall b16 c d8 b
  | f e f d e b'
  %20
  | \stemUp cis d d\prall cis16 d e8 cis
  | \stemNeutral bes a bes g a g'
  | \stemUp f16 d cis d <f bes>4^. <e a>^.
  | \stemUp e16 d cis d_~ <d g>4^. <c f>^.~
  | f8 e f e d cis
  %25
  | d2.
  | f~
  | f16 b, a b c b a b d b a b
  | e2.~
  | e16 a, gis a b a gis a c a gis a
  %30
  | \stemNeutral d e f8~ f16 e d c d c b a
  | b c d8~ d16 c b a b a gis fis
  | e gis fis e a c b a d c b a
  | e'8 d16 c b a gis fis e d c b
  | r16 e d e fis e d e g e d e
  %35
  | r16 fis e fis gis fis e fis a fis e fis
  | r16 gis fis gis a gis fis gis b gis fis gis
  | r16 a gis a b a gis a cis a gis a
  | d a gis a e' a, gis a f'4~
  | f16 d c! d e c b c d b a b
  %40
  | \stemUp c a gis a b4 gis
  | a2.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*3/4*6
  %7
  | f4 e d\rest
  | s2.
  | b8\rest e16 f
    \once\override Script.extra-offset = #'(0 . -2.0)
    f8.^\prall e32 f g8 c,
  %10
  | a'4 e\rest e\rest
  | e8\rest a16 b
    \once\override Script.extra-offset = #'(0 . -1.0)
    b8.^\prall a32 b c8 a
  | b4 e,\rest e\rest
  | g8\rest gis a b c d
  | e \staffLower\stemUp fis,4 e dis8
  %15
  | e4 \staffUpper\stemDown g8\rest c4 b8
  | a4( gis2)
  | a4( gis2)
  | \staffLower\stemUp gis,8 a a^\prall gis16 a b8 b\rest
  | b4 b b
  %20
  | \staffUpper\stemDown e8 f f8\prall e16 f g8 e\rest
  | \staffLower\stemUp e4 e e
  | d \staffUpper\stemDown g16\rest d' c bes g16\rest c bes a
  | bes8[ bes,] e16\rest bes' a g e16\rest a g f
  | bes4 a8 g f e
  %25
  | f2.
  | g8\rest d' cis d a d~
  | d d,\rest d4\rest d4\rest
  | g8\rest c b c g c~
  | c c,\rest b4\rest b\rest
  %30
  | s2.*8
  | \staffLower\stemUp s2 b8\rest d
  | gis, b4 a gis8
  | a4 \staffUpper\stemDown d8\rest f4 e8
  | d4( c2)
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  %1
  \repeat volta 2 {
  | <a c e a>4 r r
  | a'8 b b\prall a16 b c8 a
  | gis 4 a f
  | e8 fis fis\prall e16 fis gis8 e
  %5
  | a a, \staffUpper e''16\rest a g f e16\rest g f e
  | f8 \staffLower\stemUp f, \staffUpper\stemDown b16\rest f' e d b16\rest e d c
  | \once\override NoteColumn.force-hshift = #0.4 d8
    \staffLower\stemDown b \stemNeutral c a16 b c8 d
  | e f e d c b
  | a a, r16 a' g f e g e c
  %10
  | f8 f, a'( g) g( fis)
  | fis fis, r16 fis' g a g fis e d
  | g8 g, b'^( a) a^( gis)
  | gis16 f' e d c e d c b d c b
  | a4 g fis
  %15
  | e8 fis16 g a,4 b
  }
  \alternative {
    { e,8[ b'] e d c b }
    { e,4 b' e }
  }
  \repeat volta 2 {
  | e2 a,4\rest
  | gis' gis gis
  %20
  | g2 r4
  | cis cis cis
  | d8 d, s2
  | s2.
  | \staffUpper \once\override NoteColumn.force-hshift = #0.4 g'8
    \staffLower\stemUp g, \stemNeutral\tieNeutral a4 a,
  %25
  | d8 a16 g f g a8 d,4
  | r16 d' e f g a b cis d e f d
  | g8 d g, d g,4
  | r16 c d e f g a b c d e c
  | f8 c f, c f,4
  %30
  | r8 b c d e fis
  | gis e fis gis a b
  | c b c d gis, a
  | gis16 a b8~ b16 a gis fis e d c b
  | c8 c' b c, cis a'
  %35
  | d, d' c d, dis b'
  | e, e' d e, f d'
  | c b a f' g, e'
  | f, d' e, cis' \stemDown\tieDown d,4~
  | d c b
  %40
  | \stemDown a8 b16 c \stemNeutral d,4 e
  | << { \stemDown a2. } \\ { \stemUp f'4\rest e a } >>
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
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 827"
    title = \markup { "Burlesca" }
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
