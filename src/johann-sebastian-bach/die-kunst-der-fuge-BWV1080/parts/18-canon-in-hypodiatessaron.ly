Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | d,8 bes' a2 g4
  | f8 e16 d ees2 d4
  | cis8_( d16 e!) d2 e4
  | f8 a, g'2 f8 e
  %5
  | f16 g a4 g8 f d' g, e'
  | a, f' b, d c bes g' bes,
  | a16 ees' d4 c8 bes g' c, a'
  | d, bes' e, g f ees c' ees,
  | d d,4 e8 f a d f
  %10
  | g, e' f, d' e, cis' d e
  | a,[ d16 c bes8 a] g[ g'16 f e8 d]
  | cis[ e16 d cis8 b] a[ a'16 g f e d cis!]
  | d4 r d,8 bes'4 a16 g
  | a f d4 e16 f g e cis4 d16 e
  %15
  | f e d4 d'8( ees e f fis
  | g gis a bes~ bes) a16 g a8 e
  | f16 e d4 c16 b c8 f4 e16 d
  | e c a4 b16 c d b gis4 a16 b
  | c b a4 a,8_( bes! b c cis
  %20
  | d dis e f~ f) e16 d e8 b
  | c16 b a8 r c' d, bes'! e, \slurUp bes'~
  | bes16 a_( g a bes a bes b) c( b c cis d8)[ \slurNeutral d,]
  | \appoggiatura e d^( cis) r e \appoggiatura f e^( d) r f
  | \appoggiatura g f_( e4) d'8~ d[ cis16 d e8 g,~]
  %25 a
  | g f16 e f4~ f8[ e16 d c8 b]
  | c c'16 b c4~ c8[ bes16 a g8 fis]
  | g g'16 fis g4~ g8 f4 e8
  | f8 bes16 a
    \shape #'((0.5 . 0) (0 . 0) (0 . 0.5) (0 . 0)) Slur
    bes4~( bes16[ a g f e d cis d])
  | cis([ f e dis e d cis d] c[ b c bes a bes a gis]
  %30
  | a8[) cis,16( d e8) e16_( f] g a bes4) a16 g
  | f[ e d e f g a b] cis[ b a b cis d e f]
  | g[ f e f g a bes a] g[ f e d cis d e8~]
  | e d4 c!16 b c8 f4 e16 dis
  | e8 b4 cis8 d a4 b!8
  %35
  | \tieDown c g4 a8 bes!16[ a g8~] g16 a g fis
  | g8 a, r g'~ g[ f16 e d cis e8~]
  | e16 d d'4 c16 b c8[ bes16 a g fis a8~]
  | a16[ g a bes c bes a8] ees' d4 c8
  | bes16[ c d e!] fis e d8 bes' a4 g8
  %40
  | fis16[ g a bes c ees, d c] fis!4.\prallprall e16 fis
  | \tieUp g4~ g16 f!( e g f[ e d cis c bes! a gis])
  | a8 a' d, fis g, g' c, e
  | f, f' b, d e,[ e' a,16 cis d ees]
  | d b c4 c8~ c bes4 a8~
  %45
  | a g4 f16 e f8[ bes16 a g f e d]
  | cis d e8 r e_~ e16[ f e d e f g a]
  | \tieDown bes a g fis g4~ g16 a g fis g4~
  | \tieUp g16[ a g fis] g8 g'~ g16[ d cis b] a cis e g
  | f[ e d cis] d8 bes a16 g ees'4 d8~
  %50
  | d[ cis16 b] cis8 a g16 f d'4 c8~
  | c[ b16 a] b8 g f16[ e g bes] cis g f e
  | d[ b cis8~] cis16 d e f e cis bes'!4 a16 g
  | \bar "||"
  | f8 e f d cis2\prall
  | d4 r r2
  %--
  | R1*2
  | a''4 cis, d2~
  | d e
  | fis4 g8 a g2~
  %60
  | g a
  | bes4 a8 g a2~
  | a g
  | f4 d' e,2~
  | e f4 g
  %65
  | f8 e d2 e4
  | f a, e' g,
  | d' f, c' a
  | b c e, cis'
  | d8 gis, a2 b4
  %70
  | c e, b' d,
  | a' c, g' e
  | fis g b, gis'
  | a a'2 g4
  | f d a f
  %75
  | e' g, f' a,
  | g' bes, a g
  | d' a8 b c4 d
  | e e,8 fis g4 a
  | bes g8 a b4 cis
  %80
  | d d,8 e f g a bes
  | a2 r
  | a'4 cis,2 d8 e
  | d f a2 g8 f
  | e g bes2 a8 g
  %85
  | fis gis a2 a,4
  | gis g fis f
  | e ees d cis~
  | cis d8 e d4 g
  | fis8 gis a2 bes!8 c
  %90
  | bes4 fis2 g8 a
  | g bes d2 c8 bes
  | a c ees2 d8 c
  | b cis d2 d'4
  | cis c b bes
  %95
  | a gis g fis~
  | fis g8 a g4 c
  | b8 cis d4 r bes,!
  | a' cis, g' cis,!~
  | cis8 d e d cis d cis c
  %100
  | b c b bes a4 a'
  | a( bes) r g
  | gis( a) r f
  | fis( g2) a,4~
  | a bes!8 a g4 e'
  %105
  | d8 bes' a2 g4
  | f8 e16 d ees2 d4
  | cis8 d16 e! d2 e4
  | f8 a, g'2 f8 e
  | d1\fermata
}

