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
        \line { \abs-fontsize #35 \bold "Sonata in D minor" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 141" }
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
            "Based on the score published by Alessandro Longo, Ricordi Milano, 1906-1908"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key d \minor
  \time 3/8
  \include "./global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral
  \tempo "Presto" 4. = 80
  \repeat volta 2 {
  %1
  | \repeat unfold 6 d16
  | \repeat unfold 6 f
  | \repeat unfold 6 e
  | \repeat unfold 6 d
  %5
  | \repeat unfold 6 e
  | \repeat unfold 6 a
  | d bes a g f e
  | f g a d, e cis
  | d bes a g f e
  %10
  | \repeat unfold 6 d
  | \repeat unfold 6 f
  | \repeat unfold 6 e
  | \repeat unfold 6 d
  | \repeat unfold 6 e
  %15
  | \repeat unfold 6 a
  | d bes a g f e
  | f g a d, e cis
  | d4.
  \repeat unfold 2 {
  | a''4.~
  | a16 e cis a g' e
  }
  | a4.
  | bes16 g d bes g bes
  %25
  | g'4.
  | a16 f c a f a
  | f'4.
  | g16 e cis g e g
  | e'4.
  %30
  | f16 d a f d f
  | f' e d c bes a
  | bes' a g f e d
  \repeat unfold 2 {
  | cis d d8.[\trill cis32 d]
  | e32 f g16 g8.[\trill f32 g]
  }
  | a16 e cis a e cis
  | a r r8 r
  | R1*3/8
  %40
  | \repeat unfold 6 e'16
  | \repeat unfold 6 f
  | \repeat unfold 6 gis
  | \repeat unfold 6 b
  | \repeat unfold 6 d
  %45
  | c b a gis a8
  | \repeat unfold 6 e'16
  | \repeat unfold 6 f
  | \repeat unfold 6 gis
  | \repeat unfold 6 b
  %50
  | \repeat unfold 6 d
  | c b a gis a8
  | R1*3/8\fermata
    \clef bass
  | r16 f,, a f c' a
  | ees' f, c' f, a f
  %55
  | ees' f, d' f, ees' f,
  | \stemUp f'4.~
  | f8 s4
  | s4.*2
  %60
  | g4.~
  | g8 s4
  | s4.*2
  | a4.
    \clef treble
  %65
  | dis,16 b fis' dis a' dis,
  | c' dis, b' dis, a' dis,
  | gis d! b' f d' gis,
  | f' gis, e' gis, d' gis,
  | cis g! e' bes g' cis,
  %70
  | bes' cis, a' cis, g' cis,
  | f e d c! b! a
  \repeat unfold 2 {
  | gis e a e b' e,
  | gis e a e fis e
  }
  %76
  | gis e a, e' a, e'
  | gis, e' a, e' f, d'
  | e, e' a, e' a, e'
  | gis, e' a, e' f, d'
  %80
  | e,8 e''16[ d c b]
  | a' g f e d c
  | b[ c32 d] c16[ b a gis]
  | a g! f e d c
  | b[ c32 d] c16[ b a gis]
  %85
  | a4.
  }
  \break
  \repeat volta 2 {
  \repeat unfold 6 {
  | \repeat unfold 6 e''16
  }
  \repeat unfold 4 {
  | \repeat unfold 6 f
  }
  %96
  | \repeat unfold 6 ees
  | \repeat unfold 6 d
  | \repeat unfold 6 ees
  \repeat unfold 4 {
  | \repeat unfold 6 d
  }
  | \repeat unfold 6 cis
  | \repeat unfold 6 d
  %105
  | \repeat unfold 6 e
  | \repeat unfold 6 f
  | \repeat unfold 6 g
  | \repeat unfold 6 a
  | bes a g f e d
  %110
  | cis b a g f e
  | f a g f e d
  | cis4.\prallprall
  | \repeat unfold 6 a16
  | \repeat unfold 6 bes
  %115
  | \repeat unfold 6 cis
  | \repeat unfold 6 e
  | \repeat unfold 6 g
  | f e d cis d8
  | \repeat unfold 6 a'16
  %120
  | \repeat unfold 6 bes
  | \repeat unfold 6 cis
  | \repeat unfold 6 e
  | \repeat unfold 6 g
  | f e d cis d8
  %125
  | R1*3/8\fermata
  \break
  | r16 bes, d bes f' d
  | aes' bes, f' bes, d bes
  | aes' bes, g' bes, aes' bes,
  | \stemUp bes'4.~
  %130
  | bes8 s4
  | bes16 c, g' c, e c
  | bes' c, a' c, bes' c,
  | c'4.~
  | c8 s4
  %135
  | c16 d, a' d, fis d
  | c' d, b' d, c' d,
  | d'4.
  | \stemNeutral gis,16 d b' f d' gis,
  | f' gis, e' gis, d' gis,
  %140
  | cis a e' bes g' cis,
  | bes' cis, a' cis, g' cis,
  | f d d' c bes a
  | bes a g f e d
  | c d d8.[^\trill c32 d]
  %145
  | e16 a, d a e' a,
  | cis a d a b a
  | cis a d a e' a,
  | cis a d a b a
  | cis a d, a' d, a'
  %150
  | cis, a' d, a' bes, g'
  | a, a' d, a' d, a'
  \repeat unfold 2 {
  | cis, a' d, a' bes, g'
  }
  | a,8 a''16[ g f e]
  %155
  | d' c bes a g f
  | e[ f32 g] f16[ e d cis]
  | d c bes a g f
  | e[ f32 g] f16[ e d cis]
  | d16 \clef bass c[ bes a g f]
  %160
  | e[ f32 g] f16[ e d cis]
  | d4.
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s4.*55
  %56
  | ees16 f, d' f, c' f,
  | b g b g d' g,
  | f' g, d' g, b g
  | f' g, e'! g, f' g,
  %60
  | f'16 g, e' g, d' g,
  | cis a cis a e' a,
  | g' a, e' a, cis a
  | g' a, fis' g, g' a,
  | g' a, fis' g, e' a,
  | s4.*64
  %129
  | aes'16 bes, g' bes, f' bes,
  | e! c e c g' c,
  | s4.*2
  | bes'16 c, a' c, g' c,
  | fis d fis d a' d,
  %135
  | s4.*2
  | c'16 d, b' d, a' d,
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | s4.*30
  %31
  | d4.
  \repeat unfold 5 {
  | g
  }
  | s4.*4
  %41
  | d,8 d' c
  | f8\rest d4~
  | d8 e4~
  | e4.
  %45
  | s4.*2
  | d8 d' c!
  | f8\rest d4~
  | d8 e4~
  | e4.
  %50
  | s4.*63
  %114
  | a,,,8 g' f
  | e8 g4~
  | g8 a4~
  | a4.
  | s4.*2
  %120
  | a8 g' f
  | e8 g4~
  | g8 a4~
  | a4.
  | s
  %125
  | s
  \repeat unfold 3 {
  | bes,,
  }
  | \repeat unfold 3 des,8
  %130
  \repeat unfold 3 {
  | c'4.
  }
  | \repeat unfold 3 ees,8
  \repeat unfold 3 {
  | d'4.
  }
  | \repeat unfold 3 f,8
  | \repeat unfold 3 e
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | <d f a d>8\arpeggio r r
  | q\arpeggio r r
  | <a' cis e a>\arpeggio r r
  | <bes cis d g>\arpeggio r r
  %5
  | <a cis e a>\arpeggio r r
  | <f a d>\arpeggio r r
  | <g bes d>\arpeggio r r
  | <a d f>4 <a e' g>8
  | d,4.
  %10
  | <d, f a d>8\arpeggio r r
  | q\arpeggio r r
  | <a' cis e a>\arpeggio r r
  | <bes d g>\arpeggio r r
  | <a cis e a>\arpeggio r r
  %15
  | <f a d>\arpeggio r r
  | <g bes d g>\arpeggio r r
  | <a d f>4 <a e' g>8
  | <d, d'>4.
  \repeat unfold 2 {
  | a'''16 f d a f d
  | a4.
  }
  | a''16 f d a f d
  | g,4.
  %25
  | g''16 e c g e c
  | f,4.
  | f''16 d bes f d bes
  | e,4.
  | e''16 cis a e cis a
  %30
  | d,4.
  | d'8 e f
  | g a bes
  \repeat unfold 4 {
  | a bes4
  }
  | a8 r r
  | r16 e cis a e cis
  | a4.
  %40
  | a''8 b cis
  | d,4.
  | b'4 a8
  | gis4 fis8
  | e8 fis gis
  %45
  | a,4.
  | a'8 b cis
    \clef treble
  | \stemDown d4.
  | b'4 a8
  | gis4 fis8
  %50
  | e8 fis gis
  | \stemNeutral a,4.
  | R1*3/8\fermata
    \clef bass
  \repeat unfold 3 {
  | f,8 f f
  }
  %56
  | \repeat unfold 3 aes
  \repeat unfold 3 {
  | \repeat unfold 3 g
  }
  %60
  | \repeat unfold 3 bes
  \repeat unfold 3 {
  | \repeat unfold 3 a
  }
  | \repeat unfold 3 c
  %65
  | \repeat unfold 3 b
  | \repeat unfold 3 <b a'>
  | e <e d'> q
  | \repeat unfold 3 q
  | a <a g'> q
  %70
  | \repeat unfold 3 q
  | <d f> e f
  | e, \clef treble c''[ d]
  | e \clef bass <c,,, c'>[ <d d'>]
  | <e e'> \clef treble c'''[ d]
  %75
  | e \clef bass <c,,, c'>[ <d d'>]
  | <e e'> \clef treble c'''[ d]
  | e \clef bass a,,,[ f]
  | e \clef treble c'''[ d]
  | e \clef bass a,,,[ f]
  %80
  | e e''[ gis,]
  | a b c
  | d e e,
  | a, b c
  | d e e,
  %85
  | a4.
  }
  \clef treble
  \repeat volta 2 {
  \repeat unfold 2 {
  | <a'' cis>8 q q
  | <g bes d> q q
  }
  %90
  | <g b c> q q
  | q q q
  | <f aes c> q q
  | <f g b d> q q
  | <aes c d> q q
  %95
  | <g b d> q q
  | <g c> q q
  | <fis c'> q q
  | <g c> q q
  | <fis c'> q q
  %100
  | <f! c'> <f b> <f a>
  | <e gis b> q q
  | <f a> q q
  | <e g a> q q
  | <d g bes!> q q
  %105
  | <cis g' a> q q
  | <d f a> q q
  | <bes e g> q q
    \clef bass
  | <f a d> q q
  | <g d'> a bes
  %110
  | a b cis
  | d bes g
  | a,4.
  | r4 a8
  | \stemDown a4.
  %115
  | e'4 d8
  | cis4 bes!8
  | a b cis
  | d4.
  | r4 a'8
  %120
  | a4.
  | e'4 d8
  | cis4 bes!8
  | a b cis
  | d,4.
  %125
  | R1*3/8\fermata
  \repeat unfold 3 {
  | \repeat unfold 3 bes,8
  }
  | s4.
  %130
  \repeat unfold 3 {
  | \repeat unfold 3 c8
  }
  | s4.
  \repeat unfold 3 {
  | \repeat unfold 3 d8
  }
  | s4.
  | s4.
  | \stemNeutral <e' b' d>8 q q
  %140
  | <a e' g!> q q
  | q q q
  | <d f> <e g> <f a>
  | <g, g'> <a g'> <bes g'>
  | a bes bes
  %145
  | a \clef treble f''[ g]
  | a \clef bass <f,,, f'>[ <g g'>]
  | <a a'> \clef treble f'''[ g]
  | a \clef bass <f,,, f'>[ <g g'>]
  | <a a'> \clef treble f'''[ g]
  %150
  | a \clef bass d,,,[ bes]
  | a \clef treble f'''[ g]
  | a \clef bass d,,,[ bes]
  | a d,[ bes]
  | a a'''[ a,]
  %155
  | d e f
  | g a a,
  | d, e f
  | g a a,
  | d, e f
  %160
  | g a a,
  | d4. \clef treble
  }
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
    title = \markup { "Sonata K. 141" }
    subtitle = \markup { \smallCaps "Toccata" }
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
    \tempo 4 = 100
  }
}
