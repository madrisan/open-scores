Global = {
   \key c \major
   \time 3/4
   \override Score.Footnote.annotation-line = ##f
   \override Score.BarLine.transparent = ##t
   \override Score.SpanBar.transparent = ##t
   \set Staff.pedalSustainStyle = #'mixed
}

fasterandfaster = {
   \override TextSpanner.bound-details.left.text = \markup {
      \tiny \bold { "faster and faster " }
   }
}

Upper = \relative c'' {
   \clef treble
   %1
   | a'16[\(-\markup { \dynamic p { \tiny \italic " (crawling)" } }
     dis, e bes' a ees]
     d![ gis fis c b f'!]
   | e[ bes aes d c ges]
     f[ b! a! ees des g ]
   | \stemDown
     b[ fis g des' ees a,]
     aes[ d! cis g b f'!]
   | a[ b, c! bes' b! cis,]
     g[ f' cis gis fis' d]
   %5
   | g,![f'! des g, fis e' ]
     \stemUp
     c[ fis, f! des f! des]~
   | des[ a' f a f des]
     c[ fis g cis, d! g]
   | aes[ d, d' a! g e']
     \stemDown
     f[ b, cis a' b dis,]
   | g[ cis dis b c g']\)
     <ees,, a c ees>4.~\sff
   | <ees a c ees>4_>
     \footnote \markup \tiny "(*)" #'(-0.8 . 3) \markup \tiny \wordwrap {
       (*) \italic {
         "Even more repetitions of the dimished fifth, distributed in the same rhythmical patters as above, should be inserted."
	 \general-align #Y #-1.6
         "Furthemore, the tempo in this movement should gradually reach the unbelievable."
       }
     } Stem
     <a ees'>4^>^\markup \tiny \bold { "(crazy)" }
     <a ees'>4^>~
   %10
   | <a ees'>4
     <a ees'>8~->
     <a ees'>[ <a ees'>-> <a ees'>->~]
   | <a ees'>16[ <a ees'>32->\fasterandfaster
     <a ees'>->~_\startTextSpan
     <a ees'>8. <a ees'>16->]
     \set subdivideBeams = ##t
     \set baseMoment = #(ly:make-moment 1/8)
     <a ees'>8->[ <a ees'>16-> <a ees'>16->~ <a ees'>16 <a ees'>16->]~
   | <a ees'>8 <a ees'>4->~ <a ees'>16[ <a ees'>16-> <a ees'>16-> <a ees'>16->~ <a ees'>8]
   | <a ees'>32->[ <a ees'>32-> <a ees'>16->~ <a ees'>16 <a ees'>16~-> <a ees'>16 <a ees'>16->]_\stopTextSpan
     r4^\markup \tiny \italic \bold { hands above the head }_\markup \tiny \italic \bold { "ad libitum!" }
     \set subdivideBeams = ##f
     r8\fermata
   \break
   | r4. \stemUp d,16\([ e f cis c! f]
   %15
   | gis[ d-\markup { \dynamic p \italic sempre } f b d bes] \stemDown a[ ees' f d c fis]
   | aes[ d, ees a! cis g] f[ des g, e'! a, ees]
   | g[ f' des g, fis e'!] c[fis, f! des f des~]
   | des[ a' f a f des] c[fis g cis, d! g]
   | aes[ d, d' a! g e']
     \stemDown
     f[ b, cis a' b dis,]
   %20
   | g[ cis dis b c g']\)
     <ees,, a c ees>4.~\sff
   | <ees a c ees>4_>
     <a ees'>4^> <a ees'>4^>~
   | <a ees'>4
     <a ees'>8~->
     <a ees'>[ <a ees'>-> <a ees'>->~]
   | <a ees'>16[ <a ees'>32->
     <a ees'>->~
     <a ees'>8. <a ees'>16->]
     \set subdivideBeams = ##t
     \set baseMoment = #(ly:make-moment 1/8)
     <a ees'>8->[ <a ees'>16-> <a ees'>16->~ <a ees'>16 <a ees'>16->]~
     \set subdivideBeams = ##f
   | <a ees'>32[ <a ees'>32-> <a ees'>32-> <a ees'>32->~ <a ees'>16. <a ees'>32-> <a ees'>16-> <a ees'>16->]~
     <a ees'>32[ <a ees'>32->~ <a ees'>32 <a ees'>32->~ <a ees'>16 <a ees'>16->~ <a ees'>32 <a ees'>32-> <a ees'>32-> <a ees'>32->]~
   %25
   | \set subdivideBeams = ##t
     \set baseMoment = #(ly:make-moment 1/8)
     <a ees'>32[ <a ees'>32-> <a ees'>32-> <a ees'>32->~
     <a ees'>32 <a ees'>32-> <a ees'>32->~ <a ees'>32~
     <a ees'>32 <a ees'>32->~ <a ees'>32 <a ees'>32->]
     \set subdivideBeams = ##f
     << { b4\rest\ff b8\rest\fermata }
       \\ { s8
            \stemUp
            \magnifyMusic 1.5 {
              \once \override Stem.length = #8
              d,4\harmonic-\markup \teeny \italic {
                \column {
                  "grasp the"
                  \general-align #Y #-4
                  "bass strings"
                }
              }
            }
	  } >>
   | \ottava #1
     bes''''16_\pp\([ e, bes e \ottava #0 bes e,] bes[ e bes e, bes e,]
   | \stemUp \change Staff = "lower" {
       \shiftOff
       bes[ e bes e, bes e,]\)
       r4.\fermata
     }
     \change Staff = "upper"
   \override Score.SpanBar.transparent = ##f
   \override Score.BarLine.transparent = ##f
   \fine

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
   \clef bass
   %1
   | s2 s4
   | << { } \\ { \stemUp bes,2.\pp~ } >>
   | << { } \\ { \stemUp bes4.~ bes4 d8~ } >>
   | << { } \\ { \stemUp d4.~ d8 bes4~ } >>
   %5
   | << { } \\ \stemUp bes2.~ >>
   | << {  <a' a'>8-.[ <a a'>8^>] r8 } \\ { \stemDown bes,2._\mp~ } >>
   | << { } \\ { \stemUp bes4~ bes8.  a4~ a16~ } >>
   | << { s4.
          \override DynamicText.self-alignment-X = #RIGHT
          \override DynamicText.X-offset =
            #(lambda (grob)
               (- (ly:self-alignment-interface::x-aligned-on-self grob)
               1.2))
          \override DynamicLineSpanner.direction = #UP
          \slashedGrace e'''8-\ff
          \revert DynamicText.self-alignment-X
          \revert DynamicText.X-offset
          \revert DynamicLineSpanner.direction
        }
       \\ { \stemUp a,,,4. r16_\ff a32[a32]~ a4~ } >>
   | << { s4 \stemDown <a'' ees'>4\sf-> <a ees'>4\sf->~ } \\ a,,2. >>
   %10
   | << { \stemDown <a'' ees'>4 <a ees'>8~->\ff <a ees'>[ <a ees'>-> <a ees'>->] }
       \\ { } >>
   | <a ees'>16[ <a ees'>32->\sff <a ees'>->~
     <a ees'>8. <a ees'>16->]\sf
     \set subdivideBeams = ##t
     \set baseMoment = #(ly:make-moment 1/8)
     <a ees'>8->[ <a ees'>16->\sff <a ees'>16->~ <a ees'>16 <a ees'>16->]~
   | <a ees'>8 <a ees'>4->~\sff <a ees'>16[ <a ees'>16-> <a ees'>16-> <a ees'>16->~ <a ees'>8]
   | <a ees'>32->[ <a ees'>32->\fff <a ees'>16->~\< <a ees'>16 <a ees'>16~-> <a ees'>16\! <a ees'>16->]
     \set subdivideBeams = ##f
     r4 r8\fermata
   | d,,,2.\pp~
   %15
   | d8 aes'4\<-\markup \tiny { \italic reluctantly } b4 d8~\!
   | d16.[ f32~]\sff f4~ f4 << { } \\ { \stemUp b,8\pp~ } >>
   | << { } \\ { \stemUp b2.~ } >>
   | << { } \\ { \stemUp b2.~ } >>
   | << { } \\ { \stemUp b4.~ b8 a4 } >>
   %20
   | << { s4.
          \override DynamicText.self-alignment-X = #RIGHT
          \override DynamicText.X-offset =
            #(lambda (grob)
               (- (ly:self-alignment-interface::x-aligned-on-self grob)
               1.2))
          \override DynamicLineSpanner.direction = #UP
          \slashedGrace e'''8-\ff
          \revert DynamicText.self-alignment-X
          \revert DynamicText.X-offset
          \revert DynamicLineSpanner.direction
        }
       \\ { \stemUp a,,,4. r16 a32[a32]~ a4~ } >>
   | << { s4 \stemDown <a'' ees'>4\sf-> <a ees'>4\sf->~ } \\ a,,2. >>
   | << { \stemDown <a'' ees'>4 <a ees'>8~->\ff <a ees'>[ <a ees'>-> <a ees'>->] }
       \\ { } >>
   | <a ees'>16[ <a ees'>32->\sff <a ees'>->~
     <a ees'>8. <a ees'>16->]
     \set subdivideBeams = ##t
     \set baseMoment = #(ly:make-moment 1/8)
     <a ees'>8->[ <a ees'>16-> <a ees'>16->~ <a ees'>16 <a ees'>16->]~
     \set subdivideBeams = ##f
   | <a ees'>32[ <a ees'>32-> <a ees'>32-> <a ees'>32->~ <a ees'>16. <a ees'>32-> <a ees'>16-> <a ees'>16->]~
     <a ees'>32[ <a ees'>32->~ <a ees'>32 <a ees'>32->~ <a ees'>16 <a ees'>16->~ <a ees'>32 <a ees'>32-> <a ees'>32-> <a ees'>32->]~
   %25
   | \set subdivideBeams = ##t
     \set baseMoment = #(ly:make-moment 1/8)
     <a ees'>32-\markup \italic { \dynamic sff sempre }[ <a ees'>32-> <a ees'>32-> <a ees'>32->~
     <a ees'>32 <a ees'>32-> <a ees'>32->~ <a ees'>32~
     <a ees'>32 <a ees'>32->~ <a ees'>32 <a ees'>32->]
     \set subdivideBeams = ##f
     r4\sustainOn r8\fermata
   | bes,,,2.~
   | bes2.

   \override Score.SpanBar.transparent = ##f
   \override Score.BarLine.transparent = ##f
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
    }
    \new Staff = "lower" {
      \Global
      \Lower
    }
  >>
  \header {
    composer = "Rued Langgaard"
    %opus = "BVN 134"
    % workaround to insert some vertical space after the opus
    opus = \markup {
             \column {
               \line { "BVN 134" }
               \line { " " }
               \line { " " }
               \line { " " }
             }
           }
    subtitle = "Forficula auricularia"
    subsubtitle = "(Earwig)"
    title = \markup {
       %\override #'(font-name . "TeX Gyre Schola") {
       "I"
       %}
    }
  }
  \layout {
    \context { \Score
      \omit BarNumber
      \omit TimeSignature
    }
  }
  \midi {
    \tempo 4 = 40
  }
}
