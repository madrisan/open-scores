Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override TupletBracket.bracket-visibility = ##f
  \partial 4 \highlightSubjectFirst { d4^\markup \subject #'(-0.8 . 0) #1
  %1
  | a a'~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { g f e }
  | \override TupletNumber.transparent = ##t
    \tuplet 3/2 { f e d } e4~ \tuplet 3/2 { e8 d cis } \tuplet 3/2 { d cis b }
  | \tuplet 3/2 { cis d e } d4~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g }
  | f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3] }
  %5
  | \tuplet 3/2 { \highlightSubjectFirst { \unHighlightSubject d8 } g e } \tuplet 3/2 { f g a } bes4 cis,
  | d4~ \tuplet 3/2 {d8 e f } e2~
  | e4~ \tuplet 3/2 { e8 f g } f8.*8/9[ a,16*4/3 b8.*8/9 cis16*4/3]
  | d2~ d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
  | f4 r r fis
  %10
  | \tuplet 3/2 { g8 fis e } \tuplet 3/2 { fis g e } \tuplet 3/2 { fis g a } \tuplet 3/2 { bes a g }
  | a4 r r fis
  | g bes g d8.*8/9 c16*4/3
  | bes4 d bes g
  | a a' r2
  %15
  | r4 e c a
  | bes bes' r2
  | R1*2
  | r2 r4 \highlightSubjectFirstInv { a^\markup \scale #'(1 . -1) \subject #'(-1 . 0) #1
  %20
  | d d,~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g }
  | \tuplet 3/2 { f g a } g4~ \tuplet 3/2 {  g8 a bes a bes c
  | bes a g} a4~ \tuplet 3/2 { a8 g f g f e}
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 fis8.*8/9 gis16*4/3]
  | a4 } g!8.*8/9 f!16*4/3 e4 fis
  %25
  | g8.*8/9[ b16*4/3 e8.*8/9 b16*4/3] g8.*8/9[ fis16*4/3 g8.*8/9 a16*4/3]
  | b4 a8.*8/9 g16*4/3 fis4 gis
  | a8.*8/9[ b16*4/3 c8.*8/9 bes16*4/3] a8.*8/9[ g16*4/3 f8.*8/9 a16*4/3]
  | g4~ \tuplet 3/2 { g8 a bes a bes c bes c d
  | c c, bes a bes c} f2~
  %30
  | \tuplet 3/2 { f8 e d e f d} e4 a
  | \tuplet 3/2 { g8 a bes a g bes} a4 e
  | \tuplet 3/2 { f8 c' a f a f} c8.*8/9[ g'16*4/3 f8.*8/9 ees16*4/3]
  | \tuplet 3/2 { d8 c bes c bes a} f'2~
  | f1~
  %35
  | f~
  | f2 r4 \highlightSubjectFirst { a^\markup \subject #'(-0.8 . 0) #1
  | e e'~ \tuplet 3/2 { e8 d c d c b
  | c b a} b4~ \tuplet 3/2 { b8 a gis a gis fis
  | gis a b} a4~ \tuplet 3/2 { a8 b c b c d}
  %40
  | c8.*8/9[ a16*4/3 e8.*8/9 a16*4/3] c8.*8/9[ d16*4/3 c8.*8/9 b16*4/3]
  | a4 } c a e8.*8/9 f16*4/3
  | g8.*8/9[ e16*4/3 b8.*8/9 e16*4/3] g8.*8/9[ bes!16*4/3 a8.*8/9 g16*4/3]
  | f4 d' bes f8.*8/9 g16*4/3
  | a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ g16*4/3 bes8.*8/9 a16*4/3]
  %45
  | g2 r4 cis,
  | d r r8*4/3 r16*2/3 f,
    \override TupletNumber.transparent = ##f
    \tuplet 3/2 { g8 f e }
    \override TupletNumber.transparent = ##t
  | bes'4 r r g'
  | d' d,~ \tuplet 3/2 { d8 e f e f g
  | f g a} g4~ \tuplet 3/2 { g8 a bes a bes c
  %50
  | bes a g} a4~ \tuplet 3/2 { a8 g f g f e}
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 fis8.*8/9 gis16*4/3]
  | a4 c, e a
  | \mergeDifferentlyDottedOn
    e8.*8/9[ g16*4/3 c8.*8/9 g16*4/3] e8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]
  | g4 bes, d g
  %55
  | d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
  | f2 r4 d
  | cis8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] cis8.*8/9[ b16*4/3 cis8.*8/9 d16*4/3]
  | e4 r r8*4/3 r16*2/3 g f8.*8/9 e16*4/3
  | bes'2\fermata r4 g
  %60
  | \tuplet 3/2 { f8 e d cis e d c d c bes c bes
  | a f' e d e f g e d cis d e
  | f a f d f d a bes c bes a g}
  | a1~
  | \tieDown a4^~ \tuplet 3/2 { a8 bes c} bes4 r \tieNeutral
  %65
  | \tuplet 3/2 { r8 a d f d f a f d a bes c
  | bes d g bes a g fis g a} g8.*8/9 bes,16*4/3
  | a4^~ \tuplet 3/2 { a8 bes c bes a g fis g a}
  | g8.*8/9 e'16*4/3 \tuplet 3/2 { f8 g a} cis,2\trill
  | d4 r r8*4/3 r16*2/3 cis d8.*8/9 e16*4/3
  %70
  | \tuplet 3/2 { fis8 g a} d,2 \tuplet 3/2 { e8 d cis}
  | fis2.\fermata
  \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override TupletBracket.bracket-visibility = ##f
  \override TupletNumber.transparent = ##t
  \partial 4 r4
  | R1*3 %1 to 3
  | r2 r4 \highlightSubjectFirstInv { a'_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #1
  %5
  | d d,~ \tuplet 3/2 { d8 e f } \tuplet 3/2 {  e f g }
  | \tuplet 3/2 { f g a } g4~ \tuplet 3/2 { g8 a bes } \tuplet 3/2 { a bes c }
  | \tuplet 3/2 { bes a g } a4~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { g f e }
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3] }
  | \tuplet 3/2 { \highlightSubjectFirstInv { \unHighlightSubject a8 } bes c }
    \tuplet 3/2 { bes a g } fis4 ees'
  %10
  | d r
    \change Staff = "lower"
    \stemUp\tieUp
    f,\rest d~
  | d \tuplet 3/2 { ees8 d f } ees2
  | d1~
  | d8.*8/9[
    \change Staff = "upper"
    \stemDown\tieDown
    g16*4/3 bes8.*8/9 g16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
  | f8.*8/9[ c16*4/3 a8.*8/9 c16*4/3] f8.*8/9[ a16*4/3 g8.*8/9 f16*4/3]
  %15
  | e8.*8/9[ a16*4/3 c8.*8/9 a16*4/3] e8.*8/9[ d16*4/3 e8.*8/9 fis16*4/3]
  | g8.*8/9[ d16*4/3 bes8.*8/9 d16*4/3] g8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | f8.*8/9[ e16*4/3 f8.*8/9 g16*4/3] a8.*8/9[ g16*4/3 f8.*8/9 a16*4/3]
  | e8.*8/9[ d16*4/3 e8.*8/9 f16*4/3] g8.*8/9[ f16*4/3 e8.*8/9 g16*4/3]
  | d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3] f8.*8/9[ g16*4/3 a8.*8/9 g16*4/3]
  %20
  | f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3] d4 bes'
  | a
    \change Staff = "lower"
    \stemUp\tieUp
    cis, c\rest ees
  | d d\rest g\rest d
    \change Staff = "upper"
    \stemDown\tieDown
  | a' r r a
  | \change Staff = "lower"
    \stemUp\tieUp
    e e\rest g\rest
    \change Staff = "upper"
    \stemDown\tieDown
    a
  %25
  | b r r b
  | \change Staff = "lower"
    \stemUp\tieUp
    fis f\rest b\rest
    \change Staff = "upper"
    \stemDown\tieDown
    b
  | \change Staff = "lower"
    \stemUp\tieUp
    e, e\rest d2\rest
  | d\rest d4\rest \highlightSubjectFirst { f^\markup \subject #'(2.5 . 0) #1
  | c
    \change Staff = "upper"
    \stemDown\tieDown
    \shape #'((0 . -1) (0 . -1) (0 . -1) (0 . 0)) Tie
    c'~ \tuplet 3/2 { c8 bes a } \tuplet 3/2 { bes a g }
  %30
  | \tuplet 3/2 { a g f } g4~ \tuplet 3/2 { g8 f e } \tuplet 3/2 { f e d }
  | \tuplet 3/2 { e f g } f4~ \tuplet 3/2 { f8 g a } \tuplet 3/2 { g a bes }
  | a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | f4 } a d8.*8/9[ c16*4/3 bes8.*8/9 d16*4/3]
  | c4~ \tuplet 3/2 { c8 d ees } \tuplet 3/2 { d c bes } \tuplet 3/2 { a bes c }
  %35
  | \tuplet 3/2 { bes a g } \tuplet 3/2 { a g bes } \tuplet 3/2 { a bes c } \tuplet 3/2 { d c bes }
  | c4 a f c'
  | g r b r
  | \change Staff = "lower"
    \stemUp\tieUp
    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie e,1~
  | \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie e~
  %40
  | \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Tie e~
  | e2
    \change Staff = "upper"
    \stemDown\tieDown
    r4 e
  | \change Staff = "lower"
    \stemUp\tieUp
    b2 c4\rest e
  | f2
    \change Staff = "upper"
    \stemDown\tieDown
    r4 f
  | \change Staff = "lower"
    \stemUp\tieUp
    c2 d4\rest f
  %45
  | \change Staff = "upper"
    \stemDown\tieDown
    g8.*8/9[
    \change Staff = "lower"
    \stemUp\tieUp
    e16*4/3 cis8.*8/9 e16*4/3]
    \change Staff = "upper"
    \stemDown\tieDown
    g8.*8/9[ f16*4/3 g8.*8/9 a16*4/3]
  | bes8[ g e g] bes8.*8/9[ a16*4/3 b8.*8/9 cis16*4/3]
  | d8.*8/9[ bes!16*4/3 g8.*8/9 bes16*4/3] d8.*8/9[ cis16*4/3 d8.*8/9 e16*4/3]
  | \tuplet 3/2 { f8 d a } \tuplet 3/2 { f g a } bes2
  | a4
    \change Staff = "lower"
    \stemUp
    \once\override NoteColumn.force-hshift = #0.3 cis,
    \change Staff = "upper"
    \stemDown
    b'\rest ees,
  %50
  | d8.*8/9 e!16*4/3 \tuplet 3/2 { f8 e d } cis8.*8/9 a'16*4/3 \tuplet 3/2 { bes8 a g }
  | \change Staff = "lower"
    \stemUp
    a4 f d a'
  | e g\rest g\rest
    \change Staff = "upper"
    \stemDown
    e
  | e' e, c g'
  | d r r d
  %55
  | d'
    \change Staff = "lower"
    \stemUp
    d, bes f'
  | c a c f
  | e cis e
    \change Staff = "upper"
    \stemDown
    a
  | g8.*8/9[ e16*4/3 cis8.*8/9 e16*4/3] g8.*8/9[ bes16*4/3 a8.*8/9 g16*4/3]
  | e'2\fermata
    \change Staff = "lower"
    \stemUp\tieUp
    e,4\rest e
  %60
  | \tuplet 3/2 { f8 g a } e4~ \tuplet 3/2 { e8 fis g } d4
  | \change Staff = "upper"
    \stemDown
    a' r r
    \change Staff = "lower"
    \stemUp
    \highlightSubjectFirst { e^\markup \subject #'(-1 . 0) #1
  | a,
    \change Staff = "upper"
    \stemDown\tieDown
    a'_~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { g f e }
  | \tuplet 3/2 { f e d } e4~ \tuplet 3/2 { e8 d cis} \tuplet 3/2 { d cis b }
  | \tuplet 3/2 { cis d e } d4~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g }
  %65
  | f8.*8/9[ d16*4/3 a8.*8/9 d16*4/3] f8.*8/9[ g16*4/3 f8.*8/9 e16*4/3]
  | \change Staff = "lower"
    \stemUp\tieUp
    \once\override NoteColumn.force-hshift = #1 \unHighlightSubject d1~ }
  | d~
  | d4 cis e
    \change Staff = "upper"
    \stemDown
    bes'
  | \tuplet 3/2 { a8 d a } \tuplet 3/2 { f a f} d4
    \mergeDifferentlyDottedOn
    d'
  %70
  | a_~ \tuplet 3/2 { a8 fis e } \tuplet 3/2 { d c bes! } a8.*8/9 a'16*4/3
  | a2.\fermata
  \bar "|."
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override TupletBracket.bracket-visibility = ##f
  \override TupletNumber.transparent = ##t
  \partial 4 d4\rest
  | \override MultiMeasureRest.staff-position = #0
    R1*7
  | d2\rest d4\rest \highlightSubjectFirst { a'_\markup \subject #'(0.8 . 0) #1
  | d, d'^~ \tuplet 3/2 { d8 c bes c bes a
  %10
  | bes a g} a4^~ \tuplet 3/2 { a8 g fis g fis e
  | fis g a} g4~ \tuplet 3/2 { g8 a bes a bes c }
  | bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
  | g2 } d4\rest bes'
  | \stemNeutral a f8.*8/9 g16*4/3 a4 b,
  %15
  | c a' r c
  | bes g8.*8/9 a16*4/3 bes4 cis,
  | d4. e8 f8.*8/9[ g16*4/3 a8.*8/9 f16*4/3]
  | c'4 c, e g
  | bes4.*10/9 a16*2/3 g d'8.*8/9[ g,16*4/3 f8.*8/9 e16*4/3]
  %20
  | d4.*10/9 e8*2/3 \tuplet 3/2 { f8 g a} g8.*8/9 cis,16*4/3
  | \tuplet 3/2 { d8 e f e bes' g e fis g~ } g8.*8/9 fis16*4/3
  | \tuplet 3/2 { g8 f! e f a d c bes a bes a g }
  | a4 f a d
  | c8.*8/9[ a16*4/3 e8.*8/9 a16*4/3] c8.*8/9[ e16*4/3 d8.*8/9 c16*4/3]
  %25
  | b4 g b e
  | d8.*8/9[ b16*4/3 fis8.*8/9 b16*4/3] d8.*8/9[ f!16*4/3 e8.*8/9 d16*4/3]
  | c4 c,~ \tuplet 3/2 { c8 d e d e f
  | e f g} f4~ \tuplet 3/2 { f8 g a g a bes }
  | a4 f a d
  %30
  | c1~
  | c~
  | c2 r4 \highlightSubjectFirstInv { c_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | f f,^~ \tuplet 3/2 { f8 g a g a bes
  | a bes c} bes4~ \tuplet 3/2 { bes8 c d c d ees
  %35
  | d c bes } c4~ \tuplet 3/2 { c8 bes a bes a g }
  | a8.*8/9[ c16*4/3 f8.*8/9 c16*4/3] a8.*8/9[ g16*4/3 a8.*8/9 b16*4/3] }
  | \tuplet 3/2 { \highlightSubjectFirstInv { \unHighlightSubject c8 } e d c b a }
    gis8.*8/9[ a16*4/3 b8.*8/9 gis16*4/3]
  | \tuplet 3/2 { a8 gis fis gis e gis b c d c b a
  | b c d c e d c b a gis a b
  %40
  | a e' c a c a} e8.*8/9[ f16*4/3 e8.*8/9 d16*4/3]
  | c8.*8/9[ e16*4/3 a8.*8/9 e16*4/3] c8.*8/9[ b16*4/3 c8.*8/9 d16*4/3]
  | e4 g e \stemDown cis
  | \stemNeutral
    d8.*8/9[ f16*4/3 bes8.*8/9 f16*4/3] d8.*8/9[ c16*4/3 d8.*8/9 e16*4/3]
  | f4 a f d
  %45
  | e a bes d,\rest
  | d8\rest bes'16 a g f e d cis4 r
  | \tuplet 3/2 { r8 g' d e f g f g a bes a g }
  | f4 d\rest d\rest cis'
  | \tuplet 3/2 { d8 e f e d f }
    \change Staff = "upper"
    \stemDown
    e16*2/3 fis g4*4/3 fis8*2/3
  %50
  | g4
    \change Staff = "lower"
    \stemUp
    d,\rest d\rest \clef bass g
  | \stemDown d' d,\rest d\rest d' \stemNeutral
  | c8.*8/9[ a16*4/3 e8.*8/9 a16*4/3] c8.*8/9[ e16*4/3 d8.*8/9 c16*4/3]
  | g'4 c,\rest c\rest c
  | bes8.*8/9[ g16*4/3 d8.*8/9 g16*4/3] bes8.*8/9[ d16*4/3 c8.*8/9 bes16*4/3]
  %55
  | f'4 d,\rest d\rest bes'
  | a8.*8/9[ f16*4/3 c8.*8/9 f16*4/3] a8.*8/9[ c16*4/3 bes8.*8/9 a16*4/3]
  | e'4 c,\rest c\rest a'
  | bes c,\rest c8*4/3\rest c16*2/3\rest e f8.*8/9 g16*4/3
  | cis,2\fermata r4 \tuplet 3/2 { r8 cis! bes' }
  %60
  | a4~ \tuplet 3/2 { a8 g fis } g4~ \tuplet 3/2 { g8 a g }
  | f!4~ \tuplet 3/2 { f8 e d } e4~ \tuplet 3/2 { e8 f e }
  | d1~
  | \tuplet 3/2 { d8 cis b cis e a g f e f e d
  | e f g fis g a} g4 d\rest
  %65
  | d2\rest d4\rest \highlightSubjectFirstInv { a'_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | \once\override NoteColumn.force-hshift = #0 d
    d,~ \tuplet 3/2 { d8 e fis e fis g
  | fis g a} g4~ \tuplet 3/2 { g8 a bes a bes c
  | bes a g} a4~ \tuplet 3/2 { a8 g f g f e}
  | f8.*8/9[ a16*4/3 d8.*8/9 a16*4/3] f8.*8/9[ e16*4/3 fis8.*8/9 g16*4/3] }
  %70
  | \tuplet 3/2 { \highlightSubjectFirstInv { \unHighlightSubject a8 } bes c }
    bes4~ \tuplet 3/2 { bes8 c d cis b a }
  | d2.\fermata
  \bar "|."
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
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 13/2"
    subtitle = "inversus"
    title = \markup {
      Contrapunctus [XIII]
    }
  }
  \layout { }
  \midi { \tempo 4 = 144 }
}
