Global = {
  \key a \major
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

voiceOneOssia = \relative c'' {
  %1
}

voiceThreeOssia = \relative c {
  %1
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #6
  %1
  | \stemUp a8 gis16 a b8 a16 gis a4~ a16 b gis a
  | b e, cis' e, d' e, e'8 cis16 b a b cis dis e fis
  | \stemNeutral gis a b8~ b16 a gis fis e dis cis b e4~
  | \stemUp e dis e8 d16 cis d e fis gis
  %5
  | a8. a16 gis8. gis16 fis8. fis16 e8. e16
  | d8 cis b4 a8 cis fis4~
  | fis8 b, e4~ e8 dis16 e fis8 e16 dis
  | e4~ e16 fis dis! e fis b, gis' b, a' b, b'8
  | gis16 a b a gis fis e d! cis2~
  %10
  | cis8 cis16 d e8 d16 cis b2~
  | b8 b16 cis d8 cis16 b a2~
  | a8 a16 b cis8 b16 a gis2~
  | gis8 gis16 a b8 a16 gis a8 ais16 bis cis8 bis16 ais
  | bis8 bis16 cis dis8 cis16 bis cis8 gis16 a! b8 a16 gis
  %15
  | a fis gis a b cis d e! d8. d16 cis8. cis16
  | b8 a gis4 fis8 cis' fis4~
  | fis8 b, gis'4~ gis8 cis, a'4~
  | a8 dis, b' a gis gis16 a b8 a16 gis
  | a4 gis fis a~
  %20
  | a8 gis16 a b a gis fis e d! cis b a cis e g
  | fis2~ fis8 d16 e fis8 e16 d
  | e2~ e8 cis16 d e8 d16 cis
  | d2~ d8 b16 cis d8 cis16 b
  | cis a fis'8~ fis16 dis e8~ e16 cis d8~ d16 b cis8
  %25
  | gis8 a4 gis8 a8 gis16 a b8 a16 gis
  | a4~ a16 b gis a b e, cis' e, d' e, e'8
  | cis16 b a b cis d e fis b, a gis a b cis d e
  | a, gis fis gis a b cis d gis, b gis e \stemDown e'4~ \tieUp
  | e16 e cis a a'4~ a16 b, d fis gis4~
  %30
  | gis16 a, cis e fis4~ fis16 e dis e \stemUp fis8 a\rest
  | cis,!8. d16 b8.\parenthesize\prall a16 a2\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \stemDown\tieDown
  \override VoiceFollower.color = \grayTextColor
  \mergeDifferentlyDottedOn
  %1
  | R1*2
  | \staffLower e8 dis16 e fis8 e16 dis e4~ e16 fis dis e
  | fis b, gis' b, a' b, \staffUpper b'8 \staffLower gis16 a b a gis fis e d
  %5
  | cis \staffUpper cis' fis8~ fis16 dis e8~ e16 cis d8~ d16 b cis8
  | gis a4 gis8 a4. a8
  | gis4. gis8 fis2
  | g16\rest dis' cis b a \staffLower gis fis e dis8 e4 dis8
  | e4 \staffUpper r r8 gis16 a b8 a16 gis
  %10
  | a2~ a8 fis16 gis a8 gis16 fis
  | gis2~ gis8 eis16 fis gis8 fis16 eis
  | fis2~ fis8 dis16 eis fis8 eis16 dis
  | eis8 eis16 fis gis8 fis16 eis fis4 e
  | dis fis2 eis4
  %15
  | fis16 r r8 r4 r16 cis' b8~ b16 b a8
  | eis fis4 eis8 fis4. a8
  | \once\override Tie.staff-position = #-1.0
    d4~ d8 b
    \once\override Tie.staff-position = #0.0
    e4~ e8 cis
  | \once\override Tie.staff-position = #0.0
    fis2~ fis8 b,16 cis d8 cis16 b
  | cis8 cis16 dis e8 dis16 cis dis8 dis16 e fis8 e16 dis
  | e2 r
  %20
  | g,8\rest a16 b cis8 b16 a gis2~
  | gis8 gis16 a b8 a16 gis fis2~
  | fis8 fis16 gis a!8 gis16 fis e2~
  | e8 r16 a gis8. gis16 fis8. fis16 e8. e16
  | d8 cis b4 e16 cis \staffLower d8~ d16 b cis8~
  %25
  | cis16 \staffLower a b gis a4~ a16 gis a4 gis8
  | a8 \staffUpper cis \staffLower fis4~ fis8 b, e4~
  | e8 \staffLower a, d4~ d8 b16 cis d8 cis16 b
  | cis8 a16 b cis8 b16 a b8 gis16 a b8 a16 gis
  | a8 fis16 gis a8 gis16 fis gis8 d'\rest \staffUpper a' g\rest
  %30
  | a8. b16 gis4 a2
}

VoiceThree = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \stemNeutral\tieDown
  %1
  | a8 r gis r fis r cis r
  | d r e r a, a' gis fis
  | e b\rest \clef treble \stemDown dis' a\rest cis g\rest gis g\rest
  | a g\rest b g\rest e' a,\rest a4\rest
  %5
  | \clef bass a8 gis16 a b8 a16 gis a4~ a16 b gis a
  | b e, cis' e, d' e, e'8 cis16 b a b cis dis e fis
  | b, a gis a b cis dis e a, gis fis gis a gis a b
  | gis8 a16 b \clef treble cis4~ cis16 b a gis fis8 b
  | \clef bass e,4 r16 a gis fis eis cis fis cis gis' cis, eis cis
  %10
  | fis cis gis' cis, fis cis e! cis dis b e b fis' b, dis b
  | \stemNeutral e b fis' b, e b d! b cis a d a e'! a, cis a
  | d a e' a, d a cis a bis gis cis gis dis' gis, bis gis
  | cis1~
  | cis2 r16 d'! cis b cis a b cis
  %15
  | fis,8 eis16 fis gis8 fis16 eis! fis4~ fis16 gis eis fis
  | gis cis, a' cis, b' cis, cis' b a b cis b a gis fis e!
  | b' cis d cis b a gis fis cis' d e d cis b a gis
  | dis' e fis e dis cis b a \clef treble e'2~
  | e1~
  %20
  | e16 \clef bass cis[ b a] gis fis e d! cis a' d, a' e a cis, a'
  | d, a' e a d, a' cis, a' b, gis' cis, gis' d gis b, gis'
  | cis, gis' d gis cis, gis' b, gis' \stemUp ais, fis' b, fis' cis fis ais, fis'
  | b, fis' cis fis b, fis' a,! fis' gis, e' e, e' fis, e' gis, e' \stemNeutral
  | a,8 gis16 a b8 a16 gis a4~ a16 b gis a
  %25
  | b e, cis' e, \stemUp d' e, e'8 cis \stemDown fis4 eis8
  | fis4. e!8 d[ cis b e]
  | a,4 r8 a' gis4. gis8
  | \tieDown fis4. fis8 e2~
  | e1~
  %30
  | e2~ e16 e gis b c gis a dis,
  | e8 r \stemUp e, r a2\fermata
    \fine
}

\score {
  <<
  \new Staff = "ossiaupper" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
  }
  { \voiceOneOssia }
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
        \VoiceTwo
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceThree
      >>
    >>
  }
  \new Staff = "ossialower" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
    \clef bass
  }
  { \voiceThreeOssia }
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 798"
    title = \markup { "Sinfonia XII " \char ##x00b7 " A-Dur" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4 = 92
  }
}
