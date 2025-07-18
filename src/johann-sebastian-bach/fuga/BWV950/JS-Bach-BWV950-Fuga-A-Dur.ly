\version "2.25.26"

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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Fuga A-Dur" }
        \null\null
        \line { \abs-fontsize #24 \bold "Über ein Thema von Tommaso Albinoni" }
        \null\null\null
        \line { \abs-fontsize #20 "BWV 950" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
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
          \abs-fontsize #10 "Based on: Bach-Gesellschaft Ausgabe - Leipzig: Breitkopf und Härtel, 1890"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key a \major
  \time 4/4
  \include "global.ly"
}

\include "./macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  %1
  | \highlightSubject { b8\rest a4 b16 cis d8 cis16 d b cis d e
  | cis8 fis e fis16 e d e cis d b4\trill
  | \unHighlightSubject a16 } b gis a b cis a b cis d b cis dis e cis dis
  | e8. fis16 gis8 a16 gis fis gis e fis dis8.\mordent e16
  %5
  | e4 r16 e d e fis4 r16 d cis d
  | e4 r16 cis b cis d e cis d b cis d e
  | cis4. b8 a a a gis
  | a4 r8 cis fis e d8. cis16
  | cis4 r8 a b4 r8 gis
  %10
  | a4 r8 fis gis4 r
  | R1
  | \highlightSubject { d'8\rest e,4 fis16 gis a8 gis16 a fis gis a b
  | gis8 cis b cis16 b a b gis a fis8.\mordent e16
  | \unHighlightSubject e } gis a b cis8 b16 cis a fis gis a b8 a16 b
  %15
  | gis b cis d! e d cis b a cis d e fis e d cis
  | b8 e4 d8~ d cis4 b8~
  | b a4 gis8 a16 cis fis a, gis8.\mordent a16
  | a8. b16 cis b a gis fis gis a b gis8. a16
  | \stemNeutral a8 a' gis a16 gis fis gis a b gis a fis gis
  %20
  | eis fis gis a fis gis e fis dis e fis gis e fis d e
  | cis d cis b a cis fis a, gis b e gis, fis a d! fis,
  | \stemUp gis b e8~ e4~ e4. dis8
  | e8. e16 dis8 e16 d cis d b cis a b cis dis
  | e8 r r4 r2
  %25
  | R1*2
  | \override MultiMeasureRest.staff-position = #4
    R1
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  %30
  | \highlightSubject { r8 a,4 b16 cis d8 cis16 d b cis d e
  | cis8 fis e fis16 e d e cis d b8.\mordent a16
  | \unHighlightSubject a16 } cis dis e fis8 e16 fis d fis gis a b8 a16 b
  | gis b, cis d e8 d16 e cis e fis gis a8 gis16 a
  | fis gis e gis fis gis e fis d e cis e d e cis d
  %35
  | b8 e~ e16 d cis b a8 d~ d16 cis b a
  | gis e a fis b gis cis a d b cis e fis a, e' gis,
  | <a cis>8 a'16 gis fis e d cis b gis' e a d, a' b, gis'
  | a cis, d a' gis cis, a' gis fis b, e a, d gis, a b
  | cis4 r16 cis d cis b4 r16 b cis b
  %40
  | a4 r16 a' b a gis d! cis b cis8 gis'
  | fis16 cis b ais b8 fis' e16 b ais! gis ais8 e'
  | d cis16 b g'8 fis16 e c'4~ c16 b ais b
  | ais8 fis4 e16 fis d8 d4 cis16 d
  | b8 cis ais8.\parenthesize\mordent b16 b8 r r4
  %45
  | r8 e4 d!16 e cis4 r
  | r8 dis4 cis16 dis bis8 gis'4 fis16 gis
  | e8 d16 cis d cis bis cis bis8 e16 cis d! cis bis! cis
  | bis gis gis' cis, bis8.\parenthesize\mordent cis16 cis4 r8 cis
  | dis4 r8 dis cis4 r8 cis
  %50
  | dis gis, a gis <e gis> gis'16 e a e a gis
  | fis8 fis16 dis gis dis gis fis e8 e16 cis fis cis fis e
  | dis8 dis16 b e b e d cis8 dis16 eis fis4~
  | fis16 fis eis dis eis8 b'~ b16 b a gis a8 d,~
  | d16 d cis b cis8 gis'~ gis16 gis fis eis fis8 b,
  %55
  | b16 gis a b eis,4 r16 cis' b a d a gis fis
  | eis cis' b a gis8.\mordent fis16 fis4. fis8
  | gis a b gis cis d e fis
  | gis a b4~ b8 a16 gis a8 gis
  | fis8 r r4 r2
  %60
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  | \highlightSubject { b,8\rest e,4 fis16 gis a8 gis16 a fis gis a b
  | gis8 cis b cis16 b a b gis a fis8.\mordent e16
  | e8 } b'16\rest b, cis e d cis d fis e d e g fis e
  %65
  | fis8 b16\rest fis gis b a gis a cis b a gis e' d cis
  | b cis b a gis a gis fis e b' a gis fis e' d cis
  | b fis' e d cis b a g fis gis a b cis8 b16\trill a
  | a4 r r2
  | \override MultiMeasureRest.staff-position = #4
    R1*2
  | R1*4
  %75
  | \highlightMotif { r8 e'4 fis16 gis a8 gis16 a fis gis a b
  | \unHighlightSubject gis } a gis fis e fis e d! cis dis e fis dis e fis gis
  | e8 r r e~ e4. dis8
  | e4. b8 cis b a fis
  | gis4 c8\rest gis a b cis16 b cis dis
  %80
  | e8 b16 cis d cis b a gis8 b16 cis d cis b a
  | gis8 cis16 d e d cis b a8 d16 e fis e d cis
  | d e d cis b8.\parenthesize\mordent a16 a4 d8\rest e,
  | fis e fis gis a16 gis a b cis4
  | b8 a4 gis8 a16 e a e d'\rest e, a e
  %85
  | r16 a cis a r b fis' b, r b e b r b e b
  | r cis fis cis r cis fis cis d4 d~
  | d8. b16 e4~ e16 e a8~ a16 b a gis
  | fis b a b e, a gis a d, gis fis gis cis, fis e fis
  | b, e dis e a, dis cis dis e b e8~ <b e>4~
  %90
  | \override Rest.staff-position = #0
    q r r16 e, fis gis a b cis d
  | << {
      cis a cis
      \override Tie.extra-offset = #'(-0.4 . 0)
      e_~ e2
    } \\ {
      \voiceOne
      s4 a2
    } \\ {
      \voiceOne \stemDown\tieDown
      s8 cis,~ cis2
    } \\ {
      \voiceOne \stemDown\tieDown
      \mergeDifferentlyDottedOn
      f,16\rest
      \override Tie.extra-offset = #'(0 . -1.5)
      a8.~ a2
    } >>
    r4
  | \stemNeutral
    r16 e' g fis e d cis b cis a e' gis, a b cis e,
  | a,16 r r8 r4 r4 d'16\rest a gis fis
  | \stemUp\tieUp
    <gis b>4 e'16\rest \tempo "(Allegro)" d
    cis b e b cis d e4~
  %95
  | <cis e>1~
  | q4 f16\rest d cis b e gis, a b cis e, fis gis
  << {
  | a4 a~ a16 b cis! d!32 e gis,8.\mordent a16
  | a2 a
  | a1\fermata
  } \\ {
  | a16 e cis a r8 dis e2
  | d16\rest g fis e \stemUp fis4 \shiftOn fis2
  | \once\override NoteColumn.force-hshift = #0.8
    e8 fis e d e2^\fermata
  } \\ {
  | s2
    \once\override Voice.Rest.X-offset = #0.6
    g,4\rest
    \stemDown d'
  | \once\override Voice.Rest.X-offset = #0.8
    f,4\rest b16\rest e d cis d2
  | %\once\override NoteColumn.force-hshift = #0.8
    cis8
    d a16\rest cis8 b16 <a cis>2
  } >>
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | R1*2
  | \highlightSubject { r8 e4 fis16 gis a8 gis16 a fis gis a b
  | gis8 cis b cis16 b a b gis a fis8. e16
  %5
  | \unHighlightSubject e } gis a b cis8 b16 cis a fis gis a b8 a16 b
  | gis e fis gis a8 gis16 a fis gis a b gis a fis gis
  | a e fis gis a8 gis fis e16 fis d8 b
  | e a gis4 r16 b8 a16~ a a gis8
  | a4 r8 fis fis4 r8 e
  %10
  | e4 r8 dis e16 b cis dis e8 d16 e
  | cis e fis gis a8 gis16 a fis gis e fis d e cis d
  | b cis a b cis4 dis8 e4 dis8
  | e4 dis8 e dis e4 dis8
  | e4 r r2
  %15
  | R1*3
  | \change Staff = "lower" \voiceThree
    \highlightSubject { b8\rest a4 b16 cis d8 cis16 d b cis d e
  | cis8 fis e fis16 e d e cis d b cis d b
  | \unHighlightSubject cis16 } d b cis ais b cis ais b cis a b gis a b gis
  | a8 b cis dis e cis a b
  | %\showStaffSwitch
    \change Staff = "upper" \voiceTwo
    e8. fis16 gis8 a16 b cis8 b16 cis a8 fis
  | e4 r r2
  | r8 e4 d!16 e cis8 fis4 e16 fis
  %25
  | dis8 gis4 fis16 gis e8 fis16 gis a8 gis16 fis
  | fis8 e16 fis gis a b gis cis8 fis,16 gis a b cis a
  | d8 gis,16 a b cis d b e8 fis,16 d' e, cis' d, b'
  | cis, fis a cis, b gis' a, fis' gis, e' cis' e, d b' cis, a'
  | b, gis' a e fis gis a a, d e cis d b8.\mordent a16
  %30
  | a8  r r4 c2\rest
  | R1*6
  | \hideStaffSwitch \change Staff = "lower" \voiceThree
    \highlightSubject { r8 a4 b16 cis
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    d8 cis16 d b cis d e
  | cis8 fis e fis16 e d e cis d b8._\parenthesize\prall a16
  | \unHighlightSubject a16 } cis dis e fis8 a, gis16 b cis dis e8
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    gis,
  %40
  | fis16 e' dis cis dis8 fis, e4
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    r16 e' fis e
  | d!4 r16 d e d cis4 r16 cis d cis
  | b4 r4 r8 e16 fis g8 fis16 e
  | fis8. gis16 ais b cis ais b8 b,16 cis d e fis d
  | g8 fis16 e fis8
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    fis, b
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    b'4 a16 b
  %45
  | gis4 r r8 a4 gis16 a
  | fis4 r r8 bis!16 cis dis4
  | cis8 r r4 r2
  | c,2\rest \highlightSubject { r8 cis4 dis16 e
  | fis8 e16 fis dis e fis gis e8 a gis a16 gis
  %50
  | fis gis e fis dis8. cis16 cis4 }
    \change Staff = "lower" \voiceThree
    d8\rest cis
  | dis cis bis gis cis b
    ais fis
  | b a gis e a4
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    r16 a' gis fis
  | gis4~ gis16 gis fis eis fis4~ fis16 fis e! d!
  | e4~ e16 e d cis d4~ d16 d cis b
  %55
  | cis4~ cis16 d cis b a4 b8 d
  | cis
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    fis, b16 gis cis b a8
    \change Staff = "upper" \voiceTwo
    b16 cis d8 cis
  | dis16 eis fis4 eis!8 fis b a4
  | eis'8 fis4 eis8 fis4. eis8
  | fis cis16 a d fis, e! d e8 d'16 b cis e, d cis
  %60
  | d8 cis'16 a b d, cis b cis8 b'16 gis a cis, b a
  | b8 a'16 fis gis
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    gis, a gis cis b a gis fis8.\parenthesize\mordent e16
  | e2 fis8 e4 dis8
  | e8. fis16 gis8 a b
    \change Staff = "upper" \voiceTwo
    cis dis4
  | e8 g,\rest r4 e2\rest
  %65
    R1
  | \override MultiMeasureRest.staff-position = #-10
    R1*2
  | \highlightSubject { b'8\rest a4 b16 cis d8 cis16 d b cis d e
  | cis8 fis e fis16 e d e cis d b8.\parenthesize\mordent a16
  %70
  | \unHighlightSubject a8 } a'16 a, b g' cis, g' fis d b' b, cis a' dis, a'
  | gis e e' e, fis d'! gis, d' a cis b d cis e d cis
  | b gis e' e, a cis b a gis e cis' cis, fis a gis fis
  | eis cis a' a, d fis e d cis dis e fis dis e fis gis
  | e fis gis a fis gis a b gis fis a gis fis8.\mordent e16
  %75
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    e8 e16 d cis b a gis 	fis8 cis'4 b8~
  | b
    \change Staff = "upper" \voiceTwo
    e4 fis16 gis a8 gis16 a fis gis a b
  | gis8 e'16 d cis b a gis fis8 gis a fis
  | b16 cis b a gis8 e~ e4. dis8
  | e4 c8\rest e fis gis a4
  %80
  | gis4 a8 fis e e fis d
  | e d cis e fis4 r8 fis
  | gis a4 gis8 a16 e cis e a,4~
  | a d8 b e r r16 gis a gis
  | fis gis e fis d cis d e cis4 cis
  %85
  | fis fis gis gis
  | ais ais r16 b fis b d fis, b8~
  | 16 d, e8~ e16 b' cis d cis8. d16 e4
  | r8 d r cis r b r a
  | r gis r fis gis4 gis~
  %90
  | gis s2.
  | s4 r16 fis e d
    \once\override Beam.positions = #'(-11.5 . -12.5)
    cis
    \hideStaffSwitch \change Staff = "lower" \voiceThree \stemDown
    b a gis
    << {
      \stemUp\tieDown a a, cis e^~
  |   <e a>4 d\rest d2\rest
    } \\ {
      \voiceTwo
      s16
      \override Tie.extra-offset = #'(0 . -1.5)
      a8.~
  |   a4 s2.
    } \\ {
      \voiceTwo
      s8 cis~
  |   cis4 s2.
    } >>
  | \change Staff = "upper" \voiceTwo
    s2 r16 cis' b a d4
  | d r r r16 gis a b
  %95
  | << {
      \stemDown
      f16\rest e fis gis
      \override Tie.extra-offset = #'(0 . -0.2)
      a2.~
  |   a4 s2.
    } \\ {
      e,4\rest r16 b' cis d e2~
  |   e4 d4\rest c2\rest
    } >>

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*6
  | \highlightSubject { d8\rest a4 b16 cis d8 cis16 d b cis d e
  | cis8 fis e fis16 e d e cis d b4\trill
  | \unHighlightSubject a16 } a' b cis d d, cis d gis, gis' a b cis cis, b cis
  %10
  | fis, fis' gis a b b, a b e,4 r16 e' fis gis
  | a4 r16 a b cis d8 cis b a
  | gis4 a8 gis fis e a b
  | e, a,4 gis8 fis e a b
  | e,4 r16 cis' dis e fis8 e16 fis dis b cis dis
  %15
  | e8 d cis e fis e d b
  | e16 d cis b a fis' b a gis e a gis fis dis gis fis
  | e cis fis e d b e d cis8 d e e,
  | \stemDown a4 r r2
  | \override MultiMeasureRest.staff-position = #-4
    R1*3
  %22
  | \stemNeutral
    \highlightSubject { r8 e'~ e16 e fis gis a8 gis16 a fis gis a b
  | gis8 cis b cis16 b a b gis a fis8.^\mordent e16
  | \unHighlightSubject e8. } fis16 gis a b gis a8 fis16 gis a b cis ais
  | b8 gis16 a b cis d! b cis8 fis, cis' cis,
  | fis cis4 b16 cis a8 d4 cis16 d
  | b8 e4 d16 e cis8 d e e,
  | fis8. gis16 a8 b cis a16 b cis8 d
  | e cis d cis b a d e
  %30
  | a, a'16 gis fis e d cis b gis' a, a' d, a' e gis
  | a,8. b16 cis d e fis gis e a cis, d b e e,
  | a4 r16 fis' gis a b8 b, r16 b' cis d
  | e8 e, r16 e fis gis a8 a, r16 a' b cis
  | d e cis e d e cis d b cis ais cis b cis a b
  %35
  | gis8. e16 a8. gis16 fis e d cis b8 cis16 d
  | e8 cis' b a gis a d, e
  | \stemDown
    \revert Rest.staff-position
    a,4 r r2
  | R1*6
  %44
  | \stemNeutral
    \override Rest.staff-position = #0
    r2 r8 b16 cis dis e fis dis
  | e8 e,16 fis gis a b gis a8 a16 b cis dis e cis
  | dis8 dis16 e fis gis a fis gis8 gis16 ais bis cis dis bis
  | cis8 e fis fis, gis cis, fis8. fis,16
  | gis8 e16 fis gis4 cis8 cis16 dis e8 dis16 cis
  | bis4 r8 gis cis16 cis' fis, cis' e, cis' fis, cis'
  %50
  | dis, bis' cis, cis' fis, cis' gis bis cis,4 r
  | R1*2
  | \override MultiMeasureRest.staff-position = #0
    R1*3
  %56
  | r2 r8 fis4 gis16 a
  | b8 a16 b gis a b cis a8 d! cis8 d16 cis
  | b cis a b gis8. cis16 d8 cis16 b cis8 cis,
  | fis4 r8 b gis4 r8 a
  %60
  | fis4 r8 gis e4 r8 fis
  | \stemDown dis4 b8\rest e a, fis b4
  | e,8 e'16 d cis b a gis fis8 cis' a b
  | e, a e' cis dis e fis16 a gis fis
  | gis b a gis a8 \stemNeutral r16 e fis a g fis g b a g
  %65
  | a cis b a b8 r16 b cis e d cis b8 a
  | gis fis e d cis a d b
  | e gis a cis, d16 cis b a e'8 e,
  | a16 cis d e fis e d cis b gis' a4 gis8
  | a gis16 fis gis8 cis fis,16 gis a8 d, e
  %70
  | fis4. e8 d4 fis8 b,
  | e gis b e a, gis a d
  | e d cis a e' a,,[ d b]
  | cis fis, fis' gis a gis16 a b gis a b
  | cis a b cis dis b cis dis e8 a, b b,
  %75
  | \stemDown\tieDown
    e r r e~ e4 dis
  | e r r2
  | \stemNeutral\tieNeutral
    \highlightMotif { r8 e4 fis16 gis a8 gis16 a fis gis a b
  | \unHighlightSubject gis } a gis fis
    \highlightSubject { e e, fis gis a8 gis16 a fis gis a b
  | gis8 cis b cis16 b a b gis a fis8. e16
  %80
  | \unHighlightSubject e8 } e' fis d e4 r
  | R1
  | r2 \highlightSubject { r8 a,4 b16 cis
  | d8 cis16 d b cis d e cis8 fis e fis16 e
  | d e cis d b a b cis a4 } r16 a cis a
  %85
  | d4 r16 d b d e4 r16 e cis e
  | fis4 r16 ais fis ais b4~ b8. a16
  | gis4. e8 a8. b16 cis8 a
  | d4 e e e
  | e e e r16
    << {
      e8.~
  |   e4 r4 r2
    } \\ {
      \voiceFour \stemUp\tieUp
      s16 b8~
  |   \shiftOff b4 s2.
    } \\ {
      \voiceFour \stemDown\tieUp
      \mergeDifferentlyDottedOn
      e16 b gis_~
  |   \shiftOff <e gis>4 s2.
    } >>
  | s1*2
  %93
  << {
  | \voiceFour
    e,4\rest \stemDown fis2.
  | e1~_\markup { "Pedal" }
  %95
  | e~
  | e~
  | e
  | a2
    \override Tie.extra-offset = #'(0 . -0.6)
    a~
  | a1\fermata
  } \\ {
  | \voiceThree \stemDown
    f'16\rest e cis a s4 \stemUp d2
  | <gis, b d e>4 f'4\rest f2\rest
  | f\rest a16\rest gis a b cis e, fis gis
  | \override Tie.extra-offset = #'(0 . 0.8)
    a4^~
    \shiftOff a f2\rest
  | d'4\rest c16\rest c b a b2
  | a a32\rest b a g fis g fis e d e fis g a b cis d64 gis,,!
  } \\ {
  | \voiceFour
    s8 \stemUp\tieUp cis~ cis16 cis b a s2
  | s1
  | s1
  | \stemDown
    \once\override Voice.Rest.X-offset = #-1.2
    e'16\rest
    \stemUp e8.~ \shiftOff e4 s2
  | f2\rest \stemDown d!
  | \stemUp \shiftOn e4 s2.
  } \\ {
  | s1
  | s1
  | s1
  | \stemDown
    \once\override Voice.Rest.X-offset = #0
    c8\rest
    \stemUp
    \override Tie.extra-offset = #'(-0.6 . -0.8)
    cis8^~ \shiftOff cis4 s2
  } \\ {
  | \voiceFour
    s1
  | s1
  | s1
  | \stemDown
    \once\override Voice.Rest.X-offset = #1.2
    b8.\rest
    \stemDown a16_~ \stemUp \shiftOff a4 s2
  } >>
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\pageBreak
  % page 2
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\pageBreak
  % page 3
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\pageBreak
  % page 4
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\pageBreak
  % page 5
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\pageBreak
  % page 6
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s\break\noPageBreak
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
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 950"
    title = \markup { "Fuge A-Dur" }
    subtitle = \markup { \italic "Über ein Thema von Tommaso Albinoni" }
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
