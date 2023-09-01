Global = {
  \key d \minor
  \time 3/8
  \include "../global.ly"
}

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | d16[ e f g a bes]
  | cis,[ bes' a g f e]
  | f8[ a d]
  | g,[ cis e]
  %5
  | d16[ e f g a bes]
  | cis,[ bes' a g f e]
  | f[ d e f g a]
  | bes,[ a' g f e d]
  | e[ c d e f g]
  %10
  | a,[ g' f e d c]
  | d[ e f d e f]
  | g,8 r r
  | c16[ d e c d e]
  | f,8 r bes~
  %15
  | bes[ a g]
  | c16[ bes a g f e]
  | f[ g g8.\parenthesize\prall f16]
  | f8[ c' c]
  | c4.\prall~
  %20
  | c~
  | c~
  | c16[ bes a g f e]
  | c'[ d, e fis g a]
  | bes[ a g f e d]
  %25
  | bes'[ c, d e f g]
  | a[ b c d e f]
  | gis,[ f' e d c b]
  | c[ b d c b a]
  | gis[ a gis fis e d]
  %30
  | c[ d e fis gis a]
  | d,[ c' b a gis fis]
  | e[ fis gis a b c]
  | fis,[ e' d c b a]
  | gis[ a b c d e]
  %35
  | a,[ f' e d c b]
  | a'[ gis fis e a8]~
  | a16[ d, b8.\prall a16]
  | a8.[ a16 bes c]
  | d,8[ fis a]
  %40
  | bes16[ g a bes c d]
  | e,[ d' c bes a g]
  | a8[ f'16 e f8]
  | g,[ e'] r
  | d16[ e f g a bes]
  %45
  | cis,[ bes' a g f e]
  | f8[ d g,]~
  | g16[ d' cis e a, cis]
  | d[ b cis8.\parenthesize\prall d16]
  | d[ c! bes! a g f]
  %50
  | bes[ cis, d e f g]
  | a[ d f,8 e16 d]
  | d4.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | R1*3/8*2
  | d16[ e f g a bes]
  | cis,[ bes' a g f e]
  %5
  | f8[ a d]
  | e,[ g cis]
  | d,[ d' f,]
  | g[ a bes]
  | c,[ c' e,]
  %10
  | f[ g a]
  | bes16[ g a bes c d]
  | e,[ d' c bes a g]
  | a[ f g a bes c]
  | d,[ c' bes a g f]
  %15
  | e[ c d e f g]
  | a,[ g' f e d c]
  | d[ bes c8 c,]
  | f16[ g a bes c d]
  | e,[ d' c bes a g]
  %20
  | a[ bes c d e f]
  | g,[ f' e d c bes]
  | a[ bes c a bes c]
  | fis,8 r r
  | g16[ a bes g a bes]
  %25
  | e,8 r r
  | f8[ f' d]
  | b[ gis e]
  | a16[ gis a b c d]
  | e4.~^\prall
  %30
  | e~
  | e~
  | e~
  | e~
  | e8[ e' d]
  %35
  | c[ b a]
  | d[ e f]
  | d[ e e,]
  | a16[ a, bes! c d ees]
  | fis,[ ees' d c bes a]
  %40
  | g8.[ g16 a bes]
  | c,8[ g' c]
  | f16[ g a b cis d]
  | e,[ d' cis b a g]
  | f8[ a d]
  %45
  | e,[ g cis]
  | d,16[ e f g a bes]
  | cis,[ bes' a g f e]
  | f[ g a8 a,]
  | bes8.[ c16 bes a]
  %50
  | g[ bes' a g f e]
  | f[ g a8 a,]
  | d,4.\fermata
    \fine
}

\score {
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceTwo
      >>
    >>
  }
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 775"
    title = \markup { "Invention IV" "(d-Moll)" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4. = 76
  }
}
