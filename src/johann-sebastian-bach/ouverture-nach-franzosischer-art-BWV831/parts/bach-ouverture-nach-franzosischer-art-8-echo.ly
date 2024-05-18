Global = {
  \key b \minor
  \time 2/4
  \include "../global.ly"
}

piano = \markup { "piano" }
forte = \markup { "forte" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | <d fis>8 r <fis b> r
  | ais ais16 b cis4
  | b8 b16 cis d8 cis16 d
  | e8 d16 cis d8 b
  %5
  | \stemNeutral d16^\piano cis b4 b16^\forte cis
  | d8 cis16 b \stemUp cis8 a
  | \stemNeutral cis16(^\piano b a4) a16^\forte b
  | cis8 b16 a \stemUp b8 gis16 a
  | b8 a16 gis a8 gis16 fis
  %10
  | \stemNeutral gis8 fis16 eis fis8 gis16 a
  | b cis d cis b a gis fis
  | eis fis eis fis gis8 cis,
  | \once\stemUp <a' cis>8^\piano r_\markup { \raise #3.5  "(piano)" } <cis fis> r
  | \stemUp eis eis16 fis <eis! gis>4
  %15
  | fis8 fis16 gis a8 gis16 a
  | b8 a16 gis a8 fis
  | d8^\forte d16 cis d8 e16 d
  | cis8 cis16 b cis8 fis
  | b,8 b16 a b8 b16 a
  %20
  | b cis, dis eis fis gis a b
  | cis8[ fis, gis eis]
  | \stemNeutral <a, fis'>[ <cis fis a> <fis a cis> <a cis fis>]
  | fis16^\piano( gis a b cis dis eis fis)
  | <a, cis fis>8[^\forte <fis a cis> <cis fis a> <a cis fis>]
  %25
  | fis''16^\piano e! d! cis b a gis fis
  | \stemUp a'4\rest b~
  | b a~
  | a gis8 fis
  | eis b16[^\piano a] b8 b16[^\forte gis]
  %30
  | eis8 b'16[^\piano gis] eis8 gis32^\forte[_( fis eis dis])
  | cis8 fis a16 gis fis eis
    \alternative {
      { fis2\mordent }
      { fis2 }
    }
    \bar "||"
  }
  \break
  \repeat volta 2 {
  | <fis a>8 r <a d> r
  %35
  | cis8 cis16 d <cis e>4
  | e,8 e16 fis g8 fis16 g
  | a8 g16 fis g8 e
  | \stemNeutral\slurNeutral g16(^\piano fis e4) b'16^\forte cis
  | \stemUp d!8 cis16 b <a cis>8 <e a>
  %40
  | \stemNeutral cis'16^\piano b a4 e'16^\forte fis
  | \stemUp g!8 fis16 e fis8 a,16 b
  | c8 b16 a b8 a16 g
  | a8 g16 fis g8 a16 b
  | \stemNeutral c! d e d c b a g
  %45
  | fis g fis g a8 d,
  | \stemUp d'2~
  | d~
  | d~
  | d4~ d8 e16[^\forte d]
  %50
  | c!8 c16 b c8 d16 c
  | b8 b16 a b8 e
  | a, a16 g a8 a16 g
  | a b, cis! d e fis g a
  | b8[ e, fis dis]
  %55
  | <g, e'>[ <b e g> <e g b> <g b e>]
  | \stemNeutral e16(^\piano fis g a b cis! d! e)
  | <cis, e a>8[^\forte <e a cis> <a cis e> <cis e g>]
  | a16(^\piano b cis d e fis g e)
  | <a, d fis>8^\forte <fis a d> fis'16^\piano e d cis
  %60
  | b ais[^\forte b cis] d e fis d
  | <g, b e>8 <e ais cis> e'16^\piano d cis b
  | ais gis[^\forte ais b] cis d e cis
  | d fis b, fis' fis, fis' d fis
  | cis fis ais, fis' fis, fis' e fis
  %65
  | d fis b, fis' fis, fis' d fis
  | cis fis ais, fis' b, d e fis
  | \stemUp g8 g16 fis g8 a!16 g
  | fis8 fis16 e fis8 b
  | e,8 e16 d e8 e16 d
  %70
  | e8 e16[^\piano d] e8 e16[^\forte cis]
  | \stemNeutral ais8 e'16[^\piano cis] ais8 cis32[(^\forte b ais gis)]
  | fis8 b d16 cis b ais
  | b fis d b r4
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | b8 s b s
  | <cis fis> c\rest <fis ais!>4
  | b8 c,\rest b'4
  | cis8 b16 ais b8 <d, fis>
  %5
  | s2
  | s4 c8\rest <cis e>
  | s2
  | s4 d8 b\rest
  | cis b\rest cis b\rest
  %10
  | s2*4
  | cis'8 g\rest cis4
  %15
  | cis2~
  | cis
  | f,8\rest fis b4~
  | b8 e, a4~
  | a gis8 fis
  %20
  | eis16 f,\rest g8\rest g\rest s
  | \change Staff = "lower" \stemUp fis8[ \change Staff = "upper" \stemDown a b gis]
  | s2*4
  %26
  | d''8 d16 cis d8 e16 d
  | cis8 cis16 b cis8 fis
  | b,8 b16 a b8 b16 a
  | b8 s4.
  %30
  | s2*4
  | d,8 s d s
  %35
  | <e a> f\rest a4
  | s4 e8 s
  | fis e16 dis e8 <g, b>
  | s2*3
  %41
  | s4. fis'8
  | e[ d] d c\rest
  | d s d s
  | s2*2
  %46
  | <d g b>8 g\rest g g\rest
  | fis fis16 g a4
  | g8 g16 a b8 a16 b
  | c!8 b16 a b8 s
  %50
  | e,\rest e a4~
  | a8 d, g4~
  | g fis8 e
  | dis16 s8. s4
  | \change Staff = "lower" \stemUp e,8[ \change Staff = "upper" \stemDown g a fis]
  %55
  | s2*12
  | r8 b' e4~
  | e8 a, d4~
  | d cis8 b
  | ais g\rest f4\rest
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2*2
  | s4. fis8
  | g[ fis] fis s
  | s4 <d' fis>8 e\rest
  %5
  | <b e> d\rest s4
  | s4 <cis e>8 d\rest
  | <a d> c\rest gis c\rest
  | gis c\rest fis, c'\rest
  | s2*3
  %12
  | \change Staff = "upper" \stemDown fis8 \change Staff = "lower" \stemUp fis,16 gis a8 a16 b
  | cis8 b16 a b8 a16 gis
  | a8[ cis fis, fis']
  | eis cis fis16 f\rest f8\rest
  | s2*3
  %19
  | s4. <eis, gis>8
  | cis[ d d cis]
  | s2*16
  %38
  | s4 b'8 g
  | a[ \change Staff = "upper" \stemDown e' e cis]
  %40
  | \change Staff = "lower" \stemUp s4 e8 cis
  | d[ \change Staff = "upper" \stemDown a' a \change Staff = "lower" \stemUp d,]
  | g,[ a] g e'\rest
  | s2*3
  | a,8\rest g16 a b8 b16 c
  %45
  | d8 c16 b c8 b16 a
  | b8[ d g, g']
  | fis d g16 g\rest g8\rest
  | s2*3
  %52
  | s4. <dis, fis>8
  | b[ c c b]
  | s2*8
  %62
  | fis'8 s b s
  | ais ais16 b cis4
  | b8 b16 cis d8 cis16 d
  %65
  | e8 d16 cis <b d> a'\rest a8\rest
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | b8 r d r
  | fis fis, fis' e16 fis
  | \stemDown g8[ g, fis fis']
  | e[ fis b, b']
  %5
  | r4 b8_\forte a!
  | gis e a, a'
  | r4 a8_\forte gis
  | fis d gis, fis'
  | eis cis fis, gis16 a
  %10
  | \stemNeutral b8 a16 gis a8 b16 cis
  | d8[ cis d b]
  | cis16 b cis d cis b a gis
  | \stemDown fis8 e\rest e4\rest
  | \override MultiMeasureRest.staff-position = #-6
    R1*2/4*2
  %16
  | r4 r16 fis'_\forte gis a
  | \stemNeutral b8[ a gis e!]
  | a[ gis fis e]
  | d[ cis d b]
  %20
  | cis r r \stemDown b
  | a[ d b cis]
  | \stemNeutral <fis, cis' fis> r r4
  | <e! e'!>8_\forte r r4
  | <d d'>8 r r4
  %25
  | <cis cis'>8_\forte r r4
  | <b b'>8 b''16 a gis fis gis e
  | a b a gis fis e d cis
  | d e d cis b cis d b
  | cis8 r r <cis eis gis>
  %30
  | <b cis gis'> r r <b cis eis>
  | <a cis fis>[ d! b cis]
    \alternative {
      { fis,8 fis'16 g! fis e! d cis }
      { fis,2 }
    }
    \bar "||"
  }
  \repeat volta 2 {
  | d'8 r fis r
  %35
  | a a, a' b16 cis
  | c8[ c, b b']
  | a b e, e,
  | r4 \stemDown g'8_\forte e
  | fis[ gis a a,]
  %40
  | r4 cis'8_\forte a
  | b[ cis d d,]
  | e fis g a16 b
  | \stemNeutral c8 b16 a b8 g
  | e[ d e c]
  %45
  | d16 cis d e d c b a
  | \stemDown g8 g\rest g4\rest
  | s2*2
  | r4 r16 e'_\markup { "(forte)" } fis g
  %50
  | \stemNeutral a8[ g fis d]
  | g[ fis e d]
  | c[ b c a]
  | b r r \stemDown a
  | g[ c a b]
  %55
  | \stemNeutral <e, b' e> r r4
  | <g g'>8 r r4
  | <a a'>8 r r4
  | <cis cis'>8 r r4
  | d8 d' r4
  %60
  | g,8[ d b g]
  | cis8 cis' r4
  | fis,8[ cis ais fis]
  | \stemDown\tieDown b r d r
  | fis2~
  %65
  | fis~
  | fis4 r16 b cis d
  | \stemNeutral e16 fis e d cis b cis a!
  | d e d cis b a g fis
  | g a g fis e fis g e
  %70
  | fis8 r r <fis ais cis>
  | <e fis cis'> r r <e fis ais>
  | <d fis b>[ g! e fis]
  | b,4 b,
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
}

\score {
  \new PianoStaff
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 831"
    title = \markup { "Echo" }
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
