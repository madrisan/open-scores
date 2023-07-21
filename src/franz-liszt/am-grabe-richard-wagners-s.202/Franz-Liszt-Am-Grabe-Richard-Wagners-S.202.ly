\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 17\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  top-margin = 15\mm

  oddFooterMarkup = \markup {
    \if \on-last-page
    \column \abs-fontsize #9 {
      \justify {
         (*) Wagner once reminded me of the likeness between his Parsifal theme and my previously
         written \char ##x2013 “Excelsior” \char ##x2013 (introduction to the Strasbourg bells).
         May this remembrance remain here.
         He has fulfilled the Great and Sublime in the art of the present day.
      }
      \hspace #0
      \left-align \italic {
        \concat { \char ##x2E3A " F. Liszt. May 22, 1983. Weimar." }
      }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "davide.madrisan@gmail.com"
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
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #75 \bold "Liszt" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #32 \bold "Am Grabe Richard Wagners" }
        \null
        \line { \abs-fontsize #22 \bold "(At the grave of Richard Wagner)" }
        \null\null\null\null
        \line { \abs-fontsize #32 \bold "S. 202" }
        \null\null\null\null\null
        \null\null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line \abs-fontsize #10 {
          \concat {
            "Based on the Holograph manuscript, n.d.[1883]"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 4/4
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \tempo "Sehr langsam"
  %1
  | R1*6
  | r2 d2~_>(
  | d dis4) r
    \bar "||"
  | \key fis \minor
    r2 <b dis fis>~_\markup {
      \dynamic p \small \whiteout "un poco marcato"
    }
  %10
  | q4 <dis fis b> q2~
  | q4 <fis b dis> q2~\(
  | q2 <b dis fis>\)
  | r2 <b, dis gis>~(
  | q4 <dis gis b>) q2~(
  %15
  | q4 <gis b dis>) q2~(
  | q2 <b dis gis>)
  | r2 <b, e gis>~(
  | q4 <e gis b>) q2~(
  | q4 <gis b e>) q2~(
  %20
  | q2 <b e gis>)
  | r2 <cis, e a>~(
  | q4 <e a cis>) q2~(
  | q4 <a cis e>) q2~(
  | q2 <cis e a>)
    \pageBreak
  %25
  | r2 <cis a'>(
  | <e cis'>2. <a e'>4)
  | q1(
  | <ais cis fis>1)
  | r2 \ottava #1 <cis, ais'>(
  %30
  | <fis cis'>2. <ais fis'>4)
  | q1~
  | <ais dis fis>2 r
  | \stemUp\tieUp fis' gis~
  | gis r
  %35
  << {
  |  \voiceOne
     \stemUp\tieUp
     <b, gis'>1~
  |  gis'2 r
  }
  \new Voice {
  |  \voiceThree \stemDown
     \once\override NoteColumn.force-hshift = #0.1 \hideNotes b,1_~ \unHideNotes
  |  \once\override NoteColumn.force-hshift = #0 b2 s
  } >>
  | \stemNeutral\tieNeutral <cis eis gis>1~
  | q2 r
  | <cis eis a>1~
  %40
  | q2 r
  | <cis eis gis>1~
  | q2 r
  | <cis eis a>1~
  | q2 \ottava #0 r
  %45
  | R1
  | r4 cis\pp\( gis ais
  | eis cis' gis ais
  | eis cis gis ais
  | eis cis' gis ais
  %50
  | eis4\) r r2
  | R1*4
  %55
  | R1\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\tieDown
  %1
  | s1*32
  | <b'' dis>1~
  | q2 r
  | dis2 e~
  | e s
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*32
  | fis'2 gis~
  | gis r
  | \stemDown\tieDown dis e~
  | e s
  | s1*2
  %39
  | \stemUp\tieUp <eis a>1~
  | q2 r
  | s1*2
  | <eis a>1~
  | q2 r
  %45
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | r4 cis(^\mf f4. a8)
  | a2( bes4) r
  | r bes( cis4. f8)
  | f2( fis4) r
  %5
  | r fis( ais4. cis8)
  | cis2( d)
  | R1*2
    \bar "||"
  | \key fis \minor
  %10
  | R1
  | \override Beam.positions = #'(1.2 . 2.5)
    \repeat tremolo 16 { cis,,32^\markup { \dynamic pp \small "tremolo" } cis' }
    \repeat tremolo 16 { cis,32 cis' }
  | R1*2
  | \repeat tremolo 16 { cis,32^\pp cis' }
  %15
  | \repeat tremolo 16 { cis,32 cis' }
  | R1*2
  \repeat unfold 2 {
  | \repeat tremolo 16 { cis,32 cis' }
  }
  %20
  | R1*2
  \repeat unfold 2 {
  | \repeat tremolo 16 { cis,32 cis' }
  }
  | R1
  %25
  | r2 \clef treble <e' a>(
  | <a cis>2. <cis e>4)
  | q1(
  | <ais cis fis>1)
  | r2 <fis ais>(
  %30
  | <ais cis>2. <cis fis>4)
  | \set doubleSlurs = ##t
    q1(
  | <dis fis>2) r
    \set doubleSlurs = ##f
  | <b dis>1_~
  | q2 r
  %35
  << {
  |  \voiceOne
     \stemUp\tieUp
     <b gis'>1~
  |  gis'2 r
  }
  \new Voice {
  |  \voiceThree \stemDown
     \once\override NoteColumn.force-hshift = #0.1 \hideNotes b,1_~ \unHideNotes
  |  \once\override NoteColumn.force-hshift = #0 b2 s
  } >>
  | \stemNeutral\tieNeutral <cis eis gis>1~
  | q2 r
  | cis1
  %40
  | b
  | \stemNeutral\tieNeutral <cis eis gis>1~
  | q2 r
  | cis1
  | b
  %45
  | cis
  | R1
  | r2 eis4( cis
  | gis) r r2
  | r2 \clef bass eis4\( cis
  %50
  | gis cis gis ais
  | gis cis gis ais
  | gis2 cis
  | ais2. dis4
  | cis1~
  %55
  | cis\fermata\)
  \fine
}

Sustain = {
  %1
  | s1*8
  | s2 s2\sustainOn
  | s1*2
  | s2 s4 s8 s\sustainOff
  %13
  | s2 s2\sustainOn
  | s1*2
  | s2 s4 s8 s\sustainOff
  | s2 s2\sustainOn
  | s1*2
  %20
  | s2 s4 s8 s\sustainOff
  | s2 s2\sustainOn
  | s1*2
  | s2 s4 s8 s\sustainOff
  %25
  | s2 s2\sustainOn
  | s2. s8 s\sustainOff
  | s1
  | s2\sustainOn s4 s8 s\sustainOff
  | s2 s2\sustainOn
  %30
  | s2 s4 s8 s\sustainOff
  | s1*2
  | s2\sustainOn s
  | s2 s4\sustainOff s
  %35
  | s2\sustainOn s
  | s2 s4\sustainOff s
  | s2\sustainOn s
  | s2 s4\sustainOff s
  | s2\sustainOn s
  %40
  | s s\sustainOff
  | s\sustainOn s
  | s s\sustainOff
  | s\sustainOn s
  | s s\sustainOff
  %45
  | s\sustainOn s
  | s1
  | s4\sustainOff
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
      \Sustain
    >>
  >>
  \header {
    composer = #f % "Franz Liszt"
    opus = #f
    title = "Am Grabe Richard Wagners"
    subtitle = #f
    arranger = \markup {
      \column \abs-fontsize #9 {
        \hspace #0
        \override #'(line-width . 52)
        \override #'(baseline-skip . 2.8)
        \justify {
          Wagner erinnerte mich einst an die Ähnlichkeit seines Parsifal-motivs
          mit einem früher geschriebenen \char ##x2013 “Excelsior” \char ##x2013
          (Einleitung zu den Glocken von Straßburg). Möge diese Erinnerung hiermit verblieben.
          Er hat das Grosse und Hehre in der Kunst der Jetzt-Zeit vollbracht. (*)
        }
        \hspace #0
        \line { \italic \char ##x2E3A " F. Liszt, 22ten Mai, 83. Weimar" }
        \hspace #0
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 60
  }
}
