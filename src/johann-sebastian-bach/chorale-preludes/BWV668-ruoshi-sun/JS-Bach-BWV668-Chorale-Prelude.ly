\version "2.25.16"

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
        \line { \abs-fontsize #26 \bold "Vor deinen Thron tret' ich hiermit" }
        \null
        \line { \abs-fontsize #18 "(Before your throne I now appear)" }
        \null\null\null
        \line { \abs-fontsize #20 "BWV 668" }
        \null\null\null\null
        \fill-line { \abs-fontsize #12 "Transcribed for Piano Solo by Ruoshi Sun" }

        \null\null\null
        \null\null\null
      }
    }
  }

  \include "./logo.ly"

}

Global = {
  \key g \major
  \time 4/4
  \include "./global.ly"
}

greyTextColor = #(x11-color "dimgray")

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #5
  \override Rest.staff-position = #0
  %1
  | R1*7
  | g2 g4 a8 c16 b
  | b4 a8. b16 c4 b
  %10
  | a4~\trill a16 g a8 g2~
  | g f'\rest
  | R1*7
  %19
  | f2\rest b,
  | c4 b a g
  | fis g a2~
  | a f'\rest
  | R1*3
  | \once\override Voice.MultiMeasureRest.X-offset = #1.4 R1
  | R1*2
  %29
  | f2\rest d
  | c4 b a8 g fis4
  | g8 fis e4 d2~
  | d f'2\rest
  | R1*7
  %40
  | f2\rest b,
  | c4 b a g8 a
  | b4 a g2~
  | g1~
  | g~
  %45
  | g\fermata
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  \stemNeutral\tieNeutral
  %1
  | R1
  | r8 g g fis e4 fis8 e
  | d e fis4 g4. fis8
  | e a d, g~ g fis16 e fis8 g
  %5
  | a4 g8 a b d,[ d cis]
  | b4 cis8 b a b cis4
  | d4. c16 b c4. b16 a
  | \stemDown\tieDown b8 b[ b c] d4 e8 fis
  | g b, e d c d d4
  %10
  | e8 c d c b c d4~
  | d8 c16 b c8 a b e\rest e4\rest
  | \stemNeutral\tieNeutral r8 e d e fis g a g
  | fis4 g8 gis a g fis e16 dis
  | e2.~ e8 d16 cis
  %15
  | d8 fis[ g fis] e d cis dis
  | e4. fis16 g a4. g16 fis
  | g4. fis16 e fis8 d g4~
  | g~ g16 e d e fis8 g a g16 fis
  | \stemDown g8 d[ d e] f g16 f \change Staff = "lower" \stemUp e8 d
  %20
  | c \change Staff = "upper" \stemDown g'[ g fis] e fis g4
  | b,8\rest d[ d cis16 b] e8 cis16 d e8 cis
  | d16 e fis8 e16 fis g8 fis f\rest f4\rest
  | \stemNeutral\tieNeutral r2 r8 a, b cis
  | d4 f e8 fis gis4
  %25
  | a8 f e d cis16 dis e4 dis8
  | e8. fis16 g8. a16 b8 a4 b16 a
  | g4 a d, e
  | fis8 a g fis e d c4
  | \stemDown\tieDown b8 d g4 fis8 fis[ fis g]
  %30
  | a fis d2.~
  | d8 d4 cis8 d4. c8
  | b2~ b8 a e'4\rest
  | \stemNeutral\tieNeutral r8 e d e fis g16 fis e8 fis
  | g4. fis16 e fis8 b, e4~
  %35
  | e dis e8 fis[ g fis]
  | e8 d16 e fis8 e d4. c8
  | b cis d e16 d cis8 d e fis16 e
  | d8 e fis gis a4 a\rest
  | r8 a b a g fis16 g a8 g
  %40
  | \stemDown\tieDown fis4 e8 fis16 g fis2
  | e8 fis g4~ g8 fis g fis
  | g4. fis8~ fis e f e
  | d c16 d e8 d c c\rest c4\rest
  | b4 b\rest b8\rest b c b
  %45
  | a8 g16 a b8 a g2\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  \stemNeutral\tieNeutral
  %1
  | r8 g g a b4 a8 b
  | c b a4 g8 gis a ais
  | b4. a8 b cis d4~
  | \stemUp\tieUp d8 c b e a,2~
  %5
  | a8 b c4 b8 a g4~
  | g8 fis g gis a4. g8
  | a8 g16 fis g4~ g8 fis16 e fis4
  | a8\rest g g a b4 cis8 dis
  | e g,[ g fis] e a4 g8~
  %10
  | g g4 fis8 g g[ g f]
  | e4. 	ees8 d b'[ c b]
  | a g fis g a b c4~
  | c b e, a~
  | a8 g16 fis g4. fis16 e fis4~
  %15
  | fis g8\rest fis g gis a4~
  | a8 g16 fis g4. fis16 e fis8 b
  | e,4. a8 d,4 b'16\rest d e d
  | c8 b a b c4. b16 a
  | b8 b[ b c] e4 \change Staff = "upper" \stemDown\tieDown g4~
  %20
  | g8 \change Staff = "lower" \stemUp\tieUp g,16[ a] b8 c16 d e8 d d8 e16 d
  | c8 b16 a b8 g~ g g16 fis e8 fis16 g
  | a8 d4 cis8 d d[ c b]
  | a4 fis g8 fis e4
  | d8 c' b a gis a b4
  %25
  | c b e,16[ fis g8 a b]
  | c4 e dis8 e fis4~
  | fis8 e[ d c] b4 cis
  | d2 a8\rest d, e fis
  | g a b cis d c b4
  %30
  | c8\rest a a g fis b a4
  | g8 a b a~ a fis g a~
  | a g16 fis g4~ g8 fis b4
  | c b a g8 a
  | b4 a g2
  %35
  | fis8 g a b16 a g8 a b4~
  | b ais b8 fis[ e fis]
  | g a16 g fis8 gis a b16 a g8 a
  | b cis d4 cis8 fis,[ g fis]
  | e8 d16 e fis8 e d4 c'\rest
  %40
  | c8\rest b c b a g16 a b8 a
  | g a b c16 d e8 d[ d c]
  | d4 e8 b b4. c8
  | g4 g8\rest b c c,[ b c]
  | d e16 d c8 d e f[ g f]
  %45
  | ees8 d16 ees f!8 e d2\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #-7
  \override Rest.staff-position = #0
  %1
  | R1*3
  | g2\rest g8\rest d' d e
  %5
  | fis4 e8 fis g fis e4
  | d8 dis e eis fis4. e8
  | fis b, e4~ e8 a, d4
  | g,8 g\rest g4\rest g8\rest g' g fis
  | e8. d16 c8 d a fis g b
  %10
  | c a d d, e e' b a16 b
  | c2 g8 g\rest g4\rest
  | \override MultiMeasureRest.staff-position = #-6
    R1
  | a8\rest d e d c b a b
  | c4. b16 ais b2~
  %15
  | b4 a\rest a8\rest b a b
  | c d e d cis a d4~
  | d8 cis16 b cis8 c~ c b16 a b8 g
  | a8 b16 c d4~ d8 e fis d
  | g2~ g8 g[ g f]
  %20
  | e e[ e d] c c[ c b]
  | a d b[ e] cis a16 b cis8 a
  | fis' d a'[ a,] d a\rest a4\rest
  | R1
  | g2\rest a8\rest d c b
  %25
  | a4 gis a8 g fis4
  | e8 a g[ c] b cis dis b
  | e4 fis g,8\rest g' fis e
  | d4 b c8 b a4
  | g8 fis e a d, d'[ d e]
  %30
  | fis d g[ g,] d' d[ d cis]
  | b a g a16 g fis8 d e fis
  | g a b cis d4 g,\rest
  | R1
  | a8\rest c d c b a16 b c8 b
  %35
  | a4 b e, e'8 d
  | cis4 fis,8 fis' b, a g a
  | e4 b' a g\rest
  | g\rest b a b
  | cis d8 cis b4 cis
  %40
  | d8 dis e2 dis4
  | e8 e[ e d] c d16 c b8 a
  | g b cis dis e, e' d c
  | b a16 b c8 g e fis g a
  | b g a b c2~
  %45
  | c g\fermata
  \fine
}

