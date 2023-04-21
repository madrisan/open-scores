Global = {
  \key e \minor
  \time 3/8
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
    \partial 16 b16^\markup {
        \tiny\italic
        \concat { "(" \dynamic f " sempre)" }
    }
  %1
  | b16 e,8 dis e16
  | fis c'8 b a16~
  | a g8 fis32 e fis16 a~
  | a( dis,) r
    \set subdivideBeams = ##t b'32 cis dis e fis16~  \set subdivideBeams = ##f
  %5
  | fis16 e8 g b,16~
  | b16 c! r
    \set subdivideBeams = ##t a32 b c d! e16~ \set subdivideBeams = ##f
  | e16 d8 a' c,16~
  | c16( b) r e32 fis g16 b,16~
  | b16( a) r dis32 e fis16 a,~
  %10
  | a16( g)
    \set subdivideBeams = ##t r f'32 e d! c b16~ \set subdivideBeams = ##f
  | b16( c)
    \set subdivideBeams = ##t r g'32 fis! e dis cis16~ \set subdivideBeams = ##f
  | cis16( dis)
    \set subdivideBeams = ##t r c'!32 b a g fis16~ \set subdivideBeams = ##f
  | fis16 g8 dis e16~
  | e16 b8 c gis16~
  %15
  | gis16 a8 e f16
  | c'32 b a16. g32 fis!16. e'32 dis16~
  | \set subdivideBeams = ##t
    dis32 e fis g a b c8 dis,16~
    \set subdivideBeams = ##f
  | dis16( e) r e,8 fis16
  | g32 b e8 g, fis16~
  %20
  | fis32 e fis16. g32 a16. b32 c!16~
  | c32 e a8 c, b16~
  | b32 a b16. c32 d16. e32 f16~
  | f32( e f8) a,( g16)
  | e'32( d e8) g,( fis!16)
  %25
  | d'32( c d8) fis,( e16)
  | c'32( b c8) e,( d16)
  | b'32( a b8) e g,16
  | \set subdivideBeams = ##t fis32\prall( e d8) d32 e fis g a b \set subdivideBeams = ##f
  | c!32[ a' fis d] c[ a' fis d ] c[ a' fis d]
  %30
  | b32 [g' d b] g [d' b g] fis[ g a b]
  | c32 [a' fis d] c[ a' fis d] c[ a' fis d]
  | b32 [g' d b] g[ d' b g] fis[ g a b]
  | cis32[ bes a g] e[ g a bes] cis[ bes a g]
  | c!32[ a g fis!] ees[ fis g a] c[ a g fis]
  %35
  | bes32[ g fis e!] cis[ e fis g] bes[ g fis e]
  | cis'32[ bes a g] ees'[ c bes! a] fis'![ ees d c]
  | g'32 fis g8 b!16 d, fis
  | g8 r16
    \set subdivideBeams = ##t b32 a g fis e!16~ \set subdivideBeams = ##f
  | e32( f) d16.( e32) c16.( d32) b16~
  %40
  | b32 c a16 r
    \set subdivideBeams = ##t a32 b c b a16 \set subdivideBeams = ##f
  | fis'32 a, c16. b32 a16. g32 fis16
  | g32( fis e16)
    \set subdivideBeams = ##t r ais32 b cis d! e16~ \set subdivideBeams = ##f
  | e32 fis g16. fis32 e16. d32 cis16
  | d32 e fis16. e32 d16. cis32 b16
  %45
  | cis32 d e16. d32 cis16. b32 ais16
  | \set subdivideBeams = ##t b32 cis d8 e32 fis g fis g16 \set subdivideBeams = ##f
  | ais,32[ g' fis e ] b [ fis' e d] cis[ e d cis]
  | d32[ b ais gis] fis[ b cis d] e,[ ais b cis]
  | d,32[ fis b16] ~ b32[ cis b a!] ~ a[ b a g]~
  %50
  | g32[ a g fis] ~ fis[ g fis e] ~ e[ fis e d]~
  | d32( g) c,!16.( g'32) b,16.( g'32) ais,16~
  | ais8 \bottom e32[ \top \clef bass g ais cis]
    \clef treble e[ \bottom \clef treble fis ais cis]
  | d[ \top eis gis b] r8 \stemUp <cis,, e fis ais>8_.
  | <b dis fis b>4_- r16
  }
  \break
  \repeat volta 2 {
    \partial 16 \stemNeutral fis''16
  %55
  | fis16 b8 a! c!16~
  | c16 dis,8 fis a,16~
  | a16 c8 b a16~
  | a32 fis g16
    \set subdivideBeams = ##t r b32 a g fis e16~ \set subdivideBeams = ##f
  | e32 gis a16. b32 c16. d32 e16~
  %60
  | e32 cis d16
    \set subdivideBeams = ##t r a32 g f e d16~ \set subdivideBeams = ##f
  | d32 fis! g16. a32 b16. c32 d16~
  | d32 b c16 \set subdivideBeams = ##t r c32 d e f g16~ \set subdivideBeams = ##f
  | g32[ a g cis,] g'[ a g cis,] g'[ a g cis,]
  | f[ g f d] f[ g f d] f[ g f d]
  %65
  | e[ f e d] gis[ a gis d] b'[ c b d,]
  | e c a'16
    \set subdivideBeams = ##t
    r bes,32 a g f e16~
  | e32 f d16 r c'32 b a g fis16~
  | fis32 gis e16 r f'32 e d! c b16^~
    \set subdivideBeams = ##f
  | b c8 gis a16~
  %70
  | a e8 f cis16~
  | cis d8 a bes16
  | f'32 e d16. c32 b!16. a'32 gis16~
  | \set subdivideBeams = ##t
    gis32 a b c d e f8 gis,16~
  | gis( a) r c'32 b a g fis! e
    \set subdivideBeams = ##f
  %75
  | fis[ a fis e] dis[ fis c! b] a[ fis' b, a]
  | g[ e' b a] g[ b g fis] e[ g b d]
  | cis[ e cis b] ais[ cis g! fis] e[ cis' fis, e]
  | dis[ b' fis e] dis[ fis dis cis] b8~
  | b16 b'8 e, fis16~
  %80
  | fis c'!8 b a16~
  | a g8 fis32 e fis16 a~
  | a( dis,) r dis'32 e fis16 a,~
  | a g r gis'32 a b16 d,!~
  | d c r cis32 d e16 g,~
  %85
  | g f r f'32 g a16 c,!~
  | c b r b32 c d16 f,
  | e32 f g16. f32 e16. d32 c16
  | d32 e f16. e32 d16. c32 b16
  | \set subdivideBeams = ##t
    c32 d e8 f32 g a b c a
    \set subdivideBeams = ##f
  %90
  | f32[ d' b g] f[ d' b g] f[ d' b g]
  | e32[ c' g e] c[ g' e c] b[ c d e]
  | f32[ d' b g] f[ d' b g] f[ d' b g]
  | e32[ c' g e] c[ g' e c] b[ c d e]
  | fis!32 [ ees d c ] a [ c d ees] fis [ ees d c ]
  %95
  | f32 [ d c b ] aes [ b c d ] f [ d c b ]
  | ees32 [ c b a!] fis![ a b c ] ees [ c b a ]
  | fis'!32[ ees d c ] aes'[ f ees! d ] b'![ aes! g f!]
  | c'32 b c8 e!16 g, b
  | c8
    \set subdivideBeams = ##t
    r16 e32 d c b a16~
    \set subdivideBeams = ##f
  %100
  | a32( bes) g16.( a32) f!16.( g32) e16~
  | e32( f d16)
    \set subdivideBeams = ##t
    r d'32 e f e d16
    \set subdivideBeams = ##f
  | b'32 e, f16. e32 d16. c32 b16
  | c32 b a16
    \set subdivideBeams = ##t
    r dis32 e fis! g a16~
    \set subdivideBeams = ##f
  | a32 b c16. b32 a16. g32 fis16
  %105
  | g32( fis g8) b,( a16)
  | fis'32( e fis8) a,( g16)
  | e'32( dis e8) g,( fis16)
  | dis'32[ b c b] e[ b c b] fis'[ b, c b]
  | g'32[ e dis cis] b[ e fis g] dis[ fis g a]
  %110
  | g[ b e,16~] e32[ fis e d!~] d[ e d c~]
  | c[ d c b]~ b[ c b a]~ a[ b a g]~
  | g c f,16.( c'32) e,16.( c'32) dis,16~
  | dis8 s4
  | s4.
  %115
  | b''8 r <fis, a b dis>_.
  | <e g b e>4_- r16
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieDown
  \repeat volta 2 {
    \partial 16 r16
  %1
  | e8_\markup {
      \tiny\italic
      \concat { "(sempre " \dynamic p " e legato)" }
    } g c
  | dis, fis b
  | e, a c,
  | b b' a
  %5
  | g b e
  | a, c e
  | fis, a d
  | g, b e
  | fis, a dis
  %10
  | e, g gis
  | a ais fis
  | b b, dis
  | e fis g
  | c, d e
  %15
  | f g a
  | dis, b' a
  | g e b
  | e g b
  | e d! cis
  %20
  | d d, fis
  | a g fis
  | g g, b
  | d c b
  | c b a
  %25
  | b a g
  | a g fis
  | g c cis
  | d fis a
  | \tieUp d_\markup { \tiny\italic "non legato" } d, d'^-~
  %30
  | d d, d'^-~
  | d d, d'^-~
  | d d, d'^-~
  | d d, d'^-~
  | d d, d'^-~
  %35
  | d d, d'^-~
  | d fis, d
  | b! g d'
  | g,^- g' b
  | gis_\markup { \tiny\italic "legato (come prima)" } e' e,
  %40
  | a fis! e
  | dis b b'
  | e, cis b
  | ais8 fis fis'
  | b, a'! g
  %45
  | a, g' fis
  | g, fis' e
  | fis,_- gis' ais
  | fis,^- b' cis
  | fis,,^- cis'' b
  | a 8 g fis
  %50
  | e 8 d cis
  | fis32[ fis, ais cis] s4
  | f'8\rest \clef bass fis^.[ fis,^.]
  | b,4-- r16
  }
  \repeat volta 2 {
    \partial 16 \stemNeutral r16
  %55
  | b8_\markup { \tiny\italic "(sempre legato)" } dis fis
  | a c dis
  | fis dis b
  | e, e' d!
  | c a g!
  %60
  | f d' c!
  | b g f
  | e c' b!
  | a f! e
  | d bes' a
  %65
  | gis e d
  | c cis a
  | d dis b
  | e e, gis
  | a b c
  %70
  | f,! g a
  | bes c! d
  | gis, e' d
  | c a e
  | a a' c
  %75
  | dis fis b,
  | e e, g
  | ais cis fis,
  | <b, b'> b dis
  | e 8 g c!
  %80
  | dis, fis b
  | e, a c,
  | b b' dis,
  | e e, gis
  | a a' cis,
  %85
  | d d, f!
  | g g' b,
  | c b' a
  | b, a' g
  | a, g' f
  %90
  | \tieDown g, g' g,~_-
  | g g' g,~_-
  | g g' g,~_-
  | g g' g,~_-
  | g g' g,~_-
  %95
  | g g' g,~_-
  | g g' g,~_-
  | g d' f,!
  | e! f! g
  | c,_- c' e
  %100
  | cis a a'
  | d, b'! a
  | gis e e'
  | a, fis! e
  | dis fis b,
  %105
  | e d'! c
  | d, c' b
  | c, b' a
  | b,^- cis'! dis
  | b,^- e' fis
  %110
  | b,,^- fis'' e
  | d c b
  | a 8 g fis!
  | b32[ b, cis dis] e[ \top \clef bass fis! g a] \bottom \clef treble b[ cis dis e]
  | fis[ \top \clef treble g a b] c![ \bottom b cis dis] e[ \top fis g a]
  %115
  | \bottom \clef bass r8 g,,,_. b_.
  | e,4_- r16
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    %opus = "BWV 830"
    %subtitle = "Toccata"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Corrente"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 60
  }
}
