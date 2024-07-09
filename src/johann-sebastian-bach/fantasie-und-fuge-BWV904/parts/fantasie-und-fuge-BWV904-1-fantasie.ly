Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | e2 f~
  | f e~
  | e4 a8 gis a2~
  | a gis
  %5
  | a4 g8 f g4 f8 e
  | \override NoteColumn.force-hshift = #0 f1~
  | f4 e8 d e d c! b
  | c1~
  | c4 d8 c b a gis fis
  %10
  | a gis fis e e'2~
  | e d~
  | d4 c8 b c4 d8 c
  | b2. c8 b
  | a2 b~
  %15
  | b4 a8 gis a4 b8 c
  | fis,4 b2 e4~
  | e2 dis
  | e4 b8 a b4 c8 b
  | a2 b~
  %20
  | b4 e8 d e4 f8 e
  | d4 f8 e f2~\arpeggio
  | f4 e8 d e4 f8 e
  | d2 g~
  | g4 f8 e f4 g8 f
  %25
  | e2 a~
  | a4 g8 fis g4 a8 g
  | fis2 b~
  | b4 a8 g a2~
  | a4 g8 fis g2~
  %30
  | g fis~
  | fis4 e8 dis e2
  | fis b,~
  | b4 e8 dis e2~
  | e dis
  %35
  | e4 d8 c d4 c8 b
  | c1~
  | c4 b8 a b a g fis!
  | g1~
  | g4 a8 g fis e dis cis
  %40
  | e dis cis b b'2~
  | b a~
  | a4 g8 fis g2
  | f1
  | e2~ e8 e f g
  %45
  | a2~ a8 a b c
  | d2. c4~
  | c8 c b a b2
  | a2 d~
  | d8 d c b c4 d8 c
  %50
  | b2 e~
  | e8 e dis cis dis4 e8 fis
  | b,1~
  | b4 a8 g a2~
  | \stemNeutral a8 a g fis g a b g
  %55
  | e g fis e fis g a fis
  | dis b cis dis e fis g a
  | \stemUp b2~ b8 fis g a
  | g2~ g8 g a b
  | s1
  %60
  | \stemUp\tieUp f'2\rest g8\rest c, d e
  | f2~ f8 e4.~
  | e8 a, b cis a'\rest f g a
  | bes2~ bes8 a4.~
  | a4 g2 f4
  %65
  | e1
  | d2 g~
  | g8 g f e f4 g8 f
  | e1~
  | e4 d8 cis d2
  %70
  | e a,~
  | a4 d8 cis d2~
  | d8 f e d a' b,! cis e~
  | e d c bes d c bes a
  | bes1~
  %75
  | bes8 bes a g a g f! e
  | f1~
  | f8 a g f e d cis b
  | d cis b a a'2~
  | a g~
  %80
  | g4 f8 e f4 g8 f
  | d'8\rest b e gis a e c a
  | d1~
  | d4 c8 b c4 d8 c
  | b4 b8 a bes4 c8 bes
  %85
  | a1
  | g~
  | g8 f a cis d b fis a
  | \stemNeutral gis e gis b e c a c
  | d a c, c' e, gis b d
  %90
  | \stemUp c2~ c8 a c e
  | d2~ d8 b d f
  | e2~ e8 c e g!
  | f d f a gis b gis e
  | a e c a d2~
  %95
  | d4 e8 d c2~
  | c4 c b8 d f a,
  | gis b a gis a c b a
  | e'2. a4~
  | a gis f2\rest
  %100
  | e2 f~
  | f e~
  | e4 a8 gis a2~
  | a gis
  | a4 g8 f g4 f8 e
  %105
  | f1~
  | <d f>4 e8 d e d c! b
  | c1~
  | c4 d8 c b a gis fis
  | a gis fis e <gis b e>2~
  %110
  | e'8 b c a~ a a b gis
  | \once\override NoteColumn.force-hshift = #0 gis2 a\fermata
    \fine
}

