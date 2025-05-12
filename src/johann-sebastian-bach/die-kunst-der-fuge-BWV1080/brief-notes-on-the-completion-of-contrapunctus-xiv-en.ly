\include "macros.ly"

\label #'BriefNotesContrapunctusXIVen

\markup \fill-line {
  \center-column \abs-fontsize #14 \bold \with-color #middleGrey {
    \null
    "Brief notes on the completion of Contrapunctus XIV"
    \null
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Ruth Tatlow states that the Art of Fugue is
      “the most developed thesis of Bach as a mathematician”
      \abs-fontsize #8 {
        [Bach and the riddle of the number alphabet – 1991, Cambridge University Press].
      }
      We will see some examples in these notes, where \italic { “mathematician” } is to be understood
      primarily in the geometric-algebraic sense of the proportions of the composition and the relationships
      between musical voices.
      Most of the material that follows is based on Indra Nicholas Martindale Hughes'
      \with-url #"https://researchspace.auckland.ac.nz/handle/2292/392" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "doctoral thesis" }
      }
      \italic {
        “Accident or Design? New Theories on the Unfinished Contrapunctus 14 in J. S. Bach’s
        The Art of Fugue BWV 1080”
      } — 2006, University of Auckland.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "one" "XIV and no further"
  }
}

\markup {
  \column {
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #9 \italic \with-color #middleGrey {
      “Seine letzte Kranckheit, hat ihn verhindert, seinem Entwurfe nach, die vorletze
      Fuge völlig zu Ende zu bringen, und die letzte, welche 4 Themata enthalten, und
      nachgehends in allen 4 Stimmen Note für Note umgekehret werden sollte, auszuarbeiten.”
      — \italic { from Bach's Obituary, 1754 }
    }
    \pad-around #1
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \wordwrap \abs-fontsize #9 \with-color #middleGrey {
      [His last illness prevented him from completing the penultimate fugue according to his
      draft, and from working out the last one, which was to contain 4 themes and subsequently
      be reversed note for note in all 4 voices. This work only came to light after the blessed
      author's death.]
    }
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The Bach's Obituary was written in the latter half of 1750, within months of Bach’s death, and
      published in 1754 in Lorenz Christoph Mizler's \italic { Musikalische Bibliothek, }
      the organ of Mizler's Musical Society of which Bach had been a member from 1747
      (the 14th member admitted to the society, see below).
      Although no author is indicated in the article, its authors are known to be Carl Philipp Emanuel,
      Bach's son, and Johann Friedrich Agricola, one of Bach's pupils.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Huges believes that the words \italic { “penultimate” } and \italic { “last” } in the obituary excerpt
      above should be interpreted as the third (incomplete) and fourth (missing) parts of Contrapunctus XIV,
      and that a Contrapunctus XV was never planned by Bach.
      The Contrapunctus XIV was presumably meant by Bach as a \italic { quadruple fugue } – a fugue with four
      subjects.
      Only three subjects are present in the extant portion of the fugue, but a fourth one is visibly
      missing.
      The Art of Fugue is in fact an in-depth exploration of the contrapuntal possibilities
      inherent in a single musical subject and this subject cannot fail to appear in every fugue.
      However, it was not until 1881 that Gustave Nottebohm discovered that this main Art of
      Fugue subject is able to be combined with the first three subjects, and that it
      must therefore have been the fourth subject of this quadruple fugue
      \abs-fontsize #8 {
        [Nottebohm, G. (1881) “J. S. Bachʹs letzte Fuge” Music‐Welt: 234].
      }
      The combination of the four subjects as given by Nottebohm and Christoph Wolff follows.
    }
  }
}

