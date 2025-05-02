\version "2.25.25"

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
        \line { \abs-fontsize #30 \bold "Franz" }
        \null
        \line { \abs-fontsize #80 \bold "Liszt" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "La lugubre gondola" }
        \null\null
        \line { \abs-fontsize #20 "S.200/2" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For Piano" }
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
        \fill-line {
          \abs-fontsize #10 "Based on Breitkopf Härtel edition, Leipzig 1927"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key c \major
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \tempo "Andante mesto, non troppo lento" 4 = 88
    r4 \clef bass
    \once\shape #'((0 . 2) (0 . -7) (0 . -7) (0 . 1)) PhrasingSlur
    fis,\( ees' a,~
  | a fis ees' a,~
  | a fis ees'2
  | a, fis\)
  %5
  | r4
    \once\shape #'((0 . 1) (0 . -1) (0 . -3) (0 . 0)) PhrasingSlur
    a^\markup { "recitando" }\(
    fis'4. ees8
  | d4 c2\) c4~
  | c c2\( des4
  | c b2 ais4
  | cis2 b4\) r\fermata
  %10
  | r4 f d' aes~
  | aes f d' aes~
  | aes f d'2
  | aes f
    \clef treble
  | \stemNeutral \phrasingSlurNeutral
    r4 b\( aes'4. f8
  %15
  | ees4 d2\) d4~
  | d d2\( ees4
  | d des2 c4
  | ees2 des4\) r
    \bar "||"
    \break
  | \key aes \major
  | r4 s2.
  | s1*3
  %23
  | r4^\markup {
      "recitando"
    }
    des_\markup {
      \whiteout "sempre legato"
    }
    bes'4. g8
  | f4 e2 des4
  | c bes g'4. e8
  | des4 c2 bes4
  | aes g e'4. des8
  | c4 b bes ees_>~
  | ees des c b
  %30
  | bes a aes des
  | g,2. aes4
  | a2 bes
  | r a
  | bes b
  %35
  | c des~
  | des4 b c aes'
  | g2.^> f4
  | e4 ees des b
  | c4.\( des16 ees des8\) r des4_>~
  %40
  | des b c bes'~
  | bes aes g f
  | e ees des4. f8
  | \stemUp c'2.^\markup {
      \hspace #3 "piangendo"
    }
    b4
  | bes a bes b
  %45
  | d4\rest c2^> b4
  | bes a bes b
  | \stemNeutral\tieNeutral
    r4 aes'~\( aes8 f e ees
  | d des c b aes f e ees
  | d4 des c b\)
  %50
  | r2 aes\(
  | g4 aes a ais
    \bar "||"
    \break
  | \key e \minor
    b2 c^~\)
  | c4 ais b g'
  | fis2.^> e4
  %55
  | dis d c ais
  | b4.\( c16 d c8\) r c4~_>
  | c4 ais b a'~_>
  | a g fis e
  | dis d c4. e8
  %60
  | \stemUp
    b'2.^^ ais4
  | a gis a ais
  | r4 b2^> ais4
  | a gis a ais
  | \stemNeutral\tieNeutral
    r4 g'~\( g8 e dis d
  %65
  | cis c b ais g e dis d
  | cis4 c b ais\)
  | r2 g\(
  | ais4 b bis cis\)
    \bar "||"
    \break
  | \tempo "Un poco meno lento" 4 = 104
    \key b \minor
    <ais cis fis ais>1~\arpeggio
  %70
  | <a cis fis a>\arpeggio
  | <ais cis fis ais>~\arpeggio
  | <a cis fis a>2.\arpeggio <cis cis'>4
  | <dis fis b dis>1~\arpeggio
  | <d fis b d>
  %75
  | <dis fis b dis>1~\arpeggio
  | <d fis b d>2. <fis fis'>4
  | <ais cis fis ais>1~\arpeggio
  | <a cis fis a>
  | <ais cis fis ais>1~\arpeggio
  %80
  | <a cis fis a>2. <cis cis'>4
  \break
  | <dis fis b dis>1~\arpeggio
  | <d fis b d>\arpeggio
  | <dis fis b dis>1~\arpeggio
  | q
  %85
  | r2 b,\(^\markup { "espressivo" }
  | fis'2. dis4
  | cis2 b
  | ais <a cis fis>\)
  | <gis b e gis>1~\arpeggio
  %90
  | <g b e g>
  | <gis b e gis>1~\arpeggio
  | <g b e g>2. <b b'>4
  | <cis e a cis>1~\arpeggio
  | <c e a c>
  %95
  | <cis e a cis>1~\arpeggio
  | <c e a c>2. <e e'>4
  \break
  | <gis b e gis>1~\arpeggio
  | <g b e g>
  | <gis b e gis>1~\arpeggio
  %100
  | <g b e g>2. <b b'>4
  \break
  | <cis e a cis>1~\arpeggio
  | <c e a c>
  | <cis e a cis>1~\arpeggio
  | q
    \break
  %105
  | r2 a,\(^\markup { "espressivo" }
  | e'2. cis4
  | b2 a
  | gis\) g~
    \bar "||"
  | \key aes \major
    g4 <c c'> <des des'>2^>~
  %110
  | q4 <b b'>_\( <c c'> <aes' aes'>
  | <g g'>2.\) <f f'>4
  | <e e'> <ees ees'> <des des'> <b b'>
  | <c c'>4. <des des'>16 <ees ees'> <des des'>8 r q4~
  | q <b b'> <c c'> <bes' bes'>~
  %115
  | \stemUp
    q8[ <aes aes'> <g g'> <aes aes'> <bes bes'> <aes aes'> <g g'> <f f'>]
  | <e e'>[ <f f'> <g g'> <f f'> <ees ees'> <des des'> <f f'> <aes aes'>]
  | <c c'>2.^^ <b b'>4
  | <bes bes'> <a a'> <bes bes'> <b b'>
  | r4 <c c'>2^^ <b b'>4
  %120
  | <bes bes'> <a a'> <bes bes'> <b b'>
  | f'4\rest <aes! aes'!>^^~ q8 <f f'> <e e'> <ees ees'>
  | <d d'>[ <des des'> <c c'> <b b'> <aes aes'> <f f'> <e e'> <ees ees'>]
  | <d d'>[ <des des'> <c c'> <b b'> aes' f e ees]
  | d4 des c b
  %125
  | r4 aes f' b,~
  | b g e' b~
  | b
    \change Staff = "lower" \voiceThree
    fis d'2^\markup { \whiteout "diminuendo" }
  | b4 aes f des'
  \repeat unfold 2 {
  | bes aes! e des'
  }
  %131
  | <e, g des'>8\arpeggio a\rest
    \change Staff = "upper" \voiceOne
    des4^\markup { "recitando" } bes'4. g8
  | f4 e2 des4
  | c bes g'4. e8
  | des4 c2 bes4
  %135
  | aes g e'4. des8
  | c4 b bes ees_>~
  \break
  | ees des c b^\markup { "un poco ritenuto" }
  | bes a aes des
  | aes2 g
    \clef bass
    \bar "||"
  %140
  | \key c \major
    s1*4
  | s2 g'4\rest g~^\markup { "accentato" }
  %145
  | g fis2 f4~
  | f e2 dis4~
  | dis e2 f4
  | f\rest fis g2~
  | g4 ges f2
  %150
  | e4\rest e f2~
  | f4 e dis2
  \repeat unfold 2 {
  | \stemNeutral
    r4 b\( dis g,!
  | gis2 b\)
  }
  %156
  | r2 c\(
  | b ais
  | a1
  | gis2\) r
  | r2 cis4 c
  | b2 ais
  | a1~
  | a2 gis^\markup { \hspace #-3 "ritenuto" }
  | g1~\(
  | g4 a2 b4
  | cis2 dis
  | g,1
  | gis\)\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  | s1*42
  | d4\rest des8[ f des f des f]
  | des[ f des f des f des f]
  %45
  | s4 des8[ f des f des f]
  | des[ f des f des f des f]
  | s1*13
  %60
  | c4\rest c8[ e c^\markup { "piangendo" } e c e]
  | c[ e c e c e c e]
  | s4 c8[ e c e c e]
  | c[ e c e c e c e]
  | s1*76
  %140
  | r2 <ees, g c>
  | <d fis b> <des f bes>
  | <c e a> <b dis gis>
  | <c e a> <des f bes>
  | <d fis b> <g c>
  %145

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*18
  | s4 e\( des' g,~
  %20
  | g e des' g,~
  | g e des'2
  | g, e\)
  | s1*86
  %109
  \repeat unfold 2 {
  | r4 <aes, e' aes>8[ <c e aes> q <des e aes> q <c e aes>]
  }
  | r4 <aes f' aes>8[ <c f aes> q <des f aes> q <c f aes>]
  | <aes f' aes>8[ <c f aes> q <des f aes> q <c f aes> <aes f' aes>] r
  \repeat unfold 2 {
  | r4 <aes e' aes>8[ <c e aes> q <des e aes> q <c e aes>]
  }
  %115
  | r4 <aes f' aes>8[ <c f aes> q <des f aes> q <c f aes>]
  | <aes f' aes>8[ <c f aes> q <des f aes> q <f aes> q] r
  | r4 <f aes des>8[ q q q q q]
  | <f aes des>[ q <f a des> q <f bes des> q <f aes des> q]
  | s4 <f aes des f>8[ q q q q q]
  %120
  | <f aes des f>[ q <f a des f> q <f bes des f> q <f aes des f> q]
  | \change Staff = "upper" \voiceTwo
    s8 g'\rest aes4~ aes8[ f e ees]
  | d[ des c b
    \change Staff = "lower" \voiceThree
    aes f e ees]
  | d[ des c b aes' f e ees]
  | d4 des c b

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieNeutral\phrasingSlurUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | r4
    \once\shape #'((0 . 2) (0 . -7) (0 . -7) (0 . 1)) PhrasingSlur
    fis,\( ees' a,~
  | a fis ees' a,~
  | a fis ees'2
  | a, fis\)
  %5
  | R1
  | r2 <fis ees' a>4\arpeggio^! r
  | <f d' aes'>4\arpeggio^! r <f des' aes'>4\arpeggio^! r
  | <f d' aes'>\arpeggio^! r r2
  | R1\fermata
  %10
  | r4 f d' aes~
  | aes f d' aes~
  | aes f d'2
  | aes f
  | R1
  %15
  | r2 <aes f' b>4\arpeggio r
  | <g e' bes'>4\arpeggio r <g ees' bes'>4\arpeggio r
  | <g e' bes'>4\arpeggio r4 r2
  | R1
    \bar "||"
  | \key aes \major
    r4 e des' g,~
  %20
  | g e des' g,~
  | g e des'2
  | g, e
  | R1*12
  %35
  \repeat unfold 2 {
  | e8 c' aes' des,~ des c aes' c,
  }
  \repeat unfold 2 {
  | f, c' aes' des,~ des c aes' c,
  }
  \repeat unfold 2 {
  | e, c' aes' des,~ des c aes' c,
  }
  %41
  | f, c' aes' des,~ des c aes' c,
  | f, c' aes' des,~ des e f aes
  | f,4 \stemUp f'8[ aes f aes f aes]
  | f[ aes f a f bes f aes]
  %45
  | \once\stemDown f,4 f'8[ aes f aes f aes]
  | f[ aes f a f bes f aes]
  |  R1*5
    \bar "||"
  %52
  | \key e \minor
    \stemDown
    \repeat unfold 2 {
      dis,,8 b' g' c,~ c b g' b,
    }
  \repeat unfold 2 {
  | e, b' g' c,~ c b g' b,
  }
  %55
  \repeat unfold 2 {
  | dis, b' g' c,~ c b g' b,
  }
  | e, b' g' c,~ c b g' b,
  | e, b' g' c,~ c dis e g
  %60
  | \stemDown e,4 \stemUp e'8[ g e g e g]
  | e[ g e gis e a e g]
  | \once\stemDown e,4 e'8[ g e g e g]
  | e[ g e gis e a e g]
  | R1*5
    \bar "||"
  %69
  | \key b \minor
    \stemDown\tieDown
    \repeat unfold 7 {
      cis,,8 fis cis'
      \once\override Tie.extra-offset = #'(0 . 0.1)
      fis^~ fis cis fis, cis
    }
  %76
  | cis fis cis' fis~ fis cis fis, cis~
  | cis[ cis'] fis[ cis' fis cis fis,] cis[
  \repeat unfold 3 {
  | \override Beam.damping = #+inf.0
    cis, cis'] fis[ cis' fis cis fis,] cis[
  }
  %81
  \revert Beam.damping
  \repeat unfold 3 {
  | cis, cis'] fis[ b fis' b, fis] cis[
  }
  | cis, cis'] fis[ b dis b fis] cis
  \repeat unfold 3 {
  | cis,[ fis b dis^~] dis[ b fis cis~]
  }
  %88
  | cis[ fis b dis^~] dis[ b fis cis]
  | b[ e b' e^~] e[ b e, b~]
  \repeat unfold 7 {
  | b[ e b' e^~] e[ b e, b~]
  }
  | b[ b'] e[ b' e b e,] b[
  %97
  \repeat unfold 3 {
  | \override Beam.damping = #+inf.0
    b, b'] e[ b' e b e,] b[
  }
  %101
  \repeat unfold 3 {
  | b, b'] e[ a e' a, e] b[
  }
  | \revert Beam.damping
    b, b'] e[ a cis a e] b[
  \repeat unfold 3 {
  | b, e a cis^~] cis a e b~
  }
  | b e a cis^~] cis a e b
    \bar "||"
  \break
  %109
  | \key aes \major
  \repeat unfold 2 {
    <e, e'>4 s2.
  | q4 s2.
  | <f f'>4 s2.
  | s1
  }
  %117
  \repeat unfold 2 {
  | <f f'>4 s2.
  | s1
  }
  %121
  \break
  | <f'' aes des f>8 s4. s2
  | s1*3
  %125
  | r4 aes, f' b,~
  | b g e' b~
  | b fis d'2
  | b4 a f des'
  | bes aes e des'
  %130
  | bes aes e des'
  | <e, bes' des>8\arpeggio a8\rest r4 r2
  | R1*8
    \bar "||"
  %140
  | \key c \major
    \stemNeutral
    r2 <ees g c>
  | <d fis b> <des f bes>
  | <c e a> <b dis gis>
  | <c e a> <des f bes>
  | <d fis b> <ees g c ees>\arpeggio
  %145
  | <d fis b d>\arpeggio <des f bes des>
  | <c e a c>\arpeggio <b dis gis b>\arpeggio
  | <c e a c>\arpeggio <des f bes des>\arpeggio
  | <d fis b d>1
  | <des f bes des>
  %150
  | <c e a c>
  | <b dis gis b>
  | R1*16
  | R1\fermata
    \fine
}

forceBreaks = {
  % page 1
  %\repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 7 { s1\noBreak } s1\pageBreak
  % page 2
  %\repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 6 { s1\noBreak } s1\pageBreak
  % page 2
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  %\repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 3
  %\repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Franz Liszt"
    opus = "S.200/2"
    title = \markup { "La lugubre gondola" }
    subtitle = ##f
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
    \tempo 4 = 100
  }
}
