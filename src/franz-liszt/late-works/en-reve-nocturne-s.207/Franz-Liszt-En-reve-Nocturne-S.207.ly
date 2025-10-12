\version "2.24.1"

\include "../covercolor.ly"

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
}

% \bookpart {
%   \header {
%     maintainer      = "Davide Madrisan"
%     maintainerEmail = "d.madrisan@proton.me"
%   }
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
%         \null\null\null
%         \null\null\null
%         \line { \abs-fontsize #30 \bold "Franz" }
%         \null
%         \line { \abs-fontsize #75 \bold "Liszt" }
%         \null\null
%         \fill-line { \draw-hline }
%         \null\null\null
%         \line { \abs-fontsize #40 \bold "En rêve (Nocturne)" }
%         \null\null\null
%         \line { \abs-fontsize #35 \bold "S. 207" }
%         \null\null\null
%         \null\null\null
%         \null\null\null
%       }
%     }
%   }
%
%   \include "../logo.ly"
%
%   \markup {
%     \fill-line {
%       \center-column {
%         \null\null\null
%         \null\null\null
%         \fill-line \abs-fontsize #12 {
%           \concat {
%             "Based on the score: Leipzig - Breitkopf & Härtel, 1927. Plate F.L. 85"
%           }
%         }
%         \null\null
%       }
%     }
%   }
% }

Global = {
  \key b \major
  \time 4/4
  \include "./global.ly"
}

pbeforenote = \markup { \hspace #-1.8 \dynamic p }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \label #'S207
  %1
  \tempo "Andantino" 4 = 96
  | r4 dis2 4
  | cis2 gis4 ais
  | fis4. gis8 ais4 b
  | bis4. cis16 dis cis4 gis'
  %5
  | fis dis2 4
  | cis2 gis4 ais
  | fis4. gis8 ais4 b
  | bis4. cis16 dis cis4 gis'
  \repeat unfold 2 {
  | \stemUp\grace { fis16 gis } \stemNeutral fis4 eis2 ais4
  | fis'2~ fis8[ eis d ais]
  }
  | b[ ais fis eis] fis[ eis d! ais]
  | b[ ais fis eis] ais[ gis fis eis]
  %15
  | a2 gis
  | g1
  | r2 g~
  | g fis
  | eis1~
  %20
  | 1
  | r4 <eis dis'>2 q4
  | <e cis'>2 gis4 ais
  | \stemUp fis4. gis8 ais4 b
  | bis2 \tuplet 3/2 { cis8 dis cis } gis'4
  %25
  | \tuplet 3/2 { fis8 gis fis } b4 dis^.^( dis^.)
  | \stemDown <e, cis'>2 \stemUp gis4 ais
  | \stemUp fis4. gis8 ais4 b
  | bis2 \tuplet 3/2 { cis8 dis cis } gis'4
  | ais,2 \stemUp\grace { b16 cis } \stemNeutral b4 fis'
  %30
  | gis,2 \stemUp\grace { a16 b } \stemNeutral a4 e'
  | fis,2 \stemUp\grace { g16 a } \stemNeutral g4 d'
  | e,2 \stemUp\grace { f16 g } \stemNeutral f4 c'
  \repeat unfold 2 {
  | dis,2 \stemUp\grace { e16 fis } \stemNeutral e4 b'
  }
  %35
  | \stemUp
    \grace { ais32 b cis } b1\startTrillSpan
  | \afterGrace b1 { ais32[ \stopTrillSpan b] }
  | \stemUp\grace { bis32 cis dis } cis1\startTrillSpan
  | cis1
  | cis1
  %40
  | \afterGrace cis1 { bis32[ \stopTrillSpan cis] }
  | d1\startTrillSpan
  | \afterGrace d1 { cis32[ \stopTrillSpan d] }
  | \stemNeutral eis4 r <gis, ais eis'>2~
  | q2 <fis ais fis'>
  %45
  | <fis ais gis'>1
  | <fis ais dis>
  | <fis b dis>\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurUp\tieDown
  %1
  | s1*21
  | s2 e
  | dis1
  | fis4 gis a ais
  %25
  | b dis fis eis
  | s2 e
  | g,2\rest e'4 fis
  | fis gis a ais
  | s1*10
  %39
  \repeat unfold 4 {
  | g,2\rest gis'4 g,4\rest
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*9
  %10
  | eis2 eis
  | s1
  | eis2 eis
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | r4 fis8[_\markup {
     \small\italic "sempre legato, una corda"
    } fis,] fis'[ fis, fis' fis,]
  | \repeat unfold 2 { e'[ fis, e' fis,] }
  | \repeat unfold 2 { dis'[ fis, dis' fis,] }
  | \repeat unfold 2 { e'[ fis, e' fis,] }
  %5
  | dis'[ fis, fis' fis,] fis'[ fis, fis' fis,]
  | \repeat unfold 2 { e'[ fis, e' fis,] }
  | \repeat unfold 2 { dis'[ fis, dis' fis,] }
  | \repeat unfold 2 { e'[ fis, e' fis,] }
  \repeat unfold 2 {
  | r4 <d' eis>8[ fis,] <d' eis>[ ais <d eis> fis,]
  | \repeat unfold 2 { d'[ ais d fis,] }
  }
  | R1*8
  %21
  | r4 gis8[ fis,] gis'[ fis gis fis,]
  | gis'[ fis a fis,] ais'[ fis cis' fis,,]
  | ais'[ fis b fis] cis'[ fis, dis' fis,]
  | dis'[ fis, dis' fis,] e'[ fis, e' fis,]
  %25
  | dis'[ fis, fis' fis,] fis'[ fis, gis' fis,]
  | gis'[ fis a fis,] ais'[ fis cis' fis,,]
  | \clef treble
    ais'[ fis b fis] cis'[ fis, dis' fis,]
  | dis'[ fis, dis' fis,] e'[ fis, e' fis,]
  | cis'[ e cisis eis] dis[ fis dis fis]
  %30
  | b,[ dis bis dis] cis[ e cis e]
  | a,[ cis ais cis] b[ d b d]
  | g,[ b gis b] a[ c a c]
  \repeat unfold 2 {
  | fis,[ a fis ais] g[ b g b]
  }
  \repeat unfold 2 {
  | r2 <gis b>8[ e' <gis, b> e']
  }
  %37
  \repeat unfold 2 {
  | r2 <gis, ais>8[ e' <gis, ais> e']
  }
  \repeat unfold 2 {
  | r2 <fis, b cis eis>4\arpeggio r
  }
  %41
  \repeat unfold 2 {
  | r2 <fis ais d eis>4\arpeggio r
  }
  | r2 <d' eis>~
  | q <ais d>
  %45
  | <fis ais d>1
  | <fis ais dis>
  | <fis b dis>\fermata
  \fine
}

