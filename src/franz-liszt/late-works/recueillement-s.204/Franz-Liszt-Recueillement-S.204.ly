\version "2.25.25"

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
        \line { \abs-fontsize #40 \bold "Recueillement" }
        \null\null
        \line { \abs-fontsize #20 \bold\italic "Vincenzo Bellini in memoriam" }
        \null
        \line {
          \abs-fontsize #12 \italic
          "At the invitation of F. Florimo for the erection of a monument of Bellini in Naples"
        }
        \null\null
        \line { \abs-fontsize #20 "S.204" }
        \null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano" }
        \null\null\null
        \null\null
      }
    }
  }

  \include "../logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on Muzgiz edition, Moscow"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key cis \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \label #'S204
  %1
  | \tempo "Un poco lento"
    \clef "bass"
    r4 r8 gis\( cis eis gis, cis\)
  | r4 r8 gis\( cis eis gis, cis\)
  | r4 r8 a\( cis eis a, cis\)
  | eis8 s s2.
  | s1*2
  %7
  | b'4\rest b8\rest ais,\( dis fis ais, dis\)
  | b'4\rest b8\rest ais,\( dis fis ais, dis\)
  | b'4\rest b8\rest b,\( dis fis b, dis\)
  | fis s s2.
  | s1*2
  | \key g \major
    c'4\rest c8\rest b,\( e g b, e\)
  | c'4\rest c8\rest b,\( e gis b, e\)
  %15
  | c'4\rest c8\rest b,\( d gis b, d\)
  | c'4\rest c8\rest d,\( fis a d, fis\)
  | c'4\rest c8\rest cis,\( fis a cis, fis
  | a\) b\rest b4\rest b\rest \stemDown a'8_\( cis
  | fis[ a cis, fis a, cis fis, a]
  %20
  | cis,[ fis a, cis fis, a cis, fis]\)
  | \stemNeutral
    \once\shape #'((0 . 2.5) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
    a,2^\( b4 bis
  | cis2 dis\)
  | \key e \major
    \crossStaff { e2.\arpeggio } e4\(
  | \stemUp eis fis gis a
  %25
  | b2 a
  | e2. eis4\)
  | fis1
  | gis2 a
  | \afterGrace fis1 { eis16^\( gis }
  %30
  | fis2\) e!
  | fis1
  | gis2 a
  | \afterGrace fis1 { eis16^\( gis }
  | fis2\) e!
  %35
  | cis dis
  | e1
  | eis2 fis
  | fisis1
  | gis
  %40
  | R1
  | fis^\markup { "un poco rall." }
  | R1
  | \key cis \major
    \tempo "a tempo"
    <cis eis>1~\arpeggio
  | q4 b'\rest eis,2\(
  %45
  | gis1
  | fis2 eis\)
  | <b e>1~\arpeggio
  | \crossStaff { q4 } b'\rest s2
  | gis1
  %50
  | s
  | d1~\arpeggio
  | d4 b'\rest d,2\(
  | fis1
  | e2 d
  %55
  | cis b4 bes
  | a gis b a\)
  | bis1\arpeggio
  | cis2 dis
  | <cis eis>1~\arpeggio
  %60
  | q4 b'\rest
    \stemNeutral
    \ottava 1
    <eis eis'>2
  | <gis gis'>1
  | <fis fis'>2 <eis eis'>
  | <e e'>4
    \ottava 0
    b4\rest
    %\once\override Score.Arpeggio.X-extent = #'(-0.3 . 0)
    e,2~\arpeggio
  | e4 b'\rest
    \ottava 1
    <e e'>2
  %65
  | <a a'> <gis gis'>
  | <fis fis'> <e e'>
  | <d d'>4
    \ottava 0
    b4\rest d,2~^>\arpeggio
  | d4 b'\rest \stemUp  fis2_\(
  | b2._> a4
  %70
  | fis2 e4 d
  | cis c b bes
  | a gis b a\)
  | bis1\arpeggio\(
  | cis2_. dis_.\)
  %75
  | <cis eis>1\arpeggio
  | gis'2 ais
  | \afterGrace fis1 { eis16^\( gis }
  | fis2\) eis
  | dis1
  %80
  | eis2 fis
  | \clef "bass"
    \afterGrace <fis, b dis>1 { cisis'16^\( eis }
  | dis2\) disis
  | <eis, gis cis eis>1\arpeggio
  | \stemNeutral ais2\( bis
  %85
  | \afterGrace gis1 { \stemUp fisis16 ais }
  | \stemNeutral gis2 fisis\)
  | <eis gis cis eis>1
  | \stemNeutral ais2\( bis
  | \afterGrace gis1 { \stemUp fisis16_( ais }
  %90
  | \stemNeutral gis2) fisis\)
  | <eis gis cis eis>1
  | R1
  | \clef "treble"
    <gis'' cis eis>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown\phrasingSlurDown
  \override Rest.staff-position = #0
  %1
  | eis1_>
  | eis_>
  | eis_>
  | s8 r r4 r4
    \clef "treble"
    eis''8\( a
  %5
  | cis[ eis a, cis eis, a cis, eis]
  | a,[ cis eis, a cis, e a, ais]\)
  | fis1_>
  | fis_>
  | fis_>
  %10
  | s8 r r4 r fis''8\( b
  | dis[ fis b, dis fis, b dis, fis]
  | b,[ dis fis, b dis, fis ais, b]\)
  | g1_>
  | gis1_>
  %15
  | gis1_>
  | a1_>
  | a1_>
  | s1*4
  %22
  | a1
  | s1*4
  | cis1
  | dis
  | cis
  %30
  | b
  | cis
  | dis
  | cis
  | cis
  %35
  | <a cis>
  | q
  | q
  | <ais dis>
  | <gis dis'>
  %40
  | s
  | <a dis>
  | s1*6
  %48
  | s2 \stemUp e'\(
  | s1
  | fis2 e\)
  | s1*25
  %76
  | <b dis>1
  | cis
  | <b cisis>
  | \stemDown ais2 gisis~
  | gisis ais
  | s1
  %82
  | <fis bis>1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieDown
  \override Rest.staff-position = #0
  %1
  | \once\override Staff.TextScript.extra-offset = #'(0.8 . -0.4)
    cis,8\(_\markup { "una corda" }
    gis'~ <gis cis>2.\)
  | cis,8\( gis'~ <gis cis>2.\)
  | cis,8\( a'~ <a cis>2.\)
  | r8
    \clef "treble"
    \phrasingSlurUp
    a''\( cis eis, a cis\) r4
  | s1*2
  %7
  | \override Tie.extra-offset = #'(-0.1 . 0.2)
    dis,,,8\( ais'~ <ais dis>2.\)
  | dis,8\( ais'~ <ais dis>2.\)
  | \revert Tie.extra-offset
    dis,8\( b'~ <b dis>2.\)
  %10
  | r8
    \clef "treble"
    b''\( dis fis, b dis\) r4
  | s1*2
  | e,,,8\( b'~ <b e>2.\)
  | e,8\( b'~ <b e>2.\)
  %15
  | eis,8\( d'~ <d eis>2.\)
  | fis,8\( d'~ <d fis>2.\)
  | fis,8\( cis'~ <cis fis>2.\)
  | r8
    \clef "treble"
    cis''\( fis a, cis fis\) r4
  | s1*4
  %23
  | \crossStaff {
      \once\override Stem.length = #20
      <e,, a>2.\arpeggio
    }
    s4
  | s1*19
  %43
  | <eis gis>2 q^~^>
  | q4 s2.
  | r2 \clef "treble" <cis'' eis>(
  | <cis gis'>) r
  | <e,, gis>2\arpeggio q^~^>
  | \crossStaff {
      \once\override Stem.length = #15
      q4
    }
    s2.
  | r2 \clef "treble" <b'' e>(
  %50
  | <b gis'>) r
  | <fis, a>2 q^>^~
  | q4 s2.
  | r2 \clef "treble"
    <a' d>(
  | <a fis'>) s
  %55
  | s1*2
  | <dis,, fis a>1
  | s
  | <eis gis>2 q^>^~
  | q4 s2.
  | s1*2
  %63
  | s2
    \crossStaff {
      \once\override Stem.length = #16
      <e gis b>^~\arpeggio
    }
  | \crossStaff {
      \once\override Stem.length = #16
      q4
    }
    s2.
  | s1*2
  | s2
    \crossStaff {
      \once\override Stem.length = #16
      <fis a>^~\arpeggio
    }
  | \crossStaff {
      \once\override Stem.length = #16
      q4
    }
    s2.
  | s1*4
  | <dis fis a>1\arpeggio
  | s
  | <cis eis gis>\arpeggio
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | cis,1
  | cis
  | cis
  | s
  %5
  | R1*2
  | \clef "bass"
    \repeat unfold 3 { dis1 }
  %10
  | s1
  | R1*2
    \bar "||"
  | \key g \major
    \clef "bass"
    e1
  | e
  %15
  | e
  | fis
  | fis
  | s
  | R1*2
  %21
  | \clef "bass"
    R1
  | <fis cis'>
    \bar "||"
  | \key e \major
    <cis a' cis>2.\arpeggio r4
  | R1*3
  %27
  | \stemNeutral a''1
  | b
  | a
  | gis
  | <fis a>
  | <dis b'>
  | <fis a>
  | <cis gis'>
  %35
  | <fis, fis'>
  | <e e'>2 <fis fis'>
  | <dis dis'>1
  | <cis cis'>2 <dis dis'>
  | <b b'>2 <cis cis'>
  %40
  | <ais ais'>2. <b b'>4
  | <bis bis'>2 <cis cis'>
  | <b b'>2. <bis bis'>4
    \bar "||"
  | \key cis \major
    \stemDown <cis gis' cis>2\arpeggio
    \tieDown q~_>
  | q4 r r2
  %45
  | s1*2
  | \clef "bass"
    <cis gis' b>2\arpeggio q_>~
  | q4 r r2
  | s1*2
  %51
  | \clef "bass"
    \stemDown <cis fis a d>2\arpeggio q~_>
  | q4 r r2
  | s1*2
  | R1*2
    \clef "bass"
  %57
  | <cis fis a>1\arpeggio
  | R1
  | <cis gis' cis>2\arpeggio q~_>
  %60
  | q4 r r2
  | r2 \clef "treble" \once\stemNeutral <eis'' cis' eis>
  | \tieNeutral <gis b>1~
  | q4 r \clef "bass" <cis,,, gis' b>2_~_>\arpeggio
  | q4 r r2
  %65
  | r2 \clef "treble" \stemNeutral <e'' b' e>\(
  | <gis b>1
  | <fis a>4\) r \clef "bass" \stemDown <cis,, fis a! d>2_>_~\arpeggio
  | q4 r r2
  | R1*3
  %72
  | <fis a d>1
  | <cis fis a>\arpeggio
  | R
  %75
  | <cis gis'>\arpeggio
  | eis'
  | ais
  | gis
  | \stemNeutral fis2 eis
  %80
  | dis cis
  | b a~
  | a gis
  | <cis, gis' cis>1\arpeggio
  | ais'2\( bis
  %85
  | \afterGrace gis1 { fisis16 ais }
  | gis2 fisis\)
  | <cis gis' cis>1
  | ais'2\( bis
  | \afterGrace gis1 { fisis16_( ais }
  %90
  | gis2) fisis\)
  | <cis gis' cis>1^\(
  | \clef "treble"
    <gis''' cis eis>~\)
  | q\fermata
    \fine
}

cresc = {
  \override TextSpanner.bound-details.left.text = \markup { \hspace #2 "cresc. " }
}
dim = {
  \override TextSpanner.bound-details.left.text = \markup { "dim. " }
}

dynamics = {
  | s4\mf s2.
  | s1*3
  %5
  | s2 s2-\markup { "dim." }
  | s1
  | s1-\markup { \dynamic mf "sempre legato" }
  | s1*3
  %11
  | s2 s8 s4.-\markup { "dim." }
  | s1*2
  | s4\cresc s\startTextSpan s2
  %15
  | s4 s s s8 s\stopTextSpan
  | s1
  | s4 s8 s^\markup { "rinf." } s2
  | s1
  | s4. s8-\markup { "dim." } s2
  | s1*3
  %23
  | s2. s4\<
  | s1
  | s4 s\! s2
  | s4\> s2.
  | s4\!
    \once\override Staff.TextScript.extra-offset = #'(-0.8 . 1)
    s2.-\markup { \dynamic p \whiteout "sempre legato" }
  | s1*7
  %35
  | s4-\markup { "un poco cresc." } s2.
  | s1*8
  %44
  | s2 s2-\markup { \whiteout "cantando" }
  | s1*15
  %60
  | s2 s2-\markup { \whiteout "espressivo" }
  | s1*7
  %68
  | s2 s2\f
  | s1*4
  | s4-\markup { "dim." } s2.
  | s1
  | s4\p s2.
  | s4-\markup { \whiteout "dolce espressivo" } s2.
  | s1*6
  %83
  | s4\p s2.
  | s1*3
  | s1\dim
  | s4\startTextSpan s2.
  | s1
  | s4 s s s\stopTextSpan
  | s s\pp s2

}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 8 { s1\noBreak } s1\break\noPageBreak
 %\repeat unfold 8 { s1\noBreak } s1\pageBreak
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s4\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s1*3
  | s4\sustainOff\sustainOn s2.
  | s1
  %9
  | s4\sustainOff\sustainOn s2.
  | s1*3
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  %15
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s1*3
  %21
  | s4 s s s8 s\sustainOff
  | s1
  | s4\sustainOn s2.
  | s4 s s\sustainOff s
  | s1*13
  %38
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff s2.
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s4\sustainOn s2.
  | s1
  %45
  | s2 s4\sustainOff s
  | s1
  | s4\sustainOn s2.
  | s1
  | s2 s4\sustainOff s
  %50
  | s1
  | s4\sustainOn s2.
  | s1
  | s2 s4\sustainOff s
  | s1*3
  %57
  | s4\sustainOn s2.
  | s2\sustainOff s
  | s4\sustainOn s2.
  | s1
  | s2 s4\sustainOff s
  | s1
  %63
  | s4\sustainOn s2.
  | s1
  | s2\sustainOff s
  | s1
  | s4\sustainOn s2.
  | s1
  | s4 s s s8\sustainOff s
  | s1*3
  %73
  | s4\sustainOn s2.
  | s4 s s s8\sustainOff s
  | s1*8
  %83
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s1*2
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s1*2
  | s4\sustainOn s2.
  | s1*2
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
    opus = "S.204 (1877)"
    title = \markup { "Recueillement" }
    subtitle = \markup { "Vincenzo Bellini in memoriam" }
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
    \tempo 4 = 90
  }
}
