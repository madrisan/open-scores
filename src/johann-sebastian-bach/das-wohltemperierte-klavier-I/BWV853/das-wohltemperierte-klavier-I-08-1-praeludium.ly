Global = {
  \key es \minor
  \time 3/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'Praeludium08
  %1
  | bes'2 r4 r8 bes es4. ges8
  | ces,2 r4 r8 es as4. ces8
  | d,2 r4 r8 f as,4~\prall as16 ges as bes
  | ges4.\prallprall f16 es ges'2 <ges, bes ees ges>\arpeggio
  %5
  | q2\arpeggio r4 r16 ges' fes ees fes4. des8
  | <ees, ges ces ees>2\arpeggio <ges ces ees>\arpeggio q\arpeggio
  | <bes ees bes'>\arpeggio r4 r16 ees des ces des4. bes8
  | ces4.\prallprall bes16 aes <ees' aes ces>2\arpeggio q\arpeggio
  | <f aes ces>\arpeggio r4 r16 bes aes ges f[ ges f ges aes ges aes f]
  %10
  | ges4.\prallprall f16 es <bes es ges bes>2\arpeggio <des ees ges bes>\arpeggio
  | <c ees ges c>2\arpeggio r4 r16 f es des  c[ des c des  es des es c]
  | des4.\prall c16 bes  <bes des f>4~\arpeggio f'16 ges f es  des[ c bes as  ges8 as16 f]
  | <ees ges>4^~\arpeggio ges8 bes16 des  ges4~ ges16 f es  des  c8. es32 des c16[ des es8]
  | f,8. g32 a  a8.\trill g32 a \voiceOne bes1~
  %15
  | bes1 <c, a'>2
  | <des bes'>4. <ees c'>8 <f bes des>2\arpeggio q\arpeggio
  | <fes bes des>4.\arpeggio ces'!16 bes  \tieNeutral <bes des fes>2~\arpeggio q4.\prall es16 des
  | <bes des g>2~ q4. fes'16 es <ces es as>2^~
  | as'8[ g as bes] c2.\prall as4
  %20
  | as4. ces8 \oneVoice f,!4.-> ges!16 as  d,4.-> es16 f
  | bes,4.-> as'8  d,4.-> es16 f  bes,4.-> c16 d
  | es4. des!16 ces! <es, bes' des>2\arpeggio q\arpeggio
  | q4. ces'16 bes  ces2 <es, as ces>\arpeggio
  | <f as ces>4.\arpeggio bes16 as  f'4. ces8  bes4.\trill ces16 as
  %25
  | <es ges>2^~\arpeggio ges16 es f ges  as bes c d  es f ges as  ges f ges es
  | <fes, as ces! fes>4. ces'16 beses  as4. beses16 ces  fes,!4. ges16 as
  | d,4. f!16 as  ces4. bes16 as  f'4. es16 d
  | ces'8( a4) bes8 \voiceOne <ges, bes es>2\arpeggio d'4.\arpeggio es8
  | \once\override Tie.extra-offset = #'(0 . 1)
    es1.~
  %30
  | es2~ es4~ es16 es des ces  des4. bes8
  | <aes ces>2~ ces4~ ces16 ces bes as  bes4. g8
  | <ces, d as'>2 q q
  | <ces f as>2 q q
  | <d f as>2 q q
  %35
  | <d f as ces>2~\arpeggio  \stemNeutral ces'16[ bes as ges f
    \change Staff = "lower" \voiceThree
    \clef treble es d f]  as[ ces
    \change Staff = "upper" \voiceOne
    \stemDown d f as ces bes d,]
  | \stemUp es4. bes8 as ges4. f8\trill( es f4)
  | es2~ es4~ es16 f g as  bes4~ bes16 fes es des
  | ces2~ ces8. es16  f! g as bes  ces8~ ces32 bes as ges  f16 ges as f
  | d1~ d4. d8
  %40
  | <g, bes es>1.\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*3/2*13
  | s2 c4\rest c8\rest f g4. ees8
  | c4~ c16 des c des ees des c des ees f ees f ges4 f8.\prall ees16
  | s1*3/2*3
  %19
  | s2 << { \stemDown ees' des } \\ g!1 >>
  | s1*3/2*8
  %28
  | s1 <f, bes>2\arpeggio
  | <ees bes'>4~ bes'16 as g as as2~^\prallprall as4. g!16 as
  | bes1.
  | es,2~ es4~ es16
    \change Staff = "lower" \voiceThree
    es des ces des4. bes8
  | \change Staff = "upper" \voiceTwo
    s1*3/2*4
  %36
  | e4\rest e8\rest ges f ees4. d2
  | s1.*2
  | f,4\rest g8\rest ces16 bes ces4. as8
    \change Staff = "lower" \voiceThree
    f2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*3/2*14
  | f2 s1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \clef treble <es' ges>2 q q
  | <es as>2 <es as ces> q
  | <es f as>2 <d f as> <d f>
  | es2 r4 r8 \clef bass bes ges4. es8
  %5
  | bes2 <bes des ges bes>\arpeggio q\arpeggio
  | <ces ees ges ces>2\arpeggio r4 r8 ges' ees4. ces8
  | g2 <g bes ees g>\arpeggio q\arpeggio
  | <aes ces ees aes>\arpeggio \clef treble r4 r8 ces'' aes4. f8
  | d2 <d f bes>\arpeggio q\arpeggio
  %10
  | <ees ges bes>\arpeggio r4 r8 ges ees4. c8
  | a2 <a c f>\arpeggio q\arpeggio
  | <bes des f>\arpeggio q\arpeggio q\arpeggio
  | \clef bass <ees, bes' des>\arpeggio <ees bes' c>\arpeggio q\arpeggio
  | <ees a c> <des f bes>\arpeggio <ees bes'>
  %15
  | f <f, f'> q
  | <bes f' bes> r4 r8 bes des4. f8
  | g,2~ g4~ g16 bes aes g des'2~
  | des4. ces16 bes fes'8 ees fes! des ces16 bes aes bes ces aes bes ces
  | fes,4~ fes16 fes' ees des ees4. des8 ees4. ees,8
  %20
  | as2 r4 r8 ces'8  f,4. ges16 as
  | d,4. es16 f  bes,4. as'8  d,4. es16 f
  | ges,2  g4. bes'8 g4. es8
  | as,2  r4 r8 ces' as4. f8
  | <d f aes>2\arpeggio <d f bes> q\arpeggio
  %25
  | <ees ges bes>\arpeggio q\arpeggio q\arpeggio
  | <aes, ces fes aes>\arpeggio r2 r
  | <aes f' bes> r r
  | r <bes ees ges bes>\arpeggio <bes f' ges bes>\arpeggio
  | <ces ces'> <ces' es> q
  %30
  | <g bes ees> q q
  | <as ces>2 fes fes
  | f!2~ f4~ f16 ges f es  f8. ges16  as f ges as
  | d,2~ d4~ d16 es d c  d8. es16  f d es f
  | ces!2~ ces4~ ces16 des! ces bes  ces bes as bes  ces as bes ces
  %35
  | d,2 r s
  | \clef bass
    r4 r8 <es es'> <bes' es ges bes>2\arpeggio <bes f' as bes>\arpeggio
  | <es g bes des>2\arpeggio q\arpeggio q\arpeggio
  | <es as>2 q q
  | <es f>2 q es
  %40
  | \once\override TextScript.staff-padding = #6
    \once\override TextScript.self-alignment-X = #CENTER
    <es, bes' es>1.\fermata_\markup { \hspace #0.0 "Verte Sequitur Fuga" }
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\pageBreak

  % page 2
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 3 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
  \repeat unfold 2 { s1.\noBreak } s1.\break\noPageBreak
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 853"
    title = \markup { "Praeludium VIII" }
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
