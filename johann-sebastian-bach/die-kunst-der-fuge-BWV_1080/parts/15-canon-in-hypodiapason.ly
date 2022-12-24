Global = {
  \key d \minor
  \time 9/16
  \include "../global.ly"
}

Upper = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | a8. d,16 cis d e d e
  | f e f g f g a g a
  | bes8 r16 a8 r16 g8 r16
  | \appoggiatura g8 f8.~ f8 e16 f8 g16
  %5
  \break
  \repeat volta 2 {
  | a8 g'16 f8 a,16 g8 e'16
  | d8 f,16 e8 d'16 cis8 e,16
  | e d cis d e f g a bes
  | bes a g a b cis d e f
  | f d e e cis d d b c
  %10
  | c a bes! bes g a a f g
  | \appoggiatura g8 f8.~ f16 g a bes a g
  | \appoggiatura d'8 cis8.~ cis16 d e f e d
  | gis4.~\downprall gis8.
  | a8 r16 r8 cis,16 d8 e16
  %15
  | a, b cis d e f g,8.~
  | g16 g' f e d cis d8.~
  | d16 b cis d e f e f d
  | cis d e a,8.~ a16 bes g
  | f g e f a d c bes a
  %20
  | bes d g cis, e a, bes a g
  | f g e f8 d'16 g,8 f16
  | e a g f e d cis8.\prallprall
  | d8 r16 r8. r8.
  | R1*9/16
  %25
  | d'8. a16 gis a b a b
  | c b cis d cis d e d e
  | f8 r16 e8 r16 d8 r16
  | \appoggiatura d8 cis8.~ cis8 a16 b8 cis16
  | d c! b c8 a'16 gis8 d16
  %30
  | e8 g!16 f e d cis8 bes'16
  | a f d d g c, c f bes,
  | bes a g a cis e g f e
  | f e d e d c d c b
  | c d e d e f e f g
  %35
  | f d a' bes, e g a, d f
  | g, cis e f, a g bes a cis!
  | d e f gis,4.\lineprall
  | a8 r16 r8 b16 c8 a16
  | d8 f16 f e d c d b
  %40
  | e8.[ a,8.] r8.
  | a e'16 f e d e d
  | c d c b c b a b a
  | gis8 r16 a8 r16 b8 r16
  | \appoggiatura b8 c8.~ c8 d16 c8 b!16
  %45
  | a e a c a c e8 gis,16
  | a8 f'16 g,!8 e'16 f,8 d'16
  | e, b' d c b a gis d' f
  | e d c b a gis a e b'
  | c b a e'8.~ e16 b! d
  %50
  | d( c) a' c,( b) g' b,( a) f'
  | a,( gis) b e,8 r16 r8.
  | r d'~ d16 c d
  | e d c b c d e fis gis
  | a e c d g! b, c f a,
  %55
  | b e d c b a b a gis
  | a gis fis gis e gis b e d
  | c b a d8.~ d16 c b
  | c8 r16 f8 r16 e8 r16
  | d8 gis,16 a8 c16 f,8.\prallmordent
  %60
  | e8 r16 r8. r
  | r16 d e f g f \tieNeutral e8.~
  | e16 f g a bes a g a g
  | f g f e f e d e d
  | cis8 r16 d8 r16 e8 r16
  %65
  | f8.~ f8 a16 g8\prall f16
  | g f e cis'4.\downmordent
  | d16 bes g' c,! a f' bes, g e'
  | a, g e' a, f d' g, e cis'
  | d a f d e f e f d
  %70
  | e8.~ e16 f g f g e
  | f8 r16 e8 r16 d8 r16
  | cis8 r16 d8 r16 e8 r16
  | f e d bes' a g cis8 r16
  | r g d cis d e a, b cis!
  %75
  | d g, bes c! f, a bes e, g
  | a a' g f d' c bes a bes
  | a8. d,16 cis d e d e
  | f e f g f g a g a
  | bes8 r16 a8 r16 g8 r16
  %80
  | \appoggiatura g8 f8.~ f8 e16 f8 g16
  }
  | a8 g'16 f8 a,16 g8 e'16
  | d8 f,16 e8 d'16 cis8 e,16
  | e d cis d e f g a bes
  | bes a g a b cis d e f
  %85
  | f d e e cis d d b c
  | c a bes! bes g a a f g
  | \appoggiatura g8 f8.~ f16 g a bes a g
  | \appoggiatura d'8 cis8.~ cis16 d e f e d
  | gis4.~\downprall gis8.
  %90
  | a8 r16 r8 cis,16 d8 e16
  | a, b cis d e f g,8.~
  | g16 g' f e d cis d8.~
  | d16 b cis d e f e f d
  | cis d e a,8.~ a16 bes g
  %95
  | f g e f a d c bes a
  | bes d g cis, e a, bes a g
  | f g e f8 d'16 g,8 f16
  | e a g f e d cis8.\prallprall
  | d8\fermata r16 r8 bes'16 a8 f'16
  %100
  | g, a bes a cis e g f e
  | a8 cis,16 d e f bes, ees d
  | cis d e! a,8 r16 \clef bass a,,8 r16
  | d,4. r8.
  \bar "|."
}

