Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override TupletBracket.bracket-visibility = ##f
  \override TupletNumber.transparent = ##t
  | \partial 4 r4
  | R1*7
  | r2 r4 d
  | a' a,~ \tuplet 3/2 { a8 b c b c d
  %10
  | c d e } d4~ \tuplet 3/2 { d8 e f e f g
  | f e d} e4~ \tuplet 3/2 { e8 d c d c b}
  | c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ b16*4/3 c8.*8/9 d16*4/3]
  | e2 r4 cis
  | d f8.*8/9 e16*4/3 d4 c'
  %15
  | bes d, r b
  | c e8.*8/9 d16*4/3 c4 bes'!
  | a4.*10/9 g8*2/3 f8.*8/9[ e16*4/3 d8.*8/9 f16*4/3]
  | bes,4 bes' g e
  | cis4.*10/9 d16*2/3 e a,8.*8/9[ e'16*4/3 f8.*8/9 g16*4/3]
  %20
  | a4.*10/9 g8*2/3 \tuplet 3/2 { f8 e d} e8.*8/9 bes'16*4/3
  | \tuplet 3/2 { a8 g f g cis, e g f e~} e8.*8/9 f16*4/3
  | \tuplet 3/2 { e8 f g f d a b cis d cis d e}
  | d4 f d a
  | bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ g16*4/3 a8.*8/9 b16*4/3]
  %25
  | c4 ees c g
  | a8.*8/9[ c16*4/3 f8.*8/9 c16*4/3] a8.*8/9[ f16*4/3 g8.*8/9 a16*4/3]
  | bes4 bes'~ \tuplet 3/2 { bes8 aes g aes g f
  | g f ees} f4~ \tuplet 3/2 { f8 ees d ees d c}
  | d4 f d a
  %30
  | \shape #'((0 . 0) (0 . 0.7) (0 . 0.7) (0 . 0)) Tie
    bes1~
  | \shape #'((0 . 0) (0 . 0.7) (0 . 0.7) (0 . 0)) Tie
    bes~
  | bes2 r4 bes
  | f f'~ \tuplet 3/2 { f8 ees d ees d c
  | d c bes} c4~ \tuplet 3/2 { c8 bes a bes a g
  %35
  | a bes c} bes4~ \tuplet 3/2 { bes8 c d c d ees}
  | d8.*8/9[ bes16*4/3 f8.*8/9 bes16*4/3] d8.*8/9[ ees16*4/3 d8.*8/9 c16*4/3]
  | \tuplet 3/2 { bes8 g a bes c d} ees8.*8/9[ d16*4/3 c8.*8/9 ees16*4/3]
  | \tuplet 3/2 { d8 ees f ees g ees c b a b c d
  | c bes! a bes g a bes c d ees d c
  %40
  | d g, bes d bes d} g8.*8/9[ fis16*4/3 g8.*8/9 a16*4/3]
  | bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
  | g4 e g bes
  | a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | f4 d f a
  %45
  | g d cis r
  | r8 cis16 d e f g a bes4 r
  | \tuplet 3/2 { r8 e, a g f e f e d cis! d e}
  | f4 r r bes,
  | \tuplet 3/2 { a8 g f g a f} g16*2/3 f e4*4/3 f8*2/3
  %50
  | e4 r r e'
  | a, r r a
  | bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ g16*4/3 a8.*8/9 bes16*4/3]
  | e,4 r r b'
  | c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ a16*4/3 bes!8.*8/9 c16*4/3]
  %55
  | f,4 r r c'
  | d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ bes16*4/3 c8.*8/9 d16*4/3]
  | g,4 r r d'
  | cis r r8*4/3 r16*2/3 g' f8.*8/9 e16*4/3
  | bes'2\fermata r4 \tuplet 3/2 { r8 bes cis,}
  %60
  | d4~ \tuplet 3/2 { d8 e f} e4\trill~ \tuplet 3/2 { e8 d e}
  | f4~ \tuplet 3/2 { f8 g a} g4\trill~ \tuplet 3/2 { g8 f g}
  | a1~
  | \tuplet 3/2 { a8 bes c bes g d e fis g fis g a
  | g f! e f e d} e4 r
  %65
  | r2 r4 d
  | a a'~ \tuplet 3/2 { a8 g f g f e
  | f e d} e4~ \tuplet 3/2 { e8 d cis d cis b!
  | cis d e} d4~ \tuplet 3/2 { d8 e f e f g}
  | f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
  %70
  | \tuplet 3/2 { d8 c bes} c4~ \tuplet 3/2 { c8 bes a bes c d}
  | a2.\fermata
  \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override TupletBracket.bracket-visibility = ##f
  \partial 4 a'4
  %1
  | d d,~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g }
  | \override TupletNumber.transparent = ##t
    \tuplet 3/2 { f g a } g4~ \tuplet 3/2 { g8 a bes a bes c
  | bes a g} a4~ \tuplet 3/2 { a8 g f g f e}
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3]
  %5
  | \tuplet 3/2 { a8 e g f e d} cis4 bes'
  | a~ \tuplet 3/2 { a8 g f} g2~
  | g4~ \tuplet 3/2 { g8 f e} f8.*8/9[ d'16*4/3 c8.*8/9 bes16*4/3]
  | a2~ a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | f4 r r f
  %10
  | \tuplet 3/2 { e8 f g f e g f e d cis d e}
  | d4 r r
    \change Staff = "lower"
    \stemUp
    f
  | e c e
    \change Staff = "upper"
    \stemDown
    a8.*8/9 b16*4/3
  | c4 a c e
  | d d, r2
  %15
  | r4 g bes d
  | c c, r2
  %--
  | R1*2
  | r2 r4
    \change Staff = "lower"
    \stemUp
    d
  %20
  | a
    \change Staff = "upper"
    \stemDown
    a'~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { g f e }
    \change Staff = "lower"
    \stemUp\tieUp
  | \tuplet 3/2 { f e d } e4~ \tuplet 3/2 { e8 d cis d cis b
  | cis d e} d4~ \tuplet 3/2 { d8 e f e f g}
  | \change Staff = "upper"
    \stemDown
    f8.*8/9[
    \change Staff = "lower"
    \stemUp
    d16*4/3 a8.*8/9 d16*4/3]
    \change Staff = "upper"
    \stemDown
    f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
  | \change Staff = "lower"
    \stemUp
    d4 e!8.*8/9 fis16*4/3 g4
    \change Staff = "upper"
    \stemDown
    f
  %25
  | ees8.*8/9[ c16*4/3
    \change Staff = "lower"
    \stemUp
    g8.*8/9 c16*4/3]
    \change Staff = "upper"
    \stemDown
    ees8.*8/9[ f16*4/3
    ees8.*8/9 d16*4/3]
  | c4 d8.*8/9 e!16*4/3 f4 ees
  | d8.*8/9[ c16*4/3 bes8.*8/9 c16*4/3] d8.*8/9[ ees16*4/3 f8.*8/9 d16*4/3]
  | ees4~ \tuplet 3/2 { ees8 d c d c bes c bes a
  | \change Staff = "lower"
    \stemUp
    bes
    \change Staff = "upper"
    \stemDown
    bes' c d c bes} f2_~
  %30
  | \tuplet 3/2 { f8 g aes } \tuplet 3/2 { g f aes } g4 d
  | \tuplet 3/2 { ees8 d c } \tuplet 3/2 { d ees c } d4 g
  | \tuplet 3/2 { f8 bes, d } \tuplet 3/2 { f d f } bes8.*8/9[ e,!16*4/3 f8.*8/9 g16*4/3]
  | \tuplet 3/2 { a8 bes c } \tuplet 3/2 { bes c d }
    \tieDown f,2~
  | f1~
  %35
  | f~
  | f2 r4 d
  | g
    \change Staff = "lower"
    \stemUp\tieUp
    g,~ \tuplet 3/2 { g8 a bes a bes c
  | bes c d} c4~ \tuplet 3/2 { c8 d ees d ees f
  | ees d c} d4~ \tuplet 3/2 { d8 c bes c bes a}
  %40
  | bes8.*8/9[ d16*4/3 g8.*8/9 d16*4/3] bes8.*8/9[ a16*4/3 bes8.*8/9 c16*4/3]
  | d4 bes d
    \change Staff = "upper"
    \stemDown
    g8.*8/9 f16*4/3
  | e!8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
  | f4
    \change Staff = "lower"
    \stemUp
    a,
    \change Staff = "upper"
    \stemDown
    c f8.*8/9 e16*4/3
  | d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ e16*4/3 cis8.*8/9 d16*4/3]
  %45
  | e2 r4 bes'
  | a r r8*4/3 r16*2/3 f' \tuplet 3/2 { e8 f g}
  | cis,4 r r e,
  | \change Staff = "lower"
    \stemUp
    a,
    \change Staff = "upper"
    \stemDown
    a'~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { g f e }
  | \tuplet 3/2 { f e
    \change Staff = "lower"
    \stemUp\tieUp
    d } e4~ \tuplet 3/2 { e8 d cis } \tuplet 3/2 { d cis b }
  %50
  | \change Staff = "upper"
    \stemDown
    \tuplet 3/2 { cis d e } d4~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g }
  | f8.*8/9[
    \change Staff = "lower"
    \stemUp\tieUp
    d16*4/3 a8.*8/9 d16*4/3]
    \change Staff = "upper"
    \stemDown
    f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
  | d4 bes' g d
  | g8.*8/9[ e16*4/3 b8.*8/9 e16*4/3] g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]
  | e4 c' a e
  %55
  | a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | f2 r4 a
  | bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
  | g4 r r8*4/3 r16*2/3 e f8.*8/9 g16*4/3
  | cis,2\fermata r4 e
  %60
  | \tuplet 3/2 { f8 g a bes g a b a b cis b cis
  | d f, g a g f e g a bes a g
  | f d f a f a d cis b cis d e}
  | d1_~
  | d4_~ \tuplet 3/2 { d8 cis b} cis4 r
  %65
  | \tuplet 3/2 { r8d a f a f d f a d cis b
  | cis a e cis d e f e d} e8.*8/9 cis'!16*4/3
  | d4_~ \tuplet 3/2 { d8 cis b cis d e f e d}
  | e8.*8/9 g,16*4/3 \tuplet 3/2 { f8 e d} bes'2\trill
  | a4 r r8*4/3 r16*2/3 bes a8.*8/9 g16*4/3
  %70
  | \tuplet 3/2 { f8 e d} a'2 \tuplet 3/2 { g8 a bes}
  | fis2.\fermata
  \bar "|."
}

