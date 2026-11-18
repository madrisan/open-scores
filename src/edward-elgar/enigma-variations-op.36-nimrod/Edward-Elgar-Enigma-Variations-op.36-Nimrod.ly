\version "2.26.0"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  %inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  %left-margin = 10\mm
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  %outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %right-margin = 10\mm
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "d.madrisan@proton.me"
  }

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Edward" }
        \null
        \line { \abs-fontsize #80 \bold "Elgar" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Nimrod" }
        \null\null
        \line { \abs-fontsize #20 "op. 36" }
        \null\null
        \line { \abs-fontsize #20 \italic "from Variations for orchestra" }
        \null\null\null
        \line { \abs-fontsize #16 \italic "Arranged by the composer for" }
        \null
        \line { \abs-fontsize #16 \italic "for PIANO SOLO" }
        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on: the piano solo arrangement by the composer, London: Novello & Co., 1899"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key ees \major
  \time 3/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp\phrasingSlurUp\slurUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Adagio." 4 = 52
  %1
  | g8\repeatTie( es <aes, es' aes>4 <aes es' f>
  | <bes es bes'>4 <bes ees f>) f'8( aes
  | g8 bes <g es'>4 f~
  | <f d'>4 es) f8( as)
  %5
  | g( bes <bes g'>4 a~
  | <a f'> g) a8( c)
  | es( c a4. bes8
  | bes g f4. as8)
  | g es( <as, es' as>4 <as es' f>
  %10
  | <bes es bes'>4 <f bes es f>) f'8( as
  | g bes <g es'>4 f
  | <f d'>4 es) 
    \once \override Slur.positions = #'(3 . 3.3)
    f8( as
  | g8 bes <bes g'>4 as!~
  | <as f'>4 g) as8( c
  %15
  | \oneVoice \slurUp <d, as' d>8 f' <c f c'>4 <d, c' d>
  | <bes' es bes'>4 <c, es bes' c>) <d as' d>8( f')
  | <as, c as'>8( <c, c'> <bes f' as bes>4) <c g' c>8^( es')
  | <g, bes g'>8( <bes, bes'> <as es' g as>4) <bes f' bes>8( d')
  << {
  | <f, as f'>8( <as, as'> g'4. f8)
  } \\ {
    s2 c4
  } >>
  %20
  | \voiceOne
    \once \override Slur.positions = #'(2.8 . 2.8)
    bes'2~(^\< bes8 c~
  | c2\!\> d4)
  | \once \override Slur.positions = #'(2.8 . 2.8)
    bes2~\!\<( bes8 c
  | f2\!\> bes,4)
  | \oneVoice \slurUp bes,4_~(\! <bes bes'> <c es c'>)
  %25
  | <es as es'>4.( <d f as d>8 <c f as c>4)
  | <bes f' as bes>4( <c f as c>4. <d f as d>8)
  | <c' f c'>4.( <bes f' bes>8 <as d as'>4)
  | <g bes es g>8( <g bes es> <as es' as>4 <f as es' f>
  | <bes es bes'> <f bes es f>) <f as d f>8( <as d as'>
  %30
  | <g es' g> <bes bes'> <es g es'>4 <f, es' f>
  | <d' f d'> <es, d' es>)
    \voiceOne
    \once \override Slur.positions = #'(2.8 . 3)
    f8( as
  | g bes <bes g'>4 as!~
  | <as f'> g) as8( c
  | \oneVoice\slurUp <d, as' d>8 f' <c f c'>4 <d, c' d>
  %35
  | <bes' es bes'> <c, es bes' c>) <d as' d>8( f')
  | \once \override Slur.positions = #'(2 . 3.3)
    <as, c as'>^>( <c, c'> <bes f' as bes>4) <d as' d>8( f')
  | \once \override Slur.positions = #'(2 . 3.3)
    <as, c as'>8( <c, c'> <bes f' as bes>4) <d as' d>8^- f'^-
  | \tupletDown\tuplet 3/2 4 { 
      <as, ces as'>8^> <es es'>8.^> <ces ces'>16^.
    }
    \voiceOne <bes bes'>4. q8
  | bes'2.
  %40
  | \oneVoice <g bes es g>8^\markup { "largamente" }
    <g bes es> <as es' as>4( <f as es' f>)
  | <bes es bes'>4( <f bes f'>4. <as as'>8)
  | <g bes es g>2.~\fermata
  | q4 r r\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  %1
  | <g bes>4 s2
  | s2 \shiftOn d'4
  | <g, es'>4 es'2
  | d2 d4
  %5
  | es g2
  | f es4
  | es2.
  | es2 d4
  | <g, bes> s2
  %10
  | s2 d'4
  | <g, ees'> ees'2
  | d2 d4
  | ees4 g2
  | f2 ees4
  %15
  | s2.*4
  | s4 <bes d>4( \change Staff = "lower" \voiceThree as)
  %20
  | \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . 3)) Slur
    g_( \change Staff = "upper" \voiceTwo g') <f as>8 <es g>
  | <d f>^( \change Staff = "lower" \voiceThree <f, as> <bes d>4 c8 bes)
  | bes s \change Staff = "upper" \voiceTwo <bes g'>4( <as f'>8 <g ees'>
  | \change Staff = "lower" \voiceFour
    <f d'>8 <c as'> <es c'>4 <d bes'>8 <c as'>)
    \change Staff = "upper"
  | s2.*7
  %31
  | s2 d'4
  | es g2
  | f2 es4
  | s2.*4
  %38
  | s4 f es
  | <bes d> <c! es as>_> <as d f>
  | s2.
  | s4 \stemUp es'' d
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  %1
  | <es, bes' es>4 r <c' es>
  | <g, g'>4 <bes bes'> 
    \change Staff = "upper" \voiceTwo as''8 \change Staff = "lower" \voiceThree f
  | <es, bes' es>4 g'-- a--
  | f4-- g-- as8 f
  %5
  | g4 bes-- c--
  | a-- b-- c8 bes
  | a g f4. g8
  | g \change Staff = "upper" \voiceTwo bes a4 \change Staff = "lower" \voiceThree aes8 f
  | <es, bes' es>4 r <c' es>
  %10
  | <g, g'>4 <bes bes'>
    \change Staff = "upper" \voiceTwo as''8 \change Staff = "lower" \voiceThree f
  | <es, bes' es>4 g'^^ a
  | f^^ g^^ as8 f
  | g4 bes^^ c^^
  | aes^^ bes^^ s
  %15
  | s2.*4
  | s4 bes,2_~
  %20
  | \once\stemDown bes4 s2
  | s2.*3
  | g'4 r s
  | s2.*3
  %28
  | r8 <es g bes es> r4 <c as' c>
  | s2.
  | s4 g'^^ a^^
  | f g as8 f
  | g4 bes^^ c^^
  | as^^ bes^^ s
  | s2.*6
  %40
  | r8 <es, g bes es> r4 <c as' c>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  %1
  | s4 <c, as' c>2
  | s2 bes'4
  | s4 \once\stemUp \appoggiatura { \once\slurUp c,8 } c'2
  | bes2 bes4
  %5
  | es4 \once\stemUp \appoggiatura { \once\slurUp es,8 } es'2
  | d2 c4~
  | c2 c4~
  | <f, c'>2 bes4
  | s4 <c, as' c>2
  %10
  | s2 bes'4
  | s4 \once\stemUp \appoggiatura { \once\slurUp c,8 } c'2
  | bes2 bes4
  | es4 \once\stemUp \appoggiatura { \once\slurUp es,8 } es'2
  | d2 \oneVoice <c as' c>4
  %15
  | <bes f' bes>4 <as f' as>2
  | <g es' g>4 <ges es' ges> <f bes f'>
  | <es c' es> <d d'> <es c' ees>
  | <d d'> <c c'> <d bes' d>
  | <c c'> \voiceFour bes s
  %20
  | s2.
  | s2 aes''4
  | g8 bes, s2
  | s2.
  | bes2( \oneVoice <as as'>8 <g g'>)
  %25
  | <f f'>( <c c'>) <es es'>2
  | <d d'>2 <c c'>8( <bes bes'>)
  | <as as'>8( <es es'>) <d d'>4 <bes bes'>
  | \voiceFour <es' bes' es>4 <c as' c>2
  | \oneVoice <g g'>4 <bes bes'> <bes' f' bes>
  %30
  | <es bes'>4 \voiceFour \once\stemUp \appoggiatura { \once\slurUp c,8 } c'2
  | bes2 bes4
  | es4 \once\stemUp \appoggiatura { \once\slurUp es,8 } es'2
  | d2 \oneVoice <c as' c>4
  | <bes f' bes>4 <as f' as>2
  %35
  | <g es' g>4 <ges es' ges> <f bes f'>
  \repeat unfold 2 {
  | <es c' es> <d d'> <f bes f'>
  }
  | <es ces' es> \once\stemUp \appoggiatura { \once\slurUp d8 } <d' f>4 <c es>
  | \repeat tremolo 12 { bes,32 bes' }
  %40
  | \voiceFour <es, bes' es>4 <c as' c>2
  | \oneVoice <g' es' g>4 <bes bes'> <bes, bes'>
  | <es bes' es>2._\fermata ~
  | q4 r r\fermata  
    \fine
}

centerDynamics = {
  %1
  | s4-\markup { \hspace #-3.5 \normalsize\dynamic pp \italic "nobilmente" } s2
  | s2.
  | s16 s8.\< s4\! s
  | s2 s4-\markup { \italic "cresc." }
  %5
  | s4 s\mf s
  | s4 s s\<
  | s4\!\> s\! s8 s\p
  | s2.
  | s4\< s2
  %10
  | s4\! s2
  | s4\< s\! s
  | s2.
  | s4-\markup { \italic "cresc." } s2
  | s2.
  %15
  | s4\mf s2
  | s2.*2
  | s2 s4-\markup { \italic "dim." }
  | s2.
  %20
  | s32 s\pp s8. s4-\markup { \hspace #0.6 \italic "poco marcato" } s
  | s2.*3
  | s4-\markup { \italic "crescendo molto" } s2
  %25
  | s2.*2
  | s4\f s2
  | s4-\markup { \hspace #-3.5 \normalsize\dynamic ff \italic "sempre legato" } s2
  | s2.*7
  %36
  | s2 s4-\markup { \italic "cresc." }
  | s2 s4\f
  | s4-\markup { \hspace #-3.5 \normalsize\dynamic ff \italic "rit." } s2
  | s4\< s2
  %40
  | s4\!\ff s4\> s
  | s4\!-\markup { \normalsize\dynamic pp \italic "rit." } s2
  | s4-\markup { \italic "dim." } s2
}

pedal = {
  \set Dynamics.pedalSustainStyle = #'mixed
  %1
  | s4\sustainOn s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn
    % leave some room before the following "Ped. simile"
    \once \override Dynamics.PianoPedalBracket.shorten-pair = #'(0 . 0)
    s\sustainOff\sustainOn s8 s16. s32\sustainOff
  % "Ped. simile": a text-only pedal mark, released silently at the end of the bar
  | \set Dynamics.pedalSustainStyle = #'text
    \once \override Dynamics.SustainPedal.extra-offset = #'(5 . 0)
    \once \override Dynamics.SustainPedal.stencil =
      #(lambda (grob)
         (grob-interpret-markup grob
           #{ \markup {
                \concat { 
                  \musicglyph "pedal.Ped" \musicglyph "pedal.."
                } 
                \italic " simile" 
              }
           #}))
    s4\sustainOn s4 s8 \once\omit Dynamics.SustainPedal s8\sustainOff
  %5
  | s2.*4
  | \set Dynamics.pedalSustainStyle = #'mixed
    s4 s8\sustainOn s s s16 s\sustainOff
  %10
  | s2.*10
  %20
  | s4\sustainOn s s\sustainOff
  | s2.
  | s4\sustainOn s s\sustainOff
  | s2.*5
  %28
  | s4\sustainOn s\sustainOff\sustainOn s
  | s4\sustainOff s2
  | s2.*9
  | s4\sustainOn s2
  %40
  | s4\sustainOff\sustainOn s\sustainOff\sustainOn s
  | s4\sustainOff s2
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
 % page 2
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
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
    \new Dynamics \pedal
  >>
  \header {
    composer = "Edward Elgar"
    opus = "op. 36"
    title = \markup \smallCaps { "Variations" }
    subtitle = \markup { "No. IX" }
    subsubtitle = \markup { \italic "(Nimrod)" }
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
    \tempo 4 = 52
  }
}
