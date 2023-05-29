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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #75 \bold "Liszt" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Unstern! Sinistre" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "S. 208" }
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
            "Based on the score: Leipzig: Breitkopf & Härtel, 1927. Plate F.L. 80."
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 4/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  \tempo "Lento" 2 = 48
  | r2 r4 \clef bass e\(
  | f2 b
  | c2. b4
  | c\) r c2~\accent
  %5
  | <fis, c'>1
  | r2 r4 e\(
  | f2 b
  | c2. b4
  | c\) r c2~\accent
  %10
  | <fis, c'>1
  \repeat unfold 2 {
  | r2 r4 a\(
  | bes2 e
  | f2. e4
  | f\) r f2~\accent
  %15
  | <b,! f'>1
  }
  %21
  | \clef treble
    r2 <gis gis'>4..^\markup { \small\italic "ten." } q16^\markup { \small\italic "ten." }
  \repeat unfold 3 {
  | <gis gis'>4.. q16 <gis gis'>4.. q16
  }
  %25
  | q4 r
  \crossStaff {
    <c e gis!>2\accent
  | <b dis gis>\accent <c e gis>\accent
  | <b dis gis>2.\marcato q4\marcato
  | <c e gis>1\marcato
  }
  \break
  | r2 <a a'>4.. q16
  %30
  \repeat unfold 3 {
  | q4.. q16 q4.. q16
  }
  | q4 r
  \crossStaff {
    <cis f a>2\accent
  | <c! e a>\accent <cis f a>\accent
  %\break
  | <c e a>2.\marcato q4\marcato
  %35
  | <cis f a>1\marcato
  }
  | r2 <ais ais'>4.. q16
  %40
  \repeat unfold 3 {
  | q4.. q16 q4.. q16
  }
  | q4 r <b b'>4.. q16
  \repeat unfold 3 {
  | q4.. q16 q4.. q16
  }
  %45
  | q4.. q16 <b dis f b>4.. q16
  | q4.. q16 q4.. q16
  \repeat unfold 5 {
  | q2... q16
  }
  | q1
  | R1*5
  %58
  | r2 \clef bass <cis, f a cis>_\p\(
  | <d fis bes d>2. <dis g b! dis>4
  %60
  | <e gis c! e>\) r
    \clef treble \phrasingSlurDown <f a cis f>2\(
  | <fis bes d fis>2. <g b dis g>4
  | <gis c e gis>\) r <a cis f a>2\(
  | <bes d fis bes>2. <b! dis g b!>4
  | <c e gis c>4\) r <cis f a cis>2\(
  %65
  | <d fis bes d>2. <dis g b! dis>4
  | <e gis c e>\) <f a cis f>2^\markup {
      \small\italic "up poco accelerando"
    }
    <fis ais d fis>4~
  | q <g b dis g>2 <gis c e gis>4~
  | q <a cis f a>2 <ais d fis ais>4~
  | q <b dis g b>2 <c e gis c>4~
  %70
  | q r q4..\fff q16
  | q4.. q16 \stemUp q4.. q16
  | q4 r \clef bass \stemDown <c,, e gis c>4.. q16
  | q4.. q16 q4.. q16
  | q4 r \clef treble <c'' e gis c>4.. q16
  %75
  | q4.. q16 \stemUp q4.. q16
  | q4 r \clef bass \stemDown <c,, e gis c>4.. q16
  | q4.. q16 q4.. q16
  | q4^! r q4..^\marcato q16
  | q4 r q4.. q16
  %80
  | q4^! r q^! r
  | r2 q4.. q16
  | q4^! r q^! r
  | R1
  | r2
    \shape #'(
      (( 0 . 0) (0 . 0.3) (0 . 1) (3 . 0.5))
      (( 0 . 4) (0 . 4) (0 . 3.5) (0 . 3))
    ) PhrasingSlur
    <cis eis gis cis>2^\(
    \bar "||"
    \clef treble
    \key b \major
    \break
  %85
  | <b' dis>1\)^\markup {
      \small\italic "sostenuto, quasi Organo"
    }
  \crossStaff {
  | \stemUp <b e>2. <dis fis>4
  | q1
  | r2 fis
  | <cis fis>1
  %90
  | <dis fis>2. <e fis>4
  | q1
  | r2 fis
  | <b, dis>1
  | <b e>2. <dis fis>4
  %95
  | q1
  | r2 fis
  | <cis fis>1
  | <dis fis>2. <e fis>4
  | q1
  %100
  | r2 fis
  \repeat unfold 2 {
  | <e g!>1
  | <dis g!>2. q4
    << {
  |   \voiceOne \tieUp g!1~
  |   g4 b\rest b2\rest
    }
    \new Voice {
      \voiceThree \stemDown
  |   dis,2_\accent d_~_\accent
  |   \once\override NoteColumn.force-hshift = #-0.4 d cis4 c\rest
    } >>
  | \stemNeutral\phrasingSlurNeutral d2\( cis4 c
  | b ais a ais
  | b bis cis\) r
  | d2_(_\accent cis4) r
  }
  }
  \repeat unfold 2 {
  | <cis fis>1
  | <cis eis>
  | <cis e>
  | <cis eis>
  }
  \repeat unfold 2 {
  | <cis fis>
  | R1
  | <dis fis>1
  | R1
  }
  | R1
  | R1
  | q1
  | R1
  | R1
  | q1
  | <cis fis>1~
  | q1
  | R1
  | R1
  | R1
  | R1
  | R1
  | R1\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*70
  %71
  | s2 <b f' gis b>4..\marcato q16
  | q4_! s2.
  | s1*2
  %75
  | s2 <b f' gis b>4..\marcato q16
  | q4_! s2.
  | s1*26
  %103
  \crossStaff {
  | \bottom <g a>1^~
  | \stemUp q4 s2.
  | s1*6
  | <g! a>1^~
  | q4 s2.
  }

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*24
  | s2
  \crossStaff {
    gis
  | gis gis
  | gis2. gis4
  }
  | s1*5
  %33
  | s2
  \crossStaff {
    a2
  | a a
  | a2. a4
  }
  | s1*50
  %86
  \crossStaff {
  | <e gis>2. <fis ais>4
  | q1
  | r2 fis2
  | <fis, ais>1
  %90
  | q2. q4
  | q1
  | r2 fis
  | <dis fis>1
  | <e gis>2. <fis ais>4
  %95
  | q1
  | r2 fis
  | <fis ais>1
  | q2. q4
  | q1
  %100
  | r2 fis
  \repeat unfold 2 {
  | <g! ais>1
  | q2. <g' ais>4
  | \stemDown \once\override NoteColumn.force-hshift = #-0.9 dis2 d_~
  | \once\override NoteColumn.force-hshift = #-0.4 d \stemUp cis4 r
  | s1*4
  }
  | <fis, ais>1
  }
  \repeat unfold 2 {
  | <eis ais>
  | <e ais>
  | <eis ais>
  | <fis ais>
  }
  \repeat unfold 3 {
  | s
  | q
  }
  | s1*3
  | q1
  | s1*2
  | q1
  | q~
  | q
}

