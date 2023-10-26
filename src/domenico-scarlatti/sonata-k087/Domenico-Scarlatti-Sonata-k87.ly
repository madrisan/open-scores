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
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Domenico" }
        \null
        \line { \abs-fontsize #75 \bold "Scarlatti" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Sonata in B minor" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 87" }
        \null\null\null
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
        \fill-line \abs-fontsize #12 {
          \concat {
            "Based on the score published by Heugel & C" \super "ie"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key b \minor
  \time 3/4
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemUp\slurNeutral\tieUp
  %1
  \repeat volta 2 {
  | fis4 g8 fis b4~
  | b ais8 b cis ais
  | b2.
  | ais4 d8\rest b cis4
  %5
  | d4. cis8 b4~
  | b a8 gis fis4~
  | fis eis8 fis gis eis
  | fis2 cis'4~
  | cis8 fis, b2~
  %10
  | b4 fis'2~
  | <<
    { \voiceOne fis8 b, e2~ }
    \new Voice {
      \voiceThree s8 \once \omit Flag \once\shiftOff b~ b4 s
    }
    >>
  | e4 dis8 e fis dis
  | e2.
  | fis4 e8 fis g4
  %15
  | fis2~ fis8 e
  | d2~ d8 cis
  | b2 a8 g
  | fis e d4 cis'
  | d8 cis g'\rest fis[ g fis]
  %20
  | e d cis b a4~
  | a g4. fis8
  | fis e d'\rest fis, b4~
  | b ais8 b cis d
  | e4 s2
  %25
  | a4 d8\rest b4 ais8
  | b g fis4. e8
  | d4 cis4. e8
  | d4 cis4. g'8
  | d4 cis4. b'8
  %30
  | d,4 cis8 g' fis eis
  | fis4. e!4 d8
  | cis fis g fis e d
  | cis b ais gis fis eis
  | fis cis ais fis \clef bass fis,4
    \clef treble
  }
  \break
  %35
  \repeat volta 2 {
  | cis'''4 d8 cis fis4~
  | fis8 e4 d cis8
  | d2 b4~
  | b8 a4 g fis8
  | d'8\rest ais b4. cis8
  %40
  | d4. cis8 b4
  | f'8\rest bis, cis4. dis8
  | e d! cis4. b8
  | fis' e d4. cis8
  | b' a! g4. fis8
  %45
  | g fis e4 fis8 e
  | d4 e8 d cis4
  | b8 cis d4. e8
  | fis e dis fis e d!
  | cis e d cis b d
  %50
  | cis b ais cis b cis
  | d cis b4. ais8
  | b cis d dis e fis
  | g fis e4. dis8
  | e fis g gis ais b
  %55
  | s4 e,4. d8
  | cis d e4. d8
  | g b a! g fis a
  | g fis e g fis e
  | d4 f8\rest cis b4~
  %60
  | b ais8 b cis d
  | e4 d cis
  | fis e4. d8
  | cis4. d8 cis4~
  | cis8 d cis4. d8
  %65
  | e4. eis8 fis4~
  | fis8 e d cis b d
    \break
  | cis8 b4 cis ais8
  | b g fis e d cis
  | d e d cis b ais \clef bass
  %70
  | s2 b,,4 \clef treble
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | b8\rest d2 e8
  | fis2.
  | e8\rest g fis e fis g
  | e fis g4. fis8~
  %5
  | fis d fis4. eis8
  | fis2~ fis8 b,
  | cis2.
  | b8\rest d cis d e cis
  | d2~ d8 e
  %10
  | fis4 a8 g fis a
  | g2~ g8 a
  | b2.
  | g8\rest c![ b a b cis]
  | d4 cis8 d e4
  %15
  | d8 e d cis b4
  | a8 g fis e d4~
  | d8 e fis4 s
  | s2 e4
  | fis b4. a8
  %20
  | g fis e d cis b
  | a d b cis d4
  | s d4. e8
  | fis4 s2
  | b4 dis8 e fis g
  %25
  | e4 g8 fis e4~
  | e d8 cis b4
  | \repeat unfold 2 { b ais4. cis8 }
  | b4 ais4. b8
  %30
  | b4 ais b
  | g8\rest fis gis ais b4~
  | b8 ais b a! g fis
  | e d cis b ais gis
  | fis4 s2
  %35
  | e'4\rest e\rest e8\rest fis
  | gis4 ais8 b4 ais8
  | e8\rest fis g fis4 e8
  | fis4 e s
  | g4. fis8 e4
  %40
  | e8\rest eis fis4. gis8
  | a4. gis8 fis4
  | e8 gis a4. gis8
  | fis ais b4. ais8
  | b dis e4. dis8
  %45
  | e d! cis4 d8 cis
  | b4 cis8 b ais4
  | b b2
  | a8 c! b a g b
  | a g fis a g fis
  %50
  | e d cis cis d e
  | fis4 g8 fis e4
  | fis4. 8 g a!
  | b4 c!8 b a4
  | b s2
  %55
  | cis8 d cis4. b8
  | ais b cis4. b8
  | e d cis e d cis
  | b d cis b ais cis
  | b fis g fis4 e8
  %60
  | fis4 s2
  | cis'4 b ais
  | g8\rest fis gis ais b4
  | ais4. b8 ais4~
  | ais8 b ais4. b8
  %65
  | cis4. b8 ais gis
  | fis2.
  | g4 fis e~
  | e8 e d cis b ais
  | b4 s2
  %70
  | b8 fis d b s4
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | b2 s8 cis
  | d b cis d e4~
  | e d8 cis d4
  | s4 e2
  %5
  | d2~ d8 cis
  | d b cis4. gis8
  | a fis gis a b4~
  | b ais8 b cis ais
  | \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie
    b2~ b8 cis
  %10
  | d b cis4 dis
  | \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie
    e2~ e8 fis
  | g e fis g a4~
  | a g8 fis g4
  | a8 b a4 g8 a
  %15
  | b4. a8 g4
  | \clef bass s2.
  | b,8 cis d b cis4~
  | cis4. b4 ais8
  | b4. a!8 g a
  %20
  | b4 s2
  | s4 g a
  | ais b8 a! b cis
  | d b cis[ d e fis]
  | \clef treble g[ e] fis g a b
  %25
  | c![ a] b4 s
  | b,8 b'4 a8 g4
  | s2.*10
  %37
  | c,8\rest b2 cis8
  | d b cis4 dis
  | s2.
  %40
  | d2~ d8 eis
  | <cis fis>4. s
  | s2.*2
  | s2 b'4~
  %45
  | b a8 g fis4
  | g8 fis e4 fis8 e
  | s2.*2
  | s2 \once\omit Stem g,4~
  %50
  | g fis8 e d cis
  | b4 s2
  | s2.*2
  | s2 e'4~
  %55
  | e8 fis g e fis4
  | e2 fis4
  | s2.*2
  | c8\rest b2 cis8
  %60
  | d8 b cis d e fis
  | g e fis d e cis
  | d4 cis b
  | s2.*3
  %66
  | s4 b8 a! g fis
  | e'8\rest e d4 cis
  | s2.
  | a8\rest g fis e d cis
  | b4 r r

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurNeutral\tieNeutral
  %1
  \repeat volta 2 {
  | b4. a8 g4
  | fis2.
  | b2.
  | cis8 d e4 ais,
  %5
  | b4. a!8 gis4
  | fis4. e8 d4
  | cis2.
  | fis2.
  | b4. a!8 g4
  %10
  | fis2 b4
  | \clef treble e4. d8 c!4
  | b2.
  | e2.
  | fis8 g s2
  %15
  | s2.
  | fis8[ e d cis] b a
  | g4 fis4. e8
  | d2 cis4
  | b8 cis d4 e8 fis
  %20
  | g4 a4. g8
  | fis4 e d
  | cis b g'
  | fis2.
  | b2.
  %25
  | e4. d8 cis4
  | s2.
  | \clef bass \repeat unfold 3 { fis,8 fis'4 g,8 e'4 }
  %30
  | fis,8 fis'4 e8 d cis
  | d4 cis b
  | \stemUp \repeat unfold 3 { fis, r r }
  }
  \repeat volta 2 {
  %35
  | \stemDown r8 fis''4 e8 d4
  | cis fis fis,
  | b,8 b'4 a8 g4
  | fis2 b4
  | e4. d!8 cis4
  %40
  | b4. a8 gis4
  | fis4. e'!8 dis4
  | cis4. d!8 e4
  | d4. e8 fis4
  | g4. a8 b,4
  %45
  | e a, d
  | g, cis fis,
  | <d' fis>8 <cis e> <b d> <a cis> <g b>4
  | \stemNeutral <fis a> <b, b'> <e, e'>
  | <a a'> d <g, g'>
  %50
  | \stemDown cis fis, s
  | s b' cis
  | d8 cis b a! g fis
  | e4 e' fis
  | g8 fis e d! cis b
  %55
  | ais2 b4
  | cis8 b ais fis b4
  | \stemNeutral <e, e'> <a,! a'!> <d, d'>
  | <g g'> <cis cis'> <fis, fis'>
  | b8 b'4 a8 g4
  %60
  | \stemDown \repeat unfold 3 fis2.
  | fis8 fis' g4. fis8
  | e4. d8 cis4~
  %65
  | cis8 b ais gis fis e
  | d cis b4 s
  | e4 fis2
  | s2.
  | b,2.
  %70
  | s2.
  }
  \fine
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
    >>
  >>
  \header {
    composer = "Domenico Scarlatti"
    opus = #f
    title = \markup { "Sonata in B minor" \italic "(K. 87)" }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 82
  }
}
