Global = {
  \key e \minor
  \time 2/2
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
    \tuplet 7/4 { \bottom cis,16[ ais'! \top e' fis g fis e] }
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
    \tuplet 7/4 { \bottom fis,[ dis'! \top a' b c b a] }
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
  | e8[ a a( g]) fis[ b b( a])
  | g[ c c( b]) a[ d d( c])
  | b4~ b16[ g b d] c4~ c16[ a c e]
  | d4~ d16[ b d f!] e4~ e16[ c e g]
  %55
  | fis[ e d8~] d16[ d g d] e4~ e16[ a, d a]
  | b2 a
  | g fis4 f'8\rest d
  | d[( cis]) f\rest e e[( d]) f\rest fis
  | fis[( e16 fis]) g8[ b,] a[ cis d fis]
  %60
  | g,[ e' a, cis] d4 g8\rest b,
  | b[( a]) g'\rest d d[( c]) a'\rest f!
  | f![( e]) a\rest e e[( d]) g\rest d
  | d[( c]) g'\rest c, c[( b) b a]
  | a[( gis]) r16 e'[ d c] b[ d e f!] gis,[ f' e d]
  %65
  | \stemNeutral c[ e fis gis] a,[ g'! f! e] d[ fis gis a] b,[ c d a]
  | gis[ f'! e d] c[ b a8~] a16[ gis a b] d,[ f! e d]
  | c[ e a c] b[ a b e] a,[ c b a] g![ f! g c]
  | f,![ a g f] e[ d e a] d,[ f e d] c8[ c']
  | c[\prall( b]) r b32[ c d16] d8\prall[( c]) r c32[ d e16]
  %70
  | e8\prall[( d16 e]) f!8[ a,] \stemUp g[( a16 b]) c8[ e]
  | f,![ d' g, b] c4~ c16[ bes a g]
  | \stemNeutral\slurNeutral a[ b! c d] c[ b c a] g[ b c d] c[ b c g]
  | f![ c' d e] d[ c d f,] e[ d e g] c[ b c e]
  | a8^![ d,~^-] d16[ a( b d]) g8^![ c,~^-] c16[ g^( a c)]
  %75
  | f!^-[( e d c]) b[ d b g] e[( f! g e]) c8[ e']
  | d[( a f!) d'] c[( a e) c']
  | b[( gis d) gis] a[( e c) a']
  | a\prall[( gis]) r b b\prall[( a]) \stemUp r c
  | \slurUp c[( b]) r a a[( g]) r b
  %80
  | b[( ais]) r cis cis[( b]) r d
  | d[( cis]) r b b[( ais]) g'16\rest fis[ e! d]
  | cis[ e fis g] ais,[ g' fis e] e[ fis gis ais] b,[ a'! g! fis]
  | e[ b e fis] g4~ g16[ g fis e] d4~
  | d16[ cis e b] ais8 s f'4\rest d16\rest fis,[ d' b]
  %85
  | g'4~^- g8.[ g16] fis4~^- fis8.[ fis16]
  | e4~^- e8.[ e16^.] d[( cis d e]) fis4~
  | fis16[ cis d e] d[ cis d8~] d16[ cis d e] d[ cis d8~]
  | d16[ b cis d] cis[ b cis8~] cis16[ eis, gis b~] b16[ 8( ais16)]
  | \once\override Beam.positions = #'(6.2 . 6.6)
    \set subdivideBeams = ##t
    \bottom b,,16_-[ d32 fis b \top d fis b] d8.[ d16] \stemUp d4( cis)
  %90
  | \once\override Beam.positions = #'(4.4 . 5.2)
    \bottom ais,,16_-[ cis32 e g \top ais cis d] e8.[ e16] \stemUp <a, c e>4_( <b d>)
  | s1*2
  | \once\override Beam.positions = #'(5.8 . 6.6)
    \bottom b,16[ d32 fis b \top d fis b] d8.[ d16] \stemUp d4( cis)
  | \once\override Beam.positions = #'(6.2 . 7.6)
    \bottom fis,,16[ a32 c! d \top a' d fis] a8.[ c,!16] \stemUp <a c>4( <g b>)
  %95
  | s1*2
  | \once\override Beam.positions = #'(7.2 . 8.2)
    \bottom gis,16[ b32 d f! \top b d f!] b8.[ <d, gis b>16] q4( <c a'>)
  | \once\override Beam.positions = #'(6.2 . 7.6)
    \bottom dis,,16[ fis32 a c \top a' c fis] a8.[ <c, dis fis a>16] q4( <b e g!>)
    \clef bass
  | s1
  %100
  | s1
  | \once\override Beam.positions = #'(6.2 . 7.6)
    \bottom \clef bass
    e,,16[ g32 b e \top g b e] g8.[ g16] \stemUp g8.[ e16]
    \slurDown\acciaccatura e8 f!4\parenthesize\mordent
  | \once\override Beam.positions = #'(6.2 . 7.6)
    \bottom b,,16[ d32 f! gis \top b d f!] gis8.[ <b, d e gis>16] <b d gis>4( <a c a'>)
  | s1
  | b'8.[ <g, c e>16] <a c fis>8.[ <fis b dis>16]
    \once\override NoteColumn.force-hshift = #1.5 b4( ais)]
  %105
  | \clef bass s1
  | s1
  | s4 <fis a> <e b'>2
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  \fine
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
  | c d\rest d\rest e e[( d]) d\rest fis
  | fis[( e]) f\rest g g[( fis]) f\rest a~
  | a16[ fis g d] e4~ e16[ g a e] fis4~
  | fis16[ a b fis] g4~ g16[ b c g] a4~
  %55
  | a8.[ c16] b4~ b16[ b c e,] fis4~
  | fis16[ fis e d] e[ fis g cis,~] cis[ e d cis] d[ e fis b,~]
  | b[ d cis b] cis[ d e a,~] a[_\markup {
      \concat { \small "( " \dynamic f \small " )" }
    }
    cis d e] fis[ g a fis]
  | g8[ e a cis] a[ fis a d]
  | b4~ b16[ fis' \once\override NoteColumn.force-hshift = #1.3 e d]
    \once\override NoteColumn.force-hshift = #1.3 cis[ b a g] a8 r
  %60
  | b,2\rest g'8\rest a[ a( gis])
  | e\rest c'[ c( b)] e,\rest e'[ e( d)]
  | g,\rest d'[ d( c)] g\rest c[ c( b)]
  | f\rest b[ b( a)] e\rest d[ d( c)]
  | \once\override Beam.positions = #'(-6 . -4)
    c[( b) \bottom b a] a^\prall[ (gis]) b\rest b
  %65
  | \slurUp b[( a]) g'\rest c, c^\parenthesize\prall[( b16 c]) d8[ f,]
  | e[ gis a c] d,[ b'] e,[ gis]
  | a[ f'! f( e)] e\rest d[ d( c)]
  | c\rest b[ b( a)] a\rest g~ g16[ e f! d]
  | e[ c d b] g[ b d f!] e[ d e c] g[ c e g]
  %70
  | f![ e f g] a[ b c d] \top e2~
  | e8[ d] b\rest f'~ f16[ f( e d]) e8[ \bottom c] \top
  | s1*17
  %89
  | s2 <e g>
  | s1*3
  | s2 g
  | s1*3
  %97
  | \stemUp s2 e'
  | s1*3
  %101
  | \stemDown s2 <a, c>
  | \stemUp s e'
  | s1
  | s2 <e, e'>2
  | s1*2
  | r8 r16 e' b8.[ dis16]
    \once\override NoteColumn.force-hshift = #0.5
    <a dis>4( <gis e'>)
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
  | s1*36
  %78
  | e16[ b c d] gis,[ \clef treble f'! e d] c[ e fis gis] \clef bass a,8[ \top e']
  | \slurDown e[( dis]) s fis fis[( e]) s g
  %80
  | g[( fis]) s e e[( d]) s fis
  | fis[( eis]) s gis gis[( fis]) e4\rest
  | s1
  | e4\rest r16 cis'[ d e] ais,8 a\rest g16\rest ais[ b fis]
  | g8 f\rest d16\rest g![ fis e] d[ cis d fis] b,8 c\rest
  %85
  | \tieDown r16 ais'[ b cis] b[ ais b8~] b16[ ais b cis] b[ ais b8~]
  | b16[ b cis d] cis[ b cis8~] cis4~ cis16[ b cis d]
  | g,4~_- g8.[ 16_.] fis4~_- fis8.[ fis16_.]
  | e4~_- e8.[ 16] d4_- cis8[ e!]
  | s1*8
  %97
  | \bottom s2 gis4^( a)
    \clef bass
  | s1*3
  %101
  | s1*6
  | s4 <dis,, fis b> <b e>2

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
  | g!16[( ais b cis]) b[ ais b g] fis[ ais! b cis] b[ ais b fis]
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
  | d[ fis g b] c,[ a' d, fis]
  | g,[ g' cis, e] fis,[ fis' b, d]
  | e,[ e' a, cis] d,16[ a' b cis] d[ e fis d]
  | e[ g a b] cis,[ b' a g] fis[ a b cis] d,[ c'! b a]
  | g[ b cis e] e,[ fis g8~] g16[ g fis e] fis[ g a d,]
  %60
  | b'[ d, cis b] cis[ d e a,] fis'[ e d c!] b[ c d b]
  | c[ e a g!] fis[ gis a fis] gis[ e a g!] fis[ gis a c]
  | b[ a gis fis!] gis[ e a g!] fis[ c' fis, e] fis[ d g f!]
  | e[ b' e, d] e[ c f! e] d[ e f gis,] a[ b c dis,]
  | \stemDown\slurDown e[ e' d! e] c4 d e
  %65
  | a,16[ gis' a b] c[ b a g!] fis8[( f!]) r b,
  | c4 b8\rest f'!16[ e] f8[ d] e4
  | a,8[ a'] b,\rest g'! g[( f!]) r e
  | e[( d]) r c c[( b]) a4
  | g4 b,\rest c2\rest
  %70
  | \stemNeutral\slurNeutral s2 r16 d''[ c b] a[ g fis e]
  | d[ c b a] g[ f! e d] c8 r r4
  | f''!8[( c a f']) e[( c g e'])
  | d[( b g b]) c[( g e c])
  | f16[( e f a]) d8^![ f,~^-] f16[ d( e g]) c8^![ e,~^-]
  %75
  | e16[ c( d f!] g[ f g b]) c8^-[ c,] r16 e'[ c a]
  | f![ gis a b] a[ gis a f] e[ gis a b] a[ gis a e]
  | d[ a' b c] b[ a b d,] c[ b c e] a[ e c' a]
  | g,2\rest e'4\rest b16\rest b'[ a g!]
  | fis![ a b c] dis,[ c' b a] g[ b cis dis] e,[ fis e d!]
  %80
  | cis[ e fis g] ais,[ g' fis e] d[ fis gis ais] b,[ cis b a!]
  | gis[ b cis d] eis,[ gis fis eis] fis[ cis fis gis] ais[ fis b8]
  | b^\prall[( ais]) r cis cis^\prall[( b]) r d
  | d^\prall[( cis16 d]) e8[ g,] fis[ ais b d]
  | e,[ cis' fis, ais] b[ fis d' b]
  %85
  | e[( b' g') e,] d[( b' fis') d,]
  | cis[( ais' e') ais,] b[( fis d b])
  | e16[ ais b cis] b[ ais b e,^.] d^-[ ais' b cis] b[ ais b d,^.]
  | cis^-[ gis' ais b] ais[ gis ais cis,^.] b8--[ eis,( fis) fis'-.]
  | s2 <b, e g>
  %90
  | s2 \stemUp\slurDown\acciaccatura \parenthesize g'8 \stemDown <b, fis'>2
  | \clef treble
    \tuplet 7/4 { \bottom b'16[ d \top fis g a! g fis] }
    \omit TupletNumber
    \tuplet 7/4 { \bottom e16[ g \top b cis d cis b] }
    \tuplet 7/4 { \bottom a,!16[ cis \top e fis g fis e] }
    \tuplet 7/4 { \bottom d16[ fis \top ais b cis! b ais] }
  | \tuplet 7/4 { \bottom g,16[ b \top d e fis e d] }
    \tuplet 7/4 { \bottom cis16[ eis \top gis ais b ais gis] }
    \tuplet 7/4 { \bottom fis16[ ais \top cis d e! d cis] }
    \tuplet 7/4 { \bottom ais16[ cis \top e fis g! fis e] }
  | \bottom \clef bass
    \stemDown s2 <e,, g b>
  | s <g b d>
  %95
  | \clef treble
    \tuplet 7/4 { \bottom e'16[ g \top ais b cis b ais] }
    \tuplet 7/4 { \bottom dis,16[ fis \top a! b c! b a] }
    \tuplet 7/4 { \bottom d,!16[ f! \top gis a b a gis] }
    \tuplet 7/4 { \bottom cis,16[ e \top g! a bes a g] }
  | \tuplet 7/4 { \bottom c,!16[ dis \top fis g a g fis] }
    \bottom \clef bass
    \tuplet 7/4 { \bottom b,!16[ d! \top eis fis gis fis eis] }
    \tuplet 7/4 { \bottom ais,16[ cis \top e! fis g! fis e] }
    \tuplet 7/4 { \bottom a,!16[ c! \top dis e fis e dis] }
  | \bottom\stemDown s2 \clef treble <c e>
  | s2 <e, e'>
  | \tuplet 7/4 { \bottom e,16[ g \top b c d! c b] }
    \tuplet 7/4 { \bottom a16[ c \top e fis g fis e] }
    \tuplet 7/4 { \bottom d16[ fis \top a b c b  a] }
    \once\override Beam.positions = #'(5 . 4.5)
    \tuplet 7/4 { \bottom g16[ b \top \clef treble dis e fis e dis] }
  %100
  | \bottom \clef treble
    \tuplet 7/4 { \bottom c16[ e \top g a b a g] }
    \tuplet 7/4 { \bottom fis16[ ais \top cis dis e dis cis] }
    \tuplet 7/4 { \bottom b16[ dis \top fis g a! g fis] }
    \tuplet 7/4 { \bottom dis16[ fis \top a b c! b a] }
  | \bottom \stemDown s2 <a,, c e>
  | \clef treble s2 \stemUp <c e>
  | \tuplet 7/4 { \bottom c'16[ e \top fis g! a g fis] }
    \tuplet 7/4 { \bottom b,16[ dis \top e fis g fis e] }
    \tuplet 7/4 { \bottom a,16[ c \top dis e fis e dis] }
    \tuplet 7/4 { \bottom fis,16[ dis'! \top a' b c b a] }
  | \bottom\stemDown g,8.[ \clef bass c,16] a8.[ b16] <cis, e g cis>2
  %105
  | \tuplet 7/4 { \bottom dis16[ fis \top a! b c! b a] }
    \tuplet 7/4 { \bottom e[ g \top ais b cis b ais] }
    \tuplet 7/4 { \bottom f![ gis \top b cis! d! cis b] }
    \once\override Beam.positions = #'(5 . 3.5)
    \tuplet 7/4 { \bottom fis[ a! \top \clef treble b c! dis c b] }
  | \tuplet 7/4 { \bottom g!16[ ais \top cis d! e d cis] }
    \tuplet 7/4 { \bottom gis16[ b \top d e f! e d] }
    \tuplet 7/4 { \bottom a!16[ c! \top dis e fis e dis] }
    \tuplet 7/4 { \bottom ais16[ cis \top e fis g fis e] }
  | \bottom\stemDown b4 b, e,2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    \tempo 4 = 65
  }
}
