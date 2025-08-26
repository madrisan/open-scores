Global = {
  \key b \major
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'IntermezzoBmajor
  \tempo 4 = 108
  %1
  | dis4 e2 dis4
  | \stemNeutral\tieNeutral
    <f, d'>2 g'
  | fis4 e'2 dis4~
  | dis dis, gis2
  %5
  | cis4 b2 ais4
  | b1
    \clef "bass"
  | \once\tieDown <f, ces'>2~ <f bes>
  | <e ais>
    \clef "treble"
    <e' e'>
  | ais ais,
  %10
  | r4 b cis g'
  | <d fis> dis e2
    \clef "bass"
  | g,2 a,
    \clef "treble"
  | \stemUp d''4\rest dis e dis
  | \stemNeutral d g,2 g'4
  %15
  | r4 fis e' dis~
  | dis dis, gis2
    \clef "bass"
  | r4 cis,, b a
  | <fis b>1
    \clef "treble"
  | ces''4 f, bes2
  %20
  | e,,4 ais e' e'
  | ais,2. ais'4
  | r b cis, g''
  | \stemUp <d fis> dis e2
  | \stemNeutral g,2 a,
    \clef "bass"
  %25
  | <fis, dis'>2 <f d'>
  | <b d>1~
  | q
    \clef "treble"
    \key c \major
  | r4 g'8 g' r4 a,8 g'
  | r4 b,8 b' r4 a,8 a'
  %30
  | r4 d,8 d' r4 cis,8 cis'
  | b,8 b' r4 a,8 a' r4
  | g,8 g' r4 f,8 f' r4
  | e,8 e' r4 d,8 d' r4
  | r4 b,8 g' r4 a,8 g'
  %35
  | r4 b,8 b' r4 a,8 a'
    \clef "bass"
  | d,,8 d' r4 cis,8 cis' r4
  | b8 b, r4 a'8 a, r4
  | R1
  | <g' b e>2\arpeggio d'~
  %40
  | d4 cis2 b4~
  | b2 eis,
  | <e ais>1\fermata
    \key b \major
  | dis'2 e4 <fis, dis'>
  | <f d'>2 g'
    \clef "treble"
  %45
  | r4 fis <b e> dis~
  | dis dis, gis'2
  | <cis, fis cis'>4 <b b'>2 <ais ais'>4
  | <b b'>1
  | r4 ces'8 f, r4 bes,8 f
  %50
  | r4 e,8 ais~ ais r <e' e'>4
  | <ais ais'>2 <ais' ais'>
  | r4 <b, b'> cis g'
  | <fis, d' fis>2 dis'
    \clef "bass"
    \break
  | r2 <e,, g e'>~
  %55
  | q ais
    \clef "treble"
  | r4 dis8 fis r4 <e' e'>~
  | q <dis dis'> <d f d'>2~
  | q1
  | b,2~ <b eis>
  %60
  | <b fis'>1~
  | q
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemNeutral\tieNeutral
  \mergeDifferentlyDottedOn
  %1
  | fis1
  | s1*9
  %11
  | fis1
  | s
  | fis'
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <b, fis'>1
  | <b g'>
  | <b b'>2 fis''
  | <eis b'>1
  %5
  | <e fis cis'>
  | <e fis b>2 <dis, fis b>
  | <d bes'>1
  | <cis b'>
  | r4 dis' e fis
  %10
  | g2~ <e g>
  | r <fis,, fis'>~
  | q1
  | b4 fis'2 b4
  | <b, g'>2 b'
  %15
  | r4 <dis b'> fis'2
    \clef "treble"
  | <eis gis>2. b'4
    \clef "bass"
  | <cis,,, fis>2 <e cis'>~
  | e4 fis2 <dis, dis'>4
  | d'' <f bes>2 <d, bes'>4
  %20
  | <cis b'>2 r4 <cis' b'>4
  | r4 dis e fis
  | <e g>2 <e' g>
  | r2 r4 fis~
  | fis <fis,, fis'>2 fis,4
  %25
  | <b ais'>2 <aes bes'>
  | <g g'>1~
  | q
    \clef "treble"
    \key c \major
  | b''8 cis r4 b8 dis r4
  | b8 g' r4 ees8 g r4
  %30
  | d8 aes' r4 f8 a r4
  | r4 f8 a r4 cis,8 f
    \clef "bass"
  | r4 f,8 a r4 b,8 f'
  | r4 g,,8 d' r4 a'8 b
  | b,8 cis r4 b'8 dis r4
  %35
  | g8 b, r4 g8 ees r4
  | r4 d8 aes' r4 f8 a
  | r4 f8 b, r4 cis8 f,
  | gis' gis,4. fis'8 fis,4.
  | <b cis>1\arpeggio
  %40
  | <g g'>
  | <g cis>
  | r2 <fis fis'>\fermata
    \key b \major
  | r4 <b fis'>2.~
  | <b g'>4 g2.
  %45
  | dis'4 b' fis'2
  | <eis b'>4~ <eis gis b>2.
  | <e fis cis'>1\arpeggio
  | <e, fis b>2~ <dis fis b>
  | d8 bes' r4 d8 bes' r4
  %50
  | cis,,8 b'~ b2.
  | r4 dis e fis
  | g2~ <e g>
  | fis1
  | r2 <cis, b'>
  %55
  | <fis, fis'>1
  | b'8 fis' r4 b8~ <b fis'>~ q4~
  | q2 r8 b g'4~
  | g2 <b,, g'>~
  | q1
  %60
  | r4 <e, e'>2.~
  | q2 <dis dis'>\fermata
    \fine
}

centerDynamics = {
  %1
  | s4\p s2.
  | s1
  | s16 s8.\mp s2.
  | s1
  %5
  | s16 s8.\mf s2.
  | s1*2
  | s2 s\p
  | s1
  %10
  | s4 s\mf s2
  | s4\> s2.
  | s1
  | s1\!\p
  | s1
  %15
  | s4 s\mp s2
  | s1
  | s16 s8.\mf s2.
  | s1*2
  %20
  | s1\p
  | s1
  | s4 s\mf s2
  | s1\>
  | s
  %25
  | s\!\p
  | s1*2
  | s\p
  | s1*9
  %39
  | s1\mf
  | s2 s4 s\>
  | s1*2
  | s1\!\p
  | s
  %45
  | s4 s\mp s2
  | s1
  | s1\mf
  | s1
  | s4\p s2.
  %50
  | s2. s4\mf
  | s1*3
  | s2 s\mp
  | s1
  %56
  | s4 s\p s2
  | s1*3
  | s16 s8.\pp s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
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
      \new Dynamics = "dynamics" {
        % Will use self-alignment-Y to place element
        \override TextScript.Y-offset = #self-alignment-interface::y-aligned-on-self
        % Use negative value of direction,
        % i.e. CENTER -> align to center, UP -> align to bottom, DOWN -> align to top
        \override TextScript.self-alignment-Y = #(lambda (grob) (- (ly:grob-property grob 'direction)))
        % use CENTER as default direction instead of DOWN
        \override TextScript.direction = #CENTER
        \centerDynamics
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
    \new Devnull \forceBreaks
  >>
  \header {
    composer = "Andrea Turchetto"
    opus = "2024"
    title = \markup {
      "Intermezzo in B major"
    }
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
    \tempo 4 = 108
  }
}
