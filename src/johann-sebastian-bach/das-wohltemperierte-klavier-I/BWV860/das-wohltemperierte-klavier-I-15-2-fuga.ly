Global = {
  \key g \major
  \time 6/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  %1
  | g'8-. a16( g fis g  a8-) b16( a g a
  | b8-.) a-. g-.  d-. c'4->(
  | b8-.) a-. g-.  fis-. e'4->(
  | d8-.) e16( d c b)  a8-.  c16( b a g)
  %5
  | \voiceOne fis8-. g-. a-.  g-. a-. b-.
  | a8 b16 cis d b  cis b cis d e cis
  | d16 cis d e fis d  e d e fis g e
  | fis8 g16 fis e d  g4.~
  | g16 fis e g d g  cis, g' b, g' a, g'
  %10
  | fis8-. d-. e-.  fis-. g-. a~
  | a8 d,-. g~  g fis-. e-.
  | d8-. c-. b-.  a4 r8
  | r4 d8~  d c a'~
  | a8 g4~  g8 a16 g fis e
  %15
  | d2.~
  | d8 d-.[ c-.]  b-. a-. g-.
  | c16 d e4~  e16 d c b a c
  | b16 c d4~  d16 c b a g b
  | a16 b c4~  c16 b a g fis a
  %20
  | g16 a b4~  b8 e, a~
  | a16 g a8[ b]  c16 d c b a g
  | \oneVoice fis!8.\prall e32 fis g8~  g16 b a g fis e
  | d8 r r r4 r8
  | \voiceOne a'8 g16 a b a  g8 fis16 g a g
  %25
  | \oneVoice fis8-. g-. a-.  d-. e,4->(
  | fis8-.) g-. a-.  b-. cis,4->(
  | d8-.) d16 e fis g  a8 fis16 g a b
  | \voiceOne c4 b8 a4.
  | g16 g' fis e d fis  e fis e d c e
  %30
  | d e d c b d  c d c b a c
  | b16 a g b fis b  e, b' d, b' cis, b'
  | a16 g fis a e a  d, a' cis, a' b, a'
  | g16 fis e g d g  cis, g' b, g' a, g'
  | \oneVoice fis16 d' c! b a g  fis e d c b a
  %35
  | g16 a b g c g  d' g, e' g, f' g,
  | e'16 c' b d a d  gis, d' fis,! d' e, d'
  | c16 a b cis dis e  fis g a b c! dis,
  | e8-. fis16( e dis e)  fis8-. g16( fis e fis)
  | g8-. fis-. e-.  b-. a'4->(
  %40
  | \voiceOne g8-.) fis-. e-.  dis-. c'4->(
  | b8) c16( b a g  fis8-.) a16( g fis e
  | dis8-.) a'-. g-.  fis-. e-. dis-.
  | e8-. d!-. c-.  d-. c-. b-.
  | c16 c' b a g b  a b a g fis a
  %45
  | g16 a g fis e g  fis g fis e dis fis
  | e8 fis16 g a8~  a g16 a b8~
  | b8 a g  fis16 g a8 dis,
  | e4 b8  a4.~
  | a4 a8 g4.~
  %50
  | \oneVoice g4 g8 fis4.~
  | fis16 b cis b ais b  cis8 d16 cis b cis
  | d8-. cis-. b-.  ais-. g'4->(
  | fis8-.) g16( fis e d  cis8-.) e16 d cis b
  | ais16 b cis ais d ais  e' ais, fis' ais, g' ais,
  %55
  | fis'16 ais, b fis'  e32[ d cis e]  e16 gis, ais e'  d32[ cis b cis]
  | \voiceOne d2.~
  | d2.~
  | d16 fis,32 gis a16 e b' e,  cis' e, d' fis, e' g,
  | \oneVoice fis16 g32 a b16 fis cis' fis,  d' fis, e' g, fis' a,
  %60
  | g16 fis g b e g,  fis b a cis d8~
  | d8 cis4  d8-. e16( d cis d
  | e8-.) fis16( e d e  fis8-.) g16( fis e d)
  | cis8-. b'4~  b16 a b a g fis
  | e2.~\trill
  %65
  | e16 a32 g fis16 a e a  d, a' cis, a' b, a'
  | g16 fis e g d g  cis, g' b, g' a, g'
  | fis16 e d fis cis fis  b, fis' a, fis' g, fis'
  | e16 d cis e b e  a, e' g, e' fis, e'
  | d16 fis, e g d' cis  d4.~
  %70
  | \voiceOne d2.~
  | d8 c4~  c8 b4~
  | b8 \oneVoice a4~  a16 g a g fis! g
  | fis16 d32 e fis16 d g d  a' d, b' d, c' d,
  | \oneVoice b'16 g' f e d c  b a g f e d
  %75
  | c16 e' d c b a  gis fis e d c b
  | a16 b cis a d a  e' a, fis'! a, g'! a,
  | \voiceOne fis'8 b g  e a fis
  | g4.~  g16[ a] a8.\trill g32 a
  | b8-. c16( b a b)  c8-. d16( c b c)
  %80
  | d8-. c-. b-.  a-. g'4->
  | fis8-. e-. d-.  cis-. bes'4->
  | a16 g fis e d8  r16 g8 c,16 g' fis
  | g16 fis32 e d16 g c, g'  b,8 g' a,
  | b16 d32 c b16 d a d  g,8 c4~
  %85
  | c32 g a b c16 g d' g,  e'32 b c d e16 c fis! c
  | g'4~ g16 fis  g4.
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemNeutral\tieNeutral
  %1
  | s2.*4
  | \voiceTwo d'8 e16( d cis d  e8) fis16( e d e
  | fis8-.) e-. d-.  a-. g'4->(
  | fis8-.) e-. d-.  cis-. b'4->(
  | a8-.) b16( a g fis)  e8-. g16( fis e d)
  | cis8-. g'-. fis-.  e-. d-. cis-.
  %10
  | d16 e fis d g d  a' d, b' d, c'! d,
  | b'4. c~
  | c8 fis, g~  g fis16 g a fis
  | g16 fis g a b g  a g a b c a
  | b8 c16 b a g  c4.->~
  %15
  | c16 b a c g c  fis, c' e, c' d, c'
  | b8 f e  d c b
  | r4 g'8-.  fis!4.~
  | fis4 fis8-.  e4.~
  | e4 e8-.  d4.~
  %20
  | d8 c16( d e d  c8-.) b16( c d c
  | b8-.) c-. d-.  g-. \change Staff = "lower" \voiceThree a,4(
  | b8-.) c-. d-.  e-. fis,4->( |
  | g8-.) g16( a b cis  d8-.) b16 cis d e |
  | \change Staff = "upper" \voiceTwo fis8-. e-. dis-.  e-. d-. cis-.
  %25
  | \change Staff = "lower" \voiceThree d8 cis16 b a c  b c b a g b
  | a16 b a g fis a  g a g fis e g
  | fis16 g fis e d e  fis g a b c! d
  | fis,8 \change Staff = "upper" \voiceTwo a' g~  g g fis
  | g8 r r r4 r8
  %30
  | R2.
  | r4 d8 cis r r
  | r4 cis8 b r r
  | r4 b8 a r r
  | s2.*6
  %40
  | e'16 dis e fis g e  fis e fis g a fis
  | g8 a16 g fis e  a4.~
  | a16 g fis a e a  dis, a' cis, a' b, a'
  | g8 fis16( g a g)  fis8 e16( fis g fis)
  | e8-. fis-. g-.  c-. dis,4->(
  %45
  | e8-.) fis-. g-.  a-. b,4->
  | c16 b a b c d  e dis e fis g a
  | b4.~  b8 c fis,
  | e16 fis g4->~  g16 fis e dis cis e
  | d16 e fis4->~  fis16 e d cis b d
  %50
  | \change Staff = "lower" \voiceThree cis16 d e4->~  e16 d cis b ais cis
  | b8 r r s4.
  | s2.*4
  %56
  | \change Staff = "upper" \voiceTwo b16 cis d b e b  fis' b, gis' b, a'! b,
  | gis'8 e fis  gis a b
  | e,8. d16 cis b  \change Staff = "lower" \voiceThree a b a g! fis e
  | d8 r r r4 r8 |
  %60
  | r4 r8  d e16 d cis! d
  | e8 fis16( e d e  fis8-.) e-. d-.
  | cis8-. b'4->  a8 b16 a g fis
  | e8 g16 fis e d  cis4 d8~
  | d16 g32 fis e16 g d g  cis,g' b, g' a, g'
  %65
  | fis16 g a4~  a16 g fis e d fis
  | e16 fis g4~  g16 fis e d cis e
  | d16 e fis4~  fis16 b, cis d e fis
  | g16 a g fis e d  cis8 r r
  | s2.
  %70
  | \change Staff = "upper" \voiceTwo r4 r8  r16 g'' f e d f
  | e16 f e d c e  d e d c b d
  | \change Staff = "lower" \voiceThree c16 d c b a c  b4.
  | a8 \change Staff = "upper" \voiceTwo r r r4 r8
  | s2.*3
  | d8 c!16 d e d  c8 b16 c d c
  | \change Staff = "lower" \voiceThree b8 c b  e fis,4
  | g8-. \change Staff = "upper" \voiceTwo a'16( g fis g)  a8-. b16( a g a)
  %80
  | b8-. a-. g~  g d' cis
  | d8 g, fis  e cis'4
  | c!4~ c16 b32 a  b8 a4
  | b8 b a  g4 fis8
  | g8 g f  e4 es8
  %85
  | d8[ e! <f b>8*1/2]
    \once\omit Stem \once\omit Flag g16~
    <g c>8 g a
  << {
    \voiceFour b4 <a c>8  <b d>4.
  }
  \new Voice {
      \voiceTwo
      \once\override Rest.X-offset = 1 e16\rest
      d[ e c]^~
      \once\omit Stem \once\omit Flag
      \override NoteColumn.ignore-collision = ##t
      \hideNotes c8 s4.
  } >>
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  %1
  | R2.*10
  | g8^. a16( g fis g  a8^.) b16( a g a
  | b8^.) a^. g^.  d^. c'4->(
  | b8^.) a^. g^.  fis^. e'4->(
  | d8^.) e16( d c b  a8^.) c16( b a g
  %15
  | fis4) e8  d16 e d c b a
  | g16 a b g c g  d' g, e' g, f' g,
  | e'16 d c e b e  a, e' g, e' fis, e'
  | d16 c b d a d  g, d' fis, d' e, d'
  | c16 b a c g c  fis, c' e, c' d, c'
  %20
  | b8-. a-. g-.  a-. g-. fis-.
  | g16 g' f e d f  \voiceFour e f e d c e
  | d16 e d c b d  c d c b a c
  | b16 c b a g a  b cis d e fis g
  | \oneVoice fis8-. b-. b,-.  e-. a-. a,-.
  %25
  | \voiceFour d8-. e-. fis~  fis g-. cis,-.
  | d8-. r r r4 r8
  | \override MultiMeasureRest.staff-position = #-6
    R2.
  | d8-. c16 d e d  \oneVoice c8-. b16 c d c
  | b8-. c-. d-.  g-. a,4->(
  %30
  | b8-.) c-. d-.  e-. fis,4->(
  | g16) a b4->~  b16 a g fis e g
  | fis16 g a4~  a16 g fis e d fis
  | e16 fis g4~  g16 fis e d cis e
  | d16 e fis d g d  a' d, b' d, c'! d,
  %35
  | b'16 g' f e d c  b a g f e d
  | c16 d e fis! gis a  b c d e fis gis
  | a16 g! fis a e a  dis, a' cis, a' b, a'
  | g8-. c!-. b-.  a-. b-. b,-.
  | e16 fis g e a e  b' e, cis' e, dis' e,
  %40
  | e'8-. r r r4 r8
  | \override MultiMeasureRest.staff-position = #0
    R2.*6
  | r16 b,32 cis dis16 b e b  fis' b, g' b, a' b,
  | g'16 fis e g d! g  cis, g' b, g' a, g'
  | fis16 e d fis cis fis  b, fis' a, fis' g, fis'
  %50
  | \voiceFour e16 d cis e b e  ais, e' gis, e' fis, e'
  | d16 fis e d cis b  \oneVoice ais cis b ais gis fis
  | b8_. cis16( b ais b  cis8-.) d16( cis b cis
  | d8-.) cis-. b-.  ais-. g'4->
  | fis16 gis ais fis b fis  cis' fis, d' fis, e' fis,
  %55
  | d'16 fis, g d'  cis32[ b ais b]  cis16 e, fis cis'  b32[ ais gis ais]
  | b8 r r r4 b,8
  | e16 fis gis e a e  b' e, cis' e, d' e,
  | cis'8 r r  r4 cis,8
  | \mergeDifferentlyDottedOn
    d8. e16 d cis  b cis b a g fis
  %60
  | e8 d' cis  d4 \voiceFour b8
  | g8 a4  d8 cis b
  | a2.~
  | a2.~
  | a4.~ a4 r8 
  %65
  | r8 r16 e' d cis  b4 r8
  | r8 r16 d cis b  a4 r8
  | r8 r16 cis b a  g8 r r
  | r4 r8  r16 a b cis d e
  | \oneVoice fis16( g) a8-. a,-.  d-. c!16( d e d)
  %70
  | c8-. b16( c d c)  b8-. c-. d-.
  | g8-. a,4->  b8-. c-. d-.
  | \voiceFour e8-. fis,4->  g8 fis16 g a b  
  | c,8 c''16 b a g  \oneVoice fis e d c b a
  | g16 a b g c g  d' g, e' g, f' g,
  %75
  | e'16 e,32 fis! gis16 e a e  b' e, c' e, d' e,
  | cis'16 a' g! fis e d  cis b a g fis e
  | d2._~
  | \voiceFour d16 d' c d e d  c8 b16 c d c
  | b8-. a16( b c b)  a8-. g16( a b a)
  %80
  | \oneVoice g16 g'32 fis e16 g d g  cis, a' b, a' a, a'
  | d,16 c! bes d a d  g, e' fis, e' e, e'
  | fis,8 d g  e c d
  | g4.~ g16 g32 a b16 g c g_~
  << {
    \voiceFour g8 g4~  g4.~ | g2.~ | g2.
  } \new Voice {
    \voiceThree d'8 g, b  c32 b c d e16 c fis! c | g'2.~ | g2.
  } >>
    \fine
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    \new Devnull \forceBreaks
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 860"
    title = \markup { "Fuga XV " \char ##x007E " à 3" }
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