Choral = \relative {
  \autoBeamOff
  \time 12/2
  \key g \major
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
  \once\override Staff.TimeSignature.stencil = ##f
  g'1 g2 a b( a4 b c2) b a2. a4 g1 \bar "'"
  \time 10/2
  \once\override Staff.TimeSignature.stencil = ##f
  b1 c2 b a g fis g a1 \bar "'"
  \break
  d1 c2 b a4( g) fis2 g4( fis) e2 d1 \bar "'"
  \once\override Staff.TimeSignature.stencil = ##f
  b'1 c2 b a g4( a) b2 a g1
  \fine
}

\markup {
  \fill-line {
    \override #'(baseline-skip . 2)
    \center-column {
      \line { \abs-fontsize #14 \bold "Vor deinen Thron tret' ich hiermit" }
      \null
      \line { \abs-fontsize #10 \italic "Genf 1547 von Loys Bourgeois" }
      \null
      \line {
        \score {
          <<
          \new Voice = "corale" {
            \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #1
            \Choral
          }
          \new Lyrics \lyricsto "corale" {
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
              #'((basic-distance . 4))
            << {
              Vor dei -- nen Thron __ tret ich hier -- mit,
              o Gott, mit in -- nig -- li -- cher Bitt:
              ach, kehr dein lieb -- reich
              An -- ge -- sight von mir blut -- ar -- men Sün -- der nicht!
            }
            \new Lyrics {
              \set associatedVoice = "corale"
              Be -- sche -- re mir __ ein se -- lig End;
              nimm mei -- ne Seel in dei -- ne Händ,
              daβ ich dich schau dort e -- wig -- licht
              Ja, A -- men, ja, er -- hö -- re mich!
            } >>
          }
          >>
          \layout {
            indent = #0
            line-width = #150
            #(layout-set-staff-size 14)
          }
        }
      }
      \null\null
      \line { \abs-fontsize #10 \italic "Bodo von Hodenberg" }
      \null\null\null
      \null\null\null
    }
  }
}

\score {
  \new PianoStaff
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 668"
    title = \markup { "Vor deinen Thron tret' ich hiermit" }
    subtitle = \markup {
      \column {
        \line { "Chorale Prelude" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 35
  }
}
