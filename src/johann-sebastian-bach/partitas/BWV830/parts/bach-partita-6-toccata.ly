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
  \set subdivideBeams = ##t
  \stemNeutral
  %1
  | \once\override Beam.positions = #'(7.0 . 7.4)
    \bottom
    \once\override Staff.TextScript.extra-offset = #'(-3.5 . 2)
    e,,16[^\markup {
      \concat { \small "( " \dynamic f \small " )" }
    }
    g32 b e \top g b e] g8.[ g16] \stemUp g4 fis
  | \once\override Beam.positions = #'(6.2 . 6.6)
    \bottom dis,,16[ fis32 a c \top dis fis g] \stemUp a8.[ a16]
    <dis, fis a>4_( <e g>_\parenthesize\mordent)
  | \bottom \clef treble \tuplet 7/4 { e16[ g \top b c d! c b] }
    \tuplet 7/4 { \bottom a16[ c \top e fis g fis e] }
    \tuplet 7/4 { \bottom d,16[ fis \top a b c b a] }
    \tuplet 7/4 { \bottom g16[ b \top dis e fis e dis] }
  | \tuplet 7/4 { \bottom c,16[ e \top g a b a g] }
    \tuplet 7/4 { \bottom fis16[ ais \top cis dis e dis cis] }
    \omit TupletNumber
    \tuplet 7/4 { \bottom b16[ dis \top fis g a! g fis] }
    \tuplet 7/4 { \bottom dis16[ fis \top a b c! b a] }
  %5
  | \bottom \clef bass
    \once\override Beam.positions = #'(6 . 8.5)
    \bottom e,,16[ g32 b e \top g b e] g8.[ g16]
    \set subdivideBeams = ##f
    \stemUp g16[( fis e fis32 g]) \acciaccatura d!8 cis4\parenthesize\prall
  | \set subdivideBeams = ##t
    \once\override Beam.positions = #'(6.0 . 6.8)
    \bottom d,,16[ fis32 a d \top fis a cis] fis8.[ fis16]
    \set subdivideBeams = ##f
    \stemUp fis16[( e d e32 fis]) \acciaccatura cis!8 b4\parenthesize\prall
  | \tuplet 7/4 { \bottom g16[ b \top cis d e d cis] }
    \tuplet 7/4 { \bottom fis,16[ ais \top b cis d cis b] }
    \tuplet 7/4 { \bottom e,16[ g \top ais b cis b ais] }
    \tuplet 7/4 { \bottom cis,16[ ais' \top e' fis g fis e] }
  | \stemUp fis8.[ <g, b>16] <g cis>8.[ <e fis ais>16]
    \once\override NoteColumn.force-hshift = #0 ais4( b16)[ a! g fis]
  | g[_( ais b cis]) b[ ais b g] fis[ ais b cis] b[ ais b fis]
  %10
  | e[ b' cis d] cis[ b cis e,] d[ fis gis ais] b[ fis d' b]
  | \stemNeutral\slurNeutral e8[( b g!) e'] d[( b fis) d']
  | cis[( ais e ais]) b[( fis d]) r
  | \once\override Beam.positions = #'(7.0 . 7.6)
    \bottom gis,16[ b32 d e \top b' e gis] b8.[ <b, d>16] \stemUp q4( <a c!>)\parenthesize\prall
  | \once\override Beam.positions = #'(7.0 . 7.6)
    \bottom fis,16[ a32 c d \top a' d e] a8.[ <a, c>16] \stemUp q4( <g b>)\parenthesize\prall
  %15
  | \override Beam.positions = #'(5.5 . 5.5)
    \tuplet 7/4 { \bottom gis,16[ b \top d e f e d] }
    \tuplet 7/4 { \bottom a[ c \top dis e fis e dis] }
    \tuplet 7/4 { \bottom ais[ cis \top e fis g fis e] }
    \override Beam.positions = #'(6 . 6)
    \tuplet 7/4 { \bottom b[ d \top eis fis gis fis eis] }
    \revert Beam.positions
  | \tuplet 7/4 { \bottom \clef treble c[ dis \top fis! g! a! g fis] }
    \tuplet 7/4 { \bottom cis[ e \top g a bes a g] }
    \tuplet 7/4 { \bottom d[ f \top gis a b a gis] }
    \tuplet 7/4 { \bottom dis[ fis \top a b c b a] }
  | \bottom \clef bass
    \set subdivideBeams = ##t
    \once\override Beam.positions = #'(6.5 . 7.5)
    \bottom e,[ g!32 b e \top g b e] g8.[ g16] \stemUp g4^( fis)
  | \once\override Beam.positions = #'(4.5 . 6.5)
    \bottom b,,16[ d32 f! gis \top b d f!] gis8.[ 16] \stemUp 4^( a)
  | \tuplet 7/4 { \bottom c,16[ e \top fis g! a g fis] }
    \tuplet 7/4 { \bottom b,[ dis \top e fis g fis e] }
    \tuplet 7/4 { \bottom a,[ c \top dis e fis e dis] }
    \tuplet 7/4 { \bottom fis,[ dis' \top a' b c b a] }
  %20
  | \set subdivideBeams = ##f
    \stemUp b8.[ <c, e>16] <c fis>8.[ <a b dis>16]
    \once\override NoteColumn.force-hshift = #0 dis4^( e16)[ d! c b]
  | \stemNeutral c[( dis e fis]) e[ dis e c] b[ dis e fis] e[ dis e b]
  | a[ e' fis g] fis[ e fis a,] g[ fis g b] e[ b g' e]
  | a,8[( e' a) a,] g[( e' b') g,]
  | fis[( dis' a') dis,] e,[( b' g')] r
  %25
  | \once\override Beam.positions = #'(4.5 . 6.5)
    \bottom ais,,16[ cis32 e g \top ais cis e] g8.[ fis16]
    \stemUp \appoggiatura e8 dis8.[\prallprall cis32 b] e8.[ e,16]
  | g8.\mordent[ a!64 g fis g] a8.[ fis16] <dis fis>4^( e8)
    \once\override Staff.TextScript.extra-offset = #'(-1 . -1)
    r_\markup { \concat { \small "( " \dynamic p \small " )" } }
  | R1*2
  | \clef bass r2 r4 r8 \stemNeutral b
  %35
  | b\prall[( ais]) r cis cis^\prall[( b]) r d
  | d\prall[( cis16 d]) e8[ g,!] fis[ ais b d]
  | e,[ cis' fis, ais] b16[ cis] d4 b8
  | \clef treble cis16[ d] e4 cis8 dis16[ e] fis4 e16[ dis]
  | f'4\rest f8\rest e, e[^(\parenthesize\prall dis]) r fis
  %40
  | fis\parenthesize\prall[( e]) r g g\prall[( fis16 g]) a8[ c,!]
  | b[ dis e g] a,[ fis' b, dis]
  | e16[ g fis e] d![ fis e d] cis[ e fis g] a,[ g' fis e]
  | d[ fis e d] cis[ e d cis] b[ d e fis] g,[ fis' e d]
  | cis[ e d cis] b[ d cis b] ais[ cis d e] fis,[ e' d cis]
  %45
  | b[ d e fis] gis,[ fis' e d] cis[ e fis g!] ais,[ g' fis e]
  | d[ fis gis ais] b,[ a' g! fis] e[ gis ais b] \clef bass \stemUp cis,[ d e8~]
  | e8.[ e16] d16[^( cis) b8~] b16[ 8 16] ais[ b cis fis,]
  | d'16[ cis b ais] b[ cis d fis,] e'[ d cis b] cis[ d e ais,]
  | \clef treble fis'[ e dis cis] dis[ e fis b,] e[ fis] g4 e8
  %45
  | fis16[ g] a4 fis8 gis16[ a] b4 a16[ gis]
  | c![ b a gis] a[ b c e,] a[ g! fis e] fis[ g a8]
  | \slurUp a[( g]) r b b[( a]) g'16\rest g,[ fis e]
  | dis8[ b'~] b16[ d! c b] c[ a8 16~] a[ 8 16~]
  | a[ 8 8 g g16~] g[ 8 8 8 16]
  %50
  | g[ g8 g fis f! f f f f16]
  | s1
  | s1
  | s1
  | s1
  %55

  \bar "||"
}

Alto = \context Voice = "Two" \relative c'' {
  \voiceTwo
  \override Rest.staff-position = #0
  \stemDown
  | s2 <a c>
  | s1*6
  %8
  | s2 \stemUp \once\override NoteColumn.force-hshift = #1 fis
  | s1*11
  %20
  | s2 \stemUp \once\override NoteColumn.force-hshift = #1 b
  | s1*4
  %25
  | s2 \stemDown b4 s
  | e,4~ e8.[ dis16] b2
  | s1*7
  %34
  | e16[ fis g8~] g16[ b, a g]
    \bottom fis[ a \top b c] \bottom dis,[ \top cis' b \bottom a]
  | s1*6
  %41
  | \top s4 b e r8. b16
  | ais[ cis fis,8~] fis8.[ 16] g8[ \bottom e] cis4
  | b8 b'8\rest s4 cis,16[ d] s4 cis8
  | s1*2
  %46
  | \top d'4\rest d8.\rest e16 e8\parenthesize\prall[( d]) c\rest fis
  | fis\parenthesize\prall[( e]) s g g\parenthesize\prall[( fis16 g]) a8[ \bottom c,!]
  | b[ \top d e g] \bottom a,[ \top fis' b, dis]
  | e[ b e d!] cis[ e a, cis]
  %50
  | d[ a d c!] b[ d g, b]

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp
  | s1
  | s2 c4( b)
  | s1*5
  %8
  | \top f'8.\rest d16 e8.[ \bottom cis16]
    \top \once\override NoteColumn.force-hshift = #0 e4_( dis8) d8\rest
  | s1*8
  %17
  | s2 <a' c>
  | s <c e>
  | s1
  | \top g8.\rest g16 a8.[ \bottom fis16]
    \top \once\override NoteColumn.force-hshift = #0 a4_( gis8) f8\rest
  | s1*5
  %26
  | \bottom b,8.[ c16] s4 a4( g8) c\rest
  | s1*8
  %35
  | g16[ b cis dis] e,[ d'! c! b] a[ cis dis e] fis,[ g a8~]
  | a16[ a g fis] g[ fis e8~] e16[ e dis! cis] dis[ e fis b,]
  | g'8 g\rest g4\rest g8\rest cis,[( e a]
  | fis^!) f\rest f4\rest f8\rest b,[( d g]
  | e^!) e\rest e4\rest e8\rest ais,[ cis fis]
  %40
  | d8[ b] d[ g!] e[ cis] e[ ais]
  | fis[ d] fis[ b] s2

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  | s2 <e a c>
  | s2 e
  | s1*2
  %5
  | s2 <a cis e>
  | s2 <g b d> \clef treble
  | s1
  | \clef bass d'8.[ g,16] e8.[ fis16] <b, b'>2
  | \stemNeutral\slurNeutral e'8[( b g e']) d![( b fis d'])
  %10
  | cis[( ais e ais]) b[( fis d fis])
  | g!16[( ais b cis]) b[ ais b g] fis[ ais b cis] b[ ais b fis]
  | e[ b' cis d] cis[ b cis e,] d[ cis d fis] b[ fis d' b]
  | s2 <a! e'>
  | s <g d'>
  %15
  | s1*2
  | s2 <a c e> \clef treble
  | s <c e a>
  | s1
  %20
  | \stemDown g8.[ \clef bass c16] a8.[ b16] <e, e'>2
  | \clef treble \stemNeutral a'8[( e c a']) g[( e b g'])
  | fis[( dis a dis]) \clef bass e[( b g b])
  | c16[ dis, e fis] e[ dis e c'] b[ dis, e fis] e[ dis e b']
  | a[ e fis g] fis[ e fis a] g[ fis g b] \clef treble e[ g cis, e]
  %25
  | s2 \clef bass <a,! b fis'>4 <g b e>8.[ <a c!>16]
  | b8.[ a16] b8.[ <b, a'>16] e4. e8
  | e^\prall[( dis]) r fis fis^\prall[( e]) r g
  | g8^\prall[( fis16 g]) a8[ c,] b[ dis e g]
  | a,[ fis' b, dis] e16[ g fis e] d![ fis e d]
  %30
  | cis[ e fis g] ais,[ g' fis e] d[ fis g ais] b,[ a'! g! fis]
  | e[ gis ais b] cis,[ d e8~] e16[ e d cis] d[ cis b8~]
  | b16[ b ais gis] ais[ b cis fis,] d'[ cis b ais] b[ cis d fis,]
  | e'[ d cis b] cis[ d e fis,] fis'[ e dis cis] dis[ e fis a,]
  | g'[ fis e dis] e[ d! c! b] \stemDown a4 b
  %25
  | \mergeDifferentlyDottedOn
    e e fis fis8.[ e16]
  | dis8[ b] g8.\rest g16 c8[ a] b4
  | g8\rest e[_( fis g] a_!) f\rest f4\rest
  | g8\rest d[_( e fis] g_!) e\rest e4\rest
  | g8\rest cis,[_( d e] fis_!) d\rest d4\rest
  %40
  | \slurDown d4\rest d8\rest b' b[(\parenthesize\prall ais]) a\rest cis
  | cis[(\parenthesize\prall b)] g\rest d' d8[(\prall cis16 d]) e8[ g,!]
  | \stemUp fis[ ais b d] \stemDown e,[ cis' fis, ais]
  | b16[ cis] d4 b8 s e4 s8
  | dis16[ e] fis4 e16[ dis] g[ fis e dis] e[ fis g cis,]
  %45
  | a'[ g fis e] fis[ g a d,] b'[ a gis fis] gis[ a b e,]
  | a16[ b c8~] c16[ b a g!] fis[ a b c] dis,[ c' b a]
  | g[ b cis dis] e,[ d'! c! b] a[ cis dis e] fis,[ g a8~]
  | a16[ a g fis] g[ fis e8~] e16[ e dis cis] dis[ e fis b,]
  | \stemNeutral\slurNeutral e8[( e,]) r e' a[( cis,]) r a
  %50
  | d[( d,]) r d' g[( b,]) r g
  | c16[ d e d] cis[ e a, cis] d[ e fis e] dis[ fis b, dis]
  | e[ fis g fis] e[ g c,! e] fis[ g a g] fis[ a d, fis]
  | g8[ g,] r g' g^\prall[( fis]) r a
  | a8^\prall[( g]) r b b^\prall[( a16 b]) c8[ e,]
  %55

  \bar "||"
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 830"
    subtitle = "Toccata"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Partita VI"
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
