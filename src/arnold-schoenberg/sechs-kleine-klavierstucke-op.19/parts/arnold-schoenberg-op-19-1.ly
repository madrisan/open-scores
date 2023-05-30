Global = {
  \key c \major
  \time 6/8
  \include "../global.ly"
}

% extend laissez-vibrer tie
extendLV = #(define-music-function (parser location further) (number?) #{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
  \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

csBracket = \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
grayTextColor = #(x11-color "dimgray")
lH = \markup \italic\small { "l.H" }
rH = \markup \italic\small { "r.H" }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemNeutral\slurNeutral
  \tempo \markup {
    \bold\concat { "Leicht, zart (" { \tiny\note {8} #1 } ")" }
  }
  \partial 8 b8~(
  %1
  | b4 dis8 f,!4 fis8)
    \break
  | r a![(^\markup {
      \small "etwas zögernd"
      %\override #'((on . 0.3) (off . 0.5))
      \draw-dashed-line #'(24 . 0)
    } bes16^\< a]
    \once\override Staff.TextScript.extra-offset = #'(-7 . -2)
    \csBracket fis4_\rH
    \arpeggio\!\> dis8\!)
    \revert PianoStaff.Arpeggio.stencil
  | r4. r16 \tuplet 3/2 { b''!32[(\ppp^\markup \italic\small {
       "flüchtig"
    } e,! a!] } g!16[ gis8 a!16~]
  | a4.) r8 \stemUp\slurUp <ees ges>8\espressivo[( f,!16. e'!32]
  %5
  | \tuplet 3/2 { ees16 d! a! } des8^- c) g'\rest aes8.\espressivo[( g16]
  | \time 3/8 b!8.[ d!16 fis^- f!])
  | \time 2/4 \stemDown r8 <ees, b'! d!>16\arpeggio r16 r8 <f! a! des>16\arpeggio r16
  | r32 fis[( cis g!]
    bes_\lH[_\markup \annotation 4 d!
    \once\override Staff.TextScript.extra-offset = #'(0 . -3.6)
    a'!^\rH gis]
    <b! f'!>16^.)[ <c,!_~ fis~>^> q8]
  | r8 \stemUp a,!4.
  %10
  | b''8\rest
    \once\override Staff.TextScript.extra-offset = #'(0 . 6)
    des32^\pp_\markup \italic\small { "flüchtig" }
    [( bes f! ges] e![ cis f!8.~]
  | f16) c'16\rest c,,8\rest^\markup {
      \small "rit."
      \draw-dashed-line #'(12 . 0)
    } s4
  | s2
  | \shape #'(
      (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
      (( 0.5 . 1) (0 . 1) (0 . -2) (0 . -11))
    ) PhrasingSlur

    f'!8[\(^\mf^\markup {
      \small "(mit Ton)"
    } ees des d,!_\lH_\markup \annotation {6}]
    \break
  | \time 6/8 d!4^\markup {
      \small "molto rit."
      \draw-dashed-line #'(14 . 0)
    }^\markup { \tiny\note {8} #1 "=" \tiny\note {8.} #1  } f!8 des4 ces8
  %15
  | \stemDown\tieNeutral
    <e'! gis dis'>2.~^>\ppp\)
  | <e gis dis'>2.~
  | <e gis dis'>4.~
    \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    q8[^\markup {
      \small "molto rit."
      \draw-dashed-line #'(6 . 0)
    }
    \shape #'((0 . 0) (0 . 0) (0 . 1) (4 . 0.2)) Slur
    <dis g! e'!>(
    \extendLV #2
    \override LaissezVibrerTieColumn.tie-configuration
       = #`((9 . ,UP)
            (5 . ,UP)
            (3 . ,DOWN))
    <e gis dis'>]\laissezVibrer\fermata)
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s4. b8\rest
    \once\override Staff.TextScript.extra-offset = #'(-6 . 0)
    \csBracket c!4\arpeggio-\lH
  | s2.*2
  | \stemUp d'8_-[( e!8._- f!16_-)] s4.
  %5
  | \stemDown aes,8.[ g8\< b!16\!] bes8(\> a!4)\!
  | r8 e'!16_.[ dis_.] g!8_.
  | s2*3
  %10
  | g,,!2~_\markup \annotation {5}
  | g8[ \clef bass cis,( fis dis]
  | e4)^\fermata r
    \clef treble
  | <d'! aes'>4 <ees a!>
  | b!8\< s s\!\> s s\! s

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \partial 8 s8
  %1
  | s2.
  | s4.
    \stemDown
    \once\omit Beam
    \csBracket c!16\arpeggio[( d,!8]) s8.
  | s4
    \clef bass \stemUp\tieUp\slurUp ais''8^>^(
    \once\override Hairpin.shorten-pair = #'(3.5 . 3.5)
    bes8.[)^\< b!16\! bes8~]
  | \override Hairpin.to-barline = ##f
    \override Slur.height-limit = 20
    \override DynamicLineSpanner.outside-staff-priority = ##f
    bes4. s8
    \clef bass
    \shape #'((0 . 0) (0 . -5) (0 . -1) (0 . 0)) Slur
    a,!16[( b! d!^- cis^\<]
  %5
  | \once\override Hairpin.shorten-pair = #'(0 . 6)
    e!4\!^\> ees8)\! s <f,! b!>[( <bes d!>])
  | s8 aes'16[( a! cis8])
    \override Hairpin.to-barline = ##t
  | s2
  | \set subdivideBeams = ##t
    c4\rest r16
    \once\override Staff.TextScript.extra-offset = #'(-4 . 0.5)
    <d,! ees g!>32^>[_\(_\markup {
      \dynamic fpp \small "trem."
    } b'! <d, ees g> b' <d, ees g> b']
  | \repeat tremolo 4 { <d,! ees g!>32 b'! }
    \repeat tremolo 4 { <d, ees g>32 b' }
  %10
  | \set tieWaitForNote = ##t
    \once\override Hairpin.shorten-pair = #'(0 . 13)
    \set Staff.pedalSustainStyle = #'mixed
    \override Staff.SustainPedal.color = #(x11-color "dimgray")
    \repeat tremolo 4 {
      <d,! ees g!>32^\>_~\sustainOn b'!~
    }
    \once\override Staff.TextScript.extra-offset = #'(0 . 2.5)
    <d, ees g b>4_~\)\!^\markup \italic\tiny {
      \hspace #2 \with-color \grayTextColor
      \column {
        \line { \hspace #6 \char ##x2191 }
        \raise #1 \line { "presa muta" }
        \raise #2 \line { "del SOL" }
      }
    }
  | <d ees g b>2_~\sustainOff
  | <d ees g b>4\fermata r
  | s2
  | s8 gis,4( aes8) s4
  %15
  | \shape #'((0 . 0) (0 . 1.5) (0 . 2.5) (0 . 0)) Tie
    bes'2.-2~_\markup \annotation 7
  | \shape #'((0 . 0) (0 . 2.5) (0 . 2.5) (0 . 0)) Tie
    2.~
  | 4.~ 8[
    \shape #'((0 . 0) (0 . 0) (0 . 0.3) (3 . -0.5)) Slur
    b!(
    \extendLV #1.5
    \once\override LaissezVibrerTieColumn.tie-configuration = #`((2 . ,UP))
    bes\laissezVibrer]_\fermata
    <>)
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \clef treble
  \partial 8 a!32[( c g'! gis)]
  %1
  | \clef bass r8 r r16. <des,, b'! e!>32~ q8[ \csBracket g'\arpeggio]_\markup \annotation 1 r
  | \clef treble r r f'32[( e! des bes])
    \clef bass
    g!16[_\markup \annotation 2 b,!8] r16 d![ cis~]
  | cis16[_\> \appoggiatura c!16 b'!8 d!16]
    \clef treble \stemDown\slurDown s8\! <c! ees>8.[ <b! d!>16 <c_~ ees_~>8]
  | <c! ees>4.
    \once\override Staff.TextScript.extra-offset = #'(0 . 0.2)
    r8^\markup { \small "espress." }
    \clef bass d,!8[(_\markup \annotation 3 ees]
  %5
  | f!8[_\< a!8.\!\> fis16\!]) r8 cis16[(_\< d fis8_-])\!
  | \time 3/8 r8 \clef treble f'! d!16[(\< ees])\!
  | \time 2/4 \stemUp bes'16.[_\pp r64 a!^.] a16.[ r64 aes^.] aes16.[ r64 ces^.] ces16.[ r64 d,!~]
  | \stemDown d2
  | s1*2/4*4
  %13
  | \clef bass <a,! ges'>4 <bes f'!>
  | \time 6/8 <c! e!>4. <b! f'>8 r r
  | \clef treble c'4\rest d!16[(\pp f!] cis'4.-1_~
  | cis4)
    \shape #'((-0.5 . -1.5) (0 . 0) (0 . -1) (14 . -1.5)) PhrasingSlur
    d!8-1\( a!4-3	 cis,8
  | fis4.-4
    \shape #'((0 . 0) (0 . -0.5) (0 . -0.8) (0 . 0)) Slur
    f!4.(-5 <>)\)
  \fine
}

centerDynamics = {
  \partial 8
    \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    s8-\markup { \dynamic ppp }
  %1
  | s2.
  | s8 s4\p s4.
  | s16 s8\pp s8. s8 s\> s
  | s4 s8\! s8 s\p s
  %5
  | s2 s4\<
  | s8 s s16\!\> s
  | s4\!-\markup { \small "leich" } s
  | s4-\markup { \dynamic ppp \small "flüchtig" }
    s4\>
  | s8\! s\pp\< s4
  %10
  | s4\! s
  | s8\< s4\!\> s8
  | s8 s\! s4
  | s8\p\< s s\!\> s
  | s8\! s s2
  %15
  | s2.*2
  | s4 s8 s\ppp\< s s\!
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
    >>
  >>
  \header {
    composer = "Arnold Schönberg"
    %opus = "Op. 19"
    title = \markup {
      \fill-line {
        \center-column {
          \null\null
          \line { \abs-fontsize #18 "Sechs kleine Klavierstücke, Op. 19" }
          \line {
            \abs-fontsize #14 \italic "Six little piano pieces"
            \abs-fontsize #14 \normal-text\bold "(1911)"
          }
          \null
          \line { \abs-fontsize #20 "I." }
          \null
        }
      }
    }
    % \markup { \abs-fontsize #30 "1." }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 56
  }
}

\markup \small\italic {
  \column {
    \fill-line {
       "Nach jedem Stuck ausgiebige Pause; die Stücke dürfen nicht ineinander übergehen!" ""
    }
    \fill-line {
      "(Long break after each piece; the pieces must not merge into one another!)" ""
    }
  }
}
