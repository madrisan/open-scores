Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

voiceOneOssia = \relative c'' {
  | \key c \minor
    << {
      \stemUp <c ees>4 g'16.\rest ees32 d16. ees32 f4 g16.\rest f32 f16. g32
    } \\ {
      \stemDown g,4_\markup \italic {
        "ossia" (in the early 18th century, dotted rests are rarely indicated in the score)
      }
      g16.\rest c32 b16. c32 d4 g,16.\rest d'32 d16. ees32
    } >>
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \tempo "Grave. Adagio"
  %1
  | <c ees>4 g'16\rest ees16 d16. ees32 f4 g16\rest f16 f16. g32
  | aes8. aes16 aes16 g32 f g16. d32 <c ees>4 a'16\rest g g16. aes32
    \break
  | <g bes>4 a16\rest bes,16 bes16. c32 des8. des16 << { \shiftOn des16 c32 bes c16. g32 } \\ \stemUp e'4 >>
  | <c f>4 a'16\rest f g16. aes32 d,4 f16\rest d g16. ees32
    \break
  %5
  | c4~ c32 ees des c des16. f32 b,16. c32 b16. c32 d4~
  | d2~ d16. g,32 a16. b32 c16. <g b>32 <a c>16. <b d>32
    \break
  | <c ees>8. q16 << { \shiftOn ees16 d32 c d16. a32 } \\ \stemUp fis'4 >> g2
    \bar "||"
  | \tempo "Andante"
    \stemNeutral\tieNeutral g,16 c32 d ees8~ ees16 d32 c ees d c b c16 g aes f g c g f
  | ees c'32 d ees d c16 g' c, aes' c, b c d b g d'\rest d8\rest
  %10
  | \noBreak
    g32 f ees d c16 bes~ bes des8 c16 aes'32 g f e f8~ f32 g aes g f ees d ees
  | f ees d c bes16 aes~ aes c8 bes16 g'32 f ees d ees8~ ees32 f g f ees d c b
  | \noBreak
    c bes aes g f16 ees'~ ees d32 c ees d c b c d ees f g16 c,~ c b32 c d c b c
  | aes' g f e f16 des~ des c32 des ees des c des g f ees d ees16 c~ c b32 c d c b c
  | f c b a b16 d f32 bes, aes g aes16 c f32 aes, g f g8~ g32 f' g aes g16 f
  %15
  | g16 b,8 c16~ c bes32 aes g f ees d ees g f ees f ees d ees d8 c
  | r g'~ g32 aes g f g16 aes bes d ees8~ ees32 bes ees f g16 ees
  | des16 c f8~ f32 c f g aes16 f ees c d8~ d32 f g aes bes aes g aes
  | bes aes g16~ g32 f e16~ e32 d c16~ c32 g' aes bes aes g f16~ f32 ees des16~ des32 c bes16~ bes32 f' g aes
  | g f e f bes f e f aes f e f g f e f f4~ f32 ees d ees f d ees f
  %20
  | bes, d f g aes8~ aes32 g f aes g f ees d ees bes ees f g8~ g32 f ees g f ees d c
  | bes' a g fis ees!16 d~ d32 g a c cis,16 d~ d32 fis! g a c, ees d cis fis d e fis g a bes c
  | bes a g fis~ fis16 g~ g d8 ees16~ ees b8 c16~ c32 bes aes g aes16 c
  | fis,32 ees' d c bes'16. a32 g8 fis16.\prall g32 g4~ g32 f g aes g f ees d
  | f ees d c g'8~ g32 ees f g f ees d c ees d c bes g'8~ g32 d ees f ees d c bes
  %25
  | d32 c bes a g'8~ g32 c, d ees d c bes a c bes a g g'8~ g32 bes, c d c bes a g
  | aes!4~ aes32 aes g aes bes aes g aes ees'4~ ees32 c b c d c b c
  | fis16 ees!8 d16 g d8 c16 a' c,8 bes16~ bes32 d c bes g' bes, a g
  | bes'8~\fermata bes32 a g fis g bes a g fis! e d c bes d c ees d g fis! e d c bes a bes d bes g
  | r16 e'32 fis fis16~\prall fis64 e fis g
    \stemUp\tieUp bes,32 a g fis g16 bes~ bes c32 bes a! bes c a fis!8. g16
    \bar "||"
  %30
  | \time 3/4 \tempo "Allegro"
    \stemNeutral\tieNeutral g8 g16[ a] b8 c d ees
  | f16 ees d ees f8 g aes! d,
  | f b, d g,=' g'16 f ees d
  | ees8 c'4 bes!16 aes g f ees d
  | c4~ c16 d e f g aes bes g
  %35
  | e8 des'~ des16 g, aes bes aes g f e
  | f g aes8~ aes16 g f ees d! c d f
  | ees f g8~ g16 f ees d c b c ees
  | d aes' d,='' c d ees f g f ees d c
  | b g' f ees d f d c b d b a
  %40
  | g=' a b c d c b c d ees f d
  | b c d ees f aes! g f ees d c b
  | c d ees c a8 c f, ees'
  | bes!16 c d bes g8 bes ees, d'
  | a16 bes c a fis8 a d, c'
  %45
  | g16 a bes g ees! g d g cis, bes' a g
  | fis e d e fis8 g a bes
  | c16 bes a bes c8 d ees! a,
  | c fis, a d, d'16 c bes a
  | bes a g a bes8 c d ees
  %50
  | f16 ees d c bes f' c bes aes f' bes, aes
  | g f ees f g8 a b c
  | d16 c b a g d' aes g f d' g, f
  | ees c' g f ees f g aes g c g f
  | ees c' g f ees f g aes g c g f
  %55
  | e bes' g f e f g aes g bes g f
  | e bes' g f e g bes des c bes aes g
  | aes f' c bes aes bes c des c f c bes
  | aes f' c bes aes bes c des c f c bes
  | a ees' c bes a bes c des c ees c bes
  %60
  | a ees' c bes a c ees ges f ees des c
  | des=''8 bes c des ees des
  | c aes bes c des c
  | bes8 aes bes g aes bes
  | e,16 d c d e8 f g aes
  %65
  | bes16 aes g aes bes8 c des g,
  | bes e, g c, c'16 bes aes g
  | aes g f8~ f16 aes g f ees d c bes
  | g' f ees8~ ees16 g f ees d c b c
  | f ees d8~ d16 f ees d c b a g
  %70
  | ees'16 f g8~ g f16 ees d a' b c
  | d c b c d g f ees d c b a
  | g4~ g16 a b c d ees f d
  | b8 aes'!~ aes16 d, ees f ees d c b
  | c4~ c16 g' des c bes ees bes aes
  %75
  | g16 aes bes c des8 bes g'4~
  | g=''8 c,16 bes aes f' bes, aes g des' g, f
  | e f g aes bes8 g e'8. \prall d32 e
  | f8 f,16 g aes8 bes c d
  | ees!16 d c d ees8 f g aes
  %80
  | b,16 g' d c b c d ees d g d c
  | b g' d c b c d ees d g d c
  | b g' d c b c d ees d f d c
  | b f' d c b d f aes g f ees d
  | ees f g ees c g' f ees d c bes aes
  %85
  | g aes bes8~ bes16 c bes aes g f e d
  | c g' c, bes c d e f e g c, bes
  | c g' f e f c f g aes bes c d
  | ees d c d ees8 f16 g aes8 des,
  | f b, d g, g'16 f ees d
  %90
  | \stemUp ees8. c16 c4 b8.\prall c16
  | c2.\fermata
    \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown
  \override Rest.staff-position = #0
  %1
  | g4 g16\rest c16 b16. c32 d4 g16\rest d d16. ees32
  | f8. f16 f8 g,\rest g4 g16\rest ees'16 ees16. f32
  | c4 g16\rest g g16. aes32 bes8. bes16 bes8 f\rest
  | aes4 g\rest e16\rest f f16. g32 g4
  %5
  | e16\rest ees ees16. f32 f4 g16. a32 g16. a32 b4~
  | b8. d,16 f8. aes16 g16. f32 ees16. d32 ees16. d32 ees16. f32
  | g4 <a c>8 g\rest <b d>2
  | s1*21
  %29
  | s4. g8~ g4 d
  | d8 s s2
  | s2.*59
  %90
  | g8\rest g16\rest <ees a> <d g>2
  | <ees g>2.

}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp
  \override Rest.staff-position = #0
  %1
  | <ees g c>4 a\rest <d, f a b> a'\rest
  | g\rest <d f b> <ees g c> g\rest
  | <e g c> g\rest g\rest <g c>
  | <f aes c> g\rest b16\rest <d, aes'>16 q16. <d g>32 q4
  %5
  | a'16\rest <c, g'>16 q16. <c f>32 <c f>4~ <d! f> a'16\rest f f16. g32
  | aes8. aes16~ aes g32 f g16 d <c ees>4 g'\rest
  | g\rest <c, ees a> <d g>2
  | s1*20
  %28
  | <e g>4\fermata r <g bes d>2
  | cis4~ cis8. cis16 d8 c16 bes << { a16 bes c8 } \\ a4 >>
  | << \stemUp\shiftOn g8 \\ \stemUp b >> a\rest a4\rest a\rest
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | c4 b\rest c b\rest
  | a\rest c c a\rest
  | c a\rest a\rest c
  | c a\rest a16\rest c c16. bes32 bes4
  %5
  | a16\rest bes bes16. aes32 aes4 g a16\rest d d16. ees32
  | f8. f16 << { \stemDown\once\override NoteColumn.force-hshift = #0.3 g,4 } \\ { b8. b16 } >> g4 g\rest
  | g\rest g g2
    \bar "||"
  | \stemNeutral c8 c' f, g ees c ees g
  | c aes ees f g g, r16 f'' ees d
  %10
  | ees8 g e c f aes f c
  | d f d bes ees g ees c
  | aes c f aes, g c ees g,
  | f aes g f ees g f ees
  | d f aes c, b d g d
  %15
  | ees aes, f g c,4~ c16 d32 ees f g a b
  | c8 c' bes! aes! g bes g ees
  | aes c aes f bes aes g f
  | e g c e, f aes f des
  | bes g c c, f16 g32 aes bes c d e f8 ees
  %20
  | d f d bes g' bes ees, g
  | a, fis' g g, d' a' c d,
  | g a bes b c d ees c
  | a g d' d, g a b g
  | c ees c a bes d bes g
  %25
  | a c a fis g bes g ees
  | c16 d32 ees f g aes bes c16 c, c'8~ c32 c, d ees f g aes bes c16 c, c'8~
  | c8 c, bes bes' fis d g ees
  | \stemDown\tieDown cis4 r d2~
  | d1
    \bar "||"
  %30
  | \time 3/4
    g,8 g\rest g4\rest g\rest
  | R1*3/4*2
  | \clef treble \stemNeutral\tieNeutral
    r8 c'16 d ees8 f g aes
  | bes16 aes g aes bes8 c des g,
  | bes e, g c, c'16 bes aes g
  | aes8 f g aes bes aes
  | g ees f g aes g
  | f ees f d ees f
  | g g,16 a b8 c d ees
  | f16 ees d ees f8 g aes d,
  | f b, d g, g'16 f ees d
  | ees d c8~ c16 ees d c \clef bass bes a g f
  | d' c bes8~ bes16 d c bes a g fis g
  | c bes a8~ a16 c bes a g fis e d
  | bes'8 d g, bes e, cis'
  | d d,~ d c16 bes a g fis e
  | d4~ d16 e fis g a bes c a
  | fis8 ees'~ ees16 a, bes c bes a g fis
  | g4 r16 g' aes bes aes g f! ees
  | d8 f d bes c d
  | ees ees, r16 ees' f g f ees d c
  | b8 d b g a b
  | c c, r16 d'' ees f ees8 d
  | c c, r16 aes' bes c bes8 aes
  | g c, r16 d' e f e8 d
  | c c, r16 d e f e8 c
  | f f, \clef treble r16 g'' aes bes aes8 g
  | f f, r16 des' ees f ees8 des
  | c f, r16 g' a bes a8 g
  | f f, \clef bass r16 g a bes a8 f
  | bes16 c des8~ des16 c bes aes g f g bes
  | aes bes c8~ c16 bes aes g f e f aes
  | g16 des' g, f g aes bes c bes aes g f
  | c'8 bes16 aes g c bes aes g f e d
  | c4~ c16 d e f g aes bes g
  | e8 des'~ des16 g, aes bes aes g f e
  | f g aes f d!8 f bes, aes'
  | ees16 f g ees c8 ees aes, g'
  | d16 ees f d b8 d g, f'
  | c16 d ees c aes! c g c fis, ees' d c
  | b a g a b8 c d ees
  | f16 ees d ees f8 g aes d,
  | f b, d g, g'16 f ees d
  | ees d c d ees8 f g aes
  | bes16 aes g f ees bes' f ees des bes' ees, des
  | c bes aes bes c8 d e f
  | g16 f e d c g' des c bes g' c, bes
  | aes f' aes, g f c' des g, a ees' f b,
  | c16 f ees d c g' aes! d, ees b' c f,
  | g8 g, \clef treble r16 a'' b c b8 a
  | g8 g, r16 ees' f g f8 ees
  | d8 g, \clef bass r16 a b c b8 a
  | g8 g, r8 g''16 f ees d c b
  | c8 c,16 d ees8 f g aes!
  | bes!16 aes g aes bes8 c des g,
  | bes e, g c, c'16 bes aes g
  | aes4~ aes16 bes aes g f g aes f
  | g f ees d c bes aes g f f' e f
  | aes f e f b, f' ees d ees g c, ees
  | fis,8. fis'16 g4 g, c,2._\fermata
    \fine
}

\score {
  <<
  \new Staff = "ossia" \with {
    fontSize = #-3
    \include "./ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
  }
  { \voiceOneOssia }
  \new PianoStaff {
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
  }
  >>
  \header {
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 826"
    title = \markup { "Sinfonia" }
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
