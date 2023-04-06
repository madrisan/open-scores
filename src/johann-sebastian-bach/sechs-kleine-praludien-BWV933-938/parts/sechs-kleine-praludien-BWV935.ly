Global = {
  \key d \minor
  \time 3/8
  \include "./global.ly"
}

textmordent = \markup { \musicglyph "scripts.mordent" }

Sopran = \context Voice = "one" \relative c' {
  \voiceOne
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | d16[ cis d a d f]
  | e[ d e a, e' g]
  | f8[ a a]
  | a4.\mordent
  %5
  | a16[ bes a f' d a]
  | bes[ a bes g bes d]
  | e[ f e c g' bes,]
  | a[ g a f a c]
  | d[ ees d c d bes]
  %10
  | c[ d c bes c a]
  | bes[ c bes a bes g]
  | a[ bes a g a f]
  | bes8[ g' g,]
  | a[ f' a,]
  %15
  | d[ f bes,]
  | c[ f a,]
  | g16[ a b! c d e!]
  | f[ aes g f e d]
  | e[ g f e d c]
  %20
  | bes![ d c bes a! g]
  | a[ bes a g a f]
  | d8 g8.[ a32 bes]
  | f8 e4\trill
  | f4.
  }
  \break
  \repeat volta 2 {
  %25
  | a'16[ bes a c a f]
  | g[ a g c g e]
  | f[ a g f e d]
  | e[ d c d e f]
  | g8[ fis16 g a fis]
  %30
  | g8[ d ees]
  | c16[ ees d c bes a]
  | bes[ a g a bes g]
  | a[ g a d bes d]
  | fis,[ e fis d' g, d']
  %35
  | a[ g a d g, d']
  | fis,[ e fis d' a c]
  | bes[ a bes d e g]
  | a,4 a'8
  | d,16[ f!8 e16 d cis]
  %40
  | d16[ e f d f d]
  | cis8 a'4~
  | a8[ d, c!~]
  | c bes4~
  | bes16[ a g f! e cis']
  %45
  | d[ e d cis d f]
  | g,8[ cis e~]
  | e16[ bes a g f e]
  | d4.
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  | s4.*23
  %24
  | a'4.
  | s4.*23
  | f4.

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  \repeat volta 2 {
  %1
  | R1*3/8
  | R1*3/8
  | d16[ cis d a d f]
  | e[ d e a, e' g]
  %5
  | f8[ d f]
  | g[ g,] r
  | r c[ e]
  | f[ f,] r
  | bes'[ g' g,]
  %10
  | a[ f' f,]
  | g[ e' e,]
  | f[ c' ees]
  | d16[ ees d c d bes]
  | c[ d c bes c a]
  %15
  | bes[ c bes a bes g]
  | a[ bes a g a f]
  | b!8[ d f]
  | d[ b! g]
  | c[ g e]
  %20
  | c[ d e]
  | f16[ e f c f a]
  | bes[ a bes g bes d]
  | c[ d c bes a g]
  | \stemDown r f[ c a] f8
  }
  \break
  \repeat volta 2 {
  %25
  | f''8[ f, f']
  | e[ a, c]
  | d[ b! g]
  | c[ e, g]
  | c,16[ d c ees c a]
  %30
  | bes![ c bes d bes g]
  | a[ c bes a g fis]
  | g[ a bes c d e!]
  | fis8[ d g]
  | a[ d, bes']
  %35
  | c8[ d, bes']
  | a[ d, fis]
  | g16[ fis g bes g e]
  | cis[ b! cis e cis a]
  | f!8[ g a]
  %40
  | d16[ cis d a d f]
  | e[ d e a, e' g]
  | fis[ e fis d fis a]
  | g[ fis g d g bes]
  | cis,8[ a g']
  %45
  | f!16[ g f e f d]
  | bes'[ c bes a bes g]
  | f8[ g a]
  | b,16\rest d[ a f] d8
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
      \Sopran
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 935"
    title = \markup { "3. Kleines Präludium d-Moll" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 4 = 100
  }
}