\markup \fill-line {
  \override #'(baseline-skip . 0)
  \center-column {
    \vspace #1
    \line {
\score {
  \new PianoStaff
  <<
    \applyContext #(override-color-for-all-grobs middleGrey)
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \clef treble
      \omit Staff.TimeSignature
      \context Voice = "one" \relative c'' {
        \voiceOne
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        %1
        | \stemUp
          d2^\markup \subject #'(0 . 0) #1 a'
        | f d
        | cis d4 e
        | f2~ f8 g f e
        %5
        | d8 s s2.
        | s1
        | s1
          \bar ""
      }
      \context Voice = "two" \relative c' {
        \voiceTwo
        \override MultiMeasureRest.staff-position = #-10
        %1
        | \stemDown
          r4 f8_\markup \subject #'(0 . 0) #2 g f e d cis
        | d a d e f e d f
        | e a, e' f g f16 e f8 g
        | a g f g a2~
        %5
        | a8[ g16 fis g8 a] bes2~
        | bes8 a g f e d e g
        | \once\omit Stem f4 s2.
      }
    >>
    \context Staff = "lower" <<
      \clef bass
      \omit Staff.TimeSignature
      \context Voice = "tenor" \relative c' {
        %1
        | \stemUp\tieUp
          s1
        | s1
        | r2 bes^\markup \subject #'(-1 . 0) #3
        | a c
        %5
        | b4. cis8 d2~
        | d4. cis16 b cis2
        | \once\omit Stem d4 s2.
      }
      \context Voice = "bass" \relative c {
        \voiceFour
        %1
        | \stemDown s1
        | d2\rest d_\markup \subject #'(0 . 0) #4
        | a'2. g4
        | f1
        %5
        | g1
        | a1
        | \once\omit Stem d,4 s2.
          \bar ""
      }
    >>
  >>
  \header { }
  \layout {
    indent = 0
    line-width = 16\cm
    ragged-right = ##f
    %system-system-spacing = #'((basic-distance . 0) (padding . 0))
    #(layout-set-staff-size 13)
  }
  \midi { }
}}}}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Thus, according to the obituary, the fourth and final section of Contrapunctus XIV is to include at
      least two episodes in which the four subjects appear together in a recto and inversus combination.
      Here is an alternative solution to the quadruple subjets combination, as proposed by
      Hughes.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey { " " }
  }
}

\markup \fill-line {
  \override #'(baseline-skip . 0)
  \center-column {
    \line {
\score {
  \new PianoStaff
  <<
    \applyContext #(override-color-for-all-grobs middleGrey)
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef treble
      \omit Staff.TimeSignature
      \context Voice = "one" \relative c' {
        \voiceOne
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        %1
        | \stemUp
          f4\rest f8^\markup \subject #'(0 . 0) #2 g f e d cis
        | d a d e f e d f
        | e a, e' f g[ f16 e f8 g]
        | a g f g a2~
        %5
        | a8[ g16 fis g8 a] bes2~
        | bes8 a g f e d e g
        | \once\omit Stem f4 s2.
          \bar ""
      }
      \context Voice = "two" \relative c' {
        \voiceTwo
        \override MultiMeasureRest.staff-position = #-10
        %1
        | \stemDown
          R1
        | R
        | \once\override Voice.Rest.X-offset = #-0.8
          r2 bes_\markup \subject #'(1 . 0) #3
        | a c
        %5
        | b4. cis8 d2~
        | d4. cis16 b cis2
        | \once\omit Stem d4 s2.
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef bass
      \omit Staff.TimeSignature
      \context Voice = "tenor" \relative c {
        %1
        | \stemUp\tieUp
          d2_\markup \subject #'(0 . 0) #1 a'4. g8
        | f4. e8 d2
        | cis d4. e8
        | f2~ f8 g f e
        %5
        | d r r4 r2
        | R1
        | s
      }
      \context Voice = "bass" \relative c {
        \voiceFour
        %1
        | \stemDown
          R1
        | r2 d,_\markup \subject #'(1 . 0) #4
        | a'2. g4
        | f1
        %5
        | g1
        | a1
        | \once\omit Stem d,4 s2.
          \bar ""
      }
    >>
  >>
  \header { }
  \layout {
    indent = 0
    line-width = 16\cm
    ragged-right = ##f
    #(layout-set-staff-size 13)
  }
  \midi { }
}}}}

\markup {
  \column {
    \vspace #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      And his solution to the arduous problem of the quadruple inversus combination,
      using the 14‐note form of { \smaller\circle\musicglyph "four". }
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey { " " }
  }
}

