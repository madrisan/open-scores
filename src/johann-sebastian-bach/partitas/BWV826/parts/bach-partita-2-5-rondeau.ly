Global = {
  \key c \minor
  \time 3/8
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c'8 c, d\prall
  | ees4 f8
  | g aes, r
  | f' g, r
  %5
  | ees' f, r
  | d' ees, r
  | r c'16 b c d
  | b a g8 r
  | c' c, d
  %10
  | ees4 f8
  | g aes, r
  | f' g, r
  | ees' f, r
  | d' ees, r
  %15
  | r16 c' d, f c' b
  | c4.
  | ees,16 d ees f g aes
  | bes ees bes aes bes8~
  | bes16 f' bes, aes bes8~
  %20
  | bes16 g' bes, aes bes8~
  | bes16 des c bes aes g
  | aes c f c aes'8~
  | aes16 f aes g f e
  | f4.~
  %25
  | f16 aes d, ees! f d
  | c bes c d ees f
  | g bes ees, f g ees
  | des c d e f g
  | aes c f, g aes f
  %30
  | ees des c b g'8~
  | g16 c, f ees d c
  | b c d b g8
  | c' c, d
  | ees4 f8
  %35
  | g aes, r
  | f' g, r
  | ees' f, r
  | d' ees, r
  | r c'16 b c d
  %40
  | b a g8 r
  | c' c, d\prall
  | ees4 f8
  | g aes, r
  | f' g, r
  %45
  | ees' f, r
  | d' ees, r
  | r16 c' d, f c' b
  | c4 r8
  | r16 ees c g aes ees
  %50
  | f aes d8 r
  | r16 d bes fis g d
  | e g c8 r
  | r16 c aes e f c
  | d f bes8 r
  %55
  | r16 bes c d ees f
  | g ees f d bes d
  | f aes g ees bes d
  | ees g f d aes c
  | d f ees c ges a
  %60
  | c ees d bes f aes
  | bes ees bes g ees d
  | \stemDown ees bes' g ees \staffLower\stemUp bes aes
  | bes \staffUpper\stemDown g' ees \staffLower\stemUp bes aes \staffUpper\stemDown d
  | \staffLower\stemUp g, \staffUpper\stemDown ees' \staffLower\stemUp bes g ees8
  %65
  | \staffUpper\stemNeutral r16 g' a b c d
  | ees d c d ees f
  | g g, aes! c f8~
  | f16 f, g bes ees8~
  | ees16 ees, f b d8~
  %70
  | d16 d, ees g c8~
  | c16 b c ees aes c,
  | b a g8 r
  | c' c, d
  | ees4 f8
  %75
  | g aes, r
  | f' g, r
  | ees' f, r
  | d' ees, r
  | r16 c' d, f c' b
  %80
  | \stemUp\tieUp c4.
  | ees~
  | ees4 d16 ees32 f
  | d4.~
  | d8 ees16 f g ees
  %85
  | \appoggiatura d16 c4.~
  | c8 \tuplet 3/2 { d16 c bes } \tuplet 3/2 { c[ bes a] }
  | \stemNeutral\tieNeutral \omit TupletBracket \omit TupletNumber
    \tuplet 3/2 { bes[ a g] c[ bes a] bes[ a g] }
  | fis8. a16 d c
  | bes a bes d c ees
  %90
  | d bes g g' a, g'
  | bes, g' c, d ees c
  | a f' bes, c d bes
  | g ees' a, bes c a
  | fis d' g, a bes g
  %95
  | d c' bes a g fis
  | g4.~
  | g16 c' b a g f
  | ees4 f8
  | g16 bes, aes8 r
  %100
  | f'16 aes, g8 r
  | ees'16 g, f8 r
  | d'16 f, ees8 r
  | r16 g' f ees d c
  | b c d b g8~
  %105
  | g16 c bes aes g f
  | ees4 f8
  | \override Beam.positions = #'(2.5 . 1.2)
    \stemUp g16 \staffLower bes, aes8 \staffUpper r
  | \override Beam.positions = #'(2.2 . 0.9)
    f'16 \staffLower aes, g8 \staffUpper r
  | \override Beam.positions = #'(1.9 . 0.6)
    ees'16 \staffLower g, f8 \staffUpper r
  %110
  | \override Beam.positions = #'(1.6 . 0.3)
    d'16 \staffLower f, ees8 \staffUpper r
  | << {
      \staffLower e'8\rest \once\override Beam.positions = #'(6.3 . 6) c b
      c4.
    } \\ {
      \staffLower\stemUp f,8\rest \shiftOn <ees aes> <d g>
      <ees g>4.
    } >>
    \staffUpper
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  \fine
}

