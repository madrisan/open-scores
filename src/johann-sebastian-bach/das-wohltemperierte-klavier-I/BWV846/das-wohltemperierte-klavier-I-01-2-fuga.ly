Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  %1
  | R1
  | d'2\rest c8\rest \highlightSubject { g a b
  | c8. d32 c b8 e a, d~ d16 e d c
  \break
  | \unHighlightSubject b } g a b c b c d e d e fis g8 b,
  %5
  | c a d16 c b a g8. g16 f e f g
  | a g a b c2 b4
  \break
  | f'8\rest \highlightSubject { c d e f8. g32 f e8 a
  | d, g~ g16 a g f \unHighlightSubject e8 } a~ a16 b a g
  | f2 e8 fis g4~
  %10
  | g fis g16 f! e d c d c b
  | a c b a g8 e'\rest e16\rest c \highlightSubject { \unHighlightSubject b } a gis8 e'
  | d[c16 b] a gis! a b c fis, gis! a b8[a16 b]
  | c8[ f] e[d]~ d[c16 b] b8.^\downmordent a16
  | a4 d\rest \once\override Voice.Rest.X-offset = #-0.5 f2\rest
  %15
  | f\rest f8\rest g, a b
  | c8. d32 c \once\override NoteColumn.force-hshift = #0 b8
    \highlightSubject { c[ d e] f!8. g32 f
  | e8[a] d,[g]~ g16 a g f \unHighlightSubject e8 } a
  | d,[bes'] a[g16 f] g f g e f g g^\prall f32 g
  | a16 cis, d g e8.^\prall d16 d8 f\rest \once\override Voice.Rest.X-offset = #-0.3 f4\rest
  %20
  | \once\override Voice.Rest.X-offset = #-0.5 f2\rest g4\rest g8\rest \highlightSubject { g,[
  | a b] c8. d32 c b8 e a, d~
  | d16 e d c \unHighlightSubject b } c d e f g a g f e d c
  | b4 c8 d \once\override NoteColumn.force-hshift = #-0.8 g, c4 b8
  | c4 b8 bes a d4 c8
  \break
  %25
  | d e f4~ f16 a g f e f e d
  | c2 c16\rest g32[a b!16 c] d[e f8]~
  | f32[c d e f16 g] a8. b16 <g c>2\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \showStaffSwitch
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  %1
  | e8\rest \highlightSubject { c d e f8. g32 f e8 a
  | d, g^~ g16 a g f \unHighlightSubject e } f e d c d c b
  | a8 fis' g4~ g8 fis!16 e fis8 d
  | g f! e d c e\rest e\rest g~
  %5
  | g f16 e f4~ f16 f e8 d4
  | c8 f e16\rest g f e f8 d g4~
  | g4 e\rest e2\rest
  | R1
  | g8\rest \highlightSubject { g a b c8. d32 c b8 e
  %10
  | a, d~ d16 e d c b8 } e,\rest e\rest \highlightSubject { d
  | e fis g8. a32 g fis8 b e, a~
  | a16 b a gis \unHighlightSubject fis8 } f e d~ d16 e fis gis!
  | a gis a b gis! fis gis a b8 d,\rest c4\rest
  | c8\rest \highlightSubject { c d e \stemUp\tieUp f8. g32 f e8 a
  %15
  | d, g~ g16 a g f e8 } \omit Beam e[ fis g_~] \undo\omit Beam
  | \once\shiftOn g8[ fis] \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #1 gis[ a_~]
    \once\override NoteColumn.force-hshift = #-0.7 a \highlightSubject { g![ a b]
  | \stemDown c8. d32 c b8[e] a,[d]~ d16 e d c
  | \unHighlightSubject b8 } g' cis,[ d] e[ cis!] d[ e]
  | a,8 f\rest f\rest e fis g \stemUp\tieUp a8. b32 a
  %20
  | g8 c fis, b~ b16 c b a \stemDown\tieDown g fis e d
  | e4 d~ d16 a' g f! e g f! a
  | g4~ g16[a bes8] c4 d8 g,
  | \stemUp \shiftOn g4. f8~ \shiftOff
    \override Beam.positions = #'(-0.2 . -0.5)
    \once\override NoteColumn.force-hshift = #0 f
    e d4 \revert Beam.positions
  | \stemDown\tieDown e8 a4 g8~ g f g a
  %25
  | bes8. c32 bes a8[d] g,[c]~ c16 d c bes!
  | a[ bes a g] f[ g f e] d4~ d8.[ g16]
  | a4 r16 f'[ d8] e2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \showStaffSwitch
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  | R1*3
  | r8 \highlightSubject { g a b c8. d32 c b8 e
  %5
  | a, d~ d16 e d c b8 } c4 bes8
  | a d g, c c16\rest a b c d4
  | g, a8\rest \highlightSubject { g a b c8. d32 c
  | b8 e a,[ d~] d16 e d c! \unHighlightSubject b!8 } e~
  | e4 d c16 b c a e' d c b
  %10
  | c a b c d c b a g4 g\rest
  | R1
  | g8\rest \highlightSubject { e fis gis a8. b32 a gis!8 c
  | fis, b~ b16 c b a gis8 } a4 gis8
  | a4 a8\rest \highlightSubject { g a b \change Staff = "upper" \stemDown\tieDown c8. d32 c
  %15
  | b8 e a, \unHighlightSubject d~ } \hideStaffSwitch d \change Staff = "lower" \stemUp\tieUp g,
    \showStaffSwitch \change Staff = "upper" \stemDown d'4
  | \hideStaffSwitch c8 \change Staff = "lower" \stemUp a \showStaffSwitch
    \change Staff = "upper" \stemDown
    \once\override NoteColumn.force-hshift = #0 e'4
    \once\override NoteColumn.force-hshift = #0 d8 e,\rest d4\rest
  | \change Staff = "lower" \stemUp a'8\rest \highlightSubject { a b cis d8. e32 d c!8 f!
  | b, e~ e16 f e d cis8 } e\rest e4\rest
  | d8\rest \highlightSubject { a b cis
    \hideStaffSwitch
    d8.\change Staff = "upper" \stemDown\tieDown e32 d c!8 fis
  %20
  | b, e~ e16 fis e d
    \unHighlightSubject
    \shape #'((0 . -1.5) (0 . -2) (0 . -2) (0 . -1)) Tie
    c2~ }
  | c16 \change Staff = "lower" \stemUp\tieUp d c b a g a fis g8 \highlightSubject { b[ c d]
  | e8. f32 e d8[g] c,[f]~ f16 g f e
    \showStaffSwitch
  | \change Staff = "upper" \stemDown\tieDown d4 } e8 d~
    \hideStaffSwitch d \change Staff = "lower" \stemUp\tieUp g, g4~
  | g8 \highlightSubject { c,[ d e] f8. g32 f e8 a
  %25
  | d, g~ g16 a g f \unHighlightSubject e } d e f g a bes g
  | a e f g a b! c a b2
  | c1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  %1
  | R1*4
  %5
  | b2\rest c8\rest \highlightSubject { c d e
  | f8. g32 f e8[a] d,[g]~ g16 a g f
  | \unHighlightSubject e } f e d c d c b a8[d] a'[fis]
  | g16 a bes g cis,8 d a'4 e
  | a16 b c d c b a g c8 r r4
  %10
  | b,2\rest b8\rest \highlightSubject { g a b
  | c8. d32 c b8 e a, d~ d16 e d c
  | b8 } \highlightSubject { \unHighlightSubject e4 } d8 c f!4 e8~
  | e d4 e8 f! e16 d e4
  | a, a\rest g2\rest
  %15
  | r8 \highlightSubject { g a b c8. d32 c b8 e
  | a, d~ d16 e d c \unHighlightSubject b8 } bes a g
  | a fis' g e d4 e8 f!
  | g8. a32 g f8[bes] e,[a]~ a16 bes! a g
  | f e f d g8 a d,2~
  %20
  | d16 e d c b a g fis e8 e' fis g~
  | g a16 g fis8 d g2~
  | g a4 b8 c
  | f,16 a g f e d c b c d e f g8 g,
  | c1~
  %25
  | c~
  | c~
  | c
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 846"
    title = \markup { "Fuga I " \char ##x007E " à 4" }
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
    \tempo 4 = 60
  }
}
