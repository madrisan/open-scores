Global = {
  \key as \major
  \time 3/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \override MultiMeasureRest.staff-position = #0
  \label #'Praeludium17
  %1
  | \oneVoice r8 as'16 g  as8 c es, as
  | r8 bes16 as  bes8 des es, bes'
  | \voiceOne c4 <es as> r8 es
  | des4 g r8 <des g>
  %5
  | <es as>4 es r8 es
  | \voiceOne es8 as16 g  \oneVoice as8 f c es
  | \voiceOne des4 as' r8 des,
  |  des8 bes'16 as  bes8 g des[ bes']
  | c,4 \oneVoice r16 es f g  as f des f
  %10
  | bes,4~  bes16 d es f  g es c es |
  | as, bes g bes  as c d es  f d bes d |
  | g, as f as  g bes c d  es c as c |
  | f, es' d es  as, es' d es  f, es' d es |
  | g, es' d es  bes es d es  g, es' d es |
  %15
  | as, es' des! es  c es bes es  as, es' g, es' |
  | f, es' g, es'  as, d es f  g, bes as c |
  | bes16 es d c  bes as bes c  \voiceOne f,8.\prall es16
  | es4 <bes' es> r8 bes
  | as4 d r8 <as d>
  %20
  | <bes es> \oneVoice es,16[ d] es8 g bes, es
  | r8 f16 es f8 as bes, f'

  | g8 bes16 as  bes8 es g, bes
  | es,8 g16 f  g8 bes es, g
  | c,8 r r ges''16 f  es f des es
  %25
  | c16 des bes c  as bes ges as  f ges es f
  | des8 des'16 c  des8 f bes,[ des]
  | g,8 c16 bes  c8 es as, c
  | f,8 bes16 as  bes8 des g, bes
  | es,8 as16 g  as8 c f, as
  %30
  | des,8 bes'16 as  bes8 des g, bes
  | es,8 c'16 bes  c8 es as, c
  | f,8 des'16 c  des8 f bes, des
  | g,8 bes es, g as4~
  | as16 g as bes \voiceOne bes4.\downprall as8
  %35
  | \oneVoice as8 es'16 des \voiceOne es8 c g bes
  | as4\prall es'~  es16 ges, f es
  | des8 des'16 c  bes8 des f, as
  | g4\prall des'~  des16 f, es des
  | \stemUp c16 c' bes c  as c g c  f, c' es, c'
  %40
  | des,16 des' c des  bes des as des  g, des' f, des'
  | \stemNeutral es,8 as16 g  as8 c f, as
  | des8 g,16 f  g8 bes es, g
  | \voiceOne c8 as as4 g
  | as2.\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  | s2.*2
  | s4 c' a8\rest c
  | bes4 a\rest a8\rest bes
  | aes4 r r8 bes
  | aes4 s2
  | bes4 r r8 as
  %8
  | g4 r r8 <g des'>
  | as4 s2
  | s2.*7
  %17
  | s2 d,4
  | s4 g r8 g
  | f4 r r8 f
  | <es g>4 s2
  | s2.*13
  %34
  | s4 g2
  | s2.
  | f4 s2
  | s2.
  | es4 s2
  | s2.*4
  %43
  | r8 <des f> <bes es>2
  | <c es>2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  | es4 e\rest e\rest
  | es4 e\rest e\rest
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  %1
  | <as c>4 d,\rest d\rest
  | <g bes>4 d\rest d\rest
  | \oneVoice r8 as'16 g  as8 c es, as
  | r8 bes16 as  bes8 des es, bes'
  %5
  | r8 c16 bes  c8 es as, c
  | f,4 f' r
  | r8 bes,16 as  bes8 des g, bes
  | es,4 es' r
  | r8 as,16 g  as8 c f,[ as]
  %10
  | d,8 g16 f  g8 bes es,[ g]
  | c,8 f16 es  f8 as d,[ f]
  | bes,8 es16 d  es8 g c,[ es]
  | as,8 f'16 es  f8 as d,[ f]
  | bes,8 g'16 f  g8 bes es,[ g]
  %15
  | c,8 as'16 g  as8 c f,[ as]
  | d,8 f  bes,[ d]  es c
  | g8 f g[ as]  bes4
  | r8 es16 d  es8 g bes, es
  | r8 f16 es  f8 as bes, f'
  %20
  | g4 r8 es16 g  g f g es
  | bes'8 bes, r bes16 c  d c d bes
  | es8 es,  r des''!16 c  bes c as bes
  | g16 as f g  es f des es  c des bes c
  | as8 es''16 des  es8 as c,[ es]
  %25
  | as,8 c16 bes  c8 es as,[ c]
  | f,4~  f16 as bes c  des bes g bes
  | es,4~  es16 g as bes  c as f as
  | des,16 es c es  des f g as  bes g es g
  | c,16 des bes des  c es f g  as f des f
  %30
  | bes,16 as' g as  des, as' g as  bes, as' g as
  | c,16 as' g as  es as g as  c, as' g as
  | des,16 as' ges as  f as es as  des, as' c, as'
  | bes,16 des c es  des f es des  c es des f
  | es8 f16 des  es8 des es es,
  %35
  | as4 as' r
  | r8 f16 es  f8 as des, f
  | bes,4 bes' r
  | r8 es,16 des  es8 g c, es
  | as,16 as' g as  f as es as  des, as' c, as'
  %40
  | bes,16 bes' as bes  g bes f bes es, bes' des, bes'
  | c,8 c' r8 f,16 g  as g as f
  | bes8 bes, r es16 f  g f g es
  | as8[ des,] es des es es,
  | as2._\fermata
  \fine
}

forceBreaks = {
  % page 1
  %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 862"
    title = \markup { "Praeludium XVII" }
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
