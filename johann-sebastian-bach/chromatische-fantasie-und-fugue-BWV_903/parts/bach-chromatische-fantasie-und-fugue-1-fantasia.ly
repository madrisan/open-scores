Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}

Upper = \relative c'' {
  \clef treble
  \tempo \markup {
    \italic
    \column {
       "rash, kernig"
      \general-align #Y #-1
      "rapidly with energy"
    }
  }

  \override TupletBracket.bracket-visibility = ##f
  \omit TupletNumber
  %1
  | r32 \stemUp d,[ e\< f] \stemDown g[ a b cis]\!
    \stemUp d\f c bes a g f e d  \stemDown cis[ d e f] \stemUp g[ a bes e--]  r4
  | r16 \stemDown a,32[\< b cis d e f]\!  \stemUp g[\f f e d cis b]
    a64 \stemDown g[ f e]  d32[ e f] \stemUp a[ cis! d] \stemDown f16--  r4
  | << {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tuplet 3/2 8 { r16^\markup{ \bold "(Allegro deciso.)" } d f } \tuplet 3/2 8 { r d g }
      \tuplet 3/2 8 { r d a' } \tuplet 3/2 8 { r d, bes' }
      \tuplet 3/2 8 { s16^\< s16 e, } \tuplet 3/2 8 { g[\! bes g] }
      \tuplet 3/2 8 { e[ cis a] } s8
    } \\ {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      d,8_\markup{\dynamic f\italic\small " robusto, poco legato ed egualmente" }   e  f g
      \tuplet 3/2 8 { a16[ cis] s16 }  s4  \tuplet 3/2 8 { g16 f e }
    } >>
  | << {
      \tuplet 3/2 8 { r16 f' d } \tuplet 3/2 8 { r g d }
      \tuplet 3/2 8 { r a' d, } \tuplet 3/2 8 { r bes' d, }
      \tuplet 3/2 8 { cis bes g }  s4  \tuplet 3/2 8 { bes16 cis e }
    } \\ {
      d,8 e f g\<
      s8\!  \tuplet 3/2 8 { e16 cis a } \tuplet 3/2 8 { cis e g } s8
    } >>

  %5
  | << {
      \tuplet 3/2 8 { r16 e'[ f] } bes8--  \tuplet 3/2 8 { r16 d,[ e] } a8--
      \tuplet 3/2 8 { r16 cis,[ d] } g8--  \tuplet 3/2 8 { r16 b,[ cis!] } f8--
    } \\ {
      d8-- \tuplet 3/2 8 { r16 d g, }  c8-- \tuplet 3/2 8 { r16 c f, }
      bes8-- \tuplet 3/2 8 { r16 bes e, }  a8-- \tuplet 3/2 8 { r16 a d, }
    } >>

  | << {
      \tuplet 3/2 8 { r16 bes' ees }    \tuplet 3/2 8 { r a, d }
      \tuplet 3/2 8 { r g, cis }        \tuplet 3/2 8 { r a d }
      \tuplet 3/2 8 { d16\rest f, bes } \tuplet 3/2 8 { d16\rest e, a }
      \tuplet 3/2 8 { d16\rest f, bes } \tuplet 3/2 8 { b16\rest e, a }
   } \\ {
     g8 f e f d cis d cis
   } >>
  | << {
      \tuplet 3/2 8 { d'16\rest f, bes } \tuplet 3/2 8 { gis f d }
      \tuplet 3/2 8 { b'16\rest d, f }   \tuplet 3/2 8 { gis b d, }
      \tuplet 3/2 8 { b'16\rest ees, a } \tuplet 3/2 8 { fis ees c }
      \tuplet 3/2 8 { b'16\rest c, ees } \tuplet 3/2 8 { fis a c, }
    } \\ {
      d8 r s2.
    } >>
  | \stemUp
    \tuplet 3/2 8 { r16 d g }  \tuplet 3/2 8 { f e d }
    \tuplet 3/2 8 { r d b' }   \tuplet 3/2 8 { f e d }
    \tuplet 3/2 8 { r cis e }  \tuplet 3/2 8 { f d s }
    \tuplet 3/2 8 { r cis e }  \tuplet 3/2 8 { f d s }
  | \tuplet 3/2 8 { r c f }    \tuplet 3/2 8 { dis c a }
    \tuplet 3/2 8 { r a c }    \tuplet 3/2 8 { dis fis a, }
    \tuplet 3/2 8 { r bes! e }  \tuplet 3/2 8 { cis bes g }
    \tuplet 3/2 8 { r g bes }  \tuplet 3/2 8 { cis e g, }
  %10
  | s1
  | s1
  | s2
    << {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tuplet 3/2 8 { r16 cis e } \tuplet 3/2 8 { r e g }
      \tuplet 3/2 8 { r g bes }   \tuplet 3/2 8 { r bes cis }
    } \\ {
      bes,8\( c f g\)
    } >>
  | << {
      \tuplet 3/2 8 { r16\( bes cis } \tuplet 3/2 8 { g' f e\) }
      \tuplet 3/2 8 { r\( cis e }     \tuplet 3/2 8 { bes' a g\) }
      \tuplet 3/2 8 { r bes, cis }  \tuplet 3/2 8 { g' f e }
      \tuplet 3/2 8 { r cis e }     \tuplet 3/2 8 { bes' a g }
    } \\ {
      a,,8\mf r g'  r a, r g'
    } >>
  | s2
    \tuplet 3/2 8 { f'16-> e d } \tuplet 3/2 8 { cis bes! a }
    \tuplet 3/2 8 { g16 f e }  s8
  %15
  | \stemDown
    \tuplet 3/2 8 { r16 g cis } \tuplet 3/2 8 { e d cis }
    \tuplet 3/2 8 { r e, g }    \tuplet 3/2 8 { bes a g }
    \tuplet 3/2 8 { r g cis }   \tuplet 3/2 8 { e d cis }
    \tuplet 3/2 8 { r e, g }    \tuplet 3/2 8 { bes a g }
    \stemNeutral
  | \tuplet 3/2 8 { r cis, d } \tuplet 3/2 8 { f g a }
    \change Staff = "lower" \tuplet 3/2 8 { d\rest f, gis }
    \change Staff = "upper" \tuplet 3/2 8 { a cis d }
    \change Staff = "lower" \tuplet 3/2 8 { f\rest a, cis }
    \change Staff = "upper" \tuplet 3/2 8 { d e f }
    \change Staff = "lower" \tuplet 3/2 8 { g\rest cis,! d }
    \change Staff = "upper" \tuplet 3/2 8 { f gis a }

  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  \override TupletBracket.bracket-visibility = ##f
  \omit TupletNumber
  | s1
  | s1
  | s1
  | s4 s8 s8\sustainOn s8 s8\sustainOff s4
  %5
  | s1
  | s1
  | s4 b'8 r c8 r a r
  | bes r gis r a \tuplet 3/2 8 { r16 r gis! } a8 \tuplet 3/2 8 { r16 r gis }
  | a8 r fis r g r e r
  %10
  | << {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tuplet 3/2 8 { r16 a d }    \tuplet 3/2 8 { b gis r }
      \tuplet 3/2 8 { r g c }      \tuplet 3/2 8 { a fis r }
      \tuplet 3/2 8 { r\( g[ bes } \tuplet 3/2 8 { cis e! cis] }
      \tuplet 3/2 8 { bes16 g f! } r8
    } \\ {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      fis8 \tuplet 3/2 8 { r16 r f }
      e8 \tuplet 3/2 8 { r16 r ees }
      d8 r
      r8 \tuplet 3/2 8 { ees!16[ d cis] }
    } >>
  | << {
      \tuplet 3/2 8 { r16\) f bes! } \tuplet 3/2 8 { gis f r }
      \tuplet 3/2 8 { r e a }     \tuplet 3/2 8 { fis ees r }
      \tuplet 3/2 8 { r d g } \tuplet 3/2 8 { e cis r }
      \tuplet 3/2 8 { r d f } \tuplet 3/2 8 { d b r } }
   \\ {
      d8 \tuplet 3/2 8 { r16 r d } cis8 \tuplet 3/2 8 { r16 r c }
      b8 \tuplet 3/2 8 { r16 r bes } a8 \tuplet 3/2 8 { r16 r aes }
    } >>
  | << {
      \tuplet 3/2 8 { r16 c^\markup{ \italic "(cresc.)" } ees } \tuplet 3/2 8 { r16 ees g }
      \tuplet 3/2 8 { r16 g c }   \tuplet 3/2 8 { r16 c ees } s2
    } \\ {
      g,,8\sustainOn c ees g s8\sustainOff s4.
    } >>
  | s1
  | \clef treble
    << {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tuplet 3/2 8 { r16 a' cis }
      \stemDown \change Staff = "upper" \tuplet 3/2 8 { d e f }
      \stemUp   \change Staff = "lower" \tuplet 3/2 8 { r cis! d }
      \stemDown \change Staff = "upper"
      \tuplet 3/2 8 { f g a }_\markup{
        \italic\small
        \column {
          "(geschwungen)"
          \general-align #Y #-1.5
          "(in soaring manner)"
        }
      }
      \stemNeutral \change Staff = "lower"
      s2
    } \\ {
      \omit TupletNumber
      f,8 r a^\<
      s8r\! s8 s8 \clef bass \tuplet 3/2 8 { d,16[ cis bes!] }
    } >>
  %15
  | a8 r cis r a r cis r
  | a r
    \clef treble \stemDown
    d r f r a r
    \clef bass
  \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" {
      \Global
      \Upper
      %\pageBreak
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = \markup { \italic\small "Interpretiert von Ferruccio Busoni" }
    %subtitle = ""
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Fantasia"
      %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}
