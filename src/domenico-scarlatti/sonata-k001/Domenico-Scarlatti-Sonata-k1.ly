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
        \line { \abs-fontsize #30 \bold "Domenico" }
        \null
        \line { \abs-fontsize #75 \bold "Scarlatti" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Sonata in D minor" }
        \null\null\null
        \line { \abs-fontsize #35 \bold "K. 1" }
        \null\null\null\null
        \line \abs-fontsize #15 { \italic "from " }
        \null
        \line \abs-fontsize #22 { \bold\italic "“Essercizi per gravicembalo”" }
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
            "Based on the score published by Heugel & C" \super "ie"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key d \minor
  \time 4/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-2.4
  \override Hairpin.Y-offset = #-2
  \stemUp\slurNeutral
  \tempo \markup {
    \bold\concat { "Allegro" }
  }
  %1
  \repeat volta 2 {
  | s2 d4. e8
  | f16 d g e  a f e d  cis8 a' a4~\trill
  | a16 g f e  d c bes a  bes8 g'  g4~\trill
  | g16 f e d  c bes a g  a8 f' f4~\trill
  %5
  | f16 e d c  bes a g f  g8 e' e4~\trill
  | e16 d cis b!  a g f e  f d g e  a f e d
  | cis \bottom a \top d \bottom b!
    \top e \bottom cis \top f d
    g e a f  b! g cis a
  | d16 b e cis  f d g e  a4  g\trill
  | a g\trill a g\trill
  %10
  | f16 d g e  a f e d  cis a d b!  e g, f e
  | f d g e  a f e d  cis \bottom a \top d \bottom b  \top e \bottom cis \top f d
  | g16 g f e  f8[ g16.\trill f64 g]  a16 e f d  e cis f8
  | e d cis16 \bottom e, cis e s2
  }
  \pageBreak
  \repeat volta 2 {
  | \stemDown \top a'16 b cis d  e cis f d  e4. \stemUp a,8
  %15
  | b16 g cis a  d b e cis  fis d g e  a c,! bes a
  | bes g c a  d bes a g  fis d g e  \stemDown a \bottom \stemUp c, bes a
  | bes g c a  \top d \bottom bes \top e \bottom c  \top f d g e  a f bes g
  | c4 bes\trill c bes\trill
  | c8[ a'] bes,[ g']  a,16 f c' a  f' c a' f
  %20
  | e g c, e  g, c bes a  bes g d' bes  g' d bes' g
  | f a d, f  a, d c b  c a e' c  a' e c' a
  | gis b e, gis  b, d cis b  cis8 a'  a4~\trill
  | a16 g f e  d c bes a  bes8 g'  g4~\trill
  | g16 f e d  c bes a g  a8 f' f4~\trill
  %25
  | f16 e d c  bes a g f  g8 e'  e4~\trill
  | e16 d cis b  a g f e  \once\override NoteColumn.force-hshift = #-0.3 d'4 s
  | \once\override NoteColumn.force-hshift = #-0.3 d s
    \once\override NoteColumn.force-hshift = #-0.3 d s
  | a8[ f'] g,[ e'] a,[ f'] g,[ e']
  | a,[ f'] g,[ e']  d8 s4.
  %30
  | s2 d16 a bes g  a f bes8
  | a g f16 s8. s2
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | d'16 e f g  a a, cis a  d, e f g  a \bottom\stemUp a, cis a
  | \top\stemDown d8 e f g a a a a
  | <f a> q q f \bottom g, \top <g' bes> q q
  | <e g> q q e \bottom f, \top <f' a> q q
  %5
  | <d f> q q d \bottom e, \top <e' g> q q
  | \autoBeamOff
    \crossStaff {
      e e e s
      d s4.
    }
    \autoBeamOn
  | s2 e8[ f] g[ a]
  | b[ cis]  d e  f16 d bes g  e' cis a cis
  | f d bes g  e' cis a cis  f d bes g  e' cis a cis
  %10
  | d s8. s4  a16 s8. s4
  | s1*3
  | \bottom s2
    \once\override Beam.positions = #'(-1.5 . -0.5)
    a,16 b cis \top d  e cis f d
  %15
  | g8[ a] b![ cis!] d16 s8. s4
  | g,16 s8. s4 d16 s8. s4
  | s1*2
  | s8 f' s e s2
  | s1*6
  %26
  | \autoBeamOff
    \crossStaff {
      s8 e, e s
    }
    \autoBeamOn
    \stemUp
    f16 d g e  a f bes g
  | \repeat unfold 2 { f16 d g e  a f bes g }
  | \stemDown s8 d' s cis s d s cis
  | s8 d s cis  f,16 d g e  a f b g
  | cis a d e  f d e cis  s2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s1*28
  %29
  | s2 d8 s4.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | s1*5
  %6
  | a8 a a a  d, d e f
  | a[ b!]
    \once\override Beam.positions = #'(-0.5 . 0)
    \stemDown cis[ \top d] s2
  | s1*2
  %10
  | \stemDown
    \once\override NoteColumn.force-hshift = #0.3
    d8 e f g  \bottom a, b! cis a
  | d, e f g  a[ b]
    \once\override Beam.positions = #'(-0.5 . 0)
    cis[ \top d]
  | \bottom e,16 \top e' d cis d8 \bottom bes \stemNeutral a,4 s8 \top d'16 \bottom b
  | cis a b gis  a s8. a,4^\trill r^\fermata
  }
  \repeat volta 2 {
  | s1
  %15
  | s2 \top\stemDown
    \once\override NoteColumn.force-hshift = #0.3
    d'8 e fis d
  | \bottom g, a bes c d, e fis d
  | g[ a] bes[ c] \top d[ e] f[ g]
  | a16 f d bes  g' e c e  a f d bes g' e c e
  | a16 f d bes  g' e c e  f8 \bottom\stemUp f,  f f,
  %20
  | c c' c \top\stemDown fis'  g8 \bottom\stemUp g,  g g,
  | d' d' d \top\stemDown gis  a8 \bottom\stemUp a,  a a,
  | e' e, e e  a \top\stemDown a''  a a
  | \bottom\stemUp f,, \top\stemDown <f'' a> q f
    \bottom\stemUp g,, \top\stemDown <g'' bes> q q
  | \bottom\stemUp e,, \top\stemDown <e'' g> q e
    \bottom\stemUp f,, \top\stemDown <f'' a> q q
  %25
  | \bottom\stemUp d,, \top\stemDown <d'' f> q d
    \bottom\stemUp e,, \top\stemDown <e'' g> q q
  | \bottom a,, a' a a  \top d[ e] f[ g]
  | d[ e] f[ g]  d[ e] f[ g]
  | f16 d \bottom bes g  \top e' cis \bottom a \top cis
    f16 d \bottom bes g  \top e' cis \bottom a \top cis
  | f16 d \bottom bes g  \top e' cis \bottom a \bottom cis
    d,8[ e]  f[ g]
  %30
  | a g a a, d4 s8 \top g'16 e
  | f d e cis  d \bottom\stemUp a f a d,4^\trill r^\fermata
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
    title = \markup { "Sonata in D minor" \italic "(K. 1)" }
    subtitle = #f
  }
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      %\override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
