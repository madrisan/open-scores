Global = {
  \key a \minor
  \time 3/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | c4 c8 b a gis
  | a4 a2
  | <c e>4\arpeggio e8 d c b
  | b4 c8. b16 a4
  %5
  | c8 a f e f a
  | d g, f e f d'
  | e d f e d c
  | g'4 g2
  | \stemNeutral bes,8 a bes g' e bes
  %10
  | a g a a' ees\prall d
  | \stemUp b'[\turn c] f,![ e! d c]
  | c4 c2
  }
  \repeat volta 2 {
  | g4 g8 f e d
  | e4 e2
  %15
  | dis8 a' g fis g16( b e8)
  | dis8 fis16 e \slurDown \appoggiatura e8 fis4 b,
  | \stemNeutral g'8 e c! b ais g'
  | fis c b a! gis f'
  | \stemUp e c' b[ a]  g[ fis]
  %20
  | \appoggiatura <dis fis>8 g4 \appoggiatura fis8 e2
  | g8 a g2
  | g8 f g2
  | f8 g f2
  | f8 e f2
  %25
  | e8 d\prall f e a g\prall
  | bes a gis a f e
  | dis\prall e d[ c b a]
  | a4 a2
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemUp
  \override Rest.staff-position = #0
  %1
  | \override NoteColumn.force-hshift = #0.3
    a4
    \override NoteColumn.force-hshift = #1
    f
    \override NoteColumn.force-hshift = #0.5
    e8 d
  | \override NoteColumn.force-hshift = #0.3 c4 c2
  | \revert NoteColumn.force-hshift
    \stemDown a'4\arpeggio c8 b a gis
  | gis4 \once\stemUp \appoggiatura gis8 a4_\mordent e
  %5
  | s2.*2
  | \once\stemUp \once\override NoteColumn.force-hshift = #0.3 c'4 c a
  | b b2
  | s2.*2
  %11
  | \stemUp r4 \override NoteColumn.force-hshift = #0.2 c b
  | g4 g2
  | \stemDown \revert NoteColumn.force-hshift e4 e8 d c b
  | c4 c2
  %15
  | dis4 e e
  | fis b d,\rest
  | s2.*2
  | a'8\rest a' g[ fis e dis]
  %20
  | \stemUp \override NoteColumn.force-hshift = #0.3 e4 b2
  | \revert NoteColumn.force-hshift r4 \stemDown r8 f'! e d
  | \stemUp \override NoteColumn.force-hshift = #0.3 cis4 cis2
  | \stemDown g4\rest g8\rest e' d c!
  | \stemUp \override NoteColumn.force-hshift = #0.3 b4 b2
  %25
  | \stemDown \revert NoteColumn.force-hshift c2~ c8 c
  | f e d c b c
  | a4 \stemUp \override NoteColumn.force-hshift = #0.3 a gis
  | e4 e2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemDown
  \override Rest.staff-position = #0
  %1
  | \change Staff = "upper" e4 e8 d c b
  | \change Staff = "lower" \stemUp a4 a2
  | << {
      \stemUp \once\override NoteColumn.force-hshift = #0.8 e4\arpeggio
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0.4 a\arpeggio
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0 e'\arpeggio
    } >>
    << {
      \stemUp \once\override NoteColumn.force-hshift = #0.4 a,4
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0 f'
    } >>
    s4
  | e4. d8 c[ b]
  %5
  | s2.*2
  | \change Staff = "upper" \stemDown g'4
    \change Staff = "lower" \stemUp c, f8 e
  | d4 d2
  | s2.*2
  %11
  | s4 \change Staff = "upper" \stemDown g f
  | \once\override NoteColumn.force-hshift = #1 f8[ d] e2
  | \change Staff = "lower" \stemUp
    c4 c g
  | g g2
  %15
  | a4 b b
  | b8[ cis] dis4 d\rest
  | s2.*2
  | \change Staff = "upper" \stemDown
    c4\rest
    \override NoteColumn.force-hshift = #0.4
    \override Stem.length = #5 e' b
    \revert Stem.length
  | \revert NoteColumn.force-hshift b4 g2
  | s2.
  %22
  | f8\rest bes a[_\markup { "m.s." } g f e]
  | \change Staff = "lower" \stemUp
    d4 d\rest d\rest
  | \change Staff = "upper" \stemDown
    e8\rest a g[_\markup { "m.s." } f e d]
  %25
  | s2.*2
  | \once\override Voice.Rest.X-offset = #0.6 c4\rest e d
  | c c2


}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | a4 d, e
  | f e8 d c b
  | c4\arpeggio d e
  | a, c e
  %5
  |\stemNeutral  a a, r
  | b' b, r
  | \stemDown c'8 b a g f4
  | f8 e g( f e d)
  | e2 r4
  %10
  | f2 fis4
  | \stemNeutral r4 g g,
  | c c,2
  }
  \repeat volta 2 {
  | \stemDown c'8 e g4 g,
  | c4 c8 b a g
  %15
  | fis4 e e'
  | b b'8 a g fis
  | e4 e' r8 e,
  | dis4 dis' r8 d,!
  | \stemNeutral c4 g! b
  %20
  | e, g b
  | e f! g
  | a r r
  | d, e f
  | g r r
  %25
  | c8 b a g f e
  | d c b! a gis a
  | fis4 e e'
  | a,8 c16 e a2
  }
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 807"
    title = \markup { "Sarabande" }
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
