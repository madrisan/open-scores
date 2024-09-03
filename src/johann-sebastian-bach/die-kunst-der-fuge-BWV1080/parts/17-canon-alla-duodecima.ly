Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'CanonIII
  \override Rest.staff-position = #0
  \override TupletBracket.bracket-visibility = ##f
  | \override MultiMeasureRest.staff-position = #0
    R1*8
  | \repeat volta 2 {
    \tuplet 6/4 { a8[ b a gis a b] } \tuplet 6/4 { c![ d c b c d] }
  %10
  | e2~ e8 d( c b)
  | c2~ c8 b( a gis)
  | a4 b8( c d e) f4
  | f( gis,) r8 e fis gis
  | a( gis fis e) b'( gis fis e)
  %15
  | c'( b a4) r8 f'( e dis)
  | e( c b a) c( b a gis)
  | a4 r  \tuplet 6/4 { e8[ f e d e f] }
  | g e f g a b cis d
  | e d cis b a4. bes8
  %20
  | c bes a g f g a f
  | d e f bes, bes' g a bes
  | c, e a4_. d,8 f bes4_.
  | e,8 g a bes c a g f
  | g4 c a b
  %25
  |  \tuplet 6/4 { c8[ d c b c d] } e4. d16 c
  | b8 g a b c4. b16 a
  | gis4 e r8 a g f
  | e4 c8 e a4 cis,
  | d a r8 b cis d
  %30
  | e d cis e f e d f
  | g f e d e c' bes a
  | bes g e g cis, e d f
  | e4 r  \tuplet 6/4 { b'8[ c b a b cis] }
  |  \tuplet 6/4 { d[ e d cis d e] } \tuplet 6/4 { f[ g f e f g] }
  %35
  | a2~ a8 g f e
  | f2~ f8 e d cis
  | d4 e8( f g a) bes4
  | bes( cis,) r8 a( b cis)
  | d( cis b a) e'( cis b a)
  %40
  | f'( e d4) r8 bes'( a gis)
  | a( f e d) f( e d cis)
  | d4 r \tuplet 6/4 { a8[ b a g a b] }
  | cis a b cis d e f g
  | a g f e d4. e8
  %45
  | f e d c bes c d bes
  | g a bes e, e' cis d e
  | f, a d4 g,8 bes e4
  | a,8( cis d e) f( d cis! b)
  | cis4 f d e
  %50
  | \tuplet 6/4 { f8[ g f e f g] } a4. g16 f
  | e8 cis d e f4. e16 d
  | cis4 a r8 d c bes
  | a4 f8 a d4 fis,
  | g d r8 e f g
  %55
  | a g f a bes a g bes
  | c bes a g a f' e d
  | e c a c f, a g bes
  | a4 r \tuplet 6/4 { e'8[ f e d e f] }
  | g4~ g16 f e d \tuplet 6/4 { c8[ d c b c d] }
  %60
  | e d cis b a4. bes8
  | c bes a g f g a f
  | bes g f e d4 r
  | r a' d,8 f bes4
  | e,8 g c4 r8 a g fis
  %65
  | g4 a2 bes4
  | cis,8 d e f \tuplet 6/4 { g[ a g f g a] }
  | bes4 g \tuplet 6/4 { d'8[ e d cis d e] }
  | f4 d \tuplet 6/4 { a8[ b a gis a b] }
  | \tuplet 6/4 { cis[ d cis b cis d] } e a, a'4~
  %70
  | a8 g f e f2~
  | f8 e d c bes c d bes
  | g a bes e, e' cis d e
  | f, a d4-. g,8 bes e4-.
  | a,8 cis d e f d cis! b
  %75
  | cis4 f d e
}
  | f8^\markup { \small\italic Finale } e d4 r8 bes' a gis
  | a( f e d) f( e d cis)
  | d1\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceTwo
  \override Rest.staff-position = #0
  \override TupletBracket.bracket-visibility = ##f
  \slurNeutral\stemNeutral\tieUp\tupletNeutral
  %1
  | \tuplet 6/4 { d8[ e d cis d e] } \tuplet 6/4 { f[ g f e f g] }
  | a2~ a8 g( f e)
  | f2~ f8 e( d cis)
  | d4 e8( f g a) bes4
  %5
  | bes( cis,) r8 a b cis
  | d( cis b a) e'( cis b a)
  | f'( e d4) r8 bes'( a gis)
  | a( f e d) f( e d cis)
  | \repeat volta 2 {
    d4 r \tuplet 6/4 { a8[ b a gis a b] }
  %10
  | c a b c d e fis gis
  | a g f e d4. e8
  | f e d c b c d b
  | gis a b e, e' c d e
  | fis, a d4^. gis,8 b e4^.
  %15
  | a,8 c d e f d c b
  | c4 f d e
  | \tuplet 6/4 { f8[ g f e f g] } a4. g16 f
  | e8 c d e f4. e16 d
  | cis4 a r8 d c bes
  %20
  | a4 f8 a d4 f,
  | g d r8 e f g
  | a g f a bes a g bes
  | c bes a g a f' e d
  | e c a c fis, a gis b
  %25
  | a4 r \tuplet 6/4 { e'8[ f e d e f] }
  | g4~ g16 f e d \tuplet 6/4 { c8[ d c b c d] }
  | e d c b a4. b8
  | c bes! a g f g a f
  | bes g f e d4 r
  %30
  | r a' d,8 f bes4
  | e,8 g c4 r8 a g fis
  | g4 a2 bes4
  | cis,8 d e f \tuplet 6/4 { g[ a g f g a] }
  | bes!4 g \tuplet 6/4 { d'8[ e d cis d e] }
  %35
  | \tuplet 6/4 { f[ g f e f g] } a d, d'4~
  | d8 c bes a bes2~
  | bes8 a g f e f g e
  | cis d e a, a' f g a
  | b, d g4^. cis,8 e a4^.
  %40
  | d,8 f g a bes g f e
  | f4 bes g a
  | \tuplet 6/4 { d,8[ e d c d e] } \tuplet 6/4 { f[ g f e f g] }
  | a2~ a8 g f e
  | f2~ f8 e d cis
  %45
  | d4 e8( f g a) bes4
  | bes( cis,) r8 a( b cis!)
  | d( cis b a) e'( cis! b a)
  | f'( e d4) r8 bes'!( a gis)
  | a( f e d) f( e d cis)
  %50
  | d4 r \tuplet 6/4 { a8[ bes a g a b] }
  | cis a b cis d e f g
  | a g f e d4. e8
  | f e d c bes c d bes
  | g a bes e, e' cis d e
  %55
  | f, a d4^. g,8 bes e4^.
  | a,8 c d e f d c b
  | c4 f d e
  | \tuplet 6/4 { f8[ g f e f g] } a4. g16 f
  | e8 c d e f4. e16 d
  %60
  | cis4 a r8 d c bes
  | a4 f8 a d4 f,
  | g d r8 e f g
  | a g f a bes a g bes
  | c bes a g a f' ees d
  %65
  | ees c a c fis, a g bes
  | a4 r \tuplet 6/4 { e'8[ f e d e f] }
  | \tuplet 6/4 { g[ a g f g a] } bes4 g
  | \tuplet 6/4 { d8[ e d cis d e] } \tuplet 6/4 { f[ g f e f g] }
  | a2~ a8 g f e
  %70
  | f2~ f8 e d cis
  | d4 e8( f g a) bes4
  | bes( cis,) r8 a( b cis!)
  | d( cis b a) e'( cis b a)
  | f' e d4 r8 bes'!( a gis)
  %75
  | a( f e d) f( e d cis)
  }
  | d f, g a bes g f e
  | f4 bes g a
  | d,1\fermata
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
    opus = "BWV 1080, 17"
    subtitle = "in Contrapunto alla Quinta"
    title = \markup {
      Canon alla Duodecima
    }
  }
  \layout { }
  \midi { \tempo 4 = 170 }
}
