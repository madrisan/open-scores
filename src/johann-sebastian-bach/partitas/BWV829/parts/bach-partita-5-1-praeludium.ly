Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | d16 c b a g8 r <b, d> r
  | <c e> r <b d> r r4
  | \stemUp d'16 c b a g fis e d \staffLower\stemDown c16 b a g
  | \stemUp <fis a c>8 r <d g b> \stemNeutral r r4
  %5
  | s16 \stemUp b' c d \staffUpper\stemDown e fis g a \stemUp b c d e
  | s4 \stemDown d,16 e fis g \stemUp a b c d
  | s4 \stemDown c,16 d e fis \stemUp g a b c
  | r16 c[ a fis d] s8. s4
  | r16 b' g fis d[ b] s4.
  %10
  | r16 b'[ g e] cis s8. s4
  | r16 a' fis e s2
  | r16 a fis d s2
  | r16 g e d s2
  | r16 g e cis s2
  %15
  | s4 d16[ e f d] s f e d
  | \stemDown cis[ d e] \stemUp f g[ a bes g] f'[ e d cis]
  | a'[ g fis e] d8 e\rest <fis, a> d'\rest
  | <g, b> d'\rest <fis, a> d'\rest d4\rest
  | \stemDown
    %\set subdivideBeams = ##t
    %\set baseMoment = #(ly:make-moment 1/4)
    a'16 g fis e d cis b a g fis e d
    %\set subdivideBeams = ##f
  %20
  | \stemUp <cis e g>8 r <a d fis> r r4
  | \stemNeutral r16 fis' e fis g fis e fis g e a b
  | cis g fis g a g fis g a fis b cis
  | d a g a b a g a b g cis d
  | e b a b cis b a b cis a d e
  %25
  | fis g a8 r fis g a
  | b16 a b8 cis, e fis g
  | a16 g a8 b, fis' b a
  | g16 fis g8 a, e' a g
  | fis16 e d cis d fis a, cis d fis a, cis
  %30
  | f e d cis d f gis, cis d f a, d
  | f e d cis d f gis, cis d f e d
  | cis s4 cis,16[ e g] cis[ g fis e]
  | <fis a d>8 s8. d16 fis a d[ a g fis]
  | \stemUp <g cis e>8 s8. e16 g cis e[ cis b a~]
  %35
  | <a d f>8 s \once\stemDown d,16 f[ a d] f[ d c b~]
  | <b d gis>8 s4 \stemDown d,16[ gis b] \stemUp d[ f gis]
  | \stemNeutral <cis, e a>8 a16 b cis d e8~ e g,^~
  | g fis16 gis ais b cis d e d cis e
  | d8 r g4\rest \stemUp fis8 g\rest
  %40
  | a g\rest g4\rest dis8 g\rest
  | b16 a g fis e8 g\rest <g, b> f'\rest
  | <a, c> d\rest <g, b> d'\rest d4\rest
  | \stemNeutral b'16 a g fis e d c b a g fis e
  | <dis fis a>8 r <b e g> r r4
  %45
  | s4 \stemDown c16 d e fis \stemUp g a b c
  | s4 \stemDown d,16 e fis g \stemUp a b c d
  | s4 \stemDown e,16 fis g a \stemUp b c d e
  | s4 \stemDown f,16 g a b \stemUp c d e f
  | \stemNeutral dis a' fis dis b2~
  %50
  | b16 a, b cis dis e fis g a g fis a
  | g fis g a b c d e f e d f
  | e d e fis gis a b c d c b d
  | c b a gis a g f e d c b a
  | \stemUp g'\rest d c b c b a g! f e d c
  %55
  | r f e d e d \staffLower c b a gis! fis e
  | d'\rest b a gis a f e d c b a gis
  | \staffUpper\stemNeutral r f''' e d e d c b a d e f
  | b, d e f g, f' e d c d e c
  | a d c b c b a g f b c d
  %60
  | g, b c d e, d' c b a b c a
  | f8 b16 c d4~ d16 g, f e
  | f8 b16 c d4~ d16 c b d
  | g, c b a g f e d c e d c
  | b c d e f g a b c d e f
  %65
  | g f e d c8 r <g e> r
  | <f a> r <e g> r r4
  | g'16 f e d c b a g f e d c
  | <b d f>8 r <g c e> r r4
  | r8 c'8 e c a fis~
  %70
  | fis16 b d b fis b d b e, b' d b
  | c8 a' c a fis d~
  | d16 g b g d g b g c, b' a g
  | fis8 d,16 e fis g a8~ a c,~
  | c16 bes c d e fis g a bes a g bes
  %75
  | a g fis g a bes c8~ c ees,~
  | ees16 d e fis g a bes c d c bes d
  | c bes a bes c d ees8~ ees g,~
  | g16 fis e d e fis g a b c d ees
  | f8 g, r b c d
  %80
  | e16 d e8 fis, a b c
  | d16 fis, e fis g fis e fis g e a b
  | c e, d e fis e d e fis d g a
  | b a g fis g b d, fis g b d, fis
  | bes a g fis g bes cis, fis g bes d, fis
  %85
  | bes a g fis g bes cis, fis g bes a g
  | <a d fis>4\fermata r16 fis' g a g fis e d
  | d'8 fis, g b, a fis'
  | g,16 g' fis g e g d g c, g' b, g'
  | a, fis' e fis d fis c fis b, fis' a, c
  %90
  | f g, fis! g a g b g c g d' g,
  | e' fis, e fis g fis a fis b fis c' fis,
  | d' e, d e fis e g e a e b' e,
  | c'4~ c16 d, a' c b a g fis
  | \stemUp e d \staffLower c b a g fis e d c b a
  %95
  | g2. \staffUpper
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemUp
  \override Rest.staff-position = #0
  %1
  | s2.*40
  %41
  | \shiftOn e8 b\rest s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*38
  | b16 cis d e \staffUpper\stemDown\tieDown fis g a8~ a c,~
  %40
  | c b16 cis dis e fis g a g fis a
  | <e g>8 b\rest b4\rest e8 b\rest
  | dis b\rest e b\rest b4\rest
  | \staffLower
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r4 r g8 r
  | g r g r r4
  | s2.
  | <g, d'>8 d8\rest <g, g'> d'\rest d4\rest
  %5
  | g'16 s8. s2
  | fis16 \stemUp a[ b c] s2
  | \stemDown e,16 \stemUp g[ a b] s2
  | \stemDown d,16 s4 a'16 fis d \stemUp d, \stemDown c''[ b a]
  | g s s4 g16[ d] g,[ fis' e d]
  %10
  | cis s4 g'16[ e cis] \once\stemUp cis, b''[ a g]
  | fis s8. \stemUp cis'16[ a] \stemDown fis[ cis] fis, e' d cis]
  | b s8. \once\stemUp b'16 fis[ d b] \once\stemUp b, a''[ g fis]
  | e s8. \stemUp b'16 g \stemDown e[ b] e, d' cis b]
  | a s8. \once\stemUp a'16 e[ cis a] \once\stemUp a, g''[ fis e]
  %15
  | d \stemUp a'[ b cis] s4 \stemDown gis16 s8.
  | s2.
  | \staffUpper
    b4\rest b\rest d8 b\rest
  | d b\rest d b\rest b4\rest
  | \staffLower s2.
  %20
  | \stemNeutral <d, a'>8 r <d, d'> r r4
  | g8 g' b g e cis
  | a a' cis a fis d
  | b b' d b g e
  | cis cis' e cis a fis
  %25
  | d16 d' cis d e d cis d b d b a
  | g d' cis d e d cis d a d a g
  | fis d' cis d e d cis d g, d' g, fis
  | e d' cis d e d cis d fis, d' fis, e
  | d8 a' fis d cis a'
  %30
  | b, gis' f d a a'
  | gis, b' f d gis, b'
  | a16 a, cis e a s8. s4
  | r16 a, d fis a s8. s4
  | r16 a, e' a cis s8. s4
  %35
  | r16 a, d a' s2
  | r16 a, b d gis[ b] s4.
  | a,,8 r r4 <a'' cis>8 r
  | <ais cis> r r4 <fis ais!>8 r
  | \stemDown b r r4 e,8 r
  %40
  | dis r r4 b'8 r
  | s2.*3
  | \stemNeutral <e, b'>8 r <e, e'> r r4
  %45
  | \stemUp \once\stemDown e'16 g[ a b] s2
  | \once\stemDown fis16 a[ b c] s2
  | \once\stemDown g16 b[ c d] s2
  | \once\stemDown a16 c[ d e] s2
  | \stemNeutral\tieNeutral r8 b,16 cis dis e fis g a g fis a
  %50
  | g4~ g16 fis e d cis e dis fis
  | e4~ e16 d c b a c b d
  | c4~ c16 b a g fis a gis b
  | a r r8 a'16 r r8 r4
  | s2.
  %55
  | \stemDown b16 r r8 gis16 r b,8\rest a4\rest
  | d16 g,\rest g8\rest c16 e,\rest e8\rest d4\rest
  | \stemNeutral a'8 a' c a f d
  | g, g' b g e c
  | f, f' a f d b
  %60
  | e, e' g e c a
  | d,16 c d e f g a b c b a c
  | b a g a b c d e f e d f
  | e e, f g a b c d e d e f
  | g8 f16 e d c b a g f e d
  %65
  | c8 r r4 c''8 r
  | c r c r r4
  | s2.
  | <g c,>8 r <c, c,> r r4
  | c16 c' e c a c e c fis, c' e c
  %70
  | b,8 b' d b g e
  | a,16 a' c a fis a c a d, a' c a
  | g,8 g' b g e c
  | d r d, r \stemDown d' r
  | \repeat unfold 4 { d a\rest d, d\rest d' b\rest }
  %78
  | d b\rest e,4\rest e\rest
  | g16 g' fis! g a g fis g e g e d
  %80
  | c g' fis g a g fis g d g d c
  | \stemNeutral b8 g' b g e c
  | a fis' a fis d b
  | g d' b g fis d'
  | e, cis' bes g d d'
  %85
  | cis, e' bes g cis, e'
  | c,4\fermata r r
  | r16 b' c d c b a g d'8 d,
  | g g' r b e, g
  | g, c' r a d, fis
  %90
  | g,16 b' a b g b f b e, b' d, b'
  | c, a' g a fis a e a d, a' c, a'
  | b, g' fis g e g d g c, g' b, g'
  | a, c e g fis8 d g b,
  | \stemDown c a d4 d,
  %95
  | g,2.
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 829"
    title = \markup { "Praeambulum" }
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
