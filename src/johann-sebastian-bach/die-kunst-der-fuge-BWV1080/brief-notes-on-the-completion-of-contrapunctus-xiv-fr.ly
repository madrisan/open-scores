\include "macros.ly"

\label #'BriefNotesContrapunctusXIVfr

\markup \fill-line {
  \center-column \abs-fontsize #14 \bold \with-color #middleGrey {
    \null
    "Notes succinctes sur l'achèvement du Contrapunctus XIV"
    \null
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Le Contrapunctus XIV a suscité plus de soixante‐dix tentatives d'achèvement depuis la mort de Bach.
      Ces notes passent en revue les indices numériques et proportionnels que plusieurs chercheurs ont
      relevés dans la construction de cet oeuvre.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Ruth Tatlow affirme que l'Art de la Fugue est
      « la thèse la plus aboutie de Bach en tant que mathématicien »
      \abs-fontsize #8 {
        [Bach and the riddle of the number alphabet – 1991, Cambridge University Press].
      }
      Nous en verrons quelques exemples dans ces notes, où le terme \italic { « mathématicien » } doit être
      compris avant tout au sens géométrico‐algébrique des proportions de la composition et des relations
      entre les voix musicales.
      L'essentiel de ce qui suit s'appuie sur la
      \with-url #"https://researchspace.auckland.ac.nz/handle/2292/392" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "thèse de doctorat" }
      }
      d'Indra Nicholas Martindale Hughes,
      \italic {
        « Accident or Design? New Theories on the Unfinished Contrapunctus 14 in J. S. Bach’s
        The Art of Fugue BWV 1080 »
      } — 2006, University of Auckland.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "one" "XIV et pas plus loin"
  }
}

\markup {
  \column {
    \override #'(line-width . 92)
    \translate #'(6 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #9 \italic \with-color #middleGrey {
      “Seine letzte Kranckheit, hat ihn verhindert, seinem Entwurfe nach, die vorletze
      Fuge völlig zu Ende zu bringen, und die letzte, welche 4 Themata enthalten, und
      nachgehends in allen 4 Stimmen Note für Note umgekehret werden sollte, auszuarbeiten.”
      — \italic { extrait de la notice nécrologique de Bach, 1754 }
    }
    \pad-around #1
    \override #'(line-width . 92)
    \translate #'(6 . 0)
    \wordwrap \abs-fontsize #9 \with-color #middleGrey {
      [Sa dernière maladie l'empêcha d'achever, selon son plan, l'avant‐dernière fugue, et
      d'élaborer la dernière, qui devait contenir quatre sujets et être ensuite renversée
      note pour note dans les quatre voix.]
    }
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Le Nekrolog de Bach fut rédigé dans la seconde moitié de 1750, quelques mois après la mort de
      Bach, et publié en 1754 dans le dernier volume de la \italic { Musikalische Bibliothek } de Lorenz
      Christoph Mizler, l'organe de la société musicale de Mizler dont Bach avait été membre depuis 1747
      (le quatorzième membre admis dans la société, voir plus bas).
      Bien qu'aucun auteur ne soit indiqué dans l'article, on sait qu'il fut écrit par Carl Philipp
      Emanuel, le fils de Bach, et par Johann Friedrich Agricola, l'un de ses élèves.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Hughes estime que les mots \italic { « avant‐dernière » } et \italic { « dernière » } de cet extrait
      de la notice nécrologique doivent être interprétés comme désignant la troisième (incomplète) et la
      quatrième (manquante) partie du Contrapunctus XIV, et qu'un Contrapunctus XV n'a jamais été prévu
      par Bach.
      Le Contrapunctus XIV était vraisemblablement conçu par Bach comme une \italic { fugue quadruple } –
      une fugue à quatre sujets.
      Seuls trois sujets sont présents dans la partie subsistante de la fugue, mais un quatrième manque
      visiblement.
      L'Art de la Fugue est en effet une exploration approfondie des possibilités contrapuntiques
      inhérentes à un unique sujet musical, et ce sujet ne peut manquer d'apparaître dans chaque fugue.
      Ce n'est toutefois qu'en 1881 que Gustave Nottebohm découvrit que ce sujet principal de l'Art de la
      Fugue peut se combiner aux trois premiers sujets, et qu'il devait donc être le quatrième sujet de
      cette fugue quadruple
      \abs-fontsize #8 {
        [Nottebohm, G. (1881) “J. S. Bachʹs letzte Fuge” Music‐Welt: 234].
      }
      Voici la combinaison des quatre sujets telle que proposée par Nottebohm et Christoph Wolff.
    }
  }
}

