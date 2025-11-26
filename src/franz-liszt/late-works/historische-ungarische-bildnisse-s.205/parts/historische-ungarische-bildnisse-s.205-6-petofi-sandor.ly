Global = {
  \key g \major
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205vi
  %1
  | \tempo "Lento" 4 = 69
    s1*12
  | d8_. c4_> b_> ais8_> g'4~^^\fermata
  | g\( fis e4. dis8
  %15
  | e4\f^\markup { "cantando" } b2 \acciaccatura { c16 d } c8. b16
  | a'4 g2 fis8. e16
  | d'8^.\) c4^.^>( b^.^>) ais8_.[( g_. fis_.])
  | e4 dis \acciaccatura fis8 e4 dis
  | \once\slurUp \acciaccatura fis8 e4.. dis16 dis2
  %20
  | \once\slurUp \acciaccatura fis8 e4.. dis16 dis2~
  | dis8 r b8( c dis_. e_. fis_. g_.)
  | a4^\( e2 \acciaccatura { f16 g } f8. e16
  | d'4 c2 b8. a16
  | g'8^.\) fis4^.^>( ees^.^>) d8^.( c^. b^.)
  %25
  | \once\phrasingSlurDashed a4(^\( g \once\stemUp \acciaccatura b8 a4 g)
  | \once\stemUp \once\slurUp \acciaccatura b8 a4.. g16 g2
  | \once\stemUp \once\slurUp \acciaccatura b8 a4.. g16 g2~\)
  | g8 r d( ees fis_. g_. a_. ais_.)
  \repeat unfold 2 {
  | b4 fis2 \acciaccatura { g16 a } g8._> fis16
  }
  %31
  \repeat unfold 2 {
  | c'4( fis,!2 \acciaccatura { aes16 bes } aes!8._> g16)
  }
  | c4( f,!2 \acciaccatura { g16 a } g8. f16
  | c'8) f[( \stemUp \once\slurDown \acciaccatura { g16 a } \stemNeutral g8 f] c') r r4
  %35
  | c,4( fis,!2 \acciaccatura { gis16 a } gis8. fis16
  | c'8) fis[( \stemUp \once\slurDown \acciaccatura { gis16 a } \stemNeutral gis8 fis] c') r r4
  | \stemUp\slurUp\phrasingSlurUp
    r2 c4( fis,)
  | r2 c'4( fis,)
  | r2 cis'4( fis,)
  %40
  | \set Staff.connectArpeggios = ##t
    r2 cis'4\arpeggio\( fis,
    \bar "||"
    \key e \major
    \break
  | gis8^\markup {
      "un poco meno lento"
    }
    b4. e,8 fis4.
  | gis8 b4. e,8 fis4.\)
  | gis8\( b e, fis gis b e, fis
  | s2. \hideNotes cis'4\) \unHideNotes
  %45
  | a8 cis4. fis,8 gis4.
  | a8 cis4. fis,8 gis4.
  | a8\( cis fis, gis a cis fis, gis
  | s2. \hideNotes cis4\) \unHideNotes
  | b8 dis4. <bis, bis'>4( <cis cis'>)
  %50
  | b'8 dis4. <bis, bis'>4( <cis cis'>)
  | b'8\( dis b cis b dis b cis
  | b dis b dis\) b s4.
  | \tempo "Tempo I"
    \stemNeutral
    %\repeat unfold 2 {
      <dis, dis'>4 <ais ais'>2
      \once\slurDown\stemUp \appoggiatura { <b b'>16 <cis cis'> }
      \stemNeutral <b b'>8.( <ais ais'>16)
    %}
  | R1*36
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*18
  | ais2 dis(
  | ais) dis
  | s1*5
  %26
  | ees2 g(
  | ees) g
  | s1*9
  %37
  | r2 c
  | r c
  | r cis
  | \set Staff.connectArpeggios = ##t
    r <cis fis>\arpeggio
  %41
  | <b e>2 q
  | <b e> <ais e'>
  | <b e>4 cis q ais
  | <b e gis>2 <a fis' a>4 <b gis' b>
  %45
  | <cis fis>2 q
  | q <bis fis'>
  | <cis fis>4 dis q bis
  | <cis fis a>2 <b gis' b>4 <cis a' cis>
  | <dis fis>2 fis
  %50
  | q fis
  | q4 <cis fis> <dis fis> <cis fis>
  | <dis fis> q q8 <b b'>[ <cis cis'> <cisis cisis'>]
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*16
  | s4 d'( c) s
  | s1*6
  %24
  | s4 g'( fis) s
  | s1*16
  %41
  \repeat unfold 3 {
  | gis8 e gis e gis e gis e
  }
  | gis e dis e fis e gis4
  %45
  \repeat unfold 3 {
  | a8 fis a fis a fis a fis
  }
  | a fis e fis gis fis a4
  \repeat unfold 3 {
  | a8 fis a fis a fis a fis
  }
  | a fis a fis a r r4
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r2 \once\phrasingSlurDashed c~_\markup { \hspace #-2 "dolente" }\(
  | c4 bes a g\)
  | r2 c~\(
  | c4 b! a g\)
  %5
  | r2 a~\(
  | a4 g fis e\)
  | r2 f~\(
  | f4 e d c\)
  | b c cis2(
  %10
  | d2) c4 d
  | e\( b2 \acciaccatura { c16 d } c8. b16
  | a'4 g2 \acciaccatura { fis16 g } fis8. e16\)
  | R1\fermata
  | R1
  %15
  | r4 <b e g>8^.\p r <a dis fis>_. r r4
  | r <c e a>8^. r <b e g>^. r r4
  | r <e g>2 r4
  | r <fis b>^.( <g c>^. <fis b>^.)
  | <g c>2( <fis b>)(
  %20
  | <g c>2)( <fis b>~)
  | q8 r r4 r2
  | r4 <e a c>8^. r <d gis b>^. r r4
  | r <f a d>8^. r <e a c>^. r r4
  | r4 \clef "treble" \stemDown <a c>2 r4
  %25
  | \stemNeutral r <b d>_.( <c ees>_. <b d>_.)
  | <c fis>2( <b d>)(
  | <c fis>2)( <b d>~)
  | q8 r r4 r2
  | r4 \clef "bass" <dis, a' b>8[( q <dis a' c> q]) r4
  %30
  | r4 <dis a' b>8[( q <dis a' c> q]) r4
  \repeat unfold 2 {
  | r4 <ees aes c>8[( q <ees g c> q]) r4
  }
  | r4 <ees a c>8[( q q q]) r4
  | R1
  %35
  | r4 <dis a' c>8[( q q q]) r4
  | R1
  | r2 <fis a dis>
  | r <a dis fis>
  | r <a cis fis>
  %40
  | r \clef "treble" <b dis a'>\arpeggio_\markup {
      "una corda"
    }
    \bar "||"
    \key e \major
  | \stemDown
    b2 cis
  | b cis
  | b4 ais b cis
  | b2 b8\rest e e dis
  %45
  | cis2 dis
  | cis dis
  | cis4 bis cis dis
  | cis2 b8\rest fis' fis e
  | <dis b'>2 <e a>
  %50
  | <dis b'>2 <e a>
  | <dis b'>4 e q e
  | q q q8_\markup {
      \hspace #2 "tre corde"
    }
    r r4
    \clef "bass"
    \break
    \stemNeutral
  | %\repeat unfold 2 {
      <ais,,, ais'>8 r <fis'' ais dis fis> r <ais,, ais'> r <eis'' gis cisis eis> r
    %}

  | R1*36
    \fine
}

