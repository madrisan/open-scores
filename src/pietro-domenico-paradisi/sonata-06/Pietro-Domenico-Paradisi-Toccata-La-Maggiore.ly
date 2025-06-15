\version "2.25.26"

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
        \line { \abs-fontsize #30 \bold "Pietro Domenico" }
        \null
        \line { \abs-fontsize #80 \bold "Paradisi" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Allegro (“Toccata”)" }
        \null\null
        \line { \abs-fontsize #20 \bold "dalla Sonata no. 6 in La Maggiore" }
        \null\null\null
        \line { \abs-fontsize #20 "P 893.06" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "Per clavicembalo, fortepiano, piano" }
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
          \abs-fontsize #10 "Based on: Alphonse Leduc, Paris"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key a \major
  \time 2/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Allegro vivace"
  \partial 4 a16 e cis' a
  %1
  | b e, d' b cis a e' cis
  | b e gis, b a e cis' a
  | b e, d' b cis a e' cis
  | b e gis, b e, a cis a
  %5
  | \stemUp fis b d b gis cis e cis
  | a gis' a fis \stemNeutral e a cis a
  | fis b d b cis a b gis
  | r a e cis a cis b d
  | cis e gis, b a cis b d
  %10
  | cis e gis, b a cis b d
  | cis e dis fis e gis fis e
  | <dis fis b>4 e8\( gis
  | a cis, dis fis
  | gis b, cis e
  %15
  | fis a, b dis
  | e16^.\) b' ais b gis b e, gis
  | cis, a' gis a fis a dis, fis
  | b, gis' fis gis e gis cis, e
  | a, fis' e fis dis fis b, dis
  %20
  | gis, b e b cis a fis dis'
  | e16 b gis e cis' a fis dis'
  | e16 b gis e cis' a fis dis'
  | e b cis a \stemUp gis e' fis, dis'
  | e b gis e \clef "bass" \stemNeutral cis a fis dis'
  %25
  | e16 b gis e cis' a fis dis'
  | e16 b gis e cis' a fis dis'
  | e16 b cis a gis e' fis, dis'
  | <gis, b e>4 \clef "treble"
    \bar "||"
    \break
    e'16 b gis' e
  | fis b, a' fis gis e b' gis
  %30
  | fis b dis, fis e b gis' e
  | fis b, a' fis gis e b' gis
  | fis b dis, fis b, e gis e
  | cis fis a fis dis gis b gis
  | e dis' e cis b e gis e
  %35
  | cis fis a fis gis e fis dis
  | r16 e b gis e gis fis a
  | gis b ais cis b d cis e
  | d fis d ais b d cis e
  | d fis eis gis fis a gis b
  %40
  | a cis a eis fis a fis cis
  | d fis b, d gis, b e d
  | cis e a, cis fis, a d cis
  | b d gis, b eis, gis cis b
  | a cis a eis fis8
    \once\shape #'(
      ((-0.5 . 3) (0 . 3) (0 . 2.5) (0 . 2.5))
      ((1 . 1) (0 . 1) (0 . 0) (-0.5 . 0.5))
    ) PhrasingSlur
    a\(
  %45
  | b[ d e gis,]
  | a[ cis d fis,]
  | gis[ b cis eis,]
  | fis16\) cis' a fis d' b gis eis
  | fis cis' a fis d' b gis eis
  %50
  | fis cis' a fis d' b gis eis
  | fis fis' d b a fis' gis, eis'
  | fis cis a fis \clef "bass" d b gis eis
  | fis cis' a fis d' b gis eis
  | fis cis' a fis d' b gis eis
  %55
  | fis fis' d b a fis' gis, eis'
  | <a, cis fis>4
    \clef "treble" a'16 e cis' a
  | b e, d' b cis a e' cis
  | b e gis, b a e cis' a
  | b e, d' b cis a e' cis
  %60
  | b e gis, b a cis e g
  | fis cis d gis,! a cis e g
  | fis cis d ais b dis fis a!
  | g dis e ais, b dis fis a
  | gis e' dis e cis e a, cis
  %65
  | fis, d' cis d b d gis, b
  | e, cis' b cis a cis fis, a
  | d, b' a b gis b e, gis
  | cis,4 a8 cis
  | d fis, gis b
  %70
  | cis e, fis a
  | b d, e gis
  | r16 a cis e fis d b gis'
  | a e cis a fis' d b gis'
  | a e cis a fis' d b gis'
  %75
  | a e fis d cis a' b, gis'
  | a e cis a fis d b gis'
  | a e cis a fis' d b gis'
  | a e cis a fis' d b gis'
  | \once\override Staff.TextScript.extra-offset = #'(0 . -0.4)
    a_\markup { "rall." } e fis d cis a' b, gis'
  %80
  | <cis, e a>4\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s2*3
  | s4 e_>
  %5
  | fis_> gis_>
  | a_> s
  | s2*16
  %24
  | s4 gis8 fis
  | s2*8
  %32
  | s4 b,
  | cis dis
  | e s
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | s2*3
  | e8 d cis a
  %5
  | d b e cis
  | fis4 s
  | s2*25
  %32
  | s4 gis^>
  | a^> b^>
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown\phrasingSlurDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 4 r8
    \once\shape #'((0 . 0) (0 . 0) (0 . 0) (5 . 1)) PhrasingSlur
    a\(
  %1
  | gis e a a,
  | e' d cis a'
  | gis e a a,
  | e'4\)
    \once\shape #'((0 . -2) (0 . -2) (0 . -2) (0 . -1.5)) PhrasingSlur
    cis\(
  %5
  | d e\stemNeutral
  | fis8 d  cis a
  | d b e e,
  | a_.\) a'4\( gis8
  | a b cis gis
  %10
  | a b cis gis
  | a fis gis ais
  | \clef "treble"
    b16_.\) b'\( ais b gis b e, gis
  | cis, a' gis a fis a dis, fis
  | b, gis' fis gis e gis cis, e
  %15
  | a, fis' e fis dis fis b, dis
  | gis,4\)
    \once\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1.5)) PhrasingSlur
    e'8\( gis
  | a cis, dis fis
  | gis b, cis e
  | \clef "bass"
    fis a, b dis
  %20
  | e gis,\)
    \once\shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 0) (0 . 0) (0 . -1) (0 . -2))
    ) PhrasingSlur
    a\( b
  | gis cis a b
  | gis cis a b
  | gis a b b,
  | e, e'\) a,\( b
  %25
  | gis cis a b
  | gis cis a b
  | gis a b b,
  | <e, e'>4\)
    \bar "||"
    \break
    r8 e''\(
  | dis b e e,
  %30
  | b' a gis e'
  | dis b e e,
  | b' a'\) gis\( e
  | a fis b gis
  | cis a gis e
  %35
  | a fis b b,
  | e,_.\)
    \once\shape #'(
      ((0 . -3) (0 . -2) (0 . 0) (0 . 0))
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
    ) PhrasingSlur
    e'4^>\( dis8
  | e cis d ais
  | b_.\)
    \once\shape #'((0 . -1) (0 . -1) (0 . 0) (0 . 0)) PhrasingSlur
    b'4^>\( ais8
  | b gis a eis
  %40
  | fis4.\) a8\(
  | b d e gis,
  | a cis d fis,
  | gis b cis eis,
  | fis cis'\) a16^>\( cis fis e
  %45
  | d fis b, d gis,^> b e d
  | cis e a, cis fis,^> a d cis
  | b d gis, b eis,^> gis cis b
  | a8 fis\) b\( cis
  | a d b cis
  %50
  | a d b cis
  | a b cis cis,
  | fis, fis'\) b,\( cis
  | a d b cis
  | a d b cis
  %55
  | a b cis cis,
  | fis16\) fis'\( e! d cis8 a'
  | gis e a a,
  | e' d cis a'
  | gis e a a,
  %60
  | e'\)
    \once\shape #'((0 . -2) (0 . -2) (0 . -1) (0 . 0)) PhrasingSlur
    d'\( cis a
  | d^. fis^. cis^. a^.
  | d^. fis^. dis^. b^.
  | \clef "treble"
    e gis! dis b
  | \clef "bass"
    <e, e'>4\) a8^.\( cis^.
  %65
  | d^. fis,^. gis^. b^.
  | cis^. e,^. fis^. a^.
  | b^. d,^. e^. gis^.
  | a16_.\) e'\( dis e cis e a, cis
  | fis, d' cis d b d gis, b
  %70
  | e, cis' b cis a cis fis, a
  | d, b' a b gis b e, gis
  | cis,8 a'\)
    \once\shape #'(
      ((0 . -1.5) (0 . -1.5) (0 . -2) (0 . -2))
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
    ) PhrasingSlur
    d\( e
  | cis fis d e
  | cis fis d e
  %75
  | cis d e e,
  | a, a'\) d,\( e
  | cis fis d e
  | cis fis d e
  | cis d e <e, e'>
  %80
  | <a, a'>4\)^\fermata
    \fine
}

