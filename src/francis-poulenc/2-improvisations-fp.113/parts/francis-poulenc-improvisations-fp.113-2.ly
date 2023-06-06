Global = {
  \key ees \major
  \time 3/4
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  %1
  | \tempo "Mouvement de Valse à 1 temps" 2. = 92
    bes4.^> 8 4
  | 2-> g4_>
  | \stemUp\slurUp bes^> a!_> g_>
  | bes2.^>~
  %5
  | 2~ 8 r
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | bes8^>^\markup { \hspace #-1 \small\italic "pimpant" } 8^> 4^. ees^.
  %10
  | d2^>( bes8^.) r
  | g^. r \slurDown\appoggiatura { g16 aes } \slurUp g8( fis g c
  | bes2^>) 8^. r
  | bes^> bes bes r aes^. r
  | aes^> aes aes r g^. r
  %15
  | f^> f f r fis^. r
  | g2.^>
  | bes8^> 8^> 4^. ees^.
  | d2^>( bes8^.) r
  | g^. r \slurDown\appoggiatura { g16 aes } \slurUp g8( fis g c
  %20
  | bes2^>) 8^. r
  | bes^> bes bes r aes^. r
  | aes^> aes aes r g^. r
  | g^> g g r f r
  | <g, bes ees>2~_> q8 r
  %25
  | \phrasingSlurUp
    d'2\( g4
  | f2 c'4
  | bes2 g'4
  | <c, f>2.\)
  | bes,2\(^\markup { \dynamic p \small\italic "subito" } g'4
  %30
  | f2 c'4
  | bes2 g'4
  | \stemDown <bes, f'>2.\)
  | \stemUp bes8^>^\markup { \small\italic "a tempo" } 8 4 ees
  | d2^>( bes8) r
  %35
  | g^. r \slurDown\appoggiatura { g16 aes } \slurUp g8( fis g c)
  | bes2^> 8^. r
  | bes^> bes bes r aes^. r
  | aes^> aes aes r g^. r
  | f^> f f r fis^. r
  %40
  | g2.^>
  | \stemUp bes'8^> 8 4 ees
  | d2^>( bes8) r
  | \stemDown g r \stemUp\slurDown\appoggiatura { g16 aes } \stemNeutral\slurUp g8( fis g c
  | \stemUp bes2) 8^. r
  %45
  | bes^> bes bes^. r aes r
  | aes^> aes aes^. r g r
  | g^> g s2
  | R1*3/4
  | R1*3/4
  %50
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %55
  | R1*3/4
  | R1*3/4
    \bar "||"
  | R1*3/4
  | R1*3/4
  | R1*3/4
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown
  %1
  | s2.*8
  | d4\rest g <g bes>
  %10
  | d4\rest <d f> q8 s
  | s4 ees2
  | c4\rest <des e>4 q8 s
  | s2 <c f>8 s
  | s2 ees8 s
  %15
  | s4 d8 s d s
  | a4\rest <g bes ees> q
  | d'4\rest g <g bes>
  | d4\rest <d f> q8 s
  | s4 ees2
  %20
  | c4\rest <des e>4 q8 s
  | s2 <c f>8 s
  | s2 ees8 s
  | s4 d8 s d s
  | s2.
  %25
  | f,4\rest <aes d> <bes d>
  | f\rest <a! c ees> <c ees a!>
  | <d f> q <g bes d>
  | <f a!> q q
  | d,\rest <f aes!> <g c ees>
  %30
  | a\rest <c ees> <c ees aes>
  | d\rest <c f aes> <c' ees>
  | s2.
  | d,4\rest g <g bes>
  | d4\rest <d f> q8 s
  %35
  | s4 ees2
  | c4\rest <des e>4 q8 s
  | s2 <c f>8 s
  | s2 ees8 s
  | s4 d8 s d s
  %40
  | a4\rest <g bes ees> q
  | g'\rest g'8 r <g bes> r
  | a,4\rest <d f>4 q8 r

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurNeutral
  %1
  | s2.*24
  %25
  | bes4 4 4
  | s2.
  | <f' bes>4 q <bes d>
  | <c ees>2.
  | s2.
  %30
  | aes4 4 4
  | c\rest ees ees
  | <d aes'>2.

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \phrasingSlurNeutral\stemNeutral\slurNeutral\tieNeutral
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  %1
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | r4 r bes'^>
  %5
  | c4.^> bes8^> 4^>
  | 4^> a!^> g^>
  | a!^> g^> a^>
  | bes2.^>
  | <ees,, ees'>8_\markup \italic {
      \small "marquer les 1." \hspace #-0.5 \super "rs" \small "temps"
    }
    r <bes'' ees>4 q
  %10
  | <bes,, bes'>8 r <f'' bes>4 q8 r
  | <c, c'> r <g'' c>4 q
  | <g,, g'>8 r <g'' bes>4 q8 r
  | <aes,, aes'> r <f'' aes>4 q8 r
  | <bes,, bes'> r <g'' bes>4 q8 r
  %15
  | <bes,, bes'> r <aes'' bes> r q r
  | <ees, ees'> r ees'4 4
  | <ees, ees'>8 r <bes'' ees>4 q
  | <bes,, bes'>8 r <f'' bes>4 q8 r
  | <c, c'> r <g'' c>4 q
  %20
  | <g,, g'>8 r <g'' bes>4 q8 r
  | <aes,, aes'> r <f'' aes>4 q8 r
  | <bes,, bes'> r <g'' bes>4 q8 r
  | <bes,, bes'> r <aes'' bes> r q r
  | <ees, ees'>2~ q8 r
  %25
  | \stemDown\tieDown bes2.
  | <bes' f'>4 q <bes a'!>
  | bes2.~
  | bes
  | <bes,, bes'>2.
  %30
  | bes''2.~
  | bes~
  | bes
  | \stemNeutral
    <ees, ees'>8 r <bes'' ees>4 q
  | <bes,, bes'>8 r <f'' bes>4 q8 r
  %35
  | <c, c'> r <g'' c>4 q
  | <g,, g'>8 r <g'' bes>4 q8 r
  | <aes,, aes'> r <f'' aes>4 q8 r
  | <bes,, bes'> r <g'' bes>4 q8 r
  | <bes,, bes'> r <aes'' bes> r q r
  %40
  | <ees, ees'> r ees'4 4
  | <ees, ees'>8 r <g' bes ees> r <bes ees g> r
  | <bes,, bes'>8 r <bes'' d>4 <d f>8 r
  | R1*3/4
  | R1*3/4
  %45
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %50
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  | R1*3/4
  %55
  | R1*3/4
  | R1*3/4
    \bar "||"
  | R1*3/4
  | R1*3/4
  | R1*3/4

  \fine
}

centerDynamics = {
  %1
  | s2.-\markup {
      \dynamic ff \whiteout \small\italic "très brillant et très animé"
    }
  | s2.*7
  | s2.\f
  | s2.*7
  %17
  | s2.\f
  | s2.*7
  %25
  | s2.\f
  | s2.*4
  %30
  | s2.^\markup { \whiteout \small\italic "céder un peu" }
  | s2.*2
  | s2.\f
  | s2.*7
  %41
  | s2.\ff

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
    composer = "Francis Poulenc"
    arranger = " "
    opus = #f
    title = \markup {
      \fill-line {
        \center-column {
          \line { \abs-fontsize #10 \normal-text\italic "à Edwige Feuillère" }
          \null
          \line { \abs-fontsize #18 "IMPROVISATION" }
          \line \abs-fontsize #13 { "en mi" \raise #0.6 \flat "majeur" }
          \line \abs-fontsize #13 { \italic "(HOMMAGE À SCHUBERT)" }
          \null\null
        }
      }
    }
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
    \tempo 2 = 120
  }
}
