Global = {
  \key d \major
  \time 3/8
  \include "../global.ly"
}

extendLaissezVibrer = #(define-music-function (parser location further) (number?)
#{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) -0.8)
#})

voiceOneOssia = \relative c' {
  \stopStaff
  \omit TupletBracket
  \partial 8 { s8 }
  %1
  | s4.*2
  | \startStaff
    \key d \major
    a'8[ b \tuplet 3/2 { cis32( b cis } d16)]
  | cis64[( d cis16.) b32( a) r16 cis d]
  | \stopStaff
    \override Staff.KeySignature.break-visibility = #all-invisible
    s4.*6
    \noBreak
  %11
  | s16 \startStaff s16 \tuplet 3/2 { cis32[( b cis } b8) a16]
  | \stopStaff
    s4.*10
  %22
  | \startStaff cis8[ ais64( b ais16.) b8~]
  | b16[ cis] \tuplet 3/2 { d32( cis d } cis8) b16
    \stopStaff
  | s4.*2
  %26
  | \startStaff
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    g'32[ a g a g a g a g a g a]
  | g[ a g a g a g a
    \shape #'((0.3 . 0.8) (0 . 1) (0 . 1) (0 . 0.8)) LaissezVibrerTie
    \extendLaissezVibrer #2
    g8\laissezVibrer] \stopStaff
  | s4.*11
  %39
  | s8. \startStaff s16 b,32( a g a
  | b8^.) d32( cis b cis
    d8~)
  | d16 \stopStaff s s4
  | s4.*3
  %45
  | s8. \startStaff s16 \tuplet 3/2 { cis32( b cis } d16^.)
  | cis64[( d cis16.) b32( a^.) r16 d8^.] \stopStaff
  | s4.*11
  %58
  | \startStaff d,16[( g]
    \set baseMoment = #(ly:make-moment 1/16)
    fis32 e \tuplet 3/2 { fis[ e fis] }
    \set baseMoment = #(ly:make-moment 1/8)
    e16 d_.)
  | d4.\fermata\fine

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
  | cis8[\prall \once\stemUp\once\slurDown \appoggiatura b8 a cis16 d]
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
  | b16[ cis] cis8.[\prall b16]
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
  <<
  \new Staff = "ossia" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
  }
  { \voiceOneOssia }
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
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 774"
    title = \markup { "Invention III " \char ##x00b7 " D-Dur" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
    }
  }
  \midi {
    \tempo 4. = 60
  }
}
