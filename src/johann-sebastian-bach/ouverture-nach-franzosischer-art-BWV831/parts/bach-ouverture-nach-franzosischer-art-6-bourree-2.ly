Global = {
  \key b \minor
  \time 2/2
  \include "../global.ly"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4. fis8 e fis
  %1
  | \appoggiatura e8 d2~ d8 cis d g
  | \appoggiatura d cis2~ cis8 b cis fis
  | b, ais b fis' e d cis b
  | ais4 r r8 ais' cis e
  %5
  | d16[ cis b cis] d8 b fis r r4
  | r r8 gis_. b d cis b
  | cis16[ b a b] cis8 a e r r4
  | r4 r8 fis_. a[ cis b a]
  | b4 fis gis b
  %10
  | eis, d' cis b
  | a8\prall gis a b gis fis gis a
  | << {
      fis2^~ fis8
    } \\ {
      b,8\rest cis4.^~ \once\stemUp \once\omit Flag cis8
    } \\ {
      \stemDown c,4\rest ais'_~ ais8
    } >>
  }
  %\break
  \repeat volta 2 {
  \partial 4. cis8 b cis
  | ais cis e g! fis e cis' e,
  | d e fis d b d a d
  %15
  | gis, b d fis e d b' d,
  | cis d e cis a cis e g!
  | fis16[ e d e] fis8 d b d fis a
  | gis16[ fis e fis] gis8 e d'2~
  | d8 cis b a cis b a gis
  %20
  | << {
      a2^~ a8 a g! a
    } \\ {
      \stemUp\tieUp d,8\rest e4.~ \once\omit Flag e8 s4.
    } \\ {
      \stemDown\tieDown \once\override Voice.Rest.X-offset = #0.4 e,4\rest cis'~ cis8
    } >>
  | \appoggiatura g'8 fis2~ fis8 e fis b
  | \appoggiatura a8 gis2~ gis8 fis gis cis
  | b( ais) fis'( e) d( cis b ais)
  | \slurDown\appoggiatura ais8 b2~ b8 b cis d
  %25
  | e[ fis g e] cis d e4~
  | e8 g, fis e fis cis' e, cis'
  | d, fis b fis e d cis d
  | << {
      \clef bass \stemUp\tieUp b2~ b8
    } \\ {
      \stemUp e,8\rest fis4.^~ \once\omit Flag fis8
    } \\ {
      \stemDown f,4\rest d'4_~ d8
    } >>
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4. r8 r4
  %1
  | r8 b d fis b4 r
  | r8 a, cis fis a4 r
  | r4 g, g' e
  | r8 fis ais cis fis4 fis,
  %5
  | b, r r8 d' b a
  | gis b e r r4 e,^.
  | a, r r8 cis' a gis
  | fis a d r r4 d,4^.
  | gis,8 fis' a, fis' b, fis' d fis
  %10
  | cis gis' b, gis' a, fis' gis, eis'
  | fis,4( b) cis-_ cis,-_
  | << {
      \stemDown\tieDown fis2~ fis8
    } \\ {
      \stemUp c'4\rest c8\rest cis^. fis^-
    } >>
  }
  \repeat volta 2 {
  \partial 4. r8 r4
  | r4 cis ais fis
  | b b, d b
  %15
  | e b' gis e
  | a a, cis a
  | d d'~ d8 b d fis
  | b16[ a gis a] b8 gis e[ gis b e]
  | a,4 fis d e
  %20
  | << {
      \stemDown\tieDown a,2~ a8 r r4
    } \\ {
      \stemUp f'4\rest f8\rest e a s4.
    } >>
  | \stemNeutral\tieNeutral r8 d,, fis a d2~
  | d8 e, gis b e2~
  | e8 fis, ais cis fis e fis d
  | g! b fis b e, b' d, b'
  %25
  | cis, b' d, b' e, b' cis, b'
  | fis ais e ais d, ais' cis, ais'
  | b4 d, e fis_\markup { \hspace #0.5 "Bourrée I da capo" }
  | << {
      \stemUp\tieUp b,2~ b8
    } \\ {
       c,4\rest d8\rest fis b,
    } >>
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
      \Soprano
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Bass
    >>
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 831"
    title = \markup { "Bourrée II" }
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
