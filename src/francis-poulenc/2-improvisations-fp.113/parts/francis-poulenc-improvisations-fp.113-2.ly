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
    \break
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
  | s2.
    \break
  | ees,2\( ees'4
  %50
  | b!2 g4
  | ees2 c4
  | ees2.\)
    \break
  | ees2\( ees'4
  | b!2 g4
  %55
  | ees2 g4
  | c2.\)
    \bar "||"
    \break
  | \key c \major
    gis2\( e'4
  | c2 gis4
  | b2 a4
  %60
  | e2.\)
  | b'2\( c4
  | ees2 d4
  | aes2 d4
  | g,2^~\) g8 r
    \stemNeutral
  %65
  \repeat unfold 2 {
  | <c e g>4.^> q8^> q4^>
  | q2.^>~
  | q8 r <a d fis>4\( <g c e>
  | <fis a d> <e g c> <c' e g>8\) r
  | <a d fis>2( <g c e>8) r
  }
  %75
  | <c, e g>4.^> q8^> q4^>
  | \stemUp\tieUp g'2.^>
  | fis4( g e')
  | <c, e g>4.^> q8^> q4^>
  | g'2.(
  %80
  | fis)
  | fis'^>~
  | fis4 c\( g'
  | \slurDown\appoggiatura { fis16 g } fis2.~\)
  | fis!4 d\( g
  %85
  | \appoggiatura { fis16 g } fis4 cis e
  | \appoggiatura { d16 e } \stemDown d4 c! b
  | \stemNeutral ais cis g
  | fis2.\)
  | \stemUp g2\( ees'4
  %90
  | b2 g4\)
  | ees2\( g4
  | c2.\)
  | gis2\( e'4
  | c2 gis4
  %95
  | e2 a4
  | c2.\)
  | bes2\(^\markup { \small\italic "céder" } g'4
  | f2.\)
  | bes,2\(^\markup { \small\italic "céder encore" }  g'4
  %100
  | f2.\)
    \bar "||"
    \pageBreak
  | \key ees \major
    \slurUp bes,8^>^\markup { \hspace #-2 \small\italic "a tempo" } 8^> 4^. ees^.
  | d2^>( bes8^.) r
  | g^. r \slurDown\appoggiatura { g16 aes } \slurUp g8( fis g c
  | bes2^>) 8^. r
  %105
  | bes^> bes bes r aes^. r
  | aes^> aes aes r g^. r
  | f^> f f r fis^. r
  | g2.^>
  | \stemNeutral bes'8^> 8^> <g bes>^. r <g bes ees>^. r
  %110
  | \stemUp d'2^>( bes8^.) r
  | \stemNeutral g^. r \slurDown\appoggiatura { \stemUp g16 aes } \slurUp\stemNeutral g8( fis g c
  | \stemUp bes2^>) 8^. r
  | bes^> bes bes a\rest aes^. r
  | aes^> aes aes a\rest g^. r
  %115
  | \stemDown g^> g <aes, g'> r <aes f'> r
  | <g ees'> r r4 \clef bass <g, bes des>4(^\markup {
       \small\italic "sans ralentir"
    }
  | <aes c>2) <b! d f>4(
  | <g bes>2) <g bes des>4(
  | <aes c>2) <b! d f>4
  %120
  | \tieNeutral <f aes b>2.~
  | q2.
  | <d f b>2.~
  | q2.
  | \clef treble
    \stemNeutral\slurNeutral
    <ees' g>4( g,)_\laissezVibrer r^\markup {
      \hspace #-1 \small\italic "toujours sans relantir"
    }
  %125
  \repeat unfold 4 {
  | <ees' g>4( g,)_\laissezVibrer r
  }
  | <g'' g'>2.(^\markup {
      \hspace #-1 \small\italic "toujours sans relantir"
    }
  %130
  | <f f'>~)
  | q~
  | q
  | <ees ees'>~
  | q~
  %135
  | q~
  | q8 r r2
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
  | s2.
  | r4 <des e!> q8 r
  %45
  | s2 <c f>8 s
  | s2 <bes ees>8 s
  | s4 <aes g'>8 r <aes f'> r
  | \tieNeutral <g bes ees>4~^> q8 r r4
  | g,4\rest <g b!> ees'
  %50
  | a,4\rest <b! ees> q
  | g4\rest <g c>2
  | g4\rest <g c> q
  | g4\rest <g b> ees'
  | g,4\rest <b ees> q
  %55
  | f4\rest <g c>2
  | c4\rest <c g'>2
  | b4\rest <c e>2
  | b4\rest <c e>2
  | b4\rest <a e'>2
  %60
  | s2.
  | b4\rest <d f>4 q
  | b4\rest <d f>4 q
  | <c fis> q q
  | <b f'!>2_~ q8 s
  %65
  | s2.*11
  %76
  | <c e>4 q q
  | c2.
  | s
  | <c e>4 q q_~
  %80
  | c2.
  | s
  | g'
  | s
  | g
  %85
  | s2.*4
  | \stemDown a,4\rest <g ees'> s
  %90
  | a\rest <bes ees> q
  | g\rest <g c>2
  | c4\rest <c ees g> q
  | b\rest <c e!> <e gis>
  | c\rest <c e!> <e gis>
  %95
  | s a, <a e'>
  | d\rest <e a> q
  | <c ees aes> q <bes' ees>
  | <f bes> q q
  | <c ees aes> q <bes' ees>
  %100
  | <f bes>2.
  | d4\rest g <g bes>
  | d4\rest <d f> q8 s
  | s4 ees2
  | c4\rest <des e>4 q8 s
  %105
  | s2 <c f>8 s
  | s2 ees8 s
  | s4 d8 s d s
  | a4\rest <g bes ees> q8 b\rest
  | s2.
  %110
  | b'4\rest <d f> q8 b\rest
  | s2.
  | a4\rest <des e!>4 q8 s
  | s2 <c f>8 r
  | s2 <bes ees>8 r
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
  | s2.*16
  %49
  | b,!4 b b
  | g g g
  | c c c
  | ees ees ees
  | b b b
  | g g g
  %55
  | c^> c c
  | ees^> ees ees
  | c c c
  | gis^> gis gis
  | c c c
  %60
  | c' c c
  | aes2 g4
  | c2 b4
  | d,2 4
  | s2.
    \stemDown
  %65
  \repeat unfold 2 {
  | <c' e g>4. <c e>8 q4
  | \stemUp q2.~
  | q8 c\rest c4\rest c\rest
  | c\rest fis,^> g^>
  | a^> b^> c^>
  }
  %75
  \repeat unfold 2 {
  | \tieDown\stemUp g2 fis4~
  | \stemDown fis!2.~
  | fis!
  }
  | s2.*16
  %97
  | \stemUp bes4 bes bes
  | <ees aes>2.
  | bes
  | <d aes'>

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
  | <c,, c'>8 r <g'' c ees>4 <c ees g>8 r
  | <g,, g'>8 r <g'' bes des>4 <bes des e>8 r
  %45
  | <aes,, aes'>8 r <aes'' c f>4 q8 r
  | <bes,, bes'>8 r <bes'' ees g>4 <bes ees>8 r
  | <bes,, bes'>8 r <bes'' d>8 r q r
  | <ees,, ees'>4_> <ees, ees'>8_> r r4
  | \stemDown b'!8_\markup { \hspace #-2 \small\italic "quasi pizz." } b\rest b4\rest b\rest
  %50
  | g8 g\rest g4\rest g\rest
  | c8 c\rest c4\rest c\rest
  | ees8 c\rest c4\rest c\rest
  | b!8 b\rest b4\rest b\rest
  | g8 b\rest b4\rest b\rest
  %55
  | c8 c\rest c4\rest c\rest
  | ees8 c\rest c4\rest c\rest
    \bar "||"
  | \key c \major
    c8 c\rest c4\rest c\rest
  | gis8 g\rest g4\rest g\rest
  | c8 c\rest c4\rest c\rest
  %60
  | c'8 b\rest b4\rest b\rest
  | g2.~
  | g
  | d
  | \stemNeutral\tieNeutral <g, g'>2~ q8 r
    \stemDown
  %65
  \repeat unfold 2 {
  | s2.
  | g'4\rest <c, c'>_>( <g g'>_>)
  | \tieDown <c, c'>2._>~
  | q~
  | q
  }
  %75
  \repeat unfold 2 {
  | \stemDown f'4\rest_\markup { \hspace #1 \small\italic "m.g. marquée" } fis2
  | \stemUp b'2.
  | ais
  }
  %81
  | \stemDown <fis cis' fis>4_\markup \small\italic {
      \hspace #-1 \musicglyph #"pedal.Ped" "sur chaque mesure"
    }
    q q
  | <g c fis> q q
  \repeat unfold 2 {
  | <fis cis' fis>4 q q
  | <g c fis> q q
  }
  | <fis cis' fis>4 q q
  | <g c>2.
  | \stemNeutral <b,,! b'!>8_\markup \small\italic { \hspace #-2 "sec et ponctué" } r r4 r
  %90
  | <g g'>8 r r4 r
  | <c c'>8 r r4 r
  | <ees ees'>8 r r4 r
  | <c c'>8 r r4 r
  | <gis gis'>8 r r4 r
  %95
  | <c c'>8 r r4 r
  | c''8 r r2
  | \stemDown bes,2.~
  | bes
  | bes~
  %100
  | bes
    \bar "||"
  | \key ees \major
    \stemNeutral <ees, ees'>8 r <bes'' ees>4 q
  | <bes,, bes'>8 r <f'' bes>4 q8 r
  | <c, c'> r <g'' c>4 q
  | <g,, g'>8 r <g'' bes>4 q8 r
  %105
  | <aes,, aes'> r <f'' aes>4 q8 r
  | <bes,, bes'> r <g'' bes>4 q8 r
  | <bes,, bes'> r <aes'' bes> r q r
  | <ees, ees'> r ees'4 4
  | <ees, ees'>8 r <g' bes ees> r <bes ees g> r
  %110
  | <bes,, bes'>8 r <bes'' d>4 <d f>8 r
  | <c,, c'>8 r <g'' c ees>4 <c ees g>8 r
  | <g,, g'>8 r <g'' bes des>4 <bes des e>8 r
  | <aes,, aes'>8 r <aes'' c f>4 q8 r
  | <bes,, bes'>8 r <bes'' ees g>4 <bes ees>8 r
  %115
  | <bes,, bes'>8 r <bes'' d>8 r q r
  | <ees, ees'> r r4 <ees,, ees'>_>
  | ees' ees ees
  | ees ees <ees, ees'>_>
  | ees' ees ees
  %120
  \repeat unfold 2 {
  | aes_.( ees_. aes_.)
  | ees_.( aes_. ees_.)
  }
  | \set Staff.pedalSustainStyle = #'mixed
    <ees,\laissezVibrer ees'^\laissezVibrer>2.*2/3\sustainOn
    \clef treble
    <bes''' bes'!>4(
  %125
  | ees2) \clef bass bes4(
  | ees,2)
    \clef treble
    <bes' bes'>4(
  | ees2) \clef bass bes4(
  | ees,2.)
  | g'2.(
  %130
  | \tieUp f~)
  | f~
  | f
  | ees~
  | ees~
  %132
  | ees~
  | ees8 r r2
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
  | s2.*7
  %49
  | s2.-\markup { \dynamic mf \whiteout \small\italic "surtout sans ralentir" }
  | s2.*15
  %65
  | s2.\ff
  | s2.*4
  %70
  | s2.\ff
  | s2.*4
  %75
  | s2.\f
  | s2.*5
  | s2.-\markup { \dynamic p \small\italic "subito" }
  | s2.*7
  %89
  | s2.\mf
  | s2.*7
  %97
  | s2.\sf
  | s4 s\> s\!
  | s2.\p
  %100
  | s2.
  | s2.\f
  | s2.*7
  %109
  | s2.\ff
  | s2.*6
  %116
  | s2 s4\f
  | s2.*5
  | s4\> s2
  | s4\! s2
  %124
  | s2.\p
  | s2.*4
  | s2.\pp
  | s2.
  | s4\> s2
  | s2.
  | s4\! s2\ppp
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
    arranger = \markup \italic { "Paris Novembre 1941"}
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

%\markup { \column { \fill-line { "" \tiny\italic "Paris November 1941" } } }