Mezzosoprano = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | c1
  | d2 e~
  | e d
  | e e
  %5
  | e \once\override Tie.staff-position = #2 e~
  | \override NoteColumn.force-hshift = #1.6
    e4 d8 cis
    \revert NoteColumn.force-hshift
    \once\override Tie.staff-position = #2 d2~
  | \once\stemUp d4 s2.
  | s2 \once\override NoteColumn.force-hshift = #0.2 e,
  | \once\override NoteColumn.force-hshift = 0.3 f
    \change Staff = "lower" d,4\rest \once\stemUp b'4~
  %10
  | \once\override Stem.length = #5 \once\override NoteColumn.force-hshift = 1.4
    b2
    \change Staff = "upper" \stemUp \once\override NoteColumn.force-hshift = 0.2 <gis' b>~
  | \once\override NoteColumn.force-hshift = 0.2 q4 a2 gis4
  | \once\override NoteColumn.force-hshift = 0.2 a2 \stemDown a~
  | \once\override NoteColumn.force-hshift = 0.8 a4 g8 f g4 a8 g
  | f2. g8 f
  %15
  | e1
  | dis2 e
  | fis4 a8 g a4 b8 a
  | g4 fis g2
  | fis f
  %20
  | e a~
  | a << { \stemUp \shiftOn d\arpeggio } \\ { \stemDown g,\arpeggio } >>
  | << { \shiftOn c } \\ g >> \stemDown c~
  | \once\override NoteColumn.force-hshift = 0.8 c4 b8 a b4 c8 b
  | a2 d~
  %25
  | \once\override NoteColumn.force-hshift = 0.8 d4 c8 b c4 d8 c
  | b2 e~
  | \once\override NoteColumn.force-hshift = 0.8 e4 d8c d4 e8 d
  | c2. d8 c
  | b2. c8 b
  %30
  | a1
  | \stemUp \shiftOn b2
    \once\shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
      ((0 . 0.8) (0 . 0.8) (0 . 0.8) (-0.6 . 0.8))
    ) Tie
    c!~
  | c \stemDown b
  | \once\override NoteColumn.force-hshift = 1 b2 a
  | b b
  %35
  | b \once\override Tie.staff-position = #0.1 b~
  | \once\override NoteColumn.force-hshift = 1.4 b4 a8 gis
    \once\override Tie.staff-position = #-0.5 a2^~
  | \stemUp \once\override NoteColumn.force-hshift = 0 a4 s2.
  | \override NoteColumn.force-hshift = 0.4
    s2 \stemDown b,
  | c
    \revert NoteColumn.force-hshift
    \change Staff = "lower"
    b,4\rest fis'~
  %40
  | \stemUp \once\override NoteColumn.force-hshift = #0.2 fis2
    \change Staff = "upper" \stemDown
    b2~
  | b1
  | b2 e~
  | \once\override NoteColumn.force-hshift = #1.3 e8 e d c d2~
  | \once\override NoteColumn.force-hshift = #1 d8 d c b c2~
  %45
  | c8 c d e f2~
  | f4 f e2
  | d g~
  | \once\override NoteColumn.force-hshift = #0.8 g8 g f e f4 g8 f
  | e2 a~
  %50
  | \once\override NoteColumn.force-hshift = #0.8 a8 a g fis g4 a8 g
  | fis1~
  | fis8 fis e dis e fis g e
  | cis2 c
  | s1*3
  %57
  | e8\rest g fis e dis2
  | e c\rest
  | c'2. b4^~
  %60
  | b8 e, f! g! a2~
  | a4 g8 f g4 a8 g
  | f2 d'~
  | d4 c!8 bes c4 d8 c
  | bes2 a
  %65
  | bes2~ bes8 a4.~
  | a2 g
  | a d~
  | \once\override NoteColumn.force-hshift = #1.3 d4 cis8 b cis2
  | a bes~
  %70
  | bes4 a8 g a2~
  | \once\override NoteColumn.force-hshift = #0.9 a g
  | a1~
  | a~
  | \once\override NoteColumn.force-hshift = #1.3 a8 a g fis <d g>2
  %75
  | e1~
  | \once\override NoteColumn.force-hshift = #1.3 e8 e d cis d2^~
  | d4 s2.
  | s2 \stemUp\tieUp <cis e>~
  | q4 d2 cis4
  %80
  | d2 s
  | e1
  | \stemDown\tieDown fis2 gis
  | a a~
  | \once\override NoteColumn.force-hshift = #0.8 a g~
  %85
  | \once\override NoteColumn.force-hshift = #1.3 g8 e c e f d a c
  | b d cis b cis e d cis
  | % FIXME: We must use a Slur here, because a Tie with a Change Staff in the middle
    %        is displayed below the stave
    \once\shape #'(((0 . 0.2) (0 . 0) (0 . 6) (-1 . 1.5))) Slur
    d1(
  | \change Staff = "lower" \stemUp\tieUp d2) c!~
  | c4 b8 a b4 c8 b
  %90
  | a c \change Staff = "upper" \stemDown\tieDown e g f!2~
  | f8 d f a g2~
  | g8 e gis b a2~
  | a8 f a c b2
  | e,4\rest e fis gis8 a
  %95
  | b2. a8 g!
  | f1
  | e~
  | e8 d' c b c2~
  | c4 b r2
  %100
  | c1
  | d2 e~
  | \once\override NoteColumn.force-hshift = #0.9 e d
  | e e
  | e \once\override Tie.staff-position = #2 e~
  %105
  | \once\override NoteColumn.force-hshift = #1 e4 d8 cis
    \once\override Tie.staff-position = #1.5
    d2~
  | \once\override NoteColumn.force-hshift = #0
    \once\omit Stem
    d4 s2.
  | s2 \once\override NoteColumn.force-hshift = #0.4 e,
  | \once\override NoteColumn.force-hshift = #0.4 f
    \change Staff = "lower" \stemUp d,4\rest b'_~
  | \once\override NoteColumn.force-hshift = #0.7 b2
    \change Staff = "upper" \stemDown e~
  %110
  | e <d e>
  | \once\override NoteColumn.force-hshift = #0 d2 cis
}

