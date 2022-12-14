\version "2.23.10"

#(ly:set-option 'relative-includes #t)

\include "../../covercolor.ly"

calando = { \override TextSpanner.bound-details.left.text = \markup { \small "calando " } }
cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc. " } }

\paper {
  bottom-margin = 13\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  tagline = ##f
  top-margin = 13\mm
% markup-system-spacing.basic-distance = #10
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "davide.madrisan@gmail.com"
  }

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Clara" }
        \null
        \line { \abs-fontsize #56 \bold "Schumann Wieck" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #34 \bold "Soirées Musicales" }
        \null\null
        \null\null
        \line { \abs-fontsize #20 "Op. 6" }
        \null\null\null\null
        \fill-line { \abs-fontsize #20 "For Piano" }

        \null\null\null\null
        \fill-line {
          \override #'(thickness . 1)
          \draw-squiggle-line #0.5 #'(14 . 0) ##t
        }
        \null\null
        \fill-line {
          \abs-fontsize #13
          \smallCaps " Lavender.Blue Open Scores"
        }
        \fill-line { \abs-fontsize #10 "Engraved by Davide Madrisan" }
        \fill-line {
          \abs-fontsize #9
          \typewriter "https://github.com/madrisan/open-scores/"
        }
        \null\null\null\null
        \fill-line { \abs-fontsize #10 "Based on the score publiched by Friedrich Hofmeister - Leipzig, 1836" }
        \null
      }
    }
  }
}

Global = {
  \key f \major
  \time 6/8
  % Draw a box round the bar number(s)
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \set Staff.pedalSustainStyle = #'mixed
}

Upper = \relative c'' {
  \clef treble
  \tempo \markup { \bold Andante con moto }
  \override TupletBracket.bracket-visibility = ##f
  \override TupletNumber.transparent = ##t
  | R1*6/8
  | R1*6/8
  | r4 r8 a4.~-\markup { \italic\small "dolce" }
  | a4. g4.
  %5
  | g4. f4.~
  | f4. f4 e8
  | d4 d8 \appoggiatura { ees32[ d cis d] } d'4.~^\sf
  | \stemDown
    d8[\( ees gis, a ees'^. d^.]\)
  | c2.(
  %10
  | bes2.)
  | \stemUp a4. \appoggiatura { a8 } bes!4.~^\sf
  | bes8[^( a dis, e
    \acciaccatura { e8 } bes'_. a_.])
  | g2.^>
  | f4. ees4 d8
  %15
  | \acciaccatura { c8 }
    \stemDown c'4.-\markup {
      \italic\small "cresc."
    }^\markup {
      \hspace #-1
      \italic\small "rubato stretto"
    }
    c4^> c8~^>
  | c4 c4.^> c8^>~
  | c4 c8\turn c'4.~\sf
  | c8-\pp( bes ges des[ bes r16 ges])
  | \stemUp ges4.^\markup {
      \small\dynamic pf
      \italic\small "il canto marcato e a poco a poco morendo"
    }
    f~_>
  %20
  | f e!_>
  | ees ees~_>
  | ees d4 c8
  | c4. b!~_>
  | ces bes
  %25
  | a4 r8 r4 r8
  | R1*6/8
  | r4 r8 r4 r16 a'
  | a4.\trill << { s8.^\> bes8 a16\! } \\ { ees'16[ cis a bes ees, a] } >>
  | g4. f~
  %30
  | f4~
    \once\override TupletBracket.bracket-visibility = ##t
    \once\override TupletNumber.transparent = ##f
    \tuplet 11/8 {
      f16 f f f f f f f f f f
    }
  | e4 \stemDown e'8 dis4 e8
  | << {
      s4 s16 c~ c4~^> c16[ b!]
    } \\ {
      f'32^.[^\(^\markup { \italic\small "risoluto" }
      e^. d^. b!^. gis^. e f e dis e c'\) f,] e8[ r r16 d!]
    } >>
  | \stemUp <c a'>4 r8 a'4.~\p
  | a4 a8 bes!4 a8
  %35
  | a4._> g~
  | \stemDown
    \once\override TupletNumber.transparent = ##f
    \once\override TupletNumber.Y-offset = -5
    \tuplet 4/3 {
      %\shape #'((0 . 5) (0 . -4) (0 . -4.5) (0 . 0)) PhrasingSlur
      g8[\(^\markup { \italic\small "rinforz." }
      \acciaccatura {des''} des,_>
      \acciaccatura {c'} c,_>
      \acciaccatura {bes'} bes,_>]
    }
    \once\override TupletNumber.transparent = ##f
    \once\override TupletNumber.Y-offset = -6
    \tuplet 4/3 {
      \acciaccatura {a'} a,_>[ r16
      \acciaccatura {g'8} g,16_>
      \acciaccatura {f'8} f,_>
      \acciaccatura {e'} e,_>]\)
    }
  | \stemUp \acciaccatura {g'} g,4._> \acciaccatura {f'8} f,4.~
  | f4 f8\turn g4 a8
  | \stemNeutral a4. g~
  %40
  | g4 8 bes!4 a8
  | a r r f'4.~
  | f4 8 e4 d8
  | d4 c8 \acciaccatura { c } c'4.
  | c4.^\markup { \italic\small "stretto e rubato" }
    c
  %45
  | c << { } \\ { bes^~^\markup { \italic\small "ritenuto" } } >>
  | << {
      s16 d s bes s g s d s bes[( c d])
    } \\ {
      bes'16[ a g f e d] c[ bes a g8.]
    } >>
  | d'4.^> f,4 g8
  | a4. e8[ bes'!8. a16]
  | a4 r8
    f'4 8~
  %50
  | \override TupletNumber.transparent = ##f
    \shape #'((0 . -1.5) (0 . 1.5) (0 . 0) (0 . -2)) PhrasingSlur
    \tuplet 8/6 { f8^.[\( e^. f'^._> e^. c^. a^. f^. e^.]\) }
  | e^> r r d4.~_>
  | \shape #'((0 . -1.5) (0 . 1.5) (0 . 0) (0 . -2)) PhrasingSlur
    \tuplet 8/6 { d8^.[\( c^. d'^._> c^. a^. f^. d^. c^.]\) }
  | c8^> r r bes4._>
  | \tuplet 9/6 {
      bes8^.^\markup {
      \small\italic "risoluto con forza."
      } [^\( a^. g^._> f^. e^. d^. e^. f^. g^.]\)
    }
  %55
  | a8 r r a,4.~^\sf
  | a4 8 bes4^> a8
  | <d, d'>8^\markup { \italic\small "più mosso" } r r r4 r8
  | r4 r8 d'8._.[\( e16_. f8_.]\)
  | g8._.[\( a16_. bes8_.]\) cis8.^.[\( d16^. e8^.]\)
  %60
  | f4.~ f8\( e d\)
  | e4.~ e4.
  | a,8 r8 r bes8.^.[\( cis16^. d8^.]\)
  | e8.^.[\( f16^. g8^.]\) << gis4.^> \\ { f8.[\( e16 d8]\) } >>
  | << a'4 \\ cis,4 >> r8 bes!8.^.[\( cis!16^. d8^.]\)
  %65
  | e8.^.[\( f16^. g8^.]\) << gis4.^> \\ { f8.[\( e16 d8]\) } >>
  | << a'4 \\ cis,4 >> r8 << fis4. \\ { ees8. d16 c8 } >>
  | << g'4. \\ b,!4. >> << e!4. \\ { des8. c!16 bes8 } >>
  | << f'!4. \\ a,!4. >> << cis4. \\ { <g bes>8.[_> <f a>16 <g e>8] } >>
  | <d f d'>4 r8 r4 r8
  %70
  | r4 r8 d8.^.[\( e16^. f8^.]\)
  | g8.^.[\( a16^. bes8^.]\) cis8.^.[\( d16^. e8^.]\)
  | f2.~
  | f4. a8.^>[ g16 f8]
  | d bes f a'8.^>[ g16 f8]
  %75
  | d bes f <d f>4 <d g>8
  | << { a'4. a4.~ } \\ { d,4 8 cis4 8 } >>
  | << { a'4. a'8.[\> g16 fis8]\! } \\ { c,!4 8 s4. } >>
  | d'8 bes g <f'! f'!>8.-> <e e'>16 <d d'>8
  | <c c'> <a a'> <f f'> << { f4 g8 } \\ { f4 f8 } >>
  %80
  | << { a4 a8 } \\ { f4 f8 } >> << { a4 g8 } \\ { e4 e8 } >>
  | << { f4. <f a>~ } \\ { f4. d8.[ d16 des8] } >>
  | << { <f a>4. <f a>4.~ } \\ { c4 f,8 d'!8.[ d16 des8] } >>
  | << { <f a>4. a4.~ } \\ { c,4 f,8 a'4. } >>
  | << { a8. bes16 c8 d4 c8 } \\ { a8. g16 f8 e4 e8 } >>
  %85
  | << { a4. <f a>~ } \\ { f4. d4 des8 } >>
  | << { <f a>4. <f a>4.~ } \\ { c4 f,8 d'4 des8  } >>
  | << { <f a>4. a4.~ } \\ { c,4 f,8 s4. } >>
  | << { a'8. <g a>16 <f a>8 <e a>4.~ } \\ {} >>
  | << { <e a>4. a4.^> } \\ {} >>
    \bar ".|"
  %90
  | s1*6/8
   \fine
}

Lower = \relative c {
  \clef bass
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \override TupletNumber.transparent = ##t
  | \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) PhrasingSlur
    <f c>8[\(\sustainOn a c a c, a\sustainOff]\)
  | \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) PhrasingSlur
    <f' c>[\(\sustainOn a c a c, a\sustainOff]\)
  | <f' cis>[ a cis a cis, a]
  | <f' cis>[ a cis a cis, a]
  %5
  | <f d'>[ a' d a d, a]
  | <f d'>[ a' d a d, a]
  | <fis d'>[ a' c a d, a']
  | <fis, d'>[ a' c a d, a']
  | <fis, d'>[ a' d a d, a']
  %10
  | <g, d'>[ g' d' g, d g]
  | <g, d'>[ g' d' g, d g]
  | <a, cis>[ g' cis g cis, g]
  | << {
      \override TupletBracket.bracket-visibility = ##f
      \override TupletNumber.transparent = ##t
      e'[ bes' cis bes e, bes]
    } \\ d2. >>
  | << { f8[ a d a f a] } \\ d,2. >>
  %15
  | << { bes'8[ c g'] bes,[ c f] } \\ { e,4. f } >>
  | << { bes8[ c ees] bes[ c e!] } \\ { ges,4. g! } >>
  | \clef treble
    << { ees'8[ ges ees ges ees ges] } \\ a,2. >>
  | << { bes8( des ges) } \\ bes,4. >>
    \clef bass
    << { bes,8( des des') } \\ bes,4. >>
  | << { c8[ aes' c aes c aes] } \\ c,2. >>
  %20
  | << { bes8[ g' c g c g] } \\ bes,!2. >>
  | << { a!8[ fis' c' fis, c' fis,] } \\ a,!2. >>
  | << { aes8[ d fis d fis d] } \\ aes2. >>
  | << { g8[ d' g d g d] } \\ g,2. >>
  | << { ges8[ c! e c e c~] } \\ ges2. >>
  %25
  | << { c8[ f a f c f] } \\ f,2. >>
  | <f c'>8[ a' c a c, a']
  | <f, cis'>[ a' cis a cis, a']
  | <f, cis'>[ a' cis a cis, a']
  | <f, d'>[ a' d a d, a']
  %30
  | b,![ a' d a d, a']
  | <e, d'>[ gis' b! gis d gis]
  | <e, d'>[ gis'] b![ gis] d[ gis]
  | << { c,8[ e a e c e] } \\ a,2. >>
  | << { c8[ e a e c e] } \\ a,2. >>
  %35
  | << { e'8[ g des' g, e g] } \\ bes,2. >>
  | << { e8[\sustainOn g des' g, e g\sustainOff] } \\ bes,2. >>
  | << { c8[ f a f c f] } \\ a,2. >>
  | << { c8[ f a f c f] } \\ a,2. >>
  | << {
      \override TupletBracket.bracket-visibility = ##f
      \override TupletNumber.transparent = ##t
      f'8[ g d'] f,[ g d']
    } \\ { bes,!4. b! } >>
  %40
  | << { e8[ g c] g[ a e'] } \\ { c,4. cis } >>
  | << { f8[ a d a f a] } \\ d,2. >>
  | << { f8[ bes d bes f bes] } \\ d,2. >>
  | << { bes'8[ c g'] bes,[ c f] } \\ { e,4. f } >>
  | << { bes8[ c e!] } \\ { g,4. } >>
    \clef treble
    << { ees'8[ ges c] } \\ { a,4. } >>
  %45
  | << { d8[ g! bes g d g] } \\ bes,2. >>
  | \clef bass
    << { d,8[ g bes g d g] } \\ bes,2. >>
  | << { f'8[ a c a f a] } \\ c,2. >>
  | << { e8[ g a g e g] } \\ cis,2. >>
  | << { f8[ a d a f a] } \\ d,2. >>
  %50
  | \clef treble
    << { c'8[ e c' e, c' e,] } \\ <c a>2. >>
  | << { d8[ f bes f bes f] } \\ <bes, d>2. >>
  | << { a8[ c a' c, a' c,] } \\ <a f>2. >>
  | << { bes8[ d g d g d] } \\ <g, bes>2. >>
  | \clef bass
    << { bes,8[ d g bes g d] } \\ bes2. >>
  %55
  | << { a8[ f' d' f, d' f,] } \\ a,2. >>
  | << { a8[ g' cis g cis g] } \\ a,2. >>
  | d8[ r <d f a>] <d f a>4 8
  | 4 8 4 8
  | <d g bes>4 8 <d e g bes>4 <d e g bes cis>8
  %60
  | <d f a d>4 <d f a>8 <d f bes>4 <f a b!>8
  | <e a c!>4 8 <e gis b!>4 8
  | <a c>4 8 \clef treble <a cis e g>4 8
  | 4 8 <a b! d f gis>4 8
  | <a cis e a>4 8 <a cis e g>4 8
  %65
  | <a cis e g>4 8 <a b! d f gis>4 8
  | <a cis e a>4 8 <a c! ees fis>4 8
  | <a b! d g>4 8 <a bes! cis e g>4 8
  | <a d f>4 8 \clef bass <a, a'>4 8
  | <d, d'>4 <d' f a>8 4 8
  %70
  | 4 8 4 8
  | <d g bes>4 8 <d e g bes>4 <d e g bes cis>8
  | <d f a d>4 8 <d f bes d>4^> 8
  | 4 8
    << { bes4 s8 } \\ { bes4^>\sustainOn <e bes' cis>8 } >>
  | << { } \\ { <f bes d>4 8\sustainOff } >>
    << { bes,4 s8 } \\ { bes4^>\sustainOn <e bes' cis>8 } >>
  %75
  | << { } \\ { <f bes d>4 8\sustainOff <bes, f'>4 8 } >>
  | <a f'>4 8 <g e'>4 8
  | <fis ees'>4 8
    \stemDown <fis! c' ees! a>4\arpeggio\sustainOn 8\arpeggio
  | \stemNeutral <g bes d bes'>4\arpeggio\sustainOff\sustainOn <g bes d bes'>8\arpeggio
    <gis d' f! b!>4\arpeggio\sustainOff\sustainOn <gis d' f! b!>8\arpeggio
  | <a c f c'>4\arpeggio\sustainOff\sustainOn <a c f c'>8\arpeggio
    <d b'!>4\sustainOff <des b'>8
  %80
  | <c c'!>4 <c c'>8 <c bes'>4 <c bes'>8
  | << { a'4. <f a>~ } \\ { c4 f,8 d'8.[ d16 des8] } >>
  | << { <f a>4. <f a>~ } \\ { c4 f,8 d'8.[ d16 des8] } >>
  | << { <f a>4. s4. } \\ { c4 f,8 <c' f a>4 <c f a>8 } >>
  | bes,4 <d' g bes>8 c,4 <c' g' bes>8
  %85
  | << { a'4. <f a>4.~ } \\ { f4 f,8 d'4 des8 } >>
  | << { <f a>4. <f a>4.~ } \\ { c4 f,8 d'4 des8 } >>
  | << { <f a>4. s4. } \\ { c4 f,8 <c' f a>4 8 } >>
  | a,4\sustainOn <cis' a'>8 4 8
  | 4 8 4 8\sustainOff
    \bar "||"
  %90
  | s1*6/8
   \fine
}

centeredDynamics = {
  | s8-\markup {
      \hspace #-1 %\whiteout \pad-markup #0.5
      \italic\small "sempre legato"
    }
    s2 s8
  | s1*6/8
  | s1*6/8
  | s1*6/8
  %5
  | s1*6/8
  | s1*6/8
  | s8 s8 s8\< s8 s8 s8\!
  | s8 s8 s8\> s8 s8 s8\!
  | s1*6/8
  %10
  | s1*6/8
  | s8 s8 s8 s8\< s8 s8
  | s8 s16\! s16 s8\> s8 s8 s8\!
  | s1*6/8
  | s1*6/8
  %15
  | s1*6/8
  | s1*6/8
  | s1*6/8
  | s8-\markup { \italic\small "ritenuto e legato" } s4 s4.
  | s1*6/8
  %20
  | s1*6/8
  | s8\< s8 s8 s8 s8 s8
  | s8 s8 s8 s8 s8 s8\!
  | s8\> s8 s8 s8 s8 s8
  | s8 s8 s8 s8 s8 s8\!
  %25
  | s1*6/8
  | s1*6/8
  | s1*6/8
  | s1*6/8
  | s1*6/8
  %30
  | s4 s8\< s s s16 s\!
  | s16\cresc s\startTextSpan s8 s s s s\stopTextSpan
  | s8^\f s s2
  | s1*6/8
  | s1*6/8
  %35
  | s1*6/8
  | s8^\mf s s2
  | s1*6/8
  | s8\< s8 s8 s8 s8 s8\!
  | s1*6/8
  %40
  | s8\< s8 s8 s8 s8 s8\!
  | s4 s8\cresc s\startTextSpan s4
  | s1*6/8
  | s1*6/8
  | s1*6/8
  %45
  | s4. s4\stopTextSpan s8
  | s8^\p s s2
  | s8\< s8 s8 s8 s8 s8\!
  | s8\> s8 s8 s8 s8 s8\!
  | s8-\markup { \dynamic p \italic\small "con grazia" } s s2
  %50
  | s1*6/8
  | s1*6/8
  | s16
    \once \override DynamicLineSpanner.Y-offset = -3
    s16_\pp s4 s4.
  | s1*6/8
  | s16
    \once \override DynamicLineSpanner.Y-offset = -3
    s16_\ff s4 s4.
  %55
  | s1*6/8
  | s1*6/8
  | s16
    \once \override DynamicLineSpanner.Y-offset = -3
    s16_\p s4 s4.
  | s1*6/8
  | s8 s\cresc s16\startTextSpan s s8 s s
  %60
  | s8 s s s s s\stopTextSpan
  | s8\> s s s s s\!
  | s8 s s s\< s s
  | s8 s s\! s\> s s\!
  | s8 s s s\< s s
  %65
  | s8 s s\!\sf s\> s s\!
  | s8 s s s\> s s\!
  | s16-\markup { \italic\small "dimin." } s s8 s s\> s s\!
  | s1*6/8
  | s16_\p s s4 s4.
  %70
  | s1*6/8
  | s8\< s8 s8 s8 s8 s8\!
  | s1*6/8
  | s8 s s\mf s\> s s
  | s8 s s\! s\> s s\!
  %75
  | s1*6/8
  | s8\< s s2
  | s8 s8 s8\! s8\f s4
  | s16^\markup { \italic\small "animato rinf." } s s8 s s s s
  | s8 s s s-\markup { \hspace #-1 \dynamic p \italic\small "espress." } s4
  %80
  | s1*6/8
  | s8 s s s\< s s
  | s8 s\!\> s s\!\< s s
  | s8\!\> s s\! s s s
  | s8\< s s\!\> s s s\!
  %85
  | s8 s s\< s s s\!
  | s8\> s s\! s\< s s\!
  | s8\> s s\! s s s
  | s16 s\pp s \calando s\startTextSpan s2
  | s8 s s s s s\stopTextSpan
  %| s1*6/8
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \new Staff = "upper" {
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Upper
    }
    \new Dynamics { \Global \centeredDynamics }
    \new Staff = "lower" {
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Lower
    }
  >>
  \header {
    composer = "Clara Schumann Wieck"
    opus = "Op. 6"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "2. Nocturne"
      %}
    }
    %subsubtitle = ""
  }
  \layout {}
  \midi {}
}
