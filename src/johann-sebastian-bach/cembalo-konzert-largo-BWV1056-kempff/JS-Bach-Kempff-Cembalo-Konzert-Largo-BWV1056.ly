\version "2.25.12"

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
        \line { \abs-fontsize #40 \bold "Cembalo Konzert f-Moll" }
        \null\null
        \line { \abs-fontsize #33 \bold "Largo c As-Dur" }
        \null\null
        \line { \abs-fontsize #20 "BWV 1056" }
        \null\null
        \null\null
        \line { \abs-fontsize #15 \italic "transcribed for Piano Solo by" }
        \null\null
        \line { \abs-fontsize #33 \bold "Wilhelm Kempff" }
        \null\null\null
      }
    }
  }

  \include "./logo.ly"
}

Global = {
  \key aes \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemDown\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \omit TupletBracket
  \set minimumBeamSubdivisionInterval = \musicLength 8
  %1
  | \tempo "Largo" 8 = 54
  | \once\override Staff.TextScript.extra-offset = #'(-1.5 . -1)
    \once\override Tie.staff-position = #2.8
    c4~_\markup {
      \dynamic mf "legato"
    }
    c16 des ees f c8
    \once\override Tie.staff-position = #1.8
    bes~ bes16 c des ees
  | aes,8  aes'16 f des8~ des32 ees des c des16 bes' g ees des8_\trill c16 des
  | des c bes aes e4\rest aes'~ aes16 g32 f g16 aes
  | bes,4_~ bes16 d! f aes g4~
    \set subdivideBeams = ##t
    g32 f ees d c16 bes
    \set subdivideBeams = ##f
  %5
  | aes8_~ aes32 bes aes g aes16 c ees g f4~
    \set subdivideBeams = ##t
    f32 ees d! ees f d bes aes
    \set subdivideBeams = ##f
  | g16 bes d! f ees4~
    \set subdivideBeams = ##t
    ees16 f32 g aes g aes c
    \set subdivideBeams = ##f
    d,!8._\trill ees16
  | ees4 g,\rest
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    \once\override Tie.staff-position = #7 ges'~_\markup { \dynamic \normalsize "mp" }
    \set subdivideBeams = ##t
    ges16 f32 ees des c bes16
    \set subdivideBeams = ##f
  | \once\override Tie.staff-position = #0.7 a!4~ a16 bes c_\< des ees f ges a!\!
    \set subdivideBeams = ##t
    c \once\override Tie.staff-position = #5 ees,~ ees32 f ges f
    \set subdivideBeams = ##f
  | \once\override Staff.TextScript.extra-offset = #'(-0.2 . -2)
    ees16_\markup {
     "cresc."
    }
    des c\prall bes des'8. f,16
    \set subdivideBeams = ##t
    f32[\prall^\markup { \tiny\flat } ees f16 \once\override Tie.staff-position = #10.5 des'~ des64 c bes a!]
    \set subdivideBeams = ##f
    a16[ bes8 f16]
  %10
  | \set subdivideBeams = ##t
    f32 d \once\override Tie.staff-position = #5 ees16~ ees32 f ges64 f ees32
    \set subdivideBeams = ##f
    c'8~ c32 ees, des c des16 f bes c c8._\trill bes16
  | \once\override Hairpin.shorten-pair = #'(5 . 1)
    bes4\> e,,\rest des'~\!
    \set subdivideBeams = ##t
    des32 ees des c des16 bes'
    \set subdivideBeams = ##f
  | des,8 c~ c16 aes bes c
    \set subdivideBeams = ##t
    des32 ees des c des ees f ges
    aes16 ges32 f ges c, ges'16
    \set subdivideBeams = ##f
  | ges8 f g,16\rest bes[ c \appoggiatura { des16 c bes c } des]
    \set subdivideBeams = ##t
    \tupletDown\tuplet 6/4 { g, f g aes g aes } \tuplet 6/4 { bes c bes\< aes bes c\! }
  | \tuplet 3/2 { des\< c des }
    \once\override Tie.staff-position = #8.4
    bes'8~\! bes32 c, des ees des c bes16
    \set subdivideBeams = ##f
    c ees aes f ees des g aes
  %15
  | c,8\prall bes g,4\rest c'~
    \set subdivideBeams = ##t
    c32 bes des c ees des f16
  | f16 bes,8.~ bes32 aes c bes des c ees16
    \set subdivideBeams = ##f
    ees aes, aes' f ees des8 c16
  | des bes' g ees ees des_\trill c des
    \set subdivideBeams = ##t
    des32\< c des ees des c bes aes
    \set subdivideBeams = ##f
    aes8 ges32_\prall f ges16\!
  | f16 g aes32 g aes16 aes4~
    \set subdivideBeams = ##t
    aes32 bes aes g aes des bes16
    \set subdivideBeams = ##f
    g8. aes16
  | \tempo \markup \normal-text\tiny {
      \concat {
         \general-align #Y #DOWN \note {8} #1 " = " "46"
      }
    }
    aes c f32 d ees16 ees8. ees16~
    \set subdivideBeams = ##t
    ees f32 g aes f c16
    des16. c32 bes[ c des16]
    \set subdivideBeams = ##f
  %20
  | aes32 g16 aes64 bes bes32_\prall aes bes16
    \set subdivideBeams = ##t
    \set minimumBeamSubdivisionInterval = \musicLength 16
    c8~^\markup {
      \hspace #-0.5 "rit."
    }
    c64 bes aes g aes c e,32
    \tempo \markup \normal-text\tiny {
      \concat {
         \general-align #Y #DOWN \note {8} #1 " = " "40"
      }
    }
    f16 \tieNeutral <aes f'>~ q32 g'64 f e32 f c8 bes16. c32
    \set subdivideBeams = ##f
  | c1\fermata^\markup { \hspace #-1 "Grave" }
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemUp
  \override Rest.staff-position = #0
  \include "./smallnotes.ly"
  \magnifyMusic #0.8 {
  %1
  | a'8\rest <ees, aes c>[ <aes c ees>] b'\rest b\rest <ees,, g bes>^.[ <g bes ees>^.] b'\rest
  | b\rest <aes, c>[ <f aes>] b'\rest b\rest <bes, des>[ <g' bes>] b\rest
  | b\rest <c, ees>[ <c ees aes>] b'\rest e\rest <c, f aes>[ <f aes c>] d'\rest
  | b\rest <d, f>[ <d f bes>] c'\rest d\rest <bes, ees g>[ <ees g bes>] a\rest
  %5
  | a\rest <c, ees>[ <c ees aes>] b'\rest c\rest <bes, d f>[ <d f aes>] c'\rest
  | a\rest <bes, aes'>[ <bes g'> <ees, bes'>]
    \once\override NoteColumn.force-hshift = #-1.2 <ees aes c>[ <c' ees>
    \once\override NoteColumn.force-hshift = #0.3 <f, bes>] a'\rest
  | b\rest <bes, ees g>[ <ees g bes>] b'\rest d\rest <ges,, bes ees>[
    \once\override NoteColumn.force-hshift = #-1.8 <ees ges a>] b''\rest
  | b\rest <a,,! c ees>[ <f' a c>] b'\rest b\rest
    \once\override Beam.positions = #'(5.2 . 5.7)
    <ees,, c'>[ <c' f> <a! c>]
  | b'\rest \change Staff = "lower" <f,, des'>[
    \change Staff = "upper"\stemDown \once\override NoteColumn.force-hshift = #-0.9 <bes' f'>] b'\rest
    \stemUp \once\override Voice.Rest.X-offset = #1 e\rest
    \once\override Beam.positions = #'(7.0 . 7.2)
    <bes, f'>16[ \once\override NoteColumn.force-hshift = #0.4 c <des f>8] d'\rest
  %10
  | d\rest <ees,, bes'>[ \once\override NoteColumn.force-hshift = #-1.2 <c' ees a!>] a''\rest
    c,\rest \once\override NoteColumn.force-hshift = #0.3
    <des, ges!>[ \once\override NoteColumn.force-hshift = #-1.2 <c f a!>] d'\rest
  | f\rest <bes,, des f>[ <des f bes>] b'\rest b\rest
    \once\override Beam.positions = #'(3.2 . 3.7) <ees,, bes'>[ <bes' ees>] b'\rest
  | b\rest \once\override NoteColumn.force-hshift = #-1.1 <aes, ees'>[
    \once\override NoteColumn.force-hshift = #1 <c ees aes>] b'\rest b\rest
    aes[ \once\override NoteColumn.force-hshift = #0.4 <ees c'>] d'\rest
  | d\rest <aes, des>[ <des f aes>] a'\rest a\rest
    \once\override NoteColumn.force-hshift = #-1.05 <f, des'>[
    \once\override NoteColumn.force-hshift = #-1.05 <des g>] a''\rest
  | a\rest <ees, des'>[ \once\override NoteColumn.force-hshift = #-1.2 <ees g bes des>]
    a'\rest a\rest \once\override NoteColumn.force-hshift = #-1.1 <aes, c ees>[
    \once\override NoteColumn.force-hshift = #-1.1 <c aes'>
    \once\override NoteColumn.force-hshift = #-1.3 <c f>16 bes]
  %15
  | d'8\rest <f,, aes d>[ <ees g bes ees> <bes ees>] a''\rest <ees, aes c>[ <aes c ees>] b'\rest
  | c\rest <ees,, g bes>[ <g ees'>] b'\rest b\rest <aes, c>[ <f aes>] b'\rest
  | b\rest <bes, des>[ <g' bes>] b\rest b\rest <ees, aes>[
    \once\override Arpeggio.positions = #'(-1 . 4)
    <ees c'>\arpeggio] a\rest
  | a\rest^\markup {
      \small "allargando"
    }
    <bes, ees bes'>\arpeggio[ <ces f> <ces, f aes>]
    \once\override NoteColumn.force-hshift = #-1.5
    <c ees aes>[ <des' f> <bes des>] a'\rest
  | \once\override Beam.positions = #'(3.5 . 3.5)
    c,[ <aes ces> \once\override NoteColumn.force-hshift = #-1 <ees bes'>]
    a'\rest c\rest
    \once\override NoteColumn.force-hshift = #-1.1
    <aes, c>[ <f aes>16 ees
    \once\override NoteColumn.force-hshift = #-1.3 <des aes'>8]
  %20
  | a''8\rest \once\override NoteColumn.force-hshift = #-1.1 <des,, g>[
    \once\override NoteColumn.force-hshift = #-1.1 <c g'>] a''\rest g\rest
    <aes, c>[ <f f'> \once\override NoteColumn.force-hshift = #0.3 f]
  | \stemDown\slurUp c[ <bes'' c g'>16( <aes f'>)]
    \set subdivideBeams = ##t
    <aes c f>16[( <g e'>) <g c e>( <f b d>)]
    \set subdivideBeams = ##f
    <g c e>2^\fermata
  }
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \include "./smallnotes.ly"
  %1
  | s1*20
  %21
  \magnifyMusic #0.8 {
  | \stemDown f8\rest \clef treble
    \once\override Hairpin.Y-offset = #4
    <bes' c g'>16[(^\> <aes f'>])
    \set subdivideBeams = ##t
    <aes c f>[( <g e'>) <g c e>( <f b d>)]\!
    \set subdivideBeams = ##f
    \once\override Staff.TextScript.extra-offset = #'(0 . 1)
    <g c e>2^\fermata^\markup { \normalsize \dynamic pp }
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r8 <aes aes'>_\p <aes, aes'> <aes' aes'>_. r8 <g g'> <g, g'> <g' g'>_.
  | r8 <f f'> <f, f'> <f' f'>_. r8 <ees ees'> <ees, ees'> <ees' ees'>_.
  | r8 <aes aes'> <aes, aes'> <aes' aes'>_. r8 <f f'> <f, f'> <f' f'>_.
  | r8 <d d'> <d, d'> <d' d'>_. r8 <ees ees'> <ees, ees'> <ees' ees'>_.
  %5
  | r8 <c c'> <c, c'> <c' c'>_. r8 <d d'> <d, d'> <d' d'>_.
  | r8 <ees ees'> <ees, ees'> <g' g'> <aes aes'> <f f'> <bes bes'> <bes, bes'>
  | r8 <ees ees'> <ees, ees'> <des'! des'!>_- r8 <c c'> <c, c'> <ees' ees'>_.
  | r8 <f f'> <f, f'> <ges' ges'>_. r8 <a a'> <a, a'> <f' f'>
  | \stemDown r8 bes <bes, bes'> <bes' bes'> \stemNeutral r8 <aes aes'> <aes, aes'> <aes' aes'>
  %10
  | r8 <ges ges'> <ges, ges'> <ges' ges'> <f f'>[ <ees ees'>] <f f'>[ <f, f'>]
  | r8 <bes' bes'> <bes, bes'> <aes' aes'> r8 <g g'> <g, g'> <ees' ees'>
  | r8 <aes aes'> <aes, aes'> <ges' ges'> r8 <f f'> <f, f'> <aes' aes'>
  | r8 <des, des'> <des, des'> <c' c'> r8 <bes bes'> <bes, bes'> <aes'' aes'>_.
  | r8 <g g'> <g, g'> <ees' ees'> <aes, aes'> <c c'> <f f'> <des des'>
  %15
  | r8 <ees ees'>_. <ees, ees'> <g' g'> r8 <aes aes'> <aes, aes'> <aes' aes'>
  | r8 <g g'> <g, g'> <g' g'> r8 <f f'> <f, f'> <f' f'>
  | r8 <ees ees'> <ees, ees'> <ees' ees'> r8 <aes aes'> <aes, aes'> <aes' aes'>
  | r8 <des, des'> <d, d'> <d' d'> <ees ees'> <des des'> <ees ees'> <ees, ees'>
  | r8 <aes aes'> <g g'> <g' g'> r8 <f f'> <f, f'> <f' f'>
  %20
  | r8 <ees ees'> ees\( <ees, ees'> <des des'>2\)
  | <c c'>1\fermata_\markup {
      \hspace #-0.5 \musicglyph #"pedal.Ped"
    }
    \fine
}

Sustain = {
  %1
  | s8\sustainOn s s s s\sustainOff s\sustainOn s s
  | s\sustainOff\sustainOn s s s s\sustainOff\sustainOn s s s
  | s\sustainOff\sustainOn s s s s\sustainOff s8-\markup { \hspace #-1"simile" } s4
  | s1*2
  %6
  | s8 s\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn
    s\sustainOff\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn
  | s\sustainOff\sustainOn s s s s\sustainOff\sustainOn s s s
  | s\sustainOff\sustainOn s s s s\sustainOff\sustainOn s\sustainOff\sustainOn
    s\sustainOff\sustainOn s\sustainOff\sustainOn
  | s\sustainOff s\sustainOn s s s\sustainOff s\sustainOn s s
  %10
  | s\sustainOff s \sustainOn s s s\sustainOff\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn s
  | s\sustainOff\sustainOn s s s\sustainOff\sustainOn s s s s
  | s\sustainOff s\sustainOn s s\sustainOff s s s s
  | s s\sustainOn s s\sustainOff s\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn s\sustainOff
  | s s\sustainOn s s\sustainOff s\sustainOn
    s\sustainOff\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn
  %15
  | s\sustainOff s s s s\sustainOn s s s\sustainOff
  | s s\sustainOn s s\sustainOff s\sustainOn s s s\sustainOff
  | s\sustainOn s s s\sustainOff s s s\sustainOn s\sustainOff
  | s s\sustainOn s\sustainOff\sustainOn s s\sustainOff\sustainOn s\sustainOff\sustainOn
    s\sustainOff\sustainOn s
  | s\sustainOff s\sustainOn s\sustainOff\sustainOn s\sustainOff s s\sustainOn
    s\sustainOff\sustainOn s\sustainOff\sustainOn
  %20
  | s\sustainOff s\sustainOn s\sustainOff\sustainOn s\sustainOff s s s\sustainOn s\sustainOff
}

\score {
  <<
    \accidentalStyle Score.piano
    \new PianoStaff <<
      \new Staff = "upper" <<
        \clef treble
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Soprano
        }
        \new Voice {
          \Global
          \Alto
        }
      >>
      \new Staff = "lower" <<
        \clef bass
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Tenor
        }
        \new Voice {
          \Global
          \Bass
        }
        \new Voice {
          \Sustain
        }
      >>
    >>
  >>
  \header {
    composer = ##f  % "Johann Sebastian Bach"
    opus = ##f  % "BWV 1056"
    title = ##f  %  \markup {
    %  \fill-line {
    %    \center-column {
    %      \line { "Largo" }
    %      \line { \italic "aus dem Cembalo Konzert f-Moll" }
    %      \null
    %    }
    %  }
    %}
    subtitle = "To Albert Schweizer"
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
    \tempo 8 = 54
  }
}