Bass = \context Voice = "four" \relative c, {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  | r2 r4 \clef bass e\(
  | f2 b
  | c2. b4
  | c\) r c2~\accent
  %5
  | <fis, c'>1
  | r2 r4 e\(
  | f2 b
  | c2. b4
  | c\) r c2~\accent
  %10
  | <fis, c'>1
  \repeat unfold 2 {
  | r2 r4 a\(
  | bes2 e
  | f2. e4
  | f\) r f2~^\accent
  %15
  | <b,! f'>1
  }
  | R1
  | \slurUp r2 <f f'>\accent(_\markup { \small\italic "marcato" }
  | <e e'>4_.) <d d'>_. <e e'>_. <f f'>_.
  | <c c'>4_. <b b'>_. <c c'>_. <d d'>_.
  %25
  | <dis dis'>_. r \stemDown <e c'>2\accent
  | <dis b' dis>2\accent <e c' e>\accent
  << {
  | <dis b' dis>2. q4
  | <e c' e gis>1^\marcato
  }
  | \new Staff = "ossia"
    \with {
      alignBelowContext = "lower"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      \omit Staff.TimeSignature
      %\remove "Clef_engraver"
    } {
      \override Beam.beam-thickness = #0.4
      \override Beam.length-fraction = #0.8
  |   \clef bass
      \repeat tremolo 4 { <dis b'>16_\markup { \hspace #-6 \italic "ossia" } dis' }
      \repeat tremolo 4 { <dis, b'>16 dis' }
  |   \repeat tremolo 4 { <e, c'>16 e' } \repeat tremolo 4 { <e, c'>16 e' }
    }
  >>
  %30
  | R1
  | r2 \stemUp <ges, ges'>\accent_\markup { \small\italic "marcato" }(
  | <f f'>4_.) <ees ees'>_. <f f'>_. <ges ges'>_.
  | <des des'>_. <c c'>_. <des des'>_. <ees ees'>_.
  | <e! e'!>_. r \stemDown <f cis' f>2\accent
  | <e c' e>2\accent <f cis' f>\accent
  << {
  %35
  | <e c' e>2. q4
  | <f cis' f a>1^\marcato
  }
  | \new Staff = "ossia"
    \with {
      alignBelowContext = "lower"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
      \omit Staff.TimeSignature
      %\remove "Clef_engraver"
    } {
      \override Beam.beam-thickness = #0.4
      \override Beam.length-fraction = #0.8
  %35
  |   \clef bass
      \repeat tremolo 4 { <e c'>16_\markup { \hspace #-6 \italic "ossia" } e' }
      \repeat tremolo 4 { <e, c'>16 e' }
  |   \repeat tremolo 4 { <f, cis'>16 f' } \repeat tremolo 4 { <f, cis'>16 f' }
    }
  >>
  | R1
  | \stemNeutral r2 <g, g'>\accent
  | <fis fis'>4_. <e e'>_. <fis fis'>_. <g g'>_.
  %40
  | <d d'>4_. <cis cis'>_. <d d'>_. <e e'>_.
  | <fis fis'>4_. <g g'>_. r2
  | r2 <aes aes'>\accent
  | <g g'>4_. <f f'>_. <g g'>_. <aes aes'>_.
  | <ees ees'>4_. <d d'>_. <ees ees'>_. <f f'>_.
  %45
  | <g g'>_. <aes aes'>_. <a dis f a>4.. q16
  | q4.. q16 q4.. q16
  | <g g'>4_. <f f'>_. <g g'>_. <a a'>_.
  | <f f'>4_. <dis dis'>_. <f f'>_. <g g'>_.
  | <dis dis'>4_. <cis cis'>_. <dis dis'>_. <f f'>_.
  %50
  | <cis cis'>4_. <b b'>_. <cis cis'>_. <dis dis'>_.
  | <b b'>4_. <a a'>_. <b b'>_. <cis cis'>_.
  | <a a'>4_. <g g'>_. <a a'>_. <b b'>_.
  \repeat unfold 2 {
  | <cis cis'>4_. <b b'>_. <a a'>_. <g g'>_.
  | <f f'>_. <g g'>_. <a a'>_. <b b'>_.
  }
  %57
  | <cis cis'>_. <b b'>_. <a a'>_. <g g'>_.
  | \repeat tremolo 8 { f32_\p f' } \repeat tremolo 8 { f, f' }
  \repeat unfold 2 {
  | \repeat tremolo 8 { f,32 f' } \repeat tremolo 8 { f, f' }
  }
  %61
  | \repeat tremolo 8 { f,!32_\p f'! } \repeat tremolo 8 { f, f' }
  \repeat unfold 8 {
  | \repeat tremolo 8 { f,32 f' } \repeat tremolo 8 { f, f' }
  }
  %70
  | \repeat tremolo 8 { f,32 f' } r4 <e' e'>_\fff
  | <f f'>2^\marcato s
  | s4 r r <e,, e'>
  | <f f'>2\marcato <b f' gis b>4..\marcato q16
  | q4 r r <e' e'>
  %75
  | <f f'>2^\marcato s
  | s4 r r <e,, e'>
  | <f f'>2\marcato <b f' gis b>4.. q16
  | q4_! r <bes f' gis bes>4..\marcato q16
  | q4 r <gis f' gis>4.. q16
  %80
  | q4_! r q_! r
  | r2 q4.. q16
  | q4_! r q_! r
  | R1
  | r2 <gis gis'>2
    \bar "||"
    \key b \major
  %85
  | <fis fis' dis' fis>1
  | \stemDown <e e'>2. <dis dis'>4
  | q1
  | \override MultiMeasureRest.staff-position = #-6
    R1
  | \ottava -1 e1
  %90
  | dis2. cis4
  | cis1
  | R1
  | fis1
  | e2. dis4
  %95
  | dis1
  | R1
  | e1
  | dis2. cis4
  | cis1
  %100
  | R1
  | cis2 cisis
  | dis2 \ottava 0 <ais' ais'>4 <dis dis'>
  | e1_~
  | e4 d\rest d2\rest
  %105
  | \stemNeutral d'2\( cis4 c
  | b ais a ais
  | b bis cis\) r
  | d2(^\accent cis4) r
  | \stemDown \ottava -1 cis,,2 cisis
  %110
  | dis \ottava 0 <ais' ais'>4 <dis dis'>
  | e1_~
  | e4 d\rest d2\rest
  | \stemNeutral d'2\( cis4 c
  | b ais a ais
  %115
  | b bis cis\) r
  | d2(^\accent cis4) r
    \ottava -1
    \stemDown
  \repeat unfold 2 {
  | e,,1
  | eis2 fis
  | g fis_~
  | fis eis
  }
  | e1
  | \stemUp gis!2 fis
  | dis1
  | ais'2 gis4 fis
  | e1
  | gis2 fis
  | dis1
  | ais'2 gis4 fis
  | ais1~
  | ais2 gis
  | fis1~
  | fis2 eis
  | fis1~
  | fis
  | e!~
  | e~
  | e2 fis
  | gis ais~
  | ais gis~
  | gis fis~
  | fis e~
  | e1^\fermata
  \ottava 0
  \fine
}

