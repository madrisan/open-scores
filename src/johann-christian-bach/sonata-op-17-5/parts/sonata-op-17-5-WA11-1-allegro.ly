Global = {
  \key a \major
  \time 4/4
  \include "../global.ly"
}

lH = \markup { \teeny "l.H" }
rH = \markup { \teeny "r.H" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
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
  | a4\trill gis r8 d' d8.\trill cis32 b
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
  | r4 b''16 gis e b a4 a'16 fis dis a
  %40
  | gis4 b'16 gis e b a4 a'16 fis dis a
  | gis4 b'16 gis fis e a gis fis e dis cis b a
  | gis e' dis e fis e dis e e,4 cis'8.\trill d16
  | e4 e r8. e16 fis8. gis16
  | a8. d,16~ d2 cis4~
  %45
  | cis8 b16 cis
    \slurDown
    \once\stemUp \appoggiatura e16 d8 cis16 b
    \once\stemUp \appoggiatura gis'16 fis8 e16 d
    \once\stemUp \appoggiatura e16 d8 cis16 b
  | \once\stemUp \appoggiatura a16 gis4\trill a r8 a16 b cis d e fis
  | g a b g e fis g e cis d e cis g a b g
  | fis32 g a8. a4 fis16 g a b cis d e fis
  | e fis g e cis d e cis ais b cis ais e fis g e
  %50
  | d32 e fis8. fis4 r b16 d fis b
  | fis4 b,16 dis gis b e,4 b16 e g b
  | a4 b,16 dis fis b g b g fis g b g fis
  | eis4 cis'16 gis eis cis fis4 cis'16 a fis cis
  | eis4 b'16 gis eis cis a' cis a gis a fis cis b
  %55
  | a b cis a b cis d b cis fis a, cis b d gis, b
  | a b cis a b cis d b cis fis a, cis b d gis, b
  | a cis a fis ais cis ais g g16\rest \stemDown cis ais g r cis ais g
  | \stemNeutral b d b fis cis' e cis fis, r e' cis fis, r e' cis fis,
  | \stemNeutral d' b fis d b d fis b d b d fis b a gis fis
  %60
  | eis gis b gis eis gis cis, eis gis, cis eis, gis cis, eis gis cis
  | a cis a fis \stemDown r cis' a fis r cis' a fis r cis' a fis
  | \stemNeutral d4^\rH d'16 b a gis
    gis2*7/8\trill \magnifyMusic 0.66 { fis32[ gis] }
  | \stemNeutral a16 cis a fis \stemDown r cis' a fis r cis' a fis r cis' a fis
  | \stemUp d4^\rH d'16 b a gis gis2*7/8\trill \magnifyMusic 0.66 { fis32[ gis] }
  %65
  | \stemNeutral fis16 fis' eis fis cis fis a, cis fis,4 cis'8.\trill d16
  | e4 e r8. e16 fis8. gis16
  | a8. d,16~ d2 cis4~
  | cis8 b16 cis
    \slurDown
    \once\stemUp \appoggiatura e16 d8 cis16 b
    \once\stemUp \appoggiatura gis'16 fis8 e16 d
    \once\stemUp \appoggiatura e16 d8 cis16 b
  | gis4\turn a r cis8.\turn d16
  %70
  | \once\stemUp \appoggiatura fis16 e4 e r8. e16 fis8. gis16
  | a8. d,16~ d2 cis4~
  | \tuplet 3/2 { cis8 b cis } \tuplet 3/2 { dis cis b }
    \tuplet 3/2 { fis' e dis } \tuplet 3/2 { cis b a }
  | gis16 b, e gis b gis d' b gis' d b' gis d' b gis d
  | cis a b cis d e fis gis a gis fis e d cis b a
  %75
  | gis b cis dis e fis gis a b a gis fis e dis cis b
  | cis e a e cis e a, cis e, a cis, e a, cis e a
  | gis4.\trill fis8 e4~
    \grace {
      e32 dis e fis gis a b % \tuplet 3/2 { gis a b }
    }
    \unset Timing.baseMoment
    cis8.\trill d!16
  | e4 e~ e8 g fis e
  | e8. dis16 dis4 r b8.\trill cis16
  %80
  | d4 d~ d8 ais' b d,
  | cis4 cis' b16 dis e b gis b e, b'
  | a4 a8.\trill gis32 a gis16 bis cis gis e gis cis, e
  | fis4 fis8.\trill e32 fis e16 gis a e cis e a, cis
  | d4 d16 fis b d fis,4 d16 fis b d
  %85
  | e,4 e16 gis b d a4 d,16 fis a d
  | gis,4 b,16 e gis b gis4 gis,16 b d fis
  | e4 e,16 a cis e d4 d16 b gis d
  | cis8 a' a a \tuplet 3/2 { gis16 fis e } d'8[ d d]
    \repeat unfold 2 {
  |   \tuplet 3/2 { cis16 b a } e'8[ e e] e4 \once\stemUp \appoggiatura e16 d8 cis16 b
    }
  %91
  | cis16 e8. gis,16 b gis b a cis b a gis fis e d
  | cis e a e fis d cis b b2\trill
  | fis''16 e d cis b a gis fis e d cis b \clef "bass" a gis fis e
  | d4. \clef "treble" d''8 d4.\trill cis16 b
  %95
  | cis e a e fis d cis b b2\trill
  | fis'16 e d cis b a gis fis e d cis b \clef "bass" a gis fis e
  | d4. \clef "treble" d''8 d4.\trill cis16 b
  | cis e a e fis d cis b cis e a cis, b d a' gis
  | a cis a e cis a s8 s2
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
  | s1*64
  %69
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
  | e16 gis b e e,4 b16 dis fis b b,4
  %40
  | e16 gis b e e,4 b16 dis fis b b,4
  | e16 gis b e e,8 gis fis a b dis,
  | e2~ e16 dis e fis e d cis b
  | <a a'>8 cis' e a, gis b e gis,
  | fis a d fis, e gis cis e,
  %45
  | <d fis>4 q r q
  | <d e> cis16 d e cis a4 r
  | cis cis r cis'
  | d16 e fis d a d fis, a d,4 r
  | ais ais r ais'
  %50
  | b16 cis d b fis b d, fis b,16 d fis b r4
  | a16 dis fis a a,4 g16 b e g g,4
  | fis16 b dis fis fis,4 e r
  | \clef "treble" b'16 eis gis! b b,4 a16 cis fis a a,4
  | \clef "bass" gis16 cis eis gis gis,4 fis r
  %55
  | fis16 gis a fis gis a b gis a cis fis, a gis b eis, gis
  | fis16 gis a fis gis a b gis a cis fis, a gis b eis, gis
  | fis4 <e, e'>
    \change Staff = "upper" \voiceOne e'''4^\lH g
  | \change Staff = "lower" \voiceFour \stemNeutral <d,, fis> <ais fis'>
    \change Staff = "upper" \voiceOne ais'''4^\lH cis
  | \change Staff = "lower" \voiceFour \stemNeutral
    <b,,, b'> b2 d4
  %60
  | cis cis~ cis8 cis eis cis
  | fis4 \change Staff = "upper" \voiceOne fis''^\lH a cis
  | \change Staff = "lower" \voiceFour \stemNeutral
    b,,,16 b' d b b, b' d b cis, b' cis b cis, b' cis b
  | fis4 \change Staff = "upper" \voiceOne fis''^\lH a cis
  | \change Staff = "lower" \voiceFour \stemNeutral
    b,,,16 b' d b b, b' d b cis, b' cis b cis, b' cis b
  %65
  | <fis a>4 fis fis16 a gis fis e d cis b
  | <a a'>8 cis'e a, gis b e gis,
  | fis a d fis, e gis cis e,
  | d4 <d fis> r q
  | <d e> \stemDown cis8. e16 \stemNeutral a,4 r
  %70
  | a'8 cis e a, gis b e gis,
  | fis a d fis, e gis cis e,
  | dis4 <dis fis> r q
  | <e, e'>1
  | q
  %75
  | q
  | q
  | q2 r2\fermata
  | cis''8 e g b, ais cis fis ais,
  | b dis fis dis b dis fis a,
  %80
  | gis b e b gis4 gis
  | a16 cis e gis a e cis a gis4 gis'
  | fis,16 a cis eis fis a gis fis e4 cis
  | d,16 fis a cis d a fis d cis4 cis'
  | \clef "treble" b16 d fis b b,4 a16 d fis a a,4
  %85
  | gis16 b e gis gis,4 \clef "bass" fis16 a d fis fis,4
  | e16 gis b e e,4 d16 gis b d d,4
  | cis16 e a cis cis,4 b16 d gis b b,4
  | a16 cis b d cis e dis fis e gis e gis fis a gis b
   \repeat unfold 2 {
  |  a cis b d cis e d fis cis e a, cis b d gis, b
  }
  %91
  | a, cis a cis b d b d cis e cis e d fis d fis
  | e8 e d d e e e, e
  | d4 r r2
  | b'16 cis d cis b a gis fis e fis gis a b cis d e
  %95
  | a,8 cis d[ fis] d b e e,
  | d4 r r2
  | b'16 cis d cis b a gis fis e fis gis a b cis d e
  | a,8 cis d[ fis] e4 e,
  | a r8 e''16 cis a2
    \fine
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4 \noBreak
  \repeat unfold 3 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\pageBreak
  % page 2

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
    %\new Devnull \forceBreaks
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
    \tempo 4 = 110
  }
}
