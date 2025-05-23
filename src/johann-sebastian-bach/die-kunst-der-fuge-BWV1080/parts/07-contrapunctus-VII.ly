Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusVII
  %1
  | R1
  | \highlightSubjectFirstInv { a'2^\markup \scale #'(1 . -1) \subject-augmentatio #'(2.5 . 0) #1 "+"
    d,4. e8
  | f4. g8 a2
  | bes a4. g8
  %5
  | f2~ f8 e f g
  | \unHighlightSubject a4~ } a16 g f e d4~ d16 d e f
  | e d c b
    \stemUp
    \once\override NoteColumn.force-hshift = #0.2 a8
    r r16 e'[ a g] f e d c
  | b4 r r16 d e f g4~
  | g16 g f e f4~ f16 g f e d4~
  %10
  | d16 f e d cis4~ cis16 cis d e f4~
  | f16 e f g a4 g~ g16 bes a g
  | fis4~ fis16 fis g a d,4 ees
  | d r \highlightSubjectFirst { a^\markup \subject #'(-0.5 . 0) #1 d8. c16
  | bes8. a16 g4 fis g8. a16
  %15
  | bes4~ bes16 c bes a \unHighlightSubject  g4~ } g16 aes g f
  | ees g a! bes c4~ c16[ c bes a] bes c d ees
  | f ees d c bes4~ bes16[ a g f] e! g f e
  | f4. bes8~ bes16[ bes a g] a8 b16 c
  | d[ b c d] g,8 ees' d4. e8
  %20
  | f2~ f8. ees16 d4~
  | d16[ a d8~] d16 c d ees f4~ f16 g f ees!
  | d4~ d16 d c bes a ees' d8 c4~
  | c16[ bes a g] a g f8 c'4~ c16 b c d
  | g,4 r \highlightSubjectFirstInv { c^\markup \scale #'(1 . -1) \subject #'(-1 . 0) #1 f,8. g16
  %25
  | a8. bes16 c4 d c8. bes16
  | a4~ a16 g a bes \unHighlightSubject c4~ } c16 d c b
  | c d e f g4~ g16 f e d cis4
  | d r16 a b cis d e f4 e8~
  | e16[ e a g] f e d cis d[ bes a g] f e d cis
  %30
  | d[ a' d8~] d16 f e d e[ a8 a,16] bes d g g,
  | a[ c f e] d8. e16 a,8[ d~] d16 e d c
  | f8[ bes,!~] bes16 c bes a g8[ g'~] g16 bes a g
  | fis8[ f~] f16 a g fis e8[ ees~] ees16 g f ees
  | d4 cis8 c~ c8[ bes16 a] g f' e d
  %35
  | cis8. d16 e8. cis16 d[ f e d] cis e a, g
  | f[ g f e] d f bes a g[ f e f] g bes d cis
  | d4 r16 d c bes a4 r16 cis d e
  | f g f e \highlightSubjectFirst { d4^\markup \subject-augmentatio #'(2.5 . 0) #1 "+" a'4. g8
  | f4. e8 d2
  %40
  | cis d4 e
  | f2~ f8 g f e
  | \unHighlightSubject d16[ } a d8~] d16 e d cis
    d8[ \highlightSubjectFirstInv { a'^\markup \scale #'(1 . -1) \subject #'(0.8 . 0) #1 d,8. e16]
  | f8. g16 a4 bes a8. g16
  | f4~ f16 e f g \unHighlightSubject a } f e d c8 r
  | \override MultiMeasureRest.staff-position = #4
    R1
  | s1*4
  %50
  | \highlightSubjectFirst { d1^\markup \subject-augmentatio #'(0 . 0) #1 "++"
  | a'2. g4
  | f2. \once\override NoteColumn.force-hshift = #-0.4 e4
  | d1
  | cis
  %55
  | d2. e4 }
    \stemUp \tieUp << {
  |   \shape #'((0 . 1.5) (0 . 2) (0 . 3) (0 . 0)) Tie
      \override NoteHead.color = \subjectFirstColor
      f1~
  |   f4 g f e
  |   d2~
      \revert NoteHead.color
      d16[ e d cis] d e f e
  |   g[ f e d] e cis d8~ d4 cis
  %60
  |   d4. d8 cis[ c~] c16 ees d cis
  |   bes[ a g bes~] bes bes a g fis2\fermata
    } \new Voice {
        \stemDown \tieDown
  |     r16 \stemUp d' c bes a4^~ a16[ bes a g] f8 g16 a
  |     \shiftOn bes8[ d] cis e~ e d4 cis8
  |     \stemDown
        \once\override NoteColumn.force-hshift = #1.1
        \shiftOn d16[ bes a g] f a8 gis16 b8 f\rest f4\rest
  |     r r8 f~ f16[ d e f] g a bes g
  %60
  |     fis a g fis g4~ g8 bes a4
  |     d, cis d2_\fermata
    } >>
    \bar"|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  | s1*2
  | \highlightSubjectFirstInv { d'4_\markup \scale #'(1 . -1) \subject #'(0.8 . 0) #1 a8. b16 c8. d16 e4
  | f e8. d16 cis4~ cis16 a b cis
  %5
  | \unHighlightSubject d } bes! a g f4~ f16 a b cis d4~
  | d16 d c! b c4~ c16 c b a gis4
  | \highlightSubjectFirst { a_\markup \subject #'(1.2 . 0) #1 e'8. d16 c8. b16 a4
  | gis a8. b16 c4~ c16 d c bes
  | \unHighlightSubject a4~ } a16 a b cis d4~ d16 c bes a
  %10
  | g4~ g16 e f g a4~ a16 g a b
  | c8 d16 e f4~ f16 f ees d ees4~
  | ees16 d c bes c4~ c16[ c bes a] g8 c
  | fis,16 d e fis g4~ g16 g fis e fis!4
  | g8. f!16 ees4
    \highlightSubjectFirstInv { d2_\markup \scale #'(1 . -1) \subject-augmentatio #'(1.5 . 0) #1 "+"
  %15
  | \staffLower
    \stemUp
    g,4. a8
    \staffUpper
    \stemDown
    bes8. c16 d4
  | ees2
    \staffLower
    \stemUp
    d4. c8
  | \shape #'((0 . 0.5) (0 . 2.2) (0 . 3) (0 . 1.2)) Tie
    bes2^~ bes8 a bes c
  | \staffUpper
    \stemDown d4 } r r r8
    aes'
  | g r r c~ c16 c bes a bes4~
  %20
  | bes16[ bes a g] a bes c8~ c16[ bes a8~] a16 d, g8~
  | g f16 g a4~ a16 bes c a bes4~
  | bes16 bes a g f2~ f16 g f e
  | \highlightSubjectFirst { f4_\markup \subject #'(1.3 . 0) #1 c'8. bes16 a8. g16 f4
  | e f8. g16 a4~ a16 bes a g
  %25
  | \unHighlightSubject f4~ } f16 g f ees d[ e f8~] f16 f e8~
  | e16 e d cis d4 c16 e f g a4
  | g8.[ a16] bes d, cis b cis4 r16 bes'! a g
  | a g f e \stemDown d8 \stemNeutral r r16 a'[ d c] \stemDown bes a bes g
  | e8 r r4 \highlightSubjectFirst { d_\markup \subject #'(1.3 . 0) #1
    \once\override Beam.positions = #'(-4 . -5.8)
    a'8. g16
  %30
  | f8. e16 d4 cis d8. e16
  | f4~ f16 g f e d4 } r
  | \override MultiMeasureRest.staff-position = #-6
    R1
    \override MultiMeasureRest.staff-position = #-4
    R1*2
  %35
  | \once\override NoteColumn.force-hshift = #0.7
    \highlightSubjectFirstInv { a'1^\markup \scale #'(1 . -1) \subject-augmentatio #'(0.8 . 0) #1 "++"
  | d,2. e4
  | f2. g4
  | a1
  | bes
  %40
  | a2. g4
  | f1~
  | f4 e f g
  | a_\markup \scale #'(1 . -1) \subject #'(1.3 . 0) #1 } \highlightSubjectFirstInv { d,8. e16 f8. g16 a4
  | bes a8. g16 f4~ f16 e f g }
  %45
  | \highlightSubjectFirst { a4^\markup \subject #'(0 . 0) #1 d8. c16 bes8. a16 g4
  | \stemUp fis g8. a16 bes4~ bes16 c bes a
  | \unHighlightSubject g4^~ } g16 fis g a bes[ c bes a] g f e d
  | e4^~ e16 e f g a8 d,4 c16 bes
  | a[ c d e] f g a bes c8[ ees,~] ees16 g f ees
  %50
  | \stemDown d4 r r16 \stemUp a'[ bes c] bes a g f
  | e8 \stemDown \highlightSubjectFirstInv { e'^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 }
    \stemUp \highlightSubjectFirstInv { a,8. b16 cis8. d16 \stemDown e4
  | f e8. d16 cis4~ \stemUp cis16 a b cis
  | \stemDown d4 } a~ a8[ g16 a] bes8 g~
  | g16[ a g f] e d e f g8 bes \highlightSubjectFirst { e,4_\markup \subject #'(1.3 . 0) #1
  %55
  | a8. g16 f8. e16 d4 cis
  | d8. e16 f4~ f16 g f e \unHighlightSubject d4~ }
  | d8 bes'4 a16 g a8 f g e
  | f r r d~ d a\rest a4\rest
  | a\rest a8\rest
    \staffLower
    \stemUp
    gis a2
  %60
  | <d, bes'>4^~ \stemDown bes'16 c bes a g fis e a fis4
  | s2 \stemUp a^\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  %1
  | \staffUpper
    \stemDown
    \highlightSubjectFirst {
    d4
    _\markup \subject #'(1.2 . 0) #1
    a'8. g16 f8. e16 d4
  | cis d8. e16 f4~ f16 g f e
  | \staffLower
    \unHighlightSubject d[ } cis d8~] d16 d c b] a[ gis a8~ ]a16 a b cis
  | d[ c! bes! a] g fis g8~ g16[ bes a g] f8. e16
  %5
  | \stemUp d4~ d16 a' b cis d4~ d16 a g f
  | % FIXME: not sure this is to be considered a subject
    %\highlightSubjectFirst {
      e4 %^\markup \subject #'(2.5 . 0) #1
      a8. g16 f8. e16 d4
  |   c16[ d e8~] e16 e \unHighlightSubject fis
    %}
    gis a4 r
  | r16 b[ e d] c b a gis a8 r r4
  | \highlightSubjectFirstInv { a4^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 d,8. e16 f8. g16 a4
  %10
  | bes a8. g16 f4~ f16 e f g
  | \unHighlightSubject a4~ } a16 g a bes c8.[ g16] c8. bes16
  | a4~ a16 d, e fis g4~ g16 fis g a
  | bes4~ bes16 a bes c d4~ d16 c bes a
  | g4~ g16 g a bes a4 r
  | \override MultiMeasureRest.staff-position = #4
    R1
  | \once\override MultiMeasureRest.X-offset = #-0.4
    R1
  %17
  | \stemDown
    \once\override NoteColumn.force-hshift = #1.1
    \highlightSubjectFirst { bes4^\markup \subject #'(0 . 0) #1
    \stemUp f'8. ees16
    \stemDown
    \once\override Beam.positions = #'(1 . 1)
    d8.[ c16]
    \once\override NoteColumn.force-hshift = #1 bes4
  | \stemUp a bes8. c16 d4~ d16 ees d c
  | \unHighlightSubject b } d ees f g4~ g8[ d~] d16 d c bes
  %20
  | \highlightSubjectFirst { c4^\markup \subject #'(2.5 . 0) #1 f8. ees16 d8. c16 bes4
  | a4. bes16 c d4~ d16 ees d c
  | \unHighlightSubject bes4~ } bes16 bes a g f8[ bes~] bes16 bes a g
  | a g f e \highlightSubjectFirst { f2.^\markup \subject-augmentatio #'(2.5 . 0) #1 "++"
  | c'2. bes4
  %25
  | a2. g4
  | f1
  | e
  | f2. g4
  | a1~
  %30
  | a4 bes a g
  | f } r8 g~ g16[ a g f] e8 a~
  | a16[ bes a g] f a d c bes8 b c cis
  | d16[ c! b a] b8 bes~ bes16[ d c bes] a8
    \staffUpper
    \stemDown
    a'_~
  | a16[ a g f] e8 ees d cis d g_~
  %35
  | \voiceOne \stemDown g16[ f e d]
    \voiceThree \stemDown cis8 e
    \staffLower
    \stemUp
    a, r r cis,
  | d r r4 \highlightSubjectFirst { d2^\markup \subject #'(2.5 . 0) #1
  | a'4. g8 f4. e8
  | d2 cis
  | d4. e8 f2~
  %40
  | f8 g f e \unHighlightSubject
    \once\shape #'((0 . 0) (0 . -1.5) (0 . -1) (0 . 0)) Tie
    d2_~ }
  | d4 r8 cis~ cis16[ e d cis] d e f g
  | a g f g a4 r16 ees'[ d c] bes a g8
  | d'4 r8 d~ \stemDown d16[ cis d e] f g f e
  | d4 \stemUp c2.
  %45
  | c16[ ees d c] bes8. a16 g4 r8 ees'!
  | a, r \highlightSubjectFirstInv { d4^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1  g,8. a16 bes8. c16
  | \staffUpper
    \stemDown
    d4 ees d8. c16 bes4_~
  | bes16 g a bes \unHighlightSubject c4_~ } c16[ c bes a]
    \staffLower
    \stemUp
    g f e d
  | c4 r r16 d' c bes a4~
  %50
  | a16[ d, e fis] g8 r r4
    \staffUpper
    \stemDown
    d'16\rest f! e d
  | cis4_~ cis16 a d8 e16[ f e d]
    \once\override NoteColumn.force-hshift = #0 cis!8 \hideStaffSwitch a\rest
  | \staffLower
    \stemUp
    r16 \showStaffSwitch a[ b cis] d8 r r16 b[ cis d]
    \staffUpper
    \stemDown e f g a
  | f4
    \staffLower
    d\rest d16\rest d,[ e fis] g a bes g
  | \stemUp a8 e r4 bes'8 g r4
  %55
  | \highlightSubjectFirst { a4^\markup \subject #'(2.2 . 0) #1 d8. c16 bes8. a16 g4
  | f~ f16 f g a bes4~ bes16 c bes a
  | g8 } r r4 r16 b,[ cis d] e f g e
  | a8 r r f~ f r r4
  | r r8
    \once\override Beam.positions = #'(4.5 . 4.5)
    d16 e f4 e
  %60
  | s4 r8 d' e[ g] d[ a]
  | bes4 e, \voiceTwo \stemUp d2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | \override MultiMeasureRest.staff-position = #-4
    R1
    _\markup \tiny\italic \with-color #lightGrey {
      \subjectStrettoBullet "Stretto TSABAT, bars 1−13"
    }
    R1
  | s1*2
  %5
  | \highlightSubjectFirstInv { d1_\markup \scale #'(1 . -1) \subject-augmentatio #'(0.8 . 0) #1 "++"
  | a2. b4
  | c2. d4
  | e1
  | f
  %10
  | e2. d4
  | c1~
  | c4 a bes c
  | d2 } r
    _\markup \tiny\italic \with-color #lightGrey {
      \subjectStrettoBullet "Stretto SAT, bars 13-19"
    }
  | r16 g, a bes c4~ c16[ a d c] bes a g fis
  %15
  | g bes c d ees4~ ees16[ ees d c] b8.\trill a32 b
  | c4~ c16 d ees f g4 f8. ees16
  | d4~ d16 ees d c bes8 d g,4
  | f16[ a bes c] d c d ees f2~
  | f4~ f16 ees d c g'2
  %20
  | f4
    _\markup {
      \subjectStrettoBullet "Stretto TB, bars 20−22"
    }
    r \highlightSubjectFirstInv {
    f_\markup \scale #'(1 . -1) \subject #'(1 . 0) #1 bes,8. c16
  | d8. ees16 f2 g4~
  | g8 f16 ees d4~ d16 c d e \unHighlightSubject f4~ }
  | f r16
    _\markup {
      \subjectStrettoBullet "Stretto ATSBA, bars 23−31"
    }
    bes,[ a g] f a bes c d4
  | r16 \stemUp c,[ c' bes!] a g f e \stemDown f c' f e d4~
  %25
  | d16[ d c bes] a8. a16 bes8.[ b16] c8. cis16
  | d8. e16 f8. g16 a8. bes16 c8. d16
  | g,8 d\rest d4\rest d2\rest
  | \highlightSubjectFirst { d4_\markup \subject #'(1.2 . 0) #1 a'8. g16 f8. e16 d4
  | cis d8. e16 f4~ f16 g f e
  %30
  | d4 } d8\rest g~ g f4 e8~
  | e[ d16 c] b8. cis16 d8
    _\markup { \episodeBullet "Episode, bars 31-34" }
    bes g a
  | d e f4~ f16[ a g f] e8 a
  | d, d\rest g d\rest c d\rest f d\rest
  | bes[ bes'^~] bes16 a g fis g8 a bes g
  %35
  | a4~
    _\markup {
      \subjectStrettoBullet "Stretto ATSSAATB, bars 35−49"
    }
    a16 bes a g f8.[ g16] a8 r
  | r16 bes,[ a g] f e d cis d4 r16 g' f e
  | d cis d e f4 r16 f,[ g a] bes8 g
  | d'16[ d, d' e] f a g f e[ d e f] e f d e
  | f[ e f g] f e d cis d[ c bes a] g a bes g
  %40
  | a[ g a bes] a a' g a f[ a d c] bes a g bes
  | a[ g f e] d c bes a bes4 a~
  | a r r2
  | r16 bes'[ a g] f e d8 r2
  | r16 g[ a bes] c8 c, f g a g
  %45
  | fis4 r16 d e fis g[ d g f] ees d c bes
  | c[ ees d c] bes a g fis g[ d' g8~] g16 fis g a
  | bes[ g a bes] c8 c, g'4 r8 \highlightSubjectFirst { g,_\markup \subject #'(1.8 . 0) #1
  | c8. bes16 a8. g16 f4 e
  | f8. g16 a4~ a16[ bes a g] \unHighlightSubject f } ees' d c
  %50
  | bes4
    _\markup {
      \subjectStrettoBullet "Stretto SAAT, bars 50−57"
    }
    r16 bes' a g fis8 d g4~
  | g16[ g f! e] f8. d16 a'4 r16 a, b cis
  | d4 d16\rest e f g a2
  | d,16\rest bes'[ a g] f e d f bes,2
  | a4 r16 a' g f e[ d e f] g bes a g
  %55
  | f[ g f e] d e f8~ f16[ a g f] e a g a
  | d,4 r r2
  | r16 a'[ g f] e d cis e a,2~
  | a16[ g' f e] d c bes d gis,4
    _\markup {
      \endBullet "Coda"
    }
    r
  | r r8 bes a2
  %60
  | \shape #'((0 . 0) (0 . -2) (0 . -2) (0 . 0)) Tie
    d1~
  | <d g>2 d,\fermata
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
    opus = "BWV 1080, 7"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus VII" }
    subsubtitle = \markup {
      \center-column {
        \line { "per Augmentationem et Diminutionem" }
        \fugueStructureBoxesVII
      }
    }
  }
  \layout {
    \context {
      \Voice
      \override TextScript.color = #greyTextColor
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-2
      \override VoiceFollower.color = #greyTextColor
      \override VoiceFollower.style = #'dashed-line
    }
  }
  \midi { \tempo 4=100 }
}
