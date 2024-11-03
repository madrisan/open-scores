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
  | e) \clef treble s
  | s1*7
  %42
  | f''2\rest gis4 fis
  | e2 e
  | e d!
  %45
  | d cis
  | c b
  | bes bes
  | bes a
  | a gis
  %50
  | gis gis~
  | gis <c! c'!>_\markup { "dolcissimo" }
  | s1
  | <ees ees'>2 s

  | R1*52
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
  | b
    \stemNeutral\phrasingSlurNeutral\tieNeutral
    e''4^\markup {
      "(Voce del Tenore nel Corale)"
    }
    _\markup {
      \whiteout "dolce cantabile"
    }\(
    dis
  %35
  | cis2 dis4 e
  | fis gis2^- fis4\)
  | fis\( b, cis8 dis e4^-~
  | e dis\) b2^-
  | b4\( cis2 b8 a
  %40
  | b2\) b
  | \stemDown\phrasingSlurDown\tieDown
    b4\( cis2 b4
  | a8 gis fis4\) gis2
  | a4\(_\markup {
      "espress. il Contralto"
    }
    g! fis2
  | gis4 a b cis~
  %45
  | cis b\) b\( e,
  | fis8 gis a2_- gis4\)
  | ges\( f fes ees\)
  | ees8\( f ges2_- f4\)
  | e!4 a, b8\( c d4~
  %50
  | d cis\) cis2~\pp
  | cis aes''4( ges)
  | <b,! f' b!>2 <c g' c>4 <des aes' des>
  | bes'4 aes8 g <f aes f'>2
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
  %35
  | \stemNeutral
    e'8( a e' fis e cis a e~)
  | e( a e' fis e c a e)
  | gis( b e fis e cis ais g)
  | b,( fis' b cis dis fis, dis b)
  | a( e' a b a e a,) r8
  %40
  | \stemUp\slurDown
    gis dis' e fis g! e b g!
  | fis( cis' fis gis a fis cis a)
  | \slurUp
    fis'( e e dis dis cis cis bis)
  | cis,( e a cis) d,!( fis a d)
  | e, b' fis b g( b d g)
  %45
  | fis, e' gis, e' a, e' s4
  | s1*5
  | s2 f,16 \magnifyMusic 0.7 { f' f, f' } ees,[ \magnifyMusic 0.8 { ees' ees, ees'] }
  | des,16 \magnifyMusic 0.7 { des' des, des' }  aes16[ \magnifyMusic 0.7 { aes' aes, aes'] }
    f,16 \magnifyMusic 0.7 { f' f, f' }  des,16[ \magnifyMusic 0.7 { des' des, des'] }
  | c,16 \magnifyMusic 0.7 { c' c, c' }  f,16[ \magnifyMusic 0.7 { f' f, f'] }
    d,16 \magnifyMusic 0.7 { d' d, d' }  b,16[ \magnifyMusic 0.7 { b' b, b'] }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyHeadedOn
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
  | s1*7
  %42
  | fis2 e4 dis
  | cis2 d!
  | e4 fis g2
  %45
  | fis4 gis a a'
  | \slurUp g( fis f e)
  | e8( fis g2^- ges4)
  | f( fes ees d)
  | \stemNeutral\tieNeutral cis( c f b,
  %50
  | e a) a2~
  | a \stemDown f,4_\markup {
      "legato mormorando"
    }
    ees
  | des aes' f des
  | c f d! b!

  | R1*52
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
