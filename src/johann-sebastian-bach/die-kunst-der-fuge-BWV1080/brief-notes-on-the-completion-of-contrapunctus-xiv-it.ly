\include "macros.ly"

\label #'BriefNotesContrapunctusXIVit

\markup \fill-line {
  \center-column \abs-fontsize #14 \bold \with-color #middleGrey {
    \null
    "Brevi note sul completamento del Contrapunctus XIV"
    \null
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Ruth Tatlow sostiene che l'Arte della fuga è
      “la tesi più sviluppata di Bach come matematico”.
      \abs-fontsize #8 {
        [Bach and the riddle of the number alphabet – 1991, Cambridge University Press].
      }
      Ne vedremo alcuni esempi in queste note. Il termine \italic { “matematico” } è da intendersi
      principalmente nel senso geometrico-algebrico delle proporzioni della composizione e delle relazioni
      tra le voci musicali.
      La maggior parte del materiale che segue è basato sul testo della
      \with-url #"https://researchspace.auckland.ac.nz/handle/2292/392" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "tesi di dottorato" }
      }
      di Indra Nicholas Martindale Hughes:
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
    \musicglyph "one" "XIV e non oltre"
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
      — \italic { from Bach's Obituary, 1754 }
    }
    \pad-around #1
    \override #'(line-width . 92)
    \translate #'(6 . 0)
    \wordwrap \abs-fontsize #9 \with-color #middleGrey {
      [ La sua ultima malattia gli impedì di completare secondo il suo piano la penultima fuga
      e di elaborare l'ultima, che avrebbe dovuto contenere quattro temi e successivamente
      essere invertita nota per nota in tutte e quattro le voci.
      — \italic { dal Necrologio di Johann Sebastian Bach, 1754 }]
    }
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Il “Nekrolog” di Bach fu scritto nella seconda metà del 1750, a pochi mesi dalla morte di Bach, e
      pubblicato nel 1754 nell'ultimo volume della \italic { Musikalische Bibliothek, } di
      Lorenz Christoph Mizler, l'organo della
      \italic { Correspondierende Societät der musicalischen Wissenschaften }
      (Società per corrispondenza di scienze musicali), di cui Bach era stato membro dal 1747
      (il quattordicesimo membro ammesso alla società, vedi sotto).
      Sebbene gli autori dell'articolo non siano indicati, si sa che fu scritto dal figlio di Bach
      Carl Philipp Emanuel, e da Johann Friedrich Agricola, uno dei suoi allievi.
    }
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Huges ritiene che le parole \italic { “penultimo” } ed \italic { “ultimo” } nell'estratto del
      necrologio debbano essere interpretate come la terza (incompleta) e la quarta parte (mancante)
      del Contrapunctus XIV, e che un Contrapunctus XV non sia mai stato progettato da Bach.
      Il Contrapunctus XIV era presumibilmente inteso da Bach come una \italic { fuga quadrupla } –
      una fuga a quattro soggetti.
      Nella parte esistente della fuga sono presenti tre soggetti, ed un quarto è visibilmente
      mancante.
      L'Arte della Fuga è infatti un'esplorazione approfondita delle possibilità contrappuntistiche
      insite in un unico soggetto musicale e questo soggetto deve pertando comparire in ogni fuga.
      È stato tuttavia solo nel 1881 che Gustave Nottebohm scoprì che il soggetto principale
      dell'Arte della Fuga può essere combinato con i primi tre soggetti, e che doveva quindi essere
      il quarto soggetto di une fuga quadrupla
      \abs-fontsize #8 {
        [Nottebohm, G. (1881) “J. S. Bachʹs letzte Fuge” Music‐Welt: 234].
      }
      Di seguito viene riportata la combinazione dei quattro soggetti come data
      da Nottebohm e Christoph Wolff.
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
      Quindi, secondo il “Nekrolog”, la quarta ed ultima sezione del Contrapunctus XIV avrebbe dovuto
      comprendere almeno due episodi in cui i quattro soggetti appaiono insieme in combinazione
      in modo \italic { recto } ed \italic { inversus. }
      Ecco una soluzione alternativa alla combinazione di quattro soggetti, proposta da  Hughes.
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
      E di seguito la sua soluzione all'arduo problema della combinazione quadrupla inversa,
      utilizzando la forma a 14 note del { \smaller\circle\musicglyph "four". }
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
    \musicglyph "two" "Simbologia del numero 14"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      L'Arte della Fuga è ricca di simbolismi legati al numero 14,
      che è la trasposizione del nome Bach.
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
      secondo l'alfabeto numerico designato da Tatlow come
      “ordine naturale latino: variante 1” \abs-fontsize #8 { [op. cit.] }
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
      Il numero 41, simmetrico di 14, è presente anche nell'Arte della Fuga, dove:
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
      "Occorrenze dei numeri 14 e 41 nell'Arte della Fuga:"
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      " • Nell'Arte della Fuga" "ci sono 14 Contrapuncti"
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
            "le prime due note sono D (re) e A (la): 4 and 1 "
            \abs-fontsize #8 { "[Kellner, H. A. (May 1999) The Diapason]" }
          }
      " • Contrapunctus II"           "sono presenti 14 esposizioni del soggetto"
      " • Contrapunctus V e seguito"  "il soggetto con l'aggiunta delle note di passaggio arriva ad un totale di 14 note"
      " • Contrapunctus V"            "il motivo BACH (si bemolle, la, do, si) appare alla battuta 41"
      " • Contrapunctus VI"           "il soggetto appare 14 volte nel modo “rectus” e 14 nel modo “inversus”"
      " • Contrapunctus XIV"          "il secondo soggetto è costituito da 41 note"
      " • Contrapunctus XIV"          "il motivo di BACH fa la sua comparsa più visibile come terzo soggetto"
      " • Contrapunctus XIV"          "l'ultima battuta (incompleta) è la 239, e: 2 + 3 + 9 = 14"
    }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Tutto questo sembrerebbe rafforzare la teoria di Huges sull'inesistenza del progetto
      di un Contrapunctus XV concepito da Bach a chiusura del ciclo dell'Arte della Fuga.
      Concludere il ciclo con la Fuga XIV aderirebbe meglio a questo simbolismo.
    }
  }
}

