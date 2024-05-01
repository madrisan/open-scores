Global = {
  \key g \major
  \time 3/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  %1
  | d8 s s g s s
  | b s s d s s
  | g s s b s s
  | <b g>2\prall <a fis>4
  %5
  | b8 s s e, s s
  | a s s d, s s
  | g s s cis, s s
  | fis s s b, s s
  | e s s a, s s
  %10
  | d s s g, s s
  | r4 <e d'> <g cis>
  | q2_( <fis d'>4)
  }
  %\break
  \repeat volta 2 {
  | \staffLower a,8 s s d s s
  | \staffUpper fis s s a s s
  %15
  | c s s dis s s
    \break
  | fis4. g16 a g4
  | s2.
  | g,8 s s b s s
  | d s s f s s
  %20
  | gis a b d, c4
    \break
  | fis8 s s b, s s
  | g' s s ais, s s
  | fis' s s b, s s
  | a' s s dis, s s
  %25
  | g s s c, s s
    \break
  | fis s s b, s s
  | e s s a, s s
  | dis s s dis, s s
  | c' s s dis s s
  %30
  | fis s s a s s
    \break
  | \stemDown <e g>4 <b e> <a dis>
  | <a dis>4_( <g e'>2)
  | \override Beam.damping = #+inf.0
    \stemUp
    \repeat unfold 2 {
      \staffLower a,8 \staffUpper e' cis g' e cis
      \staffLower a8 \staffUpper fis' d a' fis d
    }
  %37
  | \repeat unfold 2 {
      \staffLower g,8 \staffUpper d' b f' d b
      \staffLower g8 \staffUpper e' c g' e c
    }
  %41
  | fis e d a' fis e
  | d a d fis d fis
  | g d g b g b
  | d b g f' d b
  %45
  | e s s a, s s
  | d s s g, s s
    \break
  | c s s fis, s s
  | b s s e, s s
  | a s s d, s s
  %50
  | g s s c, s s
  | \stemNeutral r4 <a' g'> <c fis>
  | <c fis>2_( <b g'>4)
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
    \fine
  }
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override Beam.damping = #+inf.0
  \override Rest.staff-position = #0
  %1
  | s2.*13
  %14
  | fis8 a, d a' d, fis
  | c' fis, a dis a c~
  | c4 b2
  | s2.
  | g8 b, e b' e, g
  | d' gis, b f' b, d~
  %20
  | d4 gis, a
  | fis'8 a, c b dis, fis
  | g' b, e ais, cis, e
  | fis' a, c b dis, fis
  | a' c, e dis fis, a
  %25
  | g' b, d c e, g
  | fis' a, c b d, fis
  | e' g, b a c, e
  | dis' fis, a dis, fis a
  | c fis, a dis a c
  %30
  | fis c dis a' dis, fis
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \stemUp\tieUp
  \override Rest.staff-position = #0
  %1
  | s2.*16
  | b'8 s s e s s
  | s2.*2
  %20
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  \repeat volta 2 {
  | \override Beam.damping = #+inf.0
    \staffUpper d'8 \staffLower g, b \staffUpper g' \staffLower b, d
  | \staffUpper b' d, g d' g, b
  | g' b, d b' d, g
  | r d cis d d,4
  %5
  | b''8 d, fis e g, b
  | a' cis, e d fis, a
  | g' b, d cis e, g
  | fis' a, cis b d, fis
  | e' g, b a cis, e
  %10
  | d' fis, a g b, d
  | \staffLower g,4 r a
  | d2.
  }
  \repeat volta 2 {
  | a8 d, fis d' fis, a
  | s2.*2
  %16
  | dis2 e4
  | b8 e, g e' g, b
  | s2.*2
  %20
  | e2 a,4
  | s2.*10
  %31
  | r4 g b
  | e4. d8[ cis b]
  | \repeat unfold 2 {
      \staffLower a s s \staffUpper g' s s
      \staffLower a, s s \staffUpper a' s s
    }
  %37
  | \repeat unfold 2 {
      \staffLower g, s s \staffUpper f' s s
      \staffLower g, s s \staffUpper g' s s
    }
  %41
  | \staffLower c,,4 fis a
  | fis d c
  | b d g
  | b \staffUpper d g
  %45
  | e'8 g, b a c, e
  | d' fis, a g b, d
  | c' e, g fis \staffLower\stemUp a, c
  | \staffUpper\stemDown b' d, fis e \staffLower\stemUp g, b
  | \staffUpper\stemDown a' c, e d \staffLower\stemUp fis, a
  %50
  | \staffUpper\stemDown g' b, d c \staffLower\stemUp e, g
  | \stemNeutral c,4 r d
  | g,2.
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
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
    opus = ##f # "BWV 829"
    title = \markup { "Tempo di Minuetta" }
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
    \tempo 4. = 140
  }
}
