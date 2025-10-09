\version "2.25.27"

#(ly:set-option 'relative-includes #t)

\include "../covercolor.ly"

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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #80 \bold "Liszt" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Schlaflos!" }
        \null
        \line { \abs-fontsize #36 \bold "Frage und Antwort" }
        \null\null
        \line { \abs-fontsize #20 \bold "Nocturno nach Gedicht von Toni Raab" }
        \null\null\null
        \line { \abs-fontsize #20 \italic "Sleepless! Question and Answer" }
        \null
        \line { \abs-fontsize #13 \italic "Nocturne after a poem by Toni Raab" }
        \null\null\null
        \line { \abs-fontsize #24 "S.203" }
        \null\null\null\null
      }
    }
  }

  \include "../logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null
        \fill-line {
          \abs-fontsize #10 "Based on: Breitkopf & Härtel – Leipzig, 1927"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key e \minor
  \time 2/2
  \include "global.ly"
}


Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Schnell und leidenschaftlich" 2 = 88
    r4 b\( e4. b8
  | c1\)
  | r4 b\( \tuplet 3/2 { dis4 e4. b8 }
  | d2 c\)
  %5
  | r4 b\( \once\slurDown \acciaccatura fis'8 e4. b8
  | c2_> b4\) r
  | r4 b\( \once\slurDown \acciaccatura g'8 f4. b,8
  | d2_> c4\) r
  \repeat unfold 2 {
  | r4 c_(^\( \once\slurDown \acciaccatura a'8 g4. c,8_)
  | c4_( fis dis e_)\)
  }
  %13
  | c4 r <a c g'>2_>_~
  | <a c e>4 <a c f> <c f b>2_~
  | <c f gis>4 <c f! a>\( <f a d>_> <f a c>
  | <a c g'> <a c f> <b b'> <gis gis'>
  | <a a'>8\) r <d d'>2^^\( <des des'>4~
  | q <c c'> <b b'> <gis gis'>
  | <a a'>8\) r <d d'>2^^\( <des des'>4~
  %20
  | q <c c'> <b b'> <gis gis'>
  | <a a'>8\) r <ges' ges'>2^^\( <f f'>4~
  | q <ees ees'> <des des'> <b! b'!>
  | <c c'>8\) r <ges' ges'>2^^\( <f f'>4~
  | q <ees ees'> <des des'> <b b'>\)
  %25
  | <c c'> <b b'> <c c'> <des des'>~
  | q <c c'> <cis cis'> <d d'>~
  | q <des des'> <c c'> <b b'>
  | <a a'> <gis gis'> <a a'> <b b'>
  | <c c'> <b b'> <c c'> <des des'>~
  %30
  | q <c c'> <cis cis'> <d d'>~
  | q <des des'> <c c'> <b b'>
  | <a a'> <gis gis'> <a a'> <b b'>
  | <c c'>2 <cis cis'>~
  | q <d d'>~
  %35
  | <d d'> <dis dis'>~
  | q q
  | <c c'>2 <cis cis'>~
  | q <d d'>~
  | <d d'> <dis dis'>~
  %40
  | q q~
  | q4 r r2\fermata
  | \textMark \markup { "ritenuto" }
    R1*4
  %46
  | \textMark \markup { \hspace #6.2 "più ritenuto" }
    R1
  | R1*3
    \bar "||"
    \key e \major
    \break
  %50
  | \tempo "Andante quieto" 2 = 56
    \textMark \markup { \musicglyph "scripts.coda" }
    r4 <fis b>\( <e e'>4. <fis b>8
  | <fis cis'>2 <gis b>\)
  | r4 <dis gis>\( <cis cis'>4. <dis gis>8
  | <dis a'>2 <e gis>4\) r
  | r4 \stemUp e\( a fis
  %55
  | e dis gis e
  | dis cis fis dis
  | \stemNeutral cis\) r <fis, c'>2
  | r4 <fis b>\( <e e'>4. <fis b>8
  | <fis cis'!>2 <gis b>\)
  %60
  | r4 <dis gis>\( <cis cis'>4. <dis gis>8
  | <dis a'>2 <e gis>4\) r
  | r e a4. gis8
  | e4 cis fis4. e8
  | cis4 gis dis'4. cis8
  %65
  | bis2 cis
  | r4 gis dis'4. cis8
  | bis2 cis
  | e1~
  | e2 cis
  %70
  | % is there a better way to center the note
    \override NoteColumn.X-offset = 3
    gis1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*53
  | s4 b' a2
  %55
  | f4\rest a gis2
  | e4\rest gis fis2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  %1
  | r2 \tuplet 3/2 { g8\( b e } \tuplet 3/2 { g e b }
  | \tuplet 3/2 { g ais e' } \tuplet 3/2 { g e ais, }
    \omit TupletNumber
    \tuplet 3/2 { g ais e' } \tuplet 3/2 { g e ais,\) }
  | \tuplet 3/2 {
      g_\markup {
        \hspace #1.5 "sempre legato"
      }
      b e
    }
    \tuplet 3/2 { g e b }
    \tuplet 3/2 { g b e } \tuplet 3/2 { g e b }
  | \repeat unfold 2 {
      \tuplet 3/2 { g ais e' } \tuplet 3/2 { g e ais, }
    }
  %5
  | \repeat unfold 2 {
      \tuplet 3/2 { g b e } \tuplet 3/2 { g e b }
    }
  | \repeat unfold 2 {
      \tuplet 3/2 { fis b dis } \tuplet 3/2 { a' dis, b }
    }
  | \repeat unfold 2 {
      \tuplet 3/2 { f b d } \tuplet 3/2 { aes' d, b }
    }
  | \tuplet 3/2 { e, b' d } \tuplet 3/2 { g d b }
    \tuplet 3/2 { e, b' c } \tuplet 3/2 { g' c, b }
  | \repeat unfold 2 {
      \repeat unfold 2 {
        \tuplet 3/2 { e, ais c } \tuplet 3/2 { g' c, ais }
      }
      \repeat unfold 2 {
        \tuplet 3/2 { e a c } \tuplet 3/2 { fis c a }
      }
    }
  %13
  | \repeat unfold 2 {
      \tuplet 3/2 { e a c } \tuplet 3/2 { f c a }
    }
  | \repeat unfold 2 {
      \tuplet 3/2 { e a c } \tuplet 3/2 { f c a }
    }
  | \tuplet 3/2 { e a c } \tuplet 3/2 { f c a }
    \tuplet 3/2 { e a c } \tuplet 3/2 { f a c }
  | \repeat unfold 25 {
      \tuplet 3/2 { f c a } \tuplet 3/2 { f c a }
      \tuplet 3/2 { e a c } \tuplet 3/2 { f a c }
  }
  %41
  | f4 r r2\fermata
  | r4 \clef "treble" fis^\f b4. fis8
  | g1_>
  | r4 fis b4. fis8
  %45
  | gis1_>
  | r2 dis(^\markup { \whiteout "diminuendo" }
  | gis) r
  | r cis,(
  | fis) r
    \bar "||"
    \key e \major
  %50
  | r4 <a dis>\( <gis b>4. <a dis>8
  | <a dis>2 <gis e'>\)
  | r4 <fis bis>\( <e gis>4. <fis bis>8
  | q2 <e cis'>4\) r
  | r4 <d gis>( <cis e>2)
  %55
  | r4 <cis fis>( <b dis>2)
  | r4 <b eis>( <ais cis>2)
  | r2 <a dis!>
    \clef "bass"
  | r4 <a dis>\( <gis b>4. <a dis>8
  | <a dis>2 <gis e'>\)
  | r4 <fis bis>\( <e gis>4. <fis bis>8
  | q2 <e cis'>4\) r
  | R1*8
  | R1\fermata
    \fine
}

centerDynamics = {
  | s4 s\f s2
  | s1*11
  | s2
    \set crescendoText = \markup { \small\italic { "cresc. molto" } }
    \set crescendoSpanner = #'text
    \override DynamicTextSpanner.style = #'dashed-line
    s\<
  | s1
  | s4 s s s8 s\!
  | s1*17
    \set crescendoText = \markup { \small\italic { "crescendo e stringendo" } }
    s1\<
  | s1*7
  | s4 s s s\!
  | s1*8
  %50
  | \once\override TextScript.extra-offset = #'(0.5 . 1)
    s4-\markup { \dynamic p "dolce" } s2.
  | s1*7
  | \set crescendoText = \markup { \small\italic { \whiteout "sempre dolce legato" } }
    s1\<
  | s1*2
  | s4 s\! s2
  | s1*4
  %55
  | \set decrescendoText = \markup {
      \small\italic { \whiteout "ritenuto e diminuendo" }
    }
    \set decrescendoSpanner = #'text
    s4 s\> s2
  | s1*2
  | s4 s s s\!
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s2 s2\sustainOn
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  %5
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s2.
  %10
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4 s s\sustainOff\sustainOn s
  %15
  | s1
  | s4\sustainOff\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  %20
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  %25
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  %30
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  %35
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff s
  | s\sustainOn s2.
  %40
  | s1
  | s4 s\sustainOff s2
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
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
    \context Dynamics = "sustainPedal" \sustainPedal
  >>
  \header {
    composer = "Franz Liszt"
    opus = ##f % "S.203"
    title = \markup \center-column {
      \line { "Schlaflos! Frage und Antwort" }
      \line \abs-fontsize #12 \italic { "Nocturno nach einen Gedicht von Toni Raab" }
    }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
    \context {
      \Score
      \override TextMark.font-shape = #'italic
      \override TextMark.font-size = #-1
      % get a bit more space between rows of a columned TextMark
      \override TextMark.baseline-skip = 2.5
    }
  }
  \midi {
    \tempo 2 = 88
  }
}
