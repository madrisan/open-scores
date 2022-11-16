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
  | \stemUp
    \tuplet 3/2 8 { b gis a }  \tuplet 3/2 8 { b d, e }
    \tuplet 3/2 8 { f \stemDown b,[ c }   \tuplet 3/2 8 { d] \stemUp gis,[ a] }
    \tuplet 3/2 8 { b![ d, e } \tuplet 3/2 8 { f] b,[ c] d }
    \stemDown
    \tuplet 3/2 8 { gis,[ a b } \tuplet 3/2 8 { cis d] }
    \stemNeutral
  | \tuplet 3/2 8 { cis e d }  \tuplet 3/2 8 { cis b a }
    g r  r8
    \tuplet 3/2 8 { r16 f' e } \tuplet 3/2 8 { d bes a }
    g r  r8
  | \stemUp
    \tuplet 3/2 8 { r16 g' f } \tuplet 3/2 8 { e s s }
    \tuplet 3/2 8 { bes' a g } \tuplet 3/2 8 { s s d'[ }
    \tuplet 3/2 8 { cis b] s } \tuplet 3/2 8 { s f'[ e }
    \tuplet 3/2 8 { d] s s }   \tuplet 3/2 8 { gis[ fis e] }
  %20
  | \tuplet 3/2 8 { s cis[ e } \tuplet 3/2 8 { a e cis] }
    \tuplet 3/2 8 { e[ cis a } \tuplet 3/2 8 { cis a e] }
    \tuplet 3/2 8 { a[ e cis } \tuplet 3/2 8 { e cis a] }
    \stemDown
    s8
    << {
      a''32[\( gis a16\)]\fermata
    }
    \new Staff \with {
      alignAboveContext = "upper"
      fontSize = #-4
      \override StaffSymbol.staff-space = #(magstep -6)
      \omit Staff.Clef
      \omit Staff.TimeSignature
    } {
      \tuplet 6/4 {
        \omit TupletNumber
        \override TextScript.padding = #3
        a32[\( gis a fis gis a\)]\fermata
      }
    }
    >>
    \stemNeutral
    \bar "||"
  | << {
      b,32\rest^\markup { \italic "(sopra)" }  e,[\< f g a] \voiceTwo b![ cis d] e
      \voiceOne f[ g a bes\! a g f] e[ f g f e d s d] e[ d cis b! a s bes a]
    } \\ {
      s4 s4  s8 s16 cis32 s32  s8 s32 g s16
    }
    >>
  | << {
      g32[ f e f g f e d]  s d[ e d cis b! a] s32  s2
    } \\ {
      s4 cis32 s8. s32  s2
    }
    >>
  | s1
  | s4 s8 s32 e[ f g] f[ g a e f] \voiceTwo cis[ d a] s4
  %25
  | s8. \voiceOne d32[ c] b![ f'! e d] \voiceTwo gis[ fis e b'! ]
    a[ gis] \voiceOne d'[ c b! f'! e d] \voiceTwo gis16 \voiceOne a64[ g fis g g16.\trill\< fis64 g\!]
  | \tuplet 3/2 8 { a16[ d a] } \tuplet 3/2 8 { f[ a f] }
    \tuplet 3/2 8 { d[ f d] }   \voiceTwo \tuplet 3/2 8 { a[ d a] } \voiceOne
    \tuplet 3/2 8 { f[ a f] }   \tuplet 3/2 8 { d[ f d] }
    s4
  | s8^\markup { \italic "(continuando)" } \tuplet 3/2 8 { d16[ f a] }
    \tuplet 3/2 8 { \once\stemDown d16-^_\markup { \small\italic "l. H." } a[ f] } \tuplet 3/2 8 { d s8 }
    s8 s32 e[ g bes]
    \tuplet 3/2 8 { \once\stemDown e16-^ b[ g] } e32 s16.
  | s8 d32[ f a d]
    \tuplet 3/2 8 { \once\stemDown f16-^ d[ a] } f32[ d] s16
    s8 \tuplet 5/4 8 { ees32 fis a c ees }
    \tuplet 5/4 8 { \once\stemDown fis32-^ ees[ c a fis] } ees32 s16.
  | s8 d32[ g bes d]
    g-^ d[ bes g] \tuplet 3/2 8 { d16 s8 }
    s8 \tuplet 5/4 8 { f32 gis b! d f }
    \tuplet 6/4 8 { \once\stemDown gis-^ f[ d b gis f] } s8
  %30
  | s16 e64[ a cis e]
    \tuplet 6/4 8 { \stemDown a32-^ \stemUp a[ bes a g a] }
    \set subdivideBeams = ##t
    \set baseMoment = #(ly:make-moment 1/8)
    \tuplet 6/4 8 { bes32[\< a bes a bes a } bes a g a]\!
    \set subdivideBeams = ##f
    << {
      \tuplet 11/8 4 {
        \change Staff = "lower" {
          \omit TupletNumber
          g,,,32^\ff[ cis! e bes' cis! e
        }
        \change Staff = "upper" {
          g bes cis! e g]
        }
      }
      \stemDown bes4~-^
    } \\ {
      \change Staff = "lower" { g,,,2 }
      \change Staff = "upper"
    } \\ {
      << {
        s4
        \magnifyMusic 0.75 {
          \change Staff = "lower" {
            d'16\rest
            \voiceTwo <g bes cis e>8.
          }
        }
      } \\ {
        s4
        \magnifyMusic 0.75 {
          \change Staff = "upper" {
            g'16\rest
            \voiceOne <g bes cis e bes'>8.
          }
        }
      } >>
    } >>
  | << {
      \voiceTwo bes'32^. \voiceOne a[_\markup { \italic "(sciolto)" }  g f]
    } \\ {
      s16
    } >>
    \voiceTwo e32[ f g e]
    \voiceOne cis[ d e cis] \voiceTwo g[ a bes g]
    \voiceOne e[ f g e] \voiceTwo cis[ d e cis]
    \change Staff = "lower" {
      \voiceOne g[ a bes g] \voiceTwo e[ f g e]
    }
    \change Staff = "upper"
  | s1
  %33
  | s1
  \bar "||"
  \omit Staff.TimeSignature
  <<
    \new Staff = "organUpper" \with {
      alignAboveContext = "upper"
    } {
      \Global
      \omit Staff.TimeSignature
      \clef "treble"
  |   <dis' fis a b!>2^\markup { \italic "(quasi Organo)" }^-
      <dis fis a c>2^-
  %35 organUpper
  |   <e g bes cis>2  <fis g b! d>2^-
  |   <e gis b! d>2  <c e a c>2
  |   <c ees a c>2  <c e! bes' des>2
  |   <ees a c ees>2  <cis e! g bes! cis>2
  |   <d f a d>2  <c d fis a c>2
  %40 organUpper
  |   <bes! ees g bes!>2
      << {
        <bes! g' bes!>2
      } \\ {
        \voiceOne
        \shiftOn ees!4\( d\)
      } >>
  |   <bes cis e! g bes>2  <a cis! e f a>2
  |   <a d f a^~>2-\markup { \italic "(weich) (soft)" }
      a'16^\(-\markup { \italic "(dolce)" } g f e f cis d a
  |   s2 s8. a16 d[ f a gis]\)
  |   << {
        \voiceOne
        \set tieWaitForNote = ##t
        a4~ s4 a2
      } \\ {
        \voiceOne
        \set tieWaitForNote = ##t
        s16 fis8.~ s4 fis2
      } \\ {
        \voiceOne
        s8. c!16 s4 s2
      } \\ {
        \voiceTwo
        a'16 fis dis c!~ c4~ c b!
      } >>
  %45 organUpper
  |   <a c e a>2^-  <gis b! d e gis>2^-
  |   <e' gis b! c>2  <c e a c>2
  |   <c f a c>2-\markup { \italic "(quasi forte)" }  <b! dis fis b!>4^- <c dis fis a>^-
  |   <a c e a>2  <b! d e a>4^- <b! d e gis>^-
  |   << {
        <a e' a>2
      } \\ {
        d4( cis)
      } >>
      s2
    }
    \new Staff = "organLower" \with {
      alignAboveContext = "upper"
    } {
      \Global
      \omit Staff.TimeSignature
      \clef "bass"
  |   <dis, fis a b!>2^-\sustainOn
      <dis fis a c>2^-\sustainOn
  %35 organLower
  |   <g bes cis>2  <gis b! d>2
  |   <c, e gis b! c>2_(  <c e a>2)
  |   <ges a ees' ges>2  <ges! bes! c ges'!>2
  |   <f c' ees f>2  <f bes! cis f g>2
  |   <f a d f>2 <fis a d fis>2
  %40 organLower
  |   <g bes! ees g>2 <g, bes! ees g>2
  |   <a cis g' a>2  <a cis f a>2
  |   <bes d f bes>2 r2
  |   bes''16[ gis a e] f cis[ d a] bes[ d f] s16 s4
  |   << {
        \voiceThree
        s4 b!16 a fis e a2
      } \\ {
        \voiceFour
        s4 s16 a8.^~ a2
      } \\ {
        \voiceFour
        s4. fis8~ fis2
      } \\ {
        \voiceFour
        s2 dis2
      } >>
  %45
  |   <e, a c e>2  <e b'! d e>2
  |   <e' gis b! c>2^\markup{
        \italic
        \column {
          "(somewhat lauder and firmer)"
          \general-align #Y #-1.5
          "(etwas lauter und entschlossener)"
        }
      }
      << <e a>2 \\ { c4-- a-- } >>
  |   <f a c f>2  <fis a b! dis>4^- <fis a c dis>^-
  |   <e a c e>2  <e b'! d e>4 <e b'! d e>4
  |   <a e'>2  s2
      \bar "||"
    }
    >>
  | s1
  | s1
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
    d r-\markup { \italic\small "(cresc.)" }  f r a r
    \clef bass
  | s1
  | r4
    \tuplet 3/2 8 { r16 f, e\< } \tuplet 3/2 8 { d cis e }
    \tuplet 3/2 8 { a,\! r r } r8
    \tuplet 3/2 8 { r16 f' e } \tuplet 3/2 8 { d\< cis e }
  | \stemUp a,s\!
    \change Staff = "upper"
    \stemDown
    \tuplet 3/2 8 { s16 d'[ cis] }
    r8 \tuplet 3/2 8 { f16 e s }
    \tuplet 3/2 8 { s s a } \tuplet 3/2 8 { g s s }
    \tuplet 3/2 8 { s cis b! } s8
  %20
  | d16 s8. s2
    \change Staff = "lower"
    \tuplet 3/2 8 { e,,16 cis a } r8
    \stemNeutral
    \bar "||"
  | s1
  | << {
      s2 bes'32[ a g f e f g f ] e[ d s d e d cis b! ]
    } \\ {
      s4 s8. s32 g'32  s4 s16 cis,32 s32 s8
    }
    >>
  | a32[ b! cis d ] \voiceOne e[^\< f g f] e[\! g f e d cis b a]
    \voiceTwo b[ cis d\< e f]\! \voiceOne g[ a bes] a[ g f a g f e d]
  | \voiceTwo cis32[ d\< e f g]\! \voiceOne a[ bes a]
    \voiceTwo g[ a\< b! cis d\!] s16. s4 f,32^\markup { \small\italic "r. H." } [ g a f d f e d]
  %25
  | gis[ fis e b'! a g] s16 s4 s4 s4
  | s2.^\markup { \italic "(" \dynamic f \italic ", sempre in tempo)" }
    \tuplet 3/2 8 { a16[ d a] } \tuplet 3/2 8 { f[ a f] }
  | \tuplet 3/2 8 { d^\<\sustainOn f a } s8
    s8\! \tuplet 3/2 8 { s16 a\hide\sustainOff f^\< }
    \tuplet 3/2 8 { d[\sustainOn e g] } cis32 s16.
    s8\! s32[ cis g e]\hide\sustainOff
  | \tuplet 3/2 8 { d16^\markup { \italic "più" } f a } s8
    s8 s16 a32[ f]
    d32[ fis a c!] s8
    s8 s32 c32[ a fis]
  | \tuplet 3/2 8 { d16 g bes } s8
    s8 \tuplet 3/2 8 { s16 bes[ g] }
    \tuplet 5/4 8 { d32 f gis b! d } s8
    s8 \tuplet 5/4 8 { d32 bes g f d }
  %30
  | \once\stemUp c64 e[ a cis] s16^\markup { \italic "(quasi in tempo)" } s8
    s4 s4\sustainOn s8_\markup {
      \italic{ "(mute)" }
    } s8\sustainOff
  | s1
  | \stemUp cis,32[ d e cis] \stemDown a[\< b! cis d\!]
    \stemUp e[ f g e] \stemDown cis![\< d e f\!]
    \stemUp g^>[ a bes g] \stemDown e[ f g e]
    \stemUp cis![ d e cis] \stemDown a[ b! cis! a]
  | << {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \change Staff = "upper" {
        s8
        \omit TupletNumber
        << {
          \tuplet 5/4 16 {
            c'32[ ees fis a c]
          }
           ees4^\>^\markup { \italic\small "l. H" }\( \voiceThree d4 c4\!\)
        } \\ {
          \omit TupletNumber
          \tuplet 5/4 16 {
            s32 \single \omit Stem \single \hide Flag ees,8~
          }
          \voiceOne \once \shiftOn \override NoteColumn.force-hshift = 0.7
          \single \omit Stem ees4
        } \\ {
          \omit TupletNumber
          \tuplet 5/4 16 {
            s32 s
            \override Dots.dot-count = #0
            \once \shiftOff
            \single \omit Stem \single \hide Flag
            fis16._~
            \revert Dots.dot-count
          }
          \voiceOne fis4~
          \stemDown fis2
        } \\ {
          \omit TupletNumber
          \tuplet 5/4 16 {
            s32 s s
            \once \shape #'((0 . 0.2) (0 . 0.5) (0 . 0.5) (0 . 1)) Tie
            \single \omit Stem \single \hide Flag
            a16~
          }
          \voiceOne a4_~
          \stemDown a2
        } >>
      }
    } \\ {
      \change Staff = "lower" {
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        \set tieWaitForNote = ##t
        \tuplet 6/4 8 {
          \stemUp fis,,32\sustainOn
          \stemDown a[ c! ees fis~ a~]
        }
        s4.
        <fis a>2\sustainOff
      }
    } >>
    \set tieWaitForNote = ##f
    \bar "||"
  | \omit Staff.TimeSignature
    d32\rest_\markup { \italic "dolce, (quasi Arpa)" }
    \stemUp dis[^\( fis a b!]
    \change Staff = "upper" {
      \stemDown
      dis[ fis a
      b! a fis dis]
    }
    \change Staff = "lower"{
      \stemUp b![ a fis dis]\)
    }
    d32\rest dis[^\( fis a c]
    \change Staff = "upper" {
      \stemDown
      dis[ fis a
      c a fis dis]
    }
    \change Staff = "lower"{
      \stemUp c[ a fis dis]\)
    }
  %35
  | \tuplet 14/16 2 {
      d32\rest
      \stemUp g[ bes cis]
      \change Staff = "upper" {
        \stemDown e[ g bes cis bes g e]
      }
      \change Staff = "lower"{
        \stemUp cis[ bes g]
      }
    }
    \tuplet 14/16 2 {
      d32\rest
      \stemUp gis[ b! d]
      \change Staff = "upper" {
        \stemDown f[ gis b! d b! gis f]
      }
      \change Staff = "lower"{
        \stemUp d[ b! gis]
      }
    }
  | d32\rest
    \stemUp c[ e gis b!]
    \change Staff = "upper" {
      \stemDown e[ gis b! d b! gis e]
    }
    \change Staff = "lower"{
      \stemUp b![ gis e c]
    }
    \tuplet 14/16 2 {
      d32\rest
      \stemUp c[ e a]
      \change Staff = "upper" {
        \stemDown c[ e a c a e c]
      }
      \change Staff = "lower"{
        \stemUp a[ e c]
      }
    }
  | \tuplet 12/16 2 {
      d32\rest
      \stemUp ges[ a c]
      \change Staff = "upper" {
        \stemDown ees[ a c a ees]
      }
      \change Staff = "lower"{
        \stemUp c[ a ges]
      }
    }
    \tuplet 12/16 2 {
      d32\rest
      \stemUp ges[ bes c]
      \change Staff = "upper" {
        \stemDown e![ bes' des bes e,!]
      }
      \change Staff = "lower"{
        \stemUp c[ bes ges]
      }
    }
  | d32\rest
    \stemUp f[ a c f]
    \change Staff = "upper" {
      \stemDown ees[ a c ees c a ees]
    }
    \change Staff = "lower"{
      \stemUp f[ c a f]
    }
    d32\rest
    \stemUp f[ g bes! cis]
    \change Staff = "upper" {
      \stemDown e![ g bes! cis bes g e!]
    }
    \change Staff = "lower"{
      \stemUp cis[ bes g f]
    }
  | \tuplet 13/16 2 {
      d32\rest
      \stemUp f[ a d]
      \change Staff = "upper" {
        \stemDown f[ a d a f d]
      }
      \change Staff = "lower"{
        \stemUp a[ f d]
      }
    }
    \tuplet 15/16 2 {
      d32\rest
      \stemUp fis[ a c]
      \change Staff = "upper" {
        \stemDown d[ fis a c a fis d]
      }
      \change Staff = "lower"{
        \stemUp c[ a fis d]
      }
    }
  %40
  | d32\rest
    \stemUp g,[ bes ees g]
    \change Staff = "upper" {
      \stemDown bes[ ees g bes g ees bes]
    }
    \change Staff = "lower"{
      \stemUp g[ ees bes g]
    }
    \tuplet 9/8 4 {
      d32\rest
      % avoid the warning:
      % no viable initial configuration found: may not find good beam slope
      \once \override Beam.positions = #'(5 . 5)
      \stemUp g[ bes ees! g
      \change Staff = "upper" {
        \stemDown bes ees! g bes]
      }
    }
    \change Staff = "lower" {
      << d,4 \\ {
        \omit TupletNumber
        \tuplet 6/8 4 {
          \stemDown d32[ bes g ees bes g]
        }
      } >>
    }
  | \tuplet 18/16 2 {
      \stemUp
      r32 a[ cis e g]
      \change Staff = "upper"
      \stemDown
      bes[ cis e g bes g e cis bes]
      \change Staff = "lower"
      \stemUp
      g[ e cis a]
    }
    \tuplet 18/16 2 {
      \stemUp
      r32 a[ cis! e f]
      \change Staff = "upper"
      \stemDown
      a[ cis! e f a f e cis a]
      \change Staff = "lower"
      \stemUp
      f[ e cis a]
    }
  | \override MultiMeasureRest.staff-position = #0
    << {
      \omit TupletNumber
      \tuplet 15/16 2 {
        \change Staff = "upper" {
          s8 s16 s32 a''4
        }
      }
      b2\rest
    } \\ {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tuplet 15/16 2 {
        r32
        \stemUp bes,[\sustainOn d f]
        \change Staff = "upper" {
          \override LaissezVibrerTie.details.note-head-gap = #'-1
          \override LaissezVibrerTie.extra-offset = #'(2 . 0)
          \stemDown a,[ d f a^\laissezVibrer^- f d a]
        }
        \change Staff = "lower"{
          \stemUp f[ d a]
        }
        r32^\fermata\sustainOff
      }
      r2
    } >>
  | << {
      \change Staff = "upper"
      \override MultiMeasureRest.staff-position = #0
      R1
    } \\ {
      \change Staff = "lower"
      \override MultiMeasureRest.staff-position = #0
      R1
    } >>
  | << {
      \change Staff = "upper"
      \override MultiMeasureRest.staff-position = #0
      R1
    } \\ {
      \change Staff = "lower"
      \override MultiMeasureRest.staff-position = #0
      R1
    } >>
  %45
  | r32
    \stemUp e[ a c e]
    \change Staff = "upper" {
      \stemDown a[ c e a e c a]
    }
    \change Staff = "lower"{
      \stemUp e[ c a e]
    }
    r32
    \stemUp e[ b'! d e]
    \change Staff = "upper" {
      \stemDown b'![ d e gis e d b!]
    }
    \change Staff = "lower"{
      \stemUp e,[ d b! e,]
    }
  | \tuplet 18/16 2 {
      r32
      \stemUp e'[ gis b! c]
      \change Staff = "upper" {
	\stemDown e[^\< gis b! c b!\!\> c\! b! gis e]
      }
      \change Staff = "lower"{
        \stemUp c[ b! gis e]
      }
    }
    \tuplet 17/16 2 {
      r32
      \stemUp c[ e a c]
      \change Staff = "upper" {
	\stemDown e[^\< a c a\!\> c\! a e c]
      }
      \change Staff = "lower"{
        \stemUp a[ e c a]
      }
    }
  | \tuplet 18/16 2 {
      r32
      \stemUp f[ c' f a]
      \change Staff = "upper"
      \stemDown c[ f a c a c a f c]
      \change Staff = "lower"
      \stemUp a[ f c f,]
    }
    \tuplet 9/8 4 {
      r32
      fis[^\( b! dis a']
      \change Staff = "upper"
      \stemDown b![ dis fis b!]
    }
    \tuplet 10/8 4 {
      r32
      fis[ a fis dis c]
      \change Staff = "lower"
      a[ dis, c fis,]\)
    }
  | \tuplet 18/16 2 {
      r32
      \stemUp e[ a c e]
      \change Staff = "upper"
      \stemDown a[ c e a e a e c a]
      \change Staff = "lower"
      \stemUp e[ c a e]
    }
    \tuplet 9/8 4 {
      r32
      e[^\( b'! d a']
      \change Staff = "upper"
      \stemDown b![ d e a]
    }
    \tuplet 10/8 4 {
      r32
      e[ gis e d b!]
      \change Staff = "lower"
      gis[ d b! e,]\)
    }
  | s1
  %50
  | s1
  | s1
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
      \pageBreak
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
