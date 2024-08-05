Global = {
  \key g \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\stemNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \omit TupletBracket \omit TupletNumber
  \repeat volta 2 {
    \partial 16 g'16
  %1
  | <g d b>8.\arpeggio fis32 e \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { c[ b a] }
    \tuplet 3/2 { b[ g a] } \tuplet 3/2 { b[ a g] } d'8.[\mordent d16]
    %\noBreak
  | \tuplet 3/2 { g[ a b] } \tuplet 3/2 { d,[ e f] } \tuplet 3/2 { e[ a b] } \tuplet 3/2 { c[ b a] }
    g8( fis16.)\prall g32 \once\stemUp \once\slurDown \appoggiatura g16 a4~
  | \tuplet 3/2 { a16[ c, b] } \tuplet 3/2 { c[ b a] } b8[ a']~ \tuplet 3/2 { a16[ g a] }
    \tuplet 3/2 { b[ a g] }  \tuplet 3/2 { fis[ e fis] } \tuplet 3/2 { g[ fis e] }
    %\noBreak
  | \tuplet 3/2 { d[ cis d] } \tuplet 3/2 { e[ d cis] } b16( a) g'8~ \tuplet 3/2 { g16[ fis g] }
    \tuplet 3/2 { a[ g fis] } \tuplet 3/2 { e[ d e] } \tuplet 3/2 { fis[ e d] }
  %5
  | \tuplet 3/2 { c[ b c] } \tuplet 3/2 { d[ c b] } a16 g f'8~ \tuplet 3/2 { f16[ e d] }
    \tuplet 3/2 { e[ d cis] } \tuplet 3/2 { d[ cis b] } gis'16.[( a32])
  | d,8 cis~\prall  \tuplet 3/2 { cis16[ d e] } s8 \stemUp\tieUp e4~ e16. a,32 d16. c32
  | b4~ b16. g'32 fis16. g32 a,4~ a16. d!32 e16. fis32
    %\noBreak
  | g,4~ g16. b32 a16. c32 b2~
  | \tuplet 3/2 { b16[ cis d] }  \tuplet 3/2 { e[ d cis] } \tuplet 3/2 { d[ e fis] }
    \tuplet 3/2 { g[ fis e] } a16 s8. s4
  %10
  | \stemDown bes16. gis32 a8~ \stemUp a16. cis32 d16. fis,32 gis!16.\mordent a32 cis,16. d32
    fis8 e16.\prall d32
  | \stemNeutral \tuplet 3/2 { d16[ cis b] } \tuplet 3/2 { c[ b a] }
     \tuplet 3/2 { b[ a g] } \tuplet 3/2 { a[ g fis] } \tuplet 3/2 { g[ fis e] }
     fis16.[ d'32] e,16.[ g32 d'16. cis32]
  | \stemUp d8. a32 g \tuplet 3/2 { a16[ fis e] } \tuplet 3/2 { fis16[ d cis] } d4.
  }
  \pageBreak
  \repeat volta 2 {
    \partial 16 a'16
  | \stemNeutral <d, fis a>8.\arpeggio b'32 cis \tuplet 3/2 { d16[ e fis] } \tuplet 3/2 { e[ fis g] }
    \tuplet 3/2 { fis[ e d] } a'16.[ c,32] b16.[ g'32 c,16. fis32]
  | \tuplet 3/2 { d16[ g fis] } \tuplet 3/2 { g[ a b] } \tuplet 3/2 { e,[ c' b] }
    \tuplet 3/2 { a[ g fis] } e8[( dis])\prall b'4~\mordent
  %15
  | \tuplet 3/2 { b16[ f e] } \tuplet 3/2 { f[ e d] } e16.[ b'32 d,8]~ \tuplet 3/2 { d16[ e, fis] }
    \tuplet 3/2 { gis[ a b] } \tuplet 3/2 { c[ a b] } \tuplet 3/2 { c[ d e] }
  | \tuplet 3/2 { fis[ c b] } \tuplet 3/2 { c[ b a] } b16.[ fis'32 a,8]~ \tuplet 3/2 { a16[ b, cis] }
    \tuplet 3/2 { dis[ e fis] } \tuplet 3/2 { g[ e fis] } \tuplet 3/2 { g[ a b] }
  | \tuplet 3/2 { c[ a gis] } \tuplet 3/2 { a[ f e] } f16[ f'8 e16] \tuplet 3/2 { dis16[ c b] }
    \tuplet 3/2 { c[ a gis] } \tuplet 3/2 { a[ b cis] } \tuplet 3/2 { dis[ e fis] }
  | \tuplet 3/2 { e[ c b] } \tuplet 3/2 { c[ a gis] } a16[ a'8 g16] \tuplet 3/2 { fis[ c b] }
    \tuplet 3/2 { c[ a gis] } \tuplet 3/2 { a[ dis e] } \tuplet 3/2 { fis[ g a] }
  | \tuplet 3/2 { g[ e dis] } \tuplet 3/2 { e[ c b] } c16[ c'8 b16]
    \stemUp ais4 \tuplet 3/2 { c16\rest a[ b] } \tuplet 3/2 { c[ b a] }
  %20
  | \tuplet 3/2 { b[ a g] } \tuplet 3/2 { fis[ g e_~] } <e g>8 <dis fis> <b e>4~\arpeggio
    \stemNeutral\tieNeutral \tuplet 3/2 { e16[ b a] } \tuplet 3/2 { g[ fis g] }
  | cis16.[ g32 d'16. g,32] e'16.[ g,32 fis16.\parenthesize\prall e32] fis16.[ d32 g16. d32]
    a'16. d,32 \tuplet 3/2 { c'16[ b a] }
  | b16.[ f32 c'16. f,32] d'16.[ f,32 e16.\prall d32] e8.\mordent e16 c'4~\mordent
  | \tuplet 3/2 { c16[ e, d] } \tuplet 3/2 { e[ d c] } d8[ c']~ \tuplet 3/2 { c16[ b c] }
    \tuplet 3/2 { d[ c b] } \tuplet 3/2 { a[ g a] } \tuplet 3/2 { b[ a g] }
  | \tuplet 3/2 { f[ e f] } \tuplet 3/2 { g[ f e] } d[ c bes'8~]
    \tuplet 3/2 { bes16[ a g] } \tuplet 3/2 { a[ g fis] } \tuplet 3/2 { g[ fis e] } cis'16. d32
  %25
  | \set subdivideBeams = ##t
    g,32 fis e fis g fis e16
    \set subdivideBeams = ##f
    d4~ \tuplet 3/2 { d16[ d e] } \tuplet 3/2 { fis[ fis g] } \tuplet 3/2 { a[ a b] }
    \tuplet 3/2 { c[ c d] }
    \noBreak
  | ees16. cis32 d8~ d16. fis32 g16. b,32
    cis16.\parenthesize\mordent d32 fis,16. g32 b8 a16.\prall g32
  | g16. e32 d16. g32 c,16. g'32 b,16. g'32 a,16. fis'32 \tuplet 3/2 { g16[ fis e] }
    \once\slurDown \appoggiatura g16 fis8.\prall g16
  | \stemUp g8. b32 a \tuplet 3/2 { b16[ d c] } \tuplet 3/2 { d[ g fis] } g2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \partial 16 s16
  %1
  % repeat volta 2
  | s1*5
  %6
  | s4. \stemUp\tieDown g'16. g32~ \stemDown g16. fis32 e16. a32 fis4~
  | fis16. e32 fis16. a32 g4~ g16. fis32 e16. g32 fis4~
  | \tuplet 3/2 { fis16[ fis e] } \tuplet 3/2 { fis[ e dis] } e4~ \tuplet 3/2 { e16[ dis e] }
    \tuplet 3/2 { fis16[ e dis] } \tuplet 3/2 { e[ fis g] } \tuplet 3/2 { a[ g fis] }
  | g2~ \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { cis![ cis d] }
    \tuplet 3/2 { e[ e fis] } \tuplet 3/2 { g[ g a] }
  %10
  | s1*2
  | s4 <d,, fis>16 a\rest <a d>16 e\rest s4.
  % repeat volta 2
  \partial 16 s16
  | s1*6
  %19
  | s2 \tuplet 3/2 { r16 e''[ fis] } \tuplet 3/2 { g[ fis e] } dis8 g,\rest
  | f4\rest f16\rest b8 a16 g4\arpeggio s4
  | s1*7
  | b,8\rest <b d>16 b\rest <d g> b\rest <g' b> e\rest <b' d>2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  % repeat volta 2
  | g4. fis8 g s4.
  | s1*4
  %6
  | a8.\arpeggio g32 fis s2.
  | s1*4
  %11
  | b16. d32 a16. d32 g,16. d'32 fis,16. d'32 e,8 a~ a[ g~]
  | g16 fis32 e fis8 s4 <fis a>4.
  % repeat volta 2
  \partial 16 s16
  | d4. cis8 d8. s16 s4
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  \repeat volta 2 {
    \partial 16 r16
  %1
  | b8\rest g b d g8. fis32 e \stemNeutral \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { c[ b a] }
  | b8 g c a \tuplet 3/2 { d16[ a' b] } \tuplet 3/2 { c[ b a] }
    \tuplet 3/2 { g[ fis g] } \tuplet 3/2 { a[ g fis] }
  | \once\stemUp\tieUp \appoggiatura e'16 dis4~ \tuplet 3/2 { dis16[ dis cis] }
    \tuplet 3/2 { dis[ cis b] } e8[ e, g e]
  | a8 a,~ \tuplet 3/2 { a16[ cis b] } \tuplet 3/2 { cis[ b a] } d8[ d, fis d]
  %5
  | g8 g'~ \tuplet 3/2 { g16[ g a] } \tuplet 3/2 { b[ b cis] } d8[ gis,] b[ e,]
  | \stemDown <a, e'>4\arpeggio \tuplet 3/2 { e'16[ d cis] }
    \stemUp \tuplet 3/2 { d[ cis b] } \tuplet 3/2 { cis[ a b] } \tuplet 3/2 { cis[ b a] }
    \stemDown \tuplet 3/2 { d[ fis e] } \tuplet 3/2 { d[ e fis] }
  | \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { dis,[ e fis] } \tuplet 3/2 { e16[ b' cis] }
    \tuplet 3/2 { d[ cis b] } \tuplet 3/2 { cis[ a b] } \tuplet 3/2 { cis16[ b a] }
    \tuplet 3/2 { d16[ cis b] } \tuplet 3/2 { a[ b c] }
  | b4~ \tuplet 3/2 { b16[ a g] } \tuplet 3/2 { fis16[ g a] }
    g4~ \tuplet 3/2 { g16[ fis e] } \tuplet 3/2 { dis[ e fis] }
  | \stemNeutral e4~ \tuplet 3/2 { e16[ d cis] } \tuplet 3/2 { b[ cis d] } cis8[ a] e[ cis]
  %10
  | \tuplet 3/2 { a16[ a' b] } \tuplet 3/2 { cis[ d e] } \tuplet 3/2 { fis[ g a] }
    \stemDown \tuplet 3/2 { b \staffUpper cis d } \tuplet 3/2 { e16[ d cis] }
    \tuplet 3/2 { fis[ e d] } a'8 \staffLower a,
  | b fis g[ b,] cis d a4
  | d r \tuplet 3/2 { g,16\rest d'[ cis] } \tuplet 3/2 { d a fis } d8
  }
  \repeat volta 2 {
    \partial 16 r16
  | d8\rest d[ fis a] d8. e32 fis \tuplet 3/2 { g16[ a b] } \tuplet 3/2 { a[ b c] }
  | \stemNeutral b8 g c fis, \tuplet 3/2 { b16[ fis g] } \tuplet 3/2 { a[ g fis] }
    \tuplet 3/2 { e[ dis e] } \tuplet 3/2 { fis[ e dis] }
  %15
  | \once\stemUp \appoggiatura a'16 gis4~ \tuplet 3/2 { gis16[ e fis] } \tuplet 3/2 { gis[ fis e] }
    a8[ e] a,[ a']
  | \once\stemUp \appoggiatura e16 dis4~ \tuplet 3/2 { dis16[ b cis] } \tuplet 3/2 { dis[ cis b] }
    e8[ b] e,[ e']
  | a, a, \tuplet 3/2 { r16 a''[ g] } \tuplet 3/2 { a[ g fis] } b8 fis dis b
  | c8 c, \tuplet 3/2 { r16 c''[ b] } \tuplet 3/2 { c b a } dis8[ a fis dis ]
  | e8 e, \tuplet 3/2 { r16 e''[ d] } \tuplet 3/2 { e d cis } g'8[ cis, fis fis,]
  %20
  | g a b b, \tuplet 3/2 { e16[ b a] } \tuplet 3/2 { g[ a b] } e,[ g b e]
  | \tuplet 3/2 { a,16[ b cis] } \tuplet 3/2 { b[ cis d] } \tuplet 3/2 { cis[ d e] }
    \tuplet 3/2 { a,[ b cis] } \tuplet 3/2 { d[ e fis] } \tuplet 3/2 { e[ fis g] }
    \tuplet 3/2 { fis[ g a] } \tuplet 3/2 { d,[ e fis] }
  | \tuplet 3/2 { g[ a b] } \tuplet 3/2 { a[ b c] } \tuplet 3/2 { b[ c d] } \tuplet 3/2 { g,[ a b] }
    \tuplet 3/2 { c[ b a] } \tuplet 3/2 { gis[ a b] } \tuplet 3/2 { a[ g fis!] }
    \tuplet 3/2 { e[ fis g] }
  | \once\stemUp \appoggiatura g fis4~ \tuplet 3/2 { fis16[ fis e] } \tuplet 3/2 { fis[ e d] }
    g8 g, b g
  | \tieNeutral
    c c,~ \tuplet 3/2 { c16[ c' d] } \tuplet 3/2 { e[ e fis!] } g8[ cis,] e a,
  %25
  | d, d'~ \tuplet 3/2 { d16[ c b] } \tuplet 3/2 { a[ b c] } b,8 b'' a g
  | \tuplet 3/2 { fis16[ d, e!] } \tuplet 3/2 { fis[ g a] } \tuplet 3/2 { b[ c! d] }
    \tuplet 3/2 { e[ fis g] } \tuplet 3/2 { a[ g fis] } \tuplet 3/2 { b[ a g] } d'8[ d,]
  | \tuplet 3/2 { e16[ b g] } \tuplet 3/2 { e[ g b] } \tuplet 3/2 { e[ d c] }
    \tuplet 3/2 { d[ c b] } \tuplet 3/2 { c[ b a] } \tuplet 3/2 { b[ a g] } d'8[ d,]
  | g r r4 \tuplet 3/2 { r16 g[ fis] } \tuplet 3/2 { g[ d b] } g4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 829"
    title = \markup { "Allemande" }
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