centerDynamics = {
  %1
  | s4 s^\markup { \small\italic "dolce" } s2
  | s1*11
  %13
  | s2 s^\markup { \small\italic "dim." }
  | s1*3
  | s2 s\pp
  | s1*3
  %21
  | s8 s^\markup {
    \whiteout
    \small\italic "sempre dolce legato"
    } s2.
  | s1*16
  %38
  | s8 s\pp s2.
  | s1*2
  %41
  | s2 s\pp
  | s1*2
  | s2 s\pp
  | s1
  | s8 s\ppp s2.
}
Sustain = {
  %1
  | s4 s\sustainOn s2
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff s2.
  | s1*2
  | s4\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s1
  | s4 s s\sustainOff s
  | s1*7
  | s4 s\sustainOn s2
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff s2.
  | s1*11
  | s1\sustainOn
  | s4 s s s8 s\sustainOff
  | s1\sustainOn
  | s4 s s s8 s\sustainOff
  | s1\sustainOn
  | s4 s s s8 s\sustainOff
  | s1\sustainOn
  | s1
  | s1
  | s2\sustainOff\sustainOn s2
  | s1\sustainOff\sustainOn
  | s1\sustainOff\sustainOn
  | s1\sustainOff\sustainOn
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
    \context Dynamics <<
      \Global \centerDynamics
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
    composer = "Franz Liszt"
    opus = "S.207"
    title = "En rêve (Nocturne)"
    subtitle = #f
    arranger = \markup { \italic "Komponiert 1885/1886" }
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
    \tempo 4 = 96
  }
}
