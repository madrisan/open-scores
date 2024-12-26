Global = {
  \key g \minor
  \time 3/4
  \include "../../global.ly"
}

voiceFive  = #(context-spec-music (make-voice-props-set 4)  'Voice)

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteIIISarabande
  \repeat volta 2 {
  %1
  | bes'8\arpeggio a a4~\mordent a16 c32 bes a c bes d64 c
  | c8 bes16 a g4( fis8.\prall) a32 g
  | g16 a ees8 ees8~ ees32 d c d d8.\downprall c16
  | bes4.\downprall a8 \once\slurDown \appoggiatura a8 g4
   \break
  %5
  | d'8 f16 e f4. d8
  | e g16 fis g4. a8
  | fis16 g fis g g4.\prall fis16 g
  | bes16 a8. a2
  }
  %\break
  \repeat volta 2 {
  | \slurDown bes8 d f4~\arpeggio f32( g f ees d c bes64 aes bes g)
  %10
  | aes16( f g8) \once\slurDown\appoggiatura aes16 g2
  | \stemNeutral\slurNeutral d'16 c b d32 f aes4( g8)\prall f32 g64 aes g32 f
  | \stemUp \grace f8 ees4.\downprall d8 \appoggiatura d16 c4
  | \override Tie.extra-offset = #'(0 . 1.2)
    ees2.~
  | ees~
  %15
  | ees~
  | ees4 ees2
    \revert Tie.extra-offset
  | des8 ces16
    \once\override Tie.extra-offset = #'(0 . 1)
    bes~ bes4\prall g16 aes! aes\prall g32 aes
  | bes16 aes32 g aes16 g32 f g4~ g16 g f a32 g
  | g32 a bes a g f e f64 g \once\slurUp \appoggiatura d8 cis4~\prall cis16 e g bes32 a
  %20
  | a16 c32 bes a bes c16~ c4 s
  | \override Tie.extra-offset = #'(0 . 1.2)
    g2.~
  | g~
  | g16 a bes g fis g cis, bes' g8.\downprall a32 fis
  | g4 g2\arpeggio
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  %1
  | <d g>4\arpeggio c2~
  | c4 c2~
  | c4 a2
  | s2.
  %5
  | bes4 b2
  | c4 c2~
  | c4 cis2
  | c8\rest cis d2_\mordent
  | f!4
    << {
      \stemDown f4.\arpeggio
    } \\ {
      \stemUp \once\override NoteColumn.force-hshift = #0.6 bes4.
    } \\ {
      \once\override NoteColumn.force-hshift = #0.3 d4.\arpeggio
    } >>
    s8
  %10
  | s4
    << {
      \stemDown \once\override NoteColumn.force-hshift = #1.4 d,2
    } \\ {
      \stemDown \once\override NoteColumn.force-hshift = #1 f
    } >>
  | s2.
  | g4. f8 ees4
  | \stemUp \shiftOn c' a2
  | des4 bes2
  %15
  | ces4 aes bes8 ces
  | \shiftOn ces8 aes \grace aes8
    \once\override Staff.TextScript.extra-offset = #'(2.8 . -5)
    bes2^\markup { \musicglyph "scripts.mordent" }
  | \stemUp e,4\rest \grace aes16 g4 s
  << {
  |
    d4\rest \grace f16 \once\stemUp \shiftOn e4 s
  } \\ {
    \tieUp s8. g16~
    \once\omit Stem
    \once\override NoteColumn.force-hshift = #0
    g4
    s
  }
  >>
  | \stemDown b,4\rest g2
  %20
  | d'8\rest
    \once\override Tie.extra-offset = #'(0 . 0.3)
    a'~ \stemUp a4 s
  | d, f2
  | ees4 ees2
  | e8 b8\rest b\rest \once\stemDown cis \once\stemUp d4
  | d4 d2
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | \shiftOff g4 s2
  | c4\rest a2~
  | a4 fis2
  | g2.~
  %5
  | g4 g2~
  | g4 a2~
  | \once\override NoteColumn.force-hshift = #0.4 a4 bes2
  | f'4\rest a,2
  }
  \repeat volta 2 {
  | bes2.~
  %10
  | bes4 g2~
  | g4 f ees8\prall d
  | s2.*5
  %17
  | \change Staff = "upper"\voiceTwo \stemDown\tieDown
    g4\rest des'2
  | f,4\rest cis'2
  | s2.
  %20
  | s4 d8.*5/6 d32 e fis fis8.\prallprall e32 fis
  | b,4 b2
  | c4 c2
  | bes8 s4. c4
  | c8 a \appoggiatura a8 bes2\arpeggio
  }
}

Baritone = \context Voice = "four" \relative c {
  \voiceFour
  \stemUp\tieDown
  \override Rest.staff-position = #0
  %1
  | \shiftOn d4\arpeggio ees2~
  | ees2._~
  | ees4 c2
  | d2.~
  %5
  | d4 d2
  | c8 d \stemDown \shiftOff ees2~
  | \once\override NoteColumn.force-hshift = #0 ees4 e2
  | a8\rest \stemUp e \shiftOn fis2_\mordent
  | \once\override NoteColumn.force-hshift = #0.4 f2.
  %10
  | f4 s2
  | s2.
  | a4\rest g c
  | \change Staff = "upper"\voiceThree \stemDown\tieDown
    a'!4 fis2
  | bes4 g2
  %15
  | f4 f2~
  | f4 g2
  %17
  | \change Staff = "lower" \stemUp\tieUp
    e,4\rest e2
  | e4\rest e2
  | e4\rest e2
  | a4\rest a2
  | s2.*3
  %24
  | a4\rest g2\mordent

}

Bass = \context Voice = "five" \relative c {
  \voiceFive
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | g2.\arpeggio~
  \repeat unfold 5 {
  | g2.~
  }
  | \once\override NoteColumn.force-hshift = #0.4 g
  | d'2.
  }
  \repeat volta 2 {
  | d2.~
  %10
  | d4 b2~
  | b2.
  | c
  | \stemNeutral fis,8[ a] c16 ees d c bes a g a32 fis
  | g8[ bes] des16 c des f ees des c32 bes aes bes64 g
  %15
  | aes16 bes ces d! f ees32 d f16 d ces8 bes16\prall ces32 aes
  | ees'4 ees,2
  | \stemDown e2.~
  | e~
  | e
  %20
  | fis
  | \stemNeutral f8 b d f aes16 g32 f ees f d16
  | ees d c d32 b c16 ees d c bes32 aes bes g aes fis g16
  | cis,4 \stemDown d2
  | g2.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Baritone
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 808"
    title = \markup \abs-fontsize #14 { \italic "Les agréments de la même Sarabande" }
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
