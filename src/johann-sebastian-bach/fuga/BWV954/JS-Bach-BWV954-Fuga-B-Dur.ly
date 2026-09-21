\version "2.25.20"

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
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "Fuga B-Dur" }
        \null\null
        \line { \abs-fontsize #20 "BWV 954" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
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
          \abs-fontsize #10 "Based on: Bach-Gesellschaft Ausgabe - Leipzig: Breitkopf und Härtel, 1890"
        }
        \fill-line {
          \abs-fontsize #10 \italic "After the Allegro of Sonata VI in J.A. Reinken's Hortus musicus"
        }
        \null\null
      }
    }
  }
}

Global = {
  \key bes \major
  \time 4/4
  \include "global.ly"
}

\include "./macros.ly"

Soprano = \context Voice = "one" \relative bes' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | \highlightSubject { bes8[ bes16 bes] bes[ c a bes] c8[ c16 c] c[ d bes c]
  | d8[ d16 c] d[ bes f' d] bes'8[ a16 g] f[ bes d, es]
  | \unHighlightSubject f[ } g c, d] es[ f bes, c] d[ es a, bes] c[ d g, a]
  | bes[ a bes c] d[ c d es] f[ es f g] a[ g a bes]
  %5
  | c[ bes a g] f4~ f16[ g a bes] e,4^\prall
  | f8[ c] f[ a16 c] a4 r8 f~
  | f es4 d8~ d c4 bes8
  | a[ d c f~] f[ es!16 f] g[ f g a]
  | bes4 r8 g es4. f8
  %10
  | d[ f16 es] f8[ bes] f4 f8\rest d
  | c4 bes a g 
  | f r8 d' c4 f8 es
  | d4 c8 g'~ g f~ f4
  | es d8 a'~ a g~ g4~
  %15
  | g8 f~ f4 g8 es~ es4  
  | es8[ d16 c] d4 es4. es8
  | f[ bes,16 a] bes8 d f4 ~ f16[ f es d]
  | c8 a' g16[ c, g' a] \oneVoice f bes, f' g es a, es' f
  | d16[ es d c] bes[ d c bes] a8[ f16 f] f[ g e f]
  %20
  | g8[ g16 g] g[ a f g] a8[ a16 g] a[ f c' a]
  | f'8[ e16 d] c[ f a, bes] c[ d g, a] bes[ c f, g]
  | a[ bes e, f] g[ a d, e] f[ e f g] a[ g a bes]
  | \voiceOne c[ bes c d] es[ c f es] d[ es d c] bes4~
  | bes a bes d\rest
  %25
  | d d8\rest bes~ bes a4 g8~
  | g f4 es8~ es[ d f bes~]
  | bes[ a16 bes] c8[ f ~] f[ es16 f] g8[ c~]
  | c[ bes16 a] bes8[ bes~] bes[ a16 g] f8[ a~]
  | a[ g16 f] e8[ g~] g[ f!16 es] d8[ f~]
  %30
  | f[ e16 d] cis[ a b cis] d8[ a] d4 ~
  | d cis d d\rest
  | s1*4
  | s2. r4
  %37
  | \highlightSubject { g,8[ g16 g] g[ a fis g] a8[ a16 a] a[ bes g a]
  | bes8[ bes16 a] bes[ g d' bes] g'8[ f16 es] d[ g bes, c]
  | \oneVoice \unHighlightSubject d[ } es a, bes] c[ d g, a] bes[ c f, g] a[ bes e, fis]
  | g[ fis g a] bes[ a bes c] d[ cis d e] fis![ e fis g]
  | as [ g g fis] g8[ cis,] d16[ d, g16. a32] fis!8.[ g16]
  | g4 d16[ c d es!] f![ es f g] a8[ a,16 bes]
  | c[ bes c d] es[ d es f] g8[ g,16 a] bes[ a bes c]
  | d[ c d es] f8[ f,16 g] as[ g as bes] c[ bes c d]
  %45
  | es[ d es f] \voiceOne g[ f g as] bes[ as bes g] as[ g as bes]
  | g[ bes es f] g[ as bes c] d,8[ f16 es] d[ es c d]
  | es8[ bes] d\rest g, as2
  | as8[ g16 as] bes8[ es] g4~ g16[ g f es]
  | d8 des4 c8 b[ bes a! as~]
  %50
  | as g4 g8 f4 bes~
  | bes8 as4 as8 g4 c~
  | c8[ b16 c] d4~ d8[ g, c bes]  
  | as4. as8 g8. c16~ c c8 b16
  | \highlightSubject { c8[ c16 c] c[ d b c] d8[ d16 d] d[ es c d]
  %55
  | es8[ es16 d] es[ c g' es] c'8[ bes!16 as] g[ c es, f]
  | \unHighlightSubject g[ } as d, es] f[ g c, d] es[ f b, c] d[ es a, b!]
  | c[ b c d] es[ d es f] g[ f g as] b,[ a b c]
  | d[ c d es] f[ es f g] a,![ g a b] c[ b c d]
  | es[ d es f] g[ b, c d] es[ g, a! bes] c[ e, fis g]
  %60
  | \oneVoice a[ es! d c] bes[ bes' a g] fis[ c' bes a] d[ bes a g]
  | es'[ c bes a] d[ bes a g] c[ a g fis] \voiceOne bes[ g c a]
  | d[ bes es c] f[ c bes g'] a,[ g' fis g] a,[ fis' e fis]
  | g8[ d] es!4 ~ es8[ es d c]
  | d[ g,] g16[ f as g] f8[ f16 f] f[ es g f]
  %65
  | e4 f~ f es
  | es!8[ f] d4 c4. d16 es
  | f16[ f g as] g4~ g16[ g a bes] a4\prall
  | bes8[ bes16 a] bes[ d c f] d4 b'8\rest g
  | c,[ f bes, es] a,[ d g, c]
  %70
  | f,4 d'8\rest d c4 f8\rest a
  | g4 c\rest c16\rest f,[ g as] g[ as bes8]
  | bes16[ e, f g] fis[ g a!8] a16\rest d,[ es f] e[ f g8]
  | a16\rest c,[ d  es!] d[ es f8] a16\rest bes,[ c d] c[ d es8]
  | f16\rest a,![ bes c] bes[ c d8] e16\rest g,[ a bes] a[ bes c8]
  %75
  | d16\rest f, g aes bes aes g bes r16 g a bes c bes a c

  | e16\rest a,[ bes c] d[ c bes d] f\rest bes,[ c d] es[ d c es]
  | a\rest es[ d c] d4 ~ d e16\rest d[ c bes]
  | c2~ c16 c d es \once\tieDashed f4~
  | f4 ~ f16[ f g a!] bes2~
  | bes8.[ bes16] a8[ bes] c16[ bes a g] f[ es d c]
  %80
  | \highlightSubject { bes8[ bes16 bes] bes[ c a bes] c8[ c16 c] c[ d bes c]
  | d8[ d16 c] d[ bes f' d] \unHighlightSubject bes'[ } a g f] es[ d c bes]
  | a[ bes a g] f[ es d c] bes[ c d es] f[ g a bes]
  | e,4 f8[ g16 a] bes2~
  | bes4 d8\rest a bes4 d8\rest c ~
  %85
  | c16[ f, g a] bes[ c a bes] \highlightSubject { c8 c16 c c d bes c
  | d8[ d16 c] d[ bes f' d] bes'8[ a16 g] f[ bes d, es]
  | f[ g c, d] es[ f bes, c] \unHighlightSubject d[ } es a, bes] c[ d g, a]
  | bes[ a bes c] d c d es f es f g a f g a
  | bes8[ f g d] es[ g c, es]
  %90
  | d[ f bes, d] f,4 f'8\rest bes, ~
  | bes as4 g f es8~
  | es d4 g8 c,4 b'8\rest c32 d es16
  | d8. d16 c8. c16 bes8. bes16~ bes bes a bes
  | c16[ f, bes c] a8.[ bes16] bes2
  \fine
}

Alto = \context Voice = "two" \relative f' {
  \voiceTwo
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-6
  %1
  | R1*4
  %5
  | \highlightSubject { f8[ f16 f] f[ g e f] g8[ g16 g] g[ a f g]
  | a8[ a16 g] a[ f c' a] \unHighlightSubject f'8[ } e16 d] c[ f a, bes]
  | c[ d g, a] bes[ c f, g] a[ bes es, f] g[ a d, es]
  | f[ e f g] a[ g a bes] c[ bes c d] es[ d es f]
  | d8[ f] bes,4~ bes8[ c] a4
  %10
  | bes4. d8 d4 g,8\rest bes~
  | bes a4 g8~ g f4 es8~
  | es d16 es f8 bes~ bes a16 bes c4~
  | c8 bes~ bes4 aes g8 \once\tieDashed d'~
  | d \once\tieDashed c~ c4 bes a8 es'
  %15
  | a,4 g8[ d'] g,4 f8[ c']
  | f,4. bes8 ~ bes[ a16 g] a8[ g]
  | f4. bes8 d4~ d16 d c bes
  | a8 r r4 s2
  | s1*4
  %23
  | \voiceTwo e2\rest \highlightSubject { bes8[ bes16 bes] bes[ c a bes]
  | c8[ c16 c] c[ d bes c] d8[ d16 c] d[ bes f' d]
  | bes'8[ a16 g] f[ bes d, es] \unHighlightSubject f[ } g c, d] es[ f bes, c]
  | d[ es a, bes] c[ d g, a] bes[ a bes c] d[ c d es]
  | f[ es f g] a[ g a bes] c[ bes c d] es[ d es f]
  | g4. d8~ d[ c16 bes] a8[ c~]
  | c[ bes16 a] g8.[ a16] bes8[ a16 g] f8[ a~]
  %30
  | a[ g16 f] e8 c\rest \highlightSubject { d[ d16 d] d[ e cis d]
  | e8[ e16 e] e[ f d e] f8[ f16 e] f[ d a' f]  
  | \oneVoice d'8[ c!16 bes] a[ d f, g] \unHighlightSubject a[ } bes e, f] g[ a d, e]
  | f[ g cis, d] e[ f b, cis] d[ cis d e] f[ e f g]
  | a8[ a,16 b] c![ b c d] e[ d e fis] g[ fis g a]
  %35
  | bes!8[ bes,16 c] d[ c d es!] f[ e f g] a[ g a bes]
  | c8[ c,16 d] e[ d e fis] g[ fis g a] \voiceTwo bes a bes c 
  | d8[ d,] es!8.[ d16] c4. d8~
  | d16[ es d c] 
    d[ \change Staff = "lower" \voiceThree c bes a]
    bes[ es d c] bes8[ d]
  | a[ d g, c] f,[ d' cis c]
  %40
  | bes8.[ fis16] g[ fis g a] bes8[ a16 g] a[ g a bes]
  | c4~ c16[ bes a! g] a8[ bes] a4
  | g16 fis g a bes a bes c \oneVoice d8 d,16 es f es f g
  | a16[ g a bes] c8[ c,16 d] es[ d es f] g[ f g a]
  | bes8 bes,16 c d c d es f es f g aes g aes f
  %45
  | c' bes c d 
    \change Staff = "upper" \voiceTwo
    es16 d es c d c d es f es f d  
  | \highlightSubject { es8[ es16 es] es[ f d es] f8[ f16 f] f[ g es f]
  | g4 } e8\rest \once\tieDashed es~ es[ f16 es] d[ es c d]
  | bes8 es4 g8 bes4~ bes16[ bes as! g]
  | f4 es d!8[ f c es]
  %50
  | bes4 es~ es8 d4 d8
  | c4 f~ f8 es4 es8
  | d8 g4 f8 es4. g8
  | g8[ c,] f4~ f16[ f es8] d8 f
  | es8 c\rest c4~ c b8_\prall[ a16 b]
  %55
  | c4 c16\rest c[ es g] c[ b c d] es8[ c]
  | b[ bes a! as] g16[ as g as] f[ g f g]
  | es[ f es d] c[ b c d] es[ d es f] g[ f g as]
  | b,[ a! b c] d[ c d es] f[ es f g] a,[ g a b]
  | c[ as' g f] es[ f es d] c[ d c bes!] a[ bes a g]
  %60
  | \change Staff = "lower" \voiceFour
    fis16[ d e fis] g[ e fis g] a[ fis g a] bes[ g a bes]
  | c[ a bes c] bes[ g a bes] a[ fis g a]
    \stemUp g[ \change Staff = "upper" \voiceTwo e' a, fis'!]
  | bes, g' c, a' d, a' g es c es d c d a' g a
  | bes4. c8 fis,4 f~  
  | f8[ f] es4 d4. d8
  %65
  | \highlightMotif { c[ c16 c] c[ bes d c] bes8[ bes16 bes] bes[ a! c bes]
  | a4. } bes8~ bes[ bes] \highlightSubject { a4~
  | a8[ bes16 bes] bes[ c a! bes] c8[ c16 c] c[ d bes c]
  | d8[ d16 c] d[ bes f' d] bes'8[ a16 g] f[ bes d, es]
  | \unHighlightSubject f[ } g c, d] es[ f bes, c] d[ es a, bes] c[ d g, a]
  %70
  | bes[ a bes c] d[ c d es] f[ e f g] a[ g a bes]
  | c[ b c d] es[ d es f] d4~ d8. d16
  | cis4~ cis8.[ c16] b4~ b8.[ bes16]
  | \once\tieDashed a4~ a8.[ as16] g4 ~ g8.[ g16]
  | f4~ f8.[ f16] es4~ es8.[ es16]
  %75
  | d4 ~ d8.[ f16] es4~ es8.[ g16] f2 g
  | a4 f16\rest c'[ bes a] bes2~
  | bes16 bes a g a4 as~ as16[ as bes c]
  | d2~ d16[ d es f] g4~
  | g8.[ f16] es4 a,8.[ bes16] c8[ a]
  %80
  | \highlightSubject { \unHighlightSubject bes16[ } a g f] es[ d c bes] a b\rest c8\rest c4\rest
  | \tweak Y-offset #-3.0 R1
  | \tweak Y-offset #-6.0 R1
  | a8\rest \highlightMotif { c16[ c] c[ d bes c] d8[ d16 d] e![ f d e]
  | \unHighlightSubject f8[ } c] f4 ~ f8 es!4 es8
  %85
  | d4 e8\rest d16\rest bes'~ bes4 a
  | bes16[ g f es] d[ es d c] bes4 c8\rest d
  | c[ f bes, es] 
    \change Staff = "lower" \voiceThree
    a,[ d g, c]
  | f,4 \change Staff = "upper" \voiceTwo
    e'4\rest e2\rest
  | r4 r8 bes'~ bes4 a
  %90
  | bes8[ bes f bes] d,4 r8 d
  | c4 bes \change Staff = "lower" \voiceThree a! g
  | f bes~ bes8 a r
    \change Staff = "upper" \voiceTwo
    c'~
  | c16 c bes8~ bes16 bes aes8~ aes16 aes g f es4~
  | es8 d c4 d2
}

Bass = \context Voice = "four" \relative bes {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \oneVoice R1*8
  | \highlightSubject { bes8[ bes16 bes] bes[ c a bes] c8[ c16 c] c[ d bes c]
    \clef "treble"
  %10
  | d8[ d16 c] d[ bes f' d] bes'8[ a16 g] f[ bes d, es]
  | \unHighlightSubject f[ } g c, d] es[ f bes, c] d[ es a, bes] c[ d g, a]
  | bes[ a bes c] d[ c d es] f[ es f g] a[ f g a]
  | bes[ a g f] e[ f d e] f[ es d c] \clef "bass" b[ c a! b]
  | c[ bes! a g] fis[ g e fis] g[ f es d] c[ d bes c]
  %15
  | d[ es d c] b[ c a b] c[ d c bes] a[ bes g a]
  | \highlightSubject { bes8[ bes16 bes] bes[ c a bes] c8[ c16 c] c[ d bes c]
  | d8[ d16 c] d[ bes f' d] bes'8[ a16 g] f[ bes d, es]
  | \unHighlightSubject f[ } g c, d] es[ f bes, c] d[ es a, bes] c[ d g, a]
  | bes[ a bes c] d[ c d e] f[ e f g] a[ f g a]
  %20
  | bes[ g a bes] c[ bes c c,] f[ g f e] f[ a c, f]
  | a,[ d c bes] a[ c f, a] e8.[ e'!16] d[ c d e]
  | f[ g a f] bes[ a bes g] a[ bes a g] f[ a g f]
  | es[ f es d] c[ es d c] bes8[ d g f]
  | es[ c f f,] bes16[ g' f es] d[ es d c]
  %25
  | bes[ a bes c] d8[ bes] f[ f' c es]
  | bes[ d a c] g[ g'] d[ bes16 c]
  | d8[ c16 bes] f'8[ f,16 g] a8[ g16 f] c'8[ c'16 d]
  | es[ d es f] g[ d g, a] bes[ a bes c] d[ a f g]
  | a[ g a bes] c[ g e fis] g[ f g a] bes[ f d es]
  %30
  | f[ e f g] a8[ g] f4 bes!
  | g a d,8[ d'16 cis] d[ a f a]
  | d,[ cis d e] f[ e! d e] cis!8[ c b bes]
  | a[ a' gis g] fis[ f16 e] d[ c! d e]
  | f[ e f g] a8[ a,16 b] c![ b c d] e[ d e fis]
  %35
  | g[ f! g a] bes8[ bes,16 c] d[ c d e] f[ e f g]
  | a[ g a bes] c8[ c,16 d] e[ d e fis] g[ fis g a]
  | bes[ g a bes] c8.[ bes16] a[ bes a g] fis4
  | \voiceFour g2_~ g4. g8
  | fis f e es d2
  %40
  | es2 d
  | c8[ d es e] fis g d4
  | g, e\rest s2
  | s1*3
  | R1
  %47
  | \oneVoice \highlightSubject { es8[ es16 es] es[ f d es] f8[ f16 f] f[ g es f]
  | g8[ g16 f] g[ es bes' g] es'8[ d16 c] bes[ es g, as]
  | \unHighlightSubject bes[ } c f, g] a[ bes es, f] g[ a d, es] f[ g c, d]
  %50
  | es[ d es f] g[ f g as] bes[ as bes c] d[ c d es]
  | f,[ es f g] as[ g as bes] c[ bes c d] es[ d es f]
  | g,[ f g a!] b[ g a b] c[ b c d] es[ c d e]
  | f[ e f g] as[ f g as] b,8[ c f, g]
  | c,[ c'16 d] es8[ c] f[ d] g4
  | d16\rest c[ es g] c4 d,2\rest
  | s1*6
  %62
  | \change Staff = "lower"
    R1
  | \highlightSubject { g8[ g16 g] g[ a fis g] a8[ a16 a] a[ bes g a]  
  | b8[ } g] c4~ c8[ f,] \once\tieDashed bes4~
  %65
  | bes8[ c, as' f] g[ c, g' es]
  | \highlightMotif { f[ f16 f] f[ es g f] es8[ es16 es] es[ d f es]
  | d4 } es2 f4
  | bes,8 d\rest d4\rest d\rest d8\rest bes' ~
  | bes a4 g8~ g f4 es8~
  %70
  | es[ d16 c] bes8[ bes'~] bes[ a16 g] f8[ \clef "treble" f'~]
  | f[ es!16 d] c8[ c'~] c16[ c bes! as] bes8[ g]
  | a!16[ bes a g] a8[ f!] g16[ a g f!] g8[ es!]
  | f16[ g f es] f8[ d] es16[ f es d] es8[ c]
  | d16[ es d c] d8[ bes] c16[ d c bes] c8[ a]
  %75
  | bes[ c bes a] c16[ d c bes] a[ bes c a] d[ es d c] bes[ c d bes] es[ f es d] c[ d es c]
  | f2 b16\rest g[ f e] f4
  | f~ f16[ g f e] f[ es d c] d4~
  | d16 f g a bes2~ bes16 bes c d
  | es16[ f es d] c[ bes a g] f8.[ g16] a8[ f]
  %80
  | g b\rest b4\rest \clef "bass" d,,16\rest bes'[ a g] f[ es d c]
  | bes[ c d es] f[ g a bes] \highlightSubject { bes,8[ bes16 bes] bes[ c a bes]
  | c8[ c16 c] c[ d bes c] d8[ d16 c] d[ bes f' d]
  | bes'4 } a2 g4
  | f8[ f16 f] f[ g es! f] g8[ g16 g] a[ bes g a]
  %85
  | bes[ c bes a] g[ a g f] es[ f es d] c[ es d c]
  | bes8 d\rest d4\rest d8\rest bes bes'4~
  | bes8 a4 g8_~ g f4 es8_~
  | es d r16 bes'16 a g f g f es d es d c
  | \highlightSubject { bes8[ bes16 bes] bes[ c a bes] c8[ c16 c] c[ d bes c]
  %90
  | d8[ d16 c] d[ bes f' d] bes'8[ a16 g] f[ bes d, es]
  | \unHighlightSubject f[ } g c, d] es[ f bes, c] \voiceFour d[ es a, bes] c[ d g, a]
  | bes a bes c d c d es f es f g a f g a
  | \oneVoice bes16[ a g f] es c f es d bes es d c d c bes
  | a8[ bes f' f,] bes2
  \fine
}

forceBreaks = {
  % breaks are already encoded inline in each voice (carried over from the
  % source edition's own pagination via the OMR pass)
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
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 954"
    title = \markup { "Fuga B-Dur" }
    subtitle = \markup \abs-fontsize #8 \normal-text {
      "über das Thema der Allegro-Fuge aus der"
      \italic { "Sonata sexta" } 
      "des" \italic { "Hortus musicus" }
      "von Johann Adam Reinken"
    }
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
