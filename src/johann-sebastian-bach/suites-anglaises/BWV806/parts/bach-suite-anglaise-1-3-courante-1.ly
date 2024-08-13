Global = {
  \key a \major
  \time 3/2
  \include "../global.ly"
}

\include "../macros-slidenotes.ly"

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 a'8
  %1
  | a4.\arpeggio \stemNeutral gis8 fis e d cis \once\stemUp \grace cis8 d4.\mordent e8
  | cis4. b8 a gis fis d' \slurDown \once\stemUp \appoggiatura cis b4.\prall a8
  | gis4. fis8 e fis gis a \once\stemUp \appoggiatura a b4.\mordent cis8
  | \stemUp d4. e8 cis4. b8 b4.\prallprall a8
  %5
  | a2\arpeggio~ a8 cis b a \once\stemUp \appoggiatura a gis4.\prall a8
  | \stemNeutral b( a gis fis) fis'4.\mordent dis8 \once\stemUp \grace dis e4.\mordent fis8
  | \once\stemUp \grace e dis4.\mordent cis8 b cis dis e \once\stemUp \appoggiatura e fis4.\mordent gis8
  | \stemUp a4. b8 gis4.\prall fis8 fis4.\mordent e8
  | e2~ e g4\rest e8 dis!
  %10
  | e2.~ e2~\arpeggio e8
  }
  \break
  \repeat volta 2 {
  \partial 8 b8
  | b4.\arpeggio \stemNeutral a8 gis a b cis \once\stemUp \appoggiatura cis8 d4.\mordent e8
  | cis4.\prall b8 a \slurNeutral a'( gis fis) b( gis) a( fis)
  | \stemUp \once\slurUp \appoggiatura fis4 eis2.\prall fis4\arpeggio \grace e8 d4.\prall e!8
  | cis4. d8 b4.\prall a8 gis4.\mordent fis8
  %15
  | fis2~\arpeggio \stemNeutral fis8 fis' e d cis4.\prall d8
  | e( d cis b) b'4.\mordent gis8 \once\stemUp \grace gis8 a4.\mordent b8
  | \stemUp \grace a8 gis4. fis8 e( d cis b) \stemNeutral a( gis) a( fis)
  \break
  | d'4.\mordent e8 \stemUp cis4.\prall b8 b4.\prallprall a8
  | a2~ a d4\rest a8 gis
  %20
  | a2. a2~\arpeggio a8
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | <cis e>4.\arpeggio s8 s1
  | \change Staff = "lower" \stemUp\tieUp \once\override Voice.Rest.X-offset = #1.2 a4\rest e s1
  | f4\rest b,~ b a b8\rest gis b\rest a
  | \change Staff = "upper" \stemDown\tieDown g'\rest b gis4 a2 gis
  %5
  | << { \shiftOn e2\arpeggio } \\ { cis2\arpeggio } >> s1
  | s1.
  | \change Staff = "lower" \stemUp\tieUp c'4\rest fis,~ fis e e8\rest dis f\rest e
  | \change Staff = "upper" \stemDown\tieDown r fis' dis4 e2 dis
  | g,4\rest g8\rest dis' cis b a gis
    << fis2 \\ { \once\override Voice.Rest.X-offset = #-0.4 b8\rest \once\stemUp a4. } >>
  %10
  | g4\rest g8\rest b[ cis a]
    << {
      \stemDown gis2_~\arpeggio gis8
    } \\ {
      \stemUp \shiftOn b2^~\arpeggio b8
    } >>
  \partial 8 s8
  | << { \stemDown e,4.\arpeggio } \\ { \stemUp \shiftOn gis\arpeggio } >> s8 s1
  | s1.
  | \stemUp\tieUp a8\rest cis~ cis2 \stemDown cis4\arpeggio s2
  | c,8\rest cis fis4 eis fis eis2
  %15
  | \stemUp \shiftOn cis\arpeggio s1
  | s1.
  | \stemDown g'4\rest b s1
  | s2 f8\rest b a4 gis2
  | c,4\rest d8\rest gis fis e d cis
    << { f8\rest \once\stemUp d4. } \\ { b2 } >>
  %20
  | b4\rest c8\rest e[ fis d]
    << { \stemUp \shiftOn e2~\arpeggio e8 } \\ { cis2~\arpeggio cis8 } >>
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | a2.gis4 a b
  | e8\rest cis4. s2 a8\rest fis4.
  | b8\rest gis4._~ gis4 e d e
  | r8 b e2 fis4 e2
  %5
  | e8\rest e fis gis s2 c8\rest gis4.
  | s1 b4 cis
  | f8\rest dis4._~ dis4 b a << { \once\stemUp \shiftOn gis } \\ { \once\stemUp \shiftOff b } >>
  | a8\rest fis b2 cis4 b2
  | s1 b2
  %10
  | e, b4 e2~ e8
  \partial 8 s8
  | e,8 b' cis dis e fis gis4 a b
  | e8\rest cis e2 cis4 fis d
  | \change Staff = "upper" \stemDown\tieDown b4\rest gis'2 \shiftOff a4\arpeggio
    \change Staff = "lower" \stemUp\tieUp a, b
  | s1.
  %15
  | \change Staff = "upper" \stemDown\tieDown
    a2\arpeggio
    \change Staff = "lower" \stemUp\tieUp
    c8\rest a d\rest b e\rest cis4.
  | s1 e4 fis
  | b8\rest gis4. s1
  | s e,2
  | s1 e2
  %20
  | a, e4 a2~ a8
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 r8
  %1
  | a a, b cis d4 e
    << { fis gis }
    \new Voice = "slides" { \slideNotes gis a }
    >>
  | a4. gis8 fis e d cis d4 b
  | e2 d4 cis b a
  | gis4. e8 a4 d e e,
  %5
  | a2 a'4 gis8 fis eis4 cis
  | fis4. gis8 a cis b a
    << { gis4 ais }
    \new Voice = "slides" { \slideNotes a b }
    >>
  | b2 a4 gis fis e
  | dis4. b8 e4 a b gis
  | cis8 d!^\markup { \teeny \parenthesize \sharp }
    cis b a gis fis e b'4 b,
  %10
  | e,4\rest e2~ e2~ e8
  }
  \repeat volta 2 {
  \partial 8 r8
  | e2 e'
    << { fis4 gis }
    \new Voice = "slides" { \slideNotes gis a }
    >>
  | a4. b8 cis4 a d b
  | cis4. b8[ a gis] fis eis
    << { fis4 gis }
    \new Voice = "slides" { \slideNotes gis a }
    >>
   % << { \stemDown fis4 gis } \\ { \stemUp a b } >>
  | \stemNeutral a4. b8 gis4 fis cis' cis,
  %15
  | << { \stemDown fis,2 } \\ { \stemUp d'8\rest cis d e! } >>
    \stemDown fis4 gis ais fis
  | b4. cis8 d fis e d
    << { cis4 dis }
    \new Voice = "slides" { \slideNotes d e }
    >>
  | e4. d8 cis b a gis fis e d cis
  | \stemNeutral b a b gis a4 \stemDown d e cis
  | fis8 gis fis e d cis b a e'4 e,
  %20
  | a,4\rest a2~ a2~ a8
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
    opus = ##f % "BWV 806"
    title = \markup { "Courante I" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      %\override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
