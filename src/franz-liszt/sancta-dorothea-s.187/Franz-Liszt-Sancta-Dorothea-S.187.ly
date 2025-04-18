\version "2.25.25"

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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #80 \bold "Liszt" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Sancta Dorothea" }
        \null\null
        \line { \abs-fontsize #20 "S.187" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano" }
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
          \abs-fontsize #10 "Based on the Breitkopf Härtel edition, Leipzig 1927"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key e \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  \tempo "Andante"
  | s2 fis
  \repeat unfold 3 {
  | fis fis
  }
  %5
  | gis4 b a b
  | gis b cis b
  | gis a b2
  | gis fis
  | eis4 gis fis gis
  %10
  | eis gis ais gis
  | eis fis gis2
  | eis2 dis
  | cis4 fis eis fis
  | \stemNeutral dis2 gis4 fis
  %15
  | \stemUp cis4 fis eis fis
  | \stemNeutral dis2 \once\slurDown \once\stemUp \acciaccatura ais'8 gis4 fis
  | \tieNeutral <cis fis cis'>1~(
  | <cis fis ais>4) r r2
  | \repeat unfold 2 {
      \tuplet 3/2 { ais,8[ cis fis ais fis cis] }
    }
  %20
  | \tuplet 3/2 {
      a8[^\markup {
        "ritard."
      }
      cis fis a fis cis]
    }
    \tuplet 3/2 { a8[ cis fis a fis cis] }
  | \stemUp gis'4 b a b
  | gis b cis b
  | gis a b2
  | gis fis
  %25
  | eis4 gis fis gis
  | eis gis ais gis
  | eis fis gis2
  | eis dis
  | cis4 fis eis fis
  %30
  | \crossStaff { dis2\( } gis4\arpeggio fis\)
  | cis4 fis eis fis
  | dis2 ais'4(\arpeggio gis)
  | cis2\( b4 cis
  | ais2\)\arpeggio r
  %35
  | \once\shape #'((0 . 2) (0 . 1) (0 . 0) (0 . 0)) PhrasingSlur
    ais\(\arpeggio gis4 ais
  | \once\override Score.Arpeggio.X-extent = #'(-0.5 . 0.6)
    fis2\)\arpeggio r
  | \crossStaff { fis\(\arpeggio } eis4 fis
  | \crossStaff { dis2\)\arpeggio }
    \clef "bass" \stemNeutral <dis, fis dis'>^\markup {
      "un poco rallent."
    }
  | <dis b' dis> <dis ais' dis>4 <dis b' dis>
  %40
  | <dis gis dis'>2 <dis a' dis>4 <dis b' dis>
  | <e gis e'>2. <e gis b>4
  | <gis b e> \clef "treble" <b e gis> <e gis b> <gis b e>
  | <gis e' gis> <b e b'> <b e a> <b e b'>
  | <b e gis> <b e a> <e cis'>2~
  %45
  | q4 <e b'> <e gis> <e a>
  | <e b'> r r2
  | <e b' e>4 r r2
  | <e gis e'>4 r r2\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | r2 \tuplet 3/2 { fis8 cis a } r4
  | \omit TupletNumber
    \repeat unfold 2 { \tuplet 3/2 { fis'8 cis a } r4 }
  | \repeat unfold 2 { \tuplet 3/2 { fis'8 cis a } r4 }
  | \repeat unfold 2 { \tuplet 3/2 { fis'8 b, a } r4 }
  %5
  | \tuplet 3/2 { gis'8 e b } \tuplet 3/2 { b'8 e, b } \tuplet 3/2 { a'8 e b } \tuplet 3/2 { b'8 e, b }
  | \tuplet 3/2 { gis'8 e b } \tuplet 3/2 { b'8 e, b } \tuplet 3/2 { cis'8 e, b } \tuplet 3/2 { b'8 e, b }
  | \tuplet 3/2 { gis'8 e b } \tuplet 3/2 { a'8 e b } \tuplet 3/2 { b'8 e, b } r4
  | \tuplet 3/2 { gis'8 e b } r4 \tuplet 3/2 { fis'8 bis, gis } r4
  | \tuplet 3/2 { eis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis }
    \tuplet 3/2 { fis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis }
  %10
  | \tuplet 3/2 { eis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis }
    \tuplet 3/2 { ais'8 cis, gis } \tuplet 3/2 { gis'8 cis, gis }
  | \tuplet 3/2 { eis'8 cis gis } \tuplet 3/2 { fis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis } r4
  | \tuplet 3/2 { eis'8 cis gis } r4 \tuplet 3/2 { dis'8 cis gis } r4
  | \tuplet 3/2 { cis8 ais fis } \tuplet 3/2 { fis'8 ais, fis }
    \tuplet 3/2 { eis'8 ais, fis } \tuplet 3/2 { fis'8 ais, fis }
  | s1
  | \tuplet 3/2 { cis'8 ais fis } \tuplet 3/2 { fis'8 ais, fis }
    \tuplet 3/2 { eis'8 ais, fis } \tuplet 3/2 { fis'8 ais, fis }
  | s1*5
  %21
  | \tuplet 3/2 { gis8 e b } \tuplet 3/2 { b'8 e, b } \tuplet 3/2 { a'8 e b } \tuplet 3/2 { b'8 e, b }
  | \tuplet 3/2 { gis'8 e b } \tuplet 3/2 { b'8 e, b } \tuplet 3/2 { cis'8 e, b } \tuplet 3/2 { b'8 e, b }
  | \tuplet 3/2 { gis'8 e b } \tuplet 3/2 { a'8 e b } \tuplet 3/2 { b'8 e, b } r4
  | \tuplet 3/2 { gis'8 e b } r4 \tuplet 3/2 { fis'8 bis, gis } r4
  %25
  | \tuplet 3/2 { eis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis }
    \tuplet 3/2 { fis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis }
  | \tuplet 3/2 { eis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis }
    \tuplet 3/2 { ais'8 cis, gis } \tuplet 3/2 { gis'8 cis, gis }
  | \tuplet 3/2 { eis'8 cis gis } \tuplet 3/2 { fis'8 cis gis } \tuplet 3/2 { gis'8 cis, gis } r4
  | \tuplet 3/2 { eis'8 cis gis } r4
    \tuplet 3/2 {
      dis'8
      \change Staff = "lower" \voiceThree
      gis, eis
    }
    \change Staff = "upper" \voiceTwo
    r4
  | \tuplet 3/2 {
      cis'8
      \change Staff = "lower" \voiceThree
      ais fis
    }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 {
      fis'8
      \change Staff = "lower" \voiceThree
      ais, fis
    }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 {
      eis'8
      \change Staff = "lower" \voiceThree
      ais, fis
    }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 {
      fis'8
      \change Staff = "lower" \voiceThree
      ais, fis
    }
  %30
  | \crossStaff { <fis gis>2 } <fis dis'>\arpeggio
    \change Staff = "upper" \voiceTwo
  | \tuplet 3/2 {
      cis'8
      \change Staff = "lower" \voiceThree
      ais fis
    }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 {
      fis'8
      \change Staff = "lower" \voiceThree
      ais, fis
    }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 {
      eis'8
      \change Staff = "lower" \voiceThree
      ais, fis
    }
    \change Staff = "upper" \voiceTwo
    \tuplet 3/2 {
      fis'8
      \change Staff = "lower" \voiceThree
      ais, fis
    }
  | \crossStaff { <fis gis>2 }
    \change Staff = "upper" \voiceTwo
    <gis dis'>\arpeggio
  | <cis fis>2 q
  | q\arpeggio s
  %35
  | <ais dis>\arpeggio q
  | q\arpeggio s
  | \change Staff = "lower" \voiceThree
    \crossStaff { <fis b> \arpeggio } q
  | \crossStaff { <fis b> \arpeggio } s
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \omit TupletBracket \omit TupletNumber
  %1
  | s1*20
  | e4 gis \stemNeutral fis gis
  | e gis a gis
  | e fis gis \stemUp \tuplet 3/2 { gis8 b e }
  | s1*9
  %32
  | <ais,, ais'>2 <gis gis'>
  | <ais ais'>\arpeggio <gis gis'>4 <ais ais'>
  | <fis fis'>2\arpeggio <eis eis'>
  | <fis fis'>\arpeggio <eis eis'>4 <fis fis'>
  | \stemDown <dis dis'>2\arpeggio <cis cis'>
  | <dis dis'>\arpeggio \stemUp ais'4 b

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  %1
  | \clef "treble"
    r4_\markup { "una corda" }
    \tupletUp\tuplet 3/2 {
      cis8 fis a
    }
    r4 \tuplet 3/2 { cis,8 fis a }
  | \omit TupletNumber
    r4 \tupletUp\tuplet 3/2 { cis,8 fis a } r4 \tuplet 3/2 { cis,8 fis a }
  | r4 \tupletUp\tuplet 3/2 { dis,8 fis a } r4 \tuplet 3/2 { dis,8 fis a }
  | r4 \tupletUp\tuplet 3/2 { dis,8 fis b } r4 \tuplet 3/2 { dis,8 fis b }
  %5
  | e,4 gis fis gis
  | e gis a gis
  | e fis gis \tuplet 3/2 { gis8 b e }
  | r4 \tuplet 3/2 { e,8 gis b } r4 \tuplet 3/2 { dis,8 gis bis }
  | cis,4 eis dis eis
  %10
  | cis eis fis eis
  | cis dis eis \tuplet 3/2 { eis8 gis cis }
  | r4 \tuplet 3/2 { cis,8 eis gis } r4 \tuplet 3/2 { b,8 eis gis }
  | ais,2( cis4 dis)
  | \repeat unfold 2 {
      \tuplet 3/2 { b8[ dis fis gis fis dis] }
    }
  %15
  | ais2( cis4 dis)
  | \repeat unfold 2 {
      \tuplet 3/2 { b8[ dis fis gis fis dis] }
    }
  \repeat unfold 2 {
  | \tuplet 3/2 { ais[ cis fis ais fis cis] } \tuplet 3/2 { gis[ cis fis gis fis cis] }
  }
  | R1
  %20
  | \clef bass
    <fis,, fis'>2.( <e e'>4)
  | \stemDown e2 s
  | s1*2
  | r4 \tuplet 3/2 { e'8 gis b } r4 \tuplet 3/2 { dis,8 gis bis }
  %25
  | \stemNeutral cis,4 eis dis eis
  | cis fis eis fis
  | cis dis eis \tuplet 3/2 { eis8 gis cis }
  | r4 \tuplet 3/2 { cis,8 eis gis } s4 \tuplet 3/2 { b,8 eis gis }
  | \stemDown ais,2\( cis4 dis\)
  %30
  | \tuplet 3/2 { b8[ gis fis b, fis' gis] } \tuplet 3/2 { b[ gis fis b, gis' b] }
  | ais2 cis4 dis
  | \tuplet 3/2 { b8[ gis fis b, fis' gis] } \tuplet 3/2 { b[ dis fis gis fis dis] }
  | \tuplet 3/2 { ais[ cis fis ais fis cis] } \tuplet 3/2 { gis[ cis fis gis fis cis] }
  | \tuplet 3/2 { ais[ cis fis ais fis cis] } \tuplet 3/2 { gis[ cis fis] } \tuplet 3/2 { ais, cis fis] }
  %35
  | \tuplet 3/2 { fis,[ ais dis fis dis ais] } \tuplet 3/2 { e[ ais dis eis dis ais] }
  | \tuplet 3/2 { fis[ ais dis fis dis ais] } \tuplet 3/2 { eis[ ais dis] } \tuplet 3/2 { fis, ais dis] }
  | \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1
      dis,[ fis b dis b fis]
    }
    \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1
      cis[ fis b cis b fis]
    }
  | \tuplet 3/2 {
      \once\override NoteColumn.force-hshift = #1
      dis[ fis b dis b fis]
    }
    \tuplet 3/2 { ais,[ fis' dis b fis' dis] }
  | \stemNeutral <gis, gis'>2 <fis fis'>4 <gis gis'>
  %40
  | <b b'>2 <fis fis'>4 <gis gis'>
  | <e e'>1
  | R1
  | \clef "treble"
    \stemUp e'''4\( gis fis gis
  | e fis <a cis>2~
  %45
  | q4 <gis b> <e b'> <fis b>
  | <gis b>\) r r2
  | <gis b>4 r r2
  | <e b'>4 r r2\fermata
    \fine
}

dynamics = {
  | s4 s-\markup { \large \dynamic p "sempre legato" } s2
  | s1*3
  | s4-\markup { "dolce semplice" } s2.
  | s1*10
  %16
  | s4\< s s2
  | s4\!\> s2.
  | s1
  | s4\! s2.
  | s1
  %20
  | s4-\markup { "un poco più cresc." } s2.
  | s1*11
  %33
  | s4-\markup { "dolce espress." } s2.
  | s1*4
  | s4 s s-\markup { "cresc." } s
  | s1*3
  %42
  | s4 s-\markup { "dim." } s2
  | s4-\markup { \large \dynamic p "dolce" } s2.
  | s4\< s2.
  | s4\!\> s2.
  | s4\! s2.
  | s8 s\pp s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s4 s\sustainOn s2
  | s1
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  %5
  | s4\sustainOff s2.
  | s1
  | s2 s4\sustainOn s
  | s s s\sustainOff\sustainOn s
  | s\sustainOff s2.
  %10
  | s1
  | s4 s s\sustainOn s
  | s s s\sustainOff\sustainOn s
  | s\sustainOff s2.
  | s4\sustainOn s2.
  %15
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s2.
  %20
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff s2.
  | s1*5
  %27
  | s4 s s\sustainOn s
  | s\sustainOff s s\sustainOn s
  | s\sustainOff s2.
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s s\sustainOff s
  %35
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s s\sustainOff s
  | s\sustainOn s s\sustainOff\sustainOn s
  | s\sustainOff s2.
  | s1*2
  %41
  | s4\sustainOn s2.
  | s1
  | s4\sustainOff s2.
  | s1*2
  | \set Staff.pedalSustainStyle = #'text
    s4\sustainOn
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
    \context Dynamics = "dynamics" \dynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \new Devnull \forceBreaks
    \context Dynamics = "sustainPedal" \sustainPedal
  >>
  \header {
    composer = "Franz Liszt"
    opus = "S.187  (1877)"
    title = \markup { "Sancta Dorothea" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 126
  }
}