dynamics = {
  %\override Dynamics.Hairpin.height = #0.5
  \partial 4 { s4\p }
  %1
  | s2*3
  | s4 s16 s8.-\markup { \hspace #0.4 "cresc." }
  | s2
  %6
  | s4 s4\f
  | s2
  | s8 s\sf s4
  | s2
  %10
  | s4-\markup { "dim." } s
  | s8\< s4.
  | s8\!\mf s4.
  | s2*2
  %15
  | s8 s-\markup { "dim." } s4
  | s16 s\p s4.
  | s2*2
  | s4 s-\markup { "dim." }
  %20
  | s4 s\p
  | s8 s-\markup { "cresc." } s4
  | s2
  | s8-\markup { "dim." } s4.
  | s4 s\mf
  %25
  | s2*2
  | s8-\markup { "cresc." } s4.
  | s4_>
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    s-\markup { \normalsize \dynamic p }
  | s2*5
  %34
  | s4_> s\f
  | s2*2
  | s32 s16.\mf s4.
  | s2*2
  %40
  | s4\> s
  | s\!\p s
  | s2
  | s4 s16 s-\markup { "cresc." } s8
  | s4 s\f
  %45
  | s2*3
  | s4 s\mf
  | s s\p
  %50
  | s s\mf
  | s\< s
  | s8\!\> s16 s\! s4\mf
  | s s\p
  | s s\mf
  %55
  | s\< s
  | s\!\> a16\!\p s8.
  | s2*5
  %62
  | s4 s16 s-\markup { "cresc." } s8
  | s2
  | s4\f s
  | s2*2
  %67
  | s16 s-\markup { "cresc." } s4.
  | s32 s16.\ff s4.
  | s2
  | s8
    \once\override Staff.TextScript.extra-offset = #'(0 . 1)
    s-\markup { "dim." } s4
  | s2
  | s32 s16.\f s4.
  | s2
    s8 s16 s-\markup { "dim." } s4
  | s2
  | s4 s\p
  | s2*2
  | s4\< s
  | s\!\f
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
    >>
    \context Dynamics = "dynamics" \dynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = "Pietro Domenico Paradisi"
    opus = "P 893.06"
    title = \markup { "Toccata" }
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
    \tempo 4 = 108
  }
}