Lower = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral
  \override Rest.staff-position = #0
  | \override MultiMeasureRest.staff-position = #0
    R1*9/16*4
  %5
  | \repeat volta 2 {
    a8. d,16 cis d e d e
  | f e f g f g a g a
  | bes8 r16 a8 r16 g8 r16
  | \appoggiatura g8 f8.~ f8 e16 f8 g16
  | a8 g'16 f8 a,16 g8 e'16
  %10
  | d8 f,16 e8 d'16 cis8 e,16
  | e d cis d e f g a bes
  | bes a g a b cis d e f
  | f d e e cis d d b c
  | c a bes! bes g a a f g
  %15
  | \appoggiatura g8 f8.~ f16 g a bes a g
  | \appoggiatura d'8 cis8.~ cis16 d e f e d
  | \clef treble gis4.~\downprall gis8.
  | a8 r16 r8 cis,16 d8 e16
  | a, b cis d e f g,8.~
  %20
  | g16 g' f e d cis d8.~
  | d16 b cis d e f e f d
  | cis d e \clef bass a,8.^~ a16 bes g
  | f g e f a d c bes a
  | bes d g cis, e a, bes a g
  %25
  | f g e f8 d'16 g,8 f16
  | e a g f e d cis8.^\prallprall
  | d8 r16 r8. r
  | R1*9/16
  | d'8. a16 gis a b a b
  %30
  | c b cis d cis! d e d e
  | f8-. r16 e8-. r16 d8-. r16
  | \clef treble \appoggiatura d8 cis8.~ cis8 a16 b8 cis16
  | d c! b c8 a'16 gis8 d16
  | e8 g!16 f e d cis8 bes'16
  %35
  | a f d d g c, c f bes,
  | bes a g a cis e g f e
  | f e d e d c d c b
  | c d e d e f e f g
  | f d a' bes, e g a, d f
  %40
  | \clef bass
    g, cis e f, a g bes a cis!
  | d e f g,4.^\lineprall
  | a8 r16 r8 b16 c8 a16
  | d8 f16 f e d c d b
  | e8.[ a,] r
  %45
  | a e'16 f e d e d
  | c d c b c b a b a
  | gis8 r16 a8 r16 b8 r16
  | c8.~ c8 d16 c8 b16
  | a e a c a c e8 gis,16
  %50
  | a8 f'16 g,!8 e'16 f,8 d'16
  | e, b' d c b a gis d' f
  | e d c b a gis a e b'
  | \tieUp c b a e'8.~ e16 b d
  | d^( c) a' c,^( b) g' b,^( a) f'
  %55
  | a,^( gis) b e,8 r16 r8.
  | r d'~ d16 c d
  | e d c b c d e fis gis
  | a e c d g! b, c f a,
  | \clef bass b e d c b a b a gis
  %60
  | a gis fis gis e gis b e d
  | c b a d8.~ d16 c b
  | c8 r16 f8 r16 e8 r16
  | d8 gis,16 a8 c16 f,8.^\prallprall
  | e8 r16 r8. r
  %65
  | r16 d e f g f e8.~
  | e16 f g a bes a g a g
  | f g f e f e d e d
  | cis8-. r16 d8-. r16 e8-. r16
  | f8.~ f8 a16 g8^\prall f16
  %70
  | g f e cis'4.^\prallmordent
  | d16 bes g' c,! a f' bes, g e'
  | a, g e' a, f d' g, e cis'
  | d a f d e f e f d
  | e8.~ e16 f g f g e
  %75
  | f8 r16 e8 r16 d8 r16
  | cis8 r16 d8 r16 e8 r16
  | f e d bes' a g cis8 r16
  | r g d cis d e a, b cis!
  | d g, bes c! f, a bes e, g
  %80
  | a a' g f d' c bes a bes
  }
  | a8. d,16 cis d e d e
  | f e f g f g a g a
  | bes8 r16 a8 r16 g8 r16
  | \appoggiatura g8 f8.~ f8 e16 f8 g16
  %85
  | a8 g'16 f8 a,16 g8 e'16
  | d8 f,16 e8 d'16 cis8 e,16
  | e d cis d e f g a bes
  | bes a g a b cis d e f
  | f d e e cis d d b c
  %90
  | c a bes! bes g a a f g
  | \appoggiatura g8 f8.~ f16 g a bes a g
  | \appoggiatura d'8 cis8.~ cis16 d e f e d
  | gis4.~^\downprall gis8.
  | a8 r16 r8 cis,16 d8 e16
  %95
  | a, b cis d e f g,8.~
  | g16 g' f e d cis d8.~
  | d16 b cis d e f e f d
  | cis d e a,8.~ a16 bes g
  | f g e f a d c bes a
  %100
  | bes d g cis, e a, bes a g
  | f g e f8 d'16 g,8 f16
  | e a g f e d cis8.^\prallprall
  | d4. r8.

  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph "scripts.ufermata" }
  %% The RehearsalMark in Staff is overriden, while not touching the one from Score.
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Upper
    >>
    %% Mark_engraver: two fermata signs on the last bar line
    %% (a typical setup in XVIII century music)
    \context Staff = "lower" \with { \consists "Mark_engraver" } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Lower
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 15"
    subtitle = "(Canon alla Ottava)"
    title = \markup {
      Canon in Hypodiapason
    }
  }
  \layout { }
  \midi { }
}
