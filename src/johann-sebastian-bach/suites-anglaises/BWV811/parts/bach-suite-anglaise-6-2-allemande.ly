Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'SuiteVIAllemande
  \repeat volta 2 {
  \partial 16 d16
  %1
  | d4~ \stemNeutral d16 f e d cis\prall d e a, \stemUp c8.\prall c16
  | a'8. ees16 d c bes a bes8\prall a16 g
    << {
      \stemUp \shiftOnn bes4
    } \\ {
      \stemUp \shiftOn d
    } \\ {
      \shiftOff g8.\arpeggio g16
    } >>
  | cis,8. d32 e g,16 bes a g f a32 g f g a16 d,8. bes'16
  | c, e g bes e, bes' a g a c32 bes a bes c16 f,8. f'16
  %5
  | g, bes d f bes, f' e d cis b a b c8.\prall c16
  | b c d8~ d16 f e\prall d cis d e8~ e16 e d cis
  | d e f8~ f16 f e d b' e, f d c8.\prall b16
  | e8. bes16 a g f e f8 e16 d
    << {
      \stemUp \shiftOnn f4
    } \\ {
      \stemUp \shiftOn a
    } \\ {
      \shiftOff d8.\arpeggio d16
    } >>
  | gis,8. a32 b d,16 f e d d b c e g8. g16
  %10
  | g e f a \stemNeutral b( c d) d d b gis b d e32 f e16 d
  | \stemUp gis8.\upprall fis32 gis a16 b32 c b16 d, c8.\prall b16 b8.\prallprall a16
  | a4 r16 b, d gis a4..
  }
  %\break
  \pageBreak
  \repeat volta 2 {
  \partial 16 e'16
  | e g32 f e f g16 cis, e32 d cis d e16 \stemNeutral a,8. b16 cis d e f
  | g a bes g \stemUp f8.\prall e16 a g f g32 a d,16 e32 f e16 f32 g
  %15
  | f16 e d a' ees8.\mordent ees16  fis,8.\prall d16 e fis g a
  | bes16 g32 a bes a g16 ees'8. ees16 ees f,32 g a g f16 d'8. d16
  | d16 g32 f ees f g16 b\rest fis g a d,8. ees!16 a,8.\prall g16
  | \stemNeutral\tieNeutral g4~ g16 fis g a b a g d' f,8.\prall f16
  | b,8. g'16 a b c d e c32 d e d c16 g'8. g16
  %20
  | g16 e32 d cis d e16 g, bes a\prall g \stemUp\tieUp e'2~
  | e8. g16 f e d c bes8. a'16 g f e d
  | cis4~ cis8. cis16 d c bes a g8. g16
  | \stemUp e'8. bes16 a g f e f a cis d e,8.\trill d16
  | d fis32 g a g fis16 g e g cis d4..
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | \once\stemUp \shiftOn a4 \shiftOff s s8. \once\omit Flag \once\omit Stem a16~ a8. c16~
  | c8 g\rest s4 s8. \once\omit Flag \once\omit Stem g16~ g4~\arpeggio
  | g s2.
  | c,4 e f s
  %5
  | g bes s2
  | s4 bes8. g16\rest a8. g16\rest e4\rest
  | a4~ a8 e\rest e e\rest a8. gis16
  | a8. s2 \once\omit Flag \once\omit Stem d,16~ d4~\arpeggio
  | d4 s2
    << {
      \stemDown cis4
    } \\ {
      \stemUp \shiftOn e
    } >>
  %10
  | << {
      \stemDown a,16
    } \\ {
      \stemUp \shiftOn d
    } >>
    s8. s2.
  | e'4 g,8\rest g16\rest b~ b8 a~ a[ gis]
  | s2
    << {
      \stemDown cis,4..
    } \\ {
      \stemUp \shiftOn e4..
    } >>
  \partial 16 s16
  | << {
      \stemDown a
    } \\ {
      \stemUp \shiftOn cis
    } >>
    s8. s2.
  | s1
  %15
  | s4 c! s2
  | s4 g16\rest g c bes a s8. g16\rest f bes a
  | g8 g\rest c8. c16~ c16 bes32 a bes16 g fis4
  | s1*2
  %20
  | s2 g16\rest bes a g f8.\prall e16
  | a2~ a16 a g8 bes4~
  | bes~ bes16 bes a8 s4. s16 \once\omit Flag \once\omit Stem g~
  | g8 s4. f4*1/2 bes8 cis,4
  | s c16\rest e8.
    << {
      \stemDown fis!4..
    } \\ {
      \stemUp \shiftOn a
    } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | \change Staff = "upper"
    << { \stemDown d4 } \\ { \stemUp \shiftOnn f } >>
    \change Staff = "lower"
    d,8. f16 e f g8~ g16 bes a g
  | fis g a8~ a16 a g fis g a bes8~ bes16 a g f
  | e f g bes cis8.\prall cis16 s2
  | s4. \once\omit Flag \once\omit Stem c8~ c s4.
  %5
  | s2 e8\rest cis f4~
  | f8 f\rest e8. s16 g8. s16 s4
  | s2 b,8. s16 s4
  | c16\rest d, e8~ e16 e d cis s2
  | s1
  %10
  | s2 << { \stemUp \shiftOn b4 } \\ { \stemUp e } >> s4
  | s2. e4
  | b'16\rest e,32 d cis d e16 f4 e4..
  \partial 16 s16
  | s1*2
  %15
  | s2 c'4~ c16 c bes a
  | s1*2
  | d16\rest d, e fis g8 a\rest a2\rest
  | s4 d16\rest g, a b c8 g16 a bes4
  %20
  | a4 a\rest s2
  | e'16\rest a, b cis d e f8~ f16 f e d e f g8~
  | g16 e cis e g8. g16 f4~ f16 f e d
  | cis8 s4. s2
  | d16\rest a32 bes c bes a16 bes16 g32 a bes a g16 a4..
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 16 r16
  %1
  | r16 a32 g f g a16 d,4~ d2~
  | d~ d~
  | d d'8. c!16 bes a g f
  | e g32 f e f g16 c,8 c' f,8. e16 d c bes a
  %5
  | \stemNeutral bes d32 c bes c d16 g,8 g' \stemDown a4~ a16 c! b a
  | gis a b e, g8. g16 e'8. bes16 a g f e
  | f8 e16 d d'8. d16 gis,8. a32 b! d,16 f e d
  | cis4. s8 \stemNeutral\tieNeutral d16 e f8~ f16 f e d
  | b' e, f d gis8.^\prall gis16 a8. g16 f e d cis
  | d8. e16 d c b a \stemDown\tieDown gis4~ gis16 a b c
  %10
  | \stemNeutral d16 e32 f e16 d c b a gis a8 d \stemDown e[ e,]
  | a2~ a4..
  }
  \repeat volta 2 {
  \partial 16 a'16
  | \stemNeutral\tieNeutral a4~ a16 gis a b cis b a e' bes8. bes16
  | \stemDown cis,8. a'16
    \once\override Beam.positions = #'(-1.5 . -0.3)
    b cis d
    \change Staff = "upper"
    e f bes a g f e d cis
  %15
  | \once\override Beam.damping = #+inf.0
    d8
    \change Staff = "lower"
    d,16 e fis g a bes c a32 g fis g a16 d,4
  | \stemNeutral g16 f ees d c bes a g f ees' d c bes a g f
  | ees4~ ees16 ees'32 d c d ees16 fis,8 g16 c d8 c
  | \stemDown\tieDown b4~ b16 c b a g a b c d e32 f e16 d
  | g16 a g f e8 d c4~ c16 f e d
  %20
  | cis b a e' bes8.\mordent bes16 \stemNeutral cis,8. a'16 b cis! d e
  | f2 g
  | a bes~
  | bes16 bes a g f e d cis d8 g a[ a,]
  | \stemDown d2~ d4 \once\stemUp d,8.
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
    opus = ##f % "BWV 811"
    title = \markup { "Allemande" }
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
    \tempo 4 = 60
  }
}
