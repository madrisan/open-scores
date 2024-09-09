Global = {
  \key d \minor
  \time 3/4
  \include "../global.ly"
}

\include "../macros.ly"

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | \highlightSubject { r8 d e f g e
  | f16 d cis d bes'4-! g\trill
  | \unHighlightSubject a4~ } a16 g f e  g f e d
  | e8 c'~ c16 b a b  b a gis a
  %5
  | a16 g! fis g  e'4 g,
  | f8 d'~ d16 c! bes! a  c bes a g
  | a4 g2~
  | g8 \highlightSubject { e[ f g a f]
  | bes16 g fis g  es'4-! cis\trill
  %10
  | d4 } d b\trill
  | c!4 c a\trill
  | bes2.~
  | bes8 \highlightSubject { a[ b! cis d b]
  | cis16 a gis a  f'4-! d\trill
  %15
  | \unHighlightSubject e8 } a~ a16 g fis e g fis e d
  | ees c' bes8 b16\rest a gis fis a gis fis e
  | d c bes c c bes a bes bes a gis a
  | g4~ g16 f e f f e d a'
  | a2.~
  %20
  | a4~ a16 dis e a, c b a gis
  | a4~ a16 g! f e  g f e d
  | e8 \stemNeutral\tieNeutral \highlightSubjectInv { e'[ d cis b d]
  | cis16 e f e  g,!4 } bes!~\trill
  | bes16 a g a  a g f g  g f e f
  %25
  | \stemUp\tieUp f4~ f16 e fis g  fis g a g
  | g16 a bes a  a b c b  b cis d cis
  | cis8 \highlightSubjectInv { a'[ g f e g]
  | f16 a bes a  cis,4 } e~
  | e8 a, d4 c!~
  %30
  | c8 es~ \stemNeutral es16 d c d  d c bes c
  | c16 bes a bes  d c bes c  c bes a bes
  | bes16 a g a  c bes a bes  bes a g a
  | a16 g f g  e'4 cis\trill
  | d4~ d16 c! bes! a  c bes a g
  %35
  | a8 fis[ g a bes g]
  | a16 c es8~ es16 d c bes  d c bes a
  | bes16 d f8~ f16 e! d cis  e d cis b
  | cis16 e bes'!8~ bes16 a g f  a g f e
  | g16 f e f  f e d e  e d cis d
  %40
  | \stemUp c!4~ c16 bes a bes  bes a g d'
  | d2.~
  | d4~ d16 gis a d,  f e d cis
  | d2.
  | d\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  %1
  | s1*3/4*2
  | \change Staff = "lower" \voiceThree
    \highlightSubject { b8\rest a b c d b
  | c16 a gis a
    \change Staff = "upper" \voiceTwo
    f'4-! d\trill
  %5
  | \unHighlightSubject e4~ } e16 d cis b d cis b a
  | d4 c\rest c\rest
  | c8\rest f~ f16 e d e  e d cis d
  | cis4  d8 e cis d
  | ees d g4 e
  %10
  | e16\rest a g a f4 d
  | e16\rest g f g ees4 c
  | c8\rest a' g f e g
  | cis,4 d8[ e]
    \change Staff = "lower" \voiceThree
    a,4
  | c8\rest
    \change Staff = "upper" \voiceTwo
    \highlightSubjectInv { e
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    d cis b d
  %15
  | cis16 e f e a,4 } c
  | bes16 d ees d b4 e~
  | e8 f\rest
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    b,4\rest b\rest
  | b8\rest \highlightSubject { a b cis d b
  | c16 a
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    gis a
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    f'4-! e\trill
  %20
  | \unHighlightSubject e8[ } f]
    \change Staff = "lower" \voiceThree
    b,2\trill
  | a4
    \change Staff = "upper" \voiceTwo
    a\rest a\rest
  | s2.*3
  %25
  | a8\rest d c b
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    a
    \change Staff = "upper" \voiceTwo
    c
  | b4 d2
  | \showStaffSwitch \change Staff = "lower" \voiceThree
    g,4 c\rest c\rest
  | c8\rest \highlightSubject { d e f g e
  | f16 d cis d
    \change Staff = "upper" \voiceTwo
    bes'4 g\trill
  %30
  | a }
    \change Staff = "lower" \voiceThree
    fis, a
  | c16\rest g fis g e4 g
  | c16\rest f, e f d4 f
  | c'8\rest f, g a bes g
  | a f[ g a] g4
  %35
  | c8\rest a g fis e g
  | fis bes[ a g fis a]
  | g c[ b a g b]
  | a f'[ e d cis e]
  | d d\rest
    \change Staff = "upper" \voiceTwo
    f,4\rest f\rest
  %40
  | b8\rest \highlightSubject { d e fis g e
  | f16 d
    \hideStaffSwitch \change Staff = "lower" \voiceThree
    cis d
    \showStaffSwitch \change Staff = "upper" \voiceTwo
    bes'4 } g\trill
  | a8 bes e,2\trill
  | e8\rest <a c> <g bes> <fis a> <e g> <g bes>
  | <fis a>2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*42
  | c8\rest <d, fis> <e g> <fis a> <g bes> <e g>
  | <fis a>2.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override Script.direction = #UP
  %1
  | R1*3/4_\markup \tiny \italic {
      \rounded-box {
        \concat {
          \subjectBullet " Subject "
          " "
          \subjectInvBullet " Inverted Subject"
        }
      }
    }
  | R1*3/4*4
  | \highlightSubject { r8 d e f g e
  | f16 d cis d bes'4-! g\trill
  | \unHighlightSubject a4~ } a16 g f e  g f e d
  | g8 bes~ bes16 a g a  a g f! g
  %10
  | g16 f e f  a g f g  g f e f
  | f16 e d e  g f es f  f es d es
  | es16 d cis d  bes'4-! g\trill
  | a4~ a16 g f e!  g f e d
  | e8 cis[ d e f d]
  %15
  | a'4 fis8 e d fis
  | g4 gis8 fis e gis
  | a \highlightSubject { a,[ b c d b]
  | cis16 a gis a  f'4-! d\trill
  | \unHighlightSubject e8 } f  e16 d c d  d c b c
  %20
  | c8 d e[ d] e4
  | a8 \highlightSubject { a,[ b cis d b]
  | cis16 a gis a  f'4-! d\trill }
  | a'8 \highlightSubjectInv { f[ e d cis e]
  | d16 f g f  a,4 } cis\trill
  %25
  | d2.
  | r8 \stemDown\tieDown g8 fis e d f
  | e4~ e16 d cis b  d cis b a
  | d4 r r
  | r8 \highlightSubjectInv { a' g f e g
  %30
  | fis16 a bes a  d,4 } fis
  | g,4 c e
  | f,! bes d
  | e2.
  | f8 \highlightSubject { d[ e fis g e]
  %35
  | fis16 d cis d  bes'8 a g bes
  | \unHighlightSubject a8 } g[ fis e d fis]
  | g,8 a'[ gis fis e gis]
  | a,8 d'[ cis b a cis]
  | d8 \highlightSubject { d,[ e f g e]
  %40
  | fis16 d cis d  bes'4 g\trill
  | \unHighlightSubject a8 } bes  a16 g f g  g f e f
  | f8 g a g a4
  | d,2.
  | d_\fermata
    \fine
}

forceBreaks = {
  % page 1
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\pageBreak
  % page 2
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s\break\noPageBreak
  % last bars
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
    \new Devnull \forceBreaks
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 851"
    title = \markup { "Fuga VI " \char ##x007E " à 3." }
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
    \tempo 4 = 63
  }
}
