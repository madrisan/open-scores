Global = {
  \key e \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVAllemande
  \partial 16 e16
  \repeat volta 2 {
  %1
  | \once\stemUp e8. \once\stemUp d16 c b a g fis e' dis a' a g a fis
  | g fis e8 r16 e fis g a b32 c b16 e, dis8. e16
  | e8. c'16 d, c' d, b' c,\prall b c a' b, a' b, g'
  | a,\prall g a fis' g, fis' g, e' \stemUp\tieUp fis, e' dis8 e4~
  %5
  | e16 g fis e d8 cis!16 b \stemNeutral b8. a16 g fis e d
  | cis b' ais e' e d e cis d cis b8 cis32 d cis d dis16\prall cis32 dis
  | e16 d cis b ais8\prall b g'8.\mordent a16 fis ais b g
  | e8.\prall g16 fis e fis g cis,8.\prall d16 cis b cis e
  | ais,8.\prall b16 cis d cis d e g fis e d cis b a
  %10
  | gis fis' eis b' \stemUp b ais b gis b( ais gis fis) b a g fis
  | s8 cis16 d e8.\mordent e16 e fis32 e d e fis16 cis8.\prall b16
  | \alternative {
      { b2 cis,16 e b' ais b8. s16 }
      { b2 cis,16 e b' ais b8. }
    }
  }
  \break
  \repeat volta 2 {
  \partial 16 s16
  | fis'4 r16 \stemNeutral g fis e dis8. e16 fis( g32 a) g16 fis
  %15
  | \stemUp\tieUp g fis e8~ e16 c' b a gis b gis e \stemNeutral f( e) a( gis!)
  | a8. g16 f( e) g( f) f8. e16 d c bes a
  | gis8. a32 b a16 b32 c b16 c32 d c16 b32 a f'16 e d c b a
  | <e a>8. s16 cis d e fis g e g a cis e g fis
  | fis e d8~ d16 e fis g a b32 c fis,16 g32 a d,8( c32)\prall b c16
  %20
  | b d e fis g8. g16 g fis a g fis e dis e
  | fis,\prall e fis e' dis cis dis fis a,\prall g a e' dis cis dis fis
  | c\prall b c e dis cis dis fis \stemUp\tieUp b,8. dis!16 e fis g8~
  | g16 fis g e a8. a16 a c b a g fis e d
  | c b' a c e, dis cis b g'8.\arpeggio a16 fis8.\prall e16
  %25
  | e2 fis,16 a e' dis e8.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | <g b>8. s16 s2.
  | s1*2
  | s2 fis4 g16\rest d' cis b
  %5
  | ais8. cis16 b8 ais s2
  | s1*5
  %11
  | e'16 d cis8~ cis8. cis16 cis8 b ais4
  | e8\rest e16\rest a g fis e d cis4*1/4 e8. \autoBeamOff <dis fis>8. e'16 \autoBeamOn
  | e,8\rest e16\rest a g fis e d cis4*1/4 e8. <dis fis>8.
  \partial 16 fis'16
  | g,\rest dis' b8 s2.
  %15
  | g8\rest g16\rest fis g a b cis d8 g,\rest s4
  | s1*2
  | c,8. b16 s2.
  | s1*3
  %22
  | s2 b'4~ b8. b16
  | e8. d16 <c fis>8. g16\rest <b fis'>16 g\rest g8\rest s4
  | s2 <b e>8\arpeggio s dis!4
  | g,8\rest g16\rest d' c b a g fis4*1/4 a8. <gis b>8.

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 16 s16
  %1
  | s1
  | e8. d16 s2.
  | s1*6
  %9
  | s2 d8\rest ais b d
  | b gis \change Staff = "upper" \stemDown fis' eis fis e\rest e4\rest
  | \change Staff = "lower" \stemUp s1
  | b16\rest cis, dis8 e fis g e fis16 a g fis
  | a16\rest cis, dis8 e[ fis] g[ e] fis8.
  \partial 16 s16
  | s1*9
  %23
  | s2. \change Staff = "upper" \stemDown g'16\rest e fis g
  | a8. g16 fis \change Staff = "lower" \stemUp b, cis dis e4 b
  | e16\rest fis, gis8 a[ b] c[ a] b8.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \partial 16 r16
  \repeat volta 2 {
  %1
  | e8 e, r16 e' fis g a8 fis b[ b,]
  | <e g b>8. s16 c' b a g fis e' dis a' a g a fis
  | g fis e8 fis gis a16 g fis e dis8 e~
  | e dis e[ e,] b'8.\prall a16 g fis e d
  %5
  | cis b' ais e' e d e cis d b cis d e4~
  | e16 d cis b ais8. ais16 b8. g'16 a, g' a, fis'
  | g, fis g e' fis, e' fis, d' e, d e cis' d, cis' d, b'
  | cis, b cis b' ais gis ais cis e, d e b' ais gis! ais cis
  | g fis g b ais gis ais cis \stemDown\tieDown fis,2~
  %10
  | fis~ fis8. e16 d cis b a
  | \stemNeutral g fis' e b' b ais b gis ais8 b16 e, fis8 fis,
  | \alternative {
      { \stemDown b2~ b4~ b8. b16\rest }
      { b2~ b4~ b8. }
    }
  }
  \repeat volta 2 {
  \partial 16 r16
  | \stemNeutral\tieNeutral b8. cis16 dis e fis g a dis, fis a c b e dis
  %15
  | e2~ e8. e16 b c32 d c16 b
  | c b a a, a' b, a' cis, bes' c bes cis, bes' d, cis' e,
  | d' e d e, d' fis, d' gis, a8[ d,] e e,
  | a16 e' a8~ a16 a g fis e g e cis a cis b a
  | d8. e16 fis g a b c fis, a c e d g fis
  %20
  | g8. fis16 e d c b a b c b a g fis e
  | b'8. c16 b a b c! fis,8. g16 fis e fis a
  | dis,8. e16 fis g fis g a c! b a g fis e d
  | cis b' ais e' e dis e cis dis8 b s4
  | s2 e8[ a,] b b,
  | \stemDown\tieDown e2~ e4~ e8.
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 810"
    title = \markup { "Allemande" }
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
