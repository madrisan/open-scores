Global = {
  \key f \minor
  \time 4/4
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | f'16 as c f  g, f' e g  as, c f e!  f4
  | des4~ des16 16 c bes  as8. bes16 bes8.\prall as32 bes
  | c4 r16 des g, bes  e,!8. f16 f8.\prall e32 f
  | g16 c bes des~  des des c bes  a8. bes16 bes8.\prall a32 bes
  %5
  | c2~ c16 c bes des  g,8 as!\prall
  | bes2~ bes16 as c8~  c16 bes des8~
  | des16 c es8~  es16 des f8~  f16 es des c  bes g as des
  | bes4~\prall bes16 es, f g  as g as f' es8. des16
    \stemNeutral\tieNeutral
  | c16 as c e  f g e f  g2~
  %10
  | g16 c, f as  d, f b, c  b8.\prall c16  c8.\prall b32 c
  | \stemUp\tieUp
    d16 g f as~  as as g f  r16 c'8 b16  c4
  | es,4~ es16 c d8  c2
  | f,16 a c es~  es ges c, es  des4. c8~
  | c16 bes g e  c e f b!  c4*1/4 f,16 e! g bes des! c bes
  %15
  | a16 f a c  f8. es!16  des4~ des16 c8 bes16~
  | bes16 des c8  as8. g16  f16 as c f~  f f e g
  | aes, c f e f4 des~ des16 des c bes
  | aes4~ aes16 aes g f e2
  | \stemNeutral
    b'16\rest c bes des e, des' c bes aes g' f aes b, aes' g f
  %20
  | e f g e bes' des, c bes aes bes c f, d'! aes g f
  | e4 f2 c16\rest bes c e!
  | <a, c f>1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \mergeDifferentlyDottedOn
  %1
  | f4 g aes f'16 c bes aes
  | des aes g bes e,4 f8 e\rest s4
  | c'16 aes e f des4 c8 b\rest s4
  | g'4 e ees des
  %5
  | r16 f ees ges~ ges ges f ees des2~
  | des16 c des f~ f f ees des c4 des
  | ees f g8 r s4
  | s2. r16 aes g8
  | s1*2
  %11
  | d'4 b ees8 f g,16\rest g' aes f
  | ees b c fis, g8. f16~ f f e g c,4
  | f a! r8 bes e,4
  | f8 r r f r16 s e8~ e4
  %15
  | s f'16 bes, a!8 r16 aes g bes e,8 f
  | e8. f16~ f f e8 f4 g
  | aes f'16 c bes aes des aes g bes e,4
  | f16 ees d f b,4 r16 c bes des g, des' c bes
  | \change Staff = "lower" \voiceThree
    \override NoteColumn.force-hshift = #-0.3
    aes4 bes c aes
  %20
  | bes g c b
    \revert NoteColumn.force-hshift
    \change Staff = "upper" \voiceTwo
  | r16 c
    \change Staff = "lower" \voiceThree
    g bes aes4
    \change Staff = "upper" \voiceTwo
    \stemUp a'16\rest d, b c \stemDown \autoBeamOff s16 bes8.*1/3 c8 \autoBeamOn
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  %1
  | aes4 bes c aes
  | bes g f16 aes c f g, f' e g
  | aes,8 s4. c,16 e g c des, c' bes des
  | e,8 g s4 f,16 a c f ges, f' ees ges
  %5
  | a,8 c a4 bes~ bes16 bes c des
  | g,8[ bes] g' r aes,16 c ees aes bes, aes' g bes
  | c, ees aes c des, c' bes des ees, g bes ees f, ees' des f
  | g, f' ees des c2 bes4\prall
  | aes~ aes16 r r8 e16 g bes des c, f e! g
  %10
  | aes2 g16 b d g aes, g' f aes
  | b,8 d g4 c,2~
  | c4. b8 c g~ g16 f e g
  | r8 f4 f8 bes,16 des f bes~ bes bes aes c
  | f,8 g aes4 g2
  %15
  | f8 s4. bes4 g
  | r16 g aes b c2 bes4
  | c aes bes g
  | aes f g e
  | f4 g aes f
  %20
  | g e f2
  | g4 s
    \change Staff = "upper" \voiceThree \stemDown
    g8
    \change Staff = "lower" \voiceFour \stemUp
    f g4
  | f1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | f1~
  | f2 f4 g
  | aes bes c, des
  | e c'8 c, f,4 ges
  %5
  | a a8 f s2
  | s4 ees'8 ees, aes4 bes
  | c des ees f
  | g aes8 g f des ees4
  | aes,~ aes16 aes' g f e4 c
  %10
  | f4~ f16 f ees des g4 aes
  | b g' c,8 aes ees f
  | g2 c,
  | a4 f bes c
  | d8 e f4 c~ c8. des16
  %15
  | ees8 ees' des c bes16 f des bes~ bes c des bes
  | c4. c8 des2
  | c1~
  | c~
  | c~
  %20
  | c~
  | c4 r16 f b, d c,2
  | f1\fermata
    \fine
}

centerDynamics = {
 %| s4\pp s2.
}

forceBreaks = {
  % page 1
 %\repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
 %[...]
 %\repeat unfold 2 { s1\noBreak } s1\pageBreak
 % page 2
  %[...]
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
    \context Dynamics = "dynamics" \centerDynamics
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
    opus = ##f % "BWV 857"
    title = \markup { "Praeludium XII" }
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
