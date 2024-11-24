Global = {
  \key d \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'Praeludium05
  %1
  | r16 d e fis a, fis' e d a' d, e fis a, fis' e d
  | g e fis g b, d cis b cis e fis g a, g' fis e
  | fis d e fis a,^1 cis^4 b a b d e fis b, a' gis fis
  | gis e fis gis b, d^4 cis b a cis d e fis, e' d cis
  %5
  | d b cis d fis, a gis fis gis b cis d e, d' cis b
  | cis a b cis e, g^3 fis e fis a b cis fis, e' dis cis
  | dis b cis dis fis, a^4 g! fis e g a b cis, d'^5 cis b
  | ais e fis g cis, g' fis e d b'^3 cis d fis,^2 a gis fis
  | eis^1 gis^2 a b eis, d'^3 cis b gis' eis fis gis cis, b' a gis
  %10
  | a fis gis a cis,^1 e^3 dis cis dis fis g a b, a' g fis
  | g e fis g b,^1 d^3 c b c dis e fis a,^1 c^4 b a
  | g e' fis g b, d cis b cis e fis g a, g' fis e
  | fis d e fis a,^1 c^4 b a b g^1 a^4 b cis, b' a g
  | fis^3 d^1 e^3 fis^4 a,^1 c^4 b^3 a^2 b^1 d e fis b, a' gis fis
  %15
  | gis e fis gis b, d^4 c b a c d e a, g'^5 fis e
  | dis a b c fis, c' b a g e' fis g b, d^4 cis b
  | ais cis d e ais, g'^4 fis^3 e^1 cis' ais b cis fis, e' d cis
  | d b cis d fis, a gis fis gis b c d e, d' c b
  | c a b c e, g^3 fis e fis a b c d, c' b a
  %20
  | b g a b d, b' a g d' g, a b d, b' a g
  | c a b c e, g fis e fis a b c d, c' b a
  | b g a b d,^1 fis^4 e d e g a b e, d'^4 cis b
  | cis^3 a^1 b^4 cis e,^1 g^4 fis e d fis g a b, a' g fis
  | g e fis g b, d cis b cis e fis g a, g' fis e
  %25
  | fis d e fis a, fis'^4 e^3 d^1 a' fis g a d, c' b a
  | b g a b d, b'^4 a^2 g^1 d' b cis d gis, f' e d
  | cis^3 a^1 b^4 cis e, g^4 fis e^2 a^1 d e fis b, a' g fis
  | g cis, d e a, g' fis e fis b,^1 cis^3 d gis, fis' e d^3
  | cis^5 g a bes e,^1 g^3 f^1 e f d'^3 e f cis e d cis
  %30
  | d bes' a g f e d cis d f e d b' gis a b
  \noBreak
  | f^3 d^1 e^4 f b,^3 gis^2 a b e, fis gis^3 a^1 b cis d^1 e^4
  | \stemUp\tieUp f4. e8_~ e d_~ d[ cis]
  | <d, f gis b d>4~\arpeggio d'32 cis b a^1 gis^3 fis e fis gis^3 a^1 b cis d^1 e^4 f e
    \stemUp d cis b a gis \stemDown fis[ e d]
  | \stemUp <cis' e g bes>8 f\rest <d f gis b> f\rest d4 cis
  %35
  | <fis,! a d>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s1*31
  | f16 cis d a bes g e' g, a f! d' f, g e cis' e,
  | s1
  | <cis e g bes>8 e\rest <d f gis b> e\rest <e a!>2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*26
  | \shiftOff a8 r g' r fis r d r
  | a8 r cis r d r b r
  | g'16\rest e f g cis, e d cis d^2 f^1 g^2 a^1 e^2 g^1 f^2 e^3
  %30
  | f d e f a, c bes a s2
  | s1
  | f'8\rest a g! cis, f d e g
  | s1
  | s2 << { \shiftOn e4 g } \\ { \stemUp a2 } >>

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | d8^. r d'^. r fis,^. r d'^. r
  | e,^. r d'^. r a^. r cis^. r
  | d, r d' r d, r d' r
  | d, r gis r cis, r a' r
  %5
  | b, r a' r e r gis r
  | a, r a' r a, r a' r
  | a, r dis r g,! r e' r
  | fis, r fis' r fis, r fis' r
  | fis, r fis' r fis, r fis' r
  %10
  | fis, r fis' r b, r dis r
  | e, r e' r e, r dis' r
  | e, r e' r a, r cis r
  | d, r d' r d, r d' r
  | d, r d' r d, r d' r
  %15
  | d, r gis' r c, r fis r
  | b, r dis r e r g r
  | b, r e r g r ais r
  | b, r b' r e, r gis r
  | a, r a' r d, r fis r
  %20
  | g, r g' r b, r g' r
  | a, r g' r d r fis r
  | g, r g' r g, r g' r
  | g, r cis r fis, r d' r
  | e, r d' r a r cis r
  %25
  | d, r d' r fis, r a' r
  | g, r g' r b, r d' r
  | \shiftOn a,1
  | a
  | \stemDown\tieDown a~
  %30
  | a4 s \stemNeutral gis2~
  | gis1
  | a
  | <b d f gis b>4\arpeggio r s2
  | s2 \stemDown a
  %35
  | <d fis! a>1\fermata
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
    opus = "BWV 850"
    title = \markup { "Praeludium V." }
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
    \tempo 4 = 132
  }
}
