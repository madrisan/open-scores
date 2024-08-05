Global = {
  \key a \major
  \time 3/4
  \include "../global.ly"
}

\include "../macros-schleifer.ly"
\include "../macros-slidenotes.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp\slurDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \once\override Dots.staff-position = #1
    cis8.\arpeggio d32 e d8( cis b\prall a)
  | \slurUp g'( fis) \grace g8 fis2
  | a8( gis!) \slurDown \appoggiatura gis8 a4.\mordent
    \once\override Staff.Script.extra-offset = #'(-3 . -2)
    b8^\turn
  | gis4.\prall fis8[ e\parenthesize\prall d]
  %5
  | cis8. d32 e d8( cis b\prall a)
  | \slurUp g'( fis) d4.\prall e8
  | d16 cis d e dis2\prall
  | e8. fis32 \slurDown dis \appoggiatura dis4 e2
  }
  \break
  \repeat volta 2 {
  | gis,8. a32 b a8( gis fis\prall e)
  %10
  | \slurUp e'( d) \grace d8 e2~
  | e8. fis32 g fis8_( e d\prall cis)
  | << {
      \slurUp d cis \appoggiatura cis8 d2
    } \\ {
      \stemUp \shiftOn
      \once\override Voice.Rest.X-offset = #-1.3
      b8\rest
      ais \grace ais8 b2
    } >>
  | c8. d32 e \slurDown d8( cis)
    \once\shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.5)) Slur
    \appoggiatura cis
    b \appoggiatura cis ais
  | b2.~
  %15
  | b8. cis32 d fis,8. b16 \grace b ais8.\prall d16
  | \grace cis8 b4 b2~
  | b8. cis32 d \slurUp cis8( b a\prall gis)
  | a16( gis fis eis) fis( gis a b) cis( d e fis)
  | \grace fis8 g8. a32 b a8 g fis\prall g
  %20
  | g fis fis2\prall
  | gis8. a32 b a8 gis \grace gis fis\prall e
  | d8.\mordent e32 fis e8 d \grace d cis\prall b
  | a8. b32 cis b8( a) gis16( a) gis( a)
  | gis4~\prall gis8 fis e4
  %25
  | cis'8.\mordent d32 e d8( cis b\prall a)
  | g' fis \grace fis8 g2
  | fis8. g32 a g8 fis e\prall d
  | b' a \appoggiatura a8 b2~
  | b8 gis \appoggiatura gis8 a2~
  %30
  | a8 gis \appoggiatura gis8 a2~
  | a gis4
  | a4 a2
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | << {
      \stemUp \once\override NoteColumn.force-hshift = #3 a4
    }
    % shiftoff is just for removing a lilypond warning
    \new Voice = "slides" { \slideNotes \shiftOff b\arpeggio }
    \new Voice { \stemDown \shiftOff e,\arpeggio }
    >>
    s2
  | << {
      \stemDown e'8[ d] \shiftOn d2
    } \\ {
      \shiftOn a4 \shiftOff a2
    } >>
  | << {
      \stemUp \shiftOn <d e>4 <cis e> s
    } \\ {
      \stemDown b4 a b
    } >>
  | \stemDown b4. a8 gis4
  %5
  | a s2
  << {
  | \stemUp e'4 s2
  | s2.
  }
  \new Voice = "slides" {
  % shiftoff is just for removing a lilypond warning
  | \slideNotes \shiftOff fis4\arpeggio s2
  | s2.
  }
  \new Voice {
  | \stemDown\tieDown\slurDown \shiftOff
    % FIXME: how to avoid this force-hshift?
    \once\override NoteColumn.force-hshift = #-3 cis2\arpeggio
    b4~
  | b4. a8( cis b)
  }
  >>
  | \stemDown a4 gis2\prall
  | e2.
  %10
  | g8 fis \grace fis8 g2
  | fis2.~
  | fis8 e \grace e8 fis2
  | g2 fis4
  | e8. fis32 g fis8( e d cis)
  %15
  | d8. e32 fis cis8 e16 d e4~
  | e8 g16 fis \appoggiatura e8 d2
  | cis2.~
  | cis4 a\rest e'8\rest e'~
  | e2~ e8 e
  %20
  | e d d2
  << {
  | \stemUp \shiftOn e2 cis4
  | b2 gis4
  | fis2 dis4
  | e4~ e8 s4.
  } \\ {
  | b'4 s a8 gis
  | fis4 s e8 d
  | cis4 s b
  | b4~ b8 s s4
  } >>
  %25
  | s2.
  | << {
      \stemDown e'8[ d] \shiftOn \grace d8 e2
    } \\ {
      \shiftOn a,4 \shiftOff a2
    } >>
  | d4 g,\rest g\rest
  << {
  | \stemDown d'8 cis \once\slurDown \appoggiatura cis d2~
  | d8. e32 f e8 d c\prall b
  } \\ {
  | \stemUp\tieUp
    \shape #'((0 . 0) (0 . -0.4) (0 . -0.4) (0 . 0)) Tie
    e4~ e2
  | s2.
  } >>
  %30
  | c8. d32 e d8 c b\prall \schleifer a
  | % FIXME: a bad hack to insert horizontal space
    \hideNotes \grace e'8 \unHideNotes
    f e c4\downprall b8 a
  | \shiftOff a4 << { \stemDown a2 } \\ { \shiftOn cis } \\ { \shiftOn e } >>
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  << {
  | \shiftOn e2.\arpeggio
  | cis'4 d2
  } \\ {
  | \stemUp a2.\arpeggio
  | e'4 fis2
  } >>
  | d4 e fis
  | e2.
  %5.
  | e
  | s2.*2
  | r8 b, e2
  | b'2.
  %10
  | a4 b\rest s
  | b\rest cis, fis~
  | fis b d\rest
  | s2.*6
  %19
  | g,4\rest e a~
  | a s2
  | s4 e' s
  | s b s
  | s fis s
  | s2.*8
  %32
  | << { f8\rest cis!16 e_~ \shiftOn e2 } \\ { \stemUp s4 a2 } >>
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  \repeat volta 2 {
  %1
  | a2.\arpeggio
  | a'
  | b4 cis d
  | e e,4. fis8
  %5
  | \stemNeutral g2.
  | \once\stemUp \grace b,8 ais4\prall b8.( cis32 d) \grace a8 gis4\prall
  | a!8.( b32 cis) fis,4 b
  | \stemDown e,2.
  }
  \break
  \repeat volta 2 {
  | d'!2.
  %10
  | cis4~ \slurNeutral cis16( d e d) \stemNeutral cis( b ais b)
  | \stemDown ais2.
  | b4~ b16( cis d cis) \stemNeutral b a g a32 b
  | e,4 e' fis\mordent
  | g d e
  %15
  | fis2.
  | b4~ b16 g( fis e d cis a cis32 d)
  | eis,4 eis' cis
  | fis4. g16( fis e d cis d)
  | \stemDown cis2.
  %20
  | d4~ d32 a( b cis d e fis g a b cis d cis b cis a)
  | d4 cis a
  | b gis e
  | fis dis b
  | \stemNeutral e32 e,( fis gis a b cis d) e( fis gis a b cis d) cis( b a gis fis e d cis b)
  %25
  | a2 r4
  | cis8.\mordent d32 e d8( cis b\prall a)
  | a'( gis!) a2
  | gis,8. a32 b a8( gis fis\prall e)
  | c'( b) c4 r
  %30
  | f8( e) f4 dis\prall
  | r e\mordent e,
  | \stemDown a2.
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
    opus = ##f % "BWV 806"
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
