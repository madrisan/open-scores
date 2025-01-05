Global = {
  \key bes \major
  \time 4/4
  \include "../../global.ly"
}

greyTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral
  \showStaffSwitch
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \label #'PartitaIPraeludium
  %1
  | r16 bes[ bes32 \prall a bes16] c bes d bes es[ bes bes32 \prall a bes16] d bes es bes
  | f'[ bes, bes32 \prall a bes16] g' bes, a' bes, bes'[ a32 g f16 bes] c,32[ d es8 d32 c]
  | d32[ c bes8 g32 a] bes[ c d8 c32 bes] c[ bes a8 f32 g] a[ bes c8 bes32 a]
  | bes[ a g8 a32 bes] c[ d e f g16 bes,]~ \stemUp bes8^\prall a bes c
  %5
  | d c16 bes c8 d es d16 e f8 g~
  | g f4 e8 f2~
  | f8 f d bes es g c4~
  | c8 f, bes4~ bes8 a16 g a fis g8
  | fis fis g a bes, g' a bes
    \break
  %10
  | c, ees! d c bes32[ c d8 c32 bes] a[ bes c8 bes32 a]
  | bes16[ d d32^\prall c d16] bes'4~ bes8 a~ a16 g8 f16
  | e[ c c32 \prall b c16] d c e c f[ c c32 \prall b c16] e c f c
  | g'32[ f e8 d32 c] bes'[ a g8 f32 e]
    \set subdivideBeams = ##t
    c'[ e, f g f e f d]
    \set subdivideBeams = ##f
    e8. \prall f16
  | f8. a,32 bes \stemNeutral c[ d es8 d32 c] d[ c bes8 d32 es] f[ g aes8 g32 f]
  %15
  | g[ f es8 d32 es] f[ g a bes c16 es,] f32[ es d8 c32 d] es[ f g a bes16 d,]
  | es32[ d c8 d32 es]
    \set subdivideBeams = ##t
    d[ c bes a bes a g f]
    \set subdivideBeams = ##f
    \stemUp d'4~ d8. c16
  | bes16 a g'8 f es d bes' a g
  | f ees! d c d32[ c bes16 es32 d c16] bes8 a16. \prall bes32
  | bes16[ bes bes32 \prall a bes16] c bes d bes es[ bes bes32 \prall a bes16] d bes es bes
  %20
  | f'[ bes, bes32 \prall a bes16] g' bes, a' bes, bes'[ a32 g f16 bes] g bes f a
  | bes1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch\tieUp
  %1
  | \change Staff = "lower" \voiceThree
    d4 es8 f g4 f8 es
  | d4 ees8[ c] d \clef bass bes4 a8
  | bes8 \clef treble d g4~ g8 c, f4~
  | f8 e16 d e4
    \change Staff = "upper" \voiceTwo
    \stemDown\tieDown f2~
  %5
  | f2 a8 bes4.
  | a4 bes8 g a\rest c a f
  | bes2~ bes4 d8\rest es
  | d4 d8\rest d8 c4~ c8. bes16
  | \hideStaffSwitch a16[
    \change Staff = "lower" \voiceThree
    d, d32^\prall cis d16] e d fis \showStaffSwitch d
    \clef bass
    \change Staff = "upper" \voiceTwo
    g[
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    \clef treble d d32^\prall cis d16] fis d g d
  %10
  | %\showStaffSwitch
    \change Staff = "upper" \voiceTwo
    a'8 c bes a~ a g~ g fis
  | g g \rest d'16 \rest d[ d32\prall c d16] g16 c,8 c16 d8 bes~
  | \hideStaffSwitch bes
    \change Staff = "lower" \voiceThree
    \clef treble e, f \showStaffSwitch g
    \clef bass
    \change Staff = "upper" \voiceTwo
    a \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    \clef treble f g a \showStaffSwitch
  | \change Staff = "upper" \voiceTwo
    bes \hideStaffSwitch
    \change Staff = "lower" \voiceThree
    e, f g a4
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    g
  | a8
    \hideStaffSwitch \change Staff = "lower" \voiceThree \tieUp
    c, a f bes2~
  %15
  | bes8 g c4~ c8 f, bes4~
  | bes8 a16 g \showStaffSwitch a4
    \change Staff = "upper" \voiceTwo \tieDown
    d32 \rest f[ g a bes16 f] g d es8~
  | es es' d c bes d c bes
  | a c bes4~ bes8
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    c, d
    \change Staff = "upper" \voiceTwo
    es
    \showStaffSwitch
  | d d es f f \rest es d
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    \once\override NoteColumn.force-hshift = #-0.5 c
  %20
  | \once\override Beam.positions = #'(6.5 . 7.5)
    \once\override NoteColumn.force-hshift = #0 bes
    \change Staff = "upper" \voiceTwo
    f'
    \change Staff = "lower" \voiceThree
    %\override NoteColumn.force-hshift = #1.3
    es es
    %\once\override Beam.positions = #'(-6 . -4)
    %\override NoteColumn.force-hshift = #-0.3
    d
    %\revert NoteColumn.force-hshift
    \change Staff = "upper" \voiceTwo
    d' <c es> <c es>
  | <bes d f>1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | s1*18
  | b8\rest bes4 aes8 <g bes> q <f aes>
    \once\override NoteColumn.force-hshift = #0 <ees g>
  %20
  | \stemDown
    \once\override NoteColumn.force-hshift = #0 <d f>[
    <aes' d>_~ <g d'> <ges c>] g,\rest d ees f
  | bes,1\fermata
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  %1
  | \clef treble
    bes1~
  | bes2~ bes8 \clef bass d, es f
  | bes, \clef treble g'\rest b\rest bes a4 b8\rest d
  | g,4 a8\rest c r16 \stemNeutral \clef bass f,[ f32^\prall e f16] g f a f
  %5
  | bes[ f f32^\prall e f16] a f bes f c'[ f, f32^\prall e f16] d' f, e' f,
  | f'[ e32 d c16 f] g,32[ a bes8 a32 g] a[ g f8 a32 bes] \clef treble c[ d es8 d32 c]
  | d[ c bes8 d32 es] f[ g aes8 g32 f] g[ f es8 d32 es] f[ g a bes c16 es,]
  | f32[ es d8 c32 d] es[ f g a bes16 d,] es32[ d c16_~ c32 bes a bes]
    \set subdivideBeams = ##t
    c[ d es d c bes a g]
    \set subdivideBeams = ##f
  | \stemDown d'16 g,\rest g8\rest g4\rest \clef bass d8 g\rest g4\rest
  %10
  | \clef bass \stemNeutral r16 d d32^\prall cis d16 e d fis d g8 bes, c d
  | g, g'4 f8 e f bes, g
  | \stemDown c a'\rest a4\rest c,8 a'\rest a4\rest
  | r8 c d e f[ bes,] \clef bass c c,
  | f, c'\rest c4\rest c8\rest f d bes
  %15
  | es4 r8 es d4 r8 g
  | \stemDown c,4 r8 f bes, d es c
  | \stemNeutral f16[ f, f32^\prall e f16] g f a f bes[ f f32^\prall e f16] a f bes f
  | c'[ f, f32^\prall e f16] d' f, ees' f, f'8 g16 es \stemDown f8 f,
  | bes g\rest g4\rest bes8 g\rest g4\rest
  %20
  | \once\override NoteColumn.force-hshift = #0.4 \once\stemUp bes8
    \once\override Voice.Rest.X-offset = #0.5
    c\rest c4\rest
    \stemUp
    \once\override NoteColumn.force-hshift = #0.5 f8
    d ees f
  | bes,1
    \fine
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach
    opus = ##f % "BWV 825"
    title = \markup {
      \fill-line {
        \center-column {
          \line \abs-fontsize #18 \caps {
            "Partita I"
          }
        }
      }
    }
    subtitle = \markup { "Praeludium" }
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
    \tempo 4 = 56
  }
}
