Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusV
  | s1*6
  | \highlightSubjectFirst { d2^\markup \subject #'(0 . 0) #1 a'4. g8
  | f4. e8 d2
  | cis d4. e8
  %10
  | f2~ f8 a g f
  | \unHighlightSubject e } gis a b c2~
  | c8 c bes! a bes2~
  | bes8 bes a g a2~
  | a4 bes! g2~
  %15
  | g2. f4
  | e2 r
  | \highlightSubjectFirstInv { d^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 a4. b8
  | c4. d8 e2
  | f e4. d8
  %20
  | c2~ c8 b c d
  | e4 } dis~ dis8 fis e dis
  | e d! c b c4. b8
  | a2~ a8 bes! a g
  | a c d e f g a4~
  %25
  | a8 g f e f e d cis
  | d a b cis d2~
  | d8 c! bes! a g2~
  | g~ g8 f bes4
  | a b\rest d2\rest
  | R1*3
  %33
  | r2
    \highlightSubjectFirstInv { c^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
  | f,4. g8 a4. bes8
  %35
  | c2 d
  | c4. bes8 a2~
  | a8 g a bes \unHighlightSubject c2~ }
  | c8 d c bes a4 f'~
  | f e2 d4~
  %40
  | d c2 bes!4~
  | \highlightMotif {
      bes4.^\markup \italic\tiny \with-color #greyTextColor {
        "B"
      }^\markup \italic \tiny \with-color #greyTextColor {
        "Note Bach's motive on the soprano, at bar 41"
      }
      \once\override Staff.TextScript.extra-offset = #'(0 . 0.2)
      a8^\markup \italic\tiny \with-color #greyTextColor { "A" }
      c^\markup \italic\tiny \with-color #greyTextColor { "C" }
      \once\override Staff.TextScript.extra-offset = #'(0 . -0.1)
      b^\markup \italic\tiny \with-color #greyTextColor { "H" }
    }
    c4
  | fis,8 d
    %\shape #'((-1 . 0) (0 . -3) (0 . -2) (0 . -1)) Tie
    g4_~ g8 g' f!4
  | bes,4. a8 d4 r
  | r2 r4 d
  %45
  | g2. f8 ees
  | f2~ f8 ees d4~
  | d8^\markup {
      \subjectStrettoBullet
      "Stretto inversus BT and episode (stretto) STAB, bars 47−55"
    }
    g, f ees d f g a
  | bes f bes4~ bes8 c bes a
  | bes c d4~ d8 ees f4~
  %50
  | f8 ees d c bes4. c8
  | d4 c f2~
  | f8 e! f g c,2~
  | c4^\markup \override #'(baseline-skip . 2) {
      \column {
        "Episode made of a four voice stretto using"
        "the first notes of the subject (inversus)"
      }
    }
    \highlightSubjectFirstInv { f^\markup \scale #'(1 . -1) \subject #'(2.3 . 0) #1
    c4. d8
  | ees4. f8 \unHighlightSubject g4 } d~
  %55
  | d8 e! f4~ f8 g a4
  | e8 f g4 d8 e f4
  | \highlightSubjectFirst { e2^\markup \subject #'(0 . 0) #1 a4. g8
  | f4. e8 d2
  | cis d4. e8
  %60
  | f2~ f8 g f e
  | \unHighlightSubject d2. } a4~
  | a c f,2~
  | f8 a g f e2~
  | e~ e8 d cis d
  %65
  | cis4^\markup \override #'(baseline-skip . 2) {
      \column {
        "similar episode using the first notes"
        "of the subject (rectus)"
      }
    }
    \highlightSubjectFirst { e'^\markup \subject #'(-0.8 . 0) #1
    a4. g8
  | f4. e8 \unHighlightSubject d4 } g~
  | g8 f e4~ e8 d c4
  | f8 e d4 g8 f e4
  | \highlightSubjectFirstInv { a2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,4. e8
  %70
  | f4. g8 a2
  | bes a4. g8
  | f2~ f8 e f g
  | \unHighlightSubject a } g f a d,2~
  | d8 bes c2 bes4
  %75
  | a2~ a8 d, g bes
  | e,2. d4~
  | d8 cis d b cis e a4~
  | a8 bes a g f e d e
  | f g a4~ a8 g f g
  %80
  | a g f e d bes' a g
  | f a b cis d2~
  | d8 ees d c bes d e fis
  | g2~ g8 a g f
  | e cis d2~ d8 g
  %85
  | cis,4 d2 cis4
  | d2 r8 d c bes
  | a bes a g fis g fis a
  | << {
      \stemUp
      e d e g fis a c4~ c2
      c8 bes d cis
      d1\fermata
    } \\ {
      \stemDown
      s2 s8
      \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0.3)) Tie
      a4.~ a2~
      \voiceOne
      \hide Stem
      a8[ s a g]
      fis1
    } >>
  \bar "|."
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \mergeDifferentlyDottedOn
  %1
  | \stemUp \highlightSubjectFirstInv {
    a'2^\markup \italic \tiny \with-color #greyTextColor {
      \ieyeglasses
      \concat {
        "14-note version of the subject "
        \scale #'(1 . -1) \subject #'(0 . 1.4) #1
      }
    }
    d,4. e8
  | f4. g8 a2
  | bes a4. g8
  | \stemNeutral
    f2~ f8 e f g
  %5
  | \unHighlightSubject a } bes c4~ c8 bes a bes
  | e, f g4~ g8 a f g
  | \stemDown a g f e d b cis4
  | d2~ d8 e f g
  | a e a4~ a8 d, g4
  %10
  | f8 a b cis d a d4
  | c!2 b\rest
  | b\rest b8\rest a' g f
  | e2~ e8 g f e
  | f2 e~
  %15
  | e8 a, b cis d a
    \shape #'((0.3 . 0.5) (0 . 0.4) (0 . 0.4) (-0.3 . 0.5)) Tie
    d4~
  | \stemUp
    \shiftOn d8 d cis b c2
  | r8 \stemDown a, b cis d e f4~
  | f8 g a4~ a8 g f e
  | d4 d'~ d8 d c b
  %20
  | a e fis gis a2~
  | a8 gis a b c2
  | b~ b8 b a gis
  | a g! f e f4. g8
  | c,4 r r2
  %25
  | R1
  | \highlightSubjectFirst { d2_\markup \subject #'(2 . 0) #1 a'4. g8
  | f4. e8 d2
  | cis d4. e8
  | f2~ f8 g f ees
  %30
  | \unHighlightSubject d1~ }
  | d8 ees d c bes2~
  | bes~ bes8 d c bes
  | a4. a'8 g f g4
  | c, r r8 f e d
  %35
  | g a bes4~ bes8 a bes4
  | a e f2~
  | f8 e f g a2~
  | a8 bes a g f4 a
  | g2 f
  %40
  | e d
  | c4 r \highlightSubjectFirst { g'2_\markup \subject #'(1.2 . 0) #1
  | d'4. c8 bes4. a8
  | g2 fis
  | g4. a8 bes2~
  %45
  | bes8 c bes a \unHighlightSubject g } bes a g
  | a4 c f,4. g8
  | f ees d c d4 r
  | r8 a bes c d c ees4
  | d g8 a bes c d4~
  %50
  | d8 c bes a g a bes4~
  | bes8 g a4~ a8 f g a
  | bes2~ bes8 bes a g
  | a4 r r
    \highlightSubjectFirstInv { c_\markup \scale #'(1 . -1) \subject #'(1 . 0) #1
  | g4. a8 bes4. c8
  %55
  | \unHighlightSubject d4 } a~ a8 bes c4~
  | c bes2 a4~
  | a8 b a gis a4 r
  | r2 \highlightSubjectFirst { d,_\markup \subject #'(2 . 0) #1
  | a'4. g8 f4. e8
  %60
  | d2 cis
  | d4. e8 f2~~
  | f8 g f ees \unHighlightSubject d2~ }
  | d~ d8 d c bes
  | a2. gis4
  %65
  | a4 r r \highlightSubjectFirst { a'_\markup \subject #'(1.1 . 0) #1
  | d4. c8 bes4. a8
  | \unHighlightSubject g4 } c~ c8 bes a4~
  | a8 g f4 bes8 a g4
  | c8 bes c4~ c8 a bes4
  %70
  | \stemUp
    \override Stem.details.beamed-lengths = #'(4)
    a8[ cis]
    \revert Stem.details.beamed-lengths
    \stemDown d[ e] f2
  | r8 a g f
    \stemUp
    e d e4
  | d2
    \once\override Voice.Rest.X-offset = #-2
    b2\rest
  | \override MultiMeasureRest.staff-position = #-2
    R1
  | s1*4
  %78
  | \stemDown
    \highlightSubjectFirst { d,2_\markup \subject #'(2 . 0) #1 a'4. g8
  | f4. e8 d2
  %80
  | cis d4. e8
  | f2~ f8 g f e
  | \unHighlightSubject d2. } r4
  | r8 a' bes c d2
  << {
  | a~ a8 a g4~
  %85
  | g8 a bes4 a4. g8~
  | g e fis4 s2
  | s1
  | s1
  | s1
  %90
  | s1
  } \new Voice {
  | s1
  %85
  | s1
  | \voiceOne \stemDown \highlightSubjectFirst {
    d2_\markup \subject #'(-2.6 . 0) #1
    a'4. g8
  | fis4. e8 d2
  | cis d4. e8
  | fis2~ fis8 g fis e
  %90
  | \unHighlightSubject d1_\fermata }
  } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  | \override MultiMeasureRest.staff-position = #0
    R1_\markup \italic \tiny \with-color #greyTextColor {
      \hspace #13
      \expositionBullet "Exposition ABST, bars 1−14"
    }
  | R1*2
  | s1*6
  %10
  | \highlightSubjectFirstInv { d2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 a4. b8
  | c4.
    \staffUpper
    \stemDown
    d8 e2
  | f e4. d8
  | \staffLower
    \stemUp
    cis2~~ cis8 a b cis
  | \unHighlightSubject d2~ } d8 d cis b
  %15
  | cis4 d8 e f e \hideStaffSwitch f
    \staffUpper
    \stemDown
    g \showStaffSwitch
  | a4 e a2
    \staffLower
  | \override MultiMeasureRest.staff-position = #0
    % we cannot use here a MultiMeasureRest R1 because the change Staff ignores it (why?)
    % and the line drawn for showing the staff change would be a mess
    \once\override Voice.Rest.X-offset = #8
    d,,1\rest
  | \override MultiMeasureRest.staff-position = #8
    R1*2
  %20
  | \stemUp \highlightSubjectFirst { a'2^\markup \subject #'(2.5 . 0) #1 e'4. d8
  | c4. b8 a2
  | gis a4. b8
  | c2~ c8 d c bes!
  | a2 } r8 e' d cis
  %25
  | d2~ d8 cis e4
  | a,2. d4~
  | d4. c8 bes2~
  | bes8 bes a g a4. g8
  | a4 bes c2~
  %30
  | c8 bes a g f4 g
  | a2~ a8 g f e
  | d4 e f g~
  | g8 g f2 e4
  | f8 c d e f4 r
  %35
  | r r8 c f4. e8
  | f a c4~ c2~
  | c8 bes a g f2~
  | f8 e f g a4 r
  | \override MultiMeasureRest.staff-position = #2
    R1
  %40
  | \override MultiMeasureRest.staff-position = #4
    R1
  | \highlightSubjectFirstInv { c2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1 g4. a8
  | bes4. c8 d2
  | ees d4. c8
  | bes2~ bes8 a bes c
  %45
  | \unHighlightSubject d2~ } d8 d c bes
  | c2~ c8 f, bes4~
  | bes a bes r
  | r2 \highlightSubjectFirstInv { f'2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1
  | bes,4. c8 d4. ees8
  %50
  | f2 g
  | f4. ees8 d2~
  | d8 c d e! \unHighlightSubject f2~ }
  | f4 r \highlightSubjectFirstInv { f^\markup \scale #'(1 . -1) \subject #'(2.3 . 0) #1
    c~
  | c8 d ees4~ ees8 f \unHighlightSubject g4 }
  %55
  | d4. e!8 f4. g8
  | a4 e8 f g4 d~
  | d8 d cis b cis2
  | d8 a c!4~ c8 a bes g'
  | e4 a,~ a8 a b cis
  %60
  | d4 r r
    \staffUpper
    \stemDown
    a'
  | \once\override NoteColumn.force-hshift = #-0.3 bes
    \staffLower
    \stemUp
    bes, a8 g a bes
  | c2~ c8 c bes a
  | g1~
  | g8 g f e f2
  %65
  | e4 r r2
  | \highlightSubjectFirst { d'4^\markup \subject #'(2.2 . 0) #1
    g~ g8 f e4~
  | e8 d \unHighlightSubject c4 } f4. e8
  | d2. e4~
  | e8 d e fis g2
  %70
  | \staffUpper
    \stemDown
    \highlightSubjectFirstInv { a_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,4. e8
  | f4. g8 a2
  | bes a4. g8
  | f2_~ f8 e fis g
  | \unHighlightSubject a } g fis a d,4 g_~
  %75
  | g8 cis, d f bes,2_~
  | bes8 a g a
    \staffLower
    \stemUp
    f2
  | \highlightSubjectFirst { e^\markup \subject #'(-0.8 . 0) #1 a4. g8
  | f4. e8 d2
  | cis d4. e8
  %80
  | f2~ f8 g f e
  | \unHighlightSubject d } f g a bes2~
  | bes8 c bes a g bes c d
  | ees2 d4 g~
  | g f8 e d f e d
  %85
  | e4 f e8 d e4
  | d2 e8\rest e, fis g
  | a g a bes c bes c fis,
  | g a g e a g fis e
  | d2~

    d8 cis d e
  %90
  | fis1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | s1*3
  | \highlightSubjectFirst { d2_\markup \subject #'(1.2 . 0) #1 a'4. g8
  %5
  | f4. e8 d2
  | cis d4. e8
  | f2~ f8 g f e
  | \unHighlightSubject d } f g a bes2
  | a4. \stemUp a,8 b4. cis8
  %10
  | \stemDown d4. e8 f4 d
  | a'2~ a8 a bes c
  | d2 g,~
  | g8 g f e f2~
  | f8 f e d e2
  %15
  | a1~
  | a2~ a8 bes a g
  | f2._\markup {
      \secondExpositionBullet "Second exposition STBA, bars 17−30"
    }
    d4
  | a'4 f c'2~
  | c8 c b a gis2
  %20
  | \highlightSubjectFirst { \unHighlightSubject a~ } a8 g! f4
  | e1~
  | e2 b\rest
  | \highlightSubjectFirstInv { a'_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 d,4. e8
  | f4. g8 a2
  %25
  | bes a4. g8
  | f2~ f8 e f g
  | a2 } c,8\rest a' g f
  | e2 d~
  | d8 d c bes a2
  %30
  | bes~ bes8 bes a g
  | fis2 g~
  | g8 g f! e d4 e
  | \highlightSubjectFirst { f2_\markup \subject #'(1.0 . 0) #1
    _\markup {
      \subjectStrettoBullet "Stretto rectus-inversus BS, bars 33−37"
    }
    c'4. bes8
  | a4. g8 f2
  %35
  | e f4. g8
  | a2~ a8 bes a g
  | \unHighlightSubject f2~ } f8 a bes c
  | d2~ d8 e d c
  | b d c b a g a b
  %40
  | c d e f g a g f
  | e_\markup {
      \subjectStrettoBullet "Stretto inversus-rectus TA, bars 41−45"
    }
    c f2 ees4
  | d1~
  | d8 g, c4~ c8 c bes a
  | g d' e fis g2~
  %45
  | g4 f ees2~
  | ees8 ees d c d4. ees8
  | \highlightSubjectFirstInv { f2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1 bes,4. c8
  | d4. ees8 f2
  | g f4. ees8
  %50
  | d2~ d8 c d ees
  | \unHighlightSubject f1~ }
  | f~
  | f4 r r2
  | \highlightSubjectFirstInv { c'4_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
    g~ g8 a bes4~
  %55
  | bes8 c \unHighlightSubject d4 } a4. bes8
  | c4 g8 a bes4 f8 g
  | a2~_\markup {
      \subjectStrettoBullet
      "Stretto rectus SA and episode (stretto) SBAT, bars 57−67"
    }
    a8 g f e
  | d2 r4 g~
  | g8 e f2.~
  %60
  | f8 e f g a2~
  | a8 fis g4 d2
  | a bes
  | b c
  | cis d
  %65
  | a4 r \highlightSubjectFirst { a'_\markup \subject #'(0.0 . 0) #1
    d^~
  | d8 c bes4~ bes8 a \unHighlightSubject g4 }
  | c4. bes8 a4. g8
  | f4 bes8 a g4 c8 bes
  | a2_\markup {
      \subjectStrettoBullet "Stretto inversus ST, bars 69−73"
    }
    g
  %70
  | d r8 g' f e
  | d2. cis4
  | d8 g, a bes c! c, d e
  | f g a f bes4 a8 g
  | fis4 a bes8 a, bes c
  %75
  | d e f d g f e g
  | cis, d e cis d c bes d
  | gis,_\markup {
      \subjectStrettoBullet "Stretto rectus TA, 77−82"
    }
    a b gis a g'! f e
  | d2~ d8 c bes4
  | a8 bes a g f4 bes
  %80
  | a2. b8 cis
  | d2~ d8cis d e
  | f4 fis g2~
  | g8 fis g a bes4. b8
  | c a d c! b a bes4~
  %85
  | bes8 a4 gis8 a4 a,
  | \stemUp \tieUp
    << {
      \once\override NoteColumn.force-hshift = #0.4
      \highlightSubjectFirstInv { a'2^\markup \scale #'(1 . -1) \subject #'(2.5 . 0) #1
      d,4.
      \stemDown
      e8 \once\override Dots.extra-offset = #'(0 . 0.4) fis4. \stemDown g8 a2 bes a4. g8
      \stemUp
      fis2~
      \hide Stem
      fis8 e fis g
      a1^\fermata }
    } \new Voice {
      \stemDown \tieDown d,2_\markup {
        \endBullet "Simultaneous presentation of both subjects AB"
      }
      g,\rest
    | d'
      \once\override Voice.Rest.X-offset = #1
      g,\rest
    | d'
      \once\override Voice.Rest.X-offset = #-1
      g,\rest r8 c bes a g2 d'1_\fermata
    } >>
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
    opus = "BWV 1080, 5"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus V" }
    subsubtitle = \markup {
      \center-column {
        \line { "Four-voice fugue with many stretto entries" }
        \fugueStructureBoxesV
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
  \midi { \tempo 4=120 }
}
