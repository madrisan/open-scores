Global = {
  \key a \minor
  \time 3/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r16 a b gis a c
  | d, b' e, d c b
  | c8 e a~
  | a gis b~
  %5
  | b16 a gis a b c
  | d f b, f' e d
  | c8 b16 a f'8~
  | f e16 d g8
  | e16 c d b c e
  %10
  | a b, c a b d
  | g a, b gis a c
  | f8 d g,
  | e' c f,
  | d'16 e, f d e gis
  %15
  | c8 b a
  | gis16 a b f e d
  | c e f d e a
  | b e, f d e b'
  | c e, f d e c'
  %20
  | b a gis b e,8
  | r16 e' f d e c
  | b e f d e b
  | a e' f d e a,
  | gis b e, c' d b
  %25
  | c e a, gis a c
  | fis, a d, b' c a
  | b d g, fis g b
  | e, g c, a' b g
  | a c fis, e fis a
  %30
  | dis, fis b, g' a fis
  | g8 b e~
  | e dis fis~
  | fis16 e fis dis e g
  | a, fis' b, a g fis
  %35
  | g8 fis16 e c'8~
  | c b16 a d8
  | b16 c d e fis g
  | a c fis, c' b a
  | g8 b e,
  %40
  | c a' d,
  | b g' c,
  | a16 fis g e fis a
  | d e, fis dis e g
  | c dis, e cis dis fis
  %45
  | b e, a b, c a
  | b dis fis a g fis
  | g b c a b e
  | fis b, c a b fis'
  | g b, c a b g'
  %50
  | fis e dis fis b,8~
  | b e16 fis g8
  | a,8( g16\prall) fis g a
  | b g a fis g e'
  | fis,4.~\downprall
  %55
  | fis16 b e dis e g
  | c, e a, fis' g e
  | fis a d, cis d fis
  | b, d g, e' fis dis
  | e g c, b c e
  %60
  | a, c fis, dis' e cis
  | dis fis g, g' a fis
  | g4.~
  | g16 e fis dis e c'
  | b e, fis dis e b'
  %65
  | a8 fis8.\downprall e32 fis
  | e4.~
  | e16 b! cis e g d
  | e g bes g e f
  | g e cis bes a g'
  %70
  | f4.~
  | f16 a,! b d f c
  | d f aes f d e
  | f d b aes g f'
  | e4.~
  %75
  | e16 a b gis a c
  | d, gis a fis gis b
  | c, a' f d b d
  | g,8.\prall fis16 e8
  | r16 e' f d e c
  %80
  | b e f d e b
  | a e' f d e a,
  | gis b e, c' d b
  | c e a, f' g e
  | f a d, c d f
  %85
  | b, d g, e' f d
  | e g c, b c e
  | a, c f, d' e c
  | d f b, a b d
  | gis, b e, c' d b
  %90
  | c e a, gis a c
  | d f a, gis a d
  | e g a, gis a e'
  | f4.~
  | f16 a, b gis a f'
  %95
  | e a, b gis a e'
  | d8 b8.\downprall a32 b
  | a16 e f d e a
  | b e, f d e b'
  | c e, f d e c'
  %100
  | b a gis fis e d
  | \appoggiatura d8 c8. a'16 gis a
  | \appoggiatura e8 d8. a'16 gis a
  | e gis a b c8~
  | c16 a b gis a c
  %105
  | f4.~
  | f16 d e cis d f
  | b4.~
  | b16 c, d b c e
  | a b, c a b d
  %110
  | g a, b gis a c
  | f8 d g,
  | e' c f,
  | d'16 e, f d e gis
  | c dis, e cis dis fis
  %115
  | a fis dis c b a'
  | gis b d f e8~
  | e16 a, c b a gis
  | a e f d bes' gis
  | a c e, a b gis
  %120
  | a4.
    \fine
}

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
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | a8 a, a'~
  | a gis e
  | r16 a b gis a c
  | d, b' e, d c b
  %5
  | c8 e a~
  | a gis b~
  | b16 a gis a b c
  | d f b, f' e d
  | c8 e a,
  %10
  | f' d g,
  | e' c f,
  | d'16 b c a b d
  | g a, b gis a c
  | f gis, a fis gis b
  %15
  | e a, d e, f d
  | e8 gis e
  | a a, a'~
  | a16 gis a fis gis e
  | a gis a b c d
  %20
  | e f e d c b
  | a8 a, a'
  | g g, g'
  | f f, f'
  | e gis, e
  %25
  | a b c
  | d fis d
  | g a b
  | c e, c
  | fis g a
  %30
  | b dis, b
  | e16 e' fis dis e g
  | a, fis' b, a g fis
  | g8 b, e~
  | e dis fis~
  %35
  | fis16 e dis e fis g
  | a c fis, c' b a
  | g8 fis16 e c'8~
  | c b16 a d8
  | b16 g a fis b g
  %40
  | e' fis, g e fis a
  | d e, fis d e g
  | c8 a d,
  | b' g c,
  | a'16 b, c a b dis
  %45
  | g8 fis e
  | dis b dis
  | e e, e'~
  | e16 dis e cis dis b
  | e8 e, e'
  %50
  | b16 c b a g fis
  | g b c a b g
  | fis b c a b fis
  | e b' c a b e,
  | dis fis b g a fis
  %55
  | g8 fis e
  | a c a
  | d e fis
  | g b g
  | c e, c
  %60
  | fis a fis
  | b dis, b
  | e16 e' fis dis e g
  | a,8 c fis,
  | g b e,
  %65
  | c' a b
  | e,16 fis g a bes d,
  | cis8 e cis
  | a cis' r
  | e, a cis,
  %70
  | d16 e f g aes c,
  | b8 d b
  | g b' r
  | d, g b,
  | c16 d e b c a
  %75
  | f8 f' r
  | b, b' r
  | a d, f
  | e16 f e d c b
  | a8 a' a,
  %80
  | g g' g,
  | f f' f,
  | e gis e
  | a c a
  | d e f
  %85
  | g b g
  | c, d e
  | f a f
  | b, c d
  | e gis e
  %90
  | a c a
  | f e d
  | cis b a
  | d16 f a e f a
  | d8 f b,
  %95
  | c e a,
  | f d e
  | a a, a'~
  | a16 gis a fis gis e
  | a8 a, a'
  %100
  | e16 f e d c b
  | a e' f d e a,
  | b e f d e b
  | c e f d e c
  | d4.~
  %105
  | d16 b c a b d
  | gis4.~
  | gis16 e f d e gis
  | c8 e a,
  | f' d g,
  %110
  | e' c f,
  | d'16 b c a b d
  | g a, b gis a c
  | f gis, a fis gis b
  | e fis, gis e fis a
  %115
  | dis,8 fis dis
  | e16 d b gis b d
  | c,8 d e
  | f a d
  | dis e e,
  %120
  | a4.
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
    opus = ##f % "BWV 827"
    title = \markup { "Fantasia" }
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
    \tempo 4 = 108
  }
}
