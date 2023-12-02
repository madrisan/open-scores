Global = {
  \key g \major
  \time 3/8
  \include "../global.ly"
}

bottom = \change Staff = "lower"
top = \change Staff = "upper"
grayTextColor = #(x11-color "dimgray")

extendLaissezVibrer = #(define-music-function (parser location further) (number?)
#{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) -0.8)
#})

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \override VoiceFollower.color = \grayTextColor
  %1
  | s4.
  \repeat volta 2 {
  | a'4.~
  | a8[ g16 fis e d]
  | c4.~
  %5
  | c8[ b16 a g fis]
  | e4.~
  | e8[ d16 c b a]
  | b4.~
  | b16[ a c b a g]
  %10
  | a8 a'4~
  | a8[ g16 fis e d]
  | cis16[ e a b c!8~]
  | c8[ b16 a g fis]
  | e4.~
  %15
  | e16[ d cis e d cis]
  }
  \alternative {
    {
  |   \once\override Beam.positions = #'(1.5 . 0)
      d16[ c! b a g \bottom fis] \top
  |   \extendLaissezVibrer #9 g''4._\laissezVibrer
    }
    {
  |   d,
  |   \stemDown a''
    }
  }
  \break
  \repeat volta 2 {
  %20
  | \stemUp b4.~
  | b8[ a16 g fis e]
  | dis8 d4~
  | d8[ c16 b a g]
  | fis4.~
  %25
  | fis16[ e dis fis e dis]
  | e[ d c b a gis]
  | \once\override Stem.length = #9 a8 r r
  | \once\shape #'(((0.8 . 0) (0 . 0.1) (0 . 0.5) (0 . 0))) Tie
    d4.~
  | d16[ b c a c e]
  %30
  | fis4.~
  | fis16[ dis e c e g]
  | a4.~
  | a16[ g fis a g fis]
  }
  \alternative {
    {
  |   g16[fis e d c b]
  |   \showStaffSwitch \bottom\stemUp a8 e'\rest e\rest \top\stemDown \hideStaffSwitch
    }
    { \stemDown b4. }
  }
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  %1
  | g'4.~
  \repeat volta 2 {
  | g8[ fis16 e d c]
  | b4.~
  | b8[ a16 g fis e]
  %5
  | d4.~
  | d8[ \bottom\stemUp c16 b a g]
  | a4.^~
  | a16[ g b a g fis]
  | g8 \top\stemDown g'4~
  %10
  | g8[ fis16 e d c!]
  | b16[ d g a bes8~]
  | bes8[ a16 g fis e]
  | d4.~
  | d16[ \bottom\stemUp cis b d cis b]
  %15
  | cis16[ b a g fis e]
  }
  \alternative {
    {
  |   fis8 a\rest a\rest
  |   g a\rest a\rest
    }
    {
  |   fis4.
  |   \top \once\omit Stem \hideNotes a''~ \unHideNotes
    }
  }
  \repeat volta 2 {
  %20
  | \stemDown a8[ g16 fis e d]
  | cis8 c4~
  | c8[ b16 a gis fis]
  | e4.~
  | e16[ dis cis e dis cis]
  %25
  | dis[ cis b a g fis]
  | g8 e\rest d\rest
  | \once\override NoteColumn.force-hshift = #1.4 c'4.~
  | c16[ a b g b d]
  | \once\shape #'(((0 . -0.5) (0 . -1.5) (0 . -1.5) (0 . 0))) Tie
    e4.~
  %30
  | e16[ cis d b d fis]
  | \once\shape #'(((0 . -0.5) (0 . -2.4) (0 . -1.8) (0 . 0))) Tie
    g4.~
  | g16[ fis e g fis e]
  | fis[ e d c b a]
  }
  \alternative {
    {
  |   g8 g\rest f\rest
  |   \extendLaissezVibrer #11 a''4.\laissezVibrer
    }
    { \stemUp g, }
  }
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  | g16[ fis g a b g]
  \repeat volta 2 {
  | d'[ c d e fis d]
  | g[ fis e fis g e]
  | a[ g fis g a fis]
  %5
  | b[ a g a b g]
  | \stemDown c[ b a g fis e]
  | fis[ e fis d e fis]
  | g[ e d c b a]
  | g[ fis' e d c b]
  %10
  | cis[ a d e fis d]
  | g[ fis e fis g e]
  | a[ g fis g a fis]
  | b[ a g a b a]
  | gis8[ gis,] g8\rest
  %15
  | a[ a, ] e'\rest
  }
  \alternative {
    {
  |   d8[ d'16 c b a]
  |   g[fis g a b g]
    }
    {
  |   d8[ fis a]
  |   d16 cis d e fis d
    }
  }
  \repeat volta 2 {
  %20
  | \stemNeutral g16[ fis e fis g e]
  | a[ g fis g a fis]
  | b[ a gis a b gis]
  | c[ b a b c b ]
  | ais8[ ais, ] r
  %25
  | b[ b, ] r
  | e[ e'16 d c b]
  | a[ c e g fis e]
  | fis8[ g,] r
  | g'[ a,] r
  %30
  | a'[ b,] r
  | b'[ c,] r
  | cis[ cis, cis' ]
  | d[ d, d']
  }
  \alternative {
    {
  |   g,8[ g'16 fis e g]
  |   fis[ e d e fis d]
    }
    { g,8[ d' g] }
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
      \Tenor
      \Bass
    >>
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = ##f % "BWV 988"
    title = \markup { \smallCaps "Variatio 6 a 1 Clav." }
    subtitle = \markup { "Canone alla Seconda" }
    subsubtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % make the piano staves closer together
      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (padding . 2))
    }
  }
  \midi { \tempo 4=88 }
}