\markup \fill-line {
  \pad-around #2
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "three" "Esposizione dei soggetti e permutazioni di 4 lettere"
  }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      L'ordine delle voci in cui ogni soggetto entra nell'esposizione nel Contrapunctus XIV è
    }
  }
}
\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 6)
    \column {
      \line { "Sezione 1" "B T A S" }
      \line { "Sezione 2" "A S B T" }
      \line { "Sezione 3" "T A S B" }
      \line { "Sezione 4" "?" }
    }
  }
}
\markup {
  \pad-around #3
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      dove “B” sta per basso, “T” per tenore, “A” per alto (contralto) ed “S” per soprano.
      Manca una permutazione, e dato l'amore di Bach per i giochi algebrici
      (o semplicemente per variare il più possibile l'ordine delle voci nelle esposizioni)
      il più probabile e ragionevole ordine di apparizione dei soggetti nella quarta dovrebbe essere:
      S B T A.
      Questo porta alla cosiddetta \italic { matrice di permutazione di Zoltán Göncz. }
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
    \musicglyph "four" "Rapporti di lunghezza delle sezioni nel Contrapunctus XIV"
  }
}

\markup {
  \column {
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Alcune composizioni di Bach mostrano un rapporto proporzionale costante del numero di
      battute dellle diverse sezioni che le compongono.
      Questo principio secondo Gregory Butler sembra essere presente anche nel Contrapunctus XIV.
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 92)
    \translate #'(6 . 0)
    \pad-around #2
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      “Se esaminiamo le proporzioni relative delle tre sezioni esistenti di questa fuga,
      notiamo una costante diminuzione delle lunghezze delle sezioni successive.
      Inoltre, la seconda sezione (di 78 misure) occupa quasi esattamente i due terzi della lunghezza della
      proma sezione (di 115 misure) e la terza sezione, incompleta, è lunga quarantasei battute.
      Secondo questo schema quest'ultima avrebbe dovuto quindi occupare i due terzi della lunghezza della
      sezione 2, dunque 52 misure.
      Seguendo le stesse proporzioni, la sezione 4 avrebbe dovuto occupare circa due terzi
      della lunghezza della sezione 3, cioè 34 misure.
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
      Questa teoria è stata perfezionata da Hughes come segue.
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #10 \with-color #middleGrey {
    \override #'(word-space . 4)
    \column {
      \line {
        "Sezione 1" "misure 1 – 114.25"
      }
      \line {
        "Sezione 2" "misure 114.25 – 192.50   →   79.25 misure (1.4(4) = ratio sezione 2 · sezione 1)"
      }
      \line {
        "Sezione 3"
        \concat {
          "misure 192.50 – 248.50   ←   "
          \bold { "55 misure" } " per una ratio 3·2 di 1.4: "
          \bold { "9 misure" } " mancanti"
        }
      }
      \line {
        "Sezione 4"
        \concat {
          "misure 248.50 – 286.50   ←   "
          \bold { "38 misure" } " per una ratio 4·3 di 1.4 (fino alla misura 286)"
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
      Questa estrapolazione può sembrare davvero inverosimile, ma lo diventa meno se si tiene
      conto che il rapporto 1,4 compare anche tra le sezioni del Kyrie nella
      \italic { Messa in si minore, }
      dove i tre movimenti del Kyrie (Kyrie I – Christe – Kyrie II) si trovano in un rapporto
      proporzionale decrescente l'uno con l'altro,
      un rapporto di 1,4 esistente tra le lunghezze relative di ciascun movimento
      122 : 84,75 : 59.
    }
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Infine, si noti che 55 = 14 + 41.
      Un altro numero frequentemente presente nella musica di Bach.
    }
  }
}

