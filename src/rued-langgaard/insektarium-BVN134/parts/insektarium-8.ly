Global = {
   \key c \major
   \time 16/16
   \include "../global.ly"
}

noaccident = { \once\override Accidental.stencil = ##f }

Upper = \relative c'' {
   \clef treble
   \tempo \markup { \bold  "Prestissimo" }
   %1
   | \once\override Beam.positions = #'(-2 . -4)
     r32 a'16^>\pp\( aes e fis g ees d f! e! ees c ces d b
     \noaccident a
     c!32~
   | c32 f,16 e a gis a c b d, e fis a as g!
     \once\override Accidental.stencil = ##f
     b
     d cis32~
   | cis32 c!16 b bes
     \noaccident a
     aes g bes aes g
     \noaccident f
     \noaccident aes
     \noaccident e
     d cis d d'32~
   | \once\override Beam.positions = #'(-3 . -4)
     d32 des16 c
     \noaccident f
     \noaccident b,
     bes
     \noaccident a
     f' b,! bes cis a32\) r16 r4
   %5
   | \time 2/4
     s2
   | \time 4/4
     \once\override Beam.positions = #'(-1 . -2)
     f'16[\( gis
     \noaccident b
     a b c bes a g! gis a aes f fis g! ees]
   | d16[ c a b c aes g b bes a f fes g ees d f!]\)
   | b,16[^\( a d cis d f
     \noaccident e
     g, a b d cis c! e g fis~]\)
   | fis16[^\( f! e ees
     \noaccident d
     des c ees d! cis a cis a' g f! g
   %10
   | \time 2/4
     \change Staff = "lower"
     g' ges f bes e, ees d c']\)
     \change Staff = "upper"
   | \time 4/4
     r32
     \once\override Beam.positions = #'(-2 . -4)
     a16\( aes
     \noaccident e
     fis g ees d f! e! ees c ces d b
     \noaccident a
     c!32~
   | c32[ f,16 e a gis a c b d, e fis a aes g! b d cis32]\)
   | cis32[^\( c!16 b bes
     \noaccident a
     aes g bes aes g
     \noaccident f
     \noaccident aes
     \noaccident e
     d cis d d'32~]
   | \once\override Beam.positions = #'(-3 . -4)
     d32 des16 c
     \noaccident f
     \noaccident b,
     bes
     \noaccident a
     f' b,! bes cis a32\) r16 r4
   %15
   | s1
     \fine
}

Lower = \relative c'' {
   \clef treble
   %1
   | R1
   | d16^>[\pp\( c a b c aes
     \noaccident g
     b bes
     \noaccident a
     \noaccident f
     fes g ees d f!]
   | \once\override Beam.positions = #'(1 . 3)
     b,[ a
     \noaccident d
     cis d f
     \noaccident e
     \noaccident g,
     \noaccident a
     \noaccident b
     d cis c! e g fis]\)
   | \once\override Beam.positions = #'(2 . 5)
     fis[_\( f! e ees
     \noaccident d
     des
     \noaccident c
     \noaccident e
     d! cis a cis a' g f e
   %5
   | % \time 2/4
     \change Staff = "upper"
     g' ges f bes e, ees d c']\)
     \change Staff = "lower"
   | % \time 4/4
     r32 a16^>\pp[_\( aes
     \noaccident e
     fis
     \noaccident g
     ees d f! e! ees c ces d
     \noaccident b
     \noaccident a
     c!32~]
   | c32[ f,16 e a gis a c b d, e fis a aes g!
     \noaccident b
     d cis32~]
   | cis32[ c!16 b bes
     \noaccident a
     aes g bes
     \noaccident a
     g
     \noaccident f
     a e d cis d d'32~]
   | d32[ des16 c f
     \noaccident b,
     bes a f' b,! bes cis a32]\) r16 r4
   %10
   | s2
   | % \time 4/4
     f'16[_\( gis
     \noaccident b
     \noaccident a
     b c bes a g! gis a aes f fis g! ees]
   | d[ c a b c aes
     \noaccident g
     b bes
     \noaccident a
     \noaccident f
     fes g ees d f!]
   | \once\override Beam.positions = #'(1 . 3)
     b,[ a
     \noaccident d
     cis d f
     \noaccident e
     \noaccident g,
     \noaccident a
     \noaccident b
     d cis c! e g fis]\)
   | \once\override Beam.positions = #'(2 . 5)
     \shape #'((0 . 1) (0 . -4) (0 . 0) (0 . 9)) PhrasingSlur
     fis[_\( f! e ees
     \noaccident d
     des
     \noaccident c
     \noaccident e
     d! cis a cis a' g f e
   %15
   | \change Staff = "upper"
     g' ges f bes e, ees d c'] ees2\)
     \change Staff = "lower"
     \fine
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \new Staff = "upper" {
      \Global
      \Upper
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    % workaround to insert some vertical space after the opus
    composer = " "
   % opus = "BVN 134"
    subtitle = "Julus terrestris"
    subsubtitle = "(Millipede)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "VIII"
       %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 76
  }
}
