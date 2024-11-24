Global = {
  \key b \minor
  \time 2/2
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \label #'Ouverture
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \repeat volta 2 {
  %1
  | r4 r8 r32 fis g e fis4.\mordent d'8
  | \once\stemUp\appoggiatura d8 <e, g cis>2 <fis a cis fis>4~\arpeggio fis'8~ fis32 e d cis
  | \stemUp\tieUp b4. d16\rest b e2~\arpeggio
  | e8~ e32 d e cis fis8. e16 d4.\prall c16\rest cis
  %5
  | \slurUp d4 \appoggiatura cis8 b4 \appoggiatura g8 fis4. r16 g
  | a!4~ a8~ a32 g a fis d'4.\arpeggio e16\rest e
  | \appoggiatura d8 cis4 b8 a  \appoggiatura d8 cis4. e16\rest dis
  | \appoggiatura dis8 e4~ e32 fis e dis e16 fis fis4.\trill f16\rest e32 fis
  | g4~ g8. fis16 e8. d16 cis8.\prall b16
  %10
  | ais4~\prallprall ais8. e'16 d4~\prallprall d8. cis16
  | cis4~ cis8~ cis32 cis, d b cis4.\mordent cis'8
  | b4~\arpeggio b8~ b32 cis, d b  cis4.\mordent <eis b'>8
  | \appoggiatura b'8 a4~ a8~ a32 cis, d! b \appoggiatura b cis4.\parenthesize\mordent a'8
  | \appoggiatura a8 <b, d gis>2 <cis e! gis cis~>4\arpeggio cis'8_~ cis32 b a gis
  %15
  | fis4. r16 fis b2~\arpeggio
  | b8~ b32 a b gis cis8. b16 a4.\prall r16 gis16
  | \appoggiatura gis8 \once\tieNeutral <fis a>4~ q16. fis32 gis![ a b cis] \stemNeutral d8. b16 gis8. b16
  | \appoggiatura fis8 eis4 \appoggiatura dis8 cis4 fis4.\mordent r16 fis
  | fis8~\mordent fis32 gis fis eis fis8.\mordent gis16 gis4.\downprall fis8
  %20
    \alternative {
      {
  |      <ais, cis fis>1
      }
      {
  |      \time 6/8 fis'4 fis'8 fis,8^. cis'^. e!^.
      }
    }
  }
  \break
  \repeat volta 2 {
  | fis,8_. b_. d_. fis, gis16 ais b cis
  | d e d cis
    \change Staff = "lower" \voiceThree \stemUp b
    \change Staff = "upper" \voiceOne \stemNeutral cis
    dis cis dis e cis dis
  | e dis e fis dis e fis4.~
  %25
  | fis8 e16 dis e8~ e b e~
  | e cis e~ e d16 cis d b
  | \stemUp cis4~ cis16 b cis b cis d b cis
  | d4. e~
  | e4~ e16 cis dis cis dis e cis dis
  %30
  | e dis e fis dis e fis4.~
  | fis16 a! g fis e d cis b cis d b cis
  | d cis d e cis d e4.~
  | e8 d16 cis d8 d,8 a' c
  | \stemNeutral d, g b d, e16 fis g a
  %35
  | b c d b e8 \stemUp e,8 b' d
  | \stemNeutral e, a cis e, fis16 gis a b
  | cis d e cis fis8 \stemUp fis,8 cis' e
  | \stemNeutral\tieNeutral fis, b d fis, gis16 ais b cis
  | d cis b cis d8~ d g,^. c^.
  %40
  | d, c' r b16 a g a b8~
  | b e,_. a_. b,_. a'_. r
  | g16 fis e fis g e \stemUp\tieUp d'8\rest e4~
  | e8 d4~ d8 cis b~
  | b16 d cis b ais gis ais gis ais b gis ais
  %45
  | b ais b cis ais b cis8 fis, <cis' e>~
  | q fis, d'~ d4 cis8
  | b16[ ais gis fis b8.\parenthesize\mordent]
    \once\override Staff.Script.extra-offset = #'(-1.6 . 0)
    cis16\turn cis8.\trill[ b16]
  | \slurDown <d, fis b>4\arpeggio fis8 b,16( d fis d fis d)
  | b( e g e g e) ais, e' fis e d cis
  %50
  | \stemNeutral d cis b cis d e fis e fis b ais b
  | g fis g b ais b fis cis' e g fis e
  | fis e d cis b ais b d fis d fis d
  | b e g e g e a, e' g e g e
  | a, d fis d fis d g, d' fis d fis d
  %55
  | g, fis g a cis e d fis e d cis b
  | cis d cis b a b cis b cis d b cis
  | d cis d e cis d e d cis b a g
  | fis g a b c a b a g fis e d
  | cis! a' d,8 g\arpeggio fis16 e e8.\prall d16
  %60
  | d4 fis'8 fis,^. cis'^. e^.
  | fis,_. b_. d_. fis, gis16 ais b cis
  | \stemUp d e d cis b cis \stemDown dis cis dis e cis dis
  | e dis e fis dis e fis e dis cis b a
  | \stemUp g fis e g b8~ b16 a b d f8~
  %65
  | f16 b, cis! e a8~ a gis16 fis e d
  | cis b a b cis d e d e fis d e
  | fis4. s
  | \stemNeutral\tieNeutral d16 b a g fis e d8 a' c~
  | c b16 a g fis e8 b' d~
  %70
  | d cis16 b a g! \stemUp\tieUp fis8 cis' e~
  | e d cis~ cis b16 a! gis fis
  | \stemNeutral\tieNeutral eis fis gis8 cis cis,_. gis'_. b_.
  | cis,_. fis_. a_. cis, dis16 eis fis gis
  | a gis a b cis dis eis dis eis fis dis eis
  %75
  | fis eis fis gis eis fis \stemUp\tieUp gis8 cis, b~
  | b a a'~ a gis fis~
  | fis16 eis dis cis fis8~ fis16 b, gis8.\prall fis16
  | <a, cis fis>4 \clef bass \stemNeutral\tieNeutral\slurNeutral cis8 fis,16( a cis a cis a)
  | fis( b d! b d b) eis, b' cis b a gis
  %80
  | a gis fis gis a b \clef treble cis b cis fis eis fis
  | d cis d fis eis fis cis gis' b d cis b
  | cis b a gis fis eis fis a cis a cis a
  | fis b d b d b e, b' d b d b
  | e, a cis a cis a d, a' cis a cis a
  %85
  | d, cis d e gis b a cis b a gis fis
  | gis a gis fis e fis gis fis gis a fis gis
  | a gis a b gis a b a gis fis e d
  | cis d e fis g e fis e d cis b a
  | gis e' a,8 d cis16 b b8.\prall a16
  %90
  | a e'[ a gis a b] cis b cis d b cis
  | dis cis dis e dis e fis a g fis e dis
  | \stemUp\tieUp e2.
  | e~
  | e16 cis d e d cis \stemNeutral b8 b' a,!
  %95
  | gis b'16 a gis fis eis fis gis8 b,
  | \stemUp a cis fis a, cis e
  | d16 cis d e d cis b a b cis d b
  | \stemNeutral\tieNeutral gis' fis eis dis cis b a gis fis gis a8~
  | a_. d_. g,_. e'^. g,^. r
  %100
  | fis16 e d e fis8~ fis8 b_. e,_.
  | cis'_. e,_. r d16 cis b cis d8~
  | d g_. c,!_. a'_. c,_. r
  | b_. b'_. g_. e_. a_. fis_.
  | e16[ dis cis b e8.\mordent]
    \once\override Parentheses.extra-offset = #'(-1.6 . 0)
    \once\override Staff.Script.extra-offset = #'(-1.6 . 0)
    fis16 ^\parenthesize\turn
    fis8.\prallprall[ e16]
  %105
  | \stemUp e16 b' cis! dis e fis \stemNeutral g8^. e^. g^.
  | b, e g a,16 b cis d e fis
  | g fis e d cis b e8^. cis^. e^.
  | g, cis e fis,16 gis ais b cis d
  | e d cis b ais cis fis, b d b d b
  %110
  | g b d b d b g a cis a cis a
  | fis a cis a cis a fis g b g b g
  | e g b g b g e fis ais fis ais fis
  | d fis b fis d fis b, d fis d fis d
  | b e g e g e ais, e' fis e d cis
  %110
  | d cis b cis d e fis e fis b ais b
  | g fis g b ais b fis cis' e g fis e
  | fis e d cis b ais b cis d b a d
  | g, b e g, d' g, cis b a cis g cis
  | fis, a d fis, c' fis, b a g b fis b
  %115
  | e, g cis e, b' e, ais gis fis ais e ais
  | d, b' cis, b' b, b' ais, fis' cis' fis, cis' fis,
  | b, fis' d' fis, d' fis, e d' cis b cis e
  | ais, e' d cis d fis b,8 cis ais\prall
  | b16 cis d e fis g ais, g' fis e d cis
  %120
  | d fis e d cis b cis e d cis b ais
  | b8 fis16 ais b cis d cis d e cis dis
  | e dis e fis dis e \stemUp\tieUp fis8 b, a'~
  | a8 g16 fis e d \stemNeutral cis b' a g fis e
  | fis a g fis e d e g fis e d cis
  %125
  | d8. b16 a g \stemUp d8 a' c
  | \stemNeutral d, g b d, e16 fis g a
  | b c d b e8 \stemUp e, b' d
  | \stemNeutral e, a cis e, fis16 gis a b
  | cis d e cis fis8 \stemUp fis, cis' e
  %130
  | \stemNeutral fis, b d fis, gis16 ais b cis
  | d cis b cis d8~ d g,^. c^.
  | d, c' r b16 a g a b8~
  | b e,_. a_. b,_. a'_. r
  | g16 fis e fis g e s8 \stemUp\tieUp e'4~
  %135
  | e8 d4~ d8 cis b~
  | b16 d cis b ais gis ais gis ais b gis ais
  | b ais b cis ais b cis8 fis, <cis' e>~
  | q fis, d'~ d4 cis8
  | b16[ ais gis fis b8.\parenthesize\mordent]
    \once\override Staff.Script.extra-offset = #'(-1.6 . 0)
    cis16\turn
    cis8.[\prall b16]
    \bar "||"
    \break
  %145
  | \time 2/2 b4~\arpeggio b8~ b32 fis g e \stemNeutral\tieNeutral
    \once\override Staff.Script.extra-offset = #'(0.4 . 0)
    fis4.\mordent d'8
  | <e, g cis>4.\arpeggio r16 dis' \stemUp\tieUp dis4.\prallprall f16\rest cis32 dis
  | e4~
    \set subdivideBeams = ##t
    e32 d c b a g fis e \stemUp\tieUp a2~
    \set subdivideBeams = ##f
  | a8~ a32 g a fis b8. a16 g4.\mordent fis8
  | \stemNeutral <b, e g>4 \appoggiatura fis'8 <g, b e>4 <e' g b>4.\arpeggio cis'8
  %150
  | \stemUp d4~\arpeggio d8~ d32 cis d b e8. d16 cis8.\prall b16
  | cis8. b16 a8. b16 cis8. d16 e8. fis16
  | g4~\arpeggio g8~ g32 fis g e a8. g16 fis8.\prall e16
  | fis4~\arpeggio fis8~ fis32 e d cis b16 cis d32 cis b16 e8. e16
  | e4~ e8~ e32 d cis d
    \once\override Staff.Script.extra-offset = #'(0.4 . 0)
    d4.\prallprall cis8
  %155
  | cis4~ cis8~ cis32 fis g! e \once\stemDown fis4.\mordent r16 a,!
  | \once\slurUp \appoggiatura a8 gis4~ gis8~ gis32 e' fis d \once\stemDown e4.\mordent r16 g,!
  | s2. s8.. d'32~
  | d8. g16\rest s4 c,4~ c8~ c32 b c a
  | \stemNeutral b8.\mordent g32 a b8. cis32 dis \stemUp e4. g16\rest e
  %160
  | e8~\arpeggio e32 d e cis fis8. e16
    \once\override Staff.Script.extra-offset = #'(0.2 . 0)
    d4.\prall\parenthesize\downprall cis8
  | d4~ d16. cis32 b[ a g fis] e8. cis'16 d8.\mordent e16
  | ais,4\prall gis8 fis b4.\mordent r16 <fis b>
  | b4.\turn cis8 cis4.\downprall b8
    \alternative {
      {
  |      \time 6/8 <d, fis b>4 fis'8 \stemNeutral fis,^. cis'^. e^.
      }
      {
  |      \time 2/2 <d, fis b>1\fermata
      }
    }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s1*2
  | e8\rest e32\rest a g fis e4~ <e g b>4.\arpeggio g16\rest cis
  | \once\stemUp\appoggiatura b16 ais4. b16\rest cis b4. s16 ais!
  %5
  | b4 fis d4. s8
  | s2 <fis a>4\arpeggio s
  | \once\stemUp  a s a2
  | b1~
  | b8. b16 ais4 b g
  %10
  | fis2 fis
  | eis4 s2.
  | <d! fis>4\arpeggio s2.
  | fis4 fis8 s s2
  | s1
  %15
  | b,8\rest b32\rest e d cis b4~ <b d>\arpeggio s
  | \appoggiatura fis'8 eis4. e16\rest gis fis4. s16 eis
  | cis4 s2.
  | s1
  | s2 eis
  %20
  | s1
  | \time 6/8 fis4 s8 s4.
  %22
  | s1*6/8
  | \staffLower\clef treble \stemNeutral r4 b8 b,_. fis'_. a!_.
  | b,_. e_. g!_. b, cis16 dis e fis
  %25
  | g a g fis e fis gis^2 fis^4 gis^3 a fis gis
  | ais gis ais b gis ais b8 fis b~
  | b16 \staffUpper\stemDown\tieDown b ais gis ais8~ ais4.
  | b16 ais b cis ais b cis8 ais g
  | fis16 cis' b ais b8~ b4.~
  %30
  | b b16\rest e dis cis b ais
  | b8 g\rest g\rest d4\rest d8\rest
  | d4\rest d8\rest f16\rest d' cis b a gis
  | a4. 	\once\override NoteColumn.force-hshift = #1.4 fis8 s4
  | s1*6/8
  %35
  | s4. \once\override NoteColumn.force-hshift = #1.4 gis8 s4
  | s1*6/8
  | s4. \once\override NoteColumn.force-hshift = #1.4 ais8 s4
  | s1*6/8*4
  %42
  | s4. fis8 e' cis
  | fis, d' b g! e d
  | cis16 b\rest b8\rest b\rest fis'4.
  | gis ais~
  | ais8 s b e,16 fis e8 e\rest
  | s4. s8 ais4
  | s1*6/8*11
  %59
  | s4 e8\arpeggio d cis4
  | d4 s2
  | s1*6/8
  | e4\rest b'8 s4.
  | s1*6/8
  | s4. 	c,4\rest d8
  %65
  | c4\rest e8 f\rest d b
  | s4. cis'
  | d16 cis d e cis d <cis e g>8\arpeggio fis16 e d cis
  | s1*6/8*2
  %70
  | s4. fis,~
  | fis4 eis8 fis c\rest c\rest
  | s1*6/8*3
  %75
  | s4. f4\rest gis8~
  | gis fis cis'~ cis b a
  | gis e\rest e\rest e16\rest gis eis4
  | s1*6/8*11
  %89
  | s4 b8\arpeggio a gis!4
  | a16 s s4 s4.
  | s1*6/8
  | \staffLower\stemUp f'16\rest b, e dis e \staffUpper fis \stemDown g fis g a fis gis
  | ais gis ais b ais b cis e d cis b ais
  | b8 g\rest g\rest s4.
  %95
  | s1*6/8
  | fis4. fis~
  | fis c4\rest c8\rest
  | s1*6/8*6
  %104
  | s2 dis4
  | e16 s8. s2
  | s1*6/8*21
  %127
  << {
  | s2 b'4_~
  | b s2
  } \\ {
  | s2 s8 \stemUp \once\omit Flag dis!~
  | \stemDown dis8 e s2
  } >>
  | s1*6/8
  %130
  | s4.
    \once\override NoteColumn.force-hshift = #1.4 fis,8
    s4
  | s1*6/8
  | s4.
    \once\override NoteColumn.force-hshift = #1.4 gis8
    s4
  | s1*6/8
  | s4.
    \once\override NoteColumn.force-hshift = #1.4 ais8
    s4
  | s1*6/8*4
  %139
  | s4. fis8 e' cis
  | fis, d' b g! e d
  | cis16 c\rest c8\rest c\rest fis4.
  | gis
    \once\shape #'((( 0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0))) Tie
    ais~
  | ais8 b,\rest b' e,16 fis e8 e\rest
  | s4 b'4 ais4
  %145
  | <d, fis>4.\arpeggio s8 s2
  | s2 b'~
  | b4~ b16 s8 s32
    \once\omit Flag \once\omit Stem e,32~ e2
  | dis4 e8. fis16 e4. dis8
  | s1
  %150
  | <d a'>4\arpeggio s d\rest e~
  | e2 a8. b16 cis8. dis16
  | <b e>4.\arpeggio g8\rest g4\rest cis
  | <a d>4\arpeggio s2 s8. <g b>16
  | <fis cis'~>8 cis'32 b ais gis ais4 b2
  %155
  | ais4~ ais8 s2 s16 fis
  | \appoggiatura fis8 e4~ e8 s2 s16 e
  | \stemUp\tieUp\slurUp \appoggiatura g8 fis4~ fis8~ fis32 d' e cis
    \stemNeutral d16 cis32( b) cis16 b32( ais) b16 cis32( d) b16 cis32( d)
  | \stemDown\tieDown g,8. e32 fis g8. a32 b e,8\rest e32\rest b' a g a8. s16
  | s2 g8.\rest b16 \slurDown \once\stemUp \appoggiatura a8 g4
  %160
  | <fis cis'>8\arpeggio s8 g8\rest g16\rest cis b4. ais8
  | b4~ b16. s32 s8 s2
  | fis4 c8\rest fis~ fis4. s16 d
  | << {
      \stemDown d4 g \once\override NoteColumn.force-hshift = #0.6 fis e
    } \\ {
      b'2 ais
    } >>
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*4
  %5
  | a'8.\rest cis,16 d8. fis16 b8. b16\rest b4\rest
  | f8\rest f32\rest a, b cis d8. e16 fis8. s16 s4
  | \staffUpper\stemDown e'2 s
  | s1
  | \staffLower\stemUp s2 d8.\rest b16 e8. d!16
  %10
  | cis8. e16\rest d4\rest d8.\rest fis,16 gis8. a!16
  | gis8. s16 s4 a8\rest a32\rest cis, dis eis fis4~
  | fis8. s16 s4 d8\rest d32\rest gis, a b cis4~
  | cis16[ cis dis eis] fis[ eis fis gis] a2
  | s1
  %15
  | s2 \staffUpper\stemUp fis'4. g16\rest \once\stemDown gis
  | \staffLower s1
  | s2. b,8.\rest d,16
  | <cis gis'>4 s2.
  | s2 cis~
  %20
  | cis4 s2.
  | \time 6/8 s4. s
  %22
  | s1*6/8*5
  %27
  | c'4\rest \clef bass fis8 fis,-. cis'-. e-.
  | fis,-. b-. d-. fis, gis16 ais b cis
  | d e d cis b8 b, fis' a
  %30
  | b, e g s4.
  | s a,8 e' g
  | a, d fis a,8 b16 cis e d
  | \stemNeutral fis e fis g! fis e d cis d e c d
  | e d e fis d e fis a g fis e d
  %35
  | g8. a16 g fis e d e fis d e
  | fis e fis gis e fis gis b a gis fis e
  | a8. b16 a g fis e fis g e fis
  | gis fis gis ais fis gis ais cis b ais gis fis
  | b8. a16 g fis e d e fis e d
  %40
  | fis e fis g e fis g8. fis16 e d
  | cis! b cis d b cis dis cis dis e cis dis
  | e8. d!16 cis b ais gis ais b gis ais
  | b ais b cis d b e d e fis g! e
  | fis fis, ais cis fis8 fis, cis' e
  %45
  | fis, b d fis, gis16 ais b cis
  | d b cis d e fis g! a! g fis g e
  | \stemUp s4 g8~ g fis4
  | s1*6/8*2
  %50
  | a8\rest d, fis b d fis
  | b, e g ais, fis'16 e d cis
  | d4 d8\rest d4\rest d8~
  | d b c\rest c4\rest cis8~
  | cis a c\rest c4\rest b8~
  %55
  | b a g fis gis4
  | a8 c\rest c\rest a, g' a
  | b, fis' a cis, e a
  | s1*6/8*4
  %62
  | s4. b8 fis' a!
  | cis, e g! dis fis dis
  | e4 d8\rest e, gis b
  | e, a cis e, b' gis
  | a4 s8 a, e' g
  | a, d fis \stemNeutral a,8 b16 cis d e
  | fis e fis g a g fis e fis g a fis
  | g fis g a b a gis fis gis a b gis
  %70
  | a gis a b cis b ais gis ais b cis ais
  | b b, b' a b cis d8 d, d'
  | cis b16 a gis fis eis dis eis fis gis eis
  | fis eis fis a gis fis eis dis cis b a gis
  | fis eis fis gis a fis \stemUp\tieUp cis8 gis' b
  %75
  | cis, fis a cis, dis16 eis fis gis
  | a fis gis a b cis d! e d cis d b
  | cis8 a d! b cis cis,
  | fis fis16 eis fis gis a8 fis r
  | b gis r cis eis, cis
  %80
  | r a' cis fis a cis
  | fis, b d eis, cis'16 b a gis
  | a4 a8\rest a4\rest a8~
  | a fis a\rest a4\rest gis8~
  | gis e a\rest a4\rest fis8~
  %85
  | fis e d cis dis4
  | e8 a\rest a\rest e,8 d' e
  | fis, cis' e gis, b e
  | a,16 b cis d e cis d8 d, d'~
  | d cis16 b a gis a8 e' e,
  %90
  | a cis e \clef treble r a' g
  | fis16 e fis g fis e dis8 \clef bass f8\rest d\rest
  | s1*6/8
  | cis16 b cis d cis b ais8 d\rest d\rest
  | d16\rest fis, b ais b cis d cis d e cis dis
  %95
  | \stemNeutral\tieNeutral \clef treble eis dis eis fis eis fis gis b a gis fis eis
  | \clef bass r16 cis, fis eis fis gis a gis a b gis a
  | b a b cis b cis d cis b a gis fis
  | eis dis cis dis eis cis fis8. e16 d cis
  | b a b cis a b cis b cis d b cis
  %100
  | d8. cis16 b a gis fis gis a fis gis
  | ais gis ais b gis ais b8. a16 g fis
  | e d e fis e d fis e fis g e fis
  | g fis g a b g c d c b c a
  | b8 g c a b b,
  %105
  | e r16 \clef treble b'' cis! dis e g b g b g
  | d g b g b g cis, e a g fis e
  | d8 r16 fis e d cis e g e g e
  | b e g e g e ais, cis fis e d cis
  | \clef bass b8 b, cis d16 fis b a g! fis
  %110
  | e g b g b g a, e' a g fis e
  | d fis a fis a fis g, d' g fis e d
  | cis e g e g e fis, cis' fis e d cis
  | b8 b, cis d b' r
  | e, b' r fis ais fis
  %115
  | \stemUp a'\rest d, fis b d fis
  | b, e g ais, fis'16 e d cis
  | d4 d8\rest s4.
  | s1*6/8*6
  %124
  | s4. fis,,8 cis' e
  | fis, b d fis, gis16 ais b cis
  | s4. b8 fis' a
  | b, e g s4.
  | s a,8 e' g
  | a, d fis \stemNeutral a, b16 cis d e
  %130
  | fis e fis g fis e d cis d e c d
  | e d e fis d e fis a g fis e d
  | g8. a16 g fis e d e fis d e
  | fis e fis gis e fis gis b a gis fis e
  | a8. b16 a g fis e fis g e fis
  %135
  | gis fis gis ais fis gis ais cis b ais gis fis
  | b8. a16 g fis e d e fis d e
  | fis e fis g e fis g8. fis16 e d
  | cis! b cis d b cis dis cis dis e cis dis
  | e8. d16 cis b ais gis ais b gis ais
  %140
  | b ais b cis d b e d e fis g! e
  | fis fis, ais cis \stemUp fis8 fis, cis' e
  | fis, b d fis, \stemNeutral gis16 ais b cis
  | s1*6/8
  | \stemUp\tieUp s4 g'8~ g fis4
  | s1*5
  %150
  | s4 b4~ b gis!
  | e'8.\rest b16 cis8.[ d16] e8 s4.
  | s4 e,4~\prall e a~
  | a8. s16 s2.
  | f8.\rest cis16 fis4~ fis s
  | s1*5
  %160
  | s2 fis\mordent
  | s1*2
  | s2 f4\rest fis
  | fis s2
  | fis1^\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \repeat volta 2 {
  %1
  | <b d fis b>2\arpeggio <b' d>_~
  | b4~  b8~ b32 a b g a8. fis16 d8. fis16
  | g4~  g8~ g32 fis e d cis4~ cis8~ cis32 b ais gis
  | fis2~ fis8~ fis32 fis' g e fis8. fis,16
  %5
  | \stemDown\tieDown b2~ b8. b16 a!8.\prall g16
  | fis2~ fis8. e16 fis8. g16
  | \stemNeutral a2~ a8. a16 g8.^\prall fis16
  | g8. g'16 fis8.^\prall e16 dis8. e32 fis b,8. cis32 dis
  | e4 fis \stemDown g e
  %10
  | fis8. e16 d8. cis16 b2~
  | b8. b16 a8.\prall gis16 a2
  | a8. a16 gis8.\prall fis16 eis4. cis8
  | fis4 s fis'2~
  | \stemNeutral\tieNeutral fis4~ fis8~ fis32 e! fis d e8. cis16 a8. cis16
  %15
  | d4~ d8~ d32 cis b a gis4~ gis8~ gis32 fis eis dis
  | cis2~ cis8~ cis32 cis' d! b cis8. cis,16
  | fis8. a16 d,8. fis16 b,8~ b32 fis' gis a \stemDown\tieDown b4~
  | b~ b16.[ cis32] dis32[ eis fis gis] a8. fis16 d8. fis16
  | \stemNeutral b,8. cis16 d8. b16 \stemDown cis4 cis,
    \alternative {
      {
  |      fis4~ \stemNeutral fis16.[ gis32] ais[ b cis d!] e!8. cis16 ais8. fis16
      }
      {
  |      \time 6/8 fis4 r8 r4 r8
      }
    }
  }
  \repeat volta 2 {
  | R1*6/8*1
  | s1*6/8*6
  | \stemDown r4 b'8 b,4.
  %30
  | b b8 cis16 dis e fis
  | g fis e d cis b a4.
  | a s
  | s1*6/8*11
  %44
  | s4. fis
  | fis s
  | s1*6/8
  | fis'8 d g e fis fis,
  | \stemNeutral b, b'16 ais b cis d8 b r
  | e cis r fis ais, fis
  %50
  | \stemDown b4 g8\rest d'4 b8\rest
  | e4 d8\rest fis4 d8\rest
  | d\rest b' fis d b b\rest
  | e8. g16 e g cis,8 a b\rest
  | d8. fis16 d fis b,8 g b\rest
  %55
  | cis4 a8 b4 e8
  | a e cis a4.
  | b cis
  | \stemNeutral\tieNeutral d16 e fis g a fis g8 g, g'~
  | g fis16 e d cis d8 a' a,
  %60
  | d16 fis e d cis b ais gis ais b gis ais
  | b cis d e fis gis ais cis b ais gis fis
  | b8 fis d \stemDown\tieDown b \clef treble b'\rest b\rest
  | b4 g8\rest b4 g8\rest
  | \clef bass e'8 b16 a g fis e4 b8\rest
  %65
  | e4 b8\rest e4 b8\rest
  | a' e16 d cis b a4.
  | a s
  | s1*6/8*6
  %74
  | s4. cis,
  | cis s
  | s1*6/8*4
  %80
  | fis4 e8\rest a4 g8\rest
  | b4 g8\rest cis4 g8\rest
  | b8\rest fis' cis a fis b\rest
  | b8. d16 b d gis,8 e g\rest
  | a8. cis16 a cis fis,8 d g\rest
  %85
  | gis4 e8 fis4 b8
  | e b gis e4.
  | fis gis
  | s1*6/8*2
  %90
  | s4. a'4.~
  | a~ a8 b16 a g fis
  | g8 r r r e' d
  | b,4\rest b8\rest b\rest fis'16 e d cis
  | b8 b\rest b\rest b4\rest b8\rest
  %95
  | \override MultiMeasureRest.staff-position = #-8
    R1*6/8
  s1*6/8*19
  %115
  | b4 a8\rest d4 r8
  | e4 r8 fis4 r8
  | r b fis d b b'
  | e, g b a cis, a
  | \stemNeutral d fis a g b, g
  %120
  | cis e g fis fis, g'!
  | fis e d e cis fis,
  | d' b fis g e' r
  | fis, b a! g e fis
  | b, b'16 cis d e \stemDown fis,4.
  %125
  | fis s
  | d'16 cis d e d cis b4.
  | b b8 cis16 dis e fis
  | g fis e d cis b a4.
  | a s
  | s1*6/8*11
  %141
  | s4. fis
  | fis s
  | d'16 b cis d e fis g! a! g fis g e
  | fis8 d g e fis fis,
    \bar "||"
  %145
  | \time 2/2 <b d fis>2 <b'~ d>
  | \stemNeutral\tieUp b4~ b8~ b32 a! b g a8. fis16 b,8. a'16
  | g16.[ e32] fis[ g a b] c4~ c16 b a g fis e dis e32 fis
  | b,8. a16 g8. a16 b4 b,
  | \stemNeutral\tieNeutral e2~ e16[ d! e fis] g[ fis g e]
  %150
  | fis8~ fis32 fis' g a \stemDown\tieDown b8. a16 gis4 e
  | a2~ a8. a16 g8.\prall fis16
  | e8. fis16 e8. d!16 cis4 a
  | d8. d,16 e8. fis16 \stemNeutral g4~ g8~ g32 fis g e
  | \stemDown ais4 a8.\rest fis16 b4 \stemNeutral\tieNeutral b,
  %155
  | fis'8~ fis32 fis' g! e fis8. cis16 dis8. e32 fis b,8. cis32 dis
  | e,8~ e32 e' fis d! e8. b16 cis8. d32 e a,8. b32 cis
  | d,8~ d32 d' e cis d8. ais16 b8. cis32 d g,8. a32 b
  | e,2~ e8. e16 fis8. d16
  | g2~ g16[ b cis dis] e[ fis g e]
  %160
  | ais,4~ ais8~ ais32 gis ais fis \stemDown fis'4 fis,
  | \stemNeutral\tieNeutral <b~ fis'>8 b32 fis' gis ais b8. a16 g8. fis16 e8.^\prallprall d16
  | e4~ e16.[ fis,32] gis[ ais b cis] d8. fis16 b,8. d16
  | g,4 e \stemDown fis2
    \alternative {
      {
  |      \time 6/8 b4 r8 r4 r8
      }
      {
  |      \time 2/2 b1
      }
    }
  }
  \fine
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
    opus = ##f % "BWV 831"
    title = \markup { "Ouverture" }
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
