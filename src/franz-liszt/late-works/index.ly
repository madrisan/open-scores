\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexItem layout props title opus date pagelabel)
  (string? string? string? symbol?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \pad-around #1
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               \concat {
                 \abs-fontsize #9 { #opus }
                 "  " \char ##x2013 \char ##x2013
                 "  " { \italic #title }
                 \abs-fontsize #9 { "  (" #date ")" }
               }
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup \fill-line {
  \center-column {
    \line {
      \hspace #1
      \general-align #Y #DOWN {
        \epsfile #X #55 #"Franz-Liszt-by-Nadar-march-1886.eps"
      }
    }
    \null
    \line \italic {
      \italic "Franz Liszt - March 1886"
    }
  }
}

\markup { \vspace #2 }

\markup { \indexItem "Zwiete Elegie" "S.197" "1877" #'S197 }
\markup { \indexItem "Wiegenlied" "S.198" "1881" #'S198 }
\markup { \indexItem "Nuages Gris" "S.199" "24 August 1881" #'S199 }
\markup { \indexItem "La lugubre gondola" "S.200" "1883" #'S200 }
\markup { \indexItem "Richard Wagner, Venezia" "S.201" "1883" #'S201 }
\markup { \indexItem "Am Grabe Richard Wagners" "S.202" "22 May 1883" #'S202 }
\markup { \indexItem "Schlaflos Frage und Antwort" "S.203" "1883" #'S203 }
\markup { \indexItem "Recueillement" "S.204" "1877" #'S204 }
\markup { \indexItem "Historische ungarische Bildnisse" "S.205" "1885" #'S205 }
\markup { \indexItem "Trauervorspiel und Trauermarsch" "S.206" "1885" #'S206 }
\markup { \indexItem "En rêve, Nocturne" "S.207" "1885" #'S207 }
\markup { \indexItem "Unstern" "S.208" "1881" #'S208 }

\pageBreak
