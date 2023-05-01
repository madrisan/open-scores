Global = {
  \key e \minor
  \time 2/2
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
    \partial 2 { e16[ fis g8] b,8.[ g'16] }
  %1
  | a,8. g'16 fis4 c16[ b a8] fis'8.[ a,16]
  | \set tupletSpannerDuration = #(ly:make-moment 1 4)
    g8. b16 e,4~ \tuplet 3/2 { e8[ dis e] a8[ g fis] }
  | \omit TupletNumber
    \tuplet 3/2 { e 8[ dis e] b'[ g fis] e[ dis e] c'[ g fis] }
  | \tuplet 3/2 { e 8[ dis e] fis[ g a ] g[ fis g] a [ b c ] }
  %5
  | \tuplet 3/2 { b 8[ a b] c [ d! e ] d[ c d ] e [ fis g] }
  | \tuplet 3/2 { fis8[ g a] } d,4~ \tuplet 3/2 { d8[ c d] g[ fis e] }
  | \tuplet 3/2 { e 8[ d c] c [ b a ] a[ g fis] fis[ e d ] }
  | \tuplet 3/2 { d 8[ c b] b [ a g ] } g8.[ g'16] fis8.[ g16]
  | a,8.[ g'16] fis8.[ g16] b,8.[ g'16] fis8.[ g16]
  %10
  | c,8.[ g'16] fis8.[ g16] \tuplet 3/2 { d8[ e fis] fis[ g a] }
  | \tuplet 3/2 { a 8[ b c] d[ c b] a[ b g] d[ g fis] }
  | \alternative {
      { g2 }
      { g2 }
    }
  }
  \break
  \repeat volta 2 {
    \partial 2 { b16[ c d8] g,8. e'16 }
  | a8.[ cis,16] d4 \tuplet 3/2 { cis8 b a8 } g'8.[ e16]
  | fis8.[ a16] d,4~ \tuplet 3/2 { d8[ g d] b[ g fis] }
  %15
  | \tuplet 3/2 { g[ b d] f[ e d] e[ a e] cis[ a gis] }
  | \tuplet 3/2 { a8[ cis e] g[ fis e] fis[ b fis] dis[ b ais] }
  | \tuplet 3/2 { b8[ dis fis] a![ g fis] g[ fis e] d[ cis b] }
  | \tuplet 3/2 { ais8[ b cis] fis,[ gis ais] b[ ais b] e[ d cis] }
  | \tuplet 3/2 { b8[ ais b] fis'[ d cis] b[ ais b] g'[ d cis] }
  %20
  | \tuplet 3/2 { b8[ ais b] b'[ a! g] g[ fis e] e[ d cis] }
  | \tuplet 3/2 { cis8[ b ais] ais[ gis fis] fis[ e d] d\prall[ cis b] }
  | b4~ b16[ a'! b c!] d[ c b8] f'8.[ a,16]
  | gis8.[ b16] d4 \tuplet 3/2 { f,8[ e f] d'[ c b] }
  | \tuplet 3/2 { e,8[ dis e] c'[ b a] dis,[ e dis] c'![ b a] }
  %25
  | \tuplet 3/2 { g8[ fis g] b[ dis e] a,[ b a] g'![ fis e] }
  | \tuplet 3/2 { dis8[ e fis] } b,4 e16[ fis g8] b,8.[ g'16]
  | a,8.[ g'16] fis4 d16[ c b8] f'8.[ g,16]
  | d'8.[ f16] e4~ e8.[ e16] dis8.[ e16]
  | fis,8.[ e'16] dis8.[ e16] g,8.[ e'16] dis8.[ e16]
  %30
  | a,8.[ e'16] dis8.[ e 16] \tuplet 3/2 { b8[ cis dis] dis[ e fis] }
  | \tuplet 3/2 { fis8[ g a] b[ a g] fis[ g e] b[ e dis] }
  | \stemUp\slurDown \appoggiatura dis8 \stemDown e2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
    \partial 2 { e4 g }
  %1
  | c4~ c16 b a8 dis4 b
  | e4~ e8. d!16 c8.[ e,16] dis8.[ e16]
  | b'8.[ e,16] dis8.[ e16] a8.[ e16] dis8.[ e16]
  | g8.[ e16] dis8.[ b'16] e,8.[ c'16] fis,8.[ d'!16]
  %5
  | g,8.[ e'16] \clef treble a,8.[ fis'16] b,8.[ g'16] c,8.[ a'16]
  | \clef bass d,4~ d16[ c b a] g[ a b8] e,8.[ b'16]
  | c,8.[ b'16] a4 fis16[ e d8] a'8.[ c,16]
  | \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \omit TupletNumber
    b8.[ a'16] g4 \tuplet 3/2 { e8[ fis g] b,[ a g] }
  | \tuplet 3/2 { fis'8[ g a] c,[ b a] g'[ a b] d,[ c b] }
  %10
  | \tuplet 3/2 { a'8[ b c] e,[ d c] } b8.[ g'16] a,8.[ fis'16]
  | g,8.[ e'16] fis,8.[ d'16] e,8.[ cis'16] d8.[ d,16]
  | \alternative {
      { \times 2/3 { g8[ b d] } \times 2/3 { g a b } }
      { \times 2/3 { g,8[ b d] } \times 2/3 { g d b } }
    }
  }
  \repeat volta 2 {
    \partial 2 { g4 g'~ }
  | \tuplet 3/2 { g8[ fis e] } fis8.[ b16] \tuplet 3/2 { e,8[ fis g] a[ b cis] }
  | d4~ d16[ c! b a] b8.[ d16] g,4~
  %15
  | \tuplet 3/2 { g8[ d b] } g8.[ b'16] c8.[ e16] a,4~
  | \tuplet 3/2 { a8[ e cis] } a8.[ cis'16] d8.[ fis16] b,4~
  | \tuplet 3/2 { b8[ fis dis] } b8.[ dis'16] e8.[ ais,16] b8.[ g16]
  | fis4~ \tuplet 3/2 { fis8[ e fis] } g!8.[ b16] ais8.[ b16]
  | fis8.[ b16] ais8.[ b16] e,8.[ b'16] ais8.[ b16]
  %20
  | d,8.[ b'16] ais8.[ b16] \tuplet 3/2 { cis,8 d e } b8.[ g'16]
  | ais,8.[ g'16] fis4 \tuplet 3/2 { d8[ cis b] } fis'8.[ fis,16]
  | \tuplet 3/2 { b8[ d fis] a![ gis fis] gis[ a b] } d,4~
  | \tuplet 3/2 { d8[ f! d] b[ d b] gis[ b gis] } e8.[ gis'16]
  | \tuplet 3/2 { a8[ b c] } g!8.[ c16] fis,8.[ c'16] dis,8.[ b'16]
  %25
  | e,8.[ b'16] g8.[ e16] c8.[ a'16] cis,8.[ ais'16]
  | \clef treble b4~ b16[ dis e fis] \tuplet 3/2 { g8[ fis e] e[ d cis] }
  | \clef bass \tuplet 3/2 { cis8[ b a] a[ g fis] fis[ e d] d[ c! b] }
  | \tuplet 3/2 { b8[ a g] c[ g e] cis[ e g] ais[ b cis] }
  | \tuplet 3/2 { c!8[ dis fis] a[ b c] b[ a g] fis[ g e] }
  %30
  | \tuplet 3/2 { c'8[ b a] g[ fis e] } dis8.[ b16] fis'8.[ b,16]
  | a'8.[ dis,16] g8.[ e16] \tuplet 3/2 { a8[ b c] b[ a b] }
  | \tuplet 3/2 { e,8[ g b] } e4
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
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Tempo di Gavotta"
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
