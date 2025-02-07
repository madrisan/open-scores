Global = {
  \key a \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  \tempo \markup { \abs-fontsize #14 \italic "Fuga." }
  | a16 c b c e b c d e, d' c b
  | c d c b a e' f g a g f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  %5
  | d c b c d c b a gis b a gis
  | a e a c e a, c e a g a fis
  | g e fis g dis4.\prallmordent dis8
  | e4 r8 b' g b
  | a c fis, c' d, c'
  %10
  | g b e, b' c, b'
  | fis a dis, a' b, a'
  | g4 r4 g~
  | g16 e f g a,8 g' cis,! g'
  | f4 r f~
  %15
  | f16 d e f g,8 f' b, f'
  | e16 f e d c b a g fis a b c
  | d e d c b a gis fis e gis a b
  | c4 b4. b8
  | a4 g'4\rest a8\rest c
  %20
  | c4 b\rest b8\rest b
  | b4 b\rest b8\rest a
  | a4 a8\rest f e d
  | c2 d8\rest c
  | b2 d8\rest bes
  %25
  | a2 d4~
  | d16 e, gis b e b e gis b f e d
  | c4 c r
  | r c r
  | r c r
  %30
  | r16 c b a f' e d c b d c b
  | e4 r r16 d c b
  | c4 r16 c b a gis4
  | a4 r r
  | R1*3/4*15
  | \override MultiMeasureRest.staff-position = #4
    R1*3/4
  | \override MultiMeasureRest.staff-position = #6
    R1*3/4
  | \override MultiMeasureRest.staff-position = #2
    R1*3/4*2
  | \override MultiMeasureRest.staff-position = #0
    R1*3/4
  %54
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e cis
  %60
  | d2.~
  | d~
  | d4 c~ c16 bes c a
  | ees'2.~
  | ees4 d~ d16 c d b
  %65
  | f'2.~
  | f4 ees~ ees16 d e cis
  | g'2.~
  | g4 f~ f16 e f d
  | bes'4~ bes16 a g f e g f e
  %70
  | f4~ f16 e d c b d c b
  | cis4~ cis16 d cis d e4~
  | e8 d4 d cis8
  | d4 r r8 f
  | f4 r r8 e
  %75
  | e4 r r8 d
  | d4 r8 bes a g
  | f4 f d'8\rest a
  | d4 d r8 d
  | cis8\prall d e2~
  %80
  | e8 a, d4. cis8
  | d4 r f~
  | f16 d e f g,8 f' bes, f'
  | e4 r ees~
  | ees16 c d ees f,8 ees' a, ees'
  %85
  | d16 ees d c bes8 r r4
  | e16 f e d cis8 r r4
  | \stemNeutral a'16 f e d g e f g a, g' f e
  | f g d e d4~ d16 d e f
  | g e d c f d e f g, f' e d
  %90
  | e f e d c4~ c16 c d e
  | f d c b e c d e \stemUp a, e' d c
  | b c b a g4 r
  | c2 b4
  | c r e
  %95
  | e d r
  | d c r
  | a g2~
  | g4 r r
  | r16 c, f a c f, a c f e f c
  %100
  | d4 r r
  | r16 d, g b d g, b d g f g d
  | e4 e r
  | r e r
  | r e r
  %105
  | r16 e d c a' g f e d f e d

  | R1*3/4*92
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  %1
  | R1*3/4*6
  | e16 g fis e b' fis g a b, a' g fis
  | g a g fis e b' c d e d c b
  | c b a b c b a g fis a g fis
  %10
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d e b
  | cis4 d,16\rest d' cis b a g f e
  | d a d f a d, f a d c d a
  %15
  | b4 c,16\rest c' b a g f e d
  | c4 d\rest b16\rest e d c
  | b4 c\rest a16\rest d c b
  | a8 a'~ a[ a] gis4
  | a r8 e' c e
  %20
  | d f b, f' e, f'
  | c e a, e' f, e'
  | b d gis, d' e, b'
  | b4 a f8\rest a~
  | a4 g e8\rest g~
  %25
  | g4 f2
  | \change Staff = "lower" \voiceThree
    b,4 b\rest
    \change Staff = "upper" \voiceTwo
    e~
  | e16 b' a gis a4 f\rest
  | r16 b a gis a4 r
  | r16 b a gis a4 r
  %30
  | R1*3/4
  | r16 gis fis e a b c d e,4~
  | e r c16\rest f e d
  | c4~ c16 d e f gis,8. gis16
  | a c b a e' b c d
    \change Staff = "lower" \voiceThree
    e,
    \change Staff = "upper" \voiceTwo
    d' c b
  %35
  | c d c b a e' f g a g f e
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b
    \change Staff = "lower" \voiceThree
    a gis b a gis
  | a e a c
    \change Staff = "upper" \voiceTwo
    e a, c e a g a e
  %40
  | fis4 r16 g fis e d c b
    a
  | \change Staff = "lower" \voiceThree
    g d g b d g, b d
    \change Staff = "upper" \voiceTwo
    g fis g dis
  | e4 r16 fis e d c b a g
  | fis8. e'16 dis e dis e a, c b a
  | g' dis e fis dis4.\prallmordent dis8
  %45
  | e4 r16 a g fis g b a g
  | a b c b a g fis e d c' b a
  | g a b a g fis e d c b' a g
  | fis g a g fis e dis cis b a' g fis
  | g4 r16 e' b g
    \change Staff = "lower" \voiceThree
    \once\override Beam.damping = #+inf.0
    e
    \change Staff = "upper" \voiceTwo
    g a b
  %50
  | c e, a c e a, c e a g fis e
  | dis e fis e dis cis b a g fis e dis
  | e fis g fis e d c b
    \change Staff = "lower" \voiceThree
    a g fis! e
  | c' b a g fis g a b dis,8. dis16
  | e4. e8 dis4
  %55
  | e4 b'8\rest b g b
  | a c fis, c' d, c'
  | g b e, b' c, b'
  | fis a dis, a' b, fis'
  | g4 g\rest g\rest
  %60
  | b16\rest fis b
    \change Staff = "upper" \voiceTwo
    d fis b, d fis b a b fis
  | gis2.~
  | gis16 fis gis e a4~ a8. a16~
  | a2.~
  | a16 g a f bes4~ bes8. b16~
  %65
  | b2.~
  | b16 a b g c4~ c8. cis16~
  | cis2.~
  | cis16 b cis a d4~ d8. d16~
  | d8 g cis,4 g\rest
  %70
  | g8\rest d' gis,4 d\rest
  | r16 a' g f e4~ e16 g f e
  | f4 e e
  | d r8 a' f a
  | g bes e, bes' c, bes'
  %75
  | f a d, a' bes, a'
  | e g cis, g' a, e'
  | e4 d r8 f
  | f4 f r8 f
  | bes4. bes8 a\prall g
  %80
  | f4. bes8 e, a
  | f4 r r
  | r r bes~
  | bes r r
  | r r a~
  %85
  | a4 r16 a g f e! d cis b
  | cis4 r16 bes' a g f e d cis
  | \change Staff = "lower" \voiceThree
    d8 d4 d cis8
  | r8 d~ d16 e d c b8 r
  | r8 c4 c b8
  %90
  | c8\rest c~ c16 d c b a8 r
  | r8 c4 c
    \change Staff = "upper" \voiceTwo
    f8~
  | f4~ f16 f e d c b a g
  | c e d c g' d e f g, f' e d
  | e f e d c g' a bes c bes a g
  %95
  | a g f g a g f e d f e d
  | g f e f g f e d c e d c
  | f e d e f e d c b d c b
  | c g c e g c, e g c bes c g
  | a4 r r
  %100
  | r16 a, d fis a d, fis a d c d a
  | b4 r r
  | \repeat unfold 3 { r16 d c b c4 r }
  %105
  | R1*3/4

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3/4*17
  | a16 c b a e' b c d e, d' c b
  | c d c b a e' f g a g f e
  %20
  | f e d e f e d c b d c b
  | e d c d e d c b a c b a
  | d c b c d c b a gis b a gis
  | a e a c e a, c e a g a fis
  | g d, g b d g, b d g f g e
  %25
  | f f, a c f e d c b c b a
  | gis4 a,\rest gis'
  | \stemNeutral\tieNeutral a~ a16 gis a b c d e f
  | f,4~ f16 e f g a b c d
  | c,4~ c16 b a b c d e f
  %30
  | d,8 d' a d f, d'
  | d, d' c16 c' b a gis8 e
  | a16 f e d c8 d e e,
  | \stemDown\tieDown a16 c b a e' b c d e, d' c b
  | c4~ c16 d e f gis,8.\prallmordent gis16
  %35
  | a4 r8 e' c e
  | \stemNeutral d f b, f' g, f'
  | c e a, e' f, e'
  | \stemDown b d gis, d' e, d'
  | c4 r \stemNeutral c~
  %40
  | c16 a b c d,8 c' fis, c'
  | \stemDown b4 r \stemNeutral b~
  | b16 g a b c,8 b' e, b'
  | \stemDown a16 b c b a g fis e dis8 dis'
  | e16 g fis e b' fis g a b, a' g fis
  %45
  | g a g fis e b' cis dis e d c b
  | c b a b c b a g fis a g fis
  | b a g a b a g fis e g fis e
  | a g fis g a g fis e dis fis e dis
  | e b e g b e, g b e d c b
  %50
  | a4 r16 a e c a c e a
  | b,8 a' fis a dis, a'
  | g16 a b a g fis e d c b a g
  | a b c b a g fis e b' c b a
  | g8 a b4. b8
  %55
  | e,4 a\rest g'~
  | g g,\rest fis'!~
  | fis g,\rest e'~
  | e g,8\rest c b a
  | g fis e fis g e
  %60
  | b'4. cis8 d b
  | e16 b e gis b e, gis b e d e b
  | \tieNeutral c4~ c16 b c a f'!4
  | r16 c, f a c f, a c f ees f c
  | d4~ d16 c d bes g'4
  %65
  | r16 d, g b d g, b d g f g d
  | ees4~ ees16 d ees c a'4
  | r16 e, a cis e a, cis e \clef treble \stemNeutral a g a e
  | f4~ f16 e f d bes' c! bes a
  | g a bes a g f e d cis e d cis
  %70
  | d e f e \clef bass d c! b a gis b a gis
  | a g! bes a g f e d cis e d cis
  | d f e d a' e f g a, g' f e
  | f g f e d a' b cis d c bes a
  | bes a g a bes a g f e g f e
  %75
  | a g f g a g f e d f e d
  | g f e f g f e d cis e d cis
  | d a d f a d, f a d c d a
  | bes f, bes d f bes, d f bes a bes f
  | g a bes a g f e d cis e d cis
  %80
  | d e d c bes a bes g a a' g a
  | d, a d f a d, f a d c d a
  | bes4 r16 c bes a g f e d
  | c g c e g c, e g c bes c g
  | a4 r16 bes a g f ees d c
  %85
  | bes4 r r
  | g' r r
  | \stemDown f e a
  | d, r r16 a' g f
  | e4 d g
  %90
  | c,4 r r16 g' f e
  | a4 g f
  | g~ g16 a g f e d c b
  | e8 f g f g g,
  | \stemNeutral c d e d e16 c d e
  %95
  | f8 a d, a' b, a'
  | e g c, g' a, g'
  | d f b, f' g, f'
  | e d c d e c
  | f g a bes a g
  %95
  | fis e d e fis d
  | g a b a b g
  | \clef treble c4~ c16 b c d e f g a
  | a,4~ a16 g a b c d e f
  | \clef bass e,4~ e16 d c d e f g a
  %100
  | f,8 f' c f a, f'

  | R1*3/4*92
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
    opus = ##f % "BWV 944"
    title = ##f % \markup { "Fuga" }
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
