Global = {
  \key bes \major
  \time 4/4
  \include "../../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \label #'FugaBWV955
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  %1
  | R1*18
  | r4 \highlightSubject { f g c
  %20
  | \appoggiatura bes16 a4 d g, c
  | f, bes~ bes8 c16 bes a8 bes16 a
  | g8 a16 bes c8 e, f g16 a bes8 d,
  | e \appoggiatura d16 c8 f2 e!4
  | f8 } c16[ d] c4 r8 c16 d c4
  %25
  | r8 c16 d es g f es d es' d es32 c bes4~
  | bes~ bes16 bes c d es4~ es16 g f es
  | d8. c16 c8. bes16 bes8 g'~ g4~
  | g8 f r16 a, bes c bes4~ bes16 a bes g
  | a4. g16 f c'4. d16 c
  %30
  | bes8. a16 g8 a16 bes a8 bes16 c d8 e16 f
  | g4~ g16 c, f e d e d c bes8. a16
  | a4 r r r8 e'
  | \appoggiatura e16 f4 r r2
  | r4 bes2 a4
  %35
  | bes4 r8 bes~ bes c16 bes as16 g as8~
  | as g~ g16 bes as g f4 r8 bes~
  | bes8. c16 a g f es d f es f g f es d
  | c8 f16 es d8 c16 bes c8 d16 es f g as c,
  | d8 bes r es~ es d16 c d8.\prallprall c32 d
  %40
  | es8 bes16[ c] bes4 r8 bes16 c bes4~
  | bes8 c d8. d16 es f32 g es16 d c d bes c
  | d4 r16 d c d es f d es c es bes c
  | d es c d es8 c16 bes a!4 r8 c16 d
  | es4 c d bes8. d16
  %45
  | c4 r8. g'16 e8 f16 g as c, d ees
  | b4 r8 as'16 g g f f g es8 d16 c
  | c8. bes16 a bes c d g, a bes c a8 g16 f
  | f c' d es! f4~ f16 es f d es4~
  | es16 es d c d4 c r16 a c f~
  %50
  | f4 es!2 d4
  | r16 des c bes as c f g \appoggiatura f16 e4 r8 as,!16 bes32 c
  | g4 r8 as'16. g32 g4 r16 e! f g
  | as8 g16 f e8. e16 f4 r
  | \override MultiMeasureRest.staff-position = #2
    R1
  %55
  | r2 r4 \highlightSubject { bes,
  | c f d g
  | c, f bes, es~
  | es8 f16 es d8 es16 d c8 d16 es f8 a,
  | bes c16 d es8 g, a g16 f \unHighlightSubject bes8 } c16 d
  %60
  | es8 f16 g f8.\prall es16 d8 d16[ es] d4
  | r8 c16 d c4 r r8 c16 d32 es
  | \appoggiatura es16 d4 r8 d16 es32 f \appoggiatura es16 d4 r16 d g es
  | \appoggiatura d16 cis4 r8 cis d4 c
  | bes r r2
  %65
  | \override MultiMeasureRest.staff-position = #4
    R1*4
  | r8 d16 es d4 r8 d16 es d4
  | r8 d16 es d4 r8 g,16 as g4
  | r8 g16 as g4 as16 g f g e8. f16
  | f4 f'2 e4
  %70
  | f4 r16 c' bes a g4 r16 bes a g
  | f4 r16 a g f e4 f~
  | f es2 d4~
  | d8 c16 bes c4~ c8 bes16 a bes4~
  | bes16 c d es32 f d8 c16 bes bes4 r8 as
  %75
  | g4 r8 g16 as32 bes f4 r8 as'
  | g4 r8 g f4 r
  | s2 s8 f,32 g f16 s8 d'32 es d16
  | s4 bes32 f bes f s8 bes32 des64 bes g32 e s8
   << { r16 bes'16 a16. bes32 } \\ { \stemUp\shiftOn s16 f8. } >>
  | bes1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-4
  %1
  | R1*11
  | r4 \highlightSubject { bes c f
  | \appoggiatura { \tweak Stem.direction #UP es16 } d4 g c, f
  | bes, es~ es8 f16 es d8 es16 d
  %15
  | c8 d16 es f8 a, bes8 c16 d es8 g,
  | a \appoggiatura { \tweak Stem.direction #UP g16 } f8 bes2 a4 }
  | g8 a16 bes c4 f,8 g16 aes g8 a16 bes 
  | a8 bes16 c bes8 c16 d c8 d16 es d8. c16
  | d8 \appoggiatura { \tweak Stem.direction #UP f16 } e8 f2 e4
  %20
  | f f2 es4~
  | es r8 d c4 f
  | e r8 c d4 r8 bes
  | c bes a f g16 b bes8~ bes a16 g
  | a4 r8 g a4 r8 g
  %25
  | a4 bes8 c d es f g
  | f es d c bes a' bes c~
  | c bes4 a8 bes4~ bes8 a16 g
  | c4 f,2 es4~
  | es d e f~
  %30
  | f e8 c~ c16 f8.~ f16 bes8.~
  | bes16 g c bes a4 bes8 a g4
  | f r8 g a4 r8 g
  | a8 g16 f g8 a bes f16 g as8 bes16 as
  | g8 a \highlightSubject { bes4 c f
  %35
  | \appoggiatura { \tweak Stem.direction #UP es16 } d4 g c, f
  | bes, es~ es8 f16 es d8 es16 d
  | c8 d16 es f8 a,! bes c16 d es8 g,
  | as f bes2 \unHighlightSubject as4~ }
  | as8 g16 f g bes as g f es f g f8.\prallprall es32 f
  %40
  | g8 es r16 as g f g4 r8 f
  | g a bes16 f bes8~ bes4 a
  | bes8 f bes2 as4~
  | as r8 g f4 bes~
  | bes16 d c bes a g f g a c bes a g f es8~
  %45
  | es16 g f es d c d8 c d16 e f4~
  | f8 as16 g g8 f16 es es8 d16 c b8.\prall c16
  | c e a! g f4~ f4. e!8
  | f4 r16 f g a bes4~ bes16 a bes g
  | a4~ a16 a g f e4 f
  %50
  | bes16 d bes g~ g bes c g a c a f~ f a bes f
  | g4 as g r8 f
  | e4 r8 f' e4 r8 c16 e
  | f8 des c bes a!4~ a16 f bes a
  | g4~ g16 es! as g f4~ f16 d g f
  %55
  | es4~ es16 d es f d8 es f16 as g f
  | es4 f r16 f g a bes4
  | r16 bes as g f2 r16 g a bes
  | a4 bes a r8 a
  | g8 a16 bes c2 bes4~
  %60
  | bes a bes2~
  | bes4 r r8 f16 g f4
  | r8 f16 g f4 r8 g16 a g4
  | r8 g16 a g4 r8 g16 a g8. fis16
  | g8 d \highlightSubject { g4 a d
  %65
  | bes es a, d
  | g, c~ c8 d16 c bes!8 c16 bes
  | a8 bes16 c d8 fis, g a16 bes c8 g
  | a4 bes } a4. c8
  | bes4 r8 g fis4 r8 f
  %70
  | f4 r8 f e4 r8 c
  | des4 r8 des c des c4~
  | c8 r r \highlightSubject { f g4 c
  | \appoggiatura { \tweak Stem.direction #UP bes16 } a4 d g, c
  | f, bes~ bes16 d c bes a c bes a
  %75
  | g8 a16 bes c8 es,! f g16 a bes8 d,
  | es4. } d16 c d4. es16 f
  | g8 f~ f4 d r8 f
  | es4 r8 es d4 r8 d'
  | bes4 r8 bes bes4 r
  %80
  | s2 d,32 es d16 s8 bes'32 c bes16 s8
  | f'32 bes f d f d bes d s8 d,32 f d bes s4 r16 des c16. d32
  | <d f>1
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  %1
  | R1
  | \override MultiMeasureRest.staff-position = #4
    R1*2
  | \override MultiMeasureRest.staff-position = #2
    R1*2
  %6
  | r4 \highlightSubject { f g c
  | \appoggiatura bes16 a4 d g, c
  | f, bes~ bes8 c16 bes a8 bes16 a
  | g8 a16 bes c8 e, f g16 a bes8 d,
  %10
  | e \appoggiatura d16 c8 f2 e!4
  | \unHighlightSubject f8 } g a bes \appoggiatura bes16 c4 g8 a
  | bes8 f bes2 a4
  | bes bes2 as4~
  | as4 r8 g f4 bes
  %15
  | a4 r8 f g4 r8 es
  | f es d bes c d16 e f4~
  | f es d4. d8
  | es4 f8 bes~ bes4. a8
  | bes a g f c'2~
  %20
  | c4 bes4~ bes8 as g4
  | a4 g2 f4
  | g a2 g4~
  | g f8 e d4 c~
  | c r8 e f4 r8 e
  %25
  | f4 g8 a bes c d es
  | d c bes a g f g a
  | bes d16 es f2 e4
  | f r r2
  | \override MultiMeasureRest.staff-position = #6
    R1*3
  %32
  | r8 c16 d c4 r8 c16 d c4
  | r8 f es d16 c d8 c16 bes c8 d
  | es4 d8 g16 f es8. d32 es f8 f,
  | bes4 r r2
  | \override MultiMeasureRest.staff-position = #0
    R1*4
  %40
  | r4 r8 d es4 r8 d
  | es r r4 r2
  | \override MultiMeasureRest.staff-position = #4
    R1*3
  | \override MultiMeasureRest.staff-position = #6
    R1*2
  %47
  | r4 \highlightSubject { f, g c
  | a d g, c
  | f, bes~ bes8 c16 bes a8 bes16 a
  | g8 a16 bes c8 es,! f g16 a bes8 d,
  | \unHighlightSubject { e } } c f bes, c c'16 des c4
  | r8 c,16 des c4 \clef treble r8 c''16 des c bes as g
  | \clef bass f8 bes, c c, f16 a! bes c d8 d,
  | es!16 g a bes c8 c, d16 f g a bes c bes a
  %55
  | g d' c bes a8 f bes c d4
  | r16 d c bes r c bes c d4 r16 d c d
  | e4 r16 c bes c d bes c d es!8 bes
  | c4 d8 c16 bes f'8 es d c
  | bes a g4 f2
  %60
  | es8 d c4 bes r8 f'
  | g4 r8 g a4 r8 a
  | bes4 r8 bes bes4 r8 g
  | g4 r8 a bes4 a
  | g g~ g16 bes a g fis8.\prallprall e32 fis
  %65
  | g16 d' es f g2 f4~
  | f r8 es d4 g
  | fis r8 d e4 r8 e
  | fis4 g2 fis!4
  | g4 r8 bes, a4 r8 as
  %70
  | g4 r8 g g4 r8 e
  | e4 r8 e f as g[ bes]
  | a r r4 r16 d8. g4
  | f8 es d c bes c16 d g,8 c16 bes
  | a16 bes a g f8 g~ g4 f8 e
  %75
  | d4 es8 d c4 d8 c
  | bes4 f'~ f4. g16 as
  | g16 a bes8~ bes a bes bes16[ c] bes4
  | r8 bes16 c bes4~ bes r8 f'
  | es4 r8 es d4 r
  %80
  | s8 d,32 es d16 s8 bes'32 c bes16 s2
  | s2. f4
  | bes1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  %1
  | r4 \highlightSubject { bes c f
  | \appoggiatura { \tweak Stem.direction #UP es16 } d4 g c, f
  | bes, es~ es8 f16 es d8 es16 d
  | c8 d16 es f8 a, bes8 c16 d es8 g,
  %5
  | a f bes2 a4
  | bes } f'2 e4
  | f8 f, f'2 es4~
  | es r8 d c4 f
  | e r8 c d4 r8 bes
  %10
  | c8 bes a f g a16 bes c8 c,
  | f4 f' c8 d es4
  | d4 c8 bes f'4 r8 f,
  | g8 g'16 f e8 d16 e f4 r8 f,
  | g8 a16 bes c8 bes a4 bes
  %15
  | f'8 es d c bes a g c
  | f,4 g a4. bes8
  | c4. c8~ c c bes4
  | c d es8 c f4
  | bes,8 c d4 c2
  %20
  | f4 d es!4. es8
  | f4. f8 e4 f8 f,
  | c'4 r8 a d4 r8 g,
  | c4 d8 c bes g c c,
  | f4 r r r8 c'
  %25
  | f,4 r r2
  | R1
  | r4 \highlightSubject { f' g c
  | a d g, c
  | f, bes~ bes8 c16 bes a8 bes16 a
  %30
  | g8 a16 bes c8 e, f g16 a bes8 d,
  | e4 f2~ f8 es
  | f4 } r8 e f4 r8 c
  | f,4 r r2
  | R1*6
  %39
  | r2 r4 r8 bes
  | es,8 r \highlightSubject { bes'4 c f
  | d g c, f
  | bes, es~ es8 f16 es d8 es16 d
  | c8 d16 es f8 a, bes c16 d es8 g,
  %45
  | a f \unHighlightSubject { bes[ } } bes'~] bes4 as
  | g1
  | a!8 a,! d c bes g r c
  | f4 r r2
  | R1*3
  | \once\override MultiMeasureRest.X-offset = #0.8 R1
  | R1*2
  %55
  | r2 r4 bes~
  | bes a! bes2~
  | bes4 as2 g4
  | f bes f r8 f~
  | f4 es2 d4
  %60
  | c f, g r8 d'
  | es4 r8 e f4 r8 f
  | bes,4 r8 bes es4 r8 es
  | e4 r8 e d2
  | g8 f! es d c4 d
  %65
  | g, r16 c b c d es d c b c a b
  | c8 g16 c es8 c16 es g8 d16 g bes!8 g16 bes
  | d4 r8 c bes4 r8 bes
  | a d16 c bes g es! g c, es c a d a d, d'
  | g,4 r8 g' d4 r8 c
  %70
  | b4 r8 b c4 r8 c
  | bes4 r8 bes as bes c4
  | f16 a bes c d! e f a, bes d g, bes c8 c,
  | f4 f2 es!4~
  | es d8 g, c4 d8 c
  %75
  | bes g c bes a f bes a
  | g4 a bes8 c d bes
  | es bes f'4 g r8 d
  | es4 r8 es, bes' bes16[ c] bes4
  | r8 bes16 c bes4 r32 bes' a! g f g f es d g f es d es d c
  %80
  | bes32 c bes16 s8 f'32 g f16 s8 s2
  | s2 s8 des'32 bes g e r8 f,
  | bes1\fermata
    \fine
}

forceBreaks = {
  % page 1
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 955"
    title = \markup { "X. Fuga B-Dur" }
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
