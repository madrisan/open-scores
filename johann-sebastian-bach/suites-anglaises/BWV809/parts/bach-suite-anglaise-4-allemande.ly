\version "2.23.7"

Global = {
   \key f \major
   \time 4/4
}

Upper = \relative c'' {
  \clef treble
  \Global
  \stemUp \partial 16 f16
  | << { f8~ f32 f e d } \\ c8 \\ a >> c16 d c bes
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      a bes c a bes c  f, g a f g a
    }
  | c,8 f  f8.\prall e32 f
    << { g8 g } \\ { r f } >>  << { g8.\prall f32 g } \\ e4 >>
  | << { a16 c d e } \\ f,4 >>  << f'~ \\ { r16 c bes a } >>  << { f'16 f e f  g e f g } \\ bes,2~ >>
  | << c2~ \\ { bes16 bes a g  a f g a } >>  << { c16 c bes a } \\ d,4 >>  << { bes'16 g a bes } \\ { r8 d, } >>
  %5
  | << { e16 g a bes  c4~  c16 bes a d  bes8.\prall a32 bes } \\ { c,4  r16 c d e  f4. e8 } >>
  | << { a16 c d e  f4.  e8   d16 g f g } \\ { f,4  r16 a b c  d8 c  b!4 } >>
  | << { e4~  e16 e f g } \\ { c,16 g a b  c4~ } >>
    <<
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      a'16 b c  a b c  f, g a  f g a
    }
    \\
    c,2~
    >>
  | << { d4~  d16 d e f } \\ { c16 c b! a  b!4~ } >>
    <<
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      g'16 a b!  g a b!  e, f g  e f g
    }
    \\
    b,2~
    >>
  | << { c4~  c16 ees d c } \\ { b16 b a g  a4~ } >>
    <<
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      fis'16 g a  fis g a  c, d ees  c d ees
    }
    \\
    a,2
    >>
  %10
  | <<
    {
      \tupletUp \tuplet 3/2 8 {
        \override TupletBracket.tuplet-slur = ##t
        b!16 c d  b! c d  g, a b!~
      }
      b!8
      c ees  aes, c
    }
    \\
    {
      g4  r8
      \tupletDown \tuplet 3/2 8 {
        \override TupletBracket.tuplet-slur = ##t
	f16 g aes
      }
      ees8
    }
    >>
  | fis8 a!  d, fis  b,!16 d g b,  c a' d, b'
  | e, g c e,  << { d16 c' f, b! } \\ { d,8 f } >>  << { c'4. e16\rest } \\ { g,4. g16\rest } \\ { e4. c16\rest } >> \partial 16
  \bar ":|."

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  \Global
  \partial 16 r16
  | f8 f,  r16 f'' e d  c8 f  a, c
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      f,16 g a f g a
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      d, e f d e f
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      bes, c d bes c d
    }
    g,16 c bes c
  | f,8 f'  f8.\prall e32 f  g8 g  g8.\prall f32 g
  | a4  r8 a  bes4  r8 bes
  %5
  | bes2  a8 d  g, c
  | f, e  d c  b!16 d e f  g8 g,
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      c16 d e c d e
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      a,16 b c a b c
    }
    f,8 a'  d, f
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      b,!16 c d b c d
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      g,16 a b g a b
    }
    e,8 g'  c, e
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      a,16 b c a b c
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      fis,16 g a fis g a
    }
    d,8 a'  fis d
  %10
  | g4  r8 g'  aes16([g fis g])  c,([g' fis g])
  | a!16([g fis g])  c,([ees d c])  f!4~  f16 f e d
  | c e a f  g8 g,  << { c4  c8 r16 } \\ { r16 << { \stemUp c, e g } \\ { c,8.~ c8. } >> } >> \partial 16
  \bar ":|."

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" \Upper
    \new Staff = "lower" \Lower
  >>
  \header {
    subtitle = "Allemande."
  }
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
