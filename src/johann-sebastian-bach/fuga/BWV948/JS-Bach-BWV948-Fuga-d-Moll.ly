\version "2.25.16"

#(ly:set-option 'relative-includes #t)

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  %inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  %left-margin = 10\mm
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  %outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %right-margin = 10\mm
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "d.madrisan@proton.me"
  }

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Johann Sebastian" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #44 \bold "Fuga d-Moll" }
        \null\null\null
        \line { \abs-fontsize #24 "BWV 948" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "For keyboard instruments" }
        \null\null\null\null
        \null\null\null\null
      }
    }
  }

  \include "./logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line {
          \abs-fontsize #10 "Based on: Based on Bach-Gesellschaft Ausgabe - Leipzig: Breitkopf und Härtel, 1890"
        }
        \null\null
      }
    }
  }
}

\include "./macros.ly"

Global = {
  \key d \minor
  \time 4/4
  \include "global.ly"
}

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  | R1*4
  %5
  | r2 r4 \highlightSubject { r8 a16 b
  | c8 a e' a, gis4 r16 e' d e
  | c e a, c f d a c b d g, b e c g b
  | a c f, a d b fis a gis b e, gis b d gis, b
  | d f! b, d gis, f' e d c e a, c e, b' a gis
  %10
  | \unHighlightSubject a } c fis, a r c b a gis b e, gis r bes a g
  | fis a d, fis r aes g f e g cis, e r g f e
  | d8 d16 e f8 f16 g a8 a16 b cis8 b16 cis
  | d8 bes g bes c! a f a
  | bes g e g g r r g
  | e g a4~ a8 f e a
  %15
  | f d'~ d16 d c! b! a gis a b b8\parenthesize\trill a16 b
  | c8 a e' a, gis4 r8 g16 a
  | bes!8 g d' g, fis4 \highlightSubject { r8 f16 g
  | a8 f c' f,  e4 r16 c' bes c
  | a c f, a d bes f a g bes e, g c a e g
  %20
  | f a d, f bes g d f e g c, e g bes e, g
  | bes d g, bes e, d' c bes a c f, a c, g' f e
  | \unHighlightSubject f } a d, f b, a' g f e g c, e g c e, g
  | \stemNeutral c e g, c e g c, e d g b, d g, b a g
  | \stemUp r4 f'~ f e4~
  %25
  | e d~ d r8 d
  | b8 d g,4~ g16 f e f d8 g
  | e c r c' c fis, r bes
  | bes e, r a~ a4 g~
  | g4 f2 e16 d' c bes
  %30
  | \stemNeutral a bes a g f g f g a8 f c' f,
  | e c \highlightSubject { b'\rest g16 a bes8 g d' g,
  | fis4 b16\rest d c d bes d g, bes ees c g bes
  | a c f, a d bes f a g bes ees, g c a e g
  | fis a d, fis a c fis, a c ees a, c fis,! ees' d c
  %35
  | bes d g, bes d, a' g fis g8 } \stemUp r ees'4~
  | ees8 f, d'4~ d8 ees, c'4~
  | c8 d, bes'4~ bes8 c, a'4
  | bes8 bes16 c d8 d16 e! f8 f16 g a8 g16 a
  | bes8 g ees g a f d f
  %40
  | g ees c ees f16 a c, f a, c f, a
  | \stemNeutral c ees a, c f, ees' d c f bes d, f a, ees'! d c
  | d8 bes f' bes, a4 r8 c16 d
  | e!8 c g' c, b4 \highlightSubject { r8 d16 e
  | \stemUp f8 d a' d, cis4 r16 a' g a
  %45
  | f a d, f bes! g d f e g c, e a f c e
  | d f bes, d g e b d cis e a, cis e g cis, e
  | g bes! e, g cis, bes' a g f a d, f a, e' d cis!
  | \unHighlightSubject d } f b, d gis, d' c b a8 a16 b c8 c16 d
  | e8 e16 fis gis8 fis16 gis a8 f d f
  %50
  | g! e c e f d b! d
  | d4 r8 d b d e4~
  | e b\rest b2\rest
  | \stemNeutral b32\rest f' e d b' f e d \stemUp cis16 e a, cis r d e f b, d g, bes
  | r16 des c bes a c f, a r ces bes aes g bes ees, g
  %55
  | r16 bes a g fis a d, fis g8 g16 a bes8 bes16 c
  | d8 d16 e! fis8 e16 fis d'4\rest c~
  | c bes2 a4~
  | a8 fis~ fis16 a c, fis a c fis, a d, c' bes a
  | g16 bes d, g fis c bes a bes d g, bes e, e' d cis
  %60
  | f!4 d2 cis4~
  | cis d8 d16 e f8 f16 g a8 f
  | e4 cis8 e a4 g~
  | g f2 e4~
  | e16 g cis, e a8 g~ g2
  %65
  | a8 d, r16 d cis d <g, bes!>4 r4^\markup { \normalsize \char ##x274A }
  | %\override Beam.damping = #+inf.0
    \override Stem.details.beamed-lengths = #'(4 5 6.8)
    \magnifyMusic 0.75 {
      g32^\markup {
        "Verlängerter Schluss (Extended closing)"
      } a bes a g f e d
      \once\override Beam.damping = #+inf.0 cis[ d e d cis] \change Staff = "lower" \stemDown bes[ g e]
      cis[ e g bes] \change Staff = "upper" \stemUp cis! e g bes
      \stemDown e g bes g e cis \stemUp g[ e]
  \break
  |   \once\override Beam.positions = #'(1.8 . 1)
      \stemUp f[ d cis d \change Staff = "lower" a d] \stemDown f, a d, e f e d c! b a
  %\break
      gis b d f \stemUp gis[ b \change Staff = "upper" d f] \stemDown gis b d f \stemUp gis[ b gis d]
  |   \stemUp c! a gis a e a c, e \change Staff = "lower" \stemDown a, b c b a g! fis e
      dis fis! a c \change Staff = "upper" \stemUp dis[ fis a c]
      \stemDown dis fis a fis dis \stemUp c[ a fis!]
  %70
  |   \stemUp g e dis e \change Staff = "lower" b e g,! b \stemDown e, fis g fis e d cis b
      ais cis! e g \stemUp ais[ cis \change Staff = "upper" e g]
      \stemDown ais cis e g \stemUp ais[ cis ais e]
  |   \stemUp d b ais b fis b d, fis \change Staff = "lower" \stemDown b, cis d cis b a gis fis
  %\break
      eis gis! b! d b d \change Staff = "upper" \stemUp eis[ gis] b![ d] \stemDown eis gis b gis eis b
  |   \stemUp a fis eis fis cis fis a, cis \change Staff = "lower" \stemDown fis, gis a gis fis e dis cis
      bis dis! fis! a \change Staff = "upper" \stemUp bis[ dis fis! a]
      \stemDown bis dis fis a \stemUp bis[ a fis dis]
  |   \stemUp e! cis bis cis gis cis e, gis \stemDown cis, dis e dis cis \change Staff = "lower" b ais gis
      fisis[ ais cis \change Staff = "upper" e] \once\stemUp fisis ais,[ cis! e]
      \stemUp fisis! ais cis! e fisis e cis ais
  |   \stemDown b gis fisis gis dis gis b, dis
      \change Staff = "lower" \stemUp gis,[ ais b ais gis fis eis dis]
  %\break
      \stemDown cisis eis! gis! b! \change Staff = "upper" \stemUp cisis[ eis gis! b!]
      \stemDown cisis eis gis b gis eis cisis eis
  %75
  |   \stemUp fis dis cisis dis ais dis! fis, ais
      \stemDown dis, eis fis! eis dis \change Staff = "lower" cis \stemUp bis[ ais]
      \stemDown a c \change Staff = "upper" ees ges \stemUp a[ c ees ges]
      \stemDown a! c! a ees! \stemUp c![ ees a c,]
  |   \stemUp des bes a bes f bes des, f \change Staff = "lower" \stemDown bes, c des c bes aes
      \stemUp g![ f] \stemDown e! g bes des! \change Staff = "upper" \stemUp e[ g bes des!]
      \stemDown e g bes bes, \stemUp des![ e! des bes]
  |   \stemUp aes f e! f c f \change Staff = "lower" \stemDown aes,[ c] f,[ g aes! g f ees] \stemUp d! c
  %\break
      \stemDown b d f aes! \change Staff = "upper" \stemUp b[ d f aes!]
      \stemDown b,! d f aes! \stemUp b[ d f d]
  |   ees c b c g c \stemDown ees,[ g] \stemUp c, d ees! d c \change Staff = "lower" bes \stemDown a[ g]
      fis a \change Staff = "upper" c ees! \stemUp fis[ a c ees!] \stemDown fis[ a!] \stemUp c a fis ees! c a
  |   \stemUp bes g fis g d g \stemDown bes,![ d] \change Staff = "lower" \stemUp g,[ a bes a g f] \stemDown e! d
      cis e g bes \change Staff = "upper" \stemUp cis[ e g bes] \stemDown cis e g bes g e \stemUp cis[ bes]
  %80
  |   \arpeggioArrowDown
      \override PianoStaff.Arpeggio.color = \greyTextColor
      <cis, e g bes>4\arpeggio s4 <a' cis>4. r16 <bes e>
  |   <c ees>4. r16 q <g b>4. d'16\rest <a d>
  |   <e! gis>4. b'16\rest q <g bes>4
    }
    \revert Stem.details.beamed-lengths
    r16^\markup { \normalsize \char ##x274A } g a e
  | f4~ f8 e
    \once\override Script.color = \greyTextColor
    e2\parenthesize\prallprall
  | d1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  \showStaffSwitch
  %1
  | r4 \highlightSubject { r8 d16 e f8 d a' d,
  | cis4 r16 a' g a f a d, f bes g d f
  | e g c, e a f c e d f bes, d g e b d
  | cis e a, cis e g cis, e g bes! e, g cis,! bes' a g
  %5
  | f a d, f a, e' d cis \unHighlightSubject d } f b, d gis, d' c b
  | a8 a16 b c8 c16 d e8 e16 fis gis8 fis16 gis
  | a8 f! d f g! e c e
  | f d b! d d r r d
  | b! d e gis, a[ c] e r
  %10
  | e r dis r d r cis r
  | c r b r bes r a r
  | a4 r8 d e4 a~
  | a r8 f g4 r8 e
  | f4 r8 d e r r e
  %15
  | cis4. cis8 d4 cis!8 e
  | d4 e~ e8 a gis a16 gis
  | a4 r8 c, b4 r
  | r r8 bes a4 c\rest
  | b4\rest b8\rest a g4 \change Staff = "lower" \voiceOne d'4\rest
  %20
  | e16\rest a,8 a16 e'16\rest a,8 a16 d16\rest g,8 g16 c\rest g8 g16
  | c16\rest f,8 f16 b\rest f8 f16 g4 a8\rest g
  | e d c4~ c a'8\rest c,
  | c4 d8\rest b c4 f\rest
  | \override MultiMeasureRest.staff-position = #6 R1
  %25
  | \hideStaffSwitch \change Staff = "upper" \voiceTwo
    c''8 a f a b g e g
  | a f d f f4 f8\rest f
  | d f~ f16 f e d c8 c b d
  | c4 r8 ees d4 d8\rest d
  | c4 r16 e d c bes! d
    %g,_\markup { \tiny "l.H." } bes r d_\markup { \tiny "r.H." }  c bes
    \change Staff = "lower" \voiceOne g, bes
    \change Staff = "upper" \voiceTwo r d c bes
  %30
  | \showStaffSwitch \change Staff = "lower" \voiceOne
    a16 c f, a r16 c bes a g bes e, g c, bes' a g
  | f4 r r r8 a
  | g4 r s2
  | s g'8 ees c ees
  | f d bes d ees c a c
  %35
  | c4 c8\rest c a c d a
  | g ees d a' bes
    \hideStaffSwitch \change Staff = "upper" \voiceTwo bes'~ bes16 d c bes
  | \override Tie.extra-offset = #'(0 . -1)
    a4~ a16 c bes a g4~ g16 bes a g
  | f4~ f16 a g f ees4~ ees16 g \highlightSubject { f ees
    \revert Tie.extra-offset
  | d8
    \change Staff = "lower" \voiceOne
    bes
    \change Staff = "upper" \voiceTwo
    f'
    \change Staff = "lower" \voiceOne bes, a4
    g'16\rest f ees f
  %40
  | d f bes, d g ees bes d c ees a, c f d a c
  | bes d g, bes ees c g bes a c f, a c ees a, c
  | ees g c, ees a, g' f ees d f bes, d f, c' bes a
  | \unHighlightSubject bes8 } bes16 c d8 d16 e f8 f,16 g a8 a16 b
  | c8 c16 d e8 e16 f g8 g,16 a b8 b16 cis
  %45
  | d8 \change Staff = "upper" \voiceTwo
    d16 e f8 f16 g a8 a16 b cis!8 b16 cis
  | d8 bes g bes c! a f a
  | bes g e g g4 g8\rest g
  | e g a cis, d f \highlightSubject { \unHighlightSubject a } g
  | f c\rest e c\rest e4 a
  %50
  | b4 g8\rest e' e4 g,8\rest c
  | d4 e,8\rest b' c4 e,8\rest a
  | b4 e,8\rest b' gis4. gis8
  | a4 s2.
  | s4. g8 f f\rest f c\rest
  %55
  | e c\rest ees b\rest d b\rest des a\rest
  | cis c\rest c g\rest d'4 g
  | a d g8 ees c ees
  | f d bes d ees c a c
  | c4 r4 r2
  %60
  | \override MultiMeasureRest.staff-position = #-6 R1
  | g16\rest bes a g f a d, f r a g f e g cis, e
  | r16 g f e f e
    \change Staff = "lower" \voiceOne
    d cis d8 d16 e f8
    \change Staff = "upper" \voiceTwo
    f16 g
  | a8 a16 b cis8 b16 cis d8 bes g bes
  | c a f a bes g e g
  %65
  | g r
    \once\override TextScript.extra-offset = #'(-3.5 . 1.8)
    \showStaffSwitch \change Staff = "lower" \stemUp
    cis,16 e a, cis e g cis, e a, g' f e
  | d f a, d
    \change Staff = "upper" \stemDown
    \once\override TextScript.extra-offset = #'(0.5 . 0.5)
    f4 \hideStaffSwitch e r4
  | s1*13
  %80
  | s4
    \revert Stem.details.beamed-length
    \magnifyMusic 0.75 {
      \stemUp \change Staff = "lower" \stemDown cis,32[ e g bes]
      \change Staff = "upper" \stemUp cis! e g e
      \stemDown e4. e16\rest e
  | a4. g16\rest a d,4. d16\rest d
  | b4. b16\rest b e4
    }
    r4
  | d d2 cis4
  | a1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \override VoiceFollower.color = \greyTextColor
  \override VoiceFollower.style = #'dashed-line
  %1
  | s1*55
  %56
  | r4 \highlightSubject { r8 a bes g d' g,
  | fis4 d'16\rest d c d bes d g, bes ees c g bes
  | a c f, a d bes f a g bes ees,! g c a e g
  | fis a d, fis a c fis, a c ees a, c fis,! ees' d c
  %60
  | \unHighlightSubject bes } d g, bes d, a' g fis g bes e,! g cis, g' f e
  | s1*2
  | s2 d'
  | c bes4 b
  %65
  | a8 r \showStaffSwitch \change Staff = "upper" b4\rest s2 \hideStaffSwitch
    \change Staff = "lower"
  | s1*17
  %83
  | a4 b a4. g8~
  | g4
    \once\override Script.color = \greyTextColor
    fis8\parenthesize\prall
    e fis2\fermata
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | R1*10
  %11
  | r2 r4 \highlightSubject { r8 d16 e
  | f8 d a' d, cis4 r16 a' g a
  | f a d, f bes! g d f e g c, e a f c e
  | d f bes, d g e b d cis e a, cis e g cis, e
  %15
  | g bes! e, g cis,! bes' a g f a d, f a, e' d cis!
  | \unHighlightSubject d } f b, d gis, f' e d c e a, c e, d' c b!
  | a8 a16 b c8 c16 d e e' d c b a g fis
  | g8 g,16 a bes8 bes16 c d d' c bes a g f! e
  | \stemDown f8 f,16 g a8 a16 bes c8 c16 d e8 d16 e
  %20
  | f8 d bes d e c a c
  | d bes g bes bes4 b8\rest bes
  | g bes c c, f a c c,
  | d f g g c,4 \highlightSubject { g'8\rest c16 d
  | \stemNeutral e8 c g' c, b4 r16 g' f g
  %25
  | e g c, e a f c e d f b, d g e b d
  | c e a, c f d a c b d g, b d f b, d
  | f a d, f b, a' g f e g c, e g, d' c b!
  | \unHighlightSubject c } g e g c g' a g fis a d, fis g, a' g f
  | \stemDown e! g c, e f, g' f e d4 e
  %30
  | f d bes c
  | a16\rest d c bes a bes a g f8 f16 g a8 a16 bes
  | c8 c16 d e8 e16 fis g8 g16 a bes8 bes16 c
  | d8 d16 e fis8 e16 fis g,4 r8 c
  | f,!4 r8 bes ees,4 b8\rest a'
  %35
  | d,4 r8 d fis4 r8 fis
  | g c, d4 g16 bes ees, g c, bes' a g
  | \stemNeutral f! a d, f bes, a' g f ees g c, ees a, g' f ees
  | d f bes, d g, f' ees d c ees a, c f, ees' d c
  | \once\stemDown bes4 r8 g' f4 r
  %40
  | bes r8 g g4 r8 f
  | f4 r8 ees ees4 r
  | \override MultiMeasureRest.staff-position = #-4
    R1*3
  | \override MultiMeasureRest.staff-position = #0
    R1*4
  %49
  | r4 \highlightSubject { r8 a,16 b! c8 a e' a,
  | gis4 r16 e' d e c e a, c f d a c
  | b d g, b e c g b a c f, a d b fis a
  | gis b e, gis b d gis, b d f b, d gis,! f' e d
  | \stemDown \unHighlightSubject c32 b a } b c d e fis
    gis fis e fis gis a \stemUp b[ c]
    d c b c d e f! d
    \stemDown b c d c b c d b
  | gis8 r r s s2
  %55
  | s1
  | \stemDown g,2\rest a4\rest a8\rest g
  | d'4 b8\rest d g4 b,8\rest c
  | f!4 b,8\rest bes ees4 g,8\rest a
  | d1
  %60
  | g4 f,\rest g2\rest
  | \stemNeutral d'4 d' bes g
  | a \highlightSubject { r8 g f d a' d,
  | cis4 \stemDown r16 a' g a f a d, f bes! g d f
  | e g 	c,! e a f c e d f bes, d g e b d
  %65
  | cis e a, cis e g cis, e g bes! e, g cis,! bes' a g
  | \stemNeutral f a d, f a, f' e d cis4 } r
  | s1*13
  %81
  \magnifyMusic 0.75 {
  |  \override PianoStaff.Arpeggio.arpeggio-direction = #DOWN
     \override PianoStaff.Arpeggio.color = \greyTextColor
     <cis e g bes>4\arpeggio s g'4. r16 g
  |  fis4. r16 fis f4. r16 f
  |  d4. r16 d cis4
  }
     \stemDown r4
  | d gis, a2
  | d,1\fermata
    \fine
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
    opus = "BWV 948"
    title = \markup { "Fuge d-Moll" }
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
    \tempo 4 = 72
  }
}
