Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusXI
  | R1*4 %1 to 4
  %5
  | \highlightSubjectFirst { r4^\markup \subject #'(2 . 0) #1 a e' d
  | r c b a
  | r gis a b
  | r c8 d c4 b
  | a } b c cis
  %10
  | d cis8 b cis4 d
  | e g f e
  | a d, b cis
  | d2 c!4 b
  | a e' d c~
  %15
  | c b a gis
  | a e r b'
  | cis d2 e4
  | a, a'8 bes a4 g
  | f cis d d'\rest
  %20
  | \override MultiMeasureRest.staff-position = #10
    R1
  | d4\rest e,8 f e4 d
  | cis \highlightSubjectFirst {
    e
    ^\markup \subject #'(-1 . 0) #1
    a g
  | r f e d
  | r cis d e
  %25
  | r f8 g f4 e
  | d2. } cis4
  | \once\override NoteColumn.force-hshift = #0.6 d2 b\rest
  | g4\rest \highlightMotif { d
    ^\markup { "Chromatic motif (cm) based on the subject 2" }
    ees e
  | f fis g gis
  %30
  | \unHighlightMotif a8 } b c a f'4. e16 d
  | cis4 d g2~
  | g4 f8 e f g f e
  | d4 g8 fis g a g f
  | e4 fis g gis
  %35
  | a8 g! f e d cis d4~
  | d8 c! bes! a gis( a gis a)
  | gis4 \highlightMotif { e'2 dis4
  | d! cis c b~
  | b8 a } r8 \highlightMotifSecond { a' b, a b cis
  %40
  | d4 } r8 \highlightMotifSecond { d e d e fis
  | \unHighlightMotif g } g, g'4 fis f~
  | f8 d e4 f g
  | c, f e ees~
  | ees8 d c b c bes a4~
  %45
  | a8 b c4~ c8 b cis e~
  | e d4 cis8 d a4 gis8
  | a2 r4 r8 a
  | bes4 b c2~
  | c8 d c bes a4 d~
  %50
  | d8 e d c b4 e~
  | e8 a e d c4 cis
  | d e f fis
  | g a bes2~
  | bes8 e, \highlightMotif { a4 gis g
  %55
  | fis f e ees
  | d4. } cis8 d4. e8
  | \highlightSubjectSecondInv {
    \appoggiatura d8 cis4^\markup \scale #'(1 . -1) \subject #'(-2 . 0) #2 f b, bes
  | a d g,2
  | f4 g a8 g a4
  %60
  | d, } g fis f~
  | f e f g
  | c, r8 c' d c d e
  | a,4 f' e ees~
  | ees8 d r8 \highlightMotifSecond { d ees d ees f
  %65
  | g4 } r8 g a gis a b
  | gis b e,4 dis d
  | cis f! e dis
  | e \highlightMotif { e dis d
  | cis c b bes
  %70
  | a2. } gis4
  | a r r d
  | d( c) r bes!
  | bes a8 b c4 b8 c
  | d4 c8 d e4 d~
  %75
  | d c b cis
  | d \highlightSubjectFirstInv { a'^\markup \scale #'(1 . -1) \subject #'(-2 . 0) #1 d, e
  | r f g a
  | r bes a g
  | r f8 e f4 g
  %80
  | a4. } \highlightMotif { g8 fis4 f
  | e ees d cis
  | c b } cis d
  | e1~
  | e8 d cis e d c bes d
  %85
  | c bes a c bes g'4 fis8
  | g f! e d c d bes c
  | a2~ a8 bes a bes
  | c4 f2 e4
  \break
  | f2 d\rest^\markup {
      "Presentation of the 3 Subjects"
    }
  | \override MultiMeasureRest.staff-position = #0
    R1*3
    \break
  | d2\rest d4\rest \highlightSubjectThird {
    bes~
    ^\markup \subject #'(-2 . 0) #3
    ^\markup \italic\tiny \with-color #greyTextColor { "B" }
  | bes8
    \once\override Staff.TextScript.extra-offset = #'(0 . 0.2)
    a^\markup \italic\tiny \with-color #greyTextColor { "A" }
    c^\markup \italic\tiny \with-color #greyTextColor { "C" }
    c c
    b^\markup \italic\tiny \with-color #greyTextColor { "H" }
    d d
  %95
  | d cis e e e d f f
  | f e fis gis \unHighlightSubject a } gis \highlightMotifSecond { a4~
  | a8 fis g! g g e f f
  | e2 } dis4 d~
  | d8 b c e a,4 b~
  %100
  | b8 gis a c b d cis e
  | d cis d2 g8 f16 e
  | f4 a,8 g a4 bes~
  | bes8 g a a a f g g
  | f e16 d d'4 b cis
  %105
  | d \highlightMotif { c!
    ^\markup { "Variation of the chromatic motive" }
    b bes~
  | bes8 a } d4~ d8 b cis e
  | a4 a,8 \highlightMotifSecond { d d b c c
  | c a bes! bes } c d ees4~
  | ees d e f~
  %110
  | f8 d ees ees ees c d d
  | e4 fis g ees
  | cis d b c
  | a bes2 \highlightSubjectSecond { a4^\markup \subject #'(2.2 . 0) #2
  | bes4 f c' cis
  %115
  | d a e'2
  | f4 e d8 e d4
  | a' } \highlightMotifSecond { g~ g8 e f f
  | f dis e e e cis d d
  | d b c! c c a b b }
  %120
  | b e a,4~ a8 c b a
  | gis4 b a c
  | b \highlightMotifSecond { d~ d8 c ees ees
  | ees d f f f e g g
  | g f c' c } c bes f f
  %125
  | f e e e e d bes' bes
  | cis,4 d b e
  | a, d8 e f2~
  | f8 e4 d8 c[ b8. a16 b8]
  | a2 r4 gis
  %130
  | a4. a8 \highlightMotifSecond { b d cis cis
  | cis e d d d f e e
  | e g f f } f d e e
  | e cis d d d( cis) e( d)
  | f( e) g4~ g8 f e d
  %135
  | cis a d2 cis4
    \break
  | d8 a d d d b c c
  | bes!4 \highlightMotifSecond { a~ a8 g bes bes
  | bes a c c c b d d
  | d cis d e f e f g
  %140
  | e4 } f d e
  | cis d r2
  | r4 \highlightMotifSecond { a'~ a8 fis g g
  | g e! f! f f dis e e
  | dis4 } e8 d cis4 d8 c
    \break
  %145
  | b4 c2 \highlightSubjectSecond { b4^\markup \subject #'(-0.8 . 0) #2
  | c g d' dis
  | e b fis'2
  | g4 fis e8 fis e4
  | \unHighlightSubject b'8 } dis, \highlightMotifSecond { e4~ e8 cis d d
  %150
  | d b c c c a bes bes
  | a4 } bes! gis a
  | d e cis \highlightMotifSecond { d~
  | d8 f e e e g f f
  | f a g g g bes a a }
  %155
  | g4 g,~ g8 bes a a
  | a fis g g g bes ees4~
  | ees8 d g f e! d cis d
  | cis4 \highlightSubjectFirstInv { a'^\markup \scale #'(1 . -1) \subject #'(-2 . 0) #1 d, e
  | r f g a
  %160
  | r bes a g
  | r f8 e f4 g
  | a } \highlightMotifSecond {  d,~ d8 bes c c
  | c2~ c8 aes bes bes
  | bes2 } r4 d~
  %165
  | d8 f e! e f2~
  | f8 d ees ees ees4. ees8
  | d c bes a g4 \highlightMotifSecond { f~
  | f8 aes g g g bes a a
  | a c b b b d cis cis }
  %170
  | \omit Beam \omit Stem cis e d d % d f e e
    \undo\omit Beam \undo\omit Stem
    s2
  | a2 r4 g'
  | cis,8 e d d d f e e
  | e g f e a d, g g
  | g e f f f d e4
  %175
  | d a r bes~
  | bes8 a c c c b g'4~
  | g8 f g e f4 bes
  | a8 cis, d d d b c c
  | c a b d g, bes c ges
  %180
  | f4 \highlightSubjectFirst { d'^\markup \subject #'(-0.8 . 0) #1 a' g
  | r f e d
  | r cis d e
  | r
    << {
      \omit Stem \omit Beam
      \override NoteHead.color = \subjectFirstColor
      f8 g f4 e
    } \\ {
      \override Stem.details.beamed-lengths = #'(4.5)
      \override Stem.length = #6.5
      \stemUp d8 e d4 cis
    } >>
  | d1\fermata }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  %1
  | \highlightSubjectFirst {
    r4_\markup \subject #'(0 . 0) #1 d a' g
  | r f e d
  | r cis d e
  | r f8 g f4 e
  %5
  | d } c!8 b c4 d
  | e a, d8 e f4
  | \appoggiatura f8 e4. d8 c b a gis
  | a e' a4. d,8 g4~
  | g4 f8 g f4 e
  %10
  | f8 g a4 g8 a bes4~
  | bes a8 bes a4 g~
  | g f d g~
  | g f e8 a4 gis8
  | a4 gis8 fis gis4 a
  %15
  | d,8 e f4 e d~
  | d c f e8 d
  | e4 f g2~
  | g4 f8 e f4 bes
  | a g a \stemUp ees'4^~
  %20
  | ees d8 ees d4 c^~
  | c \stemDown <bes g>8 <c a> bes4 a
  | g cis, r a'~
  | a8 d4 c8
  \stemUp
  \once\override NoteColumn.force-hshift = #0.8 bes
  a4 bes8
  | \staffLower
  \stemUp\tieUp
  cis,4
  \staffUpper
  \stemDown\tieDown
  bes' a g
  %25
  | f d'2 cis8 c
  | b4 bes a2
  | \once\override NoteColumn.force-hshift = #0.6 a
    \staffLower
    \stemUp\tieUp
    \highlightSubjectSecond {
    a,
    ^\markup \subject #'(-0.5 . 0) #2
    _\markup {
      \secondExpositionBullet "Exposition 2 A2 T2 B2 S2 (27−60)"
    }
  | bes4 f c' cis
  | d a e'2
  %30
  | f4 e d8 e d4
  | \staffUpper
    \stemDown\tieDown
    a'4. } \highlightMotifSecond { a8_\markup { \hspace #-2.4 "More melodic motif" }
    b a b cis
  | d4 } a \highlightMotif { d cis
  | c! b bes a
  | \unHighlightMotif gis8 } c b a b d c b
  %35
  | a2 r4 r8 f
  | e4 g f fis
  | e8 fis gis e a2
  | gis4 g a e~
  | e a gis g~
  %40
  | g8 f bes2 a4
  | d c8 b c4 d
  | g, c b bes~
  | bes8 a d4~ d16[ c bes a] g8 fis
  | g4 aes g4. g8
  %45
  | f4 e8 dis e4 r
  | r g fis f
  | e r8 e f4 fis
  | g2~ g8 f e4
  | f g2 fis4
  %50
  | g a2 gis4
  | a b~ b8[ e,16 f] g a bes8
  | a4 g f r8 \highlightMotifSecond { d'
  | e d e fis \unHighlightMotif g } f ees d
  | cis4 d2 e4
  %55
  | a, r8 bes~ bes a g fis
  | g4 gis a b
  | a r8 cis, d cis d e
  | a,4 b8\rest a bes! a bes c
  | d bes ees d c ees d c~
  %60
  | c b c2 d4
  | \staffLower
    \stemUp\tieUp
    \once\override NoteColumn.force-hshift = #0.5 g,
    \staffUpper
    \stemDown\tieDown
  r r2
  | r4 a' gis g~
  | g8 f r \highlightMotifSecond { f g f g a
  | \unHighlightMotif bes } f bes \highlightMotifSecond { \unHighlightMotif d } c b c d
  %65
  | b d g,4 fis f
  | e r8 gis a gis a b
  | e,4. d8 cis4 c
  | b8 b' a gis a c b \highlightMotif { a
  | gis4 g fis f
  %70
  | e } f e2
  | e4 r r f
  | f e r g
  | g f e gis~
  | gis a r a
  %75
  | gis a2 g4
  | f8 e d2 g4
  | f8 a bes d cis4 c
  | b8 cis d4 c! bes
  | a r r2
  %80
  | r4 b c8 d16 ees d4~
  | d8[ c16 bes] a8 g fis4 g
  | fis8 a4 g bes a8
  | \once\override NoteColumn.force-hshift = #1 bes
  a4 bes8 a g f e
  | f4 \highlightSubjectFirstInv { a_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #1 d, e
  %85
  | r f g a
  | r bes a g
  | r f8 e f4 g
  | \unHighlightSubject a8 } bes c2 bes4^~
  | \once\override NoteColumn.force-hshift = #-0.3 bes
  a r2
  %90
  | r r4 \highlightMotifSecond { bes,~
    ^\markup { "Motif (variation of third subject)" }
  | bes8 a c c c b d d
  | d cis d e \unHighlightMotif f } e f g
  | e g f e d4 \highlightSubjectSecond { e_\markup \subject #'(-2 . 0) #2
  | f c g' gis
  %95
  | a e b'2
  | c4 b a8 b a4
  | e'2 } r4 \highlightMotifSecond { d~
  | d8 b c c c a b b
  | \unHighlightMotif b } gis a c fis,4 f
  %100
  | e2 fis4 bes!
  | a \highlightSubjectFirst { d,_\markup \subject #'(1.5 . 0) #1 a' g
  | r f e
    \once\override NoteColumn.force-hshift = #0.3 d
  | r cis d e
  | r f8 g f4
    \once\override NoteColumn.force-hshift = #0.3 e
  %105
  | \once\override NoteColumn.force-hshift = #0.3 d }
    \highlightSubjectThird { a'~_\markup \scale #'(1 . -1) \subject #'(1.2 . 0) #3 a8 fis g g
  | g e f! f f d e e
  | e cis d4 } r c
  | f e ees r8 \highlightMotifSecond { c'~
  | c a bes bes bes g aes aes
  %110
  | g4. } a!8 fis4. g8
  | c,4 c'~c8 a bes bes
  | a2 g
  | \shape #'((0.2 . 0.5) (0 . 0.3) (0 . 0.4) (0 . 0.3)) Tie
    f~ f8 g f \highlightSubjectThird { ees~_\markup \subject #'(0.3 . 0) #3
  | ees d f f f ees g g
  %115
  | g fis a a a g b b
  | a4 b8 cis d4 } r
  | r2 r4 \highlightMotifSecond { d~
  | d8 b c c c a b b
  | b gis a a a fis gis gis }
  %120
  | gis[ a16 g] fis8 e \highlightMotifSecond { fis2~
  | fis8 e gis gis gis fis a a
  | a gis b b b a c c
  | c b d d d cis e e }
  | e d ees ees ees d d d
  %125
  | d c g g f4 d'8 d
  | bes g a4 gis a8 g
  | fis4 gis~ gis8 b a c
  | b4 a2 gis4
  | \highlightMotif { a g fis f
  %130
  | e4. } e8 f a \highlightMotifSecond { e e
  | e g f f f a g g }
  | g bes a d d b cis cis
  | cis e, f f bes2~
  | bes4. bes8 a4 g~
  %135
  | g f8 d g2~
  | g4 f8 g f4 ees~
  | ees8 d \highlightSubjectThird {
    f_\markup \subject #'(0 . 0) #3
    f f e g g
  | g fis a a a gis b b
  | b a b cis d cis d e
  %140
  | cis4 } \highlightMotif { c b bes
  | a } \highlightMotif { bes b c
  | cis d } ees2~
  | ees8 cis d d d b c c
  | b4. \highlightMotif { bes8 a4. aes8
  %145
  | g4. } f8 \highlightSubjectThird { ees_\markup \subject #'(-2 . 0) #3 d f f
  | f e! g g g fis a a
  | a gis b b b a c c
  | \unHighlightSubject c } b a b g4 c
  | b r r2
  %150
  | r4 a~ a8 fis \highlightMotif { g g
  | fis4 f e } r
  | r2 r4 \highlightMotifSecond { a~
  | a8 f g g g e f f
  | f d e e e cis \unHighlightMotif d4~ }
  %155
  | %\override Stem.details.beamed-lengths = #'(0)
    \override Beam.positions = #'(-5.5 . -5.5)
    d8[
    \hideStaffSwitch \staffLower
    \stemUp\tieUp
    \once\override NoteColumn.force-hshift = #1.8 b
    \staffUpper
    \stemDown\tieDown
    c e]
    \revert Beam.positions
    \showStaffSwitch
    e g fis fis
  | fis d e4~ e8 g fis fis
  | fis a g g g a bes4~
  | bes \highlightSubjectFirst { e,_\markup \subject #'(-2 . 0) #1 a
    \once\override NoteColumn.force-hshift = #0.4 g
  | \staffLower
    \stemUp\tieUp
    e\rest f e d
  %160
  | \staffUpper
    \stemDown\tieDown
    \once\override Voice.Rest.X-offset = #0.6 a\rest
    cis d e
  | r f8 g f4 ees
  | d } fis g2~
  | g4 f!8 e f2~
  | f8 d ees bes' bes g a a
  %165
  | g4 c~ c8 b d d
  | c4 r r8 g fis4~
  | fis g r8 ees d c
  | d4. f8 e! e e g
  | fis fis fis a g2~
  %170
  | \stemUp
    \override Stem.details.beamed-lengths = #'(4.5)
    g8 bes a a <a d>
    \revert Stem.details.beamed-lengths
    <d f> <bes e> <bes e>
  | \stemDown e,4 d bes'2~
  | bes4 a bes2
  | a r4 g
  | a4. bes8 a f g g
  %175
  | f4 \highlightSubjectFirst { d_\markup \subject #'(1.5 . 0) #1 a' g
  | r f e d
  | r cis d e
  | r f8 g f4 e
  | d2 } cis4 c
  %180
  | d8 bes'4 a8~ a c e bes
  | a \highlightMotif { d cis c b bes a gis }
  | a bes! g a f4 bes
  | \once\override NoteColumn.force-hshift = #0.4 cis,
    a'8 bes a4 g
  | fis1\fermata
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  | \override MultiMeasureRest.staff-position = #0
    R1*8
  | \override MultiMeasureRest.staff-position = #6
    R1*4
  | \highlightSubjectFirst { r4^\markup \subject #'(2 . 0) #1 a e' d
  | r c b a
  %15
  | r gis a b
  | r c8 d c4 b
  | a2 } b4 cis
  | d2 r4 d8 cis
  | d4
    \staffUpper
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.5 e
    \once\override NoteColumn.force-hshift = #0.5 f
    fis
  %20
  | g4. fis8 g4 a
  | d, s8 s
    \once\override NoteColumn.force-hshift = #0.5 g4
    \once\override NoteColumn.force-hshift = #0.5 f
  | \staffLower
    \stemUp\tieUp
    e2 d4 e,
  | f d'
    \staffUpper
    \voiceOne\stemDown\tieDown
    g f
  | e8 f4
    \staffLower
    \stemUp\tieUp
    e8 a, d4 cis!8
  %25
  | d4
    \staffUpper
    \stemDown\tieDown
    \stemDown \once\override NoteColumn.force-hshift = #0.4 a'
    bes
    \staffLower
    \stemUp\tieUp
    e,
  | f2 e8 f
    \staffUpper
    \stemDown\tieDown
    g4~
  | \once\override NoteColumn.force-hshift = #1.4 g
    f
    \staffLower \once\override Voice.Rest.X-offset = #-0.8 d,2\rest
    \stemUp\tieUp
  | s1*6
  | f2\rest \highlightSubjectSecond { e^\markup \subject #'(-1 . 0) #2
  %35
  | f4 c g' gis
  | a e b'2
  | c4 b a8 b a4
  | e' } e dis d
  | cis f2 e4
  %40
  | d r r2
  | r4 r8 \highlightMotifSecond { g, a g a b
  | c4 } r r2
  | R1
  | r4 \highlightMotif { d, ees e
  %45
  | f fis g gis
  | a } r8 \highlightMotif { a bes!4 b
  | c cis d8 \unHighlightMotif ees } d c
  | d2 g,4 c8 bes
  | a f c'4. e8 d c
  %50
  | b g d'4~ d8 f e d
  | c4 b a16 b c d e4
  | f cis d8 r r4
  | R1
  | r4 r8 \highlightMotifSecond { a b a b cis
  %55
  | \unHighlightMotif d } a d4 r2
  | r8 cis, d e f e f4
  | e \highlightMotif { a gis g
  | fis f e ees
  | d } r r2
  %60
  | r4 r8 \highlightMotifSecond { g a g a b
  | \unHighlightMotif c } c, c'4 b bes~
  | bes \highlightMotifSecond { a b8 a b cis
  | \unHighlightMotif d } a d2 c!4
  | bes \highlightMotif { g' fis f~
  %65
  | f e dis d~
  | d cis c b~
  | b } a r r8 fis'
  | e d \highlightSubjectSecondInv { \unHighlightSubject c } b c4 d
  | e8 dis e c d cis d gis,
  %70
  | a b c4 b2
  \break
  | c4 \highlightSubjectFirstInv { e^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 a, b
  | e\rest c d e
  | d\rest f e d
  | r c8 b c4 d
  %75
  | e2 } r4 bes!
  | a d8 c b4 bes
  | a \highlightMotifSecond { d, e8 d e fis
  | g4 } fis8 e fis a cis e~
  | e d4 cis8 d f4 e8
  %80
  | f8 e d4 r
    \staffUpper
    \stemDown\tieDown
    gis
  | \shiftOn a
    \staffLower
    \stemUp\tieUp
    c,~ c8 bes a g
  | d'2
    \staffUpper
    \stemDown\tieDown
    e4 f
  | g f
    \staffLower
    \stemUp\tieUp
    r a,8 bes
    | a4. g8 f d g4~
  %85
  | g f~ f8 d ees4
  | d g8 f e! d e c
  | f4 r r2
  | r4
    \staffUpper
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.5 a'
    g8 f g4
  | \once\override NoteColumn.force-hshift = #0.1 f2
    \staffLower
    \stemUp\tieUp
    r4 \highlightSubjectThird { ees,~^\markup \subject #'(-1.2 . 0) #3
  %90
  | ees8 d f f f e g g
  | g fis a a a gis b b
  | b a b cis \unHighlightSubject d } gis, a b
  | c!4. c8 bes! a bes c
  | d4 a
    \staffUpper
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.5 e'2~
  %95
  | \once\override NoteColumn.force-hshift = #0.4 e4
    \staffLower
    \stemUp\tieUp
    d8 cis f4 r
  | r d cis c~
  | c b c g'
  | g2 r4 \highlightMotifSecond { f~
  | f8 dis e e e cis d d
  %100
  | \unHighlightMotif d } b c!4 d e
  | a,4. a8 b4 cis
  | d r r
    \staffUpper
    \stemDown\tieDown
    g
  | e
    \staffLower
    \stemUp\tieUp
    g, f cis!
  | d a' d
    \staffUpper
    \stemDown\tieDown
    \shape #'((0.2 . 0.5) (0 . 0.3) (0 . 0.3) (0 . 0)) Tie
    a'~
  %105
  | a
    \staffLower
    \stemUp\tieUp
    r \highlightSubjectSecondInv { d,2^\markup \scale #'(1 . -1) \subject #'(-0.8 . 0) #2
  | cis4 f b, bes
  | a d g,2
  | f4 g a8 g a4
  | d, } f c'4. d16 c
  %110
  | b4 \highlightMotifSecond { c~ c8 a bes! bes
  | bes g a a g4 }
    \staffUpper
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.3 g'
  | \once\override NoteColumn.force-hshift = #0.3 e
    d2 c4~
  | \once\override NoteColumn.force-hshift = #0.3 c
    bes8 c
    \once\override NoteColumn.force-hshift = #0.4 d4
    \once\override NoteColumn.force-hshift = #0.4 c
  | \staffLower
    \stemUp\tieUp
    bes4. a8 g bes a g
  %115
  | a4 d8 c b cis d4~
  | d8 cis \highlightMotifSecond { g'4~ g8 e f f
  | f dis e e } e a, d \highlightMotif { c
  | b4 bes a r8 a
  | gis4 g fis f
  %120
  | e2. } dis4
  | e4 e'2 dis4
  | e gis, a r
  | r2 r4 e'
  | f fis g gis
  %125
  | a2~ a8 \highlightMotifSecond { f g g
  | g e f f f d e e
  | e c d d d2~ }
  | d4 c f b,
  | c8 d \highlightMotifSecond { e e e cis d d
  %130
  | d b c! c } d f \highlightMotifSecond { bes, bes
  | bes g a a a f g g
  | \unHighlightMotif g } e f4 r bes
  | a2 g~
  | g4 e f g
  %135
  | a4. bes8 bes( a) a( g)
  | a2 r4 \highlightSubjectSecond { a^\markup \subject #'(-1.2 . 0) #2
  | bes f c' cis
  | d a e'2
  | f4 e d8 e d4
  %140
  | \unHighlightSubject a'8 } e a a a fis g g
  | g e
    \hideStaffSwitch \staffUpper
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.3 f!
    f
    \once\override NoteColumn.force-hshift = #0.3 f aes
    \once\override NoteColumn.force-hshift = #0.3 g g
  | \once\override NoteColumn.force-hshift = #0.3 g bes
    \once\override NoteColumn.force-hshift = #0.4 a!4
    \showStaffSwitch \staffLower
    \stemUp\tieUp
    c,2
  | bes4 r r g'
  | \staffUpper
    \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.3 fis
    e2 d4~
  %145
  | \once\override NoteColumn.force-hshift = #0.3 d
    \staffLower
    \stemUp\tieUp
    r r2
  | \highlightSubjectFirst { r4 e, b' a
  | r g fis e
  | r dis e fis
  | r g8 a g4 fis
  %150
  | e2 } r4 e'~
  | e8 cis d d d b \highlightMotif { c c
  | b4 bes a4. } c8
  | bes a bes4 r a8 b
  | cis b cis4 d\rest c
  %155
  | \override Stem.details.beamed-lengths = #'(4)
    b8[ d c c] \highlightMotifSecond { c2~
    \revert Stem.details.beamed-lengths
  | c8 a bes bes bes g a a
  | a fis g g g e f f
  | \unHighlightMotif e } a cis4 r
    \staffUpper
    \stemDown\tieDown
    bes'^~
  | bes8 a d4~ d8 c bes a
  %160
  | bes4
    \staffLower
    \stemUp\tieUp
    r r8 a, cis a
  | d4. cis8 d4. c8~
  | c8 a bes bes bes2~
  | bes8 g aes aes aes2~
  | aes8 f \highlightSubjectFirst { g4^\markup \subject #'(2.4 . 0) #1 d' c
  %165
  | r bes a g
  | r fis g a
  | r bes8 c bes4 a
  | g } r r2
  | r4 d'~ d8 f e e
  %170
  | e
    \hideStaffSwitch \staffUpper
    \stemDown\tieDown
    g f f f a g g
  | \showStaffSwitch \staffLower
    \stemUp\tieUp
    cis,4 d g,2~
  | g4 f r d'
  | cis2 r4 d
  | cis d r cis,
  %175
  | \highlightSubjectThird { d8^\markup \subject #'(-0.3 . 0) #3 e f f f e g g
  | g f a a a g bes bes
  | bes a bes g a4. } g8
  | f e d4 a'2~
  | a4 g2 \highlightSubjectSecond { a4^\markup \subject #'(-1 . 0) #2
  %180
  | bes f c' cis
  | d a e'2
  | f4 e d8 e d4
  | \staffUpper
    \stemDown\tieDown
    a' }
    \staffLower
    \stemUp\tieUp
    d, a2~
  | a1\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | s1*8
    _\markup {
      \expositionBullet "First exposition T1 S1 B1 A1 (1−17)"
    }
    _\markup \italic \tiny \with-color #greyTextColor {
      \ieyeglasses
      \column {
        \concat {
          "This fugue can be divided into three blocks of "
          "27 (subject 1), 44 (subject 2), 114 bars (exp 1/b, subjects 1 2 3)."
        }
        \raise #0.8
        \concat {
          "And we note that 44/27"
          \char ##x2248 "114/70"
          \char ##x2248 "1.618 (golden ratio),"
          " where 70 is the sum of the bars of the first two blocks."
        }
      }
    }
  | \highlightSubjectFirst { d4\rest_\markup \subject #'(1.5 . 0) #1 d a' g
  %10
  | d\rest f e d
  | d\rest cis d e
  | d\rest f8 g f4 e
  | d2 } r4 e
  | f e8 d e4 f
  %15
  | b, c8 d c4 b
  | a a' d, g~
  | g
    _\markup { \episodeBullet "Episode 1" }
    f8 g f4 e
  | d r r2
  | r4 d8 e d4 c
  %20
  | bes bes' e, fis
  | g2. a4
  | bes a8
    _\markup { \subjectPresentationBullet "Subject S1 (22−25)" }
    g f e d cis
  | d4 r r d
  | a' g f bes
  %25
  | a8 g f4 g a~
  | a8 gis a gis a4 a,
  | d2 \once\override Voice.Rest.X-offset = #-0.8 g,\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  %30
  | r4 \highlightMotif { a'2
    _\markup {
      \hspace #-1
      "Chromatic motif inverted"
    }
    gis4
  | g! fis f e
  | d2 } b\rest
  | \override MultiMeasureRest.staff-position = #0
    R1
  | \override MultiMeasureRest.staff-position = #-4
    R1
  %35
  | r4 \highlightMotif { a bes b
  | c cis d dis
  | e2 } f
  | e4 r8 \highlightMotifSecond { e fis e fis gis
  | a4 } b,\rest b2\rest
  %40
  | r4 d cis c
  | b e2 d4
  | c4 r8 \highlightMotifSecond { c d c d e
  | \unHighlightMotif f e f g a4 }
    \highlightSubjectSecond { a,_\markup \subject #'(-2 . 0) #2
  | bes f c' cis
  %45
  | d a e'2
  | f4 e d8 e d4
  | a'2 } e4\rest e8\rest a
  | g a g f e d c4
  | d e f c8\rest d
  %50
  | e4 fis g c,8\rest e
  | fis4 gis a d,8\rest g
  | f g f e d a d c
  | bes c bes a g d' g4~
  | g fis f e
  %55
  | r \highlightMotif { d cis c
  | b bes a gis }
  | a r r r8 cis
  | d4 r r r8 a
  | bes a \highlightMotif { g2 fis4
  %60
  | f! e ees d }
  | c r8 \highlightMotifSecond { c' d c d e
  | \unHighlightMotif f } c f2 e4
  | d r r2
  | r4 bes' a aes
  %65
  | g r r2
  | r4 r8 e fis e fis gis
  | a e a4~ a8 gis \highlightSubjectSecondInv {
    a4_\markup \scale #'(1 . -1) \subject #'(0 . 0) #2
  | gis c fis, f
  | e a d,2
  %70
  | c4 d e8 d e4
  | a, } r
    _\markup {
      \expositionBullet "Another Exposition with First Subject T1 S1 B1 A1 (71−88)"
    }
    r gis'
  | a2 r4 cis,
  | d2 r4 e
  | f2 r4 \highlightMotif { b,
  %75
  | c8 b c d \unHighlightMotif e } e, e'4
  | f fis g cis,
  | d r r2
  | r4 d ees e
  | f bes a g
  %80
  | d' \highlightSubjectFirstInv { d,_\markup \scale #'(1 . -1) \subject #'(-2 . 0) #1 a b
  | r c d e
  | r f e d
  | r cis8 a b4 cis
  | d } a bes g
  %85
  | a d g,2~
  | g a~
  | a4 b8 cis d4 bes
  | f' a,8 bes c4 c,
  | f2 \highlightSubjectSecond { a
    _\markup \subject #'(-2 . 0) #2
    _\markup { \subjectPresentationBullet "Subjects B2 T3" }
  %90
  | bes4 f c' cis
  | d a e'2
  | f4 e d8 e d4
  | \unHighlightSubject a'8 } e a2 g4
    _\markup { \subjectPresentationBullet "Subjects A2 S3" }
  | f4. g16 f e8 d e4
  %95
  | a, a'2 gis4
  | a2 r4 dis,
  | e2 a4 b!
  | c e, fis gis
  | a1~
  %100
  | a4 \highlightMotifSecond { a~ a8 fis g g
  | g e f!
    _\markup { \subjectPresentationBullet "Subject A1" }
    f f d e e
  | e cis d e } f e f g
  | cis,4 r r \highlightMotifSecond { bes~
  | bes8 gis a a a f g g
  %105
  | g e fis
    _\markup { \subjectPresentationBullet "Subjects A3 T2" }
    fis } g4 e
  | a \highlightMotif { a' gis g
  | fis f e ees
  | d } des c f
  | bes,2 b\rest
  %110
  | R1
  | r2 r4 \highlightMotifSecond { g~
  | g8 e f f f d ees ees
  | ees c d ees } f ees f4
    _\markup { \subjectPresentationBullet "Subjects S2 A3" }
  | bes d ees2
  %115
  | d4 \highlightMotif { fis g gis
  | a } r8 \highlightMotif { a bes4 b
  | c
    _\markup { \episodeBullet "Episode 2" }
    cis d } d,
  | g c, f b,
  | e r8 \highlightMotif { e dis4 d
  %120
  | cis c \unHighlightMotif b8 } a b4
  | e, r r2
  | r4 \highlightMotif { e' f fis
  | g gis a } r
  | r \highlightMotif { a bes b
  %125
  | c cis d2~ }
  | \highlightMotifSecond { d4 d8 d d b c c
  | c a b b b gis a a
  | gis4 } a d, e
  | a,1~
  %130
  | a4 \highlightMotifSecond { a'8 a a f g g
  | g e f f f d e e
  | \unHighlightMotif e } cis\highlightSubjectFirst {
    d4
    _\markup \subject #'(1.2 . 0) #1
    _\markup { \subjectPresentationBullet "Subject B1" }
    a' g
  | r f e d
  | r cis d e
  %135
  | r f8 g f4 e
  | \unHighlightSubject d8 } cis d e f4 fis
    _\markup { \subjectPresentationBullet "Subjects T2 A3" }
  | g d a'2~
  | a1~
  | a~
  %140
  | a4
    _\markup { \episodeBullet "Episode 3" }
    b,\rest b2\rest
  | r4 \highlightMotifSecond { d~ d8 f e e
  | e g fis fis fis a g g
  | g bes a a } a2~
  | a8 fis g g g e f f
  %145
  | f d ees f g4
    _\markup { \subjectPresentationBullet "Subjects A3 T1 S2" }
    g,
  | c2 r4 f
  | e2 dis4 a'
  | g c,2 b8 a
  | g4 c a b
  %150
  | gis
    _\markup { \episodeBullet "Episode 4" }
    a e r
  | r2 r4 a'~
  | a8 fis g g g e fis4
  | g cis, r d
  | a' bes! c,\rest fis
  %155
  | f! e r ees
  | d cis r c
  | b bes2 a8 gis
  | a4 c8\rest
    _\markup { \subjectPresentationBullet "Subjects S1 A1" }
    g' f e d cis
  | d4 r8 d e4 fis
  %160
  | g8 f! e g f2~
  | f8 f bes4~ bes8 a g4
  | fis r8 d ees4 e
  | f r8 c des4 d
  | ees \highlightSubjectFirstInv {
    bes'
    _\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
    _\markup { \subjectPresentationBullet "Subjects B1 T1" }
    e, fis
  %165
  | r g a b
  | r c bes! a
  | r g8 fis g4 a
  | b } \highlightMotif { b,
    _\markup { \episodeBullet "Episode 5" }
    c cis
  | d2 } r4 \highlightMotifSecond { bes'~
  %170
  | bes8 g a a a f g g
  | g e f f f d e e
  | e cis d4 } g, g'~
  | g a8 g f4 bes
  | a4. g8 a4 \highlightSubjectSecond { a,_\markup \subject #'(1.3 . 0) #2
  %175
  | bes f c' cis
  | d a e'2
  | f4 e d8 e d4
  | a' } bes a4. g8
  | fis4 f e \highlightSubjectThird {
    ees~
    _\markup \subject #'(-1.8 . 0) #3
    _\markup { \subjectPresentationBullet "Subjects B3 T2 S1" }
  %180
  | ees8 d f f f e g g
  | g f a a a g bes bes
  | a2~ a4. gis8
  | a2. } a,4
  | d1\fermata
  | \bar "|."
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
    %composer = "Johann Sebastian Bach"
    opus = "BWV 1080, 11"
    subtitle = ""
    title = \markup {
      Contrapunctus XI
    }
    subsubtitle = \markup {
      \center-column {
        \fugueStructureBoxesXI_lineone
        \fugueStructureBoxesXI_linetwo
        \fugueStructureBoxesXI_linethree
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
  \midi { \tempo 4 = 75 }
}