centerDynamics = {
 | s1*8
 | s4\< s2.
 | s4\! s s\< s
 %10
 | s4\!\f s2.
 | s1*4
 | s4\> s\! s2
 | s4 s\> s\! s
 | s s-\markup { "dim." } s2
 | s8 s\> s4 s\! s
 %20
 | s8 s\> s4 s\! s
 | s4 s8 s\< s2
 | s4\! s2.
 | s1
 | s4 s\> s8 s\! s4
 %25
 | s-\markup { "dim." } s2.
 | s4\> s s s\!
 | s4\> s s s\!
 | s4 s\< s2
 | s8\! s^\markup { \hspace #-2 \whiteout "sempre espressivo e legato" } s2.
 | s1*3
 %33
 | s4^\markup { \hspace #-1 "dolce" } s2.
 | s8 s\p s2.
 | s4^\markup { \normalsize "più" \dynamic p } s2.
 | s1
 %37
 | s2 s\pp
 | s1*2
 | s4-\markup { \hspace #1 \whiteout "grazioso e dolce" } s2.
 | s1*4
 %45
 | s4-\markup { \hspace #-1 \whiteout "sempre legato e dolce" } s2.
 | s1*3
 | \set crescendoText = \markup { \small\italic { "poco a poco cresc." } }
   \set crescendoSpanner = #'text
   %\override DynamicTextSpanner.style = #'dashed-line
   s4\< s2.
 | s1*2
 | s4 s
   \unset crescendoText
   \unset crescendoSpanner
   s\!\< s
 | s\! s2.
}

forceBreaks = {
 % page 1
 \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" \with {
      \consists "Span_arpeggio_engraver"
    }
    <<
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
    title = \markup { "VI. Petőfi Sándor" }
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
    \tempo 4 = 69
  }
}