centerDynamics = {
  %1
  | s2 s4 s4\mf
  | \once\override Staff.TextScript.extra-offset = #'(0 . 1)
    s1-\markup { \small\italic "pesante" }
  | s1*18
  %21
  | s2 s2\f
  | s1*7
  %29
  | s2 s2\f
  | s1*25
  %55
  | s4 s_\markup {
      \hspace #-0.3 \whiteout
      \small\italic "diminuendo"
    }
    s2
  | s1*5
  %61
  | s4_\markup {
      \hspace #0.1 \whiteout
      \small\italic "poco a poco cresc."
    }
    s2.
  | s1*4
  %66
  | s4_\markup {
      \hspace #0.1 \small\italic "più cresc."
    }
    s2.
  | s1*9
  %76
  | s2 s2_\markup {
      \small\italic "sempre" \whiteout\dynamic fff
    }
  | s1*8
  %85
  | s1\mp
  | s1*15
  %101
  | s1\<
  | s2 s8 s\! s4
  | s1*2
  %105
  | \once\override Hairpin.Y-offset = #-0.5
    s4\p\> s s s\!
  | s1*3
  | s4 s2.\<
  | s2 s8 s\! s4
  | s1*2
  %113
  | \once\override Hairpin.Y-offset = #-0.5
    s4\p\> s s s\!


}
Sustain = {
  %1
  | s1*3
  | s2 s\sustainOn
  | s2 s4 s8 s16 s32 s\sustainOff
  | s1*3
  %9
  | s2 s\sustainOn
  | s2 s4 s8 s16 s32 s\sustainOff
  | s1*3
  %12
  | s2 s\sustainOn
  | s2 s4 s8 s16 s32 s\sustainOff
  | s1*3
  %19
  | s2 s\sustainOn
  | s2 s4 s8 s16 s32 s\sustainOff
  | s2 s\sustainOn
  | s2 s4 s8 s16 s32 s\sustainOff
  | s1*4
  %27
  | s2\sustainOn s4 s4\tweak X-offset 0.3\tweak Y-offset -2.5\sustainOff
  | s2\sustainOn s4 s4\tweak X-offset -0.2\tweak Y-offset -3.5\sustainOff
  | s1*6
  %35
  | s2\sustainOn s4 s4\tweak X-offset 0.3\tweak Y-offset -4.5\sustainOff
  | s2\sustainOn s4 s4\tweak X-offset -0.2\tweak Y-offset -3.5\sustainOff

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
    opus = #f
    title = "Unstern! Sinistre (Disastro)"
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
