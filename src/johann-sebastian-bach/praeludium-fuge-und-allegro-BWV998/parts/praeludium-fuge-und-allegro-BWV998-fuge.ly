Global = {
  \key ees \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

tema = \markup {
  \normal-text\circle \teeny "T"
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemUp\tieNeutral
  %1
  | r4 ees d ees
  | f bes, c d
  | ees r8 d ees[ g f ees]
  | d8^\segno[ aes' g f] ees[ d c f]
  %5
  | d4 f bes e,
  | f8[ c f g] aes4 d,
  | ees8[ f g a] bes[ f ees d]
  | c4 r8 d ees[c' bes aes]
  | g[ f ees aes] d,16[ f ees d] bes'8[ des,]
  %10
  | c4 r16 aes'[ g f] bes4 d8\rest c
  | c bes r aes aes[ g] r ees
  | ees d g4 aes bes
  | bes8 aes b\rest bes, bes aes b'\rest f
  | f e r f ees[ d c f]
  %15
  | ees[ d f ees] r bes'[ aes g]
  | f[ ees d g] ees4 f
  | f8 ees r des des c r e
  | e f r ees ees d r f
  | fis g r f f ees r g
  %20
  | g8 aes r g g[f] r ees
  | ees d! bes'4 g aes
  | bes ees, f g
  | aes r8 aes g[ c bes aes]
  | aes8[ g16 f] g4 aes bes
  %25
  | ees,4 r8 aes aes g r g
  | g f d'\rest bes bes[ aes] r aes
  | aes[ g] d'\rest f, f[ees] r16 f[g aes]
  | ees[ d c bes] << { bes'8 aes } \\ { \stemDown bes, c } >> g'4 f
  | \once\override Staff.TextScript.extra-offset = #'(-2 . 0)
    ees4\fermata^\markup { "(Fine)" } s2.
  %30
  | s1
  | r4 r16 d[ bes d] r ees[ bes ees] r f[ bes, f']
  | r g[ ees g] bes[ aes g f] ees[ d ees g] f[ ees d c]
  | d4 r16 f[ d f] g[ ees bes ees] r g[ ees g]
  | f[ d bes d] r f f f f g f g ees a ees a
  %35
  | d, bes' d, bes' d\rest a[ f a] d\rest bes[ f bes] d\rest c[ a c]
  | f\rest d[ bes d] ees[ d c bes] aes[ g aes c] bes[ aes g f]
  | g4 r16 g[ ees g] ees[ aes ees aes] des,[ bes' des, bes']
  | c,[ ees f g] aes[ g f aes] f[ bes f bes] ees,[ c' ees, c']
  | d,[ f  g aes] g[ f ees d] ees[ bes' c des] c[ bes aes g]
  %40
  | f[ d' aes d] g,[ ees' bes ees] aes,[ ees' c ees] bes[ ees des ees]
  | r c[ bes c] aes[ c g c] f,[ c' e, c'] f,[ c' aes c]
  | r bes[ aes bes] g[ bes f bes] e,[ bes' d,! bes'] e,[ bes' g bes]
  | aes[g f ees] d[ ees d ees] d[ ees d ees] d[ ees d ees]
  | f![ aes g f] ees[ d c bes] a4 b
  %45
  | c4 r16 ees[ c ees] c[ f c f] bes,[ g' bes, g']
  | a,[ c d ees!] f[ c a c] bes[ d f g] a[ ees c ees]
  | d[ f bes c] d[ bes g f] e[ g bes d] c[ a f ees]
  | d[ fis a c] bes[ g ees d] cis[ e g bes] a[ fis! d c]
  | b[ d fis a] g[ ees c bes] a[ g' a, g'] bes,[ g' bes, g']
  %50
  | c,[ g' c, g'] d[ g fis g] ees[ g c, g'] a,[ fis' a, fis']
  | g,[ bes' aes bes] g[ bes f bes] e,[ bes' f bes] g[ bes c, bes']
  | r bes[ aes g] f[ ees des c] des[ e f aes,] g[ bes f' e!]
  | f,[ aes' g aes] f[ aes ees aes] d,[ aes' ees aes] f[ aes bes, aes']
  | r aes[ g f] es[ des c bes] c[ d es g,] f[ es' d aes']
  %55
  | g[ es \staffLower bes g] s2.
  | \staffUpper s1*4
  %60
  | s1
  | s4 ees' d es
  | f4 r16 bes,[ c des] c4 r16 d[ c d]
  | ees bes g bes s2.
  | s4 r16 bes'[ bes, bes'] c,[ bes' c, bes'] d,[ aes' d, aes']
  %65
  | g[ es bes g] c'8\rest g g[ f] c'\rest d,
  | d ees c'\rest bes bes a c\rest ees,!
  | ees d r16 f[ d f] g[ ees bes ees] r g[ ees g]
  | f[ d bes d] \staffLower c\rest f[ f, f'] g,[ f' g, f'] a,[ ees' a, ees']
  | d bes f d \staffUpper c''8\rest d, d[ c] c'\rest a
  %70
  | a[ bes] r aes aes g r e!
  | e f f16[ aes ees aes] d,[ aes' bes, aes'] ees[ g d g]
  | c,[ g' aes, g'] f[ aes f aes] f[ g f g] ees[ g ees g]
  | ees[ f ees f] d[ f g aes] bes[ des, bes' des,] c[ ees f g]
  | aes8 r <f aes> r <f aes>4. g16[ f]
  %75
  | g16[ a g a] a8.\trill[ bes16] bes8 d\rest d4\rest
  | s1
  | s4 d,8 r ees[^\markup { "Dal Segno al Fine" } g f ees_\segno]
    \bar "||"
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \stemDown\tieDown
  %1
  | s1*9
  %10
  | s2 r16 f16[ ees d] c8[ ees]
  | ees8[ d16 c] \autoBeamOff d8 f \autoBeamOn f ees b\rest g
  | g f r8 ees'8 des8[ c bes ees]
  | des8 c b\rest g g f g\rest aes
  | aes g a!4 bes c
  %15
  | c8 bes aes g f4 b8\rest ees
  | d[ c c bes] aes g f bes
  | aes g b\rest bes bes aes b\rest bes
  | bes a a\rest c8 c bes b8\rest c8
  | c8[ b] b8\rest d8 d[ c] b8\rest des
  %20
  | des8 c b8\rest bes bes aes a\rest g
  | g f a4\rest b8\rest ees[ des c]
  | bes8[ des c bes] aes4 bes
  | c4 b8\rest bes8 bes c r8 d
  | d8[ ees] r8 ees8 ees[ des] r8 des
  %25
  | des8[ c] c8\rest f8 f[ ees] c8\rest ees
  | ees8[ d] c8\rest g'8 g[f] d8\rest f
  | f8[ ees] d8\rest d8 d[ees] s4
  | s4 \stemUp \once\shiftOn ees4 ees d
  | bes4 s2.
  %30
  | s1
  | s4 \stemDown aes g aes
  | <g bes> s2 a4
  | s1*2
  %35
  | s4 ees' d ees
  | f s2 d4
  | r16 ees bes g s2.
  | s1*6
  %44
  | d'4 s a16 g \staffLower\stemUp f ees d \staffUpper\stemDown aes' g f
  | s1*16
  %61
  | c'16 bes aes g \repeat unfold 3 { f g f g }
  | aes! bes aes bes g4 f16\rest bes aes g f4
  | s1*2
  %65
  | s4 b8\rest ees ees d b\rest aes
  | aes g b\rest d d c b\rest a
  | a bes s2.
  | s1
  | s4 b8\rest bes bes a b\rest ees
  %70
  | ees d b\rest f' f e b\rest bes
  | bes aes s2.
  | s1*2
  | s4 c8 s bes4. s8
  %75
  | b4\rest ees d16 bes a bes ees bes a bes
  | f' \staffLower\stemUp aes, g f g bes c des c bes aes g f aes bes d
  | ees bes g ees s2.
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieUp
  %1
  | R1*2
  | r4 bes g as
  | bes ees, g a
  %5
  | bes8[ c bes aes] g[ des' c bes]
  | aes4 r8 g f[ c' bes aes]
  | \stemUp g4 d'\rest d8\rest d[ c bes]
  | a[ g f bes] g4 f
  | bes c bes d8\rest bes
  %10
  | aes4 c\rest s2
  | s1*12
  %23
  | s4 \staffLower\stemUp f, g aes
  | bes s2.
  %25
  | s4 aes bes c
  | bes d, ees f
  | g aes bes c
  | f, ees \staffUpper\stemDown bes' aes
  | g \staffLower\stemUp d'16\rest bes[ g bes] c[ aes ees aes] d\rest c[ aes c]
  %30
  | bes[ g ees g] d'\rest bes bes bes bes c bes c aes d aes d
  | g, ees' g, ees' f,4 ees d
  | ees ees g s
  | a16\rest bes[ f d] r4 s2
  | s1*2
  %36
  | s4 bes' c s
  | s1*6
  %43
  | d4\rest c b c
  | s g s2
  | f16\rest f ees d c4 s2
  | s1*9
  %55
  | s4 ees16 g bes c des bes g f ees g bes c
  | des bes g f e[ g bes c] des[ bes g f] e[ des' c bes]
  | aes f' c aes f aes c d ees c a g f a c d
  | ees c a g fis a c d ees c a g fis ees' d c
  | bes g' d bes g bes des ees fes des bes aes g bes des ees
  %60
  | fes des bes aes g bes des ees fes des bes aes g \staffUpper\stemDown f' ees des
  | s1*2
  | \staffLower\stemUp s4 d16\rest bes g bes c aes ees aes d\rest c aes c
  | bes g ees g s2.
}

Bass = \context Voice = "four" \relative c' {
  \voiceFour
  \override MultiMeasureRest.staff-position = #-9
  \stemDown\tieDown
  %1
  | s1*5
  | s1
  | r4 ees, d ees
  | f bes, c d
  | ees aes2 g4
  %10
  | d16\rest g[ f ees] f4 g a
  | \stemNeutral bes bes, g aes
  | bes ees, f g
  | aes c aes bes
  | c f, g a
  %15
  | bes ees, d ees
  | f bes, c d
  | ees g aes g
  | f a bes aes
  | g b c bes
  %20
  | aes aes, aes' aes,
  | bes8[bes' c d] ees[ c bes aes]
  | g4 aes d8\rest des[ c bes]
  | f' ees d4 ees f
  | g4 ees, f g
  %25
  | aes f' g a
  | \stemDown bes bes, c d
  | ees f, g aes~
  | aes g8 aes bes4 \stemNeutral bes,
  | ees\fermata ees' r \stemDown ees,
  %30
  | r g aes bes
  | ees, r ees r
  | ees g c f,
  | bes bes, \stemNeutral d'\rest bes
  | d\rest d ees f
  %35
  | bes, d\rest bes, d'\rest
  | \stemDown bes g' f \stemNeutral bes,
  | ees ees, f g
  | aes f g a
  | bes bes' g aes
  %40
  | bes ees, f g
  | aes d,\rest des' d,\rest
  | g d\rest c' d,\rest
  | f fis g aes
  | \stemDown b, c f, g
  %45
  | c, c' d e
  | \stemNeutral f ees d c
  | bes bes' g a
  | bes g e fis
  | g ees c d
  %50
  | ees bes c d
  | g, bes c e
  | f aes, bes c
  | f, aes bes d
  | ees g, aes bes
  %55
  | \stemDown ees, r ees g
  | bes g e' c
  | f r f, a
  | c a fis' d
  | g r g, bes
  %60
  | des bes g' ees
  | aes8 d,\rest \stemNeutral a4 bes c
  | d, ees aes bes
  | ees, ees' r \once\stemDown ees,
  | r g aes bes
  %65
  | ees, ees' bes' bes,
  | ees, ees' f f,
  | \override Rest.staff-position = #0
    bes bes' r bes,
  | r \stemDown d, ees f
  | bes, bes' f' \stemNeutral f,
  %70
  | bes b c c,
  | f r r2
  | r4 d''8 c b g c bes
  | a f bes aes g ees aes g
  | f[ ees] ees d! d c d c
  %75
  | ees[ d] c f, bes4 g
  | \stemDown d ees aes bes
  | ees, bes'' g aes
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
    opus = ##f % "BWV 988"
    title = \markup { "Fuge" }
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
    \tempo 4 = 80
  }
}
