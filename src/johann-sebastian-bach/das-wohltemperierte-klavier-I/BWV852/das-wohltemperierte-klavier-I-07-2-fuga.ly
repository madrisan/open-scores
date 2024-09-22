Global = {
  \key ees \major
  \time 4/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \highlightSubject { bes'16 g f g  es as g as  c8 bes r a16 f
  | es'8 d c4\trill \unHighlightSubject bes16 } f' d bes  as! f' d as
  | g8 as' g f  es16 c d es  f4~
  | f16 es f g  as f bes, as'  g8 es16 g c4~
  %5
  | c8 d,16 f bes4~  bes8 c,16 es as8 g
  | f4 g8 d es4. f8
  | g4. a8 bes2~
  | bes16 bes g es  des bes' g des  c8 es as4~
  | as16 as f d  c as' f c  bes8 d g4~
  %10
  | g4~ g16 c, d es  f4. es8~
  | \highlightSubject { es16 d c d  bes es d es  g8 f f\rest d16 bes
  | as'8 g f4\trill  \unHighlightSubject es16 } bes' g es  des bes' g des
  | \stemNeutral c8 as' r as,  d!16 as' f d  c as' f c
  | b8 g' r g,  c16 g' e c  bes g' e bes
  %15
  | \stemUp a16 g' c, a  as f' d as  g f' d b  g es' c g
  | fis ees' c a f d' b f e d' bes g ees c' g ees
  | d16 c' as f  d b' a b  c8 f es d
  | c16 a b c  d4~  d16 c d es  f d g, f'
  | es16 g es d  c c' as f  d f d c  bes bes' g es
  %20
  | c16 es c bes  as as' f d  b4 c~
  | c8 b  c16 b c d  es8 d[ e fis]
  | g16 d c d  bes e d e  g8 f f4\rest
  | f16 c bes c  as d! c d  f8 es e4\rest
  | f16\rest bes, es c des4  r16 c f d es4
  %25
  | r16 d g es f4  r16 es g bes!  as! f bes, g'
  | f8 as g f  es16 c d es  f4~
  | f16 es f g  as f bes, as'  g bes g es  des4
  | c16 c' as f es4  d!16 f d bes as4~
  | \highlightSubject { as16 g f g  es as g as  c8 bes r a16 f
  %30
  | es'8 d8 c4\trill \unHighlightSubject bes8 } f' d bes
  | bes'2~  bes8[ es, c as]
  | as'2~ as8[ d, bes g]
  | g'4~ g16 c, d es  f es d c  bes as bes c
  | f,4 r8 f  es' d d4\rest
  %35
  | f8 es4 d8  es16 g es c as4~
  | as16 f' d as  g8 es'  g,4 f
  | es1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | s1*2
  | \change Staff = "lower" \voiceThree
    \clef treble
    \highlightSubject { ees16 d c d bes ees d ees g8 f r d16 bes
  | as'8 g f4\trill  \unHighlightSubject es16 } bes' g f  es c' a f
  %5
  | d16 a' f es  des bes' g es  c g' es c  d bes' es,
    \change Staff = "upper" \voiceTwo
    c'
  | d8 des c[ bes]  as16 g as bes  c4~
  | c16 bes c d  es c
    \change Staff = "lower" \voiceThree
    f,
    \change Staff = "upper" \voiceTwo
    es'  d8 f d bes
  | es8 r f,4\rest  f8\rest es'[ c as]
  | d!8 g,\rest e4\rest e8\rest d'[ bes g]
  %10
  | c8 bes as4~  as16 c bes as  g4
  | f bes~ bes8 as16 g as8 f
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    d8
    \change Staff = "upper" \voiceTwo
    es'4 d8 es g,\rest
    \change Staff = "lower" \voiceThree
    es4~
  | es16 es c as  g es' c g  f8 as d4~
  | d16 d b g  f d' b f  e8 g c4~
  %15
  | c b8 c
    \change Staff = "upper" \voiceTwo
    d
    \change Staff = "lower" \voiceThree
    b\rest a4\rest
  | R1
  | c2\rest \highlightSubject { c16 bes! as! bes  g c b c
  | es8 d r b16 g  f'8 es d4\trill
  | \unHighlightSubject c16 } b c es  as!4~  as8 bes,16 d  g4~
  %20
  | g8 as,16 c  f4~  f16
    \hideStaffSwitch \change Staff = "upper" \voiceTwo
    g as4 g8
  | f16 es f g  a4~  a16 g a bes  c a
    \change Staff = "lower" \voiceThree
    d,
    \change Staff = "upper" \voiceTwo
    c'
  | bes4 bes~  bes16 des c bes  as! g f g
  | as4 as~  as16 c bes as  g f es f
  | g4 g16\rest bes g es
    \showStaffSwitch \change Staff = "lower" \voiceThree
    as,8
    \change Staff = "upper" \voiceTwo
    r g'16\rest c a f
  %25
  | \change Staff = "lower" \voiceThree
    bes,8
    \change Staff = "upper" \voiceTwo
    r r16 d' b g
    \change Staff = "lower" \voiceThree
    c,8
    \change Staff = "upper" \voiceTwo
    r r4
  | r8 f'[ es as,]  bes as16 g  as d bes f
  | \change Staff = "lower" \voiceThree
    d8 es4 d8  es
    \change Staff = "upper" \voiceTwo
    g\rest g16\rest bes g es
  | as,8 g'\rest g16\rest c a f  bes,8 d\rest d16\rest f d bes
  | \change Staff = "lower" \voiceThree
    es,8 des' c bes  as16 g as bes  c4~
  %30
  | c16 bes c d  es c f, es'
    \change Staff = "upper" \voiceTwo
    d8 g\rest f4\rest
  | r16 bes es g  des bes des g  c,8 f,\rest d4\rest
  | r16 as' d! f  c as c f  bes,8 f\rest d4\rest
  | r8 bes' as4~ as g8 es~
  | \highlightSubject { es16 d c d  bes es d es  ges8 f c8\rest d16 bes
  %35
  | as'8 g!
    \showStaffSwitch \change Staff = "lower" \voiceThree
    f4  es } g8\rest
    \change Staff = "upper" \voiceTwo
    f
  | \change Staff = "lower" \voiceThree
    bes,4.
    \change Staff = "upper" \voiceTwo
    f'8~  f16 d es bes~  bes c d as~
  | as16 des bes g~  g as f8  g2\fermata

}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s1*36
  | \change Staff = "upper" \voiceOne
    \mergeDifferentlyDottedOn
    s16 des8. c8. ces16 bes2\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  | R1*2
  | s1*3
  %6
  | \clef bass
    \highlightSubject { bes'16 g f g  es as g as  c8 bes r a16 f
  | es'8 d c4\trill  \unHighlightSubject bes16 } f' d bes  as! f' d as
  | g8 es' r es,  as16 es' c as  g es' c g
  | f8 d' r d,  g16 d' bes g  f des' bes f
  %10
  | e16 c' g e  f c' as f  d! bes' f d  es bes' g es
  | bes8 as' g f  es16 c d es  f4~
  | f16 es f g  as f bes, as'  g8 bes g es
  | as8 r b,4\rest b8\rest as'[ f d]
  | g8 c,\rest a4\rest a8\rest g' e[ c]
  %15
  | \stemDown f8 es! d[ c]  b g c[ bes]
  | a8 a' b[ g]  c g as[ es]
  | f8 es16 f g8 g,  c8 a\rest g4\rest
  | \override MultiMeasureRest.staff-position = #-4
    R1*2
  %20
  | r2 \highlightSubject { g'16 es d es  c f es f
  | as8 g r fis16 d  c'8 bes! a4\trill
  | \stemNeutral \unHighlightSubject g16 } bes a bes  g a f! g  e c' as f  c f c as
  | f16 as' g as  f g es! f  d! bes' g es  bes es bes g
  | es8 es'[ f g]  as f g a
  %25
  | bes8 g a b  c c, d es~
  | \highlightSubject { es16 d c d  bes es d es  g8 f r d16 bes
  | as'8 g f4\trill  \stemDown es8 } es, f g
  | \stemNeutral as8 f g a  bes bes c d
  | \stemDown\tieDown es2~ es4~ es16 d! es f
  %30
  | g8. f16 es8 f  bes,16 f' d bes  as! f' d as
  | \stemNeutral g8 g' r es,  as16 es' c as  g es' c g
  | f8 f' r d,  g16 d' bes g  f d' bes f
  | e16 c' g e  f c' as f  d bes' f d  es bes' g es
  | bes'8 f' d bes  a'8 as  r16 as f d
  %35
  | bes8 es bes' b  c4~ c16 c as f
  | \stemDown d8 bes r16 es c as  bes2
  | es,1_\fermata
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
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 852"
    title = \markup { "Fuga VII " \char ##x007E " à 3." }
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
    \tempo 4 = 72
  }
}
