Global = {
  \key d \major
  \time 2/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 8 a8
  %1
  | fis8^\prall e4 d8~
  | d8 cis4 d8~
  | d8[ e16 fis g8 fis]
  | fis8^\prall e r a8
  %5
  | fis8 e4 d8~
  | d8 cis4 d8~
  | d8 e16 fis g8 fis
  | fis8^\prall e r e
  %10
  | \stemNeutral\tieNeutral fis16 gis a4 gis16 a
  | b16 a gis fis e[ fis gis a]
  | b16 cis d4 cis16 d
  | e16[ d cis b] a[ b cis d]
  %15
  | e16 fis g4 fis16 e
  | fis16 a g fis b a gis fis
  | e16 a gis fis e d cis b
  | a4.
  }
  \break
  \repeat volta 2 {
  \partial 8 e'8
  | cis8^\prall b4 a8~
  | \stemUp a8[ b16 cis d8 cis~]
  | cis8[ d16 e fis8 b,^~]
  %20
  | b8 ais d\rest fis
  | \stemNeutral d8^\prall cis4 b16 ais
  | b16 d cis b cis dis e fis
  | g16 b a g a b c8
  | e,8^\prall( dis) r b
  %25
  | g'8 fis4 e16 dis
  | e16 g fis e d! cis b a
  | fis'8 e4 d16 cis
  | d16 fis e d cis b ais b
  | e8 d4 c16 b
  %30
  | c16 g' fis4 eis8
  | fis8[ b,] d16[ cis b ais]
  | b4 r8 d
  | fis,16 a g4 fis16 g
  | a16[ g fis e] d[ c' b a]
  %35
  | b16[ g fis e] dis[ a' g fis]
  | g16[ fis e d!] cis[ g' fis e]
  | fis16[ d cis b] ais[ e' d cis]
  | d16 fis e d e fis g a
  | b16 g a d cis b a g
  %40
  | fis8_(^\prall e) r e'
  | f16[ gis a8~] a16[ e f d]
  | e16 d cis b a g! f e
  | f16[ gis a8~] a16[ e f d]
  | \stemUp e16 d cis \staffLower b a g! fis! e
  %45
  | \staffUpper r16 fis' e4 d16 cis
  | d16 fis e d e fis g a
  | b16 a c b a fis' b, a
  | g16 b a g a b cis! d
  | e16 d f e d b' e, d
  %50
  | cis16 e d cis d e fis g
  | a8[ d, e cis]
  | d4.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s2*2
  | s4. d8
  | d cis s e
  %5
  | d a\rest cis g\rest
  | s2
  | s4. d'8
  | d cis \staffLower\stemUp c\rest cis \staffUpper
  | s2*7
  | s4.
  \partial 8 s8
  | s2*2
  | \stemDown s4 e8\rest d~
  %20
  | d cis d4\rest
  | s2*20
  %41
  | \staffLower\stemUp f8\rest f[ e d]
  | f8\rest g[ e cis]
  | e8\rest d[ cis b]
  | b\rest s4.
  %45
  | d,8 f\rest cis f\rest
  | \staffUpper\stemDown s2*5
  %51
  | fis'8[ a <g b> <e a>]
  | <fis a>4.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  \partial 8 s8
  %1
  | s4 cis8 c\rest
  | a8 c\rest g c\rest
  | a4. a8
  | s4 f8\rest <cis e a>
  %5
  | <d fis a> f\rest <e g a> f\rest
  | <fis a> f\rest <g a> f\rest
  | << {
      \stemDown \once\override NoteColumn.force-hshift = #0.2 fis8 e16 d cis8 d
    } \\ {
      \once\override NoteColumn.force-hshift = #-1
      \once\override Dots.extra-offset = #'(0 . 1)
      \stemUp a'4. a8
    } >>
  | s2*8
  | s4.
  \partial 8 s8
  | a8 s cis s
  | d s g, s
  | fis4 s
  %20
  | s2*21
  %40
  | \stemDown a8\rest d[ cis b]
  | a\rest e'[ cis a]
  | f\rest f[ e d]
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  \partial 8 r8
  %1
  | d8 r a d,\rest
  | fis d\rest e d\rest
  | fis[ e16 d cis8 d]
  | a' f\rest a,4~
  %5
  | a2~
  | a~
  | a
  | a'8 a, r a'
  | \stemNeutral d8[ cis b a]
  %10
  | gis[ a gis fis]
  | e[ fis e d]
  | cis[ d cis b]
  | a[ b cis a]
  | d[ d, d' b]
  %15
  | cis[ a e' e,]
  | a4.
  }
  \repeat volta 2 {
  \partial 8 r8
  | \stemDown\tieDown a'8 d,\rest g r
  | fis d\rest e b\rest
  | d[ b16 cis d8 e]
  %20
  | \stemNeutral fis16 e fis g fis e d cis
  | b16 a g fis e d e fis
  | g8 g'4 fis8
  | e c'4 a8
  | b16 a b c b a g fis
  %25
  | e[ b' a g] b,[ a' g fis]
  | g8[ b e cis,]
  | d16[ a' g fis] a,[ g' fis e]
  | fis8[ a d, fis]
  | g16[ g' fis e] b[ fis' e d]
  %30
  | e,[ e' d cis] g[ d' cis b]
  | ais,8[ d e fis]
  | b16 b, cis d e fis gis ais
  | b16 a! b d cis b a g
  | fis8[ a fis d]
  %35
  | g[ a, b dis]
  | e[ g, a cis]
  | d[ e, fis ais]
  | b16 d cis b cis d e fis
  | g8 fis16 e fis8 g
  %40
  | a g16 fis e d cis b
  | \stemDown a8 e\rest e4\rest
  | a8 e\rest e4\rest
  | a8 c,\rest b4\rest
  | a'8[ <e' g> <cis e> <a cis>]
  %35
  | d, e\rest <fis ais> e\rest
  | \stemNeutral b'[ fis' b a]
  | g[ e' fis, dis']
  | \stemDown e,8[ b' \staffUpper e d!]
  | cis[ a' b, gis']
  %40
  | a,[ e' a g!]
  | \staffLower\stemUp r8 fis,,[ g a]
  | d,4.
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 828"
    title = \markup { "Aria" }
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