\markup \fill-line {
  \pad-around #3
  \center-column \abs-fontsize #12 \bold \with-color #middleGrey {
    \vspace #1
    \musicglyph "five" "Proporzioni su più livelli"
  }
}

\markup {
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      L'Arte della Fuga mostra notevoli simmetrie su molteplici livelli.
    }
  }
}
\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      A livello macroscopico, come sottolinea Yasuhiko Nakajima sul suo sito web
      \with-url #"https://www.lcv.ne.jp/~nakgie/English/" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "The Art of Fugue Laboratory" }
      }
      si può notare una simmetria rispetto al numero totale di battute per sezione.
    }
  }
}

\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 4)
  \table
    #'(0 -1 -1 1 1)
    {
      " " "" "" "" ""
      " " \italic { "Stile" "Ricostruzione di G. Butler" "Num. battute"  "Tot. battute" }
      "" " "             ""                                    ""            ""
      "" "Semplice"      "Contrapunctus I"                      78   ""
      "" ""              "Contrapunctus II"                     84   ""
      "" ""              "Contrapunctus III"                    72   372
      "" ""              "Contrapunctus IV"                    138   ""
      "" " "             ""                                    ""    ""
      "" "Inversione"    "Contrapunctus V"                      90   ""
      "" ""              "Contrapunctus VI"                     79   230
      "" ""              "Contrapunctus VII"                    61   ""
      "" " "             ""                                    ""    ""
      "" "Tre temi"      "Contrapunctus VIII"                  188   ""
      "" "Due temi"      "Contrapunctus IX"                    130   438
      "" ""              "Contrapunctus X"                     120   ""
      "" " "             ""                                     ""   ""
      "" "Tre temi"      "Contrapunctus XI"                    184   ""
      "" "A specchio"    "Contrapunctus XII rectus/inversus"   112   438
      "" ""              "Contrapunctus XIII recus/inversus"   142   ""
      "" " "             ""                                    ""    ""
      "" "Quattro temi"  "Contrapunctus XIV"                   239   \bold { 239 }
      "" " "             ""                                    ""    ""
      "" "Canoni"        "Canon I"                             103   ""
      "" ""              "Canon II"                             82   ""
      "" ""              "Canon III"                            78   372
      "" ""              "Canon IV"                            109   ""
    }
}

\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Il contrappunto XIV rompe la simmatria, non avendo 230 battute.
    }
  }
}

\pageBreak

