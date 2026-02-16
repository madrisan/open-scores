Global = {
  \key as \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c'' {
  \override MultiMeasureRest.staff-position = #0
  %1
  | s1*4
  | \voiceOne r4 as8 ees' c as f' des
  | es2. as4~
  | as4 g f2~
  | f16 bes, c d es4~ es8 as des,[ bes']
  | des,4 c bes2
  %10	
  | as2~  as16 as bes c  des4~
  | des16 bes c es  \oneVoice as g as bes  c bes as g  f g as c
  | bes as g f  es f g bes  as g f es  d es f as
  | \voiceOne g f e g  f e f g  c,8 f~  f g16 e!
  | f16 e f g  as2 g4~
  %15
  | g4 f2 e4
  | f4~  f16 es! des! c  bes as g as  bes des c bes
  | a16 c des es  f es des c  bes des ges f  es des c bes
  | a4 bes16 c des8~  des c16 des es4~
  | es16 c des f  bes8 f  ges es as es
  %20
  | f8 des16 f  ges8 des  es c f c
  | des2. c8 f
  | d8 bes es2 d4
  | es4 r r2
  | r4 as,8 es'  c as ges' es
  %25
  | f4~ f8 g!  es4~ es8 f
  | des4~ des8 bes'  c, des16 bes c8 as'
  | bes,4  r16 es f g  as4~  as16 g f as
  | g2.~ g8 f~
  | f16 es d f  es2 des4~
  %30
  | des16 c bes des  c8 f  des bes ges' es8
  | f4 as8 f  g!4 bes8 g
  | as8 f des!4~  des8 es c f
  | c4 bes~  bes8 as16 g  as8 es'
  | c8 as f' des  es g, as4~
  %35
  | as4 g as2
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | s1*5
  | \voiceTwo r4 es8 as  g es c' as
  | bes4~ bes16 es, f g as bes c bes as g f as
  | g2 f8~ f4.
  | r16 es f g  as2 g4
  %10
  | as8 g16 f  es des c es~  es8 des16 es  f8 as,
  | as'8 r s2.
  | s1
  | r4 f8 c'  as f des'! bes
  | c8 d16 e  f8 c  des bes es bes
  %15
  | c8 as des as  bes16 c des c  bes as g bes
  | as4 e\rest c2\rest
  | r4 bes8 f'  des bes ges' es
  | r4 f8 bes  ges es c' a!
  | bes4  r16 f ges as!  bes as ges f  es f ges bes
  %20
  | as16 ges f es  des es f as  ges f es des  c des es ges
  | f4 f8 bes  g! es~ es as
  | f8 d r g  as16 bes c bes  as g f as
  | g16 as bes g  es8 bes'  g es des'! bes
  | \voiceFour c4 r r c8 es~
  %25
  | es8 as, bes des~  des g, as c~
  | c8 f, bes2 as4~
  | as16 g as bes c4~  c16 des es c des4~
  | des16 c bes des c4~  c16 bes as g  as8. as16
  | g4 es8 as  f des! bes' g
  %30
  | as4 d,\rest d\rest s8 
    \once\override NoteColumn.force-hshift = #0
    \once\omit Flag \once\omit Stem es'~
  | \once\override NoteColumn.force-hshift = #1.1 es8 des s
    \once\override NoteColumn.force-hshift = #0
    \once\omit Flag \once\omit Stem f~
    \once\override NoteColumn.force-hshift = #1.1 f8 es s4
  | \once\override NoteColumn.force-hshift = #1.1 f8 s
    r bes, g bes c as
  | as4. g8 f4 r8 bes
  | as r r bes  bes r r f
  %35
  | bes,16 c des f es des c des c2
}

Tenor = \context Voice = "three" \relative c' {
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | \change Staff = "upper"
    r4 as8 es'  c as f' des
  | es4~  es16 des c des  es f g es  as bes c bes
  | as16 g f as  g2 f4~
  | f16 es d f  es4~  es8 des16 c  des f bes as
  %5
  | \voiceFour g16 f es des  c bes c des  es4
    \showStaffSwitch
    \change Staff = "lower" \voiceThree
    as,
  | g4 as16 bes c8 bes8. bes16 as8 c
  | f,8 r r4 s2
  | s1*2
  %10
  | r4 as8 es'  c as f' des
  | es4 es2 des4~
  | des4 c2 bes4~
  | bes4 as8 g~  g16 bes as g  f e f g
  | as16 bes as g  f8 r r2
  %15
  | s1*3
  | f'4 bes,2  a16 bes c a
  | f8 bes16 c  \oneVoice des2 c4~
  %20
  | c4 bes2 a4
  | bes16 es des c  bes as! g! f  es des' c bes  as g f g
  | as16 c bes as  g f es des!  es8 as bes bes,
  | es4~  es16 f g as  bes c des c  bes as g bes
  | as16 es f g  as bes c des  es f ges f  es des c es
  %25
  | des16 es f es  des c bes des  c des es des  c bes a c
  | bes c des c bes  as! g bes  as bes as g  f es f des
  | \voiceThree es16 des c bes  as8 r r2
  | r4 g'8 c  as f d' b
  | c16 es,! f g  as bes! c bes  as g f g  as g f es
  %30
  | f16 es des f  es8 r  r4 
    \change Staff = "upper" \voiceTwo
    e'8\rest c'
  | as4 g8\rest d'  bes4 g8\rest e'
  | c8 r
    \change Staff = "lower" \voiceThree
    r4  g8\rest g aes f
  | es4 des c e8\rest es
  | es e\rest e\rest f es c\rest c\rest bes~
  %35
  | bes4 es, es2
}

Bass = \context Voice = "four" \relative c {
  \override MultiMeasureRest.staff-position = #0
  %\set Voice.beamExceptions = #'()
  %\set Voice.baseMoment = #(ly:make-moment 1/4)
  %\set Voice.beatStructure = 1,1,1,1
  %1
  | R1
  | r4 es8 as  g es c' as
  | bes8 es, bes' g  as es as f
  | g4~  g16 c, des! es  f g as f  bes c des c
  %5
  | bes16 as g bes as4~ as16 as, bes c \voiceFour des es f es
  | des16 c bes des  c8. d16  es f g8~  g16 g f es
  | d16 bes c d  es4~ \oneVoice es8 as d, bes'
  | es,4~  es16 es f g  as bes c bes  as g f as
  | g8 es  r16 as, bes c  des es f es  des c bes des
  %10
  | \voiceFour c4~  c16 des es c  f4~  f16 es f des
  | as'16 g as bes  c8 g  as f bes f
  | g8 es as es  f d g d
  | e8 c d e  f4 bes,8 des
  | c4  r16 f, g as  bes as g f  es f g bes
  %15
  | \oneVoice as16 g f es  des es f as  g8[ bes c c,]
  | f16 c' d e  f4~  f8[ bes e,! c']
  | es,!8 a des,!4  ges4 r8 ges16 f
  | \voiceFour es16 ges f es  des c bes es  es f ges es  f4
  | bes,4 g\rest r2
  %20
  | s1*7
  | r4 as8 es'  c as f' des
  | es4  e16 bes' as g  f2
  | c2 des!
  | as4~ as16 f g as  bes c des es  des c bes as
  | des16 c des f  es d c bes  es d es g  f e d c
  | f16 g as f  bes as g f  es! des! c bes  as bes c des
  | es16 des c des  es8 es,  f4 r16 es f g
  | as16 bes c es  des c bes as  g f es des  c es des f
  | es2 as
  \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
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
    \new Devnull \forceBreaks
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
    opus = ##f % "BWV 862"
    title = \markup { "Fuga XVII " \char ##x007E " à 4" }
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
