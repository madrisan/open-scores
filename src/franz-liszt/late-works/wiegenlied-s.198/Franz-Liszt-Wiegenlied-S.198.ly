\version "2.25.28"

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

% \bookpart {
%   \header {
%     maintainer      = "Davide Madrisan"
%     maintainerEmail = "d.madrisan@proton.me"
%   }
%
%   \include "./header.ily"
%   \header {
%     title = ##f
%     composer = ##f
%   }
%
%   \markup {
%     \with-dimensions #'(0 . 0) #'(0 . 0)
%     \with-color \coverColor
%     \filled-box #'(-200 . 200) #'(-200 . 200) #0
%   }
%   \markup {
%     \fill-line {
%       \center-column {
%         \null\null\null\null
%         \null\null\null\null
%         \line { \abs-fontsize #30 \bold "Franz" }
%         \null
%         \line { \abs-fontsize #80 \bold "Liszt" }
%         \null
%         \fill-line { \draw-hline }
%         \null\null\null
%         \line { \abs-fontsize #50 \bold "Wiegenlied" }
%         \null\null
%         \line { \abs-fontsize #30 \bold "(Chant du berceau)" }
%         \null\null\null\null
%         \line { \abs-fontsize #24 "S.198" }
%         \null\null\null\null
%         \fill-line \italic { \abs-fontsize #14 "For Piano" }
%         \null\null\null
%         \null\null\null
%       }
%     }
%   }
%
%   \include "../logo.ly"
% }

Global = {
  \key c \major
  \time 2/2
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S198
  %1
  \tempo Andante 2 = 46
  | R1*4
  | <c e>2.\(_\markup { "dolce" } <b d>4
  | <c e>4 <b d> <c e> <b d>
  | <c g'>1~
  | q2 <d f>\)
  | <c e>2._\markup { "sempre legato" } <b d>4
  %10
  | <c e>4 <b d> <c e> <b d>
  | <c g'>1~
  | q2 <d f>
  | \stemUp a'2. f4
  | g2 fis4 \acciaccatura a8 g4
  %15
  | f2. d4
  | e2 dis4 \acciaccatura f8 e4
  | d2. e8 d
  | cis4 \acciaccatura e8 d4 cis d
  | dis2. e4
  %20
  | \stemNeutral cis4 \tuplet 3/2 { dis8 e dis } b4 cis
  | \stemUp d2. e8 d
  | cis4 \acciaccatura e8 d4 cis4 d
  | dis2. e4
  | \stemNeutral cis4 \tuplet 3/2 { dis8 e dis } b4 cis
  %25
  | a4 \tuplet 3/2 { b8 cis b } gis4 a
  | fis4 \tuplet 3/2 { gis8 a gis } eis4 fis
  | gis2 a4 r
  | r2 a4 b
  | bis2 cis4 r
  %30
  | r2 cis
  | \stemUp d!1
  | dis2 r
  | \stemNeutral
    \once\phrasingSlurDashed
    <g,! e'>2._\markup {
      "sempre dolce,"
    }\(
    <a c>4
  | <g e'> <a c> <g e'> <a c>
  %35
  | <g c g'>1\arpeggio~
  | q2 <fis c'>\)
  | \stemNeutral <g e'>2. <a c>4
  | <g e'> <a c> <g e'> <a c>
  | <g c g'>1\arpeggio~
  %40
  | q4 r \stemUp \acciaccatura e'8 d4 c
  | \stemNeutral <a a'>2. <a f'>4
  | \stemUp g'2 fis4 \acciaccatura a8 g4
  | f2. d4
  | \stemUp e2 dis4 \acciaccatura f8 e4
  %45
  | d2. e8 d
  | cis4 \acciaccatura e8 d4 cis4 d
  | dis2. e4
  | \stemNeutral cis4 \tuplet 3/2 { dis8 e dis } b4 cis
  | \stemUp e2. fis8 e
  %50
  | dis4 \acciaccatura fis8 e4 dis4 e
  | eis2. fis4
  | \stemNeutral dis4 \tuplet 3/2 { eis8 fis eis } cis4 dis
  | \stemUp fis2. gis8 fis
  | eis4 \acciaccatura gis8 fis4 f fis
  %55
  | g2. aes4
  | \stemNeutral f!4 \tuplet 3/2 { g8 aes g } ees4 f
  | g4 \tuplet 3/2 { aes8 bes aes } f4 g
  | aes4 \tuplet 3/2 { bes8 c bes } g4 aes
  | \once\stemUp\once\slurDown \acciaccatura bes8 aes1\startTrillSpan^\markup {
      "un poco rall."
    }
  %60
  | % NOTE: This should be the correct code, but the 1/32 notes are drawn before
    %       the last 1/4 chord of the left hand.
    % \afterGrace aes1 {
    %   \stemUp ges32[ aes] \stopTrillSpan
    % }
    %       So we use this workaround version instead
    aes1*30/32 \stemUp \magnifyMusic 0.8 { ges32[\stopTrillSpan aes] }
  | \once\slurDown \acciaccatura b!8 a1\startTrillSpan
  | \stemNeutral a1
  | \afterGrace a2 { \stemUp gis32[ a]_( \stopTrillSpan }
    \stemNeutral <a cis>4) <gis! b>
  | <a cis> <gis! b> <fis a> <e gis>
  %65
  | <fis a> <e gis> <d fis> <cis e>
  | <d fis> <cis e> <b d> <a cis>
  | <b d> <a cis> b a
  | b2 a4 r
  | R1*2
  %71
  | r2 \stemUp e'
  | a2. g4
  | e2 r
  | a2. g4
  | e2 r
  | R1*3
  | R1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | s1*12
  | c1
  | c
  %15
  | a
  | a
  | a
  | gis2 gis
  | a1
  %20
  | s
  | a
  | gis2 gis
  | a1
  | s1*7
  %31
  | a1~
  | a2 s
  | s1*7
  %40
  | s2 g
  | s1
  | bes1
  | a
  | a
  | a
  | gis2 gis
  | a1
  | s
  %45
  | b1
  | ais2 ais
  | b1
  | s
  | cis
  %50
  | bis2 c!
  | des1
  | s1*15
  %71
  | s2 c!
  | c1~^\markup { "ritenuto" }
  | c2 s
  | c1~
  | c2 s
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | \clef "treble"
  | s1*12
  | f4 a~ a8 f a4
  | e4 a~ a8 e a4
  %15
  | d,4 f~ f8 d f4
  | c4 f~ f8 c f4
  | \repeat unfold 2 { b,4 f'~ f8 b, f'4 }
  | b,4 fis'~ fis8 b, fis'4
  | s1
  %21
  | b,4 f'!~ f8 b, f'4
  | b,4 f'~ f8 b, f'4
  | b,4 fis'~ fis8 b, fis'4
  | s1*17
  %41
  | \stemDown c2 s
  | c s
  | d s
  | c s
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \clef "treble"
    e4\(_\markup { \hspace #2.5 "una corda" } g~ g8 e g4
  | e4 g~ g8 e g4
  | e4 a~ a8 e a4
  | e4 a~ a8 e a4\)
  %5
  | e4_\markup { "sempre legato" } g~ g8 e g4
  | e4 g~ g8 e g4
  | e4 a~ a8 e a4
  | e4 a~ a8 d, a'4
  | \repeat unfold 2 { e4 g~ g8 e g4 }
  %11
  | e4 a~ a8 e a4
  | e4 a~ a8 d, a'4
  | \stemDown f2 c\rest
  | e2 c\rest
  %15
  | d2 s
  | c s
  | b s
  | s1
  | b2 s
  %20
  | R1
  | b2 s
  | s1
  | b2 s
  | R1*7
  %32
  | \stemNeutral eis2 fis~
  | fis b,
  | \once\phrasingSlurDashed
    c4\( e~ e8 c e4
  | b4 e~ e8 b e4
  %35
  | a,4 e'~ e8 a, e'4
  | a,4 e'~ e8 a, e'4\)
  | c4 e~ e8 c e4
  | b4 e~ e8 b e4
  | a,4 e'~ e8 a, e'4
  %40
  | bes4 e~ e8 bes e4
  | c4 f~ f8 c f4
  | cis4 e~ e8 cis e4
  | d4 f~ f8 d f4
  | c!4 f~ f8 c f4
  %45
  | \repeat unfold 2 { b,4 f'~ f8 b, f'4 }
  | b,4 fis'~ fis8 b, fis'4
  | R1
  | \repeat unfold 2 { cis4 g'~ g8 cis, g'4 }
  %51
  | cis,4 gis'~ gis8 cis, gis'4
  | R1
  | dis4 a'~ a8 dis, a'4
  | dis,4 a'~ a8 ees a4
  | ees4 bes'~ bes8 ees, bes'4
  | R1*2
  | <ees, c'>1
  | <f des'>2.\( <ges c>4
  %60
  | <f des'> <ges c> <f des'> <ges c>
  | <e! cis'>2. <fis bis>4
  | <e cis'> <fis bis> <e cis'> <fis bis>
  | <e cis'>\) r e'2~
  | e cis~
  %65
  | cis a
  | gis4 a fis2
  | eis4 fis gis fis
  | gis2 fis4 r
  | r2 \once\phrasingSlurDashed eis\(
  %70
  | \acciaccatura gis8 fis2 e!
  | a2. g4
  | e2\) r
  | a2. g4
  | e2 r
  %75
  | a2. g4
  | e2^\markup { "perdendo" } a~
  | a g
  | e1~
  | e^\fermata
    \fine
}

centerDynamics = {
  | s4\p s2.
  | s1*22
  %24
  | \set decrescendoText = \markup {
      \small\italic { \whiteout "diminuendo" }
    }
    \set decrescendoSpanner = #'text
  | s4 s\> s2
  | s1*2
  | s4 s s\! s
  | s1*2
  %29
  | \set decrescendoText = \markup {
      \small\italic { \hspace #0.8 \whiteout "un poco rall" }
    }
    s4\> s2.
  | s1
  | s4 s s\! s
  | s4-\markup { "a tempo" } s2.
  | s1*3
  %36
  | s4-\markup { "sempre legato" } s2.
  | s1*21
  %59
  | s4-\markup { \hspace #-1.5 \whiteout "sempre dolcissimo" } s2.
  | s1*3
  | s2 s\pp
  | s1*8
  | s1-\markup { "perdendo" }
}

forceBreaks = {
  % page 1
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak

}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s1\sustainOn
  | s
  | s\sustainOff\sustainOn
  | s
  %5
  | s\sustainOff\sustainOn
  | s\sustainOff
  | s\sustainOn
  | s\sustainOff
  | s4\sustainOn s s s\sustainOff
  %10
  | s1
  | s\sustainOn
  | s\sustainOff\sustainOn
  | s\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s s8 s\sustainOff s4
  %15
  | s1\sustainOn
  | s4\sustainOff\sustainOn s s8 s\sustainOff s4
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  %20
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1*9
  %33
  | s4\sustainOn s s s\sustainOff
  | s1
  | s1\sustainOn
  | s4 s\sustainOff s2
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  %40
  | s4\sustainOn s s\sustainOff s
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1
  %45
  | s4\sustainOn s s s8 s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  %50
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1
  | s4\sustainOn s s s\sustainOff
  | s1
  %55
  | s4\sustainOn s s s\sustainOff
  | s1*3
  | s4\sustainOn s s s8 s\sustainOff
  | s1
  | s4\sustainOn s s s8 s\sustainOff
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
    \new Devnull \forceBreaks
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \context Dynamics = "sustainPedal" \sustainPedal
  >>
  \header {
    composer = "Franz Liszt"
    opus = "S.198"
    title = \markup { "Wiegenlied – Chant du berceau" }
    subtitle = \markup {
      \center-column \normal-text \small {
        \line {
          "An Arthur Frienheim (18ten Mai, '81, Weimar) freundlichst dankend, F. Liszt"
        }
        \vspace #-0.3
        \line \italic {
          "To Arthur Frienheim (18 May, '81, Weimar). With warmest thanks, F. Liszt"
        }
      }
    }
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
    \tempo 2 = 46
  }
}
