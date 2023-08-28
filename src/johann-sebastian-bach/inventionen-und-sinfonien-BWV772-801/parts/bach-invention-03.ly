Global = {
  \key d \major
  \time 3/8
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \partial 8 { d16[ e] }
  %1
  | fis16[ e( g fis e d)]
  | a'[ g( fis e fis d)]
  | a'8[ b cis16\mordent d]
  | cis8[\prall a cis16 d]
  %5
  | e[ cis( fis d cis b)]
  | e[ cis( d b a gis)]
  | e'[ cis( fis d cis b)]
  | e[ cis( d b a gis)]
  | cis[ b( d cis b a)]
  %10
  | fis'8[ gis, a]~
  | a16[ b] b8.[\parenthesize\prall a16]
  | a4 r8
  | r e' a~
  | a16[ b,( cis dis e fis)]
  %15
  | g[ fis( a g fis e)]
  | b'8[ b,] r
  | r fis[ b]~
  | b16[ ais b cis d e]
  | fis[ e( g fis e d)]
  %20
  | e[ d( fis e d cis)]
  | d[ cis( e d cis b)]
  | cis8[ ais\prall b]~
  | b16[ cis] cis8.[\prall b16]~
  | b16[ fis( gis ais b cis)]
  %25
  | d[( cis e d cis b)]
  | g'4.~\parenthesize\trill
  | g4.~
  | g16[ e,( fis gis a b)]
  | cis[ b( d cis b a)]
  %30
  | fis'4.~\parenthesize\trill
  | fis~
  | fis16[ b,( e d cis b)]
  | cis[-. b( d cis b a)]
  | gis8[\prall e a16 b]
  %35
  | cis[ b( d cis b a)]
  | fis'8.[ gis,16 a gis]
  | a[ d b8.\parenthesize\prall a16]
  | a8.[ cis16 d e]
  | fis,8[ g a\reverseturn ]
  %40
  | b[ cis\reverseturn d]~
  | d16[ cis( e d cis d)]
  | e[( d cis b] a[ g)]
  | fis[ e( g fis e d)]
  | a'[( g fis e fis d)]
  %45
  | a'8[ b cis16\mordent d]
  | cis8[\prall \once\stemUp \acciaccatura b a d]
  | d[ d, d']
  | d[ d, d']
  | d[ d, d']
  %50
  | d[ d,] d'16[ e]
  | fis[ e( g fis e d)]
  | b'8[ cis, d]~
  | d16[ e] e8.[\parenthesize\prall d16]
  | d8[ d, g]~
  %55
  | g16[ a, b cis] d[ e]
  | fis[ e( g fis e d)]
  | b'8.[ cis,16 d cis]
  | d[ g] e8.[\parenthesize\prall d16]
  | d4.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \partial 8 { r8 }
  %1
  | R1*3/8
  | r8 r d16[ e]
  | fis[ e( g fis e d)]
  | a'[ g( fis e fis d)]
  %5
  | a'8[ a, a']
  | a[ a, a']
  | a[ a, a']
  | a[ a, a']
  | a[ b cis]
  %10
  | d16[ cis( e d cis b)]
  | cis[ d e8 e,]
  | a16[ e( fis gis a b)]
  | cis[ b( d cis b a)]
  | e'8[ e,] r
  %15
  | r b'[ e]~
  | e16[ fis, gis ais b cis]
  | d[ cis e d cis b]
  | fis'8[ fis, \clef "treble" e']
  | d[ b'16 ais b8]
  %20
  | cis,[ ais'16 gis ais8]
  | b16[ a!( g! fis e d)]
  | e[ d( fis e d cis)]
  | d[ e fis8 fis,] \clef "bass"
  | b[ fis d]
  %25
  | b4 r8
  | r16 b[( cis dis e fis)]
  | g[ fis( a g fis e)]
  | a4.~
  | a~
  %30
  | a16[ a,( b cis d e)]
  | fis[( e g fis e d)]
  | gis8.[ e16 fis gis]
  | a[ gis( fis e d fis)]
  | e[ d( cis b cis a)]
  %35
  | a'8[ fis cis]
  | d16[ cis( e d cis b)]
  | cis[ d e8 e,]
  | a16[ cis( d e fis g)]
  | a[ g( b a g fis)]
  %40
  | g[ fis( a g fis e)]
  | fis[ e( g fis e d)]
  | a'8[ a,] r
  | R1*3/8
  | r8 r d16[ e]
  %45
  | fis[ e( g fis e d)]
  | a'[ g( fis e fis d)]
  | a'[ fis( b g fis e)]
  | a[ fis( g e d cis)]
  | a'[ fis( b g fis e)]
  %50
  | a[ fis( g e d cis)]
  | d8[ e fis]
  | g16[ fis( a g fis e)]
  | fis[ g a8 a,]
  | b16[ a( c b a g)]
  %55
  | d'4.~
  | d16[ cis( b a g fis)]
  | g[ fis( a g fis e)]
  | fis[ g] a4
  | d,4.^\fermata
    \fine
}

\score {
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceTwo
      >>
    >>
  }
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 774"
    title = \markup { "Invention III" "(D-Dur)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