Alto = \context Voice = "three" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | a1
  | \once\override NoteColumn.force-hshift = #0.3 b
  | \once\override NoteColumn.force-hshift = #0.7 a2. b4
  | \override NoteColumn.force-hshift = #0.3 c2 b
  %5
  | a a \revert NoteColumn.force-hshift
  | \once\override NoteColumn.force-hshift = #0 a1
  | b~
  | \once\override NoteColumn.force-hshift = #1.4 b8 b a gis
    \once\override Tie.staff-position = #-1.5 a2~
  | a s
  %10
  | s e2~
  | e1
  | e2 s
  | s1*18
  %31
  | g2 g
  | a4 g fis2
  | \once\override NoteColumn.force-hshift = #1.3 e2. fis4
  | \once\override NoteColumn.force-hshift = #0.2
    g2 fis
  %35
  | e e~
  | e1
  | fis~
  | \once\override NoteColumn.force-hshift = #1.3 fis8 fis e dis e2^~
  | e s
  %40
  | s \stemUp\tieUp \shiftOn <dis fis>~
  | q4 e2 dis4
  | e2 s \shiftOff
  | s1*33
  %76
  | \stemDown\tieDown s2 a,
  | bes4 \change Staff = "lower" \stemUp\tieUp s
    \once\override Tie.staff-position = #5 g2~
  | g2.*2/3
    \change Staff = "upper" \stemDown\tieDown
    a2~
  | a1
  %80
  | a2 d~
  | d s
  | s1*18
  %100
  | a'1
  | b
  | a2. b4
  | c2 b
  | a a
  %105
  | a1
  | b~
  | \once\override NoteColumn.force-hshift = #1.3 b8 b a gis
    \once\override Tie.staff-position = #-1.5 a2~
  | a2 s
  | s1*2
  %111
  | \once\override NoteColumn.force-hshift = #0.8 e1
}