\markup \fill-line {
  \override #'(baseline-skip . 0)
  \center-column {
    \line {
\score {
  \new PianoStaff
  <<
    \applyContext #(override-color-for-all-grobs middleGrey)
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef treble
      \omit Staff.TimeSignature
      \context Voice = "one" \relative c'' {
        \voiceOne
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        %1
        | \stemUp
          f2^\markup \scale #'(1 . -1) \subject #'(0 . 0) #4 bes,4. c8
        | d4. ees8 f2
        | g2 f4. ees8
        | d2~ d8 c d e
        %5
        | f4 aes,8 bes c ees des c
        | des c bes4 c8 bes a4
        | \once\omit Stem aes s2.
          \bar ""
      }
      \context Voice = "two" \relative c' {
        \voiceTwo
        %1
        | \stemDown
          R1  % b8\rest c d ees f c d ees
        | R1  % d4. c8 bes2~
        | r2  % bes4 r
          a'2_\markup \scale #'(1 . -1) \subject #'(1 . 0) #3
        | bes g
        %5
        | aes4. ges8 f2~
        | f4. ges16 aes ges2
        | \once\omit Stem f4 s2.
      }
    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef bass
      \omit Staff.TimeSignature
      \context Voice = "tenor" \relative c {
        %1
        | \stemUp\tieUp
          r4 d8^\markup \scale #'(1 . -1) \subject #'(0 . 0) #2 c d ees f g
        | f bes f ees d ees f d
        | ees bes' ees, d c d16 ees d8 c
        | bes c d c bes2~
        %5
        | bes8 c16 des c8 bes a2~
        | a8 bes c d ees f ees c
        | \once\omit Stem d4 s2.
      }
      \context Voice = "bass" \relative c {
        \voiceFour
        %1
        | \stemDown
          R1
        | r2 bes2_\markup \scale #'(1 . -1) \subject #'(0 . 0) #1
        | ees,2. f4
        | g1
        %5
        | f
        | ees
        | \once\omit Stem bes'4 s2.
          \bar ""
      }
    >>
  >>
  \header { }
  \layout {
    indent = 0
    line-width = 16\cm
    ragged-right = ##f
    #(layout-set-staff-size 13)
  }
  \midi { }
}}}}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #2
    \musicglyph "two" "Symbology of the number 14"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The Art of Fugue is rich in symbolism related to the number 14,
      which is a transposition of the name Bach
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \pad-around #2
    \column {
      \line { "B + A + C + H = 2 + 1 + 3 + 8 = 14" }
    }
  }
}
\markup {
  \pad-around #1
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      according to number alphabet designated by Tatlow as
      “Latin natural-order: variant 1” \abs-fontsize #8 { [op. cit.] }
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 2)
    \pad-around #2
    \center-column {
      \line {
        "A: 1" "B: 2" "C: 3" "D: 4" "E: 5" "F: 6" "G: 7" "H: 8" "I/J: 9"
        "K: 10" "L: 11" "M: 12" "N: 13"
      }
      \line {
         "O: 14" "P: 15" "Q: 16" "R: 17" "S: 18" "T: 19" "U/V: 20" "W: 21" "X: 22"
         "Y: 23" "Z: 24"
      }
    }
  }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The number 41, the retrograde of 14, is also present in the Art of Fugue, where:
    }
  }
}

\markup \fill-line {
  \pad-around #1
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \column {
      \line { "J + S + B + A + C + H = 9 + 18 + 2 + 1 + 3 + 8 = 41" }
    }
  }
}

