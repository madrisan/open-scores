\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexItem layout props title opus pagelabel)
  (string? string? symbol?)
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
                 #opus "  " \char ##x2013 \char ##x2013 "  " #title
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

\markup { \indexItem "Zwiete Elegie" "S.197" #'S197 }
\markup { \indexItem "Wiegenlied" "S.198" #'S198 }
\markup { \indexItem "Nuages Gris" "S.199" #'S199 }
\markup { \indexItem "La lugubre gondola" "S.200" #'S200 }
\markup { \indexItem "Richard Wagner, Venezia" "S.201" #'S201 }
\markup { \indexItem "Am Grabe Richard Wagners" "S.202" #'S202 }
\markup { \indexItem "Schlaflos Frage und Antwort" "S.203" #'S203 }
\markup { \indexItem "Recueillement" "S.204" #'S204 }
% S.205
\markup { \indexItem "Trauervorspiel und Trauermarsch" "S.206" #'S206 }
\markup { \indexItem "En reve Nocturne" "S.207" #'S207 }
\markup { \indexItem "Unstern" "S.208" #'S208 }

\pageBreak