\markup \fill-line {
  \override #'(baseline-skip . 0)
  \center-column {
    \vspace #1
    \line {
\score {
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 4)
         (padding . 1))
  }
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
      Ainsi, selon la notice nécrologique, la quatrième et dernière section du Contrapunctus XIV devait
      comprendre au moins deux épisodes dans lesquels les quatre sujets apparaissent ensemble, combinés
      en \italic { rectus } et en \italic { inversus. }
      Voici une solution alternative à la combinaison des quatre sujets, telle que proposée par Hughes.
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
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 4)
         (padding . 1))
  }
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
      Et voici sa solution à l'ardu problème de la combinaison quadruple en \italic { inversus, }
      utilisant la forme à 14 notes du { \smaller\circle\musicglyph "four". }
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
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing =
      #'((basic-distance . 4)
         (padding . 1))
  }
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
    \musicglyph "two" "Symbolique du nombre 14"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      L'Art de la Fugue est riche en symbolisme lié au nombre 14,
      qui est une transposition du nom Bach
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
      selon l'alphabet numérique désigné par Tatlow comme
      « ordre naturel latin : variante 1 » \abs-fontsize #8 { [op. cit.] }
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
      Le nombre 41, rétrograde de 14, est lui aussi présent dans l'Art de la Fugue, où :
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
      "Occurrences des nombres 14 et 41 dans l'Art de la Fugue :"
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      " • Dans l'Art de la Fugue" "il y a 14 Contrapuncti"
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
            "les deux premières notes sont ré et la : 4 et 1 "
            \abs-fontsize #8 { "[Kellner, H. A. (May 1999) The Diapason]" }
          }
      " • Contrapunctus II"             "il y a 14 entrées du sujet"
      " • Contrapunctus V et suivants"  "le sujet, augmenté de notes de passage, atteint un total de 14 notes"
      " • Contrapunctus V"              "apparition du motif BACH (si bémol, la, do, si) à la mesure 41"
      " • Contrapunctus VI"             "il y a 14 entrées du sujet rectus et 14 entrées inversus"
      " • Contrapunctus XIV"            "le deuxième sujet compte 41 notes"
      " • Contrapunctus XIV"            "le motif BACH fait son apparition la plus marquante en tant que troisième sujet"
      " • Contrapunctus XIV"            "la dernière mesure (incomplète) porte le numéro 239, et 2 + 3 + 9 = 14"
    }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Cela devrait renforcer la thèse de Hughes sur l'inexistence d'un Contrapunctus XV supplémentaire
      conçu par Bach pour clore le cycle de l'Art de la Fugue : achever le cycle avec la Fugue XIV
      correspondrait mieux à ce symbolisme.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "three" "Exposition des sujets et permutations à 4 éléments"
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      L'ordre des voix dans lequel chaque sujet entre à son exposition dans le Contrapunctus XIV est
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
      où « B » désigne la basse, « T » le ténor, « A » l'alto et « S » le soprano.
      Une permutation manque, et étant donné le goût de Bach pour les jeux algébriques
      (ou simplement pour varier autant que possible l'ordre des voix dans les expositions),
      l'ordre le plus vraisemblable d'apparition des sujets dans la quatrième section serait
      raisonnablement : S B T A.
      Cela conduit à ce que l'on appelle la \italic { matrice de permutation de Zoltán Göncz. }
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
    \musicglyph "four" "Rapport des longueurs des sections dans le Contrapunctus XIV"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Certaines compositions de Bach montrent un rapport proportionnel constant entre le nombre de
      mesures des différentes sections qui les composent.
      Ce principe semble également présent dans le Contrapunctus XIV, selon Gregory Butler.
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 92)
    \translate #'(6 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      « Si l'on examine les proportions relatives des trois sections subsistantes de cette fugue,
      on constate une diminution constante de la longueur des sections successives.
      De plus, la section 2 (78 mesures) fait presque exactement les deux tiers de la longueur de la
      section 1 (115 mesures), et la section 3, pas tout à fait complète, occupe quarante‐six mesures et
      aurait vraisemblablement occupé, dans son état complet, environ les deux tiers de la longueur de
      la section 2 (52 mesures). En suivant les mêmes proportions, la section 4 aurait pu occuper environ
      les deux tiers de la longueur de la section 3, soit environ trente‐quatre mesures. »
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
      Cette théorie a été affinée par Hughes comme suit.
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 4)
    \column {
      \line {
        "Section 1" "mesures 1 – 114,25"
      }
      \line {
        "Section 2" "mesures 114,25 – 192,50   →   79,25 mes. (1,4(4) = rapport section 2 · section 1)"
      }
      \line {
        "Section 3"
        \concat {
          "mesures 192,50 – 248,50   ←   "
          \bold { "55 mes." } " pour ratio 3·2 de 1,4, "
          \bold { "9 mes." } " manquantes (jusqu'à 248)"
        }
      }
      \line {
        "Section 4"
        \concat {
          "mesures 248,50 – 286,50   ←   "
          \bold { "38 mes." } " pour ratio 4·3 de 1,4 (jusqu'à 286)"
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
      Cette extrapolation peut sembler bien hasardeuse, mais elle le devient moins lorsqu'on prend en
      compte que le rapport 1,4 apparaît aussi entre les sections du Kyrie de la
      \italic { Messe en si mineur, } où les trois mouvements du Kyrie
      (Kyrie I – Christe – Kyrie II) sont dans un rapport proportionnel décroissant l'un par rapport à
      l'autre, un rapport de 1,4 existant entre les longueurs relatives de chaque mouvement,
      122 : 84,75 : 59.
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Enfin, notons que 55 = 14 + 41.
      Un autre nombre fréquemment rencontré dans la musique de Bach.
    }
  }
}

