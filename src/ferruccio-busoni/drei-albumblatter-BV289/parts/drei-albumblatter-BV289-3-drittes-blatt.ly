Global = {
  \key e \minor
  \time 2/2
  \include "../global.ly"
}

greyTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Sostenuto religioso"
  \partial 2 { \clef bass b2 }
  %1
  | ais2 b4 cis
  | d2 e
  | d cis
  | b b4 ais
  %5
  | gis2 a
  | b4 a g2
  | fis4 e fis2
  | b4\rest b8.\rest \clef treble b''16 e2~\(\fp\>
  | e4. e,8 e\! e, e e,\)
  %10
  | \clef bass
    e4 fis g2
  | a2 e4 fis
  | g2 a
  | b b4 b
  | e2 d!
  %15
  | e2 fis4 e
  | dis2 cis
  | b1
  | cis
  | d4\( c b c
  %20
  | d2 a\)
  | b4\( c d2
  | a\) b4( c
  | d) e8^- d^- c^- b^- a4^-
  | g2 fis
  %25
  | e1
  | e
  | b'2 a
  | g fis!
  | \clef treble
    \stemNeutral r4 r8. fis''16 b2~\(
   %30
  | b4. b,8 b fis fis b,\)
  | \clef bass
    \stemUp b2 a
  | g fis!
  | e( e
  %30
  | e) \clef treble
    \stemNeutral
    e''4^\markup {
      "(Voce del Tenore nel Corale)"
    }
    _\markup {
      \whiteout "dolce cantabile"
    }
    dis
  | R1*71
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 2 {
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    g2_\markup {
      \whiteout
      "dolce, non troppo"
    }
  }
  %1
  | fis2. \once\stemUp ais!4
  | b ais8 b cis2
  | cis4 b2 ais4
  | \once\override NoteColumn.force-hshift = #0
    \once\stemUp fis2
    fis
  %5
  | fis4 e2 dis8 cis
  | b4\< cis dis\!\> fis8 e\!
  | e4 d8 cis dis2
  | \override LaissezVibrerTieColumn.tie-configuration
     = #`((1.1 . ,UP)
          (-2 . ,DOWN))
    <b e>1\laissezVibrer
  | s1
  %10
  | b2\p e
  | e4 d e b
  | b cis8 d e2
  | dis fis4 fis
  | e fis8 g a4 fis
  %15
  | b gis cis2
  | cis4 b b \once\stemUp ais
  | <d, fis>1
  | <e g>\pp
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <d fis>2_\markup {
      \column {
        "più sotto voce"
        "e più legato"
      }
    }
    d
  %20
  | d1
  | d2 d~
  | d d
  | d a'8 g fis4
  | e2. d4
  %25
  | cis1
  | c\pp
  | dis4 e e fis
  | b, e e d!
  | s1*2
  %31
  | cis8 dis e4 f fis
  | b,8 f' e4 e dis
  | b2 b
  | b s
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  \partial 2 { e4 d }
  %1
  | cis2 d4
    \change Staff = "upper" \voiceTwo
    e
  | fis
    \change Staff = "lower" \voiceThree
    g2 fis4
  | fis b, cis8 d e4
  | \change Staff = "upper" \voiceTwo
    \once\override NoteColumn.force-hshift = #0.8 e dis
    \change Staff = "lower" \voiceThree
    b2
  %5
  | b4 cis2 b8 a
  | b2 b
  | b~\( b8 c16 b a g fis8\)
  | f'4\rest f8.\rest \clef treble b'16 e2~_\(
  | e4. e,8 \clef bass e e, e e,\)
  %10
  | g4 a b2
  | e, a
  | g4 a8 b c!4 a
  | fis2 dis'4 dis
  | b2 d
  %15
  | b4 e cis b8 ais
  | fis'4 d
    \change Staff = "upper" \voiceTwo
    g4( fis16 e
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    d cis)
  | s1
  | a!
  | a2 b4 a
  %20
  | g2.( fis4)
  | g2 g~
  | g4 fis g2
  | g g4^- a^-
  | b2^- a
  %25
  | a1
  | a
  | b2 cis4 dis
  | e g, c b8 a
  | s1*2
  %31
  | b4( c! d! dis)
  | e g, c( b16 a g fis)
  | g2 g
  | g s
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \partial 2 e,2
  | e d4 cis
  | b b'2 ais4
  | b g e fis
  | b,2 dis
  %5
  | e fis
  | gis4 fis g a
  | b2 b,
  | \override LaissezVibrerTieColumn.tie-configuration
     = #`((-3.4 . ,UP)
          (-6 . ,DOWN))
    <e g>1\laissezVibrer
  | s1
  %10
  | e2. d4
  | c b cis dis
  | e d c2
  | b b'4 a
  | g fis8 e fis4 a
  %15
  | gis cis ais fis
  | fis g e fis
  | b,1
  | a!
  | d2 g,4\( a
  %20
  | b c d2\)
  | g,4\( a b c
  | d2\) g,4\( a
  | b c d2\)
  | d4 cis8_- d_- e4_- fis8_- g_-
  %25
  | a1
  | a,
  | a'4 g g fis
  | e c! a b
  | <e gis b e>1
  %30
  | <a, a' cis e>
  | a'4( g) g( fis!)
  | e8 d! c b a4 b
  | e2( e
  | e) r2
  %35

  | R1*71
    \fine
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
    composer = "Ferruccio Busoni ‒ Berlin, 1921"
    opus = ##f % "BV 289"
    title = \markup { "Drittes Blatt" }
    subtitle = "In der Art eines Choralvorspiels"
    subsubtitle = \markup { \normal-text "An Felice Boghen" }
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
