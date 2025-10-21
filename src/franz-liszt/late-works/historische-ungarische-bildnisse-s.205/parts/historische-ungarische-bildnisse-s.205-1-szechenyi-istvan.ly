Global = {
  \key d \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205
  \tempo Feroce 2 = 116
  %1
  | d1_\(
  | c2. d4
  | ees_.\) r bes_. r
  | ees_. r bes_. r
  %5
  | d1_\(
  | c2. d4
  | ees_.\) r bes_. r
  | ees_. r bes_. r
  \repeat unfold 2 {
  | f'1_\(
  | ees4_.\) r bes_. r
  | c1_\(
  | bes4_.\) r g_. r
  }
    \clef "bass"
  | r g-. g-. a-.
  | bes-. g-. g-. a-.
  | bes-. r g-. r
  %20
  | a-. r bes-. r
  | r gis-. a-. bes-.
  | cis-. gis-. a-. bes-.
  | cis-. r a-. r
  | bes-. r cis-. r
    \clef "treble"
  %25
  | r2 e~_^\(
  | e a,\)
  | r <a' e'>~\(
  | q a\)
  | r f~_^\(
  %30
  | f a,\)
  | r <a' f'>~\(
  | q a\)
  | r gis~_^\(
  | gis cis,\)
  %35
  | r <cis' gis'>~\(
  | q cis\)
  | r a~_^\(
  | a cis,\)
  | r <cis' a'>~\(
  %40
  | q cis\)
    \clef "bass"
  \repeat unfold 2 {
  | <f,, a d>^^ q^^
  | <e gis cis>^^ bes'4^> cis^>
  }
  %45
  \repeat unfold 2 {
  | <f, a d>2^^ <e gis bes>4^> <e gis cis>^>
  }
  | <f a d>2^^ a4 bes
  \repeat unfold 2 {
  | cis d gis, a8 bes
  }
  %50
  | cis4 d a bes
  \repeat unfold 2 {
  | <ges bes ees>2^^ q^^
  | <f a d>^^ b4^> d^>
  }
  %55
  \repeat unfold 2 {
  | <ges, bes ees>2^^ <f a b>4^> <f a d>^>
  }
  | <ges bes ees>2^^ bes4^> b^>
  \repeat unfold 2 {
  | d ees a, bes8 b
  }
  %60
  | d4 ees bes b
  \repeat unfold 2 {
  | <g b e>2^^ q^^
  | <fis a dis>^^ c'4^> dis^>
  }
  %65
  \repeat unfold 2 {
  | <aes c f>2^^ q^^
  | <g bes e>^^ des'4^> e^>
  }
  | <a, cis fis>2^^ q^^
  %70
  | <gis b eis>^^ d'4^> eis^>
  | <a, cis fis>2^^ q^^
  | <gis b eis>^^ d'4^> f^>
    \clef "treble"
  | b, cis d e
  | f gis f gis
  %75
  | <b, b'> <cis cis'> <d d'> <e e'>
  | <f f'> <gis gis'> <f f'> <gis gis'> 
  \repeat unfold 2 {
  | <b b'> <gis gis'> <b b'> <cis cis'>
  | <b b'> <a a'> <b b'> <cis cis'>
  }
    \bar "||"
    \key d \major
  %81
  | r2 <e a e'>~^^\(
  | q <a, e' a>\)
  | r <fis' a fis'>~^^\(
  | q <a, fis' a>\)
  %85
  | r <fis' ais fis'>~^^\(
  | q <ais, fis' ais>\)
  | <fis' b fis'>^^( <b, fis' b>)
  | <fis' cis' fis>^^(^\markup { "rit." } <cis fis cis'>)
    \bar "||"
  | \tempo "Più largo"
  \repeat unfold 2 {
    <d fis d'>2 q
  | <cis fis cis'> <a a'>4 <b b'>8 <cis cis'>
  }
  \repeat unfold 2 {
  | <d fis d'>2 <a a'>4 <b b'>8 <cis cis'>
  }
  | <d fis d'>2 <a a'>4 <b b'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <b b'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
    \bar "||"
    \key bes \major
  | <ees g ees'>2^\markup { "Sempre più largo" } q
  %100

  | R1*71
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <d, d'>1_\(
  | <c c'>2. <d d'>4
  | <ees ees'>_.\) r <bes bes'>_. r
  | <ees ees'>_. r <bes bes'>_. r
  %5
  | <d d'>1_\(
  | <c c'>2. <d d'>4
  | <ees ees'>_.\) r <bes bes'>_. r
  | <ees ees'>_. r <bes bes'>_. r
  \repeat unfold 2 {
  | <f' f'>1_\(
  %10
  | <ees ees'>4_.\) r <bes bes'>_. r
  | <c c'>1_\(
  | <bes bes'>4_.\) r <g g'>_. r
  }
  | r4 <g g'>_. q <a a'>_.
  | <bes bes'>_. <g g'>_. q_. <a a'>_.
  | <bes bes'>_. r <g g'>_. r
  %20
  | <a a'>_. r <bes bes'>_. r
  | r <gis gis'>_. <a a'>_. <bes bes'>_.
  | <cis cis'>_. <gis gis'>_. <a a'>_. <bes bes'>_.
  | <cis cis'>_. r <a a'>_. r
  | <bes bes'>_. r <cis cis'> r
  %25
  | r2 <e e'>~_^\(
  | q <a, a'>\)
  | r2 e'''~\(
  | e a,\)
  | r2 <f, f'>~_^\(
  %30
  | q <a, a'>\)
  | r2 f'''~\(
  | f a,\)
  | r2 <gis, gis'>~_^\(
  | q <cis, cis'>\)
    \clef "treble"
  %35
  | r2 gis'''~\(
  | gis cis,\)
      \clef "bass"
  | r2 <a, a'>~^^\(
  | q <cis, cis'>\)
    \clef "treble"
  | r2 a'''~\(
  %40
  | a cis,\)
      \clef "bass"
  \repeat unfold 2 {
  | <d,, d'> q
  | <bes bes'> r
  }
  %45
  \repeat unfold 2 {
  | <f f'>2 <bes bes'>4 q
  }
  | <f f'>2 <a a'>4 <bes bes'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <bes bes'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
  \repeat unfold 2 {
  | <ees, ees'>2 <ees' ees'>
  | <b b'> r
  }
  %55
  \repeat unfold 2 {
  | <ges ges'> <b b'>4 q
  }
  | <ges ges'>2 <bes bes'>4_> <b b'>_>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <b b'>
  }
  %60
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
  \repeat unfold 2 {
  | <e e'> <b b'> <e e'> <b b'>
  | <c c'> <b b'> <c c'> <dis dis'>
  }
  %65
  | <f f'> <c c'> <f f'> <c c'>
  | <des des'> <c c'> <des des'> <e e'>
  | <f f'> <c c'> <f f'> <c c'>
  | <des des'> <c c'> <des des'> <e e'>
  | <fis fis'> <cis cis'> <a a'> <b b'>8 <cis cis'>
  %70
  | <d d'>4 <b b'>8 <cis cis'> <d d'>4 <eis eis'>
  | <fis fis'> <cis cis'> <a a'> <b b'>8 <cis cis'>
  | <d d'>4 <b b'>8 <cis cis'> <d d'>4 <f f'>
  \repeat unfold 2 {
  | <b, b'> <cis cis'> <d d'> <e e'>
  | <f f'> <gis gis'> <f f'> <gis gis'>
  }
  \repeat unfold 2 {
  | <b b'> <gis gis'> <b b'> <cis cis'>
  | <b b'> <a a'> <b b'> <cis cis'>
  }
    \bar "||"
    \key d \major

  | R1*90
    \fine
}

centerDynamics = {
 | s4\ff s2.
 | s1*15
 %17
 | s4 s\p s2
 | s1*7
 %24
 | s2 s\mf
 | s1
 | \override Hairpin.Y-offset = #2
   s2 s\>
 | s4 s\! s2
 %29
 | s s\mf
 | s1
 | s2 s\>
 | s4 s\! 
   \once\override TextScript.extra-offset = #'(-1 . 2)
   s2-\markup { "sempre cresc. " } 
 | s1*2
 %35
 | s2
   \override Hairpin.Y-offset = #-6
   s\>
 | s4 s\! s2
 | s1*2
 %39
 | s2 s\<
 | s4 s\! s2
 | s2\f s
 | s1*5
 | s2
   \once\override TextScript.extra-offset = #'(-1 . 1)
   s-\markup { \whiteout "martellato" }
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
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
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "I. Széchenyi István" }
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