Bass = \context Voice = "four" \relative c {
  \voiceFour\tieUp
  \override TupletBracket.bracket-visibility = ##f
  \override TupletNumber.transparent = ##t
  \partial 4 d4\rest
  | \override MultiMeasureRest.staff-position = #0
    R1*3
  | d2\rest d4\rest d
  %5
  | \stemUp a \stemNeutral a'~ \tuplet 3/2 { a8 g f g f e
  | f e d} e4~ \tuplet 3/2 { e8 d cis d cis b
  | cis d e} d4~ \tuplet 3/2 { d8 e f e f g}
  | f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
  | \tuplet 3/2 { d8 cis b cis d e} f4 gis,
  %10
  | a r r a'~
  | a \tuplet 3/2 { gis8 a fis} gis2^\trill
  | a1_~
  | a8.*8/9[ e16*4/3 c8.*8/9 e16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]
  %15
  | g8.*8/9[ d16*4/3 bes8.*8/9 d16*4/3] g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]
  | e8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
  | f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3] d8.*8/9[ e16*4/3 f8.*8/9 d16*4/3]
  | g8.*8/9[ a16*4/3 g8.*8/9 f16*4/3] e8.*8/9[ f16*4/3 g8.*8/9 e16*4/3]
  | a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3] f8.*8/9[ e16*4/3 d8.*8/9 e16*4/3]
  %20
  | f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3] a4 cis,
  | d bes'! d,\rest gis
  | a d,\rest d\rest a'
  | d, b\rest b\rest d
  | g d\rest d\rest d
  %25
  | c r r c
  | f d\rest d\rest c
  | g' d\rest d2\rest
  | d\rest d4\rest f
  | bes bes,~ \tuplet 3/2 { bes8 c d c d ees
  %30
  | d ees f} ees4~ \tuplet 3/2 { ees8 f g } \tuplet 3/2 { f g aes }
  | \tuplet 3/2 { g f ees} f4~ \tuplet 3/2 { f8 ees d } \tuplet 3/2 { ees d c}
  | d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e!16*4/3]
  | f4 d a8.*8/9[ bes16*4/3 c8.*8/9 a16*4/3]
  | bes4~ \tuplet 3/2 { bes8 a g } \tuplet 3/2 { a bes c } \tuplet 3/2 { d c bes }
  %35
  | \tuplet 3/2 { c d ees d ees c d c bes a bes c }
  | bes4 d f bes,
  | ees b\rest \stemDown c b\rest
  | \tieDown g'1~
  | g~
  %40
  | g~
  | g2 d4\rest g
  | c2 d,4\rest g
  | f2 d4\rest f
  | bes2 d,4\rest f
  %45
  | e8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] e8.*8/9[ f16*4/3 e8.*8/9 d16*4/3]
  | cis8[ e g e] cis8.*8/9[ d16*4/3 cis8.*8/9 b16*4/3]
  | a8.*8/9[ cis16*4/3 e8.*8/9 cis16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | \stemDown \tuplet 3/2 { f8 a d } \stemNeutral \tuplet 3/2 { f e d } cis4.*10/9^\trill b16*2/3 cis
  | d4 bes'! d,\rest gis
  %50
  | a8.*8/9 g!16*4/3 \tuplet 3/2 { f8 g a} bes8.*8/9 d,16*4/3 \tuplet 3/2 { cis8 d e}
  | d4 f a d,
  | g d\rest d\rest g
  | g, g' b e,
  | a d,\rest d\rest a'
  %55
  | a, a' c f,
  | bes d bes fis
  | g bes g d
  | e8.*8/9[ g16*4/3 bes8.*8/9 g16*4/3] e8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
  | g,2\fermata r4 g'
  %60
  | \tuplet 3/2 { f8 e d} g4~ \tuplet 3/2 { g8 f e} a4
  | d, d\rest d\rest g
  | d' d,~ \tuplet 3/2 { d8 e f e f g
  | f g a} g4~ \tuplet 3/2 { g8 a bes a bes c
  | bes a g} a4~ \tuplet 3/2 { a8 g f g f e }
  %65
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3]
  | a1~
  | a~
  | a4 bes g cis,
  | \tuplet 3/2 { d8 a d f d f} a4 a,
  %70
  | d~ \tuplet 3/2 { d8 fis g a bes c } d8.*8/9 d,16*4/3
  | d2.\fermata
  \bar "|."
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
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
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, XIII/2"
    subtitle = "inversus"
    title = \markup {
      Contrapunctus XIII
    }
  }
  \layout { }
  \midi { }
}
