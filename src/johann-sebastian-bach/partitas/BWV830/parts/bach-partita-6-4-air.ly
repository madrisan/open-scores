Global = {
  \key e \minor
  \time 2/2
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
    \partial 2 { e8[ fis g a] }
  %1
  | b[ c d b] e[ g fis e]
  | dis[ cis b a] g4 e'
  | dis b' g8[ a] 4\mordent
  | b2 d,!8[ c! d b']
  %5
  | c,4 a' b, gis'^.
  | a8[( g! fis e)] d[( c b a)]
  | b4 g' a, fis'^.
  | g8[( fis e d)] c[( b c) a'^.]
  | b,[( a b) g'^.] a,[( g a) fis'^.]
  %10
  | g,[( fis g) e'^.] fis,[( e fis) dis'^.]
  | e,4 b'' <b, dis> <cis e>
  | <dis fis>2
  }
  \repeat volta 2 {
    \partial 2 { fis,4 c'~ }
  | c b~ b a~
  | a^( g8[ fis]) g4 e'~
  %15
  | e d~ d c~
  | c b8[ a] b4 g'
  | fis c'~ c8[^( b a g)]
  | fis4 c~ c8[ b] e4~
  | e8[ d c b] d[ c b a]
  %20
  | g2 b,8[ d] g4~
  | g( fis8[ e]) fis[ a] d4~
  | d( c8[ b]) c[ e] a4~
  | a4( g!8[ fis]) a[ g fis e]
  | dis[ fis b, a] g4 c'
  %25
  | fis,, b' e,, a'
  | d,, g' c,, fis'
  | b,, e' fis, dis'
  }
  \alternative {
    { \stemUp\slurDown\appoggiatura dis8 \stemDown e2 }
    {
      \set Timing.measureLength = #(ly:make-moment 2/4)
      e16[ b cis dis] e[ dis e fis] g8[ e c! a]
    }
  }
  | fis'[ d! b g] e'[ c a fis]
  | e'[ b g e] c'[ a fis dis]
  | e[ g b e] b[ e] g16[^( fis e dis])
  | e2\parenthesize\mordent
  \fine
}

Alto = \context Voice = "Two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \stemDown
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieDown
  \repeat volta 2 {
    \partial 2 { <e g b>4 r }
  %1
  | <d fis b> r <c e a> r
  | <b fis' b> r e8[ fis g a]
  | b8[ cis dis b] e[ g fis e]
  | dis[ cis b a] gis[ e fis gis]
  %5
  | a[ b c! a] d![ f! e d]
  | c[ b a g!] fis![ d e fis]
  | g[ a b g] c[ e d c]
  | b[ a g fis] e[ g fis e]
  | d[ fis e d] c[ e d c]
  %10
  | b[ d c b] a[ c b a]
  | g[ b a g] a[ g fis e]
  | b'4 b,
  }
  \repeat volta 2 {
    \partial 2 { b''8[ a g fis] }
  | a[ g fis e] dis[ cis dis b]
  | e[ e, g b] e[ d! c! b]
  %15
  | c[ b a g] fis[ e fis d]
  | g[ g, b d] g[ a b c]
  | d[ e fis d] g[ a b c]
  | \clef treble d[ e fis d] g[ fis g a]
  | b4 \clef bass e,, c d
  %20
  | g,8[ d e fis] g[ a b c]
  | d[ a b c] d[ e fis g]
  | a[ e fis gis] a[ b c d]
  | \clef treble e[ b cis dis] e[ fis g a]
  | b[ a g fis] \clef bass e[ c! b a]
  %25
  | d![ b a g] c[ a g fis]
  | b[ g fis e] a[ fis dis fis]
  | g[ e c a] b4 b,
  }
  \alternative {
    { e2 }
    { e4 r16 \clef treble b''[( cis dis]) e8[ g e c] }
  }
  | d![ fis d b] \clef bass c[ e c a]
  | b[ e b g] a[ c a fis]
  | g[ b g e] b'4 b,
  | e4 e,
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
    %opus = "BWV 830"
    %subtitle = "Toccata"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Air"
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
