Global = {
  \key b \minor
  \time 6/8
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8. b16 ais8
  %1
  | \appoggiatura ais8 b4.~ b8. a16 g8
  | \appoggiatura g8 fis4. ~ fis8. gis16 ais8
  | b8. a16 g8 fis8. g16 e8
  | d8.\prall cis16 d8 b8. d16 cis8
  %5
  | d8.\mordent e16 fis8 e8. a16 g8
  | fis8.\prall e16 fis8 d8. fis16 e8
  | fis8.\mordent gis16 a8 gis8. cis16 b8
  | a8.\prall gis16 a8 fis8. a16 gis8
  | a8.[ fis16] gis32[ a b cis] d8. cis16 d8
  %10
  | d8.[ e,16] fis32[ gis a b] cis8. b16 cis8
  | cis8. e16 fis8 b,8. a'16 gis8
  | eis8.\prall fis16 gis8 cis,4 b8
  | a8. d!16 b8 cis8. a16 b8
  | a8. gis'16 eis8 fis8. cis16 d8
  %15
  | cis8. fis,16 gis8 cis,8. fis16 eis8
  | fis4.~\prall fis8.
  }
  \break
  \repeat volta 2 {
  \partial 8. cis'16 b8
  | \appoggiatura b8 ais4.~ ais8. cis16 fis8
  | a,4.~\mordent a8. e'16 dis8
  | e8. d16 c8 b8. c16 a8
  %20
  | g8.\prall fis16 g8 e8. g16 fis8
  | g8.\mordent a16 b8 a8. b16 g8
  | fis8.\prall a16 gis8 a8. b16 cis8
  | d8.\mordent e16 fis8 e8. fis16 d8
  | cis8.\prall b16 cis8 a8.[ a16] b32[ cis d e]
  %25
  | fis8. e16 fis8 fis8.[ g,16] a32[ b cis d]
  | e8. d16 e8 e8.[ fis,16] g32[ a b cis]
  | d8. fis,16 g8 \appoggiatura fis8 e8. d'16 cis8
  | \once\stemUp\once\slurDown \appoggiatura cis8 d4.~ d8. fis,16 e8
  | \appoggiatura e8 fis4.~ fis8. gis16 a8
  %30
  | \appoggiatura a8 gis4.~ gis8. e'16 fis,8
  | \appoggiatura fis8 gis4.~ gis8. ais16 b8
  | \appoggiatura b8 ais4.~ ais8. fis'16 ais,8
  | b( cis16 b ais b) cis8( d16 cis b cis)
  | d8( e16 d cis d) e8( fis16 e d e)
  %35
  | fis8. e16 d8 cis8. d16 b8
  | ais8.\prall b16 cis8 fis,8. fis'16 e8
  | fis4 fis,8 fis8. e'16 d8
  | e4 fis,8 fis8. d'16 cis8
  | d8. fis16 b,8 b8. cis16 ais8
  %40
  << {
  | \stemUp\tieUp b2.~
  | b2.^~
  } \\ {
  | r4 r8 r4 e,8
  | e( dis) fis a!4.
  } \\ {
  | s2.
  | \stemDown s4. \once\override Voice.Rest.X-offset = #0.4 d,8\rest fis4
  } \\ {
  | s2.
  | \stemDown s4. \once\override Voice.Rest.X-offset = #0.8 f,4\rest dis'8
  } >>
  | <e g b>8. e16 fis32[ g a b] \stemNeutral\tieNeutral c8. b16 c8
  | c8. d,16 e32[ fis gis ais] b8. ais16 b8
  | b8. gis16 ais32[ b cis d] e8. d16 e8
  %45
  << {
  | \stemUp\tieUp e2.~
  | \once\shape #'(((0 . 0) (0 . -0.2) (0 . -0.2) (-0.2 . -0.4))) Tie
    <cis e>4.~
    q8. d16 cis8
  | fis8. e16 d8 cis8.\prall b16 cis8
  | b4.^~\mordent b8.
  } \\ {
  | r8 b g \stemUp\tieDown e g
    \once\shape #'(((0 . 0) (0 . 0) (0 . 0) (-0.4 . -0.4))) Tie
    ais^~
  | \stemDown
    \once\shape #'(((0.2 . 0.8) (0 . 0.8) (0 . 0.6) (0 . 0.6))) Tie
    ais4.~
    ais8. b16 ais8
  | b4 b8 b4 ais8
  | b4.~ b8.
  } \\ {
  | \stemDown\tieDown s4. s8 g4~ \once\omit Stem g4.
  } \\ {
  | \mergeDifferentlyDottedOn s4. e~
  | \once\override NoteColumn.force-hshift = #0 e
  } >>
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8. r16 r8
  %1
  | r8. b16 cis8 d8. cis16 b8
  | ais8. gis16 fis8 e'8. d16 cis8
  | d4 e8 fis4 fis,8
  | b4 b,8 d4 fis8
  %5
  | b4 a8 g4 a8
  | d4 d,8 fis4 a8
  | d4 cis8 b4 cis8
  | fis4 fis,8 a4 cis8
  | fis4.~ fis8. e16 d8
  %10
  | e4.~ e8. d16 cis8
  | d4.~ d8. cis16 b8
  | cis4.~ cis8. dis16 eis8
  | fis4 fis,8 fis8. fis'16 eis8
  | fis4 fis,8 fis8. a16 gis8
  %15
  | a8. d16 b8 cis4 cis,8
  | fis8. ais16 cis8 fis8.
  }
  \repeat volta 2 {
  \partial 8. r16 r8
  | r8. fis,16 fis'8 e8.^\prall d16 cis8
  | dis8. e16 fis8 b,4 a8
  | g4 a8 b4 b,8
  %20
  | e4 e'8 g4 b8
  | e,4 d8 cis!4 a8
  | d4 b8 cis4 fis8
  | b,4 a8 gis4 e8
  | a4 g!8 fis4 e8
  %25
  | d4 d'16 e32 fis g4.~^\mordent
  | g8. fis16 e8 fis4.~^\mordent
  | fis4 b,8 g4 a8
  | d,8. fis16 a8 d4.~
  | d8. e16 cis8 d8. cis16 b8
  %30
  | e,8. gis16 b8 e4.~
  | e8. fis16 d8 e8. d16 cis8
  | fis,8. ais16 cis8 fis4 e8
  | d4 fis8 ais,4 fis'8
  | b,4 fis'8 cis4 fis8
  %35
  | d4 b8 e8. fis16 g8
  | fis4.~ fis8. fis16 gis32[ ais b cis]
  | d8. cis16 d8 d8. fis,16 gis16[ ais32 b]
  | cis8. b16 cis8 cis8. b16 ais8
  | b4 g!8 e4 fis8
  %40
  | g,8. b16 cis32[ dis e fis] g8. fis16 g8
  | fis8. b,16 cis16[ dis32 e] fis8. e16 fis8
  | e4 e,8 e4 e'8
  | d!4 d,8 d4 d'8
  | cis4 cis,8 cis4 cis'8
  | b8 cis16 d e fis g fis e d cis b
  | ais8. b16 cis8 fis,8. fis'16 e8
  | d8. cis16 b8 fis'4 fis,8
  | b8. fis16 d8 b8.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 831"
    title = \markup { "Gigue" }
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
