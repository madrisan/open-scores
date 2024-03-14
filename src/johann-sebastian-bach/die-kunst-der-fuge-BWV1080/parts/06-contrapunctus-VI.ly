Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  %1
  | R1
  | \highlightSubjectFirstInv { a'4^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 d,8. e16 f8. g16 a4
  | bes a8. g16 f4~ f16 e f g
  | \unHighlightSubject a8.[ } g16] f e d c bes4\trill a~
  %5
  | a8. b16 c4~ c8. b16 cis8. d16
  | e4~ e16 f e d cis4 d8. e16
  | f8.[ e16 f8. d16] e2~
  | e8.[ d16 c8. b16] a8.[ a'16 g8. f16]
  | e4 r r2
  %10
  | r \highlightSubjectFirst { a,4^\markup \subject #'(0 . 0) #1 e'8. d16
  | c8. b16 a4 gis a8. b16
  | c4~ c16 d c b \unHighlightSubject a2~ }
  | a4.~ a32 a bes c d2~
  | d4.~ d32 d e f g2~
  %15
  | g8.[ f32 e] f8.[ g16] a8.[ g32 f] e8. fis16
  | g4 r \highlightSubjectFirstInv { a^\markup \scale #'(1 . -1) \subject #'(2.2 . 0) #1 d,8. e16
  | f8. g16 a4 bes a8. g16
  | f4~ f16 e f g a4 } r
  | \override MultiMeasureRest.staff-position = #8
    R1*2
  %21
  | r2 r8. \stemUp d,16 c8. bes16
  | a8. bes16 c4~ c8~ c32 f, g a bes8.[ bes16]
  | bes8.[ a32 g] a8. bes16 c8.[ c16 d8. e16]
  | f8.[ e16 f8. g16] e8. d16 e4~
  %25
  | e8.[ d32 cis] d8~ d32 c bes a g8. bes16 a8. g16
  | f4~ f16 e d cis d4 b'8.\rest d16
  | g,4~ g16 bes a g f a b cis d4
  | r16 c! d e f8.[ e32 d] c2~
  | c8.[ a16 d8. c16] bes2~
  %30
  | bes8.[ g16 c8. bes16] a2~
  | a8.[ g32 f] g8.[ e16] f8.[ g16]
    \shape #'((0.5 . 0.5) (0 . 0) (0 . 0) (0 . 0)) Tie
    e4_~
  | e8.[ d32 cis]
    \shape #'((0.5 . 0.5) (0 . 0.5) (0 . 0.5) (-0.5 . 0)) Tie
    d4~ d8.[ e16 f8. d16]
  | g8~[ g32 e' f g] f8.[ e16] d8.[ c16] bes4
  | a8 r r4 r2
  %35
  | \highlightSubjectFirstInv { d2^\markup \scale #'(1 . -1) \subject-augmentatio #'(0 . 0) #1 "+"
    g,4. a8
  | bes4. c8 d2
  | ees d4. c8
  | bes2~ bes8. a16 bes8. c16
  | \unHighlightSubject d4~ } d16 ees d c bes d ees f g4~
  %40
  | g16[ aes g f] ees d c bes! a!8.\trill[ g32 f] bes4~
  | bes16[ a g a] bes c d e! f8.[ ees16] d c bes a
  | bes8.[ c32 d] g,8. g'16 bes,8~[ bes32 a g a] a8. bes16
  | bes4 r8 r16 c f,8~[ f32 g f e] f8. g16
  | a4~ a16 g a b c8. g16 c4~
  %45
  | c b16 a b cis d8. e16 f4~
  | f8.[ f16 e8. d16] cis8. a16 d4~
  | d8.[ c!32 b] c4~ c8.[ bes32 a] bes4~
  | bes16 bes a g f4~ f8. g16 a8. bes16
  | g8.[ e'32 f] g8.[ cis,16] d8.[ e16 cis8.\prall d16]
  %50
  | d8.[ e16 f8. g16] a4~ a8~[ a32 a g f]
  | e2~ e8. d16 e8. f16
  | g4~ g8~[ g32 g f e] d2~
  | d8.[ cis16 d8. e16] f4~ f8~[ f32 f e d]
  | c2~ c8. c16 f8. e16
  %55
  | d8. c16 bes4~ bes8. e,16 a8. g16
  | f8. fis16 g8. a16 bes8. b16 cis8. d16
  | \highlightSubjectFirst { e4^\markup \subject #'(0 . 0) #1 a8.[ g16] f8. e16 d4
  | cis d8. e16 f4~ f16 g f e
  | d4 } r r2
  | \override MultiMeasureRest.staff-position = #4
    R1*2
  | s1*2
  %64
  | r2 \highlightSubjectFirstInv { a2^\markup \scale #'(1 . -1) \subject-augmentatio #'(0 . 0) #1 "+"
  %65
  | \once\override NoteColumn.force-hshift = #0.5 d,4.
    e8 f4. g8
  | a2 bes
  | a4. g8 f2~
  | f8.[ e16 f8. g16] \unHighlightSubject a2~ }
  | a8~[ a32 d, e f] g2.~
  %70
  | g8~[ g32 c, d e] f4~ f8. d16 g8. f16
  | e8. g16 c8. bes16 a8. c16 f8. ees16
  | d4. r16 d cis4. r16 e
  | a,4\fermata r8 e'32[ f g16] f e d cis d4~
  | d8. e16 cis8. d16 d4 r
  %75
  | r2 \highlightSubjectFirstInv { d^\markup \scale #'(1 . -1) \subject-augmentatio #'(2.5 . 0) #1 "+" }
    << {
  |   \highlightSubjectFirstInv { g,4. a8 bes4. c8
  |   \once\override NoteColumn.force-hshift = #0.9 d2
      \once\override NoteColumn.force-hshift = #0.8 ees
  |   \once\override NoteColumn.force-hshift = #0.8 d4.
      c8 \tieDown bes2^~
  |   \stemDown bes8. a16 bes8. cis16 d2 }
    } \new Voice {
  |     \stemUp \tieUp g2\rest a8.\rest d,16 g8. fis16
  |     % this weird \shiftOn is required to remove a few build warnings
        \once\override NoteColumn.force-hshift = #0 \shiftOn g8.[
        a16 bes8. g16]
        \once\override NoteColumn.force-hshift = #0 a8.[
        bes32 c] bes16 a g fis
  |     \once\override NoteColumn.force-hshift = #0 g1~
  |     \voiceOne g8. fis16 g8. e16 fis!2\fermata
    } >>
    \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  | R1*2 %1 to 2
  | r2 \highlightSubjectFirst { d4_\markup \subject #'(1.5 . 0) #1 a'8. g16
  | f8. e16 d4 cis d8. e16
  %5
  | f4~ f16 g f e d4 } e8. f16
  | g4 f~ f8.[ e16 f8. g16]
  | a2~ a8.[ b16] c8~[ c32 b a gis]
  | \highlightSubjectFirst { a2_\markup \subject-augmentatio #'(-3 . 0) #1 "+" e'4. d8
  | c4. b8 a2
  %10
  | gis a4. b8
  | c2~ c8.[ d16 c8. b16]
  | \unHighlightSubject a4~ } a8. gis16 a4.~ a32 g f e
  | f2~ f4.~ f32 f g a
  | bes2~ bes8.[ b16] d8[ cis32 b cis d]
  %15
  | e4~ e8.[ d32 cis] d4~ d8. c16
  | bes8.[ g16 f8. e16] d8. cis'16 d4~
  | d8.[ b16 cis8. a16] f8.[ e16 f8. g16]
  | a4~ a8. bes16 \stemDown a8. g'16 \stemNeutral f e d cis
  | \stemUp d4^~ d16 c b a b8. \highlightSubjectFirst { \unHighlightSubject g16 } c4^~
  %20
  | c8.[ b32 a] b8.^\trill c16 c8. bes16 a8.[^\trill g32 a]
  | \stemDown bes8.[ d16 c8. bes16] a4~ a8. g16
  | f8. g16 f8. ees16 d4 g~
  | g8. e16 f4~ f8.[ e16 f8. g16]
  | a4 d g, r
  %25
  | \highlightSubjectFirst { f2_\markup \subject-augmentatio #'(1 . 0) #1 "+" c'4. bes8
  | a4. g8 f2
  | e f4. g8
  | a2~ a8.[ bes16 a8. g16]
  | \unHighlightSubject f2~ } f8.[ d16 g8. f16]
  %30
  | e2~ e8.[ c16 f8. e16]
  | d2. cis4
  | \highlightSubjectFirstInv { a'4^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,8.[ e16] f8.[ g16] a4
  | bes a8. g16 f4~ f16 e f g
  | \unHighlightSubject a8.[ } bes16 c8. d16] g,8. ees'16 a,8.[ bes32 c]
  %35
  | fis,8. a16 d,4~ d8.[ d16 e8. fis16]
  | g8.[ fis16 g8. a16] bes8.[ c32 d] c16 bes a g
  | c8.[ bes32 a] bes8.[ fis16] g8.[ a32 bes] e,8. fis16
  | g4 r r2
  | R1*3
  %42
  | \highlightSubjectFirstInv { f4_\markup \scale #'(1 . -1) \subject #'(1 . 0) #1 bes,8.[ c16] d8. ees16 f4
  | g f8. ees16 d4~ d16 c d e
  | \unHighlightSubject f8. } c16 f2 e16 d e fis
  %45
  | g8. d16 g2 f8~[ f32 a bes c]
  | d4 g,2 f8. d16
  | e4 a8.[ g16] f8. e16 d8. cis16
  | d2~ d8. e16 f8. g16
  | e4 r8 r16 \stemDown g \stemNeutral
    \stemDown f8. g16 a4~
  %50
  | a r r8 r32 e' d cis d4~
  | d~ d8~[ d32 d c b] c4 r
  | r8 r32 d c b c2~ c8~[ c32 c bes a]
  | bes4 r r8 r32 c bes a bes4~
  | bes~ bes8~[ bes32 bes a g] a2~
  %55
  | a8. d,16 g8. f16 e8. d16 cis4
  | d2~ d16[ d e f] e d cis b
  | cis4~ cis16 a b cis d8. e16 f8. g16
    \highlightSubjectFirstInv { a2_\markup \scale #'(1 . -1) \subject-augmentatio #'(1.3 . 0) #1 "+"
    \stemUp d,4. e8
  | f4. g8 a2
  %60
  | bes a4. g8
  | f2^~ f8. e16 f8. g16
  | \unHighlightSubject a4~ } a16 c, d e f[ g f e] d f g a
  | bes[ c bes a] g g, a bes c[ d c bes] a bes a g
  | f8~ f32 a b cis] \stemDown d4~ d8. cis!16 d8. e16
  %65
  | f4 r \highlightSubjectFirst { d_\markup \subject #'(1.3 . 0) #1 a'8. g16
  | f8. e16 d4 cis d8. e16
  | f4~ f16 g f e \unHighlightSubject d8. } a16 bes8. c16
  | d2~ d8.[ a16 d8. c16]
  | bes8. a16 bes4~ bes8. g16 c8. bes16
  %70
  | a8. g16 a2 g8. d'16
  | c8. e16 f8. g16 f8. g16 a4~
  | a8.[ fis16 g8. a16] bes4. r16 bes
  | e,4 r8 cis' d r r8. e,16
  | f8. g16 e8. g16 g8~[ g32 g fis e] fis8. a16
  %75
  | d,8.[ c16 bes8. ees16] a,8~[ a32 a' bes c] bes16 a g fis
  | g8. d16 e8. fis16 \highlightSubjectFirst { g4_\markup \subject #'(1 . 0) #1 d'8. c16
  | bes8. a16 g4 fis g8. a16
  | bes4~ bes16 c bes a \unHighlightSubject g4~ } g16 a g fis
  | \once\override NoteColumn.force-hshift = #0.4 e8
    r r8.
    \once\override NoteColumn.force-hshift = #0.4 g16 a2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  | s1*6
  | \highlightSubjectFirstInv { d4^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 a8. b16 c8. d16 e4
  | f e8. d16 c4~ c16 b c d
  | \unHighlightSubject e2. } d4~
  %10
  | d8.[ b16 e8. d16] c8.[ d16 c8. b16]
  | a8. e'16~ e8. dis16 e8. b16 c8. gis16
  | a8. e16 f4~ f16 g f e d4~
  | d8~[ d32 a' bes c] d8.[ c16] bes8. c16 bes8. a16
  | g8~[ g32 d' e f] g8.[ f16] e8.[ f16] e8.[ d16]
  %15
  | cis4 a~ a r
  | \highlightSubjectFirst { d2^\markup \subject-augmentatio #'(2.2 . 0) #1 "+"
    \staffUpper
    \stemDown
    a'4. g8
    \staffLower
    \stemUp
  | f4. e8 d2
  | cis d4. e8
  | \staffUpper
    \stemDown
    f2_~ f8. g16 f8. e16
  %20
  | d4 } d\rest
    \highlightSubjectFirstInv { c2_\markup \scale #'(1 . -1) \subject-augmentatio #'(1.2 . 0) #1 "+"
  | \staffLower
    \stemUp
    f,4. g8 a4. bes8
  | c2 d
  | c4. bes8 a2~
  | a8.[ g16 a8. b16] c4 } r
  %25
  | \override MultiMeasureRest.staff-position = #8
    R1
  | \highlightSubjectFirstInv { c4^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 f,8.[ g16] a8.[ bes16] c4
  | des c8. bes16 a4~ a16 g a bes
  | \unHighlightSubject c4~ } c16 b c d e4 r
  %30
  | \override MultiMeasureRest.staff-position = #6
    R1
  | \override MultiMeasureRest.staff-position = #8
    R1
  | \highlightSubjectFirst { d,2^\markup \subject-augmentatio #'(2.4 . 0) #1 "+" a'4. g8
  | f4. e8 d2
  | cis d4. e8
  | f2~ f8.[ g16 f8. ees16]
  %35
  | \unHighlightSubject d8. } fis16 g8. a16 bes4 c
  | d~ d16 c bes a g4 r
  | r2 \highlightSubjectFirstInv { d'4^\markup \scale #'(1 . -1) \subject #'(2.4 . 0) #1 g,8. a16
  | bes8. c16 d4 ees d8. c16
  | bes4~ bes16 a bes c \unHighlightSubject d4~ } d16 g, a b
  %40
  | c4 r r2
  | R1
  | s1*6
  | \highlightSubjectFirst { d,4^\markup \subject #'(2.2 . 0) #1 a'8. g16 f8. e16 d4
  | cis d8. e16 f4~ f16 g f e
  %50
  | \unHighlightSubject d8.[ } cis16 d8. e16] f8 r r4
  | r8 r32 e fis gis a4~ a8 r r4
  | r2 r8 r32 d, e fis g4~
  | g8 r r4 r2
  | r8 r32 c, d e f4~ f16[ g f e] d f g a
  %55
  | bes[ c bes a] g f e d cis[ g' a bes] a g f e
  | d[ a' bes c] bes a g fis g2~
  | g16 bes a g \stemDown f2 bes4
  | \stemUp a r
    \staffUpper
    \stemDown
    \highlightSubjectFirst { d_\markup \subject #'(-2 . 0) #1 a'8. g16
  | f8. e16 d4 cis d8. e16
  %60
  | f4_~ f16 a g f \unHighlightSubject e } f e d cis4
  | d8. a16 d8~[ d32 c bes a] bes8. g16 c4_~
  | c a\rest a2\rest
  | a\rest
    \staffLower
    \stemUp
    \highlightSubjectFirst { f4^\markup \subject #'(2 . 0) #1 c'8. bes16
  | a8. g16 f4 e f8. g16
  %65
  | a4~ a16 bes a g \unHighlightSubject  f[ } g f e] d8. a'16
  | d8. c16 bes8. a16 g8 r r4
  | r16 e f g a4~ a16 bes a g f4~
  | f16 e d cis d2 r8. d16
  | g8. f!16 e8. d16 e4~ e8. c16
  %70
  | f8. e16 d8. cis16 d4~ d8. g16~
  | g4 r8 r16 e a8.[ g16 f8. c'16]
  | d8.[ c16 bes8. a16] g4. r16 g
  | g4 r8 a a r r8. bes16
  | a8.[ bes16] a8 r \highlightSubjectFirst { a4^\markup \subject #'(2.2 . 0) #1 d8. c16
  %75
  | bes8. a16 g4 fis g8. a16
  | bes4~ bes16 c bes a \unHighlightSubject g4. } a8
  | bes8.[ c16 d8. bes16] c8.[ a16 bes8. c16]
  | d8~[ d32 d, e fis] g8. a16 bes8. c16 d c bes a
  | \stemUp
  | << {
      g8 r r8. <bes e>16 <a d>2\fermata
    } \new Voice {
      \stemDown s4. s16 g fis2
    } >>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  %1
  | \highlightSubjectFirst { d2
    _\markup \italic \tiny \with-color #greyTextColor {
        \ieyeglasses
      "In Contrapunctus 6 there are 14 entries of the subject rectus and 14 entries inversus"
    }
    ^\markup \subject-augmentatio #'(0 . 0) #1 "+"
    a'4. g8
  | f4. e8 d2
  | cis d4. e8
  | f2~ f8.[ g16 f8. e16]
  %5
  | \stemUp \unHighlightSubject d8.[ } d,16 e8. f16] g8.[ a16 g8. f16]
  | e8.[ e'16 f8. g16] \stemNeutral a8.[ bes16 a8. g16]
  | f4 d a'2~
  | a1~
  | a8.[ e16 a8. g16] f8.[ e16 f8. d16]
  %10
  | e4. e8 f8. e16 fis8. gis16
  | a8. g!16 f4 e2
  | R1*3
  %15
  | \highlightSubjectFirstInv { a4_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,8. e16 f8. g16 a4
  | bes a8. g16 f4~ f16 e f g
  | a2 } c,4\rest c8\rest bes'!
  | a8. g16 f4~ f8~[ f32 g f e] d4
  | r8 r32 d e f \tieUp g4~ g8~[ g32 e f g] a8. g16
  %20
  | f8. d16 g8. f16 e8~[ e32 c d e] f8. ees16
  | \once\override NoteColumn.force-hshift = #0.4 d8. c16 d8. e!16 f8. e16 f8. g16
  | a4_~ a8~[ a32 f g a] bes8. a16 g8. f16
  | e!8. c16 \tieDown f4~ f8.[ g16 f8. e16]
  | d2 c8~[ c32 g' a bes] c8. bes16
  %25
  | a8. f16 bes8. d16 e,4~ e8~[ e32 c d e]
  | f8. e16 d4~ \stemDown d16[ d c bes] a f g a
  | bes[ g a bes] c8. cis16 d cis d e f4~
  | f16 e f g a4~ a8.[ g16 f8. e16]
  | \stemUp d4~ d8~[ d32 d, e f] g4~ g8~[ g32 f e d]
  %30
  | c4~ c8~[ c32 c' d e] \stemDown \tieUp f4~ f8~[ f32 e d c]
  | bes2 \tieDown a~
  | a1~
  | a4. a8 bes8. a16 g4
  | f8.[ g16 a8. bes16] c2~
  %35
  | c4. c8 bes4. a8
  | \highlightSubjectFirst { g4_\markup \subject #'(1.3 . 0) #1 d'8. c16 bes8. a16 g4
  | fis g8. a16 bes4~ bes16 c bes a
  | \unHighlightSubject g8 } g'~ g~[ g32 f ees d] c8. f16 g8. a16
  | bes8. a16 g4~ g8. f16 ees4~
  %40
  | ees8. d16 c8. d16 ees[ g f ees] d c bes a
  | \stemUp g8. f16 g8. bes16 a[ f g a] bes c d ees
  | \stemDown d4 ees f2~
  | f16[ ees32 d ees16 c] \stemUp a8.^\trill[ g32 a] \stemDown bes8. bes'16 a8. g16
  | f8.[ f,16 ees8. d16] \stemUp c8.[ c'16 bes8. a16]
  %45
  | g8.[ g'16 f8. e16] d8~[ d32 a' b cis] d8. c16
  | \stemDown bes8.[ a16 bes8. g16] a4 d,\rest
  | \stemUp
    \highlightSubjectFirstInv { a2_\markup \scale #'(1 . -1) \subject-augmentatio #'(0 . 0) #1 "+"
    d,4. e8
  | \stemDown f4. g8 a2
  | bes a4. g8
  %50
  | f2~ f8.[ e16 f8. g16]
  | \unHighlightSubject a2~ } a8~[ a32 c b a] g8~[ g32 a g f]
  | e8.[ d16 e8. f16] g2~
  | g8~[ g32 bes a g] f8~[ f32 g f e] d8.[ c16 d8. e16]
  | f2~ f8 r r4
  | R1*3
  %58
  | r8 r16 a b8. cis16 d8. e16 f4~
  | f8~[ f32 f g a] bes8. bes,16 a[ bes' a g] f e d cis
  %60
  | d[ c'! bes a] g f e d cis[ d' cis b] a g f e
  | d[ e d c] bes a g f g[ d' c bes] a g f e
  | f[ c' d e] f g f e d[ f g a] bes c bes a
  | g[ g, a bes] c d c bes a[ bes a g] f4~
  | f~ f8~[ f32 e d g] a16[ bes' a g] f e d8~
  %65
  | d16[ c bes a] bes g cis8 d16[ bes a g] f g f e
  | d[ a' bes c] d e f8 r16 e[ f g] f e d cis
  | d2.~ d16 ees d c
  | bes4~ bes16 bes a g fis4 r
  | r r8 r16 g c8~[ c32 d c bes] a4
  %70
  | r r8 r16 f bes8~[ bes32 c bes a] bes8. b16
  | c8. bes!16 a8. c16 f8.[ ees16 d8. f16]
  | bes8.[ a16 g8. f16] e8.[ f16 e8. d16]
  | cis4\fermata r8 a d8. e16 f8. g16
  | a8.[ g16 a8. a,16] d2~
  %75
  | d1~
  | d~
  | d~
  | d~
  | d\fermata
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
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 6"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus VI" }
    subsubtitle = "[per Diminutionem] in Stilo Francese"
  }
  \layout { }
  \midi { \tempo 4=100 }
}
