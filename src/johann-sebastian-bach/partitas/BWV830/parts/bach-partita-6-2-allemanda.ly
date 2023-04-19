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
    \once \override TextScript.script-priority = #-100
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
  | R1
  | R1
  | R1
  | R1
  %15
  | R1
  | R1
  | R1
  | R1
  | r4 r4 r4 r8
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
  \repeat volta 4 {
    r8
  | b,8[ b' fis a] dis,[ fis b, dis]
  %10
  | \set subdivideBeams = ##t
    \stemUp e, r e''32[ g fis e d c \clef bass b a]
    \set subdivideBeams = ##f
    \stemDown gis8~[ gis32( f e d]) b'16.[( d,32) e16.( b32])
  | R1
  | R1
  | R1
  | R1
  %15
  | R1
  | R1
  | R1
  | R1
  | r4 r4 r4 r8
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
    %subtitle = "Toccata"
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
    \tempo 4 = 60
  }
}
