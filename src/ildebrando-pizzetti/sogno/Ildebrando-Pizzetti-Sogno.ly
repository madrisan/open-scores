\version "2.24.1"

\include "./covercolor.ly"

Global = {
  \key bes \minor
  \time 2/2
  \include "./global.ly"
}

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 15\mm
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
        \line { \abs-fontsize #30 \bold "Ildebrando" }
        \null
        \line { \abs-fontsize #80 \bold "Pizzetti" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "SOGNO" }
        \null\null\null
        \line { \abs-fontsize #30 "Lirica per Pianoforte" }
        \null\null\null\null
        \line { \abs-fontsize #20 \italic "A Maria Stradivari" }
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
        \null\null\null
        \fill-line {
          \abs-fontsize #12 "on the score published by Angelo Giglia, Genova"
        }
        \null
      }
    }
  }
}

Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }
rit = { \override TextSpanner.bound-details.left.text = \markup { \small "rit " } }

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \tempo \markup { \bold "Lento e tranquillo" }
  | <cis e! a!>1\(
  | <d! f bes>
  | <dis fis b!>
  | <c_~ f!~ c'~>\)
  %5
  | <c_~ f!~ c'~>
  | q4 r r2
    \break
  | R1
  | f1^>\(
  | %e!2_~ e4 f
    e!2. f4
  %10
  | %c'2~ \once\override NoteColumn.force-hshift = #1 c4 bes
    c'2. bes4
  | %bes2~ bes4\) aes~\(
    bes2.\) aes4~\(
  | aes^\< bes \once\override NoteColumn.force-hshift = #-0.7 c des
  | %aes'2~\!\> aes4( ges)
    aes'2.\!\>( ges4)
  | \once\override Staff.TextScript.extra-offset = #'(-0.8 . -3)
    bes,2\!^\markup {
      \small "dolciss. e molto rit."
    } c4 f~
  %15
  | \tuplet 3/2 { f8 ees^- des^- }
    \once\override Staff.TextScript.extra-offset = #'(3.5 . -4)
    des2.~^-^\markup {
      \small "a tempo"
    }
  | des4\) g\rest f2\rest
  | aes1^>(\(
  | g!1
  \pageBreak
  | ges2) \tuplet 6/4 { aes8^-[( ges^- f^- ges^- aes^- ges^-] }
  %20
  | bes2. ges4
  | f2.)\) f4\rest
  | f1^>(\(^\markup {
      \small "animando"
    }
  | e!1
  | ees2) \tuplet 6/4 { f8^-\)[\( ees^- des!^- ees^- f^- des~^-] }
  %25
  | <aes des aes'>4 <bes bes'> <c c'> <des des'>
  | <c' c'>2~ q4 <bes bes'>~
  | \once\override Hairpin.Y-offset = #0
    \once\override Hairpin.rotation = #'(4 -1 0)
    q\> <aes aes'> <g! g'!> <f f'>\!
  | \slurDown \acciaccatura ees'!8\) ees,!2.\( des4
  | \acciaccatura ees8 f,2 g!4 c~
  %30
  | \slurNeutral \tuplet 3/2 { c8[( bes^- aes^-)] } aes2.~
  | aes8\) f'\rest f4\rest f2\rest
  | f,1^>\(
  | e!2. f4
  | c'2. bes4
  %35
  | bes2.\)
    << \shape #'((0 . 0) (0 . 0) (0 . -5.5) (-1 . -1.5)) PhrasingSlur aes4~^>\( \\ >>
  | << {
      aes bes \once\override NoteColumn.force-hshift = #-0.7 c des
    } \\ {
      b'2\rest \once\override Voice.Rest.X-offset = #0.8 b4\rest \stemUp\tieUp bes~^\pp
    } >>
  | << { \stemDown\slurDown aes2_~\) aes4( ges) } \\ { \stemUp bes4 c des ees } >>
  | \appoggiatura bes'2. bes,,2 c4 \appoggiatura aes''4 f,
  \pageBreak
  | s1
  %40
  | s1
  | s1
  | s1
  | s1
  | s1
  %45
  | s1
  | s1
  | s1
  | s1
  | s1
  %50
  | s1
  | s1
  | s1
  | s1
  | s1
  %55
  | s1
  | s1
  | s1
  | s1
  | s1
  %60
  | s1
  | s1
  | s1
  | s1
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  %1
  | s1*7
  | \override Stem.length = #22
    \omit Flag
    s8 <des aes'>4^\markup {
      \small "cantando con molta espressione"
    }
    q8 <des bes'> <des aes'>4 q8
  | s8 <des aes'>4 q8 <des bes'> <des aes'>4 q8
  %10
  | s8 <f aes>4 q8 \once\override NoteColumn.force-hshift = #0 <f bes> <f aes>4 q8
  | s <c ges'>4 q8 q q4 q8
  | s <des aes'>4 q8 \once\override NoteColumn.force-hshift = #0 <des bes'> <des aes'>4 q8
  | s <ees ges>4 q8 q q4 q8
  | s <c ges'>4 q8 q q4 q8
  %15
  | s <des f>4 q8 q q4 q8
  | s <des f>4 q8 q q4 q8
  | s <des aes'>4 q8 <des bes'> <des aes'>4 q8
  | s <c g'!>4 q8 <des g> <c g'>4 q8
  | s <c ges'!>4 q8 <des ges> <c ges'>4 q8
  %20
  | s <des ges>4 q8 <ees ges> <des ges>4 q8
  | s <ees f>4 q8 <ees ges> <ees f>4 q8
  | s ees4 8 8 4 8
  | s1*8
  %31
  | \override Stem.length = #15
    s8 <des ges>4
    \revert Stem.length
    <des ges bes>4_- <bes des ees>_- <aes c aes'>8_-
  | \override Stem.length = #20
    s <des aes'>4 q8 <des bes'> <des aes'>4 q8
  | s <des aes'>4 q8 <des bes'> <des aes'>4 q8
  | s <f aes>4 q8 <f bes> <f aes>4 q8
  %35
  | s ges4 8 8 4 8
  | s <des aes'>4 q8 \once\override NoteColumn.force-hshift = #0 <des bes'> <des aes'>4 q8
  | s <des ges>4 q8 q8 q4 q8
  | s <c ges'>4 q8 q8 q4 q8

    \revert Stem.length
    \undo\omit Flag

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Stem.cross-staff = ##t
  \tieDown
  %1
  | s1*2
  | a!1^~
  | a8 aes4( 8[ bes^.)] aes4^- 8[~^-
  %5
  | aes8] 4( 8[ bes^.)] aes4^- 8~^-[
  | aes8] 4( 8[ bes^.)] aes4^- 8~^-[
  | aes8] 4( 8[ bes^.)] aes4^-( 8^.)
  | \slurDown\stemDown s8 aes4( aes8[ bes_.]) aes4_-( aes8_-)
  | s8 aes4_\markup {
      \small "simili"
    } aes8[ aes] aes4 aes8
  %10
  | s8 aes4 8[ bes] aes4 8
  | s8 aes4 8[ bes] aes4 8
  | s8 aes4 8[ bes] aes4 8
  | s8 bes4 8[ c] bes4 8
  | s8 aes4 8[ bes] aes4 8
  %15
  | s8 aes4 8[ bes] aes4 8
  | s8 aes4 8[ bes] aes4 8
  | s8 aes4 8[ bes] aes4 8
  | s8 bes4 8[ 8] 4 8
  | s8 bes4 8[ 8] 4 8
  %20
  | s8 bes4 8[ 8] 4 8
  | s8 a!4 8[ 8] 4 8
  | s8 <f a!>4 8[ <ges a>] <f a>4 8
  | s8 <gis d'! e!>4 q8[ <gis d' f>] <gis d' e>4 q8
  | s8 <beses des ees g!>4 8[ <aes des ees aes>] <beses des ees g>4 q8
  %25
  | s8 <aes des f>4 q8[ <bes des f>] <aes des f>4 q8
  | \stemUp
