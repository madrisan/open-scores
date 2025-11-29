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
    \repeat unfold 2 {
      <dis, dis'>4 <ais ais'>2
      \once\slurDown\stemUp \appoggiatura { <b b'>16 <cis cis'> }
      \stemNeutral <b b'>8.( <ais ais'>16)
    }
  %55
  \repeat unfold 2 {
  | <gis' gis'>4 <fis fis'>2 \tuplet 3/2 { <b, b'>8( <cis cis'> <dis dis'>) }
  }
  \repeat unfold 2 {
  | <e e'>4 <b b'>2
    \once\slurDown\stemUp \appoggiatura { <cis cis'>16 <dis dis'> }
    \stemNeutral <cis cis'>8.( <b b'>16)
  }
  | \ottava #1
    \repeat unfold 2 {
      <a' a'>4 <gis gis'>2
      \once\slurDown\stemUp \appoggiatura { <f f'>16 <g g'> }
      \stemNeutral <f! f'!>8.( <e e'>16)
    }
  %61
  | <d' d'>8 <c c'>4 <b b'> <a a'> <g g'>8
  | <fis' fis'>8\( <e e'>4 <d d'> <c c'> <b b'>8
  | <ais ais'>8\) <g' g'>4^^ <fis fis'> <e e'> <d d'>8\(
  | <c c'>8 <b b'> <ais ais'> <g g'> <fis fis'> <e e'> <d d'> <c c'>\)
    \ottava #0
  %65
  | <b b'>\( <ais ais'> <g g'> <fis fis'> <e e'> <d d'> <c c'> <b b'>\)
  | <ais ais'>4 <g g'>_\( <fis fis'>4.^> <e e'>8\)
  | <e e'>2 \clef "bass" <b b'>
  | r4 <c c'>2(^> <b b'>4)
  | r <e e'>2( <b b'>4)
  %70
  | r <c c'>2(^> <b b'>4)
  | r <cis cis'>2\( <b b'>4
    \clef "treble"
  | <fis' fis'>4 <e e'> <a a'>^\markup {
      "un poco rall."
    }
    <gis gis'>
  | <cis cis'> <b b'> <fis' fis'> <e e'>
  | <a a'> <gis gis'>\) <cis cis'>2
  %75
  | <b b'>4 r 
    \ottava #1
    <gis' b fis'>2~
  | q_~( <gis b e>)
  | r <gis cis e>~
  | q_~( <gis b dis>)
  | <gis cis eis>^~_( <ais cis eis>)
  %80
  | <fis ais fis'>1
  | <gis cis eis gis>~^^
  | q  
    \ottava #0
    \break
  | R1^\markup { \small\italic "sempre rall." } 
  | R1*5
  | R1\fermata
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
  | s1*27
  %80
  | \stemUp cis'2^( dis)
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
  | s1*27
  %80
  | cis2( dis)
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
  | \repeat unfold 2 {
      <ais,,, ais'>8 r <fis'' ais dis fis> r <ais,, ais'> r <eis'' gis cisis eis> r
    }
  %55
  | \repeat unfold 2 {
      <ais,, ais'>8 r <fis'' ais dis fis> r <a,, a'> r <fis'' b dis fis> r
    }
  | \repeat unfold 2 {
      <gis,, gis'>8 r <e'' gis b e> r <fis,, fis'> r <dis'' a' b dis> r
    }
  | \repeat unfold 2 {
      <f,, f'>8^^ r <d'' b' d> r <e,, e'>^^ r <gis'' b d! gis> r
    }
  %61
  | <e,, e'>^^ r <e'' g c e> r <g c e g> r \clef "treble" <c e g c> r
  | r4 <c e g c>8 r <e g c e> r <g c e g> r
  | r4 \clef "bass" \repeat tremolo 12 { <e,, g>32 c' }
  | \override Beam.positions = #'(1.5 . 2.5)
    \repeat tremolo 16 { <e, g>32 c' }
  %65
  | \repeat tremolo 16 { <e, g>32 c' }
  | R1*2
  | <gis,! e' gis!>2( <fis dis' fis>
  | <gis e' gis>4) r r2
  %70
  | <gis e' gis>2( <fis dis' fis>)
  | r2 \repeat tremolo 8 { <gis e'>32 gis' }
  | \override Beam.positions = #'(0.5 . 1)
    \repeat tremolo 16 { <gis, e'>32 gis' }
  | \repeat tremolo 16 { <gis, e'>32 gis' }
  | \override Beam.positions = #'(1 . 1.8)
    \repeat tremolo 8 { <gis, e'>32 gis' } r2
    \revert Beam.positions
  %75
  | r2 \clef "treble" <gis'' b fis'>~
  | q_~( <gis b e>)
  | r <gis cis e>~
  | q_~( <gis b dis>)
  | <gis cis eis>^~_( <ais cis eis>)
  %80
  | <fis ais fis'>1
  | <eis gis cis eis>~
  | q
  | cis4\( gis2 \once\slurDown\stemUp \appoggiatura { ais16 bis } ais8. gis16\)
  | fis'4( eis dis cis)
  %85
  | ais'( gis fis eis)
  | r2 ais~\(
  | ais gis
  | fis1
  | eis\)^\fermata
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
 | s s^\markup { "dim." } s2
 | s8 s\> s4 s\! s
 %20
 | s8 s\> s4 s\! s
 | s4 s8 s\< s2
 | s4\! s2.
 | s1
 | s4 s\> s8 s\! s4
 %25
 | s^\markup { "dim." } s2.
 | s4\> s s s\!
 | s4\> s s s\!
 | s4 s\< s2
 | s8\! s^\markup { \hspace #-3 "sempre espressivo e legato" } s2.
 | s1*3
 %33
 | s4^\markup { "dolce" } s2.
 | s8 s\p s2.
 | s4^\markup { "più" \normalsize \dynamic p } s2.
 | s1
 %37
 | s2 s\pp
 | s1*2
 | s4-\markup { \hspace #1 "grazioso e dolce" } s2.
 | s1*4
 %45
 | s4^\markup { \hspace #-1 "sempre legato e dolce" } s2.
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
 %53
 | s\!-\markup { \normalsize \dynamic f "grandioso" } s2.
 | s1
 | s2. s4\<
 | s4\! s2 s4\<
 | s4\!\ff s2.
 | s1*3
 %61
 | s4-\markup { "sempre più rinforz." } s2.
 | s1
 | s4\fff s2.
 | s1*7
 %71
 | s4-\markup { \normalsize \dynamic mf "legato" } s2.
 | s2 s4-\markup { "dim." } s
 | s1*2
 | s2 s\p
}

forceBreaks = {
 % page 1
 \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 4 { s1\noBreak } s1\pageBreak
 % page 2
 \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 3 { s1\noBreak } s1\pageBreak
 % page 3
 \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 4
 \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
 \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
%\repeat unfold 6
}

sustainPedal = {
  | \set Staff.pedalSustainStyle = #'mixed
    s1*12
  | s2. s4\sustainOn
  | s s\sustainOff s2
  | s1*4
  %19
  | s2\sustainOn s\sustainOff\sustainOn
  | s2\sustainOff\sustainOn s
  | s4\sustainOff s2.
  | s1*4
  %26
  | s2\sustainOn s\sustainOff\sustainOn
  | s2\sustainOff\sustainOn s
  | s4\sustainOff s2.
  \repeat unfold 4 {
  | s4\sustainOn s s\sustainOff s
  }
  %33
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1*4
  %40
  | s2 s\sustainOn
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s1\sustainOff
  | s
  %45
  | s4\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s1\sustainOff
  | s
  %49
  | s4\sustainOn s s\sustainOff s
  | s4\sustainOn s s\sustainOff s
  | s4\sustainOn s\sustainOff s\sustainOn s\sustainOff
  | s4\sustainOn s2.
  \repeat unfold 8 {
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  }
  %61
  | s\sustainOff\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s1
  | s2 s\sustainOff
  | s1*3
  %69
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s1*2
  %75
  | s2 s\sustainOn
  | s2 s\sustainOff\sustainOn
  | s\sustainOff s
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
    \context Dynamics = "sustainPedal" \sustainPedal
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
