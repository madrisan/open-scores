Global = {
  \key e \minor
  \time 3/8
  \include "../global.ly"
}

ctuplet = #(define-scheme-function (note1 note2) (ly:music? ly:music?)
#{
% \tuplet 6/4 8 {
    \repeat tremolo 2 { $note1 $note2 }
% }
#})

shapeUp = \once\shape #'((0 . 0) (0 . 1) (0 . 1) (1 . 0)) PhrasingSlur
shapeDown = \once\shape #'((0 . 0) (0 . 0) (0 . -1) (1.5 . 0)) PhrasingSlur

Upper = \relative c'' {
  \clef treble
  \tempo \markup { \bold  "Agitato" }
  \override TupletBracket.bracket-visibility = ##f
  %1
  | << {
      \once\shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (1 . -1)) PhrasingSlur
      \stemUp \tuplet 6/4 8 { b32\(^\sf[ ais b ais b ais]\) }
      %\override Beam.gap-count = #2

      % NOTE: this version does not work as expected
      %   \shape #'((0 . -0.5) (0 . 1) (0 . 1.5) (2 . 0)) PhrasingSlur
      %   \stemDown \tuplet 6/4 8 { \repeat tremolo 3 { e'32\( dis\) } }
      % so we use this one, which is (at least) visually good
      % (midi output is broken in both cases)
      \shapeUp
      \ctuplet e'32\sf\( dis\)

      \omit TupletNumber

      \stemUp \shapeDown \ctuplet fis,32\sf_\( eis\)
    } \\ {
      \stemUp
      \afterGrace 15/16 s8 b'8
      \afterGrace 12/16 s8 e8
      \afterGrace 12/16 s8 fis,8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet d'32\sf\( cis\)
      \stemUp \shapeDown \ctuplet e,32\sf_\( dis\)
      \stemDown \shapeUp \ctuplet c'!32\sf\( b\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 cis8
      \afterGrace 12/16 s8 e,8
      \afterGrace 12/16 s8 c'8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet d'32\sf\( cis\)
      \stemUp \shapeDown \ctuplet e,32\sf_\( dis\)
      \stemDown \shapeUp \ctuplet c'!32\sf\( b\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 d8
      \afterGrace 12/16 s8 e,8
      \afterGrace 12/16 s8 c'8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet cis,32\sf\( bis\)
      \stemUp \shapeDown \ctuplet g'32\sf_\( fis\)
      \stemDown \shapeUp \ctuplet f,!32\sf\( e\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 cis'8
      \afterGrace 12/16 s8 g'8
      \afterGrace 12/16 s8 f,8
    } >>
  %5
  | << {
      \stemDown \shapeUp \ctuplet a32\sf\( gis\)
      \stemUp \shapeDown \ctuplet d'32\sf_\( cis\)
      \appoggiatura <ees ees'>8
      \stemDown \shapeUp \ctuplet cis!32\sf\( bis\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 a8
      \afterGrace 12/16 s8 d8^\sff
      \afterGrace 12/16 s8 cis8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet fis32\sf\( eis\)
      \repeat tremolo 4 { eis32\sf( disis }
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 fis8
      s4
    } >>
  | << {
      \omit TupletNumber
      \tuplet 5/4 8 {
        \stemUp eis32\< a, cis e,! ees\!
      })
      b'4\rest
    } \\ {} >>
  | \time 4/4
    s1^\markup {
      \column {
        \general-align #Y #2
        \line {
          \small\bold "langsomt"
          \concat{ \small"[" \small\italic"slowly" \small"]" }
        }
        \line {
          \small\italic "(krybende)"
          \concat{ \small"[" \small\italic"crawling" \small"]" }
        }
      }
    }
  | s2.
    << {
      \appoggiatura g!8
      \stemUp \shapeUp
      \repeat tremolo 4 { fis32\sf\( eis\) }
    } \\ {
      \stemUp
      \afterGrace 12/16 s4 fis8
    } >>
  %10
  | \time 3/8
    << {
      \stemUp \shapeDown \ctuplet b32\sf_\( ais\)
      \stemDown \shapeUp \ctuplet e'32\sf\( dis\)
      \stemUp \shapeDown \ctuplet fis,32\sf_\( eis\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 b'8
      \afterGrace 12/16 s8 e8
      \afterGrace 12/16 s8 fis,8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet d'32\sf\( cis\)
      \stemUp \shapeDown \ctuplet e,32\sf_\( dis\)
      \stemDown \shapeUp \ctuplet c'!32\sf\( b\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 d8
      \afterGrace 12/16 s8 e,8
      \afterGrace 12/16 s8 c'8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet d'32\sf\( cis\)
      \stemDown \shapeUp \ctuplet e,!32\sf\( dis\)
      \stemDown \shapeUp \ctuplet ees'!32\sf\( d\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 d,8
      \afterGrace 12/16 s8 e8
      \afterGrace 12/16 s8 ees'8^\sff
    } >>
  | << {
      \ottava #1
      \acciaccatura <c' c'>8
      \ottava #0
      \stemUp \shapeDown \ctuplet g,,32\sf_\( fis\)
      \stemDown \shapeUp \ctuplet f'!32\sf\( e\)
      \stemDown \shapeUp \ctuplet cis'!32\sf\( bis\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 g,8
      \afterGrace 12/16 s8 f'8
      \afterGrace 12/16 s8 cis'8
    } >>
  | \repeat tremolo 4 {
      dis,32\(\sf e^\ff\)_\markup\column {
        \general-align #Y #2
        \line {
          \concat { \tiny "  [" { \tiny\italic "gliss. on the" } }
        }
        \line {
          \concat { \tiny "   " { \tiny\italic "treble strings" } \tiny "]" }
        }
      }
    }
    \ottava #1
    \once\hide Slur
    \once\override Glissando.bound-details.left.Y = #6
    \once\override Glissando.style = #'zigzag
    \acciaccatura <fis' fis'>8^\markup\column {
      \general-align #Y #2
      \line { \tiny "gliss. paa Diskant-" }
      \line { \tiny "strengene" }
    }\glissando
    s16 \hideNotes b,16 \unHideNotes
    \ottava #0
  %15
  | s4.
  | s4.
  | \time 4/4
    r8 e,[\pp ces] f![ des] ges[ ees] a[
  | f] \stemDown cis'4.~ <cis g>8
    g8[ b] ees[
  | b] e[ c] f![ cis] g'4\ppp\fermata aes8\fermata
    \stemNeutral
  %20
  | \time 3/8
    \afterGrace fis,,8_(\sf\startTrillSpan { eis16\stopTrillSpan fis )}
    \tuplet 3/2 8 { g16[\pp\( a bes] }
    % FIXME: hacky solution. Find for a better one...
    \once\override TupletBracket.X-offset = -2
    \afterGrace
    \tuplet 3/2 8 { cis16[ d ees] }
    { fis16[ g g,]\) }
  | r8^\markup \column {
        \general-align #Y #2
        \line {
          \tiny "Summende som med Vand paa Vingerne"
        }
        \line {
          \concat {
            \tiny "["
            { \tiny\italic "Buzzling as if water on the wings" }
            \tiny "]"
          }
        }
        \with-color #white \box \vspace #2
    }
    \override TupletNumber.knee-to-beam = ##f
    %\once\override TupletNumber.direction = #UP
    \once\shape #'((0 . 0) (0 . 1.5) (0 . 2.5) (0 . 0.5)) Slur
    \tuplet 6/4 8 {
      <g' b>32[\pp( ais,
      \change Staff = "lower"
      b
      \change Staff = "upper"
      bis <a' cis>
      \change Staff = "lower"
      cis,]
      \change Staff = "upper"
    }
    \tuplet 6/4 8 {
      <g' b>32[ ais,
      \change Staff = "lower"
      b
      \change Staff = "upper"
      bis <a' cis>
      \change Staff = "lower"
      cis,]
      \change Staff = "upper"
    }
  | \tuplet 6/4 8 {
      <c e>32[ dis,
      \change Staff = "lower"
      e
      \change Staff = "upper"
      gis <fis'! a>
      \change Staff = "lower"
      a,]
      \change Staff = "upper"
    }
    \once\override TupletNumber.knee-to-beam = ##t
    \tuplet 6/4 8 {
      g![\<^\markup {
        \small\italic "stringendo"
      }
      c d e g c]
      d[ e g
      \ottava #1
      c d e]\!)
      \ottava #0
    }
  | b,,8\rest b\rest b\rest\fermata
  \fine
}

Lower = \relative c'' {
   \clef treble
   %1
  | << {
      \stemUp
      \once\shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (1 . -0.5)) PhrasingSlur
      \tuplet 6/4 8 { g32\([ fis g fis g fis]\) }

      \once\shape #'((0 . 0) (0 . 1) (0 . 1) (1 . 0)) PhrasingSlur
      \stemDown \ctuplet c'32\( b\)

      \omit TupletNumber
      \once\shape #'((0 . 0) (0 . 0) (0 . -1) (1.5 . 0)) PhrasingSlur
      \stemUp \ctuplet d,32_\( cis\)
    } \\ {
      \stemUp \afterGrace 12/16 s8 g'8
      \stemUp \afterGrace 12/16 s8 c8
      \stemUp \afterGrace 12/16 s8 d,8
    } >>
  | << {
      \once\shape #'((0 . 0) (0 . 1) (0 . 1) (1 . 0)) PhrasingSlur
      \stemDown \ctuplet b'32\( ais\)
      \once\shape #'((0 . 0) (0 . 0) (0 . -1) (1.5 . 0)) PhrasingSlur
      \stemUp \ctuplet c,32_\( b\)
      \once\shape #'((0 . 0) (0 . 1) (0 . 1) (1 . 0)) PhrasingSlur
      \stemDown \ctuplet a'32\( gis\)
    } \\ {
      \stemUp \afterGrace 12/16 s8 b8
      \stemUp \afterGrace 12/16 s8 c,8
      \stemUp \afterGrace 12/16 s8 a'8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet b'32\( ais\)
      \stemUp \shapeDown \ctuplet c,32_\( b\)
      \stemDown \shapeUp \ctuplet a'32\( gis\)
    } \\ {
      \stemUp \afterGrace 12/16 s8 b8
      \stemUp \afterGrace 12/16 s8 c,8
      \stemUp \afterGrace 12/16 s8 a'8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet a,32\( gis\)
      \stemUp \shapeDown \ctuplet ees'32_\( d\)
      \stemDown \shapeUp \ctuplet des32\( c\)
    } \\ {
      \stemUp \afterGrace 12/16 s8 a8
      \stemUp \afterGrace 12/16 s8 ees'8
      \stemUp \afterGrace 12/16 s8 des8
    } >>
  %5
  | << {
      \stemDown \shapeUp \ctuplet c,32\( b\)
      \stemUp \shapeDown \ctuplet d32_\( cis\)
      \stemDown \shapeUp \ctuplet a'32\( gis\)
    } \\ {
      \stemUp \afterGrace 12/16 s8 c,8
      \stemUp \afterGrace 12/16 s8 d8
      \stemUp \afterGrace 12/16 s8 a'8
    } >>
  | << {
      \stemDown \shapeUp \ctuplet d32\( cis\)
      \repeat tremolo 4 { cis32\( bisis\) }
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 d8
      \afterGrace 10/16 s4 cis8
    } >>
  | s4.
  | a,8[\( b cis d
    \change Staff = "upper"
    e eis f g
  | gis a b cis d e]\)
    \change Staff = "lower"
    << {
      \appoggiatura ees,8
      \stemUp \shapeUp
      \repeat tremolo 4 { d32\( cis\) }
    } \\ {
      \stemUp
      \afterGrace 12/16 s4 d8
    } >>
  %10
   | << {
      \stemUp \shapeDown \ctuplet g32_\( fis\)
      \stemDown \shapeUp \ctuplet c'32\( b\)
      \stemUp \shapeDown \ctuplet d,!32_\( cis\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 g'8
      \afterGrace 12/16 s8 c8
      \afterGrace 12/16 s8 d,8
    } >>
  | << {
      \stemUp \shapeUp \ctuplet b'32\( ais\)
      \stemUp \shapeDown \ctuplet c,32_\( b\)
      \stemUp \shapeDown \ctuplet a'!32_\( gis\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 b8
      \afterGrace 12/16 s8 c,8
      \afterGrace 12/16 s8 a'8
    } >>
  | << {
      \clef bass
      \once\omit Slur
      \acciaccatura <ees,,, ees'>8_\sff
      \clef treble
      \stemDown \shapeUp \ctuplet b'''''32\( ais\)
      \stemDown \shapeUp \ctuplet c,32\( b\)
      \stemDown \shapeUp \ctuplet c'!32\( b\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 b8
      \afterGrace 12/16 s8 c,8
      \afterGrace 12/16 s8 c'8
    } >>
  | << {
      \stemUp \shapeDown \ctuplet ees,,32_\( d\)
      \stemDown \shapeUp \ctuplet des'!32\( c\)
      \clef bass
      \once\omit Slur
      \ottava #-1
      \acciaccatura <a,,,, a'>8
      \ottava #0
      \clef treble
      \stemDown \shapeUp \ctuplet a'''''!32\( gis\)
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 e,8
      \afterGrace 12/16 s8 des'8
      \afterGrace 12/16 s8 a'8
    } >>
  | \repeat tremolo 4 {
      c,32\( b\)
    }
    \clef bass
    << {
      \stemUp \ctuplet a,,!32\sf_\( gis
    } \\ {
      \stemUp
      \afterGrace 12/16 s8 a8
    } >>
  %15
  | << { bes16\) d\rest } \\ { s8 } >>
    \stemUp
    \tuplet 3/2 8 {
      bes16[\pp bes'
      \change Staff = "upper"
      a a' bes-\markup { \small "m.g" }
      bes'
    }
    \change Staff = "lower"
  | \clef treble
    \tuplet 3/2 8 {
      a16-\markup { \small "m.d" } a'
      \change Staff = "upper"
      bes, bes']
      r8
    }
    r8
    \change Staff = "lower"
  | R1
  | s1
  | s1
  %20
  | %\once \override ParenthesesItem.stencils = #bracket-stencils
    \afterGrace d,,,8_(\startTrillSpan^\markup {
      \tiny\concat{ "(" \flat ")" }
    } { cis16\stopTrillSpan d )}
    s4
  | \set Staff.pedalSustainStyle = #'text
    s8
    \once\shape #'((0 . 0) (0 . -3) (0 . -3) (0 . 0)) PhrasingSlur
    \hideNotes r8_\(\sustainOn s8\unHideNotes
  | s8
    \tuplet 6/4 8 {
      \stemDown
      ges32[ bes des ees ges bes]
    }
    \tuplet 6/4 8 {
      des32[ ees ges
      \ottava #1
      bes des ees]\)
      \ottava #0
    }
  | b,,8\rest b\rest b\rest\fermata\sustainOff
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
  % composer = "Rued Langgaard"
    % workaround: insert some vertical space after the header
    composer = " "
  % opus = "BVN 134"
    subtitle = "Musca domestica"
    subsubtitle = "(Housefly)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "VII"
       %}
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 60
  }
}