\markup {
  \pad-around #1
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Una più minuziosa
      \with-url #"https://www.jstor.org/stable/43030058?seq=1" {
        \override #'(offset . 5)
        \override #'(thickness . 1)
        \underline { "analisi matematica" }
      }
      della struttura dell'Arte della Fugua structure realizzata da Loïc Sylvestre e Marco Costa
      \abs-fontsize #8 {
        [The Mathematical Architecture of Bachʹs The Art of Fugue - Il Saggiatore Musicale, 2010]
      }
      mostra una sorprendente aderenza alla \italic { sequenza di Fibonacci }
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
      I numeri di Fibonacci sono intimamente legati al numero irrazionale chiamato
      \italic { rapporto aureo. }
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
      poiché se F(n) descrive l'ennesimo numero di Fibonacci, il quoziente dei termini adiacenti
      F(n+1) / F(n) si approssilerà sempre più al limite \char ##x1D6DF all'incrementare di n.
      Il rapporto aureo, nella sua manifestazione geometrica, era già noto agli antichi matematici greci ed
      era molto popolare tra gli artisti anche in epoche precedenti a quella di Bach.
      Gli Elementi di Euclide forniscono la prima definizione scritta conosciuta:
      \italic { “Si dice che una linea retta è stata divisa secondo la proporzione estrema ed aurea
      quando l’intera linea sta alla parte maggiore come la maggiore sta alla minore.” }
    }
    \pad-around #2
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Ci concentreremo sui rapporti del numero di battute nell'Arte della fuga, utilizzando la seguente
      logica.
      Poiché nel manoscritto il modo \italic { rectus } e quello \italic { inversus } dei Contrapuncti XII e
      XIII non sono scritti separatamente, ma allineati, uno sotto l'altro come un'unità, consideriamo qui
      il loro numero di battute una sola volta invece di sommarli.
      Seguono alcuni esempi di rapporti aurei.
      (Il segno \char ##x2211 indica qui la somma della battute).
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
      Questi esempi mostrano anche un bellissimo fenomeno frattale di
      \italic { autosimilarità. }
      Si può anche osservare che il rapporto (3) sarebbe di 1,614 con un Contrapunctus XIV lungo 230
      battute. Allo stesso modo il rapporto (4) varrebbe 1,626.
      Emtrambi migliori approssimazioni del valore \char ##x1D6DF .
    }
  }
}

\markup {
  \column {
    \pad-around #1
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Altre simmetrie sono presenti all'interno dei Contrapuncti.
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
      E anche nei quattro Canoni, che possono essere divisi in due coppie che presentano quasi lo stesso
      rapporto.
    }
  }
}
\markuplist \abs-fontsize #10 \with-color #middleGrey {
  \override #'(padding . 1)
  \table
    #'(-1 -1 0 -1 0 1 0 -1)
    {
      "   "
      \concat { "Canone alla ottava" } "/" \concat { "Canone alla duodecima" }
      "=" "103 / 78" "=" "1.320"

      "   "
      \concat { "Canone per augmentationem in contrario motu" } "/" \concat { "Canone alla decima" }
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
      Il completamento del Contrapunctus XIV rimane un problema interessante e impegnativo di per sé,
      ma alla luce delle considerazioni precedenti, le parole di Nakajima sembrano condivisibili:
    }
  }
}
\markup {
  \column {
    \override #'(line-width . 92)
    \translate #'(6 . 0)
    \wordwrap \abs-fontsize #10 \italic \with-color #middleGrey {
      Considerando la sua struttura senza la presenza del tema comune e l'asimmetria rispetto al ciclo
      dell'Arte della fuga, la fuga incompiuta potrebbe non far parte del ciclo.
      Questa è solo una mia supposizione, ma credo che Bach fu scoraggiato dal completarla a causa di
      questo numero eccessivo di battute.
      Si ritiene che la composizione, la pubblicazione, l'ampliamento dei pezzi e l'aggiunta di nuovi
      pezzi, fossero tutti simultaneamente in corso in quel periodo, quindi la fuga incompiuta costruita
      a metà non poteva combaciare con la struttura simmetrica creata alla fine.
    }
  }
}
\markup {
  \pad-around #2
  \column {
    \wordwrap \abs-fontsize #10 \with-color #middleGrey {
      Bach avrebbe quindi interrotto la composizione dopo aver deciso che erano necessari cambiamenti
      fondamentali, sfortunatamente mai eseguiti.
      Forse una riduzione nella lunghezza delle tre sezioni esistenti per terminare il
      Contrapunctus XIV alla misura 230, conservando il rapporto 1.4 tra le sezioni.
    % misure 1–91.50 per la sezione 1,
    % fino alla 155.25 la sezione 2,
    % alla 199.33 la sezione 3 e
    % conclusione della sezione 4 alla battuta 230.
    }
  }
}
