Global = {
  \key c \minor
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

voiceOneOssia = \relative c'' {
  %1
  | \omit TupletBracket
    \stopStaff s1 s2 s8 \startStaff
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    s8 \key c \minor ees32 d ees d ees d c d
  | \set subdivideBeams = ##f
    %\undo\hide Clef
    %\set Staff.forceClef = ##t
    %\clef treble
    ees16 d c d  ees f g8
    aes32 g aes16 f8 r f
  | g32 f g16 ees8 s8 \stopStaff s8 s2
  | \override Staff.KeySignature.break-visibility = #all-invisible
    s1*21
  | \startStaff \key c \minor
    \set subdivideBeams = ##t
    g32[ f g16 ees16 d]
    \set subdivideBeams = ##f
    g[ f aes f] g8.[ aes16]
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/16)
    ees64[ d c d \tuplet 3/2 { ees32 d ees] } d16[ c]
  | c1\fermata\fine
}

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  %1
  | \override Score.MetronomeMark.Y-offset = #-3
    \tempo "Moderato ed espressivo" 4 = 40
    r8 c16_3[ b] c[ d ees g,] aes_2[ bes aes f] f'[ es d c]
  | b[ aes' g f] ees-2[ d-1 c-3 b-2] c-1[ d c d] d8.[\downprall c32 d]
  | ees16[ d c d] ees[ f g8] g[\prall f] r f-3
  | f[\prall ees] r d-4 ees[ aes,]~ aes16[ f bes f]
  %5
  | g8[ ees'-5]~ ees16[ d-3 ees bes] c-1[ ees aes g] f[ ees d-1 c-2]
  | bes[ d g f] ees[ d c-1 bes-2] aes[ c f c] d8.[ d16]
  | ees[ bes c bes] g'4~ g16[ bes, c bes] aes'4~
  | aes16[ bes, ees-3 d-1] g[ f aes g] c-5[ bes aes g] f[ bes aes bes]
  | g[ bes aes bes] ees,[ g-4 f g] c,[ d ees f] d-1[ ees f g]
  %10
  | ees-2[ f g-1 aes] bes[ aes c bes] aes[ g-1 f-2 aes] d,4~
  | d16[ d-2 g d] ees[ c-1 d-4 bes-2] c4~-1 c16[ g'-4 fis a]
  | c,-1[ bes-2 c8]~ c16[ fis-3 e d] bes'8.[ e,16] fis8.[ g16-3]
  | g8-5 g,16-3[ fis] g[ a bes d,] ees-2[ f ees c] c'[ bes a g]
  | fis[ ees' d c] bes[ a g-3 fis] g-3[ a-4 g-1 a] a8.[\downprall g32 a]
  %15
  | bes16[ a g a] bes[ c d8] d[\prall c] r c-3
  | c[\prall bes] r a-3 bes[ ees,-2]~ ees16[ c f c]
  | d8[ bes']~ bes16[ a bes f] g[ bes ees d] c[ bes a-1 g-2]
  | f[ a d c] bes[ a g-1 f-2] ees-1[ g c g-1] a8.[\prall a16]
  | bes[ f g f] d'4~ d16[ f, g f] ees'4~
  %20
  | ees16[ f, bes-3 a-1] d[ c ees d] g[ f ees d] c[ f ees f]
  | d-2[ c-1 bes a] d[ c ees d] c-1[ bes-2 a c] f4~
  | f16[ g, c b-1] ees-3[ d-1 f ees] aes[ g f ees] d[ g f g]
  | ees[ d-1] c-3[ b] c[ d ees g,] aes[ bes aes f] f'[ ees d c]
  | b[ aes' g f] ees[ d-1 c-3 b] c[ d c-1 d] d8.[\downprall c32 d]
  %25
  | ees16[ d c d] ees[ f g8] g[\prall f] r f-3
  | f[\prall ees16 d] g-3[ f aes g-3] g8.-4[ aes16] d,8.[\prall c16]
  | c1^\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \showStaffSwitch
  %1
  | R1*2
  | r8 \clef "treble" c16_3[ b] c[ d ees g,] aes-3[ bes aes f] f'[ ees d c]
  | b[ aes'-2 g-1 f] ees-3[ d-1 c b] c-2[ d-1 c-4 d-3] d8.[^\downprall c32 d]
  %5
  | ees16-2[ d c d] ees-2[ f-1 g8-3] g[^\prall f] r f-3
  | f[^\prall ees] r d-2 ees[ aes,-3]~ aes16[ f bes f]
  | g8-4[ ees'-1]~ ees16[ d-3 ees bes] c[ ees aes g] f-3[ ees-4 d-1 c-3]
  | bes[ d g f] ees-3[ d-1 c bes] aes[ c f c-4] d8.[^\prall d16]
  | ees[ bes c bes] g'4~ g16[ bes, c bes] aes'4~
  %10
  | aes16[ bes, ees d] g-1[ f-4 aes g] c[ bes aes g] f-5[ bes-1 aes bes]
  | g8 \clef bass ees,16-3[ f] g[ a-3 bes-2 d,] ees[ f ees c] c'[ bes a g]
  | fis[ ees'-2 d-1 c] bes-3[ a-1 g fis] g-3[ a-1 g-4 a] a8.[^\downprall g32 a]
  | bes16[ a g a] bes-2[ c-1 d8-3] d[^\prall c] r c^3
  | c[^\prall bes] r a^3 bes[ ees,-3]~ ees16[ c f! c]
  %15
  | d8-4[ bes'-2]~ bes16[ a bes f] g-4[ bes-3 ees-2 d-1] c[ bes a-1 g-3]
  | f[ a d c] bes[ a-1 g f] ees[ g c-1 g-4] a8.[^\prall a16]
  | bes[ f g f] d'4~ d16[ f, g f] ees'4~
  | ees16[ f, bes a] \staffUpper\stemDown d-1[ c-4 ees d] g[ f ees d] c-5[ f-1 ees f]
  | d[ f ees f] \staffLower bes,-4[ d-1 c d] g,-5[ a bes c] a-4[ bes c d]
  %20
  | bes-4[ c d-1 ees-3] f[ ees g f] ees-3[ d-1 c-4 ees-2] a,4~-\finger \markup \tied-lyric "5~3"
  | a16[ d, g fis] bes-2[ a c-1 bes-4] ees-3[ d-2 c-1 bes] a[ d c d]
  | b-5[ f' ees d] c-1[ bes aes! g-1] f[ ees d c] g'8[ g,]
  | c8.-5[ d16] ees[ f g8] g[^\prall f] r f-2
  | f[^\prall ees]~ ees16[ f ees d-1] c[ bes aes-1 g] f[ ees f g-1]
  %25
  | c,8 c'16-3[ b] c[ d ees g,] aes-3[ bes! aes f] f'[ ees d c]
  | b-5[ aes'-2 g f] ees[ d-1 c b] c-1[ g aes f] g8-3[ g-1]
  | c,1_\fermata
    \fine
}

\score {
  <<
  \new Staff = "ossia" \with {
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
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceTwo
      >>
    >>
  }
  >>
  \header {
    composer = ##f % "Johann Sebastian Bach"
    opus = "BWV 773"
    title = \markup { "Invention II " \char ##x00b7 " c-Moll" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override StaffGrouper.staff-staff-spacing = #'(
                              (basic-distance . 0)
                              (padding . 0))
    }
  }
  \midi {
    \tempo 4 = 40
  }
}
