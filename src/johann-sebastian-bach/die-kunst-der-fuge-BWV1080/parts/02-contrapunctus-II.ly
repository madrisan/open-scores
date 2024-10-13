Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'ContrapunctusII
  | \override MultiMeasureRest.staff-position = #0
    R1*8
  | s1*4
  | \highlightSubjectFirst { a2^\markup \subject #'(0 . 0) #1 d
  | c a
  %15
  | gis a4 b
  | c2~ c8.[ d16 c8. b16]
  | \unHighlightSubject a1~^\markup { \episodeBullet "First episode, bars 17-22" }
    }
  | a
  | d,~
  %20
  | d~
  | d8.[ cis16 d8. f16] e8.[ d16 gis8. a16]
  | b8.[ c16 d8. f,16~] f8. e32 d cis8. d16
  | cis4^\markup \subject #'(0 . 0) #1
    r4^\markup {
      \hspace #-5
      \secondExpositionBullet "Second exposition ASBT, bars 23−42"
    }
    r2
  | R1*2
  %26
  | \highlightSubjectFirst { a'2^\markup \subject #'(0 . 0) #1 d
  | c a
  | gis a4 b
  | c2~ c8.[ d16 c8. b16]
  %30
  | c4 } a'~ a8.[ g16 f8. e16~]
  | e8.[ f16 e8. d16~] d8.[ e16 d8. cis16]
  | d2 r2
  | R1
  | r8 r16 a'[ gis8. a16] d,4 g~
  %35
  | g8.[ f16 e8. d16] e4 a
  | d, e e, f
  | e e'~ e8.[ d16 c8. b16]
  | c8. d16 e4~ e8. f16 e8. d16
  | a'4 r4 r2
  %40
  | R1
  | f8\rest f16\rest e[ dis8. e16] a,4 d~
  | d8.[^\markup { \episodeBullet "Second episode, bars 42-44" }
    c16 bes!8. a16] bes2~
  | bes8.[ a16 g8. f16] g2~
  | g8.[ f16 g8. a16] bes8.[ c16 d8. e16]
  %45
  | \highlightSubjectFirst { f2^\markup \subject #'(-0.6 . 0) #1
    ^\markup { \subjectPresentationBullet "Subject Presentation SAB, bars 45-57" }
    c'
  | a f
  | e f4 g
  | a2~ a8.[ bes16 a8. g16]
  | fis2 } g4 a~
  %50
  | a8.[ d,16 g8. f16] ees8.[ d16 c8. bes16]
  | a2 r
  | \override MultiMeasureRest.staff-position = #6
    R1*3
  %55
  | r8 r16 g'[ f8. ees16] d8.[ c16 bes8. a16]
  | bes2 ees~
  | ees8.[^\markup { \episodeBullet "Third episode, bars 57-60" }
    d16 cis8. d16] g,4 c~
  | c bes a2~
  | a8.[ f'16 g8. f16] e8.[ d16 cis8. d16]
  %60
  | cis8.[ a'16 bes8. a16] g8.[ f16 e8. f16]
  | g8.[ f16 e8. d16~] d8.[ e16 d8. cis16]
  | d4 r r bes~
  | bes8.[ bes16 a8. g16] f8.[ e16 d8. cis16]
  | d8.[ d'16 e8. f16] g2~
  %65
  | g4^\markup { \episodeBullet "Fourth episode, bars 65-68" }
    f8. e16 f4 a
  | d,2 e!4 fis
  | g2. d4~
  | d8.[ e16 d8. c16~] c8.[ d16 c8. bes16~]
  | bes8.[ bes16 a8. g16] f8.[ c'16 bes8. a16]
  %70
  | gis4. r16 gis a4. r16 a
  | d8. e16 f4 e2~
  | e8. a16 gis8. a16 e8. fis16 g4~
  | g^\markup { \episodeBullet "Fith episode, bars 73-78" }
    f2 e8. d16
  | cis4 e a,2~
  %75
  | a4 d,2 g4~
  | g8.[ bes16 a8. g16~] g8.[ a16 g8. f16~]
  | f8.[ g16 f8. e16~] e8.[ f16 e8. d16~]
  | d8.[ b16 cis8. e16] a,8.[ g'16 f8. e16]
  | \highlightSubjectFirst { d2^\markup \subject #'(0 . 0) #1 a'
  %80
  | f d
  | cis d4 e
  | f2~ f8.[ g16 f8. e16]
  | \unHighlightSubject d1~ }
  | d\fermata
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \showStaffSwitch
  | s4^\markup {
      \expositionBullet "Exposition BTAS, bars 1−17"
    }
    s2.
    s1*7
  | \stemUp
    \highlightSubjectFirst { d2^\markup \subject #'(0 . 0) #1 a'
  %10
  | f d
  | cis d4 e
  | f2~ f8.[ g16 f8. e16]
  | \stemDown
    \unHighlightSubject d8.[ } e16 f8. g16] a2~
  | a8.[ g16 f8. e16~] e8.[ f16 e8. d16~]
  %15
  | d8.[ d16 e8. f16] e4 d
  | c e f e~
  | e8.[ cis16 d8. e16] f4 e~
  | e8.[ e16 d8. cis16] d4 c~
  | c bes8. a16 bes4 a~
  %20
  | a8. fis16 g8. a16 bes4 a
  | gis r a2\rest
  | a\rest b
  | a8.[ \highlightSubjectFirst { e'16 f8. g16] a2
  | f d
  %25
  | \stemUp
    cis d4 e
  | \stemDown
    f2~ f8.[ a16 gis8. fis16]
  | \unHighlightSubject e2~ } e8.[ a,16 d8. c16]
  | b2 r8 r16 e[ fis8. gis16]
  | a2. gis4
  %30
  | a8.[ g!16 f8. e16] d4 g
  | f2 e
  | d r
  | b'8\rest b16\rest bes[ a8. g16] f8.[ e16 d8. cis16]
  | d4 d' b cis
  %35
  | d r r c~
  | c8.[ bes16 a8. g16] a2
  | gis4 c fis, gis!
  | a8.[ bes!16 a8. g16] f8.[ a16 g8. f16~]
  | f8. e16 fis8. gis16 a8. b16 c8. a16
  %40
  | \stemUp
    b2~ b8.[ a16 gis8. a16]
  | \stemDown
    dis,8. a16 a'2 e4~
  | e f! d g
  | c,8.[ f16 e8. d16~] d8.[ e16 d8. cis16]
  | d2. g4
  %45
  | \hideStaffSwitch c,2~
    \once\override Beam.positions = #'(-5 . -5)
    c8.[
    \staffLower
    \stemUp
    bes16 a8. g16] \showStaffSwitch
  | \hideStaffSwitch f8.[
    \staffUpper
    \stemDown
    f'16 \showStaffSwitch g8. a16] bes8.[ c16 d8. bes16]
  | c4 g c2~
  | c d4 c8. bes16
  | \highlightSubjectFirst { a2_\markup \subject #'(1.5 . 0) #1 d
  %50
  | bes g
  | fis g4 a
  | \stemUp
    bes2^~ bes8.[ c16 bes8. a16]
  | g4 } bes a c~
  | c8.[ f,16 g8. a16] bes8.[ c16 d8. bes16]
  %55
  | \stemDown
    c2 f,~
  | f8.[ aes16 g8. f16] g4
    \stemUp
    a
  | \shiftOn bes2 r
  | r8 r16
    \stemDown
    g[ fis8. g16] e4 f~
  | f8.[ d16 cis8. d16] g2~
  %60
  | g4 f e a~
  | a r r2
  | r8 r16 bes[ a8. g16~] g8.[ a16 g8. f16]
  | e4
    \staffLower
    \stemUp
    a, bes2
  | a4
    \staffUpper
    \stemDown
    a' bes! cis
  %65
  | d r r2
  | r8 r16 g,[ a8. bes16] c2~
  | c4 bes8. a16 bes4 a
  | g2 f
  | e d4 f~
  %70
  | f8. f16 e4~ e8. e16 d4
  | r r8 r16 d' c8.[ b16 a8. gis16]
  | a2 r4 e'~
  | e8.[ a,16 d8. c16] bes8.[ a16 g8. f16]
  | e2~ e8.[ g16 f8. e16]
  %75
  | d8. c16 bes8. a16 bes2
  | a2. b4
  | cis2 gis
  | a r4 cis!
  | d8.[
    ^\markup { \endBullet "Final Episode with subject S, bars 79-84" }
    f16 e8. d16] cis8.[ a16 b8. cis16]
  %80
  | d4 c2 bes4~
  | bes8.[ bes16 a8. g16] f4 bes
  | a2 bes4 a~
  | a8.[ fis16 g8. a16]
    s2
  | s1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \showStaffSwitch
  | s1*4
  %5
  | \highlightSubjectFirst { a2-\markup \subject #'(0 . 0) #1 d
  | c a
  | gis a4 b
  | c2~ c8.[ d16 c8. bes16]
  | \revert Tie.color \hideStaffSwitch a2~ } a8.[
    \staffUpper
    \stemDown
    g'16 f8. e16]
  %10
  | \once\override Beam.positions = #'(-5 . -5)
    d8.[ c16
    \staffLower
    \stemUp
    bes8. a16] \showStaffSwitch
    bes8.[ a16 g8. f16]
  | e2 a8\rest a16\rest a[ b8. cis16]
  | d2. cis4
  | d4. e16\rest e f2
  | e4 c2 a4
  %15
  | b2 a8\rest a16\rest e[ fis!8. gis16]
  | a2. gis4
  | a b8. cis16 d4 g,~
  | g8.[ g16 f8. e16] f4 fis~
  | fis8. d16 e8. fis16 g4 c,~
  %20
  | c8. a16 bes8. c16 d8. cis16 d4
  | e b\rest b2\rest
  | b\rest gis'
  | e4 r r8 r16 a[ b8. cis16]
  | d4 c2 bes4~
  %25
  | bes8. g16 f8. e16 a2~
  | a8.[ d16 cis8. d16] gis,4 b~
  | b8.[ e,16 a8. g16] f2~
  | f4 e r2
  | r8 r16 g'[ f8. e16] dis4 e
  %30
  | a,2 b4 cis
  | d2 r
  | r8 r16 a[ b8. cis16] d8.[ e16 f8. d16]
  | e4 e, f g
  | a r r2
  %35
  | r4 d~ d8.[ c16 bes8. a16]
  | bes4 b cis d~
  | d8.[ c!16 b8. a16] b4 e
  | \stemDown
    \highlightSubjectFirst { a,2_\markup \subject #'(0 . 0) #1 d
  | c a
  %40
  | \stemUp
    gis a4 b
  | c2~ c8.[ d16 c8. b16]
  | \unHighlightSubject a2~ } a8.[ g16 f8. e16]
  | f4 bes e, a
  | \stemDown
    d, e8.[ f16] g8.[ a16] bes4~
  %45
  | bes8. a16 g8. f16 e2
  | f4 r r bes~
  | bes8.[ d16 c8. bes16] a8.[ g16 f8. e16]
  | f8.[ f'16 e8. f16] bes,4 ees~
  | ees8.[ ees16 d8. c16] bes8.[ a16 g8. fis16]
  %50
  | g8. a16 bes2 a8. bes16
  | \stemUp
    c4 ees d2~
  | d4 d
    \staffUpper
    \stemDown
    e! f_~
  | f8.[ f16 ees8. d16]
    \staffLower
    \stemUp
    c8.[ bes16 a8. g16]
  | f4 r r2
  %55
  | r4 c d ees
  | f bes2
    \staffUpper
    \stemDown
    ees4
  | f2 \staffLower\stemUp d8\rest d16\rest
    c[ bes8. a16]
  | g4 ees' cis d~
  | d8 c\rest b4\rest a2\rest
  %60
  | e'4\rest d2 cis4
  | d2 e
  | a,4 b8. cis16 d4 r
  | r \override NoteColumn.force-hshift = #0.3 e,
    \stemDown
    \override NoteColumn.force-hshift = #-0.3
    f g
  | \revert NoteColumn.force-hshift a2 r
  %65
  | r8 r16
    \stemUp
    a[ b8. cis16] d4 fis,
  | g r r2
  | \override MultiMeasureRest.staff-position = #6
    R1*2
  | r4 \highlightSubjectFirst {
    a2^\markup \subject #'(2.5 . 0) #1
    _\markup { \subjectPresentationBullet "Subject Presentation T, bars 69-73" }
    d4~
  %70
  | d c2 a4~
  | a gis a b
  | c2~ c8.[ d16 cis8. b16]
  | a2 } bes!~
  | bes8.[ bes16 a8. g16] f8.[ e16 d8. cis16]
  %75
  | d4 e8. fis16 g8. f16 e8. d16
  | cis2 d
  | e f
  | e r4 a
  | a2 r
  %80
  | r8 r16 d,[ e8. f16] g8. a16 g8. f16
  | e8.[ g16 f8. e16] d2
  | cis4 d2 cis4
  | d4 e8. fis16 <g~ bes~>2
  | <g bes>8.[ <fis a>16 <g bes>8. <e g>16] <fis a>2\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  | \highlightSubjectFirst { d2_\markup \italic \tiny \with-color #greyTextColor {
       \ieyeglasses "In Contrapunctus 2 there are 14 entries of the subject"
    }^\markup \subject #'(0 . 0) #1 a'
  | f d
  | cis d4 e
  | f2^~ f8.[ g16 f8. e16]
  %\break
  %5
  | \revert Beam.color d8.[_\markup
      {
        \hspace #-1
        \line {
          \column {
            \line { "The rhythmic variation motive from the" }
            \raise #0.8
            \line { "subject is used throughout the fugue as" }
            \raise #1.6
            \line { "counterpoint to the subjects" }
          }
        }
      }
    }
    e16 d8. c16~] c8.[ d16 c8. b16~]
  | b8.[ a16 b8. c16] d8.[ e16 f8. d16]
  | e8.[ f16 e8. d16] c8.[ b16 a8. gis16]
  | a8.[a'16 gis8. a16] d,4 g~
  | g8.[ f16 e8. d16] cis2
  %10
  | d4 d, g8. a16 bes4~
  | bes8.[ bes16 a8. g16] f4 e
  | d8.[ d'16 e8. f16] g8.[ bes16 a8. g16]
  | f8.[ g16 f8. e16] d8.[ e16 f8. g16]
  | a2 f~
  %15
  | f8.[ f16 e8. d16] c4 b
  | d8\rest d16\rest a[ b8. c16] d4 e
  | f2~ f8. e16 d8. cis16
  | d2~ d8.[ c16 bes8. a16]
  | bes2~ bes8.[ a16 g8. fis16]
  %20
  | g2.~ g8. f16
  | e1~
  | e2 e'
  | a,4 r r2
  | r8 r16 d[ e8. f16] g8.[ a16 g8. f16]
  %25
  | e8.[ bes'16 a8. g16] f8.[ e16 d8. cis16]
  | d4 f b, e
  | a,2 d~
  | d8.[ b16 e8. d16] c4 b
  | a r r2
  %30
  | R1
  | \highlightSubjectFirst { d2_\markup \subject #'(0 . 0) #1 a'
  | f d
  | cis d4 e
  | f2~ f8.[ g16 f8. e16]
  %35
  | d4_\markup {
         \hspace #1
         \line {
           \column {
             \line { "A 3 measure episode leads to" }
             \raise #0.8
             \line { "the tenor entrance" }
           }
         }
       }
    } r r2
  | r4 g~ g8.[ f16 e8. d16]
  | e2 b\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  %40
  | b8\rest b16\rest f'[ e8. d16] c4 f~
  | f fis2 gis4
  | \highlightSubjectFirst { \unHighlightSubject a2 } r
  | s1*8
  %51
  | r8 r16 ees[ d8. c16] bes8.[ a16 g8. fis16]
  | g8.[ g'16 fis8. g16] c,2~
  | \highlightSubjectFirst { c_\markup \subject #'(0 . 0) #1 f
  | d bes
  %55
  | a bes4 c
  | d2~ d8. ees16 d8. c16
  | \unHighlightSubject bes8.[} bes'16 a8. bes16] e,4 fis
  | g2~ g8.[ f!16 e8. d16]
  | bes'1
  %60
  | a4 d,\rest d2\rest
  | \highlightSubjectFirst { d_\markup \subject #'(1.2 . 0) #1
    _\markup { \subjectPresentationBullet "Subject Presentation B, bars 61-65" }
    a'
  | f d
  | cis d4 e
  | f2~ f8.[ g16 f8. e16]
  %65
  | \unHighlightSubject d2~ } d8.[ ees16 d8. c16]
  | bes2~ bes8.[ c16 bes8. a16]
  | g8.[ d'16 e8. fis16] g8.[ a16 g8. f16]
  | e4 a d, g
  | cis,2 d
  %70
  | e f
  | b, c~
  | c4 d e2
  | f4 d g2~
  | g4 cis, d a
  %75
  | bes2. g4
  | a1~
  | a~
  | a2~ a8.[ bes16 a8. g16~]
  | g8. a16 g8. f16~ f8. g16 f8. e16
  %80
  | d4 r r8 r16 e[ f8. g16]
  | a2 r8 r16 bes[ a8. g16]
  | a8.[ f16 e8. d16] g4 a
  | bes8.[ c16 bes8. a16] g8.[ a16 bes8. g16]
  | d'2 d,\fermata
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
    opus = "BWV 1080, 2"
    title = ##f
    subtitle = \markup { \smallCaps "Contrapunctus II" }
    subsubtitle = \markup {
      \center-column {
        \line { "Four-voice fugue on principal subject, accompanied by a “French” style dotted rhythm" }
        \fugueStructureBoxesII
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
  \midi { \tempo 4=140 }
}