\markup \fill-line {
  \pad-around #3
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "five" "Proportions à plusieurs niveaux"
  }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      L'Art de la Fugue présente de remarquables symétries à plusieurs niveaux.
    }
  }
}
\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Au niveau macroscopique, comme le souligne Yasuhiko Nakajima sur son site
      \with-url #"https://www.lcv.ne.jp/~nakgie/English/" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "The Art of Fugue Laboratory" }
      }
      on peut observer une symétrie dans le nombre total de mesures par section.
    }
  }
}

\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 4)
  \table
    #'(0 -1 -1 1 1)
    {
      " " "" "" "" ""
      " " \italic { "Style" "Reconstruction de G. Butler"       "N° de mesure"  "Total mesures" }
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
      "" "Trois thèmes"  "Contrapunctus VIII"                  188   ""
      "" "Deux thèmes"   "Contrapunctus IX"                    130   438
      "" ""              "Contrapunctus X"                     120   ""
      "" " "             ""                                     ""   ""
      "" "Trois thèmes"  "Contrapunctus XI"                    184   ""
      "" "Miroir"        "Contrapunctus XII rectus/inversus"   112   438
      "" ""              "Contrapunctus XIII recus/inversus"   142   ""
      "" " "             ""                                    ""    ""
      "" "Quatre thèmes" "Contrapunctus XIV"                   239   \bold { 239 }
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
      Le Contrapunctus XIV rompt la symétrie, en ne comptant pas 230 mesures.
    }
  }
}

\pageBreak

\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Une
      \with-url #"https://www.jstor.org/stable/43030058?seq=1" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "analyse mathématique" }
      }
      plus poussée de la structure de l'Art de la Fugue, menée par Loïc Sylvestre et Marco Costa
      \abs-fontsize #8 {
        [The Mathematical Architecture of Bachʹs The Art of Fugue - Il Saggiatore Musicale, 2010]
      }
      révèle une remarquable adéquation avec la \italic { suite de Fibonacci }
    }
  }
}
\markup \fill-line {
  \pad-around #0.6
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    "1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, ..."
  }
}

