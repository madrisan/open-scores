\version "2.25.24"

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
        \line { \abs-fontsize #40 \bold "Fuge in A Dur" }
        \null\null
        \line { \abs-fontsize #20 "BWV 949" }
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
  \override MultiMeasureRest.staff-position = #0
  %1
  | \highlightSubject { a8 a a a b4 r8 b
  | cis8 b16 cis dis8 cis16 dis e4 } r8 e~
  | e d16 cis d8 cis d a b a16 b
  | cis8 a16 b cis4 d r8 d
  %5
  | cis4 b r8 e16 fis gis8 fis16 gis
  | a4 r8 a gis4 a~
  | a8 b16 a gis8 fis16 gis a8 e d4
  | cis dis e f\rest
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  %11
  | d2\rest \highlightSubject { e,8 e e e
  | fis4 c'8\rest e, fis8 e16 fis gis8 fis16 gis
  | a4 } b cis dis
  | e r8 d!~ d e16 d cis8 d16 cis
  %15
  | b8 cis16 b a8 b16 a gis4. a16 gis
  | fis4. gis8 a4. gis8
  | a4 r8 a~ a gis16 fis gis8 gis
  | a e fis e16 fis gis8 b16 a gis8 fis16 gis
  | a4 fis8 gis fis4 e~
  %20
  | e8 e'16 d cis8 d16 cis b4 r16 a b cis
  | d gis, a b cis fis, gis a b e, fis gis a dis, e fis
  | gis4 a d8 cis16 b a8 gis
  | a4 b r16 d e fis g cis, d e
  | fis b, cis d e a, b cis d8 e16 d cis8 d16 cis
  %25
  | b8 cis16 b a8 b16 a gis8 fis16 e a b cis d
  | e8 a,16 b gis8. a16 a4 e8 fis
  | d e16 fis e8. d16 cis4 b
  | b d'\rest d2\rest
  | R1
  %30
  | \override MultiMeasureRest.staff-position = #6
    R1
  | \highlightSubject { a8 a a a b4 r8 b
  | cis b16 cis dis8 cis16 dis e4 } fis
  | b, r s b8 a16 b
  | cis16 e d cis b d cis b a cis b a gis b a gis
  %35
  | fis4 b8\rest a~ a gis16 fis gis8 fis
  | gis cis b cis16 b b4 a8 b16 a
  | gis8 a16 gis fis8 gis16 fis~ fis8 e!4 d8~
  | d cis4 b16 a b4 cis
  | d'2\rest \highlightSubjectInv { cis8 cis cis cis
  %40
  | a4 r8 b a b16 a gis8 a16 gis
  | fis4 } r8 fis e4 r8 b'~
  | b a16 gis a b a gis fis8 b16 a b cis b a
  | gis8 cis16 b cis d! cis b a b a gis fis8. gis32 a
  | gis8 e16 fis gis8 fis16 gis a8 gis16 a b8 a16 b
  %45
  | cis8 b16 cis d8 cis16 d e4 r8 e~
  | e d4 cis8~ cis b4 a8~
  | a fis16 gis a8 b b4 r
  | r2 b4 r8 e~
  | e d16 cis d8 cis d a b a16 b
  %50
  | cis8 b16 cis d4~ d8 cis4 b8~
  | b a4 gis8~ gis16 b a gis fis4~
  | fis16 a gis fis e4~ e16 gis fis e dis4
  | e16 e fis g a d, e fis g8 a16 g fis8 gis16 fis
  | b4\rest b8\rest a~ a16 gis! a b cis fis, gis a
  %55
  | b8 cis16 d e a, b cis d8 e16 d cis8 d!16 cis
  | b4 a'8\rest b,~ b a4 gis8
  | a r r4 r8 e' e e
  | cis4 r8 d cis d16 cis b8 cis16 b
  | a4~ a8 gis~ gis fis4 e8
  %60
  | a16 b cis d e fis gis a fis e d cis b a gis fis
  | gis4 r r r8 eis!
  | fis eis16 fis gis8 fis16 gis a8 b16 a gis8 a16 gis
  | fis8 gis16 fis e8 fis16 e d8 cis16 d e8 d16 e
  | \stemDown fis8
    \change Staff = "lower"
    a, \stemUp gis a16 gis
    fis8
    \change Staff = "upper" \stemDown
    d' b e
  %65
  | \stemUp a4 b2 b4
  | b dis e8 b16 a gis4
  | a fis8 gis fis4 e
  | \highlightSubject { a8 a a a b4 r8 a
  | b8 a16 b cis8 b16 cis \unHighlightSubject d8 } cis16 b a c b a
  %70
  | g b a g fis a g fis e8 a16 g fis8 g16 fis
  | e8 fis16 e dis8. dis16 e4 r8 b'~
  | b a16 gis! a8 gis a e fis e16 fis
  | gis8 cis b e a, d gis, cis
  | fis, b e, a~ a gis16 fis gis8 e'~
  %75
  | e d16 cis d8 cis d a b a16 b
  | cis d cis b a cis b a gis a gis a b4
  | a a8 b a4 d
  | e8 fis16 e d8 e16 d cis4 e~
  | e8 d16 cis d cis d a d cis d a d a fis c'~
  %80
  | c4 b16 c b a gis b e, gis fis a gis b
  | a8 cis d16 cis b cis d fis e g fis e d e
  | fis a gis b a gis fis gis e gis fis e d fis e d
  | cis e d cis b d cis b a cis b a b cis b a
  | gis e fis gis a b cis8~ cis4~ cis16 d e fis
  %85
  | gis b e, d cis a' a, cis b gis' gis, b a fis' fis, a
  | gis a b cis d8. cis16 b2
  | a1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-6
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | R1
  | r2 \highlightSubject { e8 e e e
  | fis4 r8 e fis8 e16 fis gis8 fis16 gis
  | a4 } e8 a~ a gis16 fis gis8 gis
  %5
  | a e 	fis e16 fis gis8 a b a16 b
  | cis4 d~ d8 e16 d cis8 d16 cis
  | b4
    \showStaffSwitch \change Staff = "lower" \stemUp\tieUp
    e,~ e8 e16 fis gis8 fis16 gis
  | a4~ a8
    \hideStaffSwitch \change Staff = "upper" \stemDown
    b16 a \stemUp \shiftOn gis8 e16 fis gis4
  | a r8 \stemDown\tieDown g fis4 e~
  %10
  | e2~ e8 fis16 e d4~
  | d8 e16 d cis8 d16 cis b4 r8 b
  | cis4 b\rest s2
  | s1*3
  %16
  | \change Staff = "lower" \stemUp\tieUp
    \override MultiMeasureRest.staff-position = #4
    R1
  | \highlightSubject { a8 a a a b4 b8\rest b
  | cis b16 cis dis8 cis16
    \hideStaffSwitch \change Staff = "upper" \stemDown
    dis e4 } r8 e
  | e8 d!16 cis d8 cis d a b a16 b
  | cis8 d e fis gis4 d\rest
  | \override MultiMeasureRest.staff-position = #-8
    R1
  %22
  | \highlightSubject { e8 e e e fis4 r8 eis
  | fis8 eis16 fis gis8 fis16 gis a4 } g
  | fis e
    \showStaffSwitch \change Staff = "lower" \stemUp\tieUp
    fis16 cis d e fis b, cis d
  %25
  | e a, b cis d gis, a b cis4 e16\rest e d cis
  | b8
    \hideStaffSwitch \change Staff = "upper" \stemDown\tieDown
    cis d4~ d8 cis16 b cis4
  | b r r2
  | \highlightSubject { e8 e e e fis4 r8 e
  | fis8 e16 fis gis8 fis16 gis \unHighlightSubject a8 } gis16 a b8 a16 b
  %30
  | cis8 b16 cis dis8 cis16 dis e cis b a gis fis e d!
  | cis8 d e fis d4 e~
  | e8 gis a4 b a~
  | a8 gis16 fis gis8 fis16 gis a8 gis16 a s4
  | s1*5
  %39
  | d,4~ d16 e fis gis eis8 fis4 eis8
  | fis4 d cis b
  | a8 d16 cis d e d cis b8 e16 d e fis e d
  | cis4 r8 cis d4 r8 dis
  | e4 r8 e fis e4 dis8
  | e4 r8 e e4 r8 fis
  %45
  | a4 b cis8 d16 cis b8 cis16 b
  | a8 b16 a gis8 a16 gis fis8 gis16 fis e8 fis16 e
  | d4 r8 dis e dis16 e fis8 e16 fis
  | gis8 fis16 gis a8 gis16 a e8 e e e
  | fis4 r8 e fis e16 fis gis8 fis16 gis
  %50
  | a8 gis16 a b cis b a gis b a gis fis a gis fis
  | e gis fis e dis fis e dis cis4~ cis16 e dis cis
  | b4~ b16 d cis b a4~ a16 cis b
    \change Staff = "lower" \stemUp\tieUp
    a
  | gis8 a16 g fis8 g16 fis e a b cis d gis, a b
  | %\change Staff = "upper" \stemDown\tieDown
    e fis e d cis e d cis b d cis b a cis b a
  %55
  | gis8
    \change Staff = "upper" \stemDown\tieDown
    e'16 d cis8 d16 cis b e fis gis a dis, e fis
  | gis4 b\rest e,2*1/2\rest r8 d
  | cis8 d16 cis b8 cis16 b a4 a\rest
  | R1*3
  %61
  | e'8 e e eis fis4 a,\rest
  | R1
  | \highlightSubject { a8 a a a b4 r8 cis
  | \once\override NoteColumn.force-hshift = #0.3 d cis16 d e8 d16 e
    \stemUp \unHighlightSubject fis8 } e16 fis gis8 fis16 gis
  %65
  | \stemDown cis,8 b16 cis dis8 cis16 dis e8 dis16 e fis8 e16 fis
  | gis8 fis16 gis a8 b16 a gis4 r8 e~
  | e d!16 cis d8 cis d a b a16 b
  | cis8 d16 e fis gis fis e d8 b e4
  | d8 fis g4 a r
  %70
  | R1
  | r2 \highlightSubject { b,8 b b b
  | cis4 b8\rest b cis b16 cis dis8 cis16 dis
  | \unHighlightSubject e } d e fis gis fis gis a fis e fis gis e d e fis
  | d cis d e cis b cis d b4 r
  %75
  | R1
  | r2 r4 r8 e~
  | e fis16 g fis8 e fis e16 fis gis8 fis16 gis
  | a4 r r16 fis gis a b e, fis gis
  | a4 r r2
  %80
  | << { \stemDown fis4 fis } \\ { \once\override NoteColumn.force-hshift = #0.3 dis2 } >>
    e8 r r4
  | cis16 e a, cis b a gis a b d cis e d cis b cis
  | d fis e gis fis gis a fis gis e fis gis fis d e fis
  | e
    \change Staff = "lower" \stemUp
    cis d e d b cis d cis e d cis d e d cis
  | b d cis b cis d e
    \change Staff = "upper" \stemDown
    fis
    gis a fis gis a b cis a
  %85
  | b8 gis a fis gis e fis dis
  | e16 fis gis e fis gis a8~ a4
    << { \stemUp gis8. a16 } \\ { e16 fis b, d } >>
  | <cis e>1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | R1*3
  | \highlightSubject { a8 a a a b4 r8 b
  %5
  | cis8 b16 cis dis8 cis16 dis e4 } r4
  | \clef treble
    b'8\rest a16 gis fis8 gis16 fis e4 fis8 e
  | d4 \stemDown e8 d cis4 b
  | a8 a'16 gis fis8 gis16 fis
    \showStaffSwitch \change Staff = "upper" \stemDown\tieDown
    e4 b8\rest e~
  | e8
    \hideStaffSwitch \change Staff = "lower" \stemUp\tieUp
    \clef bass
    d!16 cis d8 cis d a b a16 b
  %10
  | cis8 d16 cis b8 cis16 b a4~ a8 b
  | gis4 a~ a8 gis16 fis gis8 gis
  | a4 b a8
    \change Staff = "upper" \stemDown\tieDown \voiceTwo
    cis d4
  | c8\rest e16 fis gis8 fis16 gis a4 e8\rest b'16 a
  | gis8 a16 gis fis4 e4. fis8~
  %15
  | fis8 eis fis2 e!4~
  | e d cis8 d16 cis b4
  | cis8 d16 e fis8 e d4 e~
  | e a,\rest s2
  | \change Staff = "lower" \stemUp\tieUp \voiceThree
    s1*4
  %23
  | r2 fis'8 g16 fis e!8 fis16 e
  | d8 e16 d cis8 d16 cis \stemDown b4 a
  | gis4 fis e fis
  | gis8 a b e, \stemUp e4 r8 a~
  | a gis16 fis gis8 gis a e fis e16 fis
  | gis8 a16 b cis8 b ais4 b
  | a r r16 cis b a gis d' cis b
  %30
  | a e' d cis b cis b a gis8 e16 fis gis8 fis16 gis
  | a8 b cis4 b4. d8
  | cis e a,4 r8 b16 cis dis8 cis16 dis
  | e8 b e d cis16 a b cis d b cis d
  | e8 fis16 e d8 e16 d cis8 d16 cis b8 cis16 b
  %35
  | a cis b a d8 a b4
    \showStaffSwitch \change Staff = "upper" \stemDown\tieDown \voiceTwo
    r8 dis
  | e4 fis eis8 dis16 cis fis4~
  | fis8 eis fis[ d!] b16 d cis b a cis b a
  | gis b a gis fis4
    \change Staff = "lower" \stemUp\tieUp \voiceThree
    gis8 fis16 gis a8 gis16 a
  | b8 fis16 e fis8 gis a4 gis
  %40
  | fis8 gis16 a gis8 fis eis fis4 eis8
  | fis4 r8 fis gis4 r8 gis
  | a4 r8 a b4 r8 gis
  | cis4 r8 cis dis e a, b
  | b4 r r2
  %45
  | \override MultiMeasureRest.staff-position = #7
    R1
  | \override MultiMeasureRest.staff-position = #5
    R1
  | a8 a a a gis4 r8 a
  | gis a16 gis fis8 gis16 fis e8 fis16 gis a4~
  | a r8 a16 gis fis8 d' b e
  %50
  | \stemNeutral cis fis d b e a, d gis,
  | cis fis, b e, a4. dis,8
  | gis4. cis,8 fis4.\stemDown b,8
  | e4 g,\rest g2\rest
  | cis'4 d,\rest d2\rest
  %55
  | \override MultiMeasureRest.staff-position = #2
    R1
  | \hideStaffSwitch \change Staff = "upper" \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.3 e'8 e e e cis4 s
  | \change Staff = "lower" \stemUp\tieUp \voiceThree
    r2 r8 e,16 fis gis8 fis16 gis
  | a8 gis16 a b8 a16 b cis8 b16 cis d8 cis16 d
  | e gis fis e d fis e d cis e d cis b d cis b
  %60
  | a4 a~ a8 a d c
  | b4 r8 b a b16 a gis8 a16 gis
  | fis8 gis16 fis eis8 dis16 eis fis e dis b e d cis a
  | d4 cis b r
  | \override MultiMeasureRest.staff-position = #-2
    R1
  %65
  | \highlightSubjectInv { a'8 a a a gis4 r8 a
  | gis8 a16 gis fis8 gis16 fis e4 } b'
  | a4. gis8 a4 e~
  | e r r2
  | r r8 d16 e fis8 e16 fis
  %70
  | g8 fis16 g a8 b cis!16 e cis b a cis b a
  | g b a g fis a g fis e8 e16 fis gis8 fis16 gis
  | a4 r r2
  | \override MultiMeasureRest.staff-position = #0
    R1*3
  %76
  | r2 \highlightSubjectInv { e'8 e e e
  | cis4 r8 d cis d16 cis b8 cis16 b
  | a4 } r r8 d16 cis b8 cis16 b
  | a4 r f2\rest
  %80
  | <fis a>4 <fis b> <e b'>8 r r4
  | s1*5
  | s2
    \change Staff = "upper" \stemDown\tieDown \voiceTwo
    r16 b' cis d
    \change Staff = "lower" \stemUp\tieUp \voiceThree
    r8 e,
  | a16 e fis cis d e a,8~ a2\fermata

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-4
  %1
  | R1*5
  | \override MultiMeasureRest.staff-position = #-9
    R1
  | s1
  | r2 \clef bass \highlightSubject { e8 e e e
  | fis4 c8\rest e fis8 e16 fis gis8 fis16 gis
  %10
  | \unHighlightSubject a8 } b16 a gis8 a16 gis fis4~ fis8 e16 d
  | e4 a, e' r8 e~
  | e8 d16 cis d8 cis d a b a16 b
  | cis4 b a8 a'16 gis fis8 gis16 fis
  | e4 a8 b16 a gis8 e a4
  %15
  | gis4 fis8 d' b a16 b cis8 b
  | a gis16 a b8 e, fis cis d[ e]
  | a,4 d8 cis b4 e8 d
  | cis a' fis b \highlightSubject { e, e e e
  | fis4 d8\rest e fis e16 fis gis8 fis16 gis }
  %20
  | a2 d,8\rest e'16 d cis8 d16 cis
  | b8 cis16 b a8 b16 a gis8 a16 gis fis8 gis16 fis
  | e8 e'16 d! cis8 d16 cis b4 cis
  | fis, c\rest d2\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  %26
  | r2 \highlightSubject { a8 a a a
  | b4 r8 b cis b16 cis dis8 cis16 dis
  | e4 } r8 e~ e d16 cis d8 cis
  | d8 a b a16 b cis8 fis e4
  %30
  | a4 r r2
  | r4 r8 a~ a gis16 fis gis8 gis
  | a e fis e16 fis gis4 fis
  | e r r2
  | R1
  %35
  | \highlightSubjectInv { fis8 fis fis fis e4 d8\rest fis
  | e fis16 e d!8 e16 d cis4 } d16 e d cis
  | b d cis b a cis b a gis8 a16 gis fis8 gis16 fis
  | e8 fis16 e d8 d'~ d e16 d cis8 d16 cis
  | b2 cis
  %40
  | d4 b cis2
  | fis,4 r r2
  | R1*2
  | \highlightSubjectInv { e'8 e e e cis4 r8 d!
  %45
  | cis d16 cis b8 cis16 b \unHighlightSubject a } cis' b a gis b a gis
  | fis4 c8\rest e~ e d4 cis8
  | fis4 r8 b, e4 r8 fis~
  | fis e4 d!8~ d4 cis
  | d r r2
  | s1*4
  | \override MultiMeasureRest.staff-position = #-6
    R1*2
  %56
  | d8\rest \stemNeutral e,16 fis gis8 fis16 gis a8 gis16 a b8 a16 b
  | \stemDown cis8 b16 cis d8 cis16 d cis4 e
  | fis gis a b
  | cis8 d16 cis b8 cis16 b a8 b16 a gis8 a16 gis
  %60
  | fis4 cis d2
  | e8 fis gis cis, fis4 cis
  | fis b, fis8 f\rest f4\rest
  | \override MultiMeasureRest.staff-position = #-6
    R1*3
  %66
  | g2\rest \highlightSubject { e8 e e e
  | fis4 d8\rest e fis e16 fis gis8 fis16 gis
  | a4 } a8\rest a~ a g16 fis g8 fis
  | g d e d16 e fis4 d'
  %70
  | e fis8 g! a4 b,\rest
  | R1
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  | g2\rest \highlightSubject { e8 e e e
  %75
  | fis4 f8\rest e fis8 e16 fis gis8 fis16 gis
  | \unHighlightSubject a } gis a b cis b cis d e8 fis gis fis16 gis
  | a4 b,8\rest gis'! a4 e
  | cis8 d16 cis b8 cis16 b a8 a' gis4
  | fis4 g,\rest g2\rest
  %80
  | dis2 e8 g\rest g4\rest
  | \override MultiMeasureRest.staff-position = #0
    R1*3
  | \stemNeutral\tieNeutral d'2\rest e,~
  | e1~
  | e
  | a_\fermata
    \fine
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
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 949"
    title = \markup { "" }
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
