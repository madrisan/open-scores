Global = {
  \key e \minor
  \time 4/4
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
  \partial 8 r16 g'
  \repeat volta 4 {
  %1
  | <b, e g~>8 [ g'32( fis e dis]) e8~[ 32( d c b]) c8~[ 32( b a gis]) a16.[( c32) fis,16.( a32])
  | dis,8~[ dis32 c' b a] fis'16.[( a,32) b16.( fis32])  g8[( fis16 e]) <e g b>8.\arpeggio[ b'16]
  | b16.([ fis32) g16.( e32]) <e a c>8.\arpeggio[ c'16]
    c16.([ g32) a16.( fis32]) <fis b d>8.\arpeggio[ d'16]
  | <e, b' d~>8\arpeggio d'32 f! e d] b'16.[( d,32) e16.( b32])
    \stemUp\appoggiatura b8 \stemNeutral c[ b16 a]
    \once\override TextScript.script-priority = #-100
    e'8.\mordent^\markup { \small\sharp }[ e16]
  %5
  | \set subdivideBeams = ##t e16[ dis32 cis dis e fis g]
    \set subdivideBeams = ##f a16.[ c,!32 b16. a'32] g16.[ b,32 ais16. e'32] fis16.[ a,!32 gis16. d'!32]
  | e16.[ g,!32 fis16. cis'32] d16.[ ais32 b16. fis32] g16.[ dis32 e16. g32] cis!16.[ ais!32 e'16. cis32]
  | \set subdivideBeams = ##t
    g'16[( fis32 e) ais16 gis32( fis]) b16[a!32 g! fis e d cis]
    \set subdivideBeams = ##f
    d[ cis b ais b16. eis,32] fis16.[ b32 cis16. ais32]
  | \mergeDifferentlyDottedOn
    <e ais>8[( <dis b'>]) s4 \stemUp b''4.*1/6 fis4.*1/12 dis4.*1/12 b4.*1/3 s8
  }
  \repeat volta 4 {
    \stemDown r16 fis'
  | <b, dis fis~>8[ fis'32( e dis cis]) dis8~[ dis32( c! b a])
    \stemUp b16.[ fis32 a16. c32] \stemDown e32[ dis cis b a'16. fis32]
  %10
  | \set subdivideBeams = ##t
    \stemUp g4~ \stemDown g32[ b a g fis e d c]
    \set subdivideBeams = ##f
    d32[ f! e d b'16.( c32]) gis8.\prallprall[( fis32 gis])
  | a16[ a,32 b b16\prall a32 b]
    \set subdivideBeams = ##t
    c16[( b32 a b c d e])
    \set subdivideBeams = ##f
    f16.[( a,32) gis16.( d'32)] e16.[( g,!32) fis!16.( cis'32)]
  | \stemUp d16.[( f,!32) e16.( b'32)] c!!16.[( e,32) dis16.( a'32)]
    b16.[( d,!32) cis16.( gis'32)] a16.[( c,!32) b16.( fis'32)]
  | a16[( gis fis! e)]
    \once\override TextScript.script-priority = #-100
    \stemDown d'8.\mordent^\markup { \small\sharp }[ e16]
    c!16~[ c64 f! e d gis16.( a32)] \stemUp b,8.\prallprall[^( a16)]
  | a8~[ 32 b a gis] \stemDown a[ b c d e fis g! e] fis8\parenthesize\prall( e16 d)
    \once\override TextScript.script-priority = #-100
    a'8.\mordent^\markup { \small\sharp }[ 16]
  %15
  | dis,8[ ~ dis32 e fis g] a[ c b a b16. fis32]
    \set subdivideBeams = ##t
    g16[( b32 g) e16( g32 e)] c16[( e32 c) a16( c32 e)]
  | fis16[( a32 fis) d16( fis32 d)] b16[( d32 b) g16( b32 d)]
    e16[( g32 e) c16( e32 c)] \stemUp\slurDown a16[( c32 a) fis16( a32 c)]
  | dis,16[( fis32 a) c16( b32 a)]
    \stemDown\slurUp fis'8.\parenthesize\mordent[ fis16]
    fis16[ b,32 cis dis16( cis32 b)]
    \set subdivideBeams = ##f
    g'16.[ e32 dis16.\prallprall( e32)]
  | \set subdivideBeams = ##t
    a,16[ dis32 e fis16( e32 dis)]
    \set subdivideBeams = ##f
    a'16.[ e32 dis16.\prallprall( e32)]
    \set subdivideBeams = ##t
    b16[ e32 fis g16( fis32 e)]
    b'16~[ 32 a g fis e d]
    \set subdivideBeams = ##f
  | \set subdivideBeams = ##t
    c16[( b32 a) dis16( cis32 b)] fis'32[ e dis! cis! b a g fis]
    \set subdivideBeams = ##f
    \stemUp\slurDown g[ fis e dis e16. ais,32] b16.[ e32 fis16. dis32]
  %20
  | <a dis>8[( <g e'>)] s4
    \stemUp e''4.*1/6 b4.*1/12 g4.*1/12 e4.*1/3 s8
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "Two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \stemDown
  \partial 8 s8
  %1
  | s1*9
  %10
  | \set subdivideBeams = ##t
    g32\rest e'[ d! c! b \bottom \clef treble a g fis] s2.
    \set subdivideBeams = ##f
  | s1*2
  %13
  | \top s2. gis4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurDown\tieDown
  \partial 8 r8
  %1
  | c8\rest fis,[ g gis] a[ b c a]
  | fis2 <e,~ e'>8[ e32 b' c d!] e8~[ e32 d c b]
  | s2. b16.[ fis32 d'16. b32]
  | s2. a''16.[( fis32) g!16.( e32])
  %5
  | fis8~[ fis32( g fis e]) dis8~[ dis32( b cis dis]) e8[ cis d! \clef bass b]
  | s1
  | ais,8[ fis d' b] c'8\rest
    \once\override Beam.positions = #'(5.3 . 4.5)
    d[ cis \top e!]
  | s1*11
  %19
  | s2 \bottom e,8.[^( f16]) g8[ \top a!] \bottom
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \set PianoStaff.connectArpeggios = ##t
  \stemDown\slurUp\tieDown
  \partial 8 r8
  \repeat volta 4 {
  %1
  | e1~
  | e8[ e dis b] s2
  | <c~ e g>8\arpeggio[ c32 e fis g] a16.[ c32 e,16. g32] <fis~ a d>8\arpeggio[ fis32( e d c)] s4
  | <gis'_~ b>4\arpeggio gis8^~[ gis32 e fis gis]
    \set subdivideBeams = ##t
    a16[ b32 c \clef treble d e fis! gis]
    \set subdivideBeams = ##f
    s4
  %5
  | s1
  | \tieUp cis,8[ ais] b~[ b32 b, cis d] e8~[ e32 d! e fis] g8~[ g32 e fis g]
  | s2 fis
  | b,8.[ dis32 fis]
    \set subdivideBeams = ##t
    \stemUp
    \once\override Beam.positions = #'(4.6 . 5.8)
    b16[ \top dis32 fis b16 dis32 fis]
    \once\override Beam.positions = #'(-3 . -2.5)
    b16[ fis32 dis b16 \bottom fis32 dis]
    \set subdivideBeams = ##f
    \stemDown b8
  }
  \break
  \repeat volta 4 {
    r8
  | b,8[ b' fis a] dis,[ fis b, dis]
  %10
  | \set subdivideBeams = ##t
    \stemUp e, r e''32[ g fis e d c \clef bass b a]
    \set subdivideBeams = ##f
    \stemDown gis8~[ gis32( f e d]) b'16.[( d,32) e16.( b32])
  | c8~[ c32 e fis gis] a8~[ a32( g! f! e)] d8[ b' cis, a']
  | b,[ gis' a, fis'] gis[ a f! d]
  | e4~ e16[ gis32 b \clef treble e16( fis32 gis])
    \stemUp a16.[ g!32 f!16. d32]
    \override Stem.details.beamed-lengths = #'(4.4)
    e8[ \clef bass e,]
    \revert Stem.details.beamed-lengths
  | \stemDown a16.[ e32 c16. e32] a,8~[ a32 a' b c]
    \set subdivideBeams = ##t
    d16[ fis32 d a16 c32 a] fis16 a32 fis dis16 fis32 dis]
    \set subdivideBeams = ##f
  %15
  | \stemUp\slurDown\tieDown
    a16[ c32 a fis16 a32 fis] dis8~[ dis32 b' cis dis]
    e8~[ e32( d! c! b]) \stemDown\slurUp\tieUp a8~[ a32 a' b c]
  | d8~[ 32 c b a] \stemUp\tieDown g8~[ 32 g, a b] c8~[ 32 b a g] fis8~[ 32 fis' g a]
  | \stemDown\tieUp b4~ 16[( a32 g) a16( g32 fis)] g16[( fis32 e) fis16( e32 dis)] e16[ g32 b c!8~^-]
  | c16.[( b32) a16.( c32]) fis,16[ a32 c fis8~^-] 16.[( e32) dis16.( e32)] g,16[ b32 dis e8~^-]
  | e16.[ c32 a16. fis32] \stemUp dis8.^\prallprall[ b16] \stemDown e8[ c!] b4
  %20
  | \stemUp e,8.[ g32 b]
    \set subdivideBeams = ##t
    \stemUp
    \once\override Beam.positions = #'(2.8 . 3.2)
    e16[ \top g32 b e16 g32 b]
    \once\override Beam.positions = #'(-4 . -4.5)
    e16[ b32 g e16 \bottom b32 g]
    \set subdivideBeams = ##f
    \stemDown e8
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
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 830"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Allemanda"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 50
  }
}
