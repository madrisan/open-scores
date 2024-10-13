Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusIII
  | \override MultiMeasureRest.staff-position = #0
    R1*4
  | s1*4
  | \highlightSubjectFirstInv { d2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 a
  %10
  | c e
  | f e4 d
  | cis2~ cis8 a b cis
  | \unHighlightSubject d2~ } d8 d e f
  | g b, cis d e4 d~
  %15
  | d8 cis c2 b8 bes
  | a gis a b c4 cis~
  | cis d8 e f4 e~
  | e8 a, b cis d4. e8
  | cis4 f d4. e8
  %20
  | a,4 d2 cis8 c~
  | c b ees4 c4. d8
  | g,4 c2 b8 bes~
  | bes a \highlightSubjectFirstInv { a'2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 d,4~
  | d8 e f4~ f8 g a4~
  %25
  | a8 g bes2 a8 g
  | f2~ f8 e fis g
    \break
  | a4 } d,~ d8 g cis, d
  | e f g e f2~
  | f8 f e d c4. d8
  %30
  | e4 r r2
  | \override MultiMeasureRest.staff-position = #6
    R1
  | s1*11
  %43
  | \highlightSubjectFirstInv { e2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 a,
  | c e
  %45
  | f e4 d
  | c2~ c8 a b cis
  | \unHighlightSubject d } c! b a b4 c~
  | c8 b c d e d c bes
  | a4 bes~ bes8 a bes c
  %50
  | d c bes aes g2~
  | g8 fis g a bes a bes c
  | d cis d e f4 fis~
  | fis g8 a bes4 a~
  | a8 d, e fis g2~
  %55
  | g8 fis g a~ a fis g4
  | R1*2
  | \highlightSubjectFirstInv { d2^\markup \scale #'(1 . -1) \subject #'(-0.8 . 0) #1 a4. b8
  | c4. d8 e4. d8
  %60
  | f2~ f8 e4 d8
  | cis4 c~ c8 a b cis
  | \unHighlightSubject d2~ } d8 d e f
  | g4. fis8 g4. gis8
  | a2~ a8 a g f
    \break
  %65
  | g4 f8 e d cis! d e
  | f g f e f g a4
  | c,2~ c8 fis,! g a
  | bes2 a~
    \break
  | a8 fis g4~ g8 g fis e
  %70
  | fis g a4 d,2~
  | d4. cis8 d2_~
  | d1\fermata
  | \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  | s1*4
  %5
  | \stemUp
    \highlightSubjectFirstInv { a'2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,
  | f a
  | bes a4 g
  | f2~ f8 e f g
  | \stemDown
    a4 } g2 fis8 f
  %10
  | e dis e fis g4 gis~
  | gis a8 b c4 b~
  | b8 e, f g a4 g~
  | g8 fis g a bes4 a
  | g2~ g8 e f g
  %15
  | a4. g8 fis e f4~
  | f2~ f8 a g f
  | g e f g a2~
  | a8 cis, d e f g a bes
  | e,4 a2 gis8 g~
  %20
  | g fis bes4 g4. a8
  | d,4 g2 fis8 f~
  | f e aes4 f4. g8
  | c,4 c'2 b8 bes
  | a gis a b c4 cis~
  %25
  | cis d8 e f d e4~
  | e8 a, b cis d2~
  | d8 c bes a bes2~
  | bes4 a~ a8 d gis, a
  | b2~ b8[ a16 g] fis8 f
  %30
  | e dis e fis g4 gis~
  | \stemUp
    gis a8 b c a b4~
  | b8 e, fis gis a2^~
  | a8 bes! a g fis4 f~
  | f8 a g f e4 ees~
    \break
  %35
  | ees8 g f ees d4. e8
  | f e f g a g a4~
  | a8 g bes a g f g4~
  | g8 c, d e f e f4~
  | f8 e16 d e4 f4. g8
  %40
  | c,4 a'2 gis8 g^~
  | g8 fis16 e fis4 g4. a8
  | d,4 b'2 ais8 a^~
  | \stemDown
    a gis g2 fis8 f
  | e dis e fis g4 gis~
  %45
  | gis a8 b c4 b~
  | b8 e, fis gis a g f e
  | f fis g a~ a g f e
  | d g a b c e, f g~
  | g f ees d c f g a
  %50
  | bes d, ees f bes, b c d
  | ees d c ees d fis! g4~
  | g8 a bes4~ bes8 d c bes
  | c a bes c d2~
  | d~ d8 cis d e
  %55
  | \highlightSubjectFirstInv { a,2_\markup \scale #'(1 . -1) \subject #'(1.3 . 0) #1 d,4. e8
  | f!4. g8 a4. g8
  | bes2~ bes8 a4 g8
  | f2~ f8 e fis gis
  | \unHighlightSubject a } b c4 b8 cis d4
  %60
  | cis8 c bes a bes4 b
  | a8 g fis a d,2~
  | d8 fis g a bes b cis d
  | e d ees a, bes c d4~
  | d c8 b a4 e'~
  %65
  | e8 e d cis d a bes g
  | a2~ a8 bes a g
  | fis g a4 d,2~
  | d~ d8 ees d c
  | bes d cis e~ e e d cis
  %70
  | d4. c8 bes2~
  | bes8
    \staffLower
    \stemUp
    a bes2.^~
  | bes8 a bes g a2^\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  %1
  | \stemDown
    \highlightSubjectFirstInv { d2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 a
  | c e
  | f e4 d
  | cis2~ cis8 a b cis
  %5
  | d4 } c!2 b8 bes
  | a gis a b c4 cis~
  | cis d8 e f4 e~
  | e8 a, b cis d cis d e
  | f e d cis d4 d,
  %10
  | a'8 b c4~ c8 e d c
  | b b, c d e fis gis e
  | a4 g! f e
  | d8 d' e fis g4 f
  | e d cis d
  %15
  | \stemUp
    e2 d~
  | d4 c8 b a4 r
  | r d~ d8 b cis e
  | a,4 r r2
  | R1
  | s1*9
  | r4 \highlightSubjectFirstInv { e'2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 a,4~
  %30
  | a8 b c4~ c8 d e4~
  | e8 d
    \staffUpper
    \stemDown
    f2 e8 d
  | c2_~ c8 b cis d
  | \hideStaffSwitch
    \unHighlightSubject e2_~ } e8
    \staffLower
    \stemUp
    a, b c \showStaffSwitch
  | d2~ d8 g, a bes!
  %35
  | c bes \highlightSubjectFirstInv { c2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 f,4~
  | f8 g a4~ a8 bes c4~
  | c8 bes d2 c8 bes
  | a2~ a8 g a b
  | \unHighlightSubject c } g c2 b8 bes~
  %40
  | bes a
    \staffUpper
    \stemDown
    f'4 d4. e8
  | a,4 d2 cis8 c_~
  | c b g'4 e4. fis8
  | \staffLower
    \stemUp
    b,4. cis8 d4. d8
  | c b c a b4. c8
  %45
  | d c4 b a gis8
  | a4 r r2
  | r8 d, e fis g4 a8 f
  | \stemDown
    g f' e d c c, d e
  | f4 g8 ees f ees' d c
  %50
  | bes bes, c d ees f ees d
  | \stemUp
    c d e! fis g4 r8 ees
  | d4 r8 g f bes a4~
  | a g~ g8 e fis a
  | d, fis g a bes r r4
  %55
  | r8 d cis c~ c c b bes
  | a gis a b c4 cis~
  | cis d8 e f4 e
  | r8 a, b cis d a d,4
  | e8 dis e fis g4. gis8
  %60
  | a4 r r e'
  | e r r2
  | \override MultiMeasureRest.staff-position = #6
    R1
  | \highlightSubjectFirstInv { a,2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 d,
  | f a
  %65
  | bes! a4 g
  | f2~ f8 e fis g
  | \unHighlightSubject a2~ } a8 d, e fis
  | g2~ g8 fis g a
  | bes4 a8 g a2~
  %70
  | a~ a8 a g fis
  | \shape #'((1 . 0.9) (0 . 1.1) (0 . 1) (-0.3 . 1)) Tie
    g1_~
  | \stemDown
    g8 fis g e fis2_\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | s1*14 %1 to 14
  %15
  | \highlightSubjectFirstInv { a'2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,
  | f a
  | bes a4 g
  | f2~ f8 e f g
  | \unHighlightSubject a } a, r a bes a b cis
  %20
  | d d, r d' ees d e fis
  | g g, r g aes g a b
  | c c, r c' des c d e
  | f f, r f' fis g r \stemUp g,
  | f e d d' \stemDown a bes' a g
  %25
  | f e d4~ d8 g cis,4
  | d r8 a bes bes' a g
  | fis4.^\trill e16 fis g8 f e d
  | \stemUp cis4.^\trill b16 cis d8 c b a
  | gis4 \stemDown gis' a a,8 b
  %30
  | c4 r8 a e' f e d
  | c b a4~ a8 d gis,4
  | a8 c d e f4 e8 d
  | cis a b cis d e d c
  | b g a b c d c bes
  %35
  | a g a f bes a bes c
  | d4. e8 f4. d8
  | g4. f8 e d e c
  | f4 e d2
  | c4 r8 c des c d e
  %40
  | f f, r f' bes, a b cis
  | d d, r d' ees d e fis
  | g g, r g' c, b cis dis
  | e4. e8 f! g a4~
  | a4. a8 g fis e4~
  %45
  | e8 f! e d c4 e
  | a, r r2
  | R1
  | s1*3
  %51
  | \highlightSubjectFirstInv { c2_\markup \scale #'(1 . -1) \subject #'(1.5 . 0) #1 g
  | bes d
  | ees d4 c
  | bes2~ bes8 a b cis
  %55
  | d4 } e8 fis g2
  | d c8 d e4~
  | e8 g f e d4 cis
  | d2~ d8 c!4 b8
  | a2 g8 a bes!4
  %60
  | a8 d e f g4 gis
  | a8 bes a g! fis4 g8 a
  | bes! c! bes a g f e d
  | cis4 c2 b8 bes
  | a gis a b c4 cis~
  %65
  | cis d8 e f4 e~
  | e8 a, b cis d2~
  | d8 c! bes a bes2~
  | bes8 a bes g d'2~
  | d1~
  %70
  | d~
  | d2~ d8 a bes g
  | d1\fermata
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
    opus = "BWV 1080, 3"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus III" }
    subsubtitle = \markup {
      \center-column {
        \line { "Four-voice fugue on principal subject in inversion, employing intense chromaticism" }
        \fugueStructureBoxesIII
      }
    }
  }
  \layout {
    \context {
      \Voice
      \override VoiceFollower.color = #greyTextColor
      \override VoiceFollower.style = #'dashed-line
    }
  }
  \midi { \tempo 4=115 }
}
