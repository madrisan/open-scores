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
    \stemNeutral r4 r8. fis''16 b2~\(\>
   %30
  | b4. b,8\! b fis fis b,\)
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
  | <ees ees'> <d d'>
  %55
  | <c c'> s
  | <a! a'!> <b b'>
  | s <aes aes'>
  | <ges ges'> q
  | s1
  %60
  | \clef bass
    d4( c b! c
  | d2 a)
  | \clef treble
    <b b'>4( <c c'> <d d'>2
  | <a a'>) s
  | s1
  %65
  | s2 e''4( d)
  | d2 d4 cis
  | cis( c)
    \clef bass
    e,,2
  | c'^- bes^-
  | aes~^-( aes8 g) g4
  %70
  | r4 r8. \clef treble \stemNeutral g''16 c2~(\>
  | c4. c,8\! c g g c,)
  | \clef bass \stemUp c4.(^\> b!8)\! b4.(^\> a8)\!
  | a4.(^\> g8) g fis fis e\!
  | <b e>2^- q^-
  %75
  | q^- r
  | \clef treble \stemNeutral\tieNeutral e'2( fis4 g
  | a b2^- a4)
  | a( d, e8 fis! g4_-~
  | g fis) d2_-
  %80
  | d4( e2 d8 c
  | d2) d
  | d4 e2 d4
  | r2 \stemUp\tieUp b'4( a
  | <b, gis'>2)\pp q
  %85
  | <ais gis'> <a b'>
  | <a fis' b> <gis e' b'>
  | <gis e' a> a'
  | e4.( dis8 e4 g8 fis)
  | g2~ g4 b8 a
  %90
  | g4.( e'8) fis,4.( e8)
  | <b e>2 \clef bass s2
  | g2 a
  | b4^- a^- g2^-
  | a4^- g^- fis2^-
  %95
  | \clef treble \stemNeutral
    r4 r8. b''16^. e2~(\>
  | e4. e,8 e\! e, e e,)
  | r4 r8. b''16^. d2~(
  | d4. b8 b g! g e)
  | <e, bes' d e>1
  %100
  | <e aes c e>
  | <e g b! e>4_. r q_. r
  | r2 \clef bass \stemNeutral <g, e'>4_. r
  | q_. r r2
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
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <e g>_\markup { \normalsize \dynamic pp }
  | \once\override Staff.TextScript.extra-offset = #'(0 . -1)
    <d fis>2_\markup {
      \column {
        "più sotto voce"
        \vspace #-0.3
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
  | \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    c_\markup { \normalsize \dynamic pp }
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
  | d'4.( c8) c4.( bes8)
  %55
  | bes( aes g f) <c e c'>4 <b g' b>
  | \once\override NoteColumn.force-hshift = #1.8 g'4( f)
    \once\override NoteColumn.force-hshift = #1.5 f( ees)
  | <c ees c'> <bes d bes'>
    \once\override NoteColumn.force-hshift = #1.5 e( f)
  | \once\override NoteColumn.force-hshift = #1.5 des( f)
    \once\override NoteColumn.force-hshift = #1.8 f( ees)
  | <f, ees' f>2. r4
  %60
  | <d, fis>2 d
  | d1
  | d'2 s
  | s <b' d b'>4 <c c'>
  | <d g d'> <c e c'>8 <b g' b> q4 <a fis' a>8 <g e' g>
  %65
  | <g e' g>2 <fis fis'>
  | \slurUp <fis fis'>4_( <f f'>) q( <e e'>)
  | <e e'>2 c,
  | \slurDown b8\rest e4(\> f8)\! b,\rest f'4(\> c8)\!
  | b\rest c4(\> f8)\! f4 ees
  %70
  | s1*2
  | d8( e f4) e fis
  | b, e dis a
  | s1*8
  %82
  | \hideNotes d'4( \unHideNotes s2.
  | c8 b a4) b2
  | s1
  %85
  | s2 g'4( fis)
  | s1
  | s2 <a, f'>4(_\markup {
      \whiteout "più espress."
    }
    <g! e'>)
  | c( b2) dis!4
  | e8 f dis e fis2
  %90
  | fis4.( e8) e4 dis
  | \stemDown s2
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    <g,! b>4_\markup {
      \whiteout "più sotto voce"
    }
    <f a>
  | f e dis cis
  | b4.\<( cis8 cis\!\> dis fis e\!)
  | e4 d8 cis dis2
  %95
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
  %51
  | s2 f,16 \magnifyMusic 0.7 { f' f, f' } ees,[ \magnifyMusic 0.8 { ees' ees, ees'] }
  | des,16 \magnifyMusic 0.7 { des' des, des' }  aes16[ \magnifyMusic 0.7 { aes' aes, aes'] }
    f,16 \magnifyMusic 0.7 { f' f, f' }  des,16[ \magnifyMusic 0.7 { des' des, des'] }
  | c,16 \magnifyMusic 0.7 { c' c, c' }  f,16[ \magnifyMusic 0.7 { f' f, f'] }
    d,16 \magnifyMusic 0.7 { d' d, d' }  b,16[ \magnifyMusic 0.7 { b'! b, b'] }
  | g,16 \magnifyMusic 0.7 { g' g, g' }  c,16[ \magnifyMusic 0.7 { c' c, c'] }
    aes,16 \magnifyMusic 0.7 { aes' aes, aes' }  f,16[ \magnifyMusic 0.7 { f' f, f'] }
  %55
  | e,16 \magnifyMusic 0.7 { e' e, e' }  bes16[ \magnifyMusic 0.7 { bes' bes, bes'] }
    g,16 \magnifyMusic 0.7 { g' g, g' }  e,16[ \magnifyMusic 0.7 { e' e, e'] }
  | c,16 \magnifyMusic 0.7 { c' c, c' }  g'16[ \magnifyMusic 0.7 { g' g, g'] }
    ees,16 \magnifyMusic 0.7 { ees' ees, ees' }  c,16[ \magnifyMusic 0.7 { c' c, c'] }
  | aes,16 \magnifyMusic 0.7 { aes' aes, aes' }  ees16[ \magnifyMusic 0.7 { ees' ees, ees'] }
    c,16 \magnifyMusic 0.7 { c' c, c' }  aes,16[ \magnifyMusic 0.7 { aes' aes, aes'] }
  | f,16 \magnifyMusic 0.7 { f' f, f' }  bes,16[ \magnifyMusic 0.7 { bes' bes, bes'] }
    ees,16 \magnifyMusic 0.7 { ees' ees, ees' }  c,16[ \magnifyMusic 0.7 { c' c, c'] }
  | a,16 \magnifyMusic 0.7 { a'! a, a' }  c,16[ \magnifyMusic 0.7 { c' c, c'] }
    f,16 \magnifyMusic 0.7 { f' f, f' }  a,16[ \magnifyMusic 0.7 { a' a, a'] }
  %60
  | <d,, a'>2 b'!4 a
  | g2.( fis4)
  | <g, g'>( <a a'> <b b'> <c c'>
  | <d d'>2) <g, g'>4 <a a'>
  | <b b'> <c c'> <d d'>2
  %65
  | b' a
  | s1*3
  | s2 des4 c8 bes
  %70
  | s1*2
  | <bes, bes'>4 <a a'> cis' dis
  | e g, s2
  | s1*8
  %82
  | s2. \once \omit Stem f'4(
  | a8 g g fis! fis e e dis)
  | e4 d! cis!2
  %85
  | dis4 e fis gis~
  | gis fis fis b,
  | cis8 dis e4 e2
  | fis! g4 a
  | b c2 b4
  %90
  | b e, fis8 g a4
  | \showStaffSwitch \change Staff = "upper" \voiceTwo
    a( gis)

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
  | \slurUp g!( fis f e)
  | e8( fis g2^- ges4)
  | f( fes ees d)
  | \stemNeutral\tieNeutral cis( c f b,
  %50
  | e a) a2~
  | a \stemDown\tieDown\slurDown f,4_\markup {
      "legato mormorando"
    }
    ees
  | des aes' f des
  | c f d! b!
  | g c aes f
  %55
  | e bes' g e
  | c g'' ees c
  | aes ees' c aes
  | f bes ees c
  | a! c f a
  %60
  | s2 g,4( a
  | b c d2)
  | s2 g~
  | g4 fis s2
  | s g4 a
  %65
  | d,4 cis8 d d4 e8 fis
  | \stemNeutral
    fis4 g8 a a2
  | a a
  | <a c>4( <aes des> <g d'> <ges ees'>)
  | <f g'!>( <des aes'>) \stemDown bes c
  %70
  | <f a c f>1
  | <bes, bes' d! f>
  | s2 a'8( g fis!4)
  | e8 d! c! b \stemNeutral\slurNeutral a8.( b16 cis[ dis e fis]
  | g fis e fis g[ a b cis] dis cis b cis dis[ e fis g]
  %75
  | a g fis g a[ b cis dis]) e8^.(\< g4^-\!\> f8\!)
  | c,!16( g' c d c[ d c g] c,[ g' c d] e8^.) r
  | c,16( g' d' e d[ e d g,] c,[ fis d' e] fis8^.) r
  | b,,16( d a' b a[ b a f] bes,[ cis e g] bes8) r
  | d,,16( a' d e d[ a' d e] r c! b! a g[ fis e d])
  %80
  | c( g' c b c[ b a g] fis[ e d c] b8) r
  | bes16( fis' g a c[ bes a g] fis[ e d c] bes8) r
  | a16( e' a b c[ d c b] a g f e) f8[ g]
  | \stemDown b,4\rest c g fis
  | e'16 \magnifyMusic 0.7 { dis cis e, }  d'[ \magnifyMusic 0.7 { cis b e,] }
    cis'16 \magnifyMusic 0.7 { b a e }  \magnifyMusic 0.7 { cis'[ b a e] }
  %85
  | dis'16 \magnifyMusic 0.7 { cis b e, }  e'[ \magnifyMusic 0.7 { dis cis e,] }
    fis'16 \magnifyMusic 0.7 { e dis e, }  gis'[ \magnifyMusic 0.7 { fis e b] }
  | gis'[ \magnifyMusic 0.7 { fis e b] }  fis'[ \magnifyMusic 0.7 { e dis b] }
    fis'[ \magnifyMusic 0.7 { e d e,] }  b'[ \magnifyMusic 0.7 { a gis e] }
  | e2\rest b'4_( c)
  | a2 g4 fis
  | e e'2 dis4
  %90
  | e c a b
  | e,4.( d!8) d4.( c8)
  | \stemNeutral c4.( b8) b4.( a8)
  | gis4 fis g a
  | c4.( b8) b'4.( a8)
  %95
  | <e g b e>1
  | <a, a' cis e>
  | <e' gis b e>
  | <a, a' c! e>
  | r4 r8. g'16_. c2~(
  %100
  | c4. f,8 f b,! b e,)
  | e4_. r e_. r
  | r2 <e b'>4_. r
  | <e b'>4_. r r2
    \fine
}

forceBreaks = {
  % page 1
  s2 \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 4
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  % page 5
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1
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
    \new Devnull \forceBreaks
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
    \tempo 4 = 78
  }
}
