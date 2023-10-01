Global = {
  \key c \major
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

VoiceOne = \context Voice = "one" \relative c' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral\slurNeutral
  %1
  | \tempo "Allegretto moderato" 4 = 84
    r16 c[ d e] \tuplet 6/4 { f[ e d e d c] } g'8-.[ c b c]
  | d16-.[ g, a b] \tuplet 6/4 { c[ b a b a g] } d'8-.[ g f g]
  | e16[ a g f] \tuplet 6/4 { e[ f g f g a] } g[ f e d] \tuplet 6/4 { c[ d e d e f] }
  | e[ d c b] \tuplet 6/4 { a[ b c b c d] } c[ b a g] \tuplet 6/4 { fis[ g a g a b] }
  %5
  | a8_.[ d,_.] c'8.[ d16] b[ a g fis] \tuplet 6/4 { e[ fis g fis g a] }
  | \tuplet 6/4 { g[ a b a b c] } \tuplet 6/4 { b[ c d c d e] }
    d[ b32 c d16 g] b,8[^\parenthesize\prall a16 g]
  | g8 r r4 r16 g[ a b] \tuplet 6/4 { c[ b a b a g] }
  | fis8 r r4 r16 a[ b c] \tuplet 6/4 { d[ c b c b a] }
  | b8 r r4 r16 d[ c b] \tuplet 6/4 { a[ b c b c d] }
  %10
  | c8 r r4 r16 e[ d c] \tuplet 6/4 { b[ cis d cis d e] }
  | d8^.[ cis^. d^. e^.] f^.[ a,^. b!^. cis^.]
  | d[_. fis,_. gis_. a_.] b^.[ c^.] d4~
  | d16[ e, fis gis] \tuplet 6/4 { a[ gis fis gis fis e] } e'[ d c e] d[ c b d]
  | c[ a' gis b] a[ e f d] gis,[ f' e d] c8[\parenthesize\prall b16 a]
  %15
  | a16[ a' g f] \tuplet 6/4 { e[ f g f g a] } g2~
  | g16[ e f g] \tuplet 6/4 { a[ g f g g e] } f2~
  | f16[ g f e] \tuplet 6/4 { d[ e f e f g] } f2~
  | f16[ d e f] \tuplet 6/4 { g[ f e f e d] } e2~
  | e16[ c d e] \tuplet 6/4 { f[ e d e d c] } d[ e f g] \tuplet 6/4 { a[ g f g g e] }
  %20
  | f[ g a b] \tuplet 6/4 { c[ b a b a g] } c8^.[ g^.] e[ d16 c]
  | c[ bes a g] \tuplet 6/4 { f[ g a g a bes] }
    \once\override Staff.TextScript.extra-offset = #'(0 . -2)
    a[_\markup { "poco rall." } b c e,] d[ c' f, b]
  | %<c g e>1^\fermata\arpeggio
    <c g e>1^\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral\slurNeutral
  %1
  | r2 r16
    %\shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Slur
    c[ d e] \tuplet 6/4 { f[ e d e d c] }
  | g'8-.[ g,-.] r4 r16 g'[ a b] \tuplet 6/4 { c[ b a b a g] }
  | c8^.[ b^. c^. d^.] e^.[ g,^. a^. b^.]
  | c^.[ e,^. fis^. g^.] a^.[ b^.] c4~
  %5
  | c16[ d, e fis] \tuplet 6/4 { g[ fis e fis e d] } g8^.[ b,^. c^. d^.]
  | e^.[ fis^. g^. e^.] b8.[ c16] d8-.[ d,-.]
  | r16 g[ a b] \tuplet 6/4 { c[ b a b a g] } d'8^.[ g^. fis^. g^.]
  | a16[ d, e fis] \tuplet 6/4 { g[ fis e fis e d] } \clef "treble" a'8_.[ d_. c_. d_.]
  | g,16[ g' f e] \tuplet 6/4 { d[ e f e f g] } f8_.[ e_. f_. d_.]
  %10
  | e16[ a g f] \tuplet 6/4 { e[ f g f g a] } g8_.[ f_. g_. e_.]
  | f16[ bes_2 a_3 g] \tupletUp\tuplet 6/4 { f[ g a g a bes_2] }
    a_1[ g f e] \tuplet 6/4 { d[ e f e f g_2] }
  | f_1[ e d c] \tuplet 6/4 { b[ c d c d e_2] } d_1[ c b a] \tuplet 6/4 { gis[ a b a b c_2] }
  | \clef "bass"
  | b8^._1[ e,^.]
    \once\override Beam.positions = #'(-1 . 0)
    d'8._2[ \staffUpper e16]
    \staffLower\stemNeutral c_2[ b_3 a_1 g!] \tuplet 6/4 { fis[ g a gis_4 a b] }
  %15
  | \tuplet 6/4 { a[ b c b_4 c d] } \tuplet 6/4 { c[ d e d_4 e f] } e8^.[ a,^. e'^. e,^.]
  | a8^.[ a,^.] r4 r16 e''16[ d c] \tuplet 6/4 { b[ cis d cis d e] }
  | d2~ d16[ a b c] \tuplet 6/4 { d[ c b c b a] }
  | b2~ b16[ d c b] \tuplet 6/4 { a[ b c b c d] }
  | c2~ c16[ g a_3 bes] \tuplet 6/4 { c[ bes a bes a g] }
  %20
  | a8^.[ bes^. a^. g^.] f^.[ d'^. c^. bes^.]
  | a^.[ f'^. e^. d^.] e16[ d, e_3 f] \tuplet 6/4 { g[ f e f e d] }
  | e8^.[ c^. d^. e^.] f16[ d e f] g8_.[ g,_.]
  | %<\parenthesize c c,>1\arpeggio\fermata
    c,1\fermata
    \fine
}

\score {
  <<
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
    opus = "BWV 772a"
    title = \markup { "Invention I " \char ##x00b7 " C-Dur" }
    subtitle = \markup \normal-text \italic  {
      "Johann Sebastian Bach's Manuscript (1723)"
    }
    subsubtitle = \markup \normal-text \italic \small {
      "(revised version with triplets)"
    }
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
    \tempo 4 = 84
  }
}
