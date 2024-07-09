Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

greyTextColor = #(x11-color "dimgray")

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemUp\tieUp
  \override MultiMeasureRest.staff-position = #0
  %1
  | a8 b c a e'4 r8 a,
  | f'4 r8 a, e'4 e16\rest d c b
  | a b c a d8 d d c16 b d c b a
  | b2\trill a16 b c d e a, e' fis
  %5
  | g e g a b e, a b c b a c b4~
  | b16 a g b a4~ a16 g fis a g4~
  | g16 fis e g fis e dis fis b,8 dis e4~
  | e16 g fis e dis e cis dis e8 b g'4~
  | g16 f e g f4~ f16 e d f e4~
  %10
  | e16 d c e d4~ d g16\rest b, c d
  | b4 r16 e fis gis a4 r16 a g f
  | g4~ g16 f e g f4~ f16 e d f
  | gis, b c d e4 d2~
  | d8 c16 d e8 d16 c b2~
  %15
  | b8 a16 b c8 c16 d e4~ e16 dis e fis
  | dis4~ dis8 e16 fis g8 a\rest b4\rest
  | b,8\rest fis b4 a2~
  | a16 c! b a g a fis a g4. g8
  | f4. f8 e4 r8 c'~
  %20
  | c16 fis, gis a b4~ b16 e, a gis a4~
  | a16 a g fis g4~ g16 g c b c4~
  | c16 c b a b4~ b16 b e dis e4~
  | e16 e d cis d4~ d16 d c b c4~
  | c16 c b a b4~ b16 a b gis a c fis, e
  %25
  | dis fis g a b8 e,~ e16 g fis e dis fis b a
  | g b c d! e g, f e d a' b c d f, e d
  | gis8 b e,4~ e d16 c b a
  | gis8 e' a4~ a16 gis a fis gis b e, d
  | c8 e a a a g!16 f! a g f e
  %30
  | f8 a d d d c16 b d c b a
  | b8 d, g g g f!16 e g f e d
  | e8 g c c c bes16 a c bes a g
  | a8 b c a e'4 e8\rest a,
  | f'4 f8\rest a, e'4 g16\rest d c b
  %35
  | a b c a d8 d d c16 b d c b a
  | b2\trill a4 d\rest
  \break
  | \override MultiMeasureRest.staff-position = #2
    R1*4
  %41
  | e4\rest e dis d
  | cis c b bes
  | a d2 cis4
  | d16 e f8~ f16 d b e c8 a fis dis'
  %45
  | e16 fis g8~ g16 e cis a' f8 d b gis'
  | a16 b c!8~ c16 a fis b g a bes8~ bes16 g e a
  | f g aes8~ aes16 f d g e8 a fis4
  | g16 cis, d8~ d16 bes g e'! f b, c8~ c16 aes f d'
  | ees16 d f8~ f16 ees c ees a, ees' d8~ d16 aes g d'
  %50
  | g b, c8~ c16 a' b, c b4 bes
  | a8 d16 cis d2 c4
  | b8 e16 dis e4~ e dis
  | e8 d cis e a,16 cis d8~ d16 c b a
  | gis4 d'16\rest gis, a8~ a16 fis gis a b8 f'\rest
  %55
  | R1
  | r2 r4 e
  | dis d cis c
  | b e2 dis4
  | e16 b e8~ e16 d c b a8 d~ d16 c b a
  %60
  | gis8 e'~ e16 d c e d c b d~ d d c b
  | c4~ c16 e d c b4~ b16 d cis e
  | a,4 d2 cis4~
  | cis~ cis16 c b a gis b e8~ e16 a gis a
  | d, e f8~ f16 d b e c d ees8~ ees16 c a d
  %65
  | b!4 g'16\rest cis, dis e dis4 f16\rest d e f!
  | g a bes8~ bes8. a16 dis, e'\rest b8\rest b\rest d16\rest e,
  | a4 e'16\rest a, g a bes a g8~ g8. g16
  | f4~ f16 a g f e4 f
  | g4~ g8. f16 e4 g\rest
  %70
  | \override MultiMeasureRest.staff-position = #4
    R1
  | \once\override Voice.MultiMeasureRest.X-offset = #1.4 R1
  | \override MultiMeasureRest.staff-position = #2
  | R1*2
  | r2 a,8 b c a
  %75
  | d4 d8\rest a f'4 f8\rest a,
  | e'4 f16\rest d cis b! a b c a d8 d
  | d8 c16 b d c b a b2~
  | b8 gis a4~ a16 b c8~ c16 a fis b
  | a gis fis e a8 a~ a16 gis a fis gis8.\trill a16
  %80
  | a1\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \stemDown\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \greyTextColor
  %1
  | R1*4
  %5
  | e8 fis g e a4 r8 e
  | c'4 r8 e, b'4 r16 a g fis
  | e fis g e a8 a a g16 fis a g fis e
  | fis2\trill e16 fis g a b e, b' cis
  | d4~ d16 c b a g a b g c b a g
  %10
  | fis g a fis b a g fis e fis g e a4~
  | a16 gis a b c4~ c16 a b c d4~
  | d16 c b d c4~ c16 b a c b4~
  | b~ b16 a gis a~ a c b a gis a fis gis
  | a2~ a16 a g fis e4~
  %15
  | e8 e~ e16 a8.~ a16 c d b c4~
  | c16 b a c
    \once\override Tie.staff-position = #0.5
    b4~ \once\stemUp \shiftOn b8 b\rest c4\rest
  | s1*16
  %33
  | a4 e16\rest a g f g4~ g16 f e g
  | f4~ f16 e f d gis4 f\rest
  %35
  | c\rest e16\rest c' b a gis b e,8~ e d16 c
  | f8 e\rest e d d c c4\rest
  | d\rest e dis d
  | cis c b e~
  | e dis e16 fis g8~ g16 e cis a'
  %40
  | f8 d b gis' a16 b c8~ c16 a fis b
  | g8 e cis ais' b fis~ fis16 e d g
  | e8 cis dis16 e fis8~ fis16 e b d c d e8~
  | e16 d a c! b g b d g a bes8~ bes16 g e a
  | f8 d b! e~ e e dis fis
  %45
  | b4 a~ a8 a gis b
  | e,4 e\rest e8\rest g cis, a'~
  | a f b,! g' c!16 d ees8~ ees16 c a d
  | g,4 e\rest e2\rest
  | g4\rest g fis f
  %50
  | e ees d8 g16 fis g4~
  | g f e8 a16 gis a4~
  | a g fis2
  | e~ e16 a, b cis d a d8~
  | d16 e b d c8. c16 b8 e16 fis gis a b8~
  %55
  | b16 gis e a fis gis a8~ a16 fis gis b e, f g8~
  | g16 e fis a d, e f8 e4~ e16 gis a c
  | fis, gis a8~ a16 fis gis b e, fis g8~ g16 e fis a
  | dis, e fis8 e e\rest e4\rest a
  | gis g fis f
  %60
  | e4 a2 gis!4
  | a4 s2.
  | s4 \once\stemUp a gis g
  | fis f e a~
  | a gis a8. g16 fis4~
  %65
  | fis16 e fis gis a4~ a d,\rest
  | g8\rest b16\rest g' e g fis8~ fis16 fis e dis e g cis,8~
  | cis16 cis d e f4~ f8. f16 e d e8~
  | e16 e d cis d4~ d16 b! cis e~ e cis d f~
  | f d e cis a cis d8 e16 d cis! b a4^~
  %70
  | \once\stemUp a g16 f e d cis b cis e a,8 a\rest
  | d'16\rest \stemUp g, a bes a g e' g, f2
  | e8 e a a a4 c8\rest gis
  | a4 b~ b16 e, fis gis a8 a
  | a g~ g f16 e \stemDown f a g f e g f e
  %75
  | d4 d\rest d\rest a'
  | gis g fis f
  | e a2 gis8. b16
  | e,4~ e8 dis16 e fis8 e16\rest fis~ fis8 fis
  | e4~ e16 e fis dis e2
  %80
  | <cis e>1
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \stemUp\tieUp
  \showStaffSwitch
  \override MultiMeasureRest.staff-position = #0
  \override VoiceFollower.color = \greyTextColor
 %1
  | R1*9
  %10
  | r2 a8 b c a
  | e'4 r8 a, f'4 r8 a,
  | e'4 e16\rest d c b a b c a d8 d
  | d c16 b d c b a b2\trill
  | a16 e a b c a c d e4~ e16 d c b
  %15
  | c b c d e4~ e16 e fis gis a4~
  | a16 g fis a
    \change Staff = "upper" \stemDown\tieDown
    \once\override NoteColumn.force-hshift = #0.4
    g4~ g16 fis e g fis e dis fis
  | b,8 dis~ dis16 e dis e~ e g fis e dis e cis dis
  | e4 b8\rest dis e b e4~
  | e8 a, d4~ d16 b c d e8 a
  %20
  | d,4. d8 c4~ c16 e d c
  | b4~ b16 b e d e4~ e16 g f! e
  | d4~ d16 d g fis g4~ g16 b a g
  | fis4 f16\rest a gis fis e4~ e16 a gis a
  | d,4~ d16 f e d c2
  %25
  | b4 b\rest a8 b c a
  | e'4 b8\rest a f'4 b,8\rest a
  | e'4 a,16\rest d c b a b c a d8 d
  | d c16 b d16 c b a
    \once\override Staff.Script.extra-offset = #'(1.1 . 1.8)
    \hideStaffSwitch
    b2_\trill
  | \change Staff = "lower" \stemUp
    a16 e a b c a c \showStaffSwitch d
    \change Staff = "upper" \stemDown
    e2~
  %30
  | e16
    \hideStaffSwitch
    \change Staff = "lower" \stemUp
    a, d e f d f g
    \showStaffSwitch
    \change Staff = "upper" \stemDown
    a2~
  | a16 \hideStaffSwitch \change Staff = "lower" \stemUp d,, g a b g b c
    \showStaffSwitch \change Staff = "upper" \stemDown
    d2~
  | d16 \hideStaffSwitch \change Staff = "lower" \stemUp g, c d e c e f
    \showStaffSwitch \change Staff = "upper" \stemDown
    g2~
  |
    \once\override NoteColumn.force-hshift = #0.8 g16
    \hideStaffSwitch \change Staff = "lower" \stemUp\tieUp
    c, d e a,8 d~ d16 d cis b cis4
    \showStaffSwitch
  | d16\rest a b cis d8 c b4 b\rest
  %35
  | d2\rest d4\rest e8\rest a,~
  | a a\rest gis a\rest <e a> a\rest e'4\rest
  | \override MultiMeasureRest.staff-position = #5
    R1*5
  %42
  | f4\rest a, gis g
  | fis f e a~
  | a gis a16 b c8~ c16 a fis b
  %45
  | g8 e cis a' d16 e f8~ f16 d b e
  | c!8 a fis dis' e4. cis8
  | d4. \clef treble b8 c c' a d,~
  | d8. fis16 g8 e16 g c,!8. e16 f8 d16 f
  | b,8 d c ees d4 g\rest
  %50
  | R1
  | \once\override MultiMeasureRest.staff-position = #8
    R1
  | R1*2
  | r2 c,4\rest d!
  %55
  | cis c b bes
  | a d~ d16 c b d c4~
  | c8 b16 a b4~ b8 a16 b c8 a~
  | a16 c b a g fis g8~ g16 fis g e fis8.\prall e16
  | e8. b'16 e4~ e16 d c b a8 d~
  %60
  | d16 c b d c b a c b8 d e e,
  | a16
    \hideStaffSwitch \change Staff = "upper" \stemDown\tieDown
    e' a gis a4~ a16 a g fis g4~
  | g16 g f e f e f d
    \showStaffSwitch \change Staff = "lower" \stemUp\tieUp b d c b a4~
  | a r r2
  | R1
  %65
  | s2 e'16\rest a, b cis d!4
  | cis c b bes
  | a d2 cis4
  | d8 e f d a'4 b8\rest d,
  | bes'4 r8 d, a'4
    \change Staff = "upper"
    \once\override Voice.Rest.X-offset = #0.2 g,16\rest \stemDown g' f e
  %70
  | d \change Staff = "upper"\stemDown e f d \stemUp g8 g g f16 e g f e d
  | \once\stemDown e2_~ \once\override NoteColumn.force-hshift = #0.8 e8 a, d d
  | \stemDown\tieDown d4 c! b16 b c d e8 e
  | e d~ d c16 b c4 c8\rest cis
  | d4 e \change Staff = "lower" \stemUp\tieUp a,2~
  %75
  | a16 a g f e g f e d
    \hideStaffSwitch \change Staff = "upper" \stemDown
    bes'' a g \once\override NoteColumn.force-hshift = #0.3 f e
    \change Staff = "lower" \stemUp \showStaffSwitch
    d c!
  | b!4 a d c\rest
  | a8\rest gis a c f, d' b d~
  | d b c4~ c8 c\rest a b
  | c2 b
  %80
  | a1
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #-4
  \override Script.direction = #UP
  %1
  | R1*13
  | r2 e8 fis g e
  %15
  | a4 b,8\rest e c'4 b,8\rest e
  | b'4 d,16\rest a' g fis e fis g e a8 a
  | a g16 fis a g fis e fis2\trill
  | \stemNeutral\tieNeutral
    \override Rest.staff-position = #0
    e8 g, a b e,16 b' e d cis d b cis
  | d e d c b c a b c d c b a b gis a
  %20
  | b c b a gis a fis gis a8 b c a
  | e' e, e' d c d e c
  | g' g, g' fis e fis g e
  | b'4 r8 e, c'!4 r8 e,
  | b'4 r16 a gis fis e fis gis e a8 a
  %25
  | a8 g16 fis a g fis e fis2\trill
  | e8 d! cis4 d8 d, d'4~
  | d16 c! b d c b a g! f2
  | e8 e' f c d b e e,
  | \stemDown\tieDown a a\rest g4\rest a16\rest e e' d cis e a, cis
  %30
  | d8 b\rest a4\rest b16\rest a a' g fis a d, fis
  | g,8 g\rest f4\rest g16\rest d d' c b d g, b
  | c8 c\rest b4\rest c16\rest g g' f e g c, e
  | f2 e4 d16\rest a' g a
  | d,2~ d16 c d b c d e c
  %35
  | f d e f b, c d b e fis gis e a8 f
  | d b\rest e b\rest a b\rest a'4
  | gis g fis f
  | e a2 gis4
  | a16 b c8~ c16 a fis b g8 e cis a'
  %40
  | d,16 e f!8~ f16 d b e c8 a fis dis'
  | e16 fis g8~ g16 e cis fis b, fis' g a b4~
  | b16 g e a fis8 dis e4 g,\rest
  | R1*4
  %47
  | r2 e'4\rest c'
  | b bes a aes
  | \clef bass g c2 b4
  %50
  | c8 a! g fis g4 d16\rest e f g
  | cis, e a,8~ a16 b'! c d gis, b e,8~ e16 fis g a
  | dis, fis b,8~ b16 e fis g a b c8~ c16 a fis b
  | g a bes8~ bes16 g e a fis4 f
  | e4 dis e e,
  %55
  | a dis, e8 e' d cis
  | d c b! a gis gis' a4~
  | a8 fis b e,~ e a, a' fis
  | g dis e8. ais,16 b2
  | e,8 g\rest g4\rest g2\rest
  %60
  | R1
  | a8 b c a e'4 d8\rest a
  | f'!4 g,8\rest a e'4 d16\rest d cis b
  | a b cis a d8 d d c16 b d c b a
  | b2_\trill a4 a'
  %65
  | gis g fis f
  | e a2 g4~
  | g d16\rest f e f g a bes8~ bes16 g e a
  | d,8 b\rest b4\rest \clef treble c'2\rest
  | b4\rest \clef bass d, cis c
  %70
  | b bes a d~
  | d cis d16 a d e f d f g
  | a e, a b c a c d e8 e, b'16\rest e d e
  | fis e fis a gis b a gis a8 a, b16\rest a g a
  | b a b d cis e d cis d4 c!
  %75
  | b cis d2~
  | d16 d cis b cis e a, b c e d c b a gis b
  | c,8 g'\rest g\rest f' d16 e f8~ f16 d b e
  | c d e8~ e16 c a c dis,4 g8\rest dis'
  | e1
  %80
  | a,_\fermata
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
    opus = ##f # "BWV 904"
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
    \tempo 4 = 100
  }
}
