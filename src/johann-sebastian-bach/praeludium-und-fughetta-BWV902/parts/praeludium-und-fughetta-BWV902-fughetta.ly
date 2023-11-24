Global = {
  \key g \major
  \time 3/8
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

tema = \markup {
  \normal-text\circle \teeny "T"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieNeutral\slurNeutral
  %1
  | r16 d^\tema b d g d
  | b d g, d' b d
  | e c a c fis, a
  | d b g b e, g
  %5
  | c a fis a d, fis
  | b a g a b c
  | d a b cis d e
  | \stemNeutral fis e d e fis g
  | a8 r a
  %10
  | a g g
  | g fis fis
  | fis e e
  | e16 g fis e d e
  | fis a g fis e d
  %15
  | \stemUp g8 g\rest g\rest
  | a\rest d, d
  | c c c
  | b b b
  | a a a
  %20
  | g g g
  | fis fis fis
  | e e e
  | fis r r
  | a'\rest a a
  %25
  | a16 d, b d g d
  | b d g, d' b d
  | e8 f\rest f\rest
  | f\rest b b
  | b16 e, c e a e
  %30
  | c e a, e' c e
  | \stemNeutral fis8 r r
  | \stemUp f\rest fis fis
  | fis e dis
  | e g g
  %35
  | <e g> <d! fis> q
  | <d fis> <c e> q
  | dis16 e fis8 fis
  | fis g e
  | e d!16 cis d e
  %40
  | \stemNeutral fis e d fis b fis
  | d fis b, fis' d fis
  | g e cis e a, cis
  | fis d b d g, b
  | e cis ais cis fis, ais
  %45
  | d fis b, fis' d fis
  | b, d fis, b d b
  | gis b e, gis b gis
  | e gis b, e gis d
  | c! e a, c e c
  %50
  | \clef bass a c e, a c a
  | fis a d, fis a fis
  | d fis a, d fis \staffLower c
  | \staffUpper \clef treble
    \stemUp g'''8\rest g fis
  | g d d
  %55
  | d c c
  | c b b
  | b a a
  | a8 s4
  | b16 g a4
  %60
  | g4.
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \stemDown\tieDown\slurNeutral
  %1
  | \override MultiMeasureRest.staff-position = #-8
    R1*3/8*7
  | s1*3/8*7
  %15
  | b16 a g a b c
  | d8 b b
  | b a a
  | a g g
  | g fis fis
  %20
  | fis e e
  | e d d
  | d cis cis
  | d s s
  | g\rest <c fis> <c d>
  %25
  | <b d>16 c,\rest c8\rest c\rest
  | c\rest d f!
  | <e b'> g\rest g\rest
  | g\rest <d' gis> <d e>
  | <c e>16 r r8 r
  %30
  | s1*3/8*2
  | r8 <a dis> <a b>
  | <a b> <g b> <fis a>
  | <e b'> <b' e> q
  %35
  | a a a
  | g g g
  | <a c> <a b> q
  | q <g b> q
  | <fis b> r r
  %40
  | s1*3/8*13
  | g8\rest <b d> <a c>
  | <g d'> <g b> q
  | <e g> <e a> q
  | <d fis> <d g> q
  %45
  | <c e> <c fis> q
  | \stemUp \once\override NoteColumn.force-hshift = #1 d8 e16 fis g a
  | \stemDown r8 r16 e fis c
  | <b d>4.
    \fine
}

Tenor = \context Voice = "three" \relative c'' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieUp\slurNeutral
  %1
  | R1*3/8*7
  | \clef treble
    r16 g_\tema fis a d a
  | fis a d, a' fis a
  %10
  | b g e g cis, e
  | a fis d fis b, d
  | g e cis e a, cis
  | fis e d e fis g
  | a d, e fis g a \clef bass
  %15
  | s1*3/8*15
  %30
  | a,8\rest <a c> q
  | <a b> c\rest f\rest
  | s1*3/8*26
  | \staffUpper \stemDown b,8 a\rest b\rest
  | s1*3/8*2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #-9
  \override Rest.staff-position = #0
  \stemNeutral\tieDown\slurNeutral
  %1
  | s1*3/8*7
  | R1*3/8*4
  | \override MultiMeasureRest.staff-position = #-11
    R1*3/8*3
  %15
  | r16 d^\tema b d g d
  | b d g, d' b d
  | e c a c fis, a
  | d b g b e, g
  | c a fis a d, fis
  %20
  | b a g a b cis
  | d cis b a g fis
  | g e a g fis e
  | d a' fis a d a
  | fis a d, a' fis a
  %25
  | b8 r r
  | r b a
  | gis16 b gis b e b
  | gis b e, b' gis b
  | c8 r r
  %30
  | b,\rest \stemDown fis' e
  | dis16 fis dis fis b fis
  | \stemNeutral dis fis b, fis' dis fis
  | g b^\tema g b e b
  | g b e, b' g b
  %35
  | c a fis a d, fis
  | b g e g c, e
  | a fis dis fis b, dis
  | g fis e fis g a
  | b fis gis ais b cis
  %40
  | d cis b cis d e \clef treble
  | fis8 d b
  | e16 g a g fis e
  | d fis g fis e d
  | cis e fis e d cis \clef bass
  %45
  | b fis d fis b,8
  | r d b
  | e16 b gis b e,8
  | r gis e
  | a16 e c e a e
  %50
  | c'8 b a
  | d d, r
  | s1*3/8
  | b'16 d b d g d
  | b d g, d' b d
  %55
  | e c a c fis, a
  | d b g b e, g
  | c a fis a d, a'
  | b a g a b c
  | d8 c d
  %60
  | <g, b d g>4.
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
    opus = ##f % "BWV 902"
    title = \markup { "Fughetta" }
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
    \tempo 8 = 152
  }
}
