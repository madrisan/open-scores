Global = {
  \key b \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205ii
  %1
  \tempo "Vivace" 2 = 108
  | r2 e4 r
  | r2 fis4 r
  | gis r \stemNeutral\tieNeutral gis2^^~
  | gis cis,
  %5
  | gis'1_>
  | r2 <gis, cis gis'>4 r
  | r2 <ais cis ais'>4 r
  | <b e b'> r b'2^^~
  | b e,
  %10
  | b'1^>
    r2 <b, e b'>4 r
  | r2 <cis e cis'>4 r
  | <dis gis dis'> r <e gis e'> r
  | <e ais e'> r <fis ais fis'> r
  %15
  | <gis cis gis'> r <b, e b'> r
  | r2 <cis e cis'>4 r
  | <dis gis dis'> r <e gis e'> r
  | <e ais e'> r <fis ais fis'> r
  | <gis cis gis'> r gis'2^^~^\(
  %20
  | gis2. cis,4\)
  | gis'2. r4
  | a2.^\markup { "riten." }^( cis,4)
  | a'2.( <a, a'>4)
    \bar "||"
    \key a \major
  | <e' e'>2..^^ <a, a'>8
  %25
  | <e' e'>4 r8 <a, a'>8 <e' e'>4 r8 a,,8
  | <e cis' e>2.. a8
  | <e cis' e>4 r8 <e a> <e cis' e>4 r8 <a' a'>8
  | <fis' fis'>2..^^ <a, a'>8
  | <fis' fis'>4 r8 <a, a'> <fis' fis'>4 r8 a,,
  %30
  | <fis cis' fis>2.. a8
  | <fis cis' fis>4 r8 <fis a>8 <fis cis' fis>4 r8 <cis'' cis'>
  | <gis' gis'>2..^^ <cis, cis'>8
  | <gis' gis'>4 r8 <cis, cis'> <gis' gis'>4 r8 cis,,
  | <gis cis gis'>2.. cis8
  %35
  | <gis cis gis'>4 r8 <gis cis> <gis cis gis'>4 r
  | r2 cis^^~_\(
  | cis b
  | ais b
  | cis d\)
  %40
  | r2 ais4_. r
  | r2 b4_. r
  | r2 cis4_. r
  | r2 d4_. r
    \bar "||"
    \key g \major
  | \tempo "Più moderato" 2 = 88
    r2 <b' g' b>~
  %45
  | q q^\(
  | <ais fis' ais> <b g' b>
  | <cis ais' cis> <d b' d>\)
  | r2 <b g' b>^-~
  | q4 q^.\( q^. q^.\)
  %50
  | r4 <ais fis' ais>2^\( <b g' b>4~
  | q <cis ais' cis>2 <d b' d>4\)
  | r2 <e g e'>~
  | q q^\(
  | <dis fis dis'> <e g e'>
  %55
  | <fis ais fis'> <g b g'>\)
  | r2 <e g e'>^-~
  | q4 q^.\( q^. q^.\)
  | r4 <dis fis dis'>2^\( <e g e'>4~
  | q <fis ais fis'>2 <g b g'>4\)
  %60
  | r2 \ottava #1
    <g ais g'>2~
  | q q\(
  | <fis ais fis'> <g ais g'>
  | <a cis a'> <ais cis ais'>\)
  | r2 <g bes g'>~
  %65
  | q4 <g bes g'>^.( q^. q^.)
  | r4 <fis ais fis'>2 <g ais g'>4~
  | q <a cis a'>2 <bes cis bes'>4
    \bar "||"
    \key c \major
  | r2 <bes des bes'>~
  | q <aes aes'>4 r
  %70
  | r2 <aes aes'>~
  | q <g g'>4 r
  | r2 <g g'>~
  | q <fis fis'>4 \ottava #0 r
  | r2 <f f'>~
  %75
  | q <e e'>~
  | q4 <dis dis'>2 <d d'>4~
  | q <cis cis'>2 <bis bis'>4
  | <c c'>2 <b b'>
  | r4 <a a'>^\( <ais ais'> <b b'>
  %80
  | <c c'>2 <b b'>\)
  | r4 <a a'>^\( <ais ais'> <b b'>\)
  | <c c'>1~^\markup {
      "rit."
    }
  | q2 <cis cis'>
    \bar "||"
    \key a \major
  | \tempo "Tempo I"
    <e e'>2..^^ <a, a'>8
  %85
  | <e' e'>4 r8 <a, a'> <e' e'>4 r8 a,,
  | <cis e>2.. a8
  | <cis e>4 r8 a <cis e>4 r8 <a' a'>
  | <fis' fis'>2..^^ <a, a'>8
  | <fis' fis'>4 r8 <a, a'>8 <fis' fis'>4 r8 a,,
  %90
  | <fis cis' fis>2.. a8
  | <fis cis' fis>4 r8 <fis a> <fis cis' fis>4 r8 <cis'' cis'>
  | <gis' gis'>2..  <cis, cis'>8
  | <gis' gis'>4 r8 <cis, cis'> <gis' gis'>4 r8 cis,,
  | <gis cis gis'>2.. cis8
  %95
  | <gis cis gis'>4 r8 <gis cis> <gis cis gis'>4 r
  \repeat unfold 2 {
  | <ais'' ais'>2.. <cis, cis'>8
  | <ais' ais'>4 r8 <cis, cis'> <ais' ais'>4 r8 <fis fis'>
  }
  %100
  | <ais ais'>4 r <cis, fis ais cis>2^^~
  | q <fis ais cis fis>
  | <ais cis fis ais>1^^~
  | q2 <fis ais cis fis>^^
  | <ais cis fis ais>1^^\fermata
    \fine
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Stem.cross-staff = ##t
  \override Stem.length = #20
  %1
  | s2 <e ais>4 s
  | s2 <fis ais>4 s
  | <gis cis> s2.
    \revert Stem.length
  | s1*58
  %62
  | fis'2 g
  | a ais4 s
  | s1*2
  %66
  | fis2 g
  | a bes
  | s1
  | \stemDown s2 f
  %70
  | e1
  | ees
  | d
  | cis
  | c
  %75
  | b
  | bes2 a
  | gis g
  \repeat unfold 2 {
  | fis1
  | eis_\markup {
      "una corda"
    }
  }
  | fis1
  | fis
  | s1*2
  %86
  | \stemUp
    \override Stem.length = #20
    e2.. s8
  | e4 s8 e4*1/2 e4 s
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r2 <cis, ais' cis>4 r
  | r2 <dis ais' dis>4 r
  | <e cis' e> r r2
  | R1*2
  %6
  | \stemNeutral r2 <e cis' e>4 r
  | r2 <fis dis' fis>4 r
  | <gis e' gis> r s2
  | s1*2
  %11
  | \stemNeutral\tieNeutral
    r2 <gis e' gis>4 r
  | r2 <ais e' ais>4 r
  | <b gis' b> r <cis gis' cis> r
  | <cis ais' cis> r <dis ais' dis> r
  %15
  | <e cis' e> r <gis, e' gis> r
  | r2 <ais e' ais>4 r
  | <b gis' b> r <cis gis' cis> r
  | <cis ais' cis> r <dis ais' dis> r
  | <e cis' e> r gis'2~^^^\(
  %20
  | gis2. cis,4\)
  | gis'2. r4
  | a2.^( cis,4)
  | a'2. r4
    \key a \major
  | <cis,,, cis'>4 r8 <a'' cis e>8 q4 r8 q
  %25
  | q4 r8 q q4 r8 <cis,, a' cis>
  | q4 r8 q q4 r8 q
  | q4 r8 q q4 r8 q
  | <cis, cis'>4 r8 <a''' cis fis>8 q4 r8 q
  | q4 r8 q q4 r8 <cis,, a' cis>
  %30
  | q4 r8 q q4 r8 q
  | q4 r8 q q4 r
  | <eis, eis'>4 r8 <cis''' eis gis>8 q4 r8 q
  | q4 r8 q q4 r8 <eis,, cis' eis>
  | q4 r8 q q4 r8 q
  %35
  | q4 r8 q q4 r
  | r2 <cis cis'>_^~_\(
  | q <b b'>
  | <ais ais'> <b b'> <cis cis'> <d d'>\)
  | r2 <ais ais'>4_. r
  %40
  | r2 <b b'>4_. r
  | r2 <cis cis'>4_. r
  | r2 <d d'>4_. r
    \bar "||"
    \key g \major
  | \stemDown g8_\markup {
      \hspace #-2 "sempre legato, una corda"
    }
    d' g b <d g>^\markup { \hspace #-2 "dolce" } b g d
  | g, d' g b <d g> b g d'
  %45
  | fis e d g, g' e d g,
  | fis' e d g, g' e d g,
  | g, d' g b <d g> b g d
  | g, d' g b <d g> b g d'
  | fis e d g, g' e d g,
  %50
  | fis' e d g, g' e d g,
  \repeat unfold 2 {
  | g, e' g b <cis g'> b g e
  | g, e' g b <cis g'> b g cis
  | fis e cis g g' e cis g
  | fis' e cis g e' cis b g
  }
  %60
  | fis,_\markup {
      \hspace #-1 "tre corde"
    }
    e' g ais <cis g'> ais g e
  | fis, e' g ais <cis g'> ais cis dis
    \clef "treble"
  | e cis ais cis e cis e cis
  | fis e cis e g e cis \clef "bass" g
  | fis, e' g bes <cis g'> bes g e
  %65
  | fis, e' g bes <cis g'> bes cis dis
    \clef "treble"
  | e dis bes cis e cis e cis
  | fis e cis e g e cis \clef "bass" f,
    \bar "||"
    \key c \major
  | f,8 des' f aes <des f> aes f aes
    \clef "treble"
  | \stemUp des f bes aes des aes des aes
  %70
  | \repeat unfold 4 { des aes }
  | \repeat unfold 4 { c g }
  | \repeat unfold 4 { b fis }
  | \repeat unfold 4 { ais e }
  | \repeat unfold 4 { a dis, }
  %75
  | \repeat unfold 4 { gis d }
  | g cis, g' cis, fis c fis c
  | f b, f' b, e ais, e' ais,
    \clef "bass"
  | \repeat unfold 4 { dis a }
  | \repeat unfold 4 { d a }
  %80
  | \repeat unfold 4 { dis a }
  | \repeat unfold 4 { d a }
  | \repeat unfold 4 { dis a }
  | \repeat unfold 4 { e' a, }
    \bar "||"
    \key a \major
  | <cis,, cis'>4_\markup {
      "tre corde"
    }
    r8 \stemNeutral <a'' cis e> q4 c8\rest q
  %85
  | q4 c8\rest8 q4 r8 <cis,, a' cis>
  | \stemDown q4 a'8\rest q q4 a8\rest q
  | q4 a8\rest q q4 r
  | <cis, cis'>4 r8 \stemNeutral <a'' cis fis> q4 c8\rest q
  | q4 c8\rest q q4 r8 <cis,, a' cis>
  %90
  | q4 b'8\rest q q4 b8\rest q
  | q4 b8\rest q q4 r
  | <eis, eis'>4 r8 <cis'' eis gis> q4 c8\rest q
  | q4 c8\rest q q4 r8 <eis,, cis' eis>
  | q4 r8 q q4 r8 q
  %95
  | q4 r8 q q4 r
  \repeat unfold 2 {
  | <fis, fis'>4 r8 <ais'' cis fis ais> q4 r8 q
  | q4 r8 q q4 r
  }
  %100
  | <fis,, fis'>4 r <cis'' fis ais cis>2^^~
  | q <fis ais cis fis>^^
  | <ais cis fis ais>1^^~
  | q2 <fis ais cis fis>
  | <ais cis fis ais>1^^\fermata
    \fine
}

