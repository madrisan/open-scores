Global = {
  \key d \minor
  \time 12/8
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'CanonII
  \stemNeutral
  \override Rest.staff-position = #0
  | \override MultiMeasureRest.staff-position = #0
    R1*12/8*4
  %5
  | c4*3/2 f,2*3/2 a4*3/2~
  | a c2*3/2 d4*3/2~
  | d c2*3/2 bes4*3/2~
  | bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
  | c8 bes! c d c bes a bes g f g e
  %10
  | f c' f e f d c d bes a bes g
  | a f g a c bes c d e f g e
  | f f, f'~ f e g f g a g a f
  | e4*3/2 a,2*3/2 c4*3/2~
  | c e2*3/2 f4*3/2~
  %15
  | f e2*3/2 d4*3/2~
  | d c~ c8.*4/3 b16*2 c8.*4/3 d16*2
  | e8 d e~ e f g f g a g a bes
  | a bes c bes c d c bes c~ c a f
  | d c d~ d bes' d, c bes c~ c a' c,
  %20
  | bes a bes~ bes g' bes, a g a~ a g f
  | bes8.*4/3 g16*2 e4*3/2 r e'~
  | e8 d16 cis b a g'4*3/2~ g8.*4/3 e16*2 a4*3/2~
  | a gis g fis
  | f! e~ e8.*4/3 a16*2 d,8 e f~
  %25
  | f e16 d e8 r d'16 c bes a g a bes a g f e8 g bes
  | cis, e g r e f g a bes~ bes16 a g a bes g
  | a g f e f8~ f e dis e16 d c d ees8~ ees d cis
  | d16 c! bes c des8~ des c b c4.*4/3 r16*2 b'
  | c8.*4/3 c,16*2 f4*3/2~ f8 e f bes4*3/2~
  %30
  | bes8 a16 g f e d'4*3/2~ d8.*4/3 f,16*2 e8 f g~
  | g c f, bes4*3/2~ bes8.*4/3 c,16*2 a'4*3/2~
  | a8.*4/3 bes,16*2 g'4*3/2~ g8 f e f g a
  | g cis, r r16 d' cis b a g f4*3/2~ f16 a bes a g f
  | e8 f g a16 g f g a8 b cis d~ d c b!
  %35
  | c16 b a gis a8~ a bes a g fis g~ g f16 e d cis
  | f8 e f~ f g f e f g c, e d
  | e16 f g a bes g a bes c8 e, f16 a g f e d c8 e g
  | c2*3/2~ c8 bes a g4*3/2~
  | g8.*4/3 c16*2 f,4*3/2~ f8.*4/3 d'16*2 e,8 g cis
  | \bar "||"
  %40
  | a,4*3/2 d,2*3/2 f4*3/2~
  | f a2*3/2 bes4*3/2~
  | bes a2*3/2 g4*3/2~
  | g f~ f8.*4/3 e16*2 f8.*4/3 g16*2
  | a8 g a bes a g f g e d e cis
  %45
  | d a' d c! d bes a bes g f g e
  | f d e f a g a b cis d e cis
  | d d, d'~ d cis e d e f e f d
  | c4*3/2 f,2*3/2 a4*3/2~
  | a c2*3/2 d4*3/2~
  %50
  | d c2*3/2 bes4*3/2~
  | bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
  | c8 b c~ c d e d e f e f g
  | f g a g a bes a g a~ a f d
  | bes a bes~ bes g' bes, a g a~ a f' a,
  %55
  | g f g~ g e' g, f e f~ f e d
  | g8.*4/3 e16*2 c4*3/2 r c'~
  | c8 bes16 a g f e'4*3/2~ e8.*4/3 c16*2 f4*3/2~
  | f e ees d
  | des c~ c8.*4/3 f16*2 b,8 c d~
  %60
  | d c16 b c8 r bes'!16 a g f e f g f e d c8 e g
  | a, c e r c d e f g~ g16 f e f g e
  | f e d cis d8~ d c b c16 b! a b c8~ c bes a
  | bes16 a g a bes8~ bes a gis \appoggiatura gis16 a4.*4/3 r16*2 gis'
  | a8.*4/3 a,16*2 d4*3/2~ d8 cis d g4*3/2~
  %65
  | g8 f16 e d cis bes'4*3/2~ bes8.*4/3 d,16*2 cis!8 d e~
  | e a d, g4*3/2~~ g8.*4/3 a,16*2 f'4*3/2~
  | f8.*4/3 g,16*2 e'4*3/2~ e8 d cis d e f
  | e a, r r16 bes' a g f e d4*3/2~ d16 f g f e d
  | cis8 d e f16 e d e f8 g a bes~ bes a g
  %70
  | a16 g f e f8~ f g f e dis e~ e d16 c bes a
  | d8 cis d~ d e d cis d e a, cis b
  | cis16 d e f g e f g a8 cis,! d16 f e d cis! b a8 cis e
  | a2*3/2~ a8 g f e4*3/2~
  | e8.*4/3 a16*2 d,4*3/2~ d8.*4/3 bes'16*2 cis,8 e a
  %75
  | a,8.*4/3 d16*2 bes4*3/2~ bes8 a gis a4*3/2~
  | a8 e' cis r \appoggiatura bes'16 a8 g \appoggiatura a16 f4*3/2~ f16 a g f e d
  | cis b a b cis d e d e f g e f d e f g a bes! a g f e d
  | cis e g bes a g a g f e d c bes c bes a g f g bes a g f e
  | f16*3/2_. g_( f e) f_. bes_( a g) a^. d^( cis b) cis^. f^( e d)
  %80
  | e f32*3/2 g f e d cis d f g a bes16*3/2 d, cis a d cis d4*3/2~
  | d4.*3/2\fermata d,16*3/2 e e2*3/2\prall
  | d1*3/2\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \tieUp
  \override Rest.staff-position = #0
  %1
  | a'4*3/2 d,2*3/2 f4*3/2~
  | f a2*3/2 bes4*3/2~
  | bes a2*3/2 g4*3/2~
  | g f~ f8.*4/3 e16*2 f8.*4/3 g16*2
  %5
  | a8 g a bes a g f g e d e cis
  | d a' d c d bes a bes g f g e
  | f d e f a g a bes c d e cis
  | d d, d'~ d cis e d e f e f d
  | c4*3/2 f,2*3/2 a4*3/2~
  %10
  | a c2*3/2 d4*3/2~
  | d c2*3/2 bes4*3/2~
  | bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
  | \clef treble \stemUp\tieDown c8 b c~ c d e d e f e f g
  | f g a g a bes a g a~ a f d
  %15
  | \clef bass \stemNeutral\tieNeutral bes a bes~ bes g' bes, a g a~ a f' a,
  | g f g~ g e' g, f e f~ f e d
  | g8.*4/3 e16*2 c4*3/2 r c'~
  | c8 bes16 a g f e'4*3/2~ e8.*4/3 c16*2 f4*3/2~
  | f e ees d
  %20
  | des c~ c8.*4/3 f16*2 b,8 cis d~
  | d cis16 b cis8 \clef treble r bes'!16 a g f e f g f e d cis8 e g
  | a, cis e r cis! d e f g~ g16 f e f g e
  | f e d cis d8~ d cis b cis16 b a b c8~ c b! a
  | b16 a g a bes8~ bes a gis a4.*4/3 r16*2 gis'
  %25
  | a8.*4/3 a,16*2 d4*3/2~ d8 cis d g4*3/2~
  | g8 f16 e d cis bes'4*3/2~ bes8.*4/3 d,16*2 cis!8 d e~
  | e a d, g4*3/2~~ g8.*4/3 a,16*2 f'4*3/2~
  | f8.*4/3 g,16*2 e'4*3/2~ e8 d c d e f
  | e a, r r16 bes' a g f e d4*3/2~ d16 f g f e d
  %30
  | cis8 d e f16 e d e f8 g a bes~ bes a g
  | a16 g f e f8~ f g f e d e~ e d16 c bes a
  | d8 cis d~ d e d cis! d e a, cis b
  | cis16 d e f g e f g a8 cis,! d16 f e d cis! b a8 cis e
  | a2*3/2~ a8 g f e4*3/2~
  %35
  | e8.*4/3 a16*2 d,4*3/2~ d8.*4/3 bes'16*2 cis,8 e a
  | a,8.*4/3 d16*2 bes4*3/2~ bes8 a g a4*3/2~
  | a8 e' c r \appoggiatura bes'16 a8 g \appoggiatura a16 f4*3/2~ f16 a g f e d
  | c bes a bes c d e d e fis g e fis d e fis g a bes a g f e d
  | c e g bes a g a g f e d c \clef bass bes c bes a g f g bes a g f e
  | \bar "||"
  %40
  | f d e f g a bes8 a g f g e d e cis
  | d16 e f g a bes c8 d bes a bes g f g e
  | f16 a bes c d e f8 g e d cis d e f d
  | cis b cis d e c bes2*3/2^\prallprall
  | a4*3/2 d,2*3/2 f4*3/2~
  %45
  | f a2*3/2 bes4*3/2~
  | bes a2*3/2 g4*3/2~
  | g f~ f8.*4/3 e16*2 f8.*4/3 g16*2
  | a8 g a bes a g f g e d e cis
  | d a' d c d bes a bes g f g e
  %50
  | f d e f a g a bes c d e cis
  | d d, d'~ d cis e d e f e f d
  | c4*3/2 f,2*3/2 a4*3/2~
  | a c2*3/2 d4*3/2~
  | d c2*3/2 bes4*3/2~
  %55
  | bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
  | c8 b c~ c d e d e f \clef treble e f g
  | f g a g a bes a g a~ a f d
  | \clef bass bes a bes~ bes g' bes, a g a~ a f' a,
  | g f g~ g e' g, f e f~ f e d
  %60
  | g8.*4/3 e16*2 c4*3/2 r c'~
  | c8 bes16 a g f e'4*3/2~ e8.*4/3 c16*2 f4*3/2~
  | f e ees d
  | des c~ c8.*4/3 f16*2 b,8 c d~
  | d c16 b c8 \clef treble r bes'!16 a g f e f g f e d cis8 e g
  %65
  | a, cis! e r cis d e f g~ g16 f e f g e
  | f e d cis d8~ d cis! b cis16 b a b c8~ c b a
  | b16 a g a bes8~ bes a gis a4.*4/3 r16*2 gis'
  | a8.*4/3 a,16*2 d4*3/2~ d8 cis d g4*3/2~
  | g8 f16 e d cis bes'4*3/2~ bes8.*4/3 d,16*2 cis!8 d e~
  %70
  | e a d, g4*3/2~ g8.*4/3 a,16*2 f'4*3/2~
  | f8.*4/3 g,16*2 e'4*3/2~ e8 d cis d e f
  | e a, r r a'16 g f e d4*3/2~ d16 f g f e d
  | cis8 d e f16 e d e f8 g a bes~ bes a g
  | a16 g f e f8~ f g f e d e~ e d16 cis b a
  %75
  | d8 cis d~ d e d cis! d e a, cis b
  | cis16 d e f g e f g a8 cis, d16 f e d cis! b a8 cis e
  | a2*3/2~ a8 g f e4*3/2~
  | e8.*4/3 a16*2 d,4*3/2~ d8.*4/3 bes'16*2 \stemDown cis,8 e a
  | \clef bass
    \stemUp a,8*3/2 d,4*3/2 f a bes8*3/2~
  %80
  | bes a4*3/2 g f8*3/2~ f16*3/2 e f g
  | \override TextScript.padding = #1 a2*3/2_\fermata^\markup { \small\italic Cadenza } a,
  | d,1*3/2\fermata
  | \bar "|."
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
    opus = "BWV 1080, 16"
    subtitle = "Contrapunto alla Terza"
    title = \markup {
      Canon alla Decima
    }
  }
  \layout { }
  \midi { \tempo 4 = 100 }
}