\pageBreak

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      "Occurrences of the number 14 and 41 in the Art of Fugue:"
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      " • In The Art of Fugue" "there are 14 Contrapuncti"
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 2)
  \table
    #'(-1 -1)
    {
      " • Contrapunctus I"
          \concat {
            "the first two notes are D and A: 4 and 1 "
            \abs-fontsize #8 { "[Kellner, H. A. (May 1999) The Diapason]" }
          }
      " • Contrapunctus II"             "there are 14 entries of the subject"
      " • Contrapunctus V and onwards"  "the subject with and addition of passing notes arrives at a total of 14 notes"
      " • Contrapunctus V"              "appearance of the BACH motive at bar 41"
      " • Contrapunctus VI"             "there are 14 entries of the subject rectus and 14 entries inversus"
      " • Contrapunctus XIV"            "the second subject consists of 41 notes"
      " • Contrapunctus XIV"            "the BACH motive makes its most prominent appearance as the third subject"
      " • Contrapunctus XIV"            "the last (incomplete) bar has number 239, and 2 + 3 + 9 = 14"
    }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      This should reinforce Huges' theory of the non-existence of an additional
      Contrapunctus XV designed by Bach at the close of the Art of Fugue cycle:
      ending the cycle with Fugue XIV would better adhere to this symbolism.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "three" "Subjects exposition and 4-chars permutations"
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The order of voices in which each subject enters at its exposition in Contrapunctus XIV is
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 6)
    \column {
      \line { "Section 1" "B T A S" }
      \line { "Section 2" "A S B T" }
      \line { "Section 3" "T A S B" }
      \line { "Section 4" "?" }
    }
  }
}
\markup {
  \pad-around #3
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      where “B” stands for bass, “T” for tenor, “A” for alto and “S” for soprano.
      One permutation is missing, and given Bach's love of algebraic games
      (or simply to vary the order of items in the expositions as much as possible)
      the likely order of appearance of the subjects in the fourth section should be reasonably:
      S B T A. This leads to what is known as \italic { Zoltán Göncz's permutation matrix. }
    }
  }
}

\markup \center-column {
  \pad-around #2
  \line {
    \hspace #26
    \general-align #Y #DOWN {
      \epsfile #X #50 #"bwv1080-subjects-1-2-3-4-permutation.eps"
    }
  }
}


\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "four" "Ratio of section lengths in Contrapunctus XIV"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Some of Bach's compositions show a constant proportional ratio in the number of bars of
      the different sections that make them up.
      This principle also seems to be present in Contrapunctus XIV according to Gregory Butler.
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      “If we examine the relative proportions of the three extant sections of this fugue,
      we notice a consistent diminution in the lengths of successive sections.
      Moreover, section 2 (78 measures) is almost exactly two-thirds the length of section 1
      (115 measures), and section 3, not quite complete, occupies forty-six measures and
      conceivably in its complete state would have occupied approximately two-thirds the
      length of section 2 (52 measures). Adhering to the same proportions, section 4 may
      well have occupied approximately two-thirds the length of section 3, that is,
      approximately thirty-four measures.”
      \abs-fontsize #8 \normal-text {
        [Butler, G.: Ordering Problems in J S Bach's 'Art of Fugue' Resolved]
      }
    }
  }
}
\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      This theory was refined by Hughes as follows.
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 4)
    \column {
      \line {
        "Section 1" "bars 1 – 114.25"
      }
      \line {
        "Section 2" "bars 114.25 – 192.50   →   79.25 bars (1.4(4) = ratio 2·1)"
      }
      \line {
        "Section 3"
        \concat {
          "bars 192.50 – 248.50   ←   "
          \bold { "55 bars" } " to achieve a ratio 3·2 of 1.4, "
          \bold { "9 bars" } " missing (up to bar 248)"
        }
      }
      \line {
        "Section 4"
        \concat {
          "bars 248.50 – 286.50   ←   "
          \bold { "38 bars" } " to achieve a ratio 4·3 of 1.4 (up to bar 286)"
        }
      }
    }
  }
}