Bass = \context Voice = "four" \relative c'' {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*3/8
  | \clef treble c8 c, d
  | ees r f
  | d r ees
  %5
  | c r d
  | b r \clef bass c
  | a f d
  | g r16 f' ees d
  | c8 r r
  %10
  | \clef treble c'8 c, d
  | ees r f
  | d r ees
  | c r d
  | b r \clef bass c
  %15
  | aes f g
  | c, g ees
  | c4 r8
  | g''8 f ees
  | d c bes
  %20
  | ees g f
  | e g c,
  | f aes des,
  | bes' c, c'
  | bes16 aes bes aes g f
  %25
  | bes8 f aes
  | d, f bes,
  | ees, g' bes
  | e, g c,
  | f, aes' c
  %30
  | f, aes d,!
  | ees aes, f'
  | g, g' \clef treble r16 f'
  | ees f g a b g
  | c8 c, d
  %35
  | ees r f
  | d r ees
  | c r d
  | b r \clef bass c
  | aes f d
  %40
  | g r16 f' ees d
  | c8 r r
  | \clef treble c' c, d
  | ees r f
  | d r ees
  %45
  | c r d
  | b r \clef bass c
  | aes f g
  | c,16 ees g c, ees g
  | c8 c, c'~
  %50
  | c8 c,16 c' bes aes
  | bes8 bes, bes'~
  | bes bes,16 bes' aes g
  | aes8 aes, aes'~
  | aes aes,16 aes' g f
  %55
  | g8 f ees
  | bes' bes, bes'~
  | bes ees, f
  | g bes r
  | aes g ees
  %60
  | bes bes' aes
  | g g, g'~
  | g aes, g'_~
  | g bes, f'
  | ees4 a,16\rest d
  %65
  | ees16 f ees d c b
  | c g' a b c d
  | ees8 f, r16 ees'
  | d8 ees, r16 d'
  | c8 d, r16 c'16
  %70
  | b8 c, r16 ees
  | aes8 g f
  | g16 f g aes! f g
  | ees d ees f d ees
  | c8 c' d
  %75
  | ees r f
  | d r ees
  | c r d
  | b r c
  | aes f g
  %80
  | c, g16 f ees d
  | \stemUp c8 \stemDown c'' bes
  | \stemNeutral a g f
  | bes, bes' a
  | g f ees
  %85
  | a, a' g
  | fis e d
  | g ees c
  | d16 ees d c bes a
  | g8 g' a
  %90
  | bes4 c8
  | d ees, r
  | c' d, r
  | bes' c, r
  | a' bes, r
  %85
  | r c d
  | g,16 aes'![ g f! ees d]
  | ees8 f g
  | c,16 \clef treble c''[ b a g f]
  | ees8. g16 f ees
  %90
  | d8. f16 ees d
  | c8. ees16 d c
  | b8. d16 c bes
  | aes8 aes' f
  | g16 aes g f ees d
  %95
  | \clef bass c ees d c bes aes
  | g c bes aes g f
  | \stemDown ees8. g16 f ees
  | d8. f16 ees d
  | c8. ees16 d c
  %100
  | b8. d16 c bes
  | aes c f,8 g
  | c,4.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    opus = ##f # "BWV 826"
    title = \markup { "Rondeau" }
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