centerDynamics = {
 | s4 s-\markup { \normalsize \dynamic ff "    marc." } s2
 | s1*15
 | s4\< s2.
 | s8 s\! s2.
 | s1*5
 %24
 | s8-\markup { \hspace #-2 "marcatissimo" } s s2.
 | s1*2
 | s2. s8 s\<
 | s4 s s\! s
 | s1*3
 | s8\fff s s2.
 | s1*3
 %36
 | s4 s\f s2
 | s1*4
 | s2 s4\> s
 | s2 s4\! s
 | s1
 %44
 | s4-\p s2.
 | s1*14
 %59
 | s4\< s2.
 | s4\! s2.
 | s1*5
 | s4
   \once\override TextScript.extra-offset = #'(2 . 0)
   s4-\markup { "cresc." } s2
 | s1
 %68
 | s1\f
 | s1*8
 | s4 s\> s s8\! s
 | s1
 | s4 s\< s2
 %80
 | s4\!\> s s\! s
 | s1*2
 | s8 s\< s2.
 %84
 | s4\!\ff s2.
 | s1*11
 %96
 | s4\<^\markup { "grandioso" } s2.
 | s4\! s2.
 | s1*3
 | s2 s\<
 | s1
 | s1\!\fff
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s1*99
  | s4\sustainOn s2.
  | s1*3
  | s4 s s\sustainOff s
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
    >>
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \context Dynamics = "sustainPedal" \sustainPedal
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "II. Eötvös József" }
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
    \tempo 2 = 108
  }
}
