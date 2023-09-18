Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

voiceOneOssia = \relative c'' {
  %1
  | \stopStaff s1
  | s2 s8 \startStaff s8 \key d \minor
    << {
      \omit TupletBracket
      \tuplet 3/2 { a'32[ gis fis } gis8 a16]
    } \\ {
      s8 d,\laissezVibrer
    } >>
  | \stopStaff
    \override Staff.KeySignature.break-visibility = #all-invisible
    s1
  | s2 s8
    << {
      s16 \startStaff \hideNotes g~ \unHideNotes g[ f e f]
    } \\ {
      \omit TupletBracket
      s8 \tuplet 3/2 { d32 cis d } cis8.
    } >>
}

voiceThreeOssia = \relative c {
  %1
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieUp
  %1
  | r16 d cis d a8 f'~ f16 e d e a,8 g'~
  | g16 f e d \stemUp a'4~ a16 gis fis gis gis8.\downprall a16
  | a4~ a16 d, cis d g4~ g16 cis,! b! cis
  | f4. a8 g4~ g16 f e f
  %5
  | d4 r16 bes' a bes e,4~ e16 a g a
  | d,4~ d16 d e f g4~ g16 f e d
  | c2~ c16 bes a bes g d' c d
  | g, bes a bes~ bes c bes c a4 f'8\rest f~
  | f16 e8. g8\rest g8~ g16 f e f c8 a'~
  %10
  | a16 g f g c,8 bes'~ bes16 a8.~ a4~
  | a16 d, cis d g4~ g16 f e g f4~
  | f16 e d e a,8 d~ d16 c b c fis,8 b~
  | b16 a gis a~ a gis fis gis r a gis a e8 c'~
  | c16 b a b e,8 d'~ d16 c b c ees4~
  %15
  | ees16 d8. f8\rest fis g2~
  | g16 fis bes a fis4 g16 d c d g,8 f'~
  | f16 e! d e c8 bes'~ bes16 a g bes a g f e
  | d4~ d16 f e d cis4~ cis16 a d c
  | bes2~ bes16 a gis b a g f g
  %20
  | f4~ f16 a g a bes!8[ b] c[ cis]
  | d2~ d4. d8
  | cis[ c] b[ bes] a4 gis8 g
  | fis f e4 d2\fermata
   \fine
}

VoiceTwo = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \override Rest.staff-position = #0
  \stemNeutral\tieDown
  \showStaffSwitch
  \override VoiceFollower.color = \grayTextColor
  %1
  | R1
  | \staffLower d16\rest a gis a \hideStaffSwitch e8 \staffUpper c'~ \showStaffSwitch
    c16 b a b \staffLower e,8 \hideStaffSwitch \staffUpper d'~ \showStaffSwitch
  | d16 c b c
    \shape #'((0 . 0) (0 . -2) (0 . -2) (0 . 0)) Tie
    f!4~ f16 b, a b
    \shape #'((0 . 0) (0 . -2) (0 . -1) (0 . 0)) Tie
    e4~
  | e8 a, d16 e d c! b8. cis16 cis4_\prall
  %5
  | d16 d cis d \staffLower g,4~ g16 \hideStaffSwitch \staffUpper c \showStaffSwitch bes c
    \staffLower f,4 ~
  | f16 \hideStaffSwitch \staffUpper bes \showStaffSwitch a c bes4 ~ bes16 c bes a bes a g f
  | e8 bes'~ bes16 a g a f2~
  | f4 e! d16\rest f e f c8 a'~
  | a16 g f g c,8 bes'~ bes16 a8. e8\rest f'~
  %10
  | f16 e8. e,8\rest g'~ g16 f8.~ f16 e d c
  | bes4~ bes16 a bes g cis!4 d16 bes a bes
  | gis8[ a] fis[ f] e4 dis8 d
  | cis c b4 a g\rest
  | b2\rest e16\rest \staffLower e16 dis e a,8 \hideStaffSwitch \staffUpper g'~
  %15
  | \showStaffSwitch g16 fis e! fis d!8 c'~ c16 bes a bes c d c d
  | ees4~ ees16 d ees c d g,\rest e8\rest b4\rest
  | b2\rest f'16\rest \staffLower f e f c8 \hideStaffSwitch \staffUpper a'~
  | \showStaffSwitch a16 g f g \hideStaffSwitch \staffLower bes,8 \staffUpper g'~
    g16 \staffLower f e f a,8 \staffUpper f'~
  | \showStaffSwitch f16 e d f ees d cis d cis8 d e4~
  %20
  | e8 a, d4~ d16 g f g e bes' a g
  | a d, c'!8~ c16 bes a bes a g fis g d8 bes'~
  | bes16 a g a d,8 g~ g16 f e! f b,8 e~
  | e16 d cis d~ d cis b cis d2
    \fine
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieUp
  %1
  | d8 e f d a' b cis a
  | \clef treble \stemDown d4_~ d16 c! b a e'4 \clef bass e,
  | \stemNeutral a, r r2
  | r16 d cis d a8 f'~ f16 e d e a,8 g'~
  %5
  | g16 \tieDown f e d bes'!4~ bes16 e, d c a'4~
  | a16 d, c d g,8 \tieUp f'~ f16 e d e c8 bes'~
  | bes16 a g a f8 ees' d c bes a
  | bes g c c, f, g a f
  | c' d e c f g a f
  %10
  | c' d e c f16 c bes c f,8 f'~
  | f16 bes, a bes e,8 e'~ e16 a, g a d,8 d'~
  | d c!~ c16 b a b gis8 a~ a16 gis fis gis
  | a8[ dis,] e[ e,] a b c a
  | e' fis gis e a4_~ a16 g fis! g
  %15
  | d8[ c] bes![ a] g16 g' fis g d8 bes'~
  | bes16 a g a d,8 c'~ c16 bes a bes c bes a g
  | c8 d e c f,4 r8 f
  | bes a g bes a g f d
  | g f g e! a b cis a
  %20
  | d16 d, cis d a8 f'~ f16 e d e a,8 g'~
  | g16 fis e fis d8 c' bes a bes16 a g a
  | g fis e fis g f ees d cis8 d~ d16 cis b cis
  | d8 gis, a4 d,2\fermata
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
    opus = "BWV 790"
    title = \markup { "Sinfonia IV (d-Moll)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 4. = 63
  }
}