%\score {
%  \new PianoStaff
%  <<
%    \accidentalStyle Score.piano
%    \context Staff = "upper" <<
%      \set Staff.midiInstrument = #"acoustic grand"
%      \clef treble
%      \context Voice = "one" {
%        | \set Score.currentBarNumber = #239
%          \omit Staff.TimeSignature
%          \stemDown f'4 s2.
%        | \override Score.BarNumber.break-visibility = ##(#t #t #t)
%          \override Score.BarNumber.color = #lightGrey
%          \set Score.barNumberVisibility = #all-bar-numbers-visible
%          \set Score.currentBarNumber = #240
%          s4_\markup \tiny\italic \with-color #lightGrey {
%            \column \italic { "9 bars missing" }
%          }
%          s2.
%          \applyContext #(override-color-for-all-grobs lightGrey)
%        | \set Score.currentBarNumber = #249
%          \override Score.BarLine.color = #lightGrey
%          \override Score.SpanBar.color = #lightGrey
%          s4^\markup {
%            \hspace #0 \raise #1 "XIV/d"
%          }_\markup \tiny\italic {
%               \column \italic {
%                 "38 bars missing,"
%                 "up to bar 286"
%               }
%          }
%          \revert Score.BarNumber.break-visibility
%          s2.
%         \fine
%      }
%    >>
%    \context Staff = "lower" <<
%      \set Staff.midiInstrument = #"acoustic grand"
%      \clef bass
%      \context Voice = "two" {
%        | \omit Staff.TimeSignature
%          << { d'8 e' d' c'! b a b d' }
%          \\ { d4 s2. } >>
%          \applyContext #(override-color-for-all-grobs lightGrey)
%        | s1
%        | s1
%          \fine
%      }
%    >>
%  >>
%  \header { }
%  \layout {
%    indent = 0
%    ragged-right = ##f
%  }
%  \midi { }
%}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      This extrapolation may seem really far-fetched, but it becomes less so when one takes into
      account that the ratio 1.4 also appears among the Kyrie sections
      in the \italic { Mass in B minor, } where the three movements of the Kyrie
      (Kyrie I – Christe – Kyrie II) sit in a diminishing proportional relationship to one another,
      a ratio of 1.4 existing between the relative lengths of each movement 122 : 84.75 : 59.
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Finally, note that 55 = 14 + 41.
      Another number frequently seen in Bach's music.
    }
  }
}

\markup \fill-line {
  \pad-around #3
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "five" "Multi-level proportions"
  }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The Art of Fugue shows remarkable symmetries on multiple levels.
    }
  }
}
\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      At the macroscopic level, as Yasuhiko Nakajima points out on his website
      \with-url #"https://www.lcv.ne.jp/~nakgie/English/" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "The Art of Fugue Laboratory" }
      }
      one can see a symmetry by total number of bars per section.
    }
  }
}

\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 4)
  \table
    #'(0 -1 -1 1 1)
    {
      " " "" "" "" ""
      " " \italic { Style "G. Butler's reconstruction"       "Bar number"  "Tot. bars" }
      "" " "             ""                                    ""            ""
      "" "Simple"        "Contrapunctus I"                      78   ""
      "" ""              "Contrapunctus II"                     84   ""
      "" ""              "Contrapunctus III"                    72   372
      "" ""              "Contrapunctus IV"                    138   ""
      "" " "             ""                                    ""    ""
      "" "Inversion"     "Contrapunctus V"                      90   ""
      "" ""              "Contrapunctus VI"                     79   230
      "" ""              "Contrapunctus VII"                    61   ""
      "" " "             ""                                    ""    ""
      "" "Three themes"  "Contrapunctus VIII"                  188   ""
      "" "Two themes"    "Contrapunctus IX"                    130   438
      "" ""              "Contrapunctus X"                     120   ""
      "" " "             ""                                     ""   ""
      "" "Three themes"  "Contrapunctus XI"                    184   ""
      "" "Mirror"        "Contrapunctus XII rectus/inversus"   112   438
      "" ""              "Contrapunctus XIII recus/inversus"   142   ""
      "" " "             ""                                    ""    ""
      "" "Four themes"   "Contrapunctus XIV"                   239   \bold { 239 }
      "" " "             ""                                    ""    ""
      "" "Canons"        "Canon I"                             103   ""
      "" ""              "Canon II"                             82   ""
      "" ""              "Canon III"                            78   372
      "" ""              "Canon IV"                            109   ""
    }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Counterpoint XIV breaks the symmetry, by not having 230 bars.
    }
  }
}

\pageBreak

