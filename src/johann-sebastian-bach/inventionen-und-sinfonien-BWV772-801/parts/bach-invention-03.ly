Global = {
  \key d \major
  \time 3/8
  \include "../global.ly"
}

extendLaissezVibrer = #(define-music-function (parser location further) (number?)
#{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) -0.8)
#})

voiceOneOssia = \relative c' {
  \stopStaff
  \omit TupletBracket
  \partial 8 { s8 }
  %1
  | s4.*2
  | \startStaff
    \key d \major
    a'8[ b \tuplet 3/2 { cis32( b cis } d16)]
  | d64[( cis d16.) b16 a cis d]
  | \stopStaff
    \override Staff.KeySignature.break-visibility = #all-invisible
    s4.*6
    \noBreak
  %11
  | s16 \startStaff s16 \tuplet 3/2 { cis32[( b cis } b8) a16]
  | \stopStaff
    s4.*10
  %22
  | \startStaff cis8[ b32 ais b8.~]
  | b16[ cis] \tuplet 3/2 { d32( cis d } cis8) b16
    \stopStaff
  | s4.*15
  %39
  | s8. \startStaff s16 b32 a g a
  | b8 d32 cis b cis d8~
  | d16 \stopStaff s s4
  | s4.*3
  %45
  | s8. \startStaff s16 \tuplet 3/2 { cis32 b cis } d16
  | d64[ cis d16. b32 a r16 d8] \stopStaff
  | s4.*11
  %58
  | \startStaff d,16[ g]
    \set baseMoment = #(ly:make-moment 1/16)
    fis32 e \tuplet 3/2 { fis[ e fis] }
    \set baseMoment = #(ly:make-moment 1/8)
    e16 d
  | d4.\fermata\fine

}

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \override Score.MetronomeMark.Y-offset = #-3
  \tempo "Allegretto con brio" 4. = 64
  \partial 8 { d16[ e] }
  %1
  | fis16[ e g fis e d]
  | a'[ g fis e fis d]
  | a'8^.[_2 b^. cis16_3\mordent d]
  | cis8[\prall \once\stemUp\once\slurDown \appoggiatura b8 a cis16_2 d]
  %5
  | e[ cis fis d cis b]
  | e-5[ cis-4 d b a gis]
  | e'-4[ cis fis d cis b]
  | e-5[ cis-4 d b a gis]
  | cis-3[ b d cis b a]
  %10
  | fis'8^.-5[ gis,^.-2 a^.-1]~
  | a16[ b] b8.[\parenthesize\prall a16]
  | a4 r8
  | r e'^. a~
  | a16[ b, cis dis e fis]
  %15
  | g[ fis a g fis e]
  | b'8^.[ b,^.] r
  | r fis^._1[ b_3]~
  | b16[ ais_2 b_1 cis d_1 e]
  | fis[ e g fis e d]
  %20
  | e-4[ d fis e d cis]
  | d-4[ cis e d cis b]
  | cis8^.[ ais\prall b]~
  | b16[ cis] cis8.[\prall b16]
  | b16-4[ fis gis ais b-1 cis]
  %25
  | d[ cis e d cis b]
  | g'4.~-5
  | g4.~
  | g16[ e, fis gis a-1 b]
  | cis[ b d cis b a]
  %30
  | fis'4.~
  | fis~
  | fis16[ b,-1 e-5 d cis b]
  | cis[ b d cis b a]
  | gis8[\prall e_. a16-2 b]
  %35
  | cis[ b d-5 cis-3 b a]
  | fis'8.[ gis,16-2 a gis]
  | a-1[ d b8.\parenthesize\prall a16]
  | a8.[ cis16 d e]
  | fis,8_.-1[ g_. a\reverseturn ]
  %40
  | b^.-1[ cis\reverseturn d]~
  | d16[ cis e d cis d]
  | e[ d cis b] a-1[ g-4]
  | fis[ e g fis e d]
  | a'[ g fis e fis d]
  %45
  | a'8^.-2[ b^. cis16\mordent d]
  | cis8[\prall \once\stemUp \once\slurDown \acciaccatura b a d]
  | d_.[ d,_. d'_.]
  | d_.[ d,_. d'_.]
  | d_.[ d,_. d'_.]
  %50
  | d_.[ d,_.] d'16-1[ e]
  | fis[ e g fis e d]
  | b'8^.-5[ cis,^.-2 d-1]~
  | d16[ e] e8.[\parenthesize\prall d16-1]
  | d8_.-5[ d,_. g-5]~
  %55
  | g16[ a, b cis] d-1[ e]
  | fis[ e g fis e d]
  | b'8.[ cis,16-1 d cis]
  | d[ g] e8.[\parenthesize\prall d16]
  | d4.\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \partial 8 { r8 }
  %1
  | R1*3/8
  | r8 r d16[ e]
  | fis[ e g fis e d]
  | a'[ g fis e fis d]
  %5
  | a'8^.[ a,^. a'^.]
  | a^.[ a,^. a'^.]
  | a^.[ a,^. a'^.]
  | a^.[ a,^. a'^.]
  | a^.-5[ b^. cis^.]
  %10
  | d16[ cis e d cis b]
  | cis[ d e8^. e,^.]
  | a16-2[ e fis gis a b-1]
  | cis-3[ b d cis b a]
  | e'8^.[ e,^.] r
  %15
  | r b'^.[ e]~
  | e16[ fis, gis ais-3 b-1 cis-3]
  | d[ cis e d cis b]
  | fis'8^.[ fis,^. \clef "treble" e'^.]
  | d_.-5[ b'16 ais b8]
  %20
  | cis,_.[ ais'16-1 gis-3 ais8-2]
  | b16[ a! g!-1 fis e d]
  | e[ d fis e d cis]
  | d-3[ e fis8_. fis,_.] \clef "bass"
  | b^.[ fis^. d^.]
  %25
  | b4 r8
  | r16 b[ cis dis-3 e-1 fis-3]
  | g[ fis a g fis e]
  | a4.~
  | a~
  %30
  | a16[ a, b cis d e-1]
  | fis-3[ e g fis e d]
  | gis8.[ e16 fis gis]
  | a[ gis fis e d-5 fis-3]
  | e-1[ d cis b cis a]
  %35
  | a'8^.[ fis^. cis^.]
  | d16-3[ cis-4 e-1 d cis b]
  | cis[ d e8_. e,_.]
  | a16-5[ cis-3 d e fis-4 g]
  | a[ g b a g fis]
  %40
  | g-3[ fis-4 a-1 g fis e]
  | fis[ e g-2 fis e d]
  | a'8^.[ a,^.] r
  | R1*3/8
  | r8 r d16-5[ e]
  %45
  | fis[ e g fis e d]
  | a'[ g fis e fis d]
  | a'[ fis b-1 g-2 fis e]
  | a-1[ fis-2 g e d cis]
  | a'[ fis b g fis e]
  %50
  | a[ fis g e d cis]
  | d8^.[ e^. fis^.]
  | g16-1[ fis-3 a-1 g fis e]
  | fis[ g a8^. a,^.]
  | b16-3[ a c b a g]
  %55
  | d'4.~
  | d16[ cis b-3 a-1 g fis]
  | g[ fis a g fis e]
  | fis[ g] a4
  | d,4.^\fermata
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
    composer = "Johann Sebastian Bach"
    opus = "BWV 774"
    title = \markup { "Invention III " \char ##x00b7 " D-Dur" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
    }
  }
  \midi {
    \tempo 4. = 64
  }
}
