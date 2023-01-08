\version "2.23.80"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  annotate-spacing = ##f
  bottom-margin = 10\mm
  first-page-number = 0
  indent = 0.0
  line-width = 16.8\cm
  print-all-headers = ##t
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  %system-system-spacing = #'((basic-distance . 2) (padding . 10))
  top-margin = 10\mm
%  markup-system-spacing.basic-distance = #10
%  last-bottom-spacing.padding = #2
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
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #28 \bold "Nun komm’ der Heiden Heiland" }
        \null
        \line { \abs-fontsize #18 "(Saviour of the nations, come)" }
        \null\null
        \line { \abs-fontsize #20 \bold "18 Chorale Preludes (No.9)" }
        \null\null
        \line { \abs-fontsize #20 "BWV 659" }
        \null\null\null\null
        \fill-line { \abs-fontsize #12 "Transcribed for Piano Solo by Davide Madrisan" }

        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10
          "Based on the score: Œuvres complètes pour orgue, Vol.2, Cah.4 (pp.46-47)"
        }
        \fill-line { \abs-fontsize #10 "Paris: A. Durand & Fils, 1920. Plate D. & F. 9448." }
        \null\null
      }
    }
  }
}

Global = {
  \key g \minor
  \time 4/4
  \include "./global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \tempo \markup { \bold "[Adagio]" }
  %1
  | R1
  | R1
  | R1
  | r4 g^\markup { "(corale in risalto)" } g fis8[ g16 a]
  %5
  | bes4~ bes16[ g \grace a16 g32 fis g16]
    c4~ c16[ a \grace bes16 a32 g a16]
  | d4~ d16[ g,32 a bes c d16] ees8. d16 c16[ bes32 a a16 bes32 c]
  | \appoggiatura g16 fis8[ e!16 d] g4~ g32[ a g fis! g16 c32 a] g8[ fis16.\prall g32]
  | g2 r
  | R1
  %10
  |   \override MultiMeasureRest.staff-position = #5
    R1
  | g8[ bes16 a] bes4\prall c~ c16[ bes a bes]
  | c16[ d ees8~] ees16[ c bes c] d[ ees f8~] f16[ d c d]
  | ees16[ f g8~] g16[ c, d ees] \appoggiatura bes16 a8[ g16 f] f'4~
  | f16[ g32 f ees f d16] ees4~ ees16[ a32 bes c16 ees,] d4~
  %15
  | d16[ g, g32\prall f g16] c32[ bes a16 bes32 a g16]
    f[ g32 a bes c d ees] f4~
  | f16[ g32 f ees d c bes] d8[ c16.\prall bes32] bes2
  | \override MultiMeasureRest.staff-position = #0
    R1
  | R1
  | bes8[ c32 bes a bes] c8[ d32 c bes c] d16[ bes a bes] \appoggiatura bes16  f'8.[ ees32 d]
  %20
  | c16[ d32 c b!16 c] d16[ ees32 d c16 d] ees16[ c b! c] \appoggiatura c16  g'8.[ f32 ees]
  | d16[ g32 a bes!16 f] ees16[( d) d( c)]
    c16[ fis32 g a16 ees] d16[( c) c( bes)]
  | bes[ g'16. f!32 ees d] c[ d c b! c8~] c16[ ees32 d c d ees16~] ees32[ c aes g aes8~]
  | aes16[ ees'32 d ees c b! c] c[ aes g aes aes g fis g] fis16[ a!32 c ees16 d] d4~
  | d32[ g fis e! d16. c32] bes8[( a32\prall g a16]) g2
  %25
  | \override MultiMeasureRest.staff-position = #4
    R1
  | R1
  | \override MultiMeasureRest.staff-position = #6
    R1
  | a'4\rest g, g\prall fis8[ g16 a]
  | bes4~ bes16[ g \grace a16 g32 fis g16]
    c4~ c16[ a \grace bes16 a32 g a16]
  %30
  | d4~ d16[ g,32 a bes c d16] ees8. d16 c16[ bes32 a a16 bes32 c]
  | \appoggiatura g16 fis8[ e!16 d] g4~
    g32[ a g fis! g16 c32 a] g8[ fis16.\prall g32]
  | g16[ g' f!8]~ f16[ ees32 d g f ees d]
    f[ ees d c bes'8~] bes32[ a bes c bes a g a]
  | g[ fis g a c,8~] c32[ ees d c d c bes a]
    bes16[ g'32 ees cis d g,16] bes8[( a32\prall g a16])
  | g1\fermata

  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \showStaffSwitch
  %1
  | \stemUp b'2\rest a4\rest d,
  | d c f4. ees16[ d]
  | ees2 \tieUp d
  | % in the original score: \stemDown\tieDown d4 c d2~
    \stemDown\tieDown d4 c d2
  %5
  | d4 b8\rest
    \bottom\stemUp\tieUp
    bes~ bes a16 g a4
  | \top\stemDown\tieDown
    a4\rest a8\rest g'~ g[ fis g ees]
  | d4 b8\rest bes ees4 d8[ c~]
  | c[ bes16 c] d8[ c16 bes] a4. \stemUp bes16[ c]
  | d8[ ees f g] c,4. d16[ ees]
  %10
  | f4. g16 f ees2
  | \once\override NoteColumn.force-hshift = #1 d4.
    \stemDown
    ees16 f g[ f ees d] c8 b\rest
  | e8\rest g f4~ f4 r8 bes
  | bes4 b8\rest g f4 s8 \stemUp aes
  | % in the original:
    % \shiftOn g4 g8\rest \stemDown g f4 f8\rest f
    \bottom\stemUp
    g,4
    \top\stemDown
    g8\rest \stemDown g'
    \stemUp \once\override NoteColumn.force-hshift = #0.4
    f4
    f8\rest \stemDown f
  %15
  | g8 c,\rest g' c,\rest c g\rest g\rest ees'
  | d[ g] f16[ d ees8~] ees[ d16 ees] f8[ ees16 d]
  | c4. d16 ees f2~
  | f8[ ees16 d] ees8[ c'] fis,[ g] a4~
  | a8 g f!4~
    f8[ ees \hideStaffSwitch \bottom\stemUp d \top\stemDown g]
  %20
  | \showStaffSwitch
    % a e\rest e\rest b'! c s e,\rest a
    a e\rest e\rest s s s e\rest a
  | bes4 a8\rest bes a4 g8\rest a
  | g4 f16\rest f[ g f] g8 f\rest f16\rest d[ ees d]
  | ees8 e\rest e\rest ees d[ fis! g a]
  | % d'[ g] r d~ c16 b! c16[( d) d( ees)]
  | d[ g,] d\rest d~ d8[ c16 b!] \stemUp\tieUp\slurUp c16[( d) d( ees)]
  %25
  | ees2~ ees8[ d16 c] d16[( ees) ees( f!)]
  | f2~ f16[ ees g( f)] f[( ees) ees( d)]
  | d[ aes' aes( g)] g[( f) f( ees)]
    ees8. f16 d8.^\prall g16
  | ees16[ f f( ees)]
    \stemDown\tieDown\slurDown
    ees[( d) d( c)] c[( bes) bes( a)]
    \bottom\stemUp\tieUp
    a8[ bes16 c]
  | fis,4 e'8\rest bes~ bes8[ a16 g] a4
  %30
  | \top\stemDown\tieDown
    f'4\rest f8\rest g~ g[ fis g ees]
  | d4 c8\rest bes ees4 d8 c
  | %b![ c d b] c[ d] c[ d16 bes]
    s8 c'[ d b] c[ d] c[ d16 bes]
  | a8[ g] fis[ a16 ees]
    << \\ d4 >> << \\ { d8. c16~ } >>
  | << {
      s16 b!8._~ \stemDown b!16[ b c8] b2
    } \\ {
      \mergeDifferentlyDottedOn
      c16[ b! f'! d] \stemUp ees4 d2
    } >>
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \showStaffSwitch
  %1
  | \top\stemDown\tieDown g'4\rest g g4 fis
  | bes4. a16[ g] a4 g~
  | g c2 bes8 a
  | \bottom\stemUp\tieUp g[ fis g a] bes[ a16 g] a4~
  %5
  | %a8[ g16 fis] g4 b4\rest c8\rest c~
    a8[ g16 fis] g4 s4 s8 c~
  | c8[ bes16 a] bes8[ d~]-\markup { \small "r.H" } d16
    c8-\markup { \hspace #0.4 \small "l.H" } bes16 a[ g c8]
  | a4 g8\rest g~ g
    \hideStaffSwitch \top\stemDown c \showStaffSwitch
    \bottom\stemUp a4-\markup { \hspace #2 \small "l.H" }
  | g2. f4~
  | f \top\stemDown\tieDown bes2 a4~
  %10
  | a8 b!16 c d4~ d8 c16 b c4~
  | c8[ bes16 c]
    \bottom\stemUp\tieUp d4 d8\rest g, a d\rest
  | % in the original:
    % e8\rest bes[ c a] bes8[ d16 c] d8[ f]
    e8\rest bes[ c a]
    \once\override Beam.positions = #'(6.5 . 7.5)
    bes8[
    \top\stemDown
    d'16 c]
    \bottom\stemUp d,8[ f]
  | % in the original:
    % bes,8[ ees16 d] c4~ c8[ bes16 a] bes[ c d8~]
    \once\override Beam.positions = #'(6.5 . 7.5)
    bes,8[
    \top\stemDown
    ees'16 d]
    \bottom\stemUp
    c,4~ c8[ bes16 a]
    \top\stemDown
    bes'[ c d,8_~]
  | % in the original:
    % d8[ c16 b!] c4~ c8[ bes16 a!] bes4~
    d8[ c'16 b!]
    \once\shape #'((0.5 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie
    c4_~ \shiftOff
    \once\override Beam.positions = #'(-3.5 . -4.5)
    c8[
    \bottom\stemUp
    bes,16 a!] bes4~
  %15
  | bes8 d\rest ees d\rest a b\rest b\rest a
  | bes4. a8 f4 bes~
  | bes a~ a8[ b!16 c] d[ c b a]
  | g4~ g8[ a16 bes!] c[ d] ees4 d16[ c]
  | bes8 ees4 d16[ c] bes4. bes8
  %20
  | f' f\rest f\rest
    \top\stemDown\stemDown
    \once\override NoteColumn.force-hshift = #0.3 <f b!> <g c>[ f]
    \bottom\stemUp ees,4  % moved an octava lower
  | d'8\rest d[ g f] ees[ d] d\rest d
  | d4 f16\rest d[ ees d] c8 c\rest d16\rest b![ c b]
  | c8 c\rest c\rest c16[ bes] a!8[ c]
    d16[(-\markup { \hspace #-2.2 \small "r.H" } c) c( bes)]
  | bes8[-\markup { \hspace #-2.2 \small "l.H" } g~] g[ fis] g2~
  %25
  | g8[ g16-\markup { \small "r.H" } fis] g[( a) a( bes)] bes2~
  | \top\stemDown\slurDown\tieDown
    bes8[ a16( g)] a[( b!) b( c)] c2~
  | c2~ c8.[ d16] b!8.[ a!32 b]
  | c8 g\rest \bottom\stemUp\tieUp a2.\rest
  | d8\rest d, g4 s4. c8~
  %30
  | c8[ bes16 a] bes8[ d~] d16[ c8 bes16] a[ g c bes]
  | a4 a8\rest g~ g[ c] a4
  | \top\stemDown
    <g b!>8 \bottom\stemDown a[ b! g~] g[ f] \stemUp ees[ d16 ees]
  | c8[ ees d fis] g4~ g8[ fis!]
  | g4_~ g8. fis16 g2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | g8[ a bes c] d[ ees d c]
  | bes[ d f ees] d[ c b! g]
  | c[ bes a g] fis[ d g f!]
  | ees[ d] ees4 d2~
  %5
  | d8[ d' ees d] e![ c f! e!]
  | fis[ d g g,] c[ d ees c]
  | d[ c bes ees] c[ a d d,]
  | g[ a bes c] d[ ees d c]
  | bes[ c d ees] f[ g f ees]
  %10
  | d[ c b! g] c[ d ees c]
  | g'[ g, g' f] ees[ c f g]
  | a[ g a f] bes[ bes, bes' aes]
  | g[ f] ees4~ ees8[ ees d c]  % should be: ees8[ ees, d c']
  | b![ g c bes] a![ f bes d]
  %15
  | ees[ d ees d] ees[ d ees c]
  | d[ ees f f,] bes[ c d ees]
  | f8[ g f ees] d[ c b! g]
  | c[ d c bes] a[ g fis d]
  | g[ g' a f!] bes,[ c d ees]
  %20
  | f[ f, ees d] c[ d ees c]
  | g' g' r g g[ fis] r fis!
  | g8 f! ees4~ ees8 d c4~
  | c8 c,8 c'4~ c8[ a bes fis]
  | g[ bes c d] ees[ f! ees d]
  %25
  | c c, a'\rest c g[ g' f! ees]
  | d[ d, d' g,] c[ ees aes, c]
  | f,[ f' ees aes] g[ f g^\prall g,]
  | c[ d c bes] a![ d,] d'4~
  | d8[ bes ees d] e![ c f! e]
  %30
  | fis[ d g g,] c[ d ees c]
  | d[ c bes ees] c[ a d d,]
  | g1~
  | g2~ g8[ bes d d,]
  | g1\fermata
  \fine
}

Choral = \relative {
  \autoBeamOff
  \time 10/2
  \key f \major
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
  \once\override Staff.TimeSignature.stencil = ##f
  g'1 g2 f bes2 a4( g) a1  g1 \bar "'"
  \time 8/2
  \once\override Staff.TimeSignature.stencil = ##f
    g2 bes c bes c d bes1 \bar "'"
  \break
  bes2 c d bes c4( bes) a2 g1 \bar "'"
  \time 12/2
  \once\override Staff.TimeSignature.stencil = ##f
  g1 g2 f bes a4( g) a1 g\breve
  \fine
}

\markup {
  \fill-line {
    \override #'(baseline-skip . 2)
    \center-column {
      \line { \abs-fontsize #14 \bold "Nun komm’ der Heiden Heiland" }
      \null
      \line { \abs-fontsize #10 \italic "Aus dem Gregorianishen Choral" }
      \null
      \line {
        \score {
          <<
          \new Voice = "corale" {
            \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #1
            \Choral
          }
          \new Lyrics \lyricsto "corale" {
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
              #'((basic-distance . 4))

            Nun komm, der Hei -- den Hei -- land,
            der Jung -- frau -- en Kind er -- kannt,
            des sich wun -- der al -- le Welt,
            Gott solch Ge -- burt ihm be -- stellt.
          }
          >>
          \layout {
            indent = #0
            line-width = #150
            #(layout-set-staff-size 14)
          }
        }
      }
      \null\null\null
      \null\null\null
    }
  }
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 659"
    title = \markup { "Nun komm’ der Heiden Heiland" }
    subtitle = \markup {
      \column {
        \line { "Chorale Prelude" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 35
  }
}
