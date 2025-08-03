Global = {
  \key a \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \tempo "Allegro"
  \partial 4 { cis8.\turn d16 }
  %1
  | e4 e r8. e16 fis8. gis16
  | a8. d,16~ d2 cis4~
  | cis8 b16 cis
    \slurDown
    \once\stemUp \appoggiatura e16 d8 cis16 b
    \once\stemUp \appoggiatura gis'16 fis8 e16 d
    \once\stemUp \appoggiatura e16 d8 cis16 b
  | gis4\turn a r cis8.\turn d16
  %5
  | e4 e r8. e16 fis8. gis16
  | a8. d,16~ d2 cis4
  | \tuplet 3/2 { r8 b cis } \tuplet 3/2 { dis cis b }
    \tuplet 3/2 { fis' e dis } \tuplet 3/2 { cis b a }
  | a4\trill gis r8 d' d8.\mordent cis32 b
  | \tuplet 3/2 { cis8 cis' a } \tuplet 3/2 { e a e }
    \tuplet 3/2 { cis e cis } \tuplet 3/2 { a cis a }
  %10
  | e4. e'8 e4.\trill dis16 cis
  | \omit TupletNumber
    \tuplet 3/2 { b8 b' gis } \tuplet 3/2 { e gis e }
    \tuplet 3/2 { b e b } \tuplet 3/2 { gis b gis }
  | e4. b'8 b4.\trill a16 gis
  | \tuplet 3/2 { a8 a' fis } \tuplet 3/2 { dis fis dis }
    \tuplet 3/2 { a dis a } \tuplet 3/2 { fis a fis }
  | dis4. a'8 a4.\trill gis16 fis
  %15
  | gis16 b a gis a b cis dis e dis gis fis e8. gis,16
  | <e gis>4\trill <dis fis> r2
  | r16 b'' cis a b gis a fis gis8 a16 fis gis e fis dis
  | e b cis a b gis a fis gis8 a16 fis gis e fis dis
  | e b e gis b gis e' b gis' e b' gis e gis fis e
  %20
  | dis fis a fis dis fis a, dis fis, a dis, fis b, dis fis a
  | gis b, e gis b gis e' b gis' e b' gis e gis fis e
  | dis fis a fis dis fis a, dis fis, a dis, fis b, dis fis a
  | gis4 gis' fis16 ais b fis dis fis b, fis'
  | e4 e8.\trill dis32 e dis16 fisis gis dis b dis gis, b
  %25
  | cis4 cis8.\trill b32 cis b16 dis e b gis b e, gis
  | a4 a16 cis e a cis,4 a16 cis fis a
  | b,4 b16 dis fis a e4 a,16 cis e a
  | dis,4 fis,16 b dis fis dis4 b16 dis fis b
  | b4 b,16 e gis b a4 a16 fis dis a
  %30
  | gis8 e' e e
    \undo\omit TupletNumber \tuplet 3/2 { dis16 cis b }
    a'8[ a a]
    \repeat unfold 2 {
  |   \tuplet 3/2 { gis16 fis e } b'8[ b b] b4
      \once\stemUp \appoggiatura b16 a8 gis16 fis
    }
  | gis8. b16 dis,16 fis dis fis e gis fis e dis cis b a
  | gis b e b cis a gis fis fis2\trill
  %35
  | cis''16 b a gis fis e dis cis b a gis fis e dis cis b
  | a4 r8 a'' a4.\trill gis16 fis
  | gis e b' gis cis a gis fis gis b e, gis fis a dis, fis
  | e b' gis e b gis e8 r2
  }
  \pageBreak
  \repeat volta 2 {
  | R1*61
    \fine
} }


Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s1*3
  | s4 e s2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 r4
  %1
  | a8 cis e a, gis b e gis,
  | fis a d fis, e gis cis e,
  | d4 <d fis> r q
  | <d e> \stemDown cis8. e16 \stemNeutral a,4 r
  %5
  | a'8 cis e a, gis b e gis,
  | fis a d fis, e gis cis e,
  | dis4 <dis fis> r q
  | e4 e16 gis fis a gis4 e
  | a a, r2
  %10
  |
    \tuplet 3/2 { a8 cis e } \tuplet 3/2 { a e cis }
    \tuplet 3/2 { a cis e } \tuplet 3/2 { a gis fis }
  | gis4 gis, r2
  | \omit TupletNumber
    \tuplet 3/2 { gis8 b e } \tuplet 3/2 { gis e b }
    \tuplet 3/2 { gis b e } \tuplet 3/2 { gis fis e }
  | fis4 fis, r2
  | \tuplet 3/2 { b8 dis fis } \tuplet 3/2 { b fis dis }
    \tuplet 3/2 { b8 dis fis } \tuplet 3/2 { b cis dis }
  %15
  | e,4 fis gis ais
  | b~ b16 b, dis fis b ais b cis b a gis fis
  | <e gis>4 r \clef "treble" r16 b'' cis a b gis a fis
  | gis8 a16 fis gis e fis dis e b cis a \clef "bass" b gis a fis
  | gis4 e r gis16 b ais cis
  %20
  | b4 b, r dis16 fis dis b
  | e4 e, r gis'16 b ais cis
  | b4 b, r dis
  | e16 gis b dis e b gis e dis4 b
  | cis16 e gis bis cis e dis cis b!4 gis
  %25
  | a,16 cis e gis a e cis a gis4 e'
  | fis16 a cis fis fis,4 e16 a cis e e,4
  | dis16 fis b dis dis,4 cis16 e a cis cis,4
  | b16 dis fis b b,4 a16 dis fis a a,4
  | gis16 b e gis gis,4 fis16 a dis fis fis,4
  %30
  | e16 gis fis a gis b ais cis b dis b dis cis e dis fis
  | e gis fis a gis b a cis gis b e, gis fis a dis, fis
  | e gis fis a gis b a cis gis b e, gis fis a dis, fis
  | e gis e gis fis a fis a gis b gis b a cis a cis
  | b8 b a a b b b, b
  %35
  | a4 r r2
  | fis'16 gis a gis fis e dis cis b cis dis e fis gis a b
  | e,8 gis a cis b4 b,
  | e r8 b'16 gis e4 r
  }
  \break
  \repeat volta 2 {
  | R1*61
    \fine
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Christian Bach"
    opus = "Op. XVII n. 5"
    title = \markup { "Allegro" }
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
