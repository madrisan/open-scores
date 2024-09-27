Global = {
  \key es \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*2
  | f'2\rest \highlightSubject { bes,4 es4~
  | es8 ges f es  des es f4
  %5
  | bes,4 es~ es8 des c4
  | \unHighlightSubject bes8 } c des4~ des4. ces8
  | bes4 es4~ es8 d es f
  | ges4 f8 ges  as f ges as
  | bes8 as ges f  ges4 f8 es
  %10
  | d8 es4 d8  es des ces4~
  | ces8 bes16 as  bes8 ces16 des  es8 f16 ges  f8 es
  | d4 es8 des  ces bes as ges
  | f8 ges as4~  as8 ges16 f  ges8 as
  | bes4 ces!8 des16 es  as,4 e'8\rest bes
  %15
  | ces8 des es f  ges as bes ces~
  | ces8 des, ges2 f4~
  | f4 es8 des  c d es f
  | ges4 f8 es  des es f ges
  | des4 c bes e\rest
  %20
  | \highlightSubject { bes4 f'4. ges8 f es
  | des8 es f4 bes, d8\rest es~
  | es8 des c4 bes } d8\rest as'~
  | as8 ges f4~  f16 es f ges  es8.\trill f16
  | \highlightSubject { f4 bes4. ces8 bes as!
  %25
  | g8 as bes4  es, as~
  | as8 ges! f2 \unHighlightSubject es4~ }
  | \highlightSubject { es4 as4. bes8 as ges
  | f8 ges as4  des, ges~
  | ges8 fes es as  des,8 } ges4 f8
  %30
  | \highlightSubjectInv { ges4 des4. c8 des es
  | f8 es des4  as' des,~
  | des8 es f4 \unHighlightSubject ges2~ }
  | ges8 f es des  c4 d
  | es2 des
  %35
  | ces8 des es fes  bes, ces des es
  | ces8 bes as ges  f4 ges8 as
  | bes4 c8 d es4. des8
  | c8 d es2 d4
  | es4 d8 es  f as ges f
  %40
  | es8 des! ces! bes16 ces  bes8 c d es
  | f8 bes, bes' as  ges as bes ces
  | f,4 g as8 ges f es
  | d4 es4. des8 ces bes
  | ces8 bes as4~  as8 ges16 f ges8 as
  %45
  | \highlightSubjectInv { bes4 es,4_~ es8 d es f
  | ges8 f es4 bes' es,~
  | es8 f g4 as } \oneVoice as'
  | es4. des8 es4. f8
  | ges4. f8 es4 bes'
  %50
  | \voiceOne es,4. es8  d es f d
  | es8 f ges as  bes bes, es f
  | d4 r \highlightSubject { bes es~
  | es8 fes es des  ces des es4
  | \unHighlightSubject as,8 } bes16 ces  bes8 ces \highlightSubjectInv { des4 ges,~
  %55
  | ges8 f ges as  bes as ges4 }
  | \voiceOne fes'2~ fes8 d es4~
  | es8 ges f! es  d f bes4~
  | bes8 ces bes as  ges as bes4
  | es,4 as~ as8 ges f4
  %60
  | es4 des ces bes
  | as4 ges f g'8\rest c,
  | d8 es f4~  f8 es des16 ces des g
  | as16 bes ces4 bes16 as  bes8 es, f g
  | as4 a\rest \highlightSubjectInv { bes es,~
  %65
  | es8 ces des es  fes es des4
  | as'4 es~ es8 f g4
  | \unHighlightSubject as8 } bes as ges  f ges as4~
  | as8 ges f ges16 as  bes as bes4 as16 ges
  | f8 ges4 f8  ges \highlightSubject { des ges4~
  %70
  | ges8 as ges fes  es fes ges4
  | ces,4 fes~ fes8 es des4
  | ces4 } fes~ fes8 d es4~
  | es4 as4~  as8 f g ges~
  | ges8 es fes4 es des
  %75
  | ces4. ces8 bes4. ges'8
  | as,2~ as8 ges16 f! ges8 as
  | bes4 r \highlightSubject { f'2
  | bes2. ces4
  | bes4 as ges as
  %80
  | bes2 es,
  | as2. ges4
  | fes2 \unHighlightSubject es~ }
  | \oneVoice es8 ces as4~ as8 bes ces4~
  | ces8 as f4~ f8 ges as4~
  %85
  | as8 f d4~ d8 d es f
  | ges8 g as bes \voiceOne ces c d es
  | es4 d es2\fermata
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemNeutral\tieNeutral
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \mergeDifferentlyDottedOn
  %1
  | \highlightSubject { es'4 bes'4. ces8 bes as
  | ges8 as bes4 es, as~
  | \stemDown\tieDown as8 ges f4 es4. } f8
  | ges4 as bes4. as8
  %5
  | ges8 f ges8 f16 es  f8 bes4 a8
  | \highlightSubject { \unHighlightSubject bes4. } as!8 g8 es as4~
  | as8 ges! f es  f4 ges8 as
  | bes8 c d es  f d es f
  | ges8 f es d  es des ces4
  %10
  | bes4 as ges as8 ges
  | f4. es16 f  ges8 as16 bes  as8. ges32 as
  | bes8 as ges f  es4 d8 es
  | f8 es d c  d4 es8 f
  | ges4 as8 ges  f des ges4~
  %15
  | ges4 f2 es4
  | des8 f ges as  bes ces des ces
  | bes8 as ges f  es f ges bes
  | es8 des! c2 bes4~
  | bes4 a \highlightSubject { bes, f'~
  %20
  | f8  ges f es  des es f4
  | bes,4 } c8\rest es~  es des c4
  | bes4 e8\rest as~  as ges f4
  | es4 e8\rest des  bes' a bes4
  | a4 bes es4. f8
  %25
  | es4. des8 c4. des8
  | es4 as, des2
  | c4 r as des~
  | des8 es des ces!  bes ces des4
  | ges,4 ces~ ces8 bes as4
  %30
  | ges8 f ges as  bes as bes c
  | des8 ces!4 bes8  ces bes as ces
  | bes2~ bes8 c des es
  | as,4 bes4~ bes8 as ges f
  | es8 ges ces!4~ ces8 bes as g
  %35
  | as2~ as4 g4
  | \highlightSubjectInv { as4 es~ es8 d es f
  | ges8 f es4 bes' es,~
  | es8 f ges4 as2 }
  | ges8 as bes c  d
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    bes, c d
  %40
  | es4.
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    f8 ges4 f8
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    es
  | d8 es f4~  f8 es16 d es4~
  | es8 des! ces bes  ces es
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    as4~
  | as8 ges f es  f4 g
  | as8 ges! f es  d4 es8 f
  %45
  | ges8 f ges as  bes as ges \highlightSubjectInv { \unHighlightSubject f16 } es
  | d8 as'^~ as ges16 f  g8 as bes des,
  | ces8 des es fes  es4
    \showStaffSwitch \change Staff = "lower" \voiceThree
    as,4~
  | as8 g as bes  ces bes as4
  | es'4 bes~ bes8 ces des!4~
  %50
  | des8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    des' ces bes  as ges as f
  | ges8 as bes as~  as ges16 f ges8 as
  | f4
    \showStaffSwitch \change Staff = "lower" \voiceThree
    \highlightSubject { bes,
    \change Staff = "upper" \voiceTwo
    es4. fes8
  | es8
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    des ces des
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    es4
    \change Staff = "lower" \voiceThree
    \unHighlightSubject as,8 } ges
  | f4
    \change Staff = "upper" \voiceTwo
    \highlightSubjectInv { des'
    \change Staff = "lower" \voiceThree
    ges,4. f8
  %55
  | ges8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    as bes
    \change Staff = "lower" \voiceThree
    as  ges4 } ces8 bes
  | as4
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    des' ges,2
  | ces8 bes as ges  f
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    es d f
  | bes,8 as' ges f  es4
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    es'8 des
  | ces bes as ces  bes es4 des!8~
  %60
  | des8 ces4 bes8~ bes as4 ges8~
  | ges8 f4 es8  d f bes4~
  | bes8 ces! bes as
    \change Staff = "lower" \voiceThree
    ges
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    as bes4
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    es,4 as~ as8 g f fes
  | es8
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    ces' bes as
    \showStaffSwitch \change Staff = "lower" \voiceThree
    g8 es16 f
    \change Staff = "upper" \voiceTwo
    g8 as16 bes
  %65
  | ces4. bes8  as g as bes
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    es,8 f g
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    as  bes16 ces des4 ces16 bes
  | ces4 r \highlightSubject { as2
  | des2. es4
  | des4 ces bes ces
  %70
  | des2 ges,2
  | ces2. bes4
  | as2 ges4 ces~
  | ces8 es des! ces  bes ces des4
  | as4 des4~ des8 ces bes4~
  %75
  | bes8 es, \unHighlightSubject as4~ } as8 as ges4~
  | ges8 ges fes es  d4 es~
  | es8 d16 c  d8 f bes4. ces!8
  | bes4. as8 ges4. as8
  | bes2
    \showStaffSwitch \change Staff = "lower" \voiceThree
    es,4 as~
  %80
  | as8 ges f4  g8 bes, es4~
  | es8 fes es des  ces des es4
  | as,4 des~ des8 ces bes4
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    as4. bes8  ces bes as ges
  | f4. ges8  as ges f es
  %85
  | d4. es8 f4
    \change Staff = "upper" \voiceTwo
    ges8 as
  | bes8 bes ces des  es es f ges!
  | f8 ces'! bes as  ges2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*7
  | \highlightSubject { es4 bes'4. ces8 bes as
  | ges8 as bes4 es, as~
  %10
  | as8 ges f4 es } es'
  | d4 des c ces
  | bes8 \highlightSubject { bes, es4~  es8 ges f es
  | d8 es f4 bes, es~
  | es8 des! ces2 bes4 }
  %15
  | as8 bes ces des  es f ges as
  | bes8 as bes ces  des4 des,
  | ges,4 ges'4. f8 es des!
  | c8 bes a f  bes c des es
  | f8 es f f,  bes a bes c
  %20
  | des8 c des es  f es des es16 f
  | ges16 f ges8  a,4 bes c
  | des8 bes f' es  d8 es4 d8
  | es8 c' a bes  ges f ges4
  | f4 r ges ces~
  %25
  | ces8 des ces bes  as g as bes
  | c4 des8 ces  bes as g es
  | as8 bes as ges!  f ges f es
  | des8 ces'! bes as  ges as ges fes
  | es8 des ces as  bes ges des' des,
  %30
  | ges8 as bes as  ges ges' f es
  | des4 ges2 f4
  | ges8 f es d  es4 bes8 c
  | des!4 ges, as bes
  | ces8 bes as ges  fes4 es
  %35
  | as8 bes ces des  es4 r8 es
  | as8 bes ces as  bes as ges f
  | es4 as4. g16 f g4
  | as8 ges! f es  f ges as bes
  | \highlightSubjectInv { es,16 es' des ces  bes4. \stemDown\tieDown ges8 as bes
  %40
  | ces!8 bes as4 es' bes~
  | bes8 c d4 es } ges,8 as
  | bes4 es, as8 bes ces4
  | \stemNeutral\tieNeutral bes2 r
  | r2 \highlightSubjectInv { bes,4 es,~
  %45
  | es8 d es f  ges f es4
  | bes'4 es,~ es8 f g4
  | as4 bes }  \stemDown\tieDown ces8 des ces bes
  | as8 bes ces es  as4 ces,8 des
  | es8 d es f  ges as f g
  %50
  | as8 bes as ges!  f es d ces'
  | bes8 as ges f  es des! ces4
  | \highlightSubject { bes4 es4. fes8 es des
  | ces8 des es4  \unHighlightSubject as,8 } bes ces4
  | des4 ges,4. f8 ges as
  %55
  | bes8 as ges fes' es2~
  | es8 des ces bes ces4 ces'8 bes
  | as8 bes ces as  bes4. as8
  | ges8 as bes4  es,8 f g4
  | \stemNeutral\tieNeutral as8 ges f es  d es bes bes'
  %60
  | ces8 es, f g  as f d es
  | c8 d es es,  bes'4 r
  | \highlightSubject { bes'2 es_~
  | es4 fes es des
  | ces4 des es2
  %65
  | as,2 des~
  | des4 ces4 bes2
  | as4 } des4~ des8 es des ces
  | bes8 ces des4 ges, ces~
  | ces8 bes as4  ges8 fes es16 des es fes
  %70
  | bes,8 ges as bes  ces des es fes16 ges
  | as8 bes16 ces  des,8 es16 fes  ges,8 ges'4 g8
  | as8 g as bes  ces bes as ges
  | f8 ges f es  d d'16 ees fes8 bes,
  | ces8 c^\mordent des bes  g as4 g8
  %75
  | as8 ges! fes es  des d es bes
  | ces8 c des as  bes2~
  | bes8 \highlightSubject { f' bes4. ces!8 bes as
  | ges8 as bes4  es,8 f16 ges as4~
  | as8 ges f } \stemDown\tieDown d'  es f16 ges f8 es
  %80
  | d8 es4 des8~  des es16 fes es8 des
  | ces8 des ces bes  as ges fes es
  | des8 des'16 ces bes8 as  g as4 ges8
  | \stemDown\tieDown f2~ f8 ges f es
  | d2~ d8 es d c
  %85
  | bes2~ bes8 as ges f
  | es8 des'! ces bes  as ges'! f es
  | bes'4 bes, es,2_\fermata
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  % page 4
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 853"
    title = \markup { "Fuga VIII " \char ##x007E " à 3" }
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
