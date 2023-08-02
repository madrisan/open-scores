Global = {
  \key g \major
  \time 12/8
  \include "../global.ly"
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | b4.~ b16[ c d c d e ] a,4.~ a16[ b c b c d]
  | \stemUp\tieUp g,4. g'~ g8[ a16 g fis g ] a8 a\rest a\rest
  | a8\rest d,16 [ c b a ]
    \override Stem.details.beamed-lengths = #'(3.6 3.6 3.6) b8[ c16 b a b ]
    \revert Stem.details.beamed-lengths
    g8 e' d c fis a
  | b,4 g'8 g4 fis8 b\rest b\rest b8 a4 d,8 ~
  %5
  | d16 [ e d c b8 ] e b d cis d e~ e cis a
  | a'\rest a\rest d, g,4._~ g8 [ fis g ] e a16 g fis e
  | d8 [ e16 fis g a ] b8 [ d cis ] d4. ~ d8 cis d\rest
  | d4.~ d16 [ a g fis g e] fis2.
  }
  \break
  \repeat volta 2 {
  | f'4.\rest a~ a16[ b c a b c] b[ a g fis e dis]
  %10
  | e8[ fis g~] g[ fis e]
    \once\shape #'(((0.6 . -0.2) (0 . -0.5) (0 . -0.5) (-0.5 . -0.2))) Tie
    dis4.~ dis4 b'8\rest
  | b4.\rest
    \once\shape #'(((0.5 . -0.5) (0 . -0.8) (0 . -0.8) (-2 . -0.5))) Tie
    a,~ a8 [b16 a g fis] g16[a b g a  b]
  | e,8[ fis16 g a b] c8[ e, dis] e4. e'\rest
  | e4.~ e16[ fis g e fis g] c,16[ d e c d e] a,16[ b c a b c]
  | \once \override Beam.positions = #'(4.2 . 4.2) b16[ c d b c d]
    \once\shape #'(((0 . 0) (0 . 0) (0 . 0) (-0.6 . -0.5))) Tie
    g,4.~ g8 g'4~ g8[fis a~]
  %15
  | a8 g f e16[ d c e d c ] b4 b'8 a4 c8
  | b4 d8 g,8[a fis] g2.
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | s8*12
  | \once\shape #'(((-0.8 . -1.8) (0 . -1.8) (0 . -1.8) (0 . -1))) Tie
    \once\override NoteColumn.force-hshift = #-0.3 b4.~
    b16[ c d c d e] a,4.~ a16[ b c b c d]
  | \tieUp
    g,4.
    \once\shape #'(((-0.3 . 0.8) (0 . 1) (0 . 1) (0.2 . 0.8))) Tie
    g'~ g8[ a16 g fis g ]
    \once\override Stem.length = #12 a8
    r r
  | e,8\rest d'16[ c b a] b8[ c16 b a b] g8[ e' d] c8[ fis a]
  %5
  | b,4 \once\override Stem.length = #12 g'8 g4 \once\override Stem.length = #8.5 fis8
    e,8\rest e\rest \once\override Stem.length = #11 b'' a4 \once\override Stem.length = #10 d,8~
  | d16[ e d c! b8]
    \override Stem.details.beamed-lengths = #'(4.3 6 6)
    \once\override NoteColumn.force-hshift = #-0.3 e8[ b d]
    cis8[ d e~] e8[ cis a]
    \revert Stem.details.beamed-lengths
  | \tieDown
    g,\rest a\rest \once\override Stem.length = #10 d'8 g,4.~ g8[ fis g] e8[ a16 g fis e]
  | d8[ e16 fis g a] b8[ d cis] \once\override NoteColumn.force-hshift = #-0.2 d2.
  }
  \repeat volta 2 {
  | R1*12/8
  %10
  | g,4.\rest
    \once\shape #'(((0 . -0.5) (0 . -1.5) (0 . -1.2) (-1.4 . -0.2))) Tie
    a'4.~ a16[ b c a b c] b[ a g fis e dis]
  | e8[ fis g~] g[ fis e]
    \once\shape #'(((-0.2 . 1.8) (0 . 2) (0 . 2) (0 . 0.8))) Tie
    dis4.^~ dis4 d,8\rest
  | g,4.\rest
    \once\shape #'(((0 . 0) (0 . -2.2) (0 . -2.2) (0 . 0))) Tie
    a'4.~ a16[ b c a g fis] g16[ a b g a b]
  | e,8[ fis16 g a b] c8[ e, dis] e4. c\rest
  | \once\shape #'(((-0.5 . 2.5) (0 . 3) (0 . 3) (0.5 . 2.5))) Tie
    \once\override NoteColumn.force-hshift = #-0.2 e'4.^~ e16[ fis g e fis g]
    c,[ d e c d e] a,[ b c a b c]
  %15
  | b[ c d b c d] g,4.~ g8 g'4~ g8 fis a~
  | a8[g f] e16[ d c e d c] b2.
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \repeat volta 2 {
  %1
  | g8[ b d] g[ b e,] fis,[ a d] fis[ a d,]
  | e,[ g b] e[ b cis] d,[ fis a] d[ fis a,]
  | b16[ a b c d8~] d16[ g, a b c d] e[ d c b c e] fis,[ a g fis e d]
  | g[ fis g a b c] d[e a, b c a] b[ a g fis g8~] g16[ fis e d e fis]
  %5
  | g[ fis g a g fis] e[ fis g e fis g] a[ g a b a g ] fis[ fis' g fis e fis]
  | b,[ a b c! d b] cis[ d e d cis b] a[ e' d cis d b] cis[ a b cis d e]
  | fis[ b, cis d e fis] g[ fis e d e ais,] b[ cis d cis b a] g[ fis g b a g]
  | fis[ a g fis e d] g8[ e a ] d,16[ fis a d a fis] d4.
  }
  \repeat volta 2 {
  | d'8[ fis a ] d [ c16 b a g ] fis8[ a d, ] g8[ a b ]
  %10
  | c16[ d c b a g ] fis16[ e fis g a fis ] b8[ fis g ] a16[ c b a g fis ]
  | g16[ a g fis e d ] c16[ b a b c a ] b8[ fis' b ~ ] b[ g e ]
  | c'16[ d c b a g ] fis16[ e fis b a b ] e,8[ g b ] e8[ e, d ]
  | c8[ c' b8 ] a4. ~ a8[ c a ] fis8[ d d' ]
  | g,16[ a g f e d ] c8[ e c ] a16[ b c a b c ] d8[ d, fis' ]
  %15
  | g16[ a b g a b ] c8[ e a, ] d16[ c b d c b ] c16[ b a g fis a ]
  | g16[ fis e d c b ] c8[ a d ] g,16[ b d g d b ] g4.
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
    title = \markup { \smallCaps "Variatio 3 a 1 Clav" }
    subtitle = \markup { "Canone all'unisono" }
    subsubtitle = ##f
  }
  \layout { }
  \midi { \tempo 4=76 }
}
