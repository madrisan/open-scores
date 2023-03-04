Global = {
  \key c \major
  \time 3/4
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override DynamicText.Y-offset = #-3.4
  \override Hairpin.Y-offset = #-3
  %1
  \tempo \markup { \bold "Allegro molto" } 2. = 69-72
  | \stemNeutral r4%^\markup { "(3 taktig)" }
    r \ottava #1 g''!16[(\< a! b! cis]\!
  | d!8^.^>)[ c!^.\> bes^. fis^. gis^. dis^.] \ottava #0
  | a^.[\!\pp e\rest \stemUp \acciaccatura c'! \stemNeutral b!^. e,\rest f!] r
  | r4\p r \ottava #1 e'!16[(\< fis gis ais]\!
  %5
  | b!8^.^>)[ a!^.\> g!^. ees^. f!^. c!^.]\! \ottava #0
  | <ges bes>8^.[\pp d\rest <f! ces'>^. d\rest <e! bes'>^.] r
  | r4 fis'16[(^>\p cis g!8^.]) r4
  | <e! gis>8^.[\pp r <dis a'!>^. r <d! aes'>^.] r
  | r4 <c! aes'>8^.[\> r <b! g'!>^.]\! r
  %10
  | r4\p \stemUp \acciaccatura g'!8 \stemNeutral <ais, e'! fis>^. r r4
  | r4 \stemUp \acciaccatura ges'!8 \stemNeutral <a,! ees' f!>^. r r4
  | r4 \stemUp \acciaccatura f'!8 \stemNeutral <gis, d'! e!>4( <bes' ees>8^.) r
  | \tupletNeutral\tuplet 3/2 { b,!\pp cis dis } f!4.^- g!8(\<
  | fis'4^-) r8\! c'!^>(\mf des,4~
  %15
  | des8)[ bes]\> fis^.[ r c!^.]\! r
    \break
  | r4\p \stemUp \acciaccatura fes!8 \stemNeutral <g,! des' ees> r r4
  | r4 \stemUp \acciaccatura ees'8 \stemNeutral <fis, c'! d!>_. r r4
  | r8 <f! b! cis d!>^.[ \bottom a,!_. \top r <c'! fis b!>^.] r
  | R1*3/4
  %20
  | r4\pp <b'! cis d!>8^.[ \bottom f!_.] \top <c'! fis b!> r
  | R1*3/4
  | r4 g'!16^>[(\mf aes g!8^.]) r bes,,^.
  | e!4^. r r
  | fis8^.[\> e\rest gis e\rest bes'^.]\! r
  %25
  | c!4.^-\pp f!8[( b,! ees])
  | a,!2.^-
  | r4
    \shape #'((0 . 0.5) (0 . 0.8) (0 . 0.8) (0 . 0.5)) Slur
    g!8[(\p\< cis])
    \shape #'((0 . 0.5) (0 . 0.8) (0 . 0.8) (0 . 0.5)) Slur
    f,![( b!])
  | <ees, ges bes>2^-\!\mp <d!_~\> f!^~ a!^~>4^-
  | q8[
    \shape #'((0 . 0.5) (0 . 1.2) (0 . 1.2) (0 . 0.5)) Slur
    b!](\!\p gis'4.)
    \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    e!8(
  %30
  | dis'4.)
    \shape #'((-0.2 . -2) (0 . 2) (0 . 1) (0 . 0.5)) Slur
    b!8(\< c'!4^.)
  | cis16^>[(\!\sfz b! a!8^.) g!^.\> e!^. fis^. c!^.]
  | gis4.^-\!\p b!8[( f! bes])
  | e,!2.^-~
  | e8 g!( cis,4.) f!8(
  %35
  | b,!4.)\> ees8( a,!4_.)
  | R1*3/4\!\mp
  | r4\p \stemUp \acciaccatura bes'!8 \stemNeutral <cis, g'! a!>^. r r4
  | r4 \stemUp \acciaccatura ces'!8 \stemNeutral <d,! aes'! bes!>^. r r4
  | r4 \stemUp \acciaccatura c'!8 \stemNeutral
    \shape #'((0 . 0.8) (0 . 1) (0 . 1) (0.4 . 1)) Slur
    <dis,! a'! b!>4\>( gis'8\!) r
  %40
  | r4\pp a!8^.[ \bottom des,,_.] \top g! r
  | \bottom
    \once\hideNotes
    \once\omit Stem \once\override NoteColumn.force-hshift = #1
    \shape #'((0 . -12) (0 . -10) (0 . -11) (0 . -8)) Slur
    e,,!2(
    \top
    \once\override Staff.TextScript.extra-offset = #'(-9 . 0.5)
    \once\override Hairpin.X-offset = #-1.5
    \once\override Hairpin.Y-offset = #-4
    <c''! f! aes b!>8^.)\<^\markup {
      \small "un poco ritenuto"
    }
    r\!
  | r4 bes8[\pp r a!_.] r
  | R1*3/4
  | <b!_~ dis_~ g!~ a!~>2.
  %45
  | q8 r r4 r\mp^\markup { \small "a tempo" }
  | r8 a'!^.[ bes^.\> c!^. d!^. e!^.]
  | \tuplet 4/3 {
      fis^.[\!\p g,\rest gis'^. g,\rest ais' g,\rest b'!] r
    }
  | \ottava #1
    c!8^.[\> g\rest cis^. g\rest d'!^.]\! r
  | ees^.\pp r r4 r
  %50
  | f!8^. r r4 r
  | r r g!8^.\ppp r
  | R1*3/4
  | a!8^.\pppp r r4 r
  | R1*3/4
    \ottava #0
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | s2.
  | s2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tieDown
  %1
  | s2.*42
  %43
  | \shape #'((0 . 0) (0 . -1) (0 . -1.5) (-1 . -1)) Tie
    e!2.~
  | \shape #'((0.5 . 0.5) (0 . 0) (0 . 0) (-0.8 . 0.5)) Tie
    e2.~
  | e8 s s2
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | cis'4^.^> <e!~ gis^~ c!^~>2^-
  | q8 r r4 r
  | R1*3/4
  | bes4^.^> <cis~ f!^~ a!^~>2^-
  %5
  | q8 r r4 r
  | r4 <aes c!>8^. r r4
  | R1*3/4
  | \stemNeutral\slurNeutral <f! b!>8-. r r4 <e! bes'>8-. r
  | r4 <ees a!>8-. r r4
  %10
  | d!2( g!4)
  | des2( g!4)
  | c,!2.
  | r4 r8 ees( <gis d'!>4^.)
  | r4 <bes e! a!>^. r
  %15
  | <a! d! g!>^. r r
  | b,!2( f'!4)
  | bes,2( e!4)
  | \stemDown ees2^~ ees8 d\rest
  | R1*3/4
  %20
  | \shape #'((0 . 0) (0 . 1) (0 . 1.5) (0 . 0)) Slur
    ees'2( a,!8_.) r
  | R1*3/4
  | \stemNeutral r4 r <c,! fis b!>_.
  | r4 \tupletUp\tuplet 3/2 { dis8_.^\p g!_. b! } d4
  | R1*3/4
  %25
  | \stemUp r4 <fis, ais e'!>2_-
  | r4 r <ees g! b! cis>8_. r
  | r4 <e! gis d'!>8_.[ r <d! fis c'!>_.] r
  | <cis g'! b!>2_- <c!^~ ges'^~ bes^~>4_-
  | q8 r r4 <cis f! a!>_.
  %30
  | \stemNeutral r8 d'!^( <fis, bes>2_-)
  | <f'! bes>8^. r r4 r
  | d,!4_. <fis bes c!>2_-
  | r4 des_. <f! a! b!>_.
  | r r <bes, ees aes>_.
  %35
  | r8 aes( <des ges>4) r
  | ges,16_>[( aes bes8_.])
    ces[_.
    \once\override Hairpin.Y-offset = #2.5
    eeses_.^\> des_. f!_.]
  | g!2\!( c!4)
  | ges2( c!4)
  | f,!2.~
  %40
  | f8 f\rest f4\rest f\rest
  | e!2 r4
  | R1*3/4
  | s2.
  | \stemDown <bes_~ gis'^~>2.
  %45
  | q8 r r4 gis'16[( b! dis f!]
  | g!8^.^>) r r4 r4
  | R1*3/4*8
  \fine
}

centerDynamics = {
  %1
  | \once\override Staff.TextScript.extra-offset = #'(-2 . -2)
    s4-\markup { \dynamic p } s2
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
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Hans Erich Apostel"
    %opus = "Op. 13"
    title = \markup { "VII" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
