\version "2.23.10"

#(ly:set-option 'relative-includes #t)

Global = {
  \key f \major
  \time 4/4
  \include "../global.ly"
}

ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritard " } }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override Rest.staff-position = #0
  \partial 4
    c4(\p
  %1
  | \repeat volta 2 {
    f2~ f8 ) e\< ( [ f a ]
  | c8 f\! ) f2 e8 ( d
  | c8 f ) g, ( a bes d ) f, ( <e g>8
  | <f a>8 c' <e, g>2 ) c4 (
  %5
  | f2 ~ f8 ) e[\< ( f a]
  | c8 a'\! ) a4. \( g8 f e
  | f8 a d, f e4. ees8
  | d4_\markup { \italic "ritard." } e \appoggiatura { c8 } c2*1/2 \)
    s8 \stemDown c,8 (
    }
    \break
  | \stemUp f2~ f8 ) e\< ( [f a]
  %10
  | c8 ees\! ) ees2 d8 ( c
  | bes d g, a bes4. a8
  | g4. d8 ~ d4 ) r8 f8 (
  | bes2 ~ bes8 ) a ( bes d
  | f8 bes ) bes2 ( a8 g
  %15
  | f8 a d, e f4. e8
  | d4. << a8~ \\ g8 >>
    << {
      a4_\markup { \italic "ritard." }
    } \\ {} >> g ) (
    \acciaccatura { c,8 }
  | f2~ f8 ) e\< ( [f a]
  | c8\! f ) f2 ( e8 d
  | c8 f ) g, ( a bes d ) f, ( <e g>
  %20
  | <f a> c' <e, g>2 ) c4 (
  | f2 ~ f8 ) e( [f a]\<
  | c8 a'\! )  a4.^\fermata ( g8 f d
  | c8 [f] ) g, ( [a] bes [d] ) g, ( [<fis a>]
  | <g bes> d' ) d,^\p ( \tieDown <c~ e> <c f>2^\fermata)
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \partial 4
    s4
  %1
  | \repeat volta 2 {
    f,4\rest  <f c'>2.
  | r4 f'2.~
  | f4 e2 c4~
  | c4 c2 c4
  %5
  | r4  <f, c'>2.
  | r4 <g' a>2.~
  | a4. aes8 g c e, fis
  | f2 e4. s8
    }
  | r4  <f, c'>2.
  %10
  | \stemDown c''8 bes! a2 a4
  | g4. ees8 ( d g ) bes, c
  | s4. c8 bes4 s4
  | r4  <bes f'>2.
  | f''4 e2 e4
  %15
  | d4. bes8 ( a d ) f, ( g
  | f8 a
    \change Staff = "lower"
    \stemUp d, ) <e cis>
    \change Staff = "upper"
    \stemDown f4 e
  | r4 <f, c'>2.
  | r4 f'2.~
  | f4 e2 c4~
  %20
  | c4 c2 c4
  | r4 <f, c'>2.
  | r4 <f' g d'>2.~
  | f4 e2 d4~
  | d4 <bes> a2
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override Rest.staff-position = #0
  \partial 4
    s4
  %1
  | \repeat volta 2 {
    f,4 <c' a'>2.~
  | <c a'>4 \tieDown\grace { bes16 f'~ } \stemDown f2.
  | \slurDown c4 c2 a8\<( c8
  | f4\!) c8 (d c bes g a
  %5
  | \stemUp\tieUp f4) <c' a'>2.~
  | <c a'>4 \tieDown\grace { cis16 a'~ } \stemDown a2.~
  | <a d,>4. \tieUp <f c'>8~ <g c>4. \tieDown a8
  | g2 c,8( d bes g
    }
  | f4) \stemUp <c' a'>2.
  %10
  | s8 g'8 fis[ a] \stemDown
    << {
      \stemDown
      \once\override NoteColumn.force-hshift = #0.6
      d2~
    } \\ {
      \stemUp d8[
      \change Staff = "upper"
      \stemDown fis]
    } >>
  | << d4. \\ s4. >> s8 s2
  | \stemUp\tieUp bes8[ d g, a~] a[ g g, a]
  | s4 \stemDown <f' d'>2.
  | s4 \stemUp cis'8[ e] \stemDown
    << {
      \stemDown
      \once\override NoteColumn.force-hshift = #0.6
      a2~
    } \\ {
      \stemUp a8[
      \change Staff = "upper"
      \stemDown cis]
    } >>
  %15
  | << a4. \\ d,4. >> s8 s2
  | s2 \stemUp d4 s4
  | f,,4 <c' a'>2.~
  | <c a'>4 \slurUp\stemUp\tieUp d'2 c8 ( bes
  | a4) bes8( a g4 ) f8( g
  %20
  | a4 g2) s4
  | f,4 <c' a'>2.~
  | <c a'>4 s2.
  | <a' c>4
    << c2
    \\ {
      \stemUp\slurUp \once\override NoteColumn.force-hshift = #1 bes8 ( a g4 )
    } >> s4
  | s4 g4 s2
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \slurUp
  \partial 4
    r4
  %1
  | \repeat volta 2 {
    f,1~
  | \tieDown f4 \tieUp\stemUp d''2 ( c8 bes
  | a4 ) bes8 ( a g4 ) f8 ( g
  | a4 g2) s4
  %5
  | \tieDown
    \once\override NoteColumn.force-hshift = #1
    f,1~
  | \stemDown f4 \stemUp e''2.
  | d4. s8 s4. c8(
  | b8 g' a, b c) s4.
    }
  | f,,1
  %10
  | \stemDown r8 c'8 d2~ d8 fis!
  | g4. < c, fis >8 <d g>4. ees8
  | \slurDown d4. d8~ ( d g g, a
  | \stemUp bes,4 ) s2.
  | \stemDown r8 <g'' d'>8 a2~ a8 cis!
  %15
  | s4. <g cis>8 <a d>4. bes8
  | a2~ a8[ bes~]
    \once\override NoteColumn.force-hshift = #-1
    <bes c>[ c,]
  | \tieDown f,1 ~
  | \stemUp f4 \grace { bes16 f'~ } \stemDown f2.
  | c4 c2 a8\< ( c
  %20
  | f4 ) c8\![ ( d] c[ bes g a]
  | \tieDown f1~ )
  | \stemUp f4\ritardando\tieUp <g b! b'!>2.^\fermata\startTextSpan
  | \stemDown c4 c2 <bes g'>8[ <d a'>]
  | \set tieWaitForNote = ##t
    <g bes>4 c,8~ c, \stemUp <c' f,>2_\fermata\stopTextSpan
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
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "7. Träumerei" }
    % workaround to insert some vertical space after the subtitle
    subtitle = \markup {
             \column {
               \line { "(Dreaming)" }
               \line { " " }
             }
           }
  }
  \layout {}
  \midi {}
}