%    << {
%      \magnifyMusic 0.8 { g,!32[ c e! bes'] \top \stemDown c'32[ e! bes' c32] }
%    } \\ {
%      g,,,8
%    } >>
%    s8 s2.
     s1
  | \shape #'((0 . 1.5) (0 . 2) (0 . -1) (-2.5 . 7)) PhrasingSlur
    e'!4\( f g! aes
  | \stemDown s8 <f, bes des>4\) q8[ <g! bes des>] <f bes des>4 q8
  | s8 <ees g des'>4 q8[ <f g des'>] <ees g des'>4 q8
  %30
  | s8 <ees aes c>4^( <f aes des>8[ <aes des f>^.)] <ges bes ees>4 <aes des f>8
  | s1
  | s8 aes4 8[ bes] aes4 8
  | s8 aes4 8[ bes] aes4 8
  | s8 aes4 8[ bes] aes4 8
  %35
  | s8 <aes c>4 q8[ <bes c>] <aes c>4 q8
  | s8 aes4 8[ bes] aes4 8
  | s8 bes4 8[ c] bes4 8
  | s8 aes4 8[ bes] aes4 8

}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <g! a!>1
  | <f! gis>
  | ees!
  | d~
  %5
  | d~
  | d4 a4\rest g2\rest
  | R1
  | des'!8_\Ped s s2.
  | des8_\Ped s s2.
  %10
  | d8_\Ped s s2.
  | ees8_\Ped s s2.
  | \stemUp <f, f'>8_\Ped s s2.
  | <ees ees'>8_\Ped s s2.
  | aes8_\Ped s s2.
  %15
  | \stemDown des8_\Ped s s2.
  | des8_\Ped s s2.
  | f8_\Ped s s2.
  | e!8_\Ped s s2.
  | ees8_\Ped s s2.
  %20
  | des8_\Ped s s2.
  | c8_\Ped s s2.
  | ces8_\Ped s s2.
  | \stemUp bes8_\Ped s s2.
  | beses8_\Ped s s2.
  %25
  | aes8_\Ped s s2.
  | \stemDown g8 <bes' c e!>4 q8[ <bes c f>] <bes c e>4 q8
  | f,8_\Ped <f' c'>4 q8[ <f des'>] <f c'>4 q8
  | \stemUp bes,8_\Ped s s2.
  | ees,8_\Ped s s2.
  %30
  | aes8_\Ped s s2.
  | \stemDown <c' des aes'>8^. bes4 s2 s8
  | des,8_\Ped s s2.
  | des8_\Ped s s2.
  | d!8_\Ped s s2.
  %35
  | ees8_\Ped s s2.
  | \stemUp <f, f'>8_\Ped s s2.
  | <ees ees'>8_\Ped s s2.
  | aes8_\Ped s s2.
  | s1
  %40
  | s1
  | s1
  | s1
  | s1
  | s1
  %45
  | s1
  | s1
  | s1
  | s1
  | s1
  %50
  | s1
  | s1
  | s1
  | s1
  | s1
  %55
  | s1
  | s1
  | s1
  | s1
  | s1
  %60
  | s1
  | s1
  | s1
  | s1
  \fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-3 . 0)
    s4-\markup { \dynamic ppp } s2.
  | s1*4
  %6
  | s8\rit s8\startTextSpan s4 s4 s8 s8\stopTextSpan
  | s1*8
  %15
  | s8\> s4. s2
  | s1
  | s1\!
  | s1
  | s8 s8\< s2.
  %20
  | s16 s16\! s16 s16\> s2.
  | s4 s4\! s2
  | s1*2
  | s8\< s4. s2
  %25
  | s8\!\f\< s4. s2
  | s16 s\! s s\ff s2.
  | s1*4
  %31
  | s8 s4 s8-\markup { \hspace #-0.5 \small "rit." } s2
  | s1
  | s8\< s s2.
  | s8\!\> s s2.
  %35
  | s8\! s s\< s s2
  | s4 s s8\! s s4
  | s1*2

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
    \context Dynamics <<
      \Global \centerDynamics
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
    composer = "Ildebrando Pizzetti"
    %opus = ""
    title = \markup { "SOGNO" }
    subtitle = \markup {
      \column {
        \line { "Lirica per Pianoforte" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
