Global = {
  \key g \major
  \time 2/4
  \include "../global.ly"
}

staffLower = \change Staff = "lower"
staffUpper = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \label #'VariatioII
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\slurNeutral\tieUp
  \repeat volta 2 {
  %1
  | s2*2
  | g'4 c^~\mordent
  | c8 b16 a b a g fis
  %5
  | g4^~ g16 f e d
  | e4^~ e16 d c b
  | a4^~ a16 c b a
  | b g' fis a g fis e d
  | c'8^( b) b4\rest
  %10
  | \override MultiMeasureRest.staff-position = #5 R2
  | b,16^( dis e g) b4^~
  | b16 a g b a g fis e
  | d4^~ d16 c b a
  | b4^~ b16 a g fis
  %15
  | e4^~ e16 g fis e
  }
  \alternative {
    { d8 d'\rest d4\rest }
    { d,4 d'\rest }
  }
  \break
  \pageBreak
  \repeat volta 2 {
  | a4 a'4~
  | a16 g fis a g fis e dis
  | e4 a8\rest fis
  %20
  | dis8 b e4\rest
  | e4~ e16 d c b
  | c4^~ c16 b a g
  | fis4^~ fis16 a g fis
  | g4 g'\rest
  %25
  | e,4 a~
  | a16 g fis a g fis e d
  | c4 c'~
  | c16 b a c b a g fis
  | b8[ g] b[ d]
  %30
  | g4 c^~
  | c16 b a c b a g fis
  }
  \alternative {
    { g4 g\rest }
    { g4 g\rest }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | \stemDown b4 e^~^\mordent
  | e8 d16 c d c b a
  | g4 b8\rest a'
  | fis d r4
  %5
  | r16 d[ c e] d8 b~
  | b16 a g b a8 g~
  | g16 fis e g fis4
  | g8 e\rest e4\rest
  | \staffLower\stemUp
   \once\override Beam.positions = #'(8.3 . 8.5)
    g16^( \staffUpper\stemDown a b d) e4~
  %10
  | e16 d cis e d cis b a
  | g4 b8\rest g'
  | e cis a4\rest
  | e16\rest a[ g b] a8 fis~
  | fis16 e d fis e8 d~
  %15
  | d16 cis b d cis4
  }
  \alternative {
    { d8 c\rest c4\rest }
    { d4 c\rest }
  }
  \repeat volta 2 {
  | c16\rest fis'[ e g] fis e d cis
  | d4 r8 b
  %20
  | g e a4~
  | a16 g fis a g fis e dis
  | e b' a c b8 g~
  | g16 fis e g fis8 e~
  | e16 dis cis e dis4
  %25
  | e b'~
  | b16 a g b a g fis e
  | d4
    \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0)) Tie
    g~
  | g16 fis e g fis e d c
  | d4 c\rest
  %30
  | d'4
    \shape #'((0 . 0) (0 . -0.5) (0 . -0.8) (0 . 0)) Tie
    f~
  | f16 e d f e g fis g
  | a8 d,~ d16 c b a
  }
  \alternative {
    { b4 g4\rest }
    { b4 g4\rest }
  }
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g8[ fis g e]
  | fis[ e fis d]
  | e[ d e c]
  | d d, d'16 c b a
  %5
  | b8[ a b g]
  | c[ b c a]
  | d[ c d d,]
  | g[ g' b d]
  | g[ fis g e]
  %10
  | fis[ e fis d]
  | e[ d e b]
  | cis[ e16 d] cis b a g
  | fis8[ e fis d]
  | g[ fis g e]
  %15
  | a[ g a a,]
  }
  \alternative {
    { d d'16 c d c b a }
    { d,8 a d,4 }
  }
  \repeat volta 2 {
  | d''8[ cis d a]
  | b[ a b g]
  | c16 c, b d c b a c
  %20
  | b b' a c b a g fis
  | g8[ fis g e]
  | a[ g a fis]
  | b[ ais b b,]
  | e,16 e' dis fis e d c b
  %25
  | c8[ b c a']
  | b,[ a b g']
  | a,[ g a g']
  | fis16 d c e d c b a
  | g g' f a g f e d
  %30
  | c c' b d c b a g
  | fis g fis a b,8 d
  }
  \alternative {
    { g,8[ g'16 fis] g a b c }
    { g8 d g,4 }
  }
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
      \Sopran
      \Alto
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 2 a 1 Clav." }
    subtitle = ##f
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=80 }
}