\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      A deeper
      \with-url #"https://www.jstor.org/stable/43030058?seq=1" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "mathematical analysis" }
      }
      of The Art of Fugue’s structure made by Loïc Sylvestre and Marco Costa
      \abs-fontsize #8 {
        [The Mathematical Architecture of Bachʹs The Art of Fugue - Il Saggiatore Musicale, 2010]
      }
      shows an amazing adherence to the \italic { Fibonacci sequence }
    }
  }
}
\markup \fill-line {
  \pad-around #1
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    "1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, ..."
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Fibonacci numbers are intimately linked to the irrational number called the \italic { golden ratio }
    }
  }
}
\markup \fill-line {
  \pad-around #1
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \concat {
      \char ##x1D6DF " " = " "
      \fraction \concat { "1" "+" \char ##x221A "5" } "2"
      " " \char ##x2248 " " 1.618 }
  }
}


\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      because if F(n) describes the nth Fibonacci number, the quotient of the adjacent terms F(n+1) / F(n)
      will approach the limit \char ##x1D6DF .
      The golden ratio, in its geometric manifestation, was already known to ancient Greek mathematicians
      and was also very popular among artists even in times before Bach's.
      Euclid's Elements provides the first known written definition:
      \italic { “A straight line is said to have been cut into the extreme and golden ratio when,
      as the whole line stands to the greater segment, so the greater stands to the lesser.” }
    }
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      We will focus on the ratios in the number of bars of the Art of Fugue, using the following rationale.
      Since in the manuscript the \italic { rectus } and \italic { inversus } of Contrapuncti XII and XIII
      are not written separately, but aligned, one below the other as a unit, we consider here their number
      of bars only once instead of summing rectus and inversus.
      Some examples of golden ratios follows. (Here \char ##x2211 means ‘sum of bars’.)
    }
  }
}

\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1 0 0)
    {
      \abs-fontsize #8 { "(1)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,5,6,7" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4" }
      "=" "602 / 372"
      "=" "1.618" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(2)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 5,6,7" }
      "=" "372 / 230"
      "=" "1.617" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(3)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,...,12,13,14" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 8,9,10,11,12,13,14" }
      "=" "1590 / 988"
      "=" "1.609" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(4)" }
      \concat { \char ##x2211 "Contrapuncti 8,9,10,11,12,13,14" }
      "/"
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,5,6,7" }
      "=" "988 / 602"
      "=" "1.641" \char ##x2248 \char ##x1D6DF

      \abs-fontsize #8 { "(5)" }
      \concat { \char ##x2211 "Contrapuncti 1,2,3,4,5,6,7" }
      "/"
      \concat { \char ##x2211 "Canons 1,2,3,4" }
      "=" "602 / 230"
      "=" "1.618" \char ##x2248 \char ##x1D6DF
    }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      These examples also show a beautiful fractal phenomenon of \italic { self-similarity. }
      It can also be observed that the ratio (3) would be 1.614 with a 230 bar long Contrapunctus XIV.
      Likewise the ratio (4) would be 1.626.
      Both better approximations of the \char ##x1D6DF value.
    }
  }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Other symmetries are present within the Contrapuncti.
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1)
    {
      "   "
      \concat { "Contrapunctus I" } "/" \concat { "Contrapunctus III" } "=" "78 / 72" "=" "1.083"
      "   "
      \concat { "Contrapunctus IX" } "/" \concat { "Contrapunctus X" } "=" "130 / 120" "=" "1.083"
    }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      And also within the four Canons, which can be divided into two pairs that share nearly the same ratio.
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1)
    {
      "   "
      \concat { "Canon alla ottava" } "/" \concat { "Canon alla duodecima" }
      "=" "103 / 78" "=" "1.320"

      "   "
      \concat { "Canon per augmentationem in contrario motu" } "/" \concat { "Canon alla decima" }
      "=" "109 / 82" "=" "1.329"
    }
}

\markup {
  \pad-around #2
  \center-column \fontsize #5 \with-color #middleGrey {
    \hspace #100
    \concat {
      \arrow-head #X #RIGHT ##f
      " "
      \arrow-head #X #LEFT ##f
    }
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      The completion of the Contrapunctus XIV remains an interesting and challenging problem in itself,
      but in light of the above considerations, Nakajima's words seem agreeable:
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 82)
    \translate #'(11 . 0)
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      Considering its structure without the common theme and with this asymmetry for the cycle of the art
      of fugue, the unfinished fugue might not be the member of the cycle.
      This is just my presumption but Bach was discouraged from completing it because of this excessive bar
      number. It is believed that composing, publication, and extension of pieces and addition of new pieces,
      all these were simultaneously ongoing at that time, then halfway built unfinished fugue could not
      match with the finally created symmetric structure.
    }
  }
}
