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
  | r32 \stemDown d,[ e\< f] g \stemUp a[ b cis]\!
    \stemUp d\f c bes a g f e d  \stemDown cis[ d e f] \stemUp g[ a bes e--]  r4
  | r16 \stemDown a,32[\< b cis d] \stemUp e[ f]\! g[\f f e d cis b]
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
    \pageBreak
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
      bes,8\( cis e g\)
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
    \pageBreak
  | << {
      \voiceTwo b,32\rest e,[\< f g a b! cis d]
      \voiceOne e[ f g a bes\! a g f] e[ f g f e d s d] e[ d cis b! a s bes a]
    } \\ {
      s4 s4  s8 s16 cis!32 s32  s8 s32 g s16
    }
    >>
  | << {
      g32[ f e f g f e d]  s d[ e d cis b! a] s32  s2
    } \\ {
      s4 cis32 s8. s32  s2
    }
    >>
  | s1
  | s4 s8 s32 e-2[ f g] f[ g a e f cis d a] s4
  %25
  | s8. \voiceOne d32[ c] b![ f'! e d] \voiceTwo gis[ fis e b'! ]
    a[ gis] \voiceOne d'[ c b! f'! e d] \voiceTwo gis16 \voiceOne a64[ g fis g g16.\trill\< fis64 g\!]
  | \tuplet 3/2 8 { a16[ d a] } \tuplet 3/2 8 { f[ a f] }
    \tuplet 3/2 8 { d[ f d] }   \voiceTwo \tuplet 3/2 8 { a[ d a] }
    \tuplet 3/2 8 { f[ a f] }   \tuplet 3/2 8 { d[ f d] }
    s4
  | \voiceOne
    s8^\markup { \italic "(continuando)" } \tuplet 3/2 8 { d16[ f a] }
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
      \omit Staff.TimeSignature
      \clef "treble"
      \key d \minor
  |   <dis' fis a b!>2^\markup { \hspace #-2.5 \italic "soft, muffled (quasi Organo)" }^-
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
        <bes g' bes>2
      } \\ {
        \voiceOne
        \shiftOn ees!4 \( \parenthesize d\)
      } >>
  |   <bes cis e! g bes>2  <a cis! e f a>2
  |   <a d f a^~>2-\markup { \italic "(weich) (soft)" }
      a'16^\(-\markup { \italic "(dolce)" } g f e f cis d a
  |   s2 s8. a16 d[ f a gis]\)
      \mergeDifferentlyDottedOn
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
       \mergeDifferentlyDottedOff
  %45 organUpper
  |   <a c e a>2^-  <gis b! d e gis>2^-
  |   <e' gis b! c>2  <c e a c>2
  |   <c f a c>2-\markup { \italic "(quasi forte)" }  <b! dis fis b!>4^- <c dis fis a>^-
  |   <a c e a>2  <b! d e a>4^- <b! d e gis>^-
  |
  |   << {
        <a e' a>2
      } \\ {
        d4( \parenthesize cis)-\markup {
          \italic
          \column {
            \small "(not to be played)"
            \small "(nicht anzuschlagen)"
          }
        }
      } >>
      \set breathMarkType = #'caesura
      \magnifyMusic 0.75 {
        a'16\fermata
      }
      \breathe
      bes!16--[^\markup {
        \bold "Voce Recitante"
      }
      -\markup {
          \general-align #Y #1
          \column {
            \general-align #Y #1
            " "
            \small\italic "(Always strong and broad,"
            \small\italic " and with intense feeling)"
            \small\italic "(Immerstark und breit mit grosser"
            \small\italic " Energie der Empfindung)"
          }
        }
      a-- g!--]
      \set breathMarkType = #'chantdoublebar
      fis32[ g fis g  g32.\trill fis128 g a64-- fis-- d32--]
    }
    \new Staff = "organLower" \with {
      alignAboveContext = "upper"
      \omit Staff.TimeSignature
    } {
      \omit Staff.TimeSignature
      \clef "bass"
      \key d \minor
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
     \mergeDifferentlyDottedOn
  |   << {
        \voiceThree
        s4 b!16 a fis e a2
      } \\ {
        \voiceFour
        s4 s16 a8.^~ a2
      } \\ {
        \voiceFour
        s4. fis8^~ fis2
      } \\ {
        \voiceFour
        s2 dis2
      } >>
       \mergeDifferentlyDottedOff
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
    }
    >>
  %50
    << {
  |   \set breathMarkType = #'caesura
      a''4\rest
      << { <beses, beses'>8(\f <aes aes'>) } \\ <c ees>4 >> \breathe
      b'2\rest
  |   b4\rest  << { bes8( a!) } \\ { <ees ges ees'>4\f } >> \breathe b'2\rest
  |   b4\rest  \stemUp <a, c ees a>\mp^\markup { \italic "ten." }  b'2\rest
  |   b4\rest <c, ees ges c>4\mp b'2\rest
  |   b4\rest b8\rest <a, c ees a>\p \breathe b'2\rest
  %55
  |   b4\rest <des,~ ges~ bes^~ des^~>4\p <des ges bes des>16 b'16\rest b8\rest b4\rest
  |   b4\rest <g! ees des bes g!>4 b2\rest
  |   b4\rest <gis,~ b!~ e!^~ gis^~>4 <gis b! e! gis>32 b'32\rest b16\rest b8\rest b4\rest
  |   s8
      \mergeDifferentlyDottedOn
      << {
        \hideNotes r32\unHideNotes eis,32[ gis b!] dis32[ cis8..]
      } \\ {
        \voiceTwo
        % force an horizontal space between the two nodes blocks
        \hideNotes r32\unHideNotes eis,16.~ eis4
      } \\ {
        \voiceTwo
        \hideNotes r32\unHideNotes s32 gis16~ gis4
      } >>
      b2\rest
  |   b2\rest
      << { fis8[( eis]) } \\ { <d gis,>4 } >>
      b'4\rest
  %60
  |   b2\rest  \clef treble <dis, fis a dis>4^^-\markup { \dynamic f \italic "(teatrale)" } b'4\rest
  |   b4\rest  <bis, fis' bis>4  <e gis cis>4  b'4\rest
  |   \override MultiMeasureRest.staff-position = #0
      R1
  |   b4\rest
      \autoBeamOff
      <c,~ d~ fis^~ a^~ d^~>8^-  <c d fis a d>32
      \autoBeamOn
      r32 r16 b'2\rest
  |   R1
  %65
  |   R1
  |   R1
  |   b2\rest b4\rest b8\rest <a, d fis>8
  |   <bes d g>4 b'4\rest b2\rest
  |   b8\rest  <a, ees' fis>8  b'4\rest  <g, bes e! g>4  b'4\rest
  %70
  |   <f a d f>16 s8.
       << {
         \stemUp <d' g>4^\f
       } >>
      <a cis e a>4\breathe  b4\rest
  |   R1
  |   b4\rest
      << {
        <ees, ees'>8\>\f <d d'>\!
      } \\ {
        <a' c!>4
      } >>
      b2\rest
  |   R1
  |   b4\rest  <b,! d g b>8 b'8\rest <g a cis e g>[ <a d f a>]
      << { <f d' f>8[\> <e e'>16 <d~ d'>]\! } \\ { a'8[ <g cis>] } >>
  %75
  |   << {
        \stemDown d4_\markup { \italic "dim." } } \\ {
        \stemUp <a' d>4^\markup { \italic "ten." }
        \voiceOne
        d16\rest\p d--[ g-- bes--] d,8[(\> cis])\!  d16\rest\p c!32[ b! c! fis-- a16--]
      } \\ {
        g,8[( fis])^\markup {
          \italic\small
          \column {
            \general-align #Y #1
            "(with intense feeling)"
            "(mit Ergriffenheit)"
          }
        }
        s4 \once\stemDown <cis g' bes>4 s4
      } >>
  |   << {
        c'8[(\> b!])\!  b16\rest\p bes cis32-- e-- g16--
        bes,8[(\> a])\!  b32\rest\p a[ d cis! d e!-- f!16--]
      } \\ {
        <b,,! f'! gis>4 s4 <a ees' fis>4 s4
      } >>
  |   << {
        a'8[(\> gis])\!  b16\rest g!32[ a bes! cis d e]
        g,8[(\> fis])\!  b16\rest d32[\downbow b! gis a b!16]
      } \\ {
        <gis, d' f>4 s <fis c' ees> s
      } >>
  |   << {
        f'16--[(\> d-- e8--])\!  b'32\rest  ees32[\downbow c-- a-- fis a ees16]
        ees!8[( d)]  b'32\rest d,64[ e! fis g a bes] a[ g f!32 e f!64 g]
      } \\ {
        <g, bes!>4 s <f! gis> s
      } >>
  |   << {
        d'8[( cis])
        \once \override Slur.direction = #DOWN \acciaccatura d8 cis8.\startTrillSpan
        b!32\stopTrillSpan cis
        d2\fermata
      } \\ {
        g,2
        \change Staff = "lower"
        \stemUp
        \once \override Stem.cross-staff = ##t
        \once \override Stem.length = #20
        <d fis>2
        \change Staff = "upper"
      } >>
    }
    \new Staff = "recitante" \with {
      alignAboveContext = "upper"
    } {
      \Global
      \omit Staff.TimeSignature
      \once\set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \clef "treble"
  %50 recitante
  |   des'8( c) r4
      r16 ees--[ f-- g!--] aes32[ bes! c des c des ees64\< des c des\!]
  |   ees8 r  r4  r16 ees[ ges f] ees[ des c des32 bes]
  |   bes8^( a)  r4
      r16_\markup { \italic "(l.H.)" }
      << {
        bes16[ a bes] bes8.\trill a32 bes
      } \\ {
        des,16[c des] des8.\trill( c32\< des\!
      } >>
  |   << c'8 \\ ees,) >> r8  r4
      r16
      << {
        des'16[ c des] des8.\trill c32 des
      } \\ {
        f,16[ees f] f8.\trill ees32 f
      } >>
  |   << {
        ees'16 c a!_\markup { \italic "(dimin.)"  } bes--\(
        bes16^-[ a]\)
      } \\ {
        ges4--
        s8
      } >>
      r8
      r16 f[\f a c] ees![ ges f ees32\prall des]
  % 55 recitante
  |   des8\sustainOn r8 r4 r16\sustainOff des[ fes ees]
      des32[ ces bes ces  \appoggiatura { des16 ces des } ces32 bes ces des]
  |   aes8( g!)  r4  r16 g[ ees f]  g16[ aes32-- g-- f16 aes32-- g--]
  |   gis8\mordent r r4 r32 b,![ cis dis e fis gis! a]  b!16[ d! cis e32 d]
  |   << {
        \set breathMarkType = #'caesura
        d4~^\markup { \small\sharp }^\mordent
        \magnifyMusic 0.75 {
           d32[ cis8..]
        }
        r8\breathe b!--^\markup { \small \italic "meno " \dynamic "f" } [ b!-- a--]
      } \\ {
        d8 s4. r8 d,[-\markup { \small\italic "l.H." } d cis]
      } >>
  |   << {
        a'8( gis) gis32 a b! cis d b! gis!64 eis fis32
        fis8( eis!) b'32\rest eis,[ fis gis fis16.\trill eis32]
      } \\ {
        cis8.[( b!16]) b8( cis16 d)-\markup { \small\italic "r.H" }
      } \\ {
        % workaround for drawing an arpeggio bracket high
        % enough to be visually connected to the r.H. sign
        \arpeggioBracket
        \hideNotes
        s4. s16 <a, a''>16\arpeggio
        \unHideNotes
        s2
        \arpeggioNormal
      } >>
  %60
  |   << {
        b''!16[ cis32 d cis16 b!] a[ gis32 b! a16\trill gis32 fis]
        \magnifyMusic 0.75 { dis'4 }
        r32
        \stemDown e![^\markup { \italic\small "(largamente)" } dis! cis! bis cis dis fis]
      } \\ {
        b,!8[ a16 gis] fis8[ eis] s2
      } >>
  |   a'8\downbow[ a\downbow] bis,32[ dis fis a gis16 a32 fis]
      \tupletDown
      \stemUp fis8[^( e)]~
      \tuplet 3/2 8 { e16[_\markup {
        \italic\small
        \column {
           \general-align #Y #2
           "(accelerato ma"
           " sempre recitando)"
        }
      } cis-- bis--] }
      \tuplet 3/2 8 { cis--[ gis-- fis--] }
  |   \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tupletDown
      \tuplet 3/2 8 { \voiceOne gis-- \voiceTwo e^-[ dis^-] }
      \tuplet 3/2 8 { e-- cis^-[ bis^-] }
      \tuplet 3/2 8 { \stemUp cis^- \stemDown e[ dis] e a gis }
      \tuplet 3/2 8 { a \stemUp cis[ b!] } \tuplet 3/2 8 { cis[ e^- d!^-] }
      \tuplet 3/2 8 { e^-[ fis^- g!^-] } g16.^\trill \tuplet 3/2 32 { fis64\< g a\! }
  |   ees16^> d8.  b8\rest^\markup {
        \column {
          \general-align #Y #2
          \italic\small "(without hurrying, but without stiffness)"
          \italic\small "(nicht eilen, aber ohne Steifheit)"
        }
      }
      b32\rest d[ c! bes]
      \stemDown a_>[ bes c]
      \stemUp ees[ c bes^\< a g!\!]
      \stemDown fis_>[ g a]
      \stemUp c[ a g^\< fis e!\!]
  |   \stemDown d->[-\markup { \italic "(sopra)" }  e fis]
      \stemUp a[ g fis e d]
      \stemDown c[ d ees]
      \stemUp fis[ ees d c bes]
      \clef bass
      \stemDown a[ bes c]
      \stemUp ees[ c bes a g]
      \stemDown fis[ g a]
      \stemUp c[ a g fis e!]
  %65
  |   \stemDown d[^\markup { \italic "(ben ritmato)" } e! fis g]
      \stemUp a[ bes c a]  bes^-[ c]
      \stemDown fis,![ g a bes^\<]
      \stemUp c[ d]\! ees^-[ c d ees]
      \clef treble
      \stemDown a,[ bes c d e!^-]
      \stemUp fis[ g a fis g a]
      \stemDown d,
  |   e[ fis g]
      \stemUp a bes![ c a bes] c
      \stemDown fis,[ g a bes]
      \stemUp c[ d ees] c^-[ d ees]
      \stemDown a,[ bes c d e!] fis[ g a fis g a]^\markup {
        \italic\small
        \column {
          \general-align #Y #2
          "(un poco più veloce)"
          "(quasi di bravura)"
        }
      } d,[ e]
  |   fis[ g]
      \stemUp a[ bes c bes a]
      \stemDown g[ fis e! d]
      \stemUp c[ bes a]
      \stemDown g[ fis e d] \clef bass c[\< bes a] g[ fis e]\!
      \autoBeamOff d16-\markup { \italic "(a tempo)" } \clef treble
      \stemUp c'' \autoBeamOn bes![ c32 a]
  |   bes4^~  bes32 bes[ c d d16.^\trill\( c64\< d\!]
      e16[\) a,32 bes bes16.^\trill\( a64\< bes\!]
      c16[\) fis,32 g g16.^\trill\( fis64\< g\!]
  |   a8~--\)^\markup { \italic\small "ten" }
      a16[ a32 c]  bes16[ a g a32 fis] g4
      b32\rest \stemDown a[ b! cis d e f!64 g f g128 e]
  %70
  |   \mergeDifferentlyDottedOn
      f16 << { d32-- e-- f-- g-- f64 e f g } \\ d8. >>
      \mergeDifferentlyDottedOff

      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/16)
      \magnifyMusic 0.75 {
        \tuplet 6/4 8 {
          \stemUp g64 a g a g a  g a g a g a  g a g a g a
        }
        \tuplet 5/4 16 {
          g a g f g
        }
      }
      \set subdivideBeams = ##f

      a4~--\f a16[ bes32^\markup{ \italic\small "(recitando)" }  a g f e d]
  |   cis32[ b! a b! c d e f]  g16--[ e-- cis-- bes--]
      g^-[ e^- cis^- bes^-] \clef bass g--[ e-- cis---\markup {
        \italic "(l.H)"
      }
      e--]
  |   fis,8 b8\rest b4\rest
      \stemDown b16\rest  d32[ e fis g a bes] \stemUp c[ d ees d c bes a g]
  |   \stemDown fis16--[ a-- c-- ees--]
      \clef treble
      \stemUp fis16^-[ a^- c^- ees^-]  \once\stemDown fis16^- a^-[ c^- a^-]
      fis16^-[-\markup { \italic "ritenendo" } a32 fis] d16^-[ fis32 d]
  |   c8( b!) b16\rest b32\rest b^-[ cis^- d^- e^- f^-]
      g8[-\markup { \italic "(risolvendo)" } a] f8[ e16 d]
  %75
    }
    >>
  \fine
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
  | \voiceTwo a32[ b! cis d ] \voiceOne e[^\< f g f] e[\! g f e d] \voiceTwo cis[ b a]
    b[ cis d\< e f]\! \voiceOne g[ a bes] a[ g f a g f e d]
  | \voiceTwo cis32[ d\< e f g]\! \voiceOne a[ bes a]
    \voiceTwo g[ a\< b! cis d\!] s16. s4 f,32 [ g a f d f e d]
  %25
  | gis[ fis e b'! a g] s16 s4 s4 s4
  | s2.^\markup { \italic "(" \dynamic f \italic ", sempre in tempo)" }
    \voiceOne \tuplet 3/2 8 { a16[ d a] } \tuplet 3/2 8 { f[ a f] }
  | \voiceTwo \tuplet 3/2 8 { d^\<\sustainOn f a } s8
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
    s8 \tuplet 5/4 8 { d32 bes gis f d }
  %30
  | \once\stemUp cis64 e[ a cis] s16^\markup { \italic "(quasi in tempo)" } s8
    s4 s4\sustainOn s8_\markup {
      \italic{ "(mute)" }
    } s8\sustainOff
  | s1
  | \stemUp cis,32[ d e cis] \stemDown a[\< b! cis d\!]
    \stemUp e[ f g e] \stemDown cis![\< d e f\!]
    \stemUp g^>[ a bes g] \stemDown e[ f g e]
    \stemUp cis![ d e cis] \stemDown a[ b! cis! a]
  | << {
      \change Staff = "upper" {
        s8
        \omit TupletNumber
        \override TupletBracket.bracket-visibility = ##f
        \set tieWaitForNote = ##t
        \tuplet 5/4 16 {
          \voiceOne
          c'32[ ees~ fis~ a_~ c]
        }
        <ees, fis a>4~^\markup { \italic\small "l. H" }
        \stemDown <d fis a>2 \stemNeutral
      }
    } \\ {
      \change Staff = "upper" {
        \voiceOne
        s4 ees'(^\> d-\markup { \italic\small "r. H" } c)\!
      }
    } \\ {
      \change Staff = "lower" {
        \override TupletBracket.bracket-visibility = ##f
        \omit TupletNumber
        \set tieWaitForNote = ##t
        \tuplet 6/4 8 {
          \stemUp fis,,,32\sustainOn
          \stemDown a[ c! ees fis~ a~]
        }
        s4.
        <fis a>2\sustainOff
      }
    } >>
    %\set tieWaitForNote = ##f
    \bar "||"
  %\pageBreak
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
      << d,4^- \\ {
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
        \stemUp bes,,[\sustainOn d f]
        \change Staff = "upper" {
          \override LaissezVibrerTie.details.note-head-gap = #'-1
          \override LaissezVibrerTie.extra-offset = #'(2 . 0)
          \stemDown a[ d f a^\laissezVibrer^- f d a]
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
  | << {
      \change Staff = "upper"
      s2
      \set breathMarkType = #'caesura
      \magnifyMusic 0.75 {
        <a' cis e a>16\fermata_\markup {
          \italic
          \column {
            "mute"
            \general-align #Y #-2
            "stumm"
          }
        }
      }
    } \\ {
      \override TupletBracket.bracket-visibility = ##f
      \omit TupletNumber
      \tuplet 18/16 2 {
        r32
        \stemUp a,[ d e]
        \change Staff = "upper"
        \stemDown a[ d e a e a e cis a]
        \change Staff = "lower"
        \stemUp e[\sustainOn cis a e a,]
      }
      \stemUp
      \magnifyMusic 0.75 {
        <a' e'>16-\sustainOff^\fermata
      }
    } >>
    s8. s4
  %50
  | d4\rest \stemUp <ges,, aes c ees ges>4-- d''2\rest
  | \set breathMarkType = #'caesura
    d4\rest  << { bes8( a!) } \\ { <c ges ees c>4 } >> \breathe d2\rest
  | d4\rest <ges, c ees ges>4 d'2\rest
  | d4\rest <a, ees' ges a>4 d'2\rest
  | d4\rest d8\rest <f,, c' ees f>8 \breathe d''2\rest
  %55
  | d4\rest <fes,^~ bes,^~ ges-~ fes-~>4 <fes bes, ges fes>16 d16\rest d8\rest d4\rest
  | d4\rest <ees des bes ees,>4 d'2\rest
  | d4\rest <e,!^~ d!^~ e,!~ d!~>4 <e d e, d>32 d'32\rest d16\rest d8\rest d4\rest
  | d32\rest
    \mergeDifferentlyDottedOn
    << {
      cis eis gis cis4.
    } \\ {
      \voiceTwo
      cis,16.~ cis4
    } \\ {
      \voiceTwo
      s32 eis16~ eis4
    } \\ {
      \voiceTwo
      s16 gis32~ gis4
    } >>
    d2\rest
  | d2\rest
    <b,! b'!>4 d'4\rest
  %60
  | << { gis8[ a16 b!] cis8[ b!] } \\ { eis,8 fis cis4 } >>
    <bis, dis fis a bis>4^^ d'4\rest
  | d4\rest  <gis, dis' fis gis>4  <cis, gis' cis>4  d'4\rest
  | R1
  | d4\rest
    \autoBeamOff
    <c,~ fis~ a~ c^~ d^~>8^-  <c fis a c d>32
    \autoBeamOn
    r32 r16  d'2\rest
  | R1
  %65
  | R1
  | R1
  | d2\rest d4\rest d8\rest <d, fis d'>8
  | <g, d' g>4 d''4\rest  d2\rest
  | d8\rest <c, ees fis c'> d'4\rest <cis, e! bes' cis>4 d'4\rest
  %70
  | << { <f! a>4 } \\ { d8[ c!] } >>
    << {
      \omit TupletNumber
      \override TupletBracket.bracket-visibility = ##f
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/16)
      \magnifyMusic 0.75 {
        \tuplet 6/4 8 {
          g'64 a g a g a  g a g a g a  g a g a g a
        }
        \tuplet 5/4 16 {
          g a g f g
        }
      }
      \set subdivideBeams = ##f
    } \\ {
      \stemDown d16[ e cis d] \stemUp a'4
    } \\ {
      \stemDown bes,!4
      <a cis! e>4 \stemNeutral
    } >>\breathe
    d4\rest
  | R1
  | d4\rest <fis,, a c! fis>4 d''2\rest
  | R1
  | d4\rest <f,,! g f'! g>8 d''8\rest
    << {
      <g, cis g'>8 <f f'>16^- <g g'>^- a'4~^\markup { \italic "ten." }
    } \\ {
      e,8[ d]  <a' d f>8\arpeggio[ <a, a'>\mp]
    } >>
  %75
  | << {
      a''32[ d, fis a] c[ ees d c]
    } \\ {
      r32 <d, d,>8.-\markup {
        \italic\small
        \column {
          \general-align #Y #1
          "(sehr ruhig)"
          "(very quietly)"
        }
      }
      s32
    } >>
    \bar "||"
    << {
      % <bes' d g>4 s4 << <a c! ees! fis>4 \\ { \magnifyMusic 1.25 { c,4\rest } } >>
      <bes' d g>4 s <a c! ees fis>
    } \\ {
      r4-\markup {
        \italic\small
        \column {
          \general-align #Y #1
          "(weich u. tief)"
          "(soft and misterious)"
        }
      }
      <d,,~ g bes d e>4^-\sustainOn
      \magnifyMusic 0.75 {
        \parenthesize d4~
        \sustainOff
      }
    } >>
  | << {
      s4 <g' bes cis e>--
      s <f a d>--
    } \\ {
      <d,~ f! gis d'>4^--\sustainOn
      \magnifyMusic 0.75 {
        \parenthesize d4~
        \sustainOff
      }
      <d~ ees fis c' d>^-
      \magnifyMusic 0.75 {
        \parenthesize d4~
      }
    } >>
  | << {
      s4 <e' g! bes cis>--
      s4 <d f! gis b!>--
    } \\ {
      <d,~ f! b! d>4^-
      \magnifyMusic 0.75 {
        \parenthesize d4~
      }
      <d~ ees a c! d>^-
      \magnifyMusic 0.75 {
        \parenthesize d4~
      }
    } >>
  | << {
      s4 <c' ees fis a>--
      s <bes d g>--
    } \\ {
      <d,~ bes' cis d e!>4^-
      \magnifyMusic 0.75 {
        \parenthesize d4~
      }
      <d~ f! gis b! d>^-
      \magnifyMusic 0.75 {
        \parenthesize d4~
      }
    } >>
  | << {
      <d' e>2-\markup { \italic "ten." }
      s2
    } \\ {
      \override DynamicText.self-alignment-X = #1
      <d, e bes'>2 <d, a' d>2^\p
      \sustainOn
    } >>
  \fine
}


\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \new Staff = "upper" {
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \Upper
      \pageBreak
    }
    \new Staff = "lower" {
      \set Staff.midiInstrument = #"acoustic grand"
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
    \tempo 4 = 90
  }
}