Bass = \context Voice = "two" \relative c {
  \voiceTwo
  \tieNeutral\stemNeutral
  \override Rest.staff-position = #0
  | \override MultiMeasureRest.staff-position = #0
    R1*4
  %5
  | a'4 cis, d2~
  | d e
  | fis4 g8 a g2~
  | g a
  | bes4 a8 g a2~
  %10
  | a g
  | f4 d' e,2~
  | e f4 g
  | f8 e d2 e4
  | f a, e' g,
  %15
  | d' f, c' a
  | b c e, cis'
  | d8 gis, a2 b4
  | c e, b' d,
  | a' c, g' e
  %20
  | fis g b, gis'
  | a a'2 g4
  | f d a f
  | e' g, f' a,
  | g' bes, a g
  %25
  | d' a8 b c4 d
  | e e,8 fis g4 a
  | bes g8 a b4 cis
  | d d,8 e f g a bes
  | a2 d\rest
  %30
  | a'4 cis,2 d8 e
  | d f a2 g8 f
  | e g bes2 a8 g
  | fis gis a2 a,4
  | gis g fis f
  %35
  | e ees d cis~
  | cis d8 e d4 g
  | fis8 gis a2 bes!8 c
  | bes4 fis2 g8 a
  | g bes d2 c8 bes
  %40
  | a c ees2 d8 c
  | b cis d2 d'4
  | cis c b bes
  | a gis g fis~
  | fis g8 a g4 c
  %45
  | b8 cis d4 r bes,!
  | a' cis, g' cis,!~
  | cis8 d e d cis d cis c
  | b c b bes a4 a'^.
  | \slurUp a( bes) r g^.
  %50
  | gis( a) r f^.
  | fis( g2) a,4~
  | a bes!8 a g4 e'
  | \bar "||"
  | d8 bes' a2 g4
  | f8( e16 d) ees2 d4
  %55
  | cis8( d16 e!) d2 e4
  | f8 a, g'2 f8 e
  | f16 g a4 g8 f d' g, e'
  | a, f' b, d c bes g' bes,
  | a16 ees' d4 \clef treble c8 bes g' c, a'
  %60
  | d, bes' e, g f ees c' ees,
  | d \clef bass d,4 e8 f a d f
  | g, e' f, d' e, cis' d e
  | a,[ d16 c! bes8 a] g[ g'16 f e8 d]
  | cis[ e16 d cis8 b] a[ a'16 g] f e d cis!
  %65
  | d4 r d,8 bes'4 a16 g
  | a f d4 e16 f g e cis4 d16 e
  | f e d4 \clef treble d'8_( ees e f fis
  | g gis a bes~ bes) a16 g a8 e
  | f16 e d4 c16 b c8 f4 e16 d
  %70
  | e c a4 b16 c d b gis4 a16 b
  | c b a4 \clef bass a,8( bes! b c cis
  | d dis e f~ f) e16 d e8 b
  | c16 b a8 r c' d, bes'! e, bes'~
  | bes16 a g a bes a bes b c b c cis d8[ d,]
  %75
  | \appoggiatura e d_( cis) r e \appoggiatura f e_( d) r f
  | \appoggiatura g f( e4) d'8~ d[ cis16 d e8 g,~]
  | g f16 e f4~ f8[ e16 d c8 b]
  | c c'16 b c4~ c8[ bes16 a g8 fis]
  | g \clef treble g'16 fis g4~ g8 f4 e8
  %80
  | f8 bes16 a bes4~ bes16 a_( g f e d cis d)
  | cis_( f e dis e d cis d c b c bes a bes a gis
  | \stemDown a8)[ \clef bass cis,16( d e8) e16( f] g a bes4) a16 g
  | f[ e d e f g a b] \clef treble \stemNeutral cis[ b a b cis d e f]
  | g[ f e f g a bes a] g[ f e d cis d e8~]
  %85
  | e d4 c!16 b c8 f4 e16 dis
  | e8 b4 cis8 d \clef bass a4 b!8
  | c g4 a8 bes!16[ a g8~] g16 a g fis
  | g8 a, r g'~ g[ f16 e d cis e8~]
  | e16 d d'4 c16 b c8[ bes16 a g fis a8~]
  %90
  | a16[ g a bes c bes a8] \clef treble ees' d4 c8
  | bes16[ c d e!] fis e d8 bes' a4 g8
  | fis16[ g a bes c ees, d c] fis!4.^\prallprall e16 fis
  | g4~ g16 f! e g f[ e d cis c bes! a gis]
  | a8 a' d, fis g, g' c, e
  %95
  | \clef bass f, f' b, d e,[ e'] a,16 cis d ees
  | d b c4 c8~ c bes4 a8~
  | a g4 f16 e f8[ bes16 a g f e d]
  | cis d e8 r e~ e16[ f e d e f g a]
  | bes a g fis g4~ g16 a g fis g4~
  %100
  | g16[ a g fis] g8 g'~ g16[ d cis b a cis e g]
  | f[ e d cis] d8 bes a16 g ees'4 d8~
  | d[ cis16 b cis8 a] g16 f d'4 c8~
  | c[ b16 a b8 g] f16[ e g bes cis g f e]
  | d[ b cis8~] cis16 d e f e cis bes'!4 a16 g
  %105
  | f8 e f d cis2\prall
  | d4. c16 b c8[ bes16 a bes8 g'16 fis]
  | g4. f!16 e f8[ e16 d cis8 a'16 gis]
  | a8[ d16 c bes8 a16 g] a4 a,
  | d1\fermata
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
    opus = "BWV 1080, 19"
    subtitle = "per Augmentationem in Contrario Motu"
    title = \markup {
      Canon [in Hypodiatessaron]
    }
  }
  \layout { }
  \midi { \tempo 4 = 124 }
}
