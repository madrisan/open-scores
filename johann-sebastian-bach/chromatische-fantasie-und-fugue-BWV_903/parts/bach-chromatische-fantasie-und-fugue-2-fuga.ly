Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one"  \relative c'' {
  %1
  \voiceOne
  | a4 bes b
  | c c8 b c4
  | e, f fis
  | g g8 fis g a
  %5
  | bes!4 a g
  | f! g8 f e d
  | e4 a, cis
  | d8 d16 e f8 f16 g a8 a16 b
  | c2.~
  %10
  | c8 a16 bes! c8 c16 d! e8 e16 fis
  | g2.~
  | g8 a16 g f!8 f16 e d8 c16 b!
  | gis'2.\trill
  | a2.~
  %15
  | a8 b!16 a gis8 gis16 fis e8 e16 d
  | c8 e, a a16 b! c4~
  | c16[ bes a bes] c[ d ees d] c[ bes c a]
  | bes8 d, g[ g16 a] bes8[ c16 bes]
  | a8[ bes16 c] d[ ees d c] d[ b! c d]
  %20
  | g,4 r r
  | r16 g a bes a bes a g a fis g a
  | d,4 d'2
  | e2.
  | f16[ a g f] e[ f e f] f8.\trill e32 f
  %25
  | g4 e2~
  | e8 f16 e d8 d16 c bes8 bes16 a
  | g2 r8 g8
  | c2 r8 c8
  | f2 r8 f8
  %30
  | bes2.~
  | bes8 c16 bes a8 a16 g f8 f16 ees
  | d8 f16 ees d8 d16 c bes8 bes16 a
  | g8 d'16 c bes8 bes16 a g8 g16 f
  | e c d e f g a bes c bes d c
  %35
  | c bes c d g,4.\trill f16 g
  | f2.~
  | f16 f e d e4 b'8\rest b16\rest fis
  | g4~ g16 a g f e a g a
  | f a b cis d2~
  %40
  | d16 d c b c4 d~
  | d2 r8 d
  | c e16 d c8 c16 b a8 a32 b c16
  | b8 a16 b c8 c16 d e8 e16 fis
  | g2.~
  %45
  | g8 a16 g f8 f16 e d8 d16 c
  | b2.~
  | b8 a'16 g f8 f16 e d8 d16 c
  | d8 d16 f e8 e16 d c8 c16 b
  | c2 r16 d, a' c
  %50
  | b2 r16 c, g' bes
  | a f a c f8 r r16 g, d' f
  | e g, c e g8 r r16 a, e' g
  | f2.~\trill
  | f2.~\trill
  %55
  | f4\trill f16 e d c b d a d
  | gis, b c e d c b a gis! b f! b
  | e, gis a c fis, a b d gis,! b c e
  | a, b c e b c d f e d c b
  | c e a gis a d, e f gis, b e d
  %60
  | c e gis a r d, f a r d, f gis!
  | a4 a8 gis a4
  | r16 d, e b' r c, e a r a, c dis
  | e4 e8 dis e4
  | e2.~
  %65
  | e8 cis16 d e8 e16 f g8 g16 a
  | \appoggiatura { g32 a } bes4 bes8 a a g
  | g f g f e d
  | e4 r8 e a16 g a8
  | d,4 r16 d e f g e f g
  %70
  | cis,2.
  | d2.
  | c!8. d16 e4 fis
  | g4~ g8 g16 fis g4~
  | g8 e16 f! g8 g16 f e8 a16 g
  %75
  | f8 a16 g f8 f16 e f g a f
  | d2 r16 gis, b d
  | c a' g! f e d c b a gis fis e
  | a2 r16 dis, fis a
  | g e' d c b a g fis e d! cis b
  %80
  | ais'2.\trill
  | b!2.
  | r8 e16 g fis8 fis16 e d8 d16 cis
  | d8 b16 cis d8 d16 e fis8 fis16 gis
  | a!4 r8 a16 gis a8 b16 a
  %85
  | g4 r8 g16 fis g8 a16 g
  | fis4 r8 fis16 e f8 g16 f
  | e2 e4
  | dis d2
  | cis4 c2
  %90
  | b4 c cis
  | d! d8 cis d4
  | fis, g gis
  | a a8[ gis] a8[ b!]
  | c4 b a
  %95
  | g a8 g fis e
  | fis16 g a b c a b c r c b a
  | g2 r16 a, e' g
  | fis2 r16 g, d' f
  | e c e g c8 r r16 d, a' c
  %100
  | b d, g b d8 r r16 e, b' d
  | c2.~\trill
  | c2.~\trill
  | c16 a bes! d c bes a g fis a ees a
  | d, fis g bes e, g a c fis, a bes d
  %105
  | g, bes c d a c d ees d c bes a
  | bes d g fis g c, d ees fis, ees' d c
  | bes d g8 r16 c, d ees f aes g f
  | ees8 g16 f ees8 ees16 d ees4
  | ees,16 g c8 r16 g a bes c ees d c
  %110
  | bes8 d16 c bes8 bes16 a bes d g8
  | cis,2.\trill
  | d2.
  | bes4 a g
  | f g8 f e d
  %115
  | e e16 f g a bes g r bes a g
  | fis d fis g a fis a bes c a b c
  | gis8 b16 c d8 d16 e f8 e16 d
  | c4 r16 g a bes! c ees d c
  | bes4 r16 f g a bes d c bes
  %120
  | a4 r16 a b cis d f e d
  | cis d e f g f e f g bes! a g
  | f4 r16 c d e f a g f
  | e4 r16 bes c d ees g f ees
  | d4 r16 a bes c d f! ees d
  %125
  | c4 r16 g a bes c a d a
  | bes8 d g g16 fis g4~
  | g8 c, f8 f16 e f4~
  | f8 bes, c d ees4~
  | ees8 a, b c d4~
  %130
  | d8 g, a bes c4~
  | c16 ees d c bes a g a bes d c bes
  | a d c bes a d g, cis a d a g
  | f g f e d f e d g a g f
  | e g f g a bes! a g fis g fis e
  %135
  | ees'4 d c
  | bes c8 bes a g
  | cis4 d e!~
  | e d2
  | f4 e d
  %140
  | cis16 r16 r8 r4 r16 b d f
  | e c' b a g f e d c b a g
  | c2 r16 fis, a c
  | bes4 b4\rest b4\rest
  | \override MultiMeasureRest.staff-position = #0
    R1*3/4
  %145
  | r8 a16 c! bes!8 bes16 a g8 g16 f
  | g8 g16 bes a8 a16 g f8 f16 e
  | f4 r16 c d e f a g f
  | e4 r16 bes c d ees g f ees
  | d4 r16 d e fis g bes a g
  %150
  | fis g a bes c bes a bes c ees d c
  | bes4 r16 f g a bes d c bes
  | a4 r16 a b cis d f e d
  | cis!16 r16 r8 r4 r4
  | a'4 bes b
  %155
  | c c8 b c4
  | e, f fis
  | g g8[ fis] g[ a]
  | \stemDown bes4 a g
  | f \stemUp g8 f e d
  %160
  | e16 r r8 a,32[ b! cis d e f g e] cis!8. d16
  | d2.^\fermata

  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Tenor = \context Voice = "two"  \relative c'' {
  %1
  \voiceTwo
  | \change Staff = "lower"
    \override MultiMeasureRest.staff-position = #0
    R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %5
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | \change Staff = "upper"
    d,8. e16 f4 fis
  %10
  | g g8 fis g4
  | b,! c cis
  | d4 d8[ cis d e]
  | f4 e d
  | c4 d8[ c
    \change Staff = "lower"
    b! a]
  %15
  | \stemUp b!4 e, gis
  | a8[ a16 b!] c8[ c16 d]
    \change Staff = "upper"
    \stemDown
    e8[ e16 fis]
  | g!2.~
  | g8[ g,16 a] bes8[ bes16 c] d8[ d16 e!]
  | f2.
  %20
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %25
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %30
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %35
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %40

  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Bass = \context Voice = "three"  \relative c' {
  %1
  \voiceFour
  | \override MultiMeasureRest.staff-position = #-4
    R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %5
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %10
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %15
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | a4 bes b!
  %20
  | c c8 b c4
  | e, f fis
  | g g8 fis g a
  | bes!4 a g
  | f g8 f e d
  %25
  | e4 a, cis
  | d \stemUp d, \stemNeutral d'
  | e8 g16 f e8 e16 d c8 c16 bes!
  | a8 c'16 bes a8 a16 g f8 f16 e
  | d8 f16 e d8 d16 c bes8 bes16 a
  %30
  | g8 bes'16 a g8 g16 f e8 e16 d
  | c4 r8 f g a
  | bes a bes c d c
  | bes a g a bes4~
  | bes8 bes a g f e
  %35
  | f8 bes, \stemDown c2 \stemNeutral
  | f4~ f16 g f e d g f g
  | \stemDown c,4 r8 a d d, \stemNeutral
  | g d' g e a a,
  | d4 fis gis
  %40
  | a4~ a16 b a g fis b a b
  | e,4 r8 e gis e
  | a4 r a,
  | e' r r
  | r16 e f! g a8 a16 g f8 f16 e
  %45
  | d4 r r
  | gis2.
  | a2.~
  | a4 e e
  | a4 d16\rest e c a fis8 d\rest
  %50
  | g4 d16\rest d' b g e8 d\rest
  | f8 d\rest d4\rest d\rest
  | \stemDown c8 \stemNeutral d\rest d4\rest d\rest
  | d'2 d16[ f c f]
  | b,16 d e g f e d c b d a d
  %55
  | gis, b c e d c b a gis b fis b
  | e, gis a c b a gis fis e gis d gis
  | c, e fis a d, fis! gis b e, gis a c
  | fis, gis a c gis a b d c b a gis
  | a8 e f d e e,
  %60
  | a2.~
  | a8 a16 b c8 c16 d e8 e16 fis
  | gis4 a2
  | e8 e,16 fis g!8 g16 a b8 b32 cis d16
  | cis4^\prall cis'2
  %65
  | d2 d4
  | d8 e,16 f g8 g16 a b8 b16 cis
  | d8 d16 c bes8 bes16 a g8 g16 f
  | g8 g16 bes a8 a16 g f8 f16 e
  | fis8 fis16 a g8 g16 f e8 e16 d
  %70
  | e4 r8 e^. a^. a,^.
  | d a' d c bes4\trill
  | a4 r8 a^. d^. d,^.
  | g g, bes d g f
  | e4 r8 e^. a^. a,^.
  %75
  | d d, f a d e
  | f fis g4 gis
  | a a8 gis a4
  | c,8 cis d4 dis
  | e e8 dis e fis
  %80
  | g^( fis) fis^( e) e^( d)
  | d cis e d cis b
  | cis b ais cis fis, ais
  | b4 r8 b16 cis d8 d16 e
  | fis4 d\rest d\rest
  %85
  | d8\rest e16 fis g e g a b e, b' cis
  | d8 d,16 e fis d fis g! a d, a' b
  | c! d e d c e c b a c a g
  | fis e' dis cis b d b a gis b gis fis!
  | e d' cis b a c a g fis a fis e
  %90
  | dis4 %{1-%}  e8 dis e ais,
  | << { b4_~ b2_~ } \\ {} >>
  | << { b2._~ } \\ {} >>
  | << { b2._~ } \\ {} >>
  | << {
      \stemDown <b dis fis>8 s8 s2
    } \\ {
      \stemUp
      b'8 b16 a g8 g16 fis! e8 e16 dis!
    } >>
    \stemNeutral
  %95
  | e8 e16 d c8 c16 b a8 a16 g
  | a4~a16 fis g a b8 b,
  | \stemDown e4 r16 b'' g e cis8 r
  | d4 r16 a' fis d b8 r
  | c4 r r
  %100
  | g'8 b,8\rest b4\rest b\rest
  | a'8 d,\rest d16\rest d'[ c b!] a[ c g c]
  | fis,16 a bes d c bes a g fis a e a
  | d, fis g bes a g fis e d fis c fis
  | bes, d e! g c,e fis a d, fis g bes
  %105
  | e,! g a bes fis a bes c bes a g fis
  | \stemNeutral g8 d ees c d d,
  | g2.~
  | g2.~
  | g2.~
  %110
  | g2.
  | g8 bes'16 a g8 g16 f e a g a
  | d, a' d c bes c d bes g a bes g
  | cis,4 r8 e a, cis!
  | d16 e f e bes8 a g f
  %115
  | g8 g'16 f e8 g a a,
  | d2.~
  | d4 b\rest gis'
  | a8 bes!16 c d8 c bes a
  | g a16 bes c8 bes a g
  %120
  | f16 e d c b cis d e f a g f
  | e d cis b a b cis d e g f e
  | d8 e16 f g8^. f^. e^. d^.
  | c! d16 e f8^. ees!^. d^. c^.
  | bes16 a g f e! fis g a bes d c bes
  %125
  | a8 bes16 c d e fis g a fis e d
  | g d g a bes g bes c d g, d' e!
  | f!8 f,16 g a f a bes c f, c' d
  | ees f g f ees g ees d c ees c bes
  | a c bes c d f! d c b d b a
  %130
  | g b a b c ees c bes a c a g
  | fis8 d g fis g g,
  | << { d'2._~ } \\ {} >>
  | << { d2._~ } \\ {} >>
  | << { d2._~ } \\ {} >>
  %135
  | << {
      \stemDown <d fis a>8 s s2
    } \\ {
      \stemUp d'8 d16 c bes8 bes16 a g8 g16 fis!
    } >>
    \stemNeutral
  | g8 g16 f ees8 ees16 d c8 c16 bes
  | a8 a'16 g f8 f16 e d8 d16 cis
  | d8 d16 c bes8 bes16 a g8 g16 f
  | e8 e'16 d c8 c16 b a8 a16 gis
  %140
  | a4 bes b
  | c c8 b c4
  | e, f fis
  | g \stemDown g8 fis g a
  | \stemUp bes a a g g f
  %145
  | f e g f e d
  | e4 r16 e f g a g a8
  | \stemDown d,16 d' e f g8-. f-. e-. d-.
  | c8 d16 e f8-. ees-. d-. c-.
  | bes16 a g f e! fis g a bes d c bes
  %150
  | \stemUp a g fis e d e fis g a c bes a
  | g8 a16 bes c8-. bes-. a-. g-.
  | f16 e' d cis b cis d e f a g f
  | e d cis b a b cis d e g f e
  | d4~ d16 e f e d e f gis
  %155
  | a,4~ a2~
  | a2.~
  | a2.
  | \stemDown
    <a' a'>8 <a a'>16 <g g'> <f f'>8 <f f'>16 <e e'> <d d'>8 <d d'>16 <cis cis'>
  | <d d'>8 <d d'>16 <c c'> <bes bes'>8 <bes bes'>16 <a a'> <g g'>8 <g g'>16 <f f'>
  %160
  | g16 r r8 r4 r8 a
  | d4~ <d, d'>2_\fermata
  \fine
% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \context Staff = "upper" <<
      \Global
      \clef treble
      \Soprano
      \Tenor
    >>
    \context Staff = "lower" <<
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 903"
    %subtitle = ""
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Fugue"
      %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