\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Les nombres de Fibonacci sont intimement liés au nombre irrationnel appelé le \italic { nombre d'or }
    }
  }
}
\markup \fill-line {
  \pad-around #0.6
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
      car si F(n) désigne le n‐ième nombre de Fibonacci, le quotient des termes adjacents F(n+1) / F(n)
      tend vers la limite \char ##x1D6DF .
      Le nombre d'or, dans sa manifestation géométrique, était déjà connu des mathématiciens grecs de
      l'Antiquité et fut également très prisé des artistes bien avant l'époque de Bach.
      Les Éléments d'Euclide en fournissent la première définition écrite connue :
      \italic { « On dit qu'une droite a été coupée selon la proportion extrême et moyenne (le nombre
      d'or) lorsque le rapport entre la ligne entière et le plus grand segment est le même que celui
      entre le plus grand segment et le plus petit. » }
    }
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Nous nous concentrerons ici sur les rapports du nombre de mesures dans l'Art de la Fugue, selon le
      raisonnement suivant.
      Étant donné que, dans le manuscrit, le \italic { rectus } et l'\italic { inversus } des
      Contrapuncti XII et XIII ne sont pas notés séparément, mais alignés l'un sous l'autre comme une
      seule unité, nous ne comptons ici leur nombre de mesures qu'une seule fois plutôt que d'additionner
      rectus et inversus.
      Voici quelques exemples de rapports dorés. (Ici, \char ##x2211 signifie « somme des mesures ».)
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
      "=" "602 / 372"
      "=" "1.618" \char ##x2248 \char ##x1D6DF
    }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Ces exemples révèlent aussi un beau phénomène fractal d'\italic { autosimilarité. }
      On peut également observer que le rapport (3) serait de 1,614 avec un Contrapunctus XIV long de
      230 mesures.
      De même, le rapport (4) vaudrait 1,626.
      Deux approximations meilleures encore de la valeur \char ##x1D6DF .
    }
  }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      D'autres symétries sont présentes au sein des Contrapuncti.
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
      Ainsi que dans les quatre Canons, qui peuvent être répartis en deux paires partageant presque le
      même rapport.
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
  \pad-around #0.5
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
      L'achèvement du Contrapunctus XIV demeure en soi un problème aussi intéressant qu'ardu, mais à la
      lumière des considérations qui précèdent, les mots de Nakajima semblent recevables :
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 87)
    \translate #'(8 . 0)
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      Si l'on considère sa structure sans le thème commun et cette asymétrie par rapport au cycle de
      l'Art de la Fugue, la fugue inachevée pourrait ne pas appartenir au cycle.
      Ce n'est là que ma présomption, mais Bach aurait été découragé de l'achever à cause de ce nombre
      excessif de mesures.
      On pense que la composition, la publication, l'extension de pièces et l'ajout de nouvelles pièces
      étaient tous simultanément en cours à cette époque‐là ; la fugue inachevée, construite à mi‐chemin,
      n'aurait alors pas pu s'accorder avec la structure symétrique finalement créée.
    }
  }
}
\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Bach aurait donc interrompu la composition après avoir jugé nécessaires des changements
      fondamentaux, mais malheureusement jamais réalisés.
      Peut‐être précisément une réduction de la longueur des trois sections existantes, pour terminer le
      Contrapunctus XIV à la mesure 230, en conservant le rapport 1,4 entre les longueurs des sections.
    % mesures 1–91.50 Section 1, 91.50–155.25 Section 2, 155.25–199.33 Section 3,
    % 199.33–230 Section 4.
    }
  }
}

% 230 = x + (x/1.44) + (x/(1.44^2)) + (x/(1.44^3))
%   bc -l <<< "230 / (1 + 1/1.44 + 1/(1.44^2) + 1/(1.44^3))"
%   x=91.57525537416475367224
%
% Section 1:   1    -  91.50
% Section 2:  91.50 - 155.25    # bc -l <<< "$x + $x/1.44" = 155.16918271733472150018
% Section 3: 155.25 - 199.33    # bc -l <<< "$x + $x/1.44 + $x/(1.44^2)" = 199.33163226120275471403
% Section 4: 199.33 - 230       # bc -l <<< "$x + $x/1.44 + $x/(1.44^2) + $x/(1.44^3)" = 230.00000000000000000142