Tenor = \context Voice = "four" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | e2. d8 c
  | b2. a8 b
  | c2 d8 c b a~
  | a c b a e'2
  %5
  | a,2 	a~
  | a8 g f e d2
  | g4\rest b, e2~
  | e4 e a2~
  | a4 a d2~
  %10
  | \once\override NoteColumn.force-hshift = #0 d~
    d4 c8 b
  | c2 b\prall
  | a1
  | b2 e~
  | e4 d8 c d4 e8 d
  %15
  | c1
  | b
  | a
  | b2 e~
  | e4 d8 c d4 e8 d
  %20
  | c1~
  | c2. b4
  | c2 f'4\rest \stemNeutral c,
  | g' f e d
  | cis a r d
  %25
  | a' g fis e
  | dis b r e
  | b' a gis e
  | a g fis e
  | dis b e d
  %30
  | cis dis8 e dis4 cis8 dis
  << {
  |   \stemUp
      \once\override NoteColumn.force-hshift = #0.4 b2. a8 g
  |   \once\override NoteColumn.force-hshift = #0.4 fis2. e8 fis
  |   \once\override NoteColumn.force-hshift = #0.4 g2 a8 g fis e~
  |   e8 g fis e b'2
  %35
  |   \override NoteColumn.force-hshift = #0.4
      b, b
      \revert NoteColumn.force-hshift
  |   s1
    } \\ {
  |   \stemUp e'2 e
  |   a, b
  |   c a'\rest
  |   s1
  %35
  |   e,2 e^~
  |   e8 d c b \once\stemUp a2
    } >>
  | f'4\rest \stemUp\tieUp fis, b2~
  | b4 b e2~
  | e4 e a2~
  %40
  | a~ a4 g8 fis
  | g2 fis\prall
  | e s
  | s1*11
  %54
  | b'1~
  | b4 a8 g a2~
  | a4 a g fis
  | g a b2~
  | b8 b cis dis e2~
  | e4 d8 c d4 e8 d
  %60
  | c2. cis4
  | d2. cis4
  | d1~
  | d8 bes c d ees4 a,
  | d2~ d8 e f d
  %65
  | g2 e
  | f8 g f e d f e d
  | cis2 r8 d e f
  | g f g a g bes a g
  | f2. g8 f
  %70
  | e2. f8 e
  | d2. e4
  | f2 e
  | a,2. d4~
  | d8 c bes a \once\override Tie.staff-position = #5 g2~
  %75
  | g4 e a2~
  | a8 g f e d2~
  | d4 d s e_~
  | e2. f8 e
  | f2 e\prall
  %80
  | d r
  | s c'~
  | \stemNeutral c4 b8 a b4 c8 b
  | a c e g! fis d b d
  | g, b d f e c a c
  %85
  | f,4 a d, f~
  | f e8 d e4 f8 e
  | d4 f b, d
  | \stemDown e1
  | fis2 gis
  %90
  | a2. a4
  | b2. b4
  | c2. cis4
  | d2. e8 d
  | \stemNeutral c2~ c8 c b a
  %95
  | gis b gis e a e c a
  | d d, f a d f a d
  | e, d' c b c a gis fis
  | gis b a gis a fis e dis
  | e e, e' gis b d! \change Staff = "upper" \stemDown f! gis
  %100
  | \change Staff = "lower" \stemUp\tieUp
    e2. d8 c
  | b2. a8 b
  | c2 d8 c b a~
  | a c b a e'2
  << {
  |   \stemUp \shiftOn e, e
  %105
  |   s1
  } \\ {
  |   \stemUp\tieUp a2 a~
  %105
  |  a8 g f e d2
  } >>
  | f4\rest b, e2~
  | e4 e a2~
  | a4 a d2~
  | d~ d4 c8 b
  %110
  | c2 b\prall
  | <e, a>1
}

Bass = \context Voice = "five" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | a1
  | g
  | f
  | e2. d4
  %5
  | c2 cis
  | d~ d8 c b a
  | gis1
  | a2. b8 c
  | d1
  %10
  | \once\override NoteColumn.force-hshift = #0 e~
  | e
  | a,
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  %15
  | e'2 a~
  | a4 g8 fis g4 a8 g
  | fis1
  | e
  | fis2 gis
  %20
  | a2. g!4
  | f2 g
  | c, \clef treble g''2\rest
  | s1*8
  %31
  | \clef bass e,1
  | d
  | c
  | b2. a4
  %35
  | g2 gis
  | a~ a8 g fis e
  | dis1
  | e2. fis8 g
  | a1
  %40
  | b~
  | b
  | e,2 \stemNeutral\tieNeutral r8 e' fis g
  | a2 r8 c b a
  | gis4 e a g
  %45
  | f e d c
  | b8 g a b c d e f
  | g2~ g8 a b c
  | d2~ d8 c b a
  | gis b a gis a g fis e
  %50
  | dis fis e dis e d c b
  | a fis' g a b c! b a
  | g1~
  | g8 g fis e fis g a fis
  | \stemDown\tieDown dis4 b e d
  %55
  | cis2 c
  | b1~
  | b2. b4
  | e2~ e8 d'! c! b
  | a g fis e fis a gis b
  %60
  | a4 g f e
  | d8 f g a bes4 e,
  | f e f d
  | g2. fis4
  | \clef treble g8 a bes c d2~
  %65
  | d8 d c bes c4 d8 c
  | bes1
  | a
  | a\rest
  | d
  %70
  | c
  | bes
  | a2. g4
  | \clef bass f2 fis
  | g~ g8 f e d
  %75
  | cis2. a4
  | d2~ d8 c bes a
  | g1
  | a~
  | a
  %80
  | d,2 g\rest
  | R1
  | s1*18
  %100
  | a'1
  | g
  | f
  | e2. d4
  | c2 cis
  %105
  | d~ d8 c b a
  | gis1
  | a2. b8 c
  | d1
  | e~
  %110
  | e
  | a,\fermata
    \fine
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Mezzosoprano
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 904"
    title = \markup { "Fantasie" }
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
