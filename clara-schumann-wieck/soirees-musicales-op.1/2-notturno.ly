\version "2.23.10"

#(ly:set-option 'relative-includes #t)

coverColor = #(rgb-color 0.2 0.4 0.5)
cresc = { \override TextSpanner.bound-details.left.text = \markup { \small "cresc. " } }

\paper {
  bottom-margin = 15\mm
  first-page-number = 0
  indent = 0.0
  last-bottom-spacing.padding = #1
  line-width = 18.6\cm
  print-all-headers = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t
  tagline = ##f
  top-margin = 15\mm
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
          \override #'(thickness . 5)
          \draw-squiggle-line #0.5 #'(10 . 0) ##t
        }
        \null\null\null\null\null\null
        \fill-line { \abs-fontsize #11 "Engraved by Davide Madrisan" }
        \fill-line { \abs-fontsize #9 \typewriter "https://github.com/madrisan/open-scores/" }
        \null
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
  | \tuplet 6/6 { d4 d8 \appoggiatura { ees32[ d cis d] } d'4.~^\sf }
  | \tuplet 6/6 {
      \stemDown
      d8[\( ees gis, a ees'^. d^.]\)
    }
  | c2.(
  %10
  | bes2.)
  | \stemUp a4. \appoggiatura { a8 } bes!4.~^\sf
  | \tuplet 6/6 {
      bes8[^( a dis, e
      \acciaccatura { e8 } bes'_. a_.])
    }
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
  | c bes~^\markup { \italic\small "ritenuto" }
  | bes16[ a g f ees d] s4.
  | s1*6/8
  \fine
}

Lower = \relative c {
  \clef bass
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  \override TupletNumber.transparent = ##t
  | \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) PhrasingSlur
    \tuplet 6/6 { <f c>8[\(\sustainOn a c a c, a\sustainOff]\) }
  | \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) PhrasingSlur
    \tuplet 6/6 { <f' c>[\(\sustainOn a c a c, a\sustainOff]\) }
  | \tuplet 6/6 { <f' cis>[ a cis a cis, a] }
  | \tuplet 6/6 { <f' cis>[ a cis a cis, a] }
  %5
  | \tuplet 6/6 { <f d'>[ a' d a d, a] }
  | \tuplet 6/6 { <f d'>[ a' d a d, a] }
  | \tuplet 6/6 { <fis d'>[ a' c a d, a'] }
  | \tuplet 6/6 { <fis, d'>[ a' c a d, a'] }
  | \tuplet 6/6 { <fis, d'>[ a' d a d, a'] }
  %10
  | \tuplet 6/6 { <g, d'>[ g' d' g, d g] }
  | \tuplet 6/6 { <g, d'>[ g' d' g, d g] }
  | \tuplet 6/6 { <a, cis>[ g' cis g cis, g] }
  | << \tuplet 6/6 {
      \override TupletBracket.bracket-visibility = ##f
      \override TupletNumber.transparent = ##t
      e'[ bes' cis bes e, bes]
    } \\ d2. >>
  | << \tuplet 6/6 { f8[ a d a f a] } \\ d,2. >>
  %15
  | << \tuplet 6/6 { bes'8[ c g'] bes,[ c f] } \\ { e,4. f } >>
  | << \tuplet 6/6 { bes8[ c ees] bes[ c e!] } \\ { ges,4. g! } >>
  | \clef treble
    << \tuplet 6/6 { ees'8[ ges ees ges ees ges] } \\ a,2. >>
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
  | << \tuplet 6/6 {
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
  | s4 s8 s16\cresc s\startTextSpan s8
  | s1*6/8
  | s1*6/8
  | s1*6/8
  %45
  | s4. s4\stopTextSpan s8
  | s8^\p s s2
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
